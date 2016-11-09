unit relsaldos1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, IBDatabase, Db,
  IBCustomDataSet;

type
  TqrpRelSaldos = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    tblSaldos: TIBDataSet;
    tblSaldosNOME: TIBStringField;
    tblSaldosGRUPO: TIntegerField;
    tblSaldosUNIDADE: TIBStringField;
    tblSaldosPRECO: TIBBCDField;
    tblSaldosICMS: TIBBCDField;
    tblSaldosIPI: TIBBCDField;
    tblSaldosCUSTO: TIBBCDField;
    tblSaldosESTOQUEMINIMO: TIBBCDField;
    tblSaldosTIPO: TIBStringField;
    tblSaldosSALDO: TFloatField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    tblSaldosPRATELEIRA: TIBStringField;
    QRLabel8: TQRLabel;
    tblSaldosCODIGO: TIntegerField;
    tblSaldosBARRAS: TIBStringField;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    tblSaldosCUSTOTOTAL: TIBBCDField;
    tblSaldosPRECOTOTAL: TIBBCDField;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    procedure tblSaldosCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  qrpRelSaldos: TqrpRelSaldos;

implementation

uses principal, relsaldos;

{$R *.DFM}

procedure TqrpRelSaldos.tblSaldosCalcFields(DataSet: TDataSet);
begin
   with tblSaldos do
   begin
      fieldByName( 'CustoTotal' ).asFloat    := fieldByName( 'custo' ).asFloat *
                                                fieldByName( 'saldo' ).asfloat;

      fieldByName( 'PrecoTotal' ).asFloat    := fieldByName( 'Preco' ).asFloat *
                                                fieldByName( 'saldo' ).asfloat;


   end;

end;

end.
