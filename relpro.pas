unit relpro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IBDatabase, DB, IBCustomDataSet,
  IBQuery;

type
  TfrmRelPro = class(TForm)
    edtOrdem: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryProdutos: TIBQuery;
    IBTransaction1: TIBTransaction;
    qryProdutosNOME: TIBStringField;
    qryProdutosGRUPO: TIntegerField;
    qryProdutosUNIDADE: TIBStringField;
    qryProdutosPRECO: TIBBCDField;
    qryProdutosICMS: TIBBCDField;
    qryProdutosIPI: TIBBCDField;
    qryProdutosCUSTO: TIBBCDField;
    qryProdutosESTOQUEMINIMO: TIBBCDField;
    qryProdutosTIPO: TIBStringField;
    qryProdutosSALDO: TFloatField;
    qryProdutosPRATELEIRA: TIBStringField;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosBARRAS: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPro: TfrmRelPro;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmRelPro.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmRelPro.BitBtn1Click(Sender: TObject);
begin
  with qryprodutos do
  begin

    close;
    sql.Clear;

    if edtOrdem.ItemIndex = 0 then
      sql.Add('Select * from produtos order by nome')
    else
      Sql.Add('Select * from produtos order by Codigo');

    open;

 //   frProdutos.PrepareReport;
//    frProdutos.ShowPreparedReport;

  end;
end;

end.
