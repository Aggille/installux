unit relBarras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IBDatabase, DB, IBCustomDataSet, QuickRpt, ExtCtrls, QRCtrls,
  RpDefine, RpCon, RpConDS;

type
  TfrmRelBarras = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tblProdutos: TIBDataSet;
    IBTransaction1: TIBTransaction;
    rvCodBarras: TRvDataSetConnection;
    BitBtn3: TBitBtn;
    tblProdutosNOME: TIBStringField;
    tblProdutosBARRAS: TIBStringField;
    tblProdutosPRECO: TIBBCDField;
    tblProdutosCODIGO: TIntegerField;
    lblMsg: TLabel;
    tblProdutosTIPO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelBarras: TfrmRelBarras;

implementation

uses principal, efuncoes;

{$R *.dfm}

procedure TfrmRelBarras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRelBarras.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmRelBarras.BitBtn1Click(Sender: TObject);
begin
   if not abre( [tblProdutos] ) then close;

   frmPrincipal.rvInstallux.ExecuteReport( 'rptBarras' );

end;

procedure TfrmRelBarras.BitBtn3Click(Sender: TObject);
var
codigo:string;
begin

   if not confirma( 'Confirma a padronização do código de barras ?' )then exit;

   with tblProdutos do
   begin
      open;
      first;
      while not eof do
      begin

         codigo := fieldByName( 'codigo' ).asstring;
         codigo := padLZero( codigo , 06);
         lblmsg.Caption := 'Atualizando :' + fieldByName( 'Barras' ).asString;
         lblMsg.Update;
         edit;
         fieldByName( 'Barras' ).asString := Codigo;
         Post;

         next;

      end;

   end;


   ibTransaction1.Commit;
   ShowMessage( 'Padronização concluída !' );

end;

end.
