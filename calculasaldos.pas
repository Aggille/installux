unit calculasaldos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, Grids, DBGrids, DB, IBCustomDataSet, IBQuery,
  StdCtrls, Buttons, ComCtrls;

type
  TfrmCalculaSaldos = class(TForm)
    IBTransaction1: TIBTransaction;
    qryEntrada: TIBQuery;
    dtsEntrada: TDataSource;
    dtsSaida: TDataSource;
    qrySaida: TIBQuery;
    dtsProdutos: TDataSource;
    tblProdutos: TIBDataSet;
    tblProdutosNOME: TIBStringField;
    tblProdutosSALDO: TFloatField;
    tblProdutosENTRADA: TFloatField;
    tblProdutosSAIDA: TFloatField;
    BitBtn1: TBitBtn;
    gauge: TProgressBar;
    tblProdutosSALDO_NOVO: TFloatField;
    tblProdutosCODIGO: TIntegerField;
    procedure tblProdutosCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculaSaldos: TfrmCalculaSaldos;

implementation

uses principal;

{$R *.dfm}

procedure TfrmCalculaSaldos.tblProdutosCalcFields(DataSet: TDataSet);
begin
  with tblProdutos do
    fieldByName('Saldo_Novo').asFloat :=
      fieldByName('Entrada').asFloat - fieldByName('Saida').asFloat;
end;

procedure TfrmCalculaSaldos.BitBtn1Click(Sender: TObject);
begin
  if not abre([qryEntrada, qrySaida, tblProdutos]) then
    close;
  gauge.Max := tblProdutos.RecordCount;

  with tblProdutos do
  begin
    first;

    while not eof do
    begin

      gauge.Position := Recno;
      gauge.Update;

      edit;
      fieldByName('Saldo').asFloat := fieldByName('Saldo_Novo').asFloat;
      post;
      next;

    end;

    ShowMessage('Recálculo concluído');
    ibTransaction1.Commit;
    frmCalculaSaldos.close;
  end;
end;

procedure TfrmCalculaSaldos.FormClose(Sender: TObject; var Action:
  TCloseAction);
begin
  action := caFree;
end;

end.

