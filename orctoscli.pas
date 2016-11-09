unit orctoscli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, Wwdbigrd, Wwdbgrid, DB,
  IBCustomDataSet, IBQuery, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TfrmOrctosCli = class(TForm)
    DBText1: TDBText;
    qryOrcamentos: TIBQuery;
    qryItens: TIBQuery;
    dtsOrcamentos: TDataSource;
    dtsItens: TDataSource;
    wwDBGrid1: TwwDBGrid;
    qryOrcamentosCLIENTE: TIntegerField;
    qryOrcamentosDATA_ENTREGA: TDateField;
    qryOrcamentosEMISSAO: TDateField;
    qryOrcamentosNUMERO: TIntegerField;
    qryOrcamentosTOTALDEMAODEOBRA: TIBBCDField;
    qryOrcamentosTOTALDEPECAS: TIBBCDField;
    qryOrcamentosTOTALDOORCAMENTO: TIBBCDField;
    qryOrcamentosVALORCOBRADOMAODEOBRA: TIBBCDField;
    qryOrcamentosVALORCOBRADOPECAS: TIBBCDField;
    qryOrcamentosVALORCOBRADO: TCurrencyField;
    wwDBGrid2: TwwDBGrid;
    qryItensLOCAL: TIntegerField;
    qryItensPRECOTOTAL: TIBBCDField;
    qryItensPRECOUNITARIO: TIBBCDField;
    qryItensQUANTIDADE: TIBBCDField;
    qryItensTIPO: TIBStringField;
    qryItensUNIDADE: TIBStringField;
    qryItensNOMEDOPROUTO: TIBStringField;
    qryItensNOMEDOAMBIENTE: TIBStringField;
    edtTipo: TwwDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qryOrcamentosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrctosCli: TfrmOrctosCli;

implementation

uses clientes;

{$R *.dfm}

procedure TfrmOrctosCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmOrctosCli.FormShow(Sender: TObject);
begin
   qryOrcamentos.Open;
   qryItens.Open;
end;

procedure TfrmOrctosCli.qryOrcamentosCalcFields(DataSet: TDataSet);
begin
  with qryOrcamentos do
    fieldByName('ValorCobrado').ascurrency :=
      fieldByName('ValorCobradoPecas').asCurrency +
      fieldByName('ValorCobradoMaoDeObra').ascurrency;
end;

end.
