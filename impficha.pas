unit impficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Buttons, Grids, DBGrids, StdCtrls, wwdbedit, Wwdotdot, Wwdbcomb, Mask,
  rxToolEdit, rxCurrEdit;

type
  TfrmImpficha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtServicos: TCurrencyEdit;
    edtMateriais: TCurrencyEdit;
    edtServicoscobrados: TCurrencyEdit;
    edtMateriaisCobrados: TCurrencyEdit;
    edtResponsavel: TwwDBComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtOBS: TMemo;
    edtGeraRecibo: TCheckBox;
    edtImprimeRecibo: TCheckBox;
    Label6: TLabel;
    edtDescricao: TEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpficha: TfrmImpficha;

implementation

uses principal, servicosdocliente;

{$R *.dfm}

procedure TfrmImpficha.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if ( edtServicos.Value <> edtServicosCobrados.Value ) or ( edtMateriais.Value <> edtMateriaisCobrados.Value ) then
   begin
      CanClose := ( confirma('Os valores não são idênticos, deseja sair assim mesmo ?' ) ) 
   end;
end;

procedure TfrmImpficha.FormShow(Sender: TObject);
begin
   with edtResponsavel do
   begin
    Items.Clear;
    if( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel1' ).asString <> '' ) then
      Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel1' ).asString );

    if( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel2' ).asString <> '' ) then
      Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel2' ).asString );
   end;

   edtResponsavel.ItemIndex := 0;

end;

end.
