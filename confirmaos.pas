unit confirmaos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, wwriched, QRCtrls,
  QuickRpt, jpeg, ExtCtrls, DB, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TfrmConfirmaOS = class(TForm)
    Label1: TLabel;
    edtValor: TDBEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtMateriais: TDBEdit;
    edtServicos: TDBEdit;
    Bevel1: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    edtValorCobradoServicos: TDBEdit;
    edtValorCobradoMateriais: TDBEdit;
    Label8: TLabel;
    edtValorCobrado: TDBEdit;
    Bevel2: TBevel;
    edtResponsavel: TwwDBComboBox;
    edtSalvar: TCheckBox;
    procedure edtValorCobradoServicosExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfirmaOS: TfrmConfirmaOS;

implementation

uses OS, principal;

{$R *.dfm}

procedure TfrmConfirmaOS.edtValorCobradoServicosExit(Sender: TObject);
begin
   with frmOS.tblOS do
      fieldByName( 'ValorCobrado' ).ascurrency  :=
         fieldByName( 'ValorCobradoMateriais' ).ascurrency +
            fieldByName( 'ValorCobradoServicos' ).asCurrency;
end;

procedure TfrmConfirmaOS.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   with frmOS.tblOS do
   if fieldByName( 'Valor' ).asCurrency <> fieldByNAme( 'ValorCobrado' ).asCurrency then
      canClose := Confirma( 'Os valores não são iguais, confirma ?' );
end;

procedure TfrmConfirmaOS.FormShow(Sender: TObject);
begin
   with edtResponsavel do
   begin
    Items.Clear;
    Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel1' ).asString );
    Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel2' ).asString );
   end;

end;

end.
