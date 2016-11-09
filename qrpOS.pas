unit qrpOS;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Db, IBCustomDataSet, jpeg, QRExport, QuickRpt,
  QRCtrls ;

type
  TqrpImprimeOS = class(TQuickRep)
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    qryItems: TIBDataSet;
    QRShape1: TQRShape;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText19: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel13: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel15: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText28: TQRDBText;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel23: TQRLabel;
    QRWMFFilter1: TQRWMFFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRShape3: TQRShape;
    qrResponsavel: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel1: TQRLabel;
    qryItemsDATA: TDateField;
    qryItemsPRODUTO: TIntegerField;
    qryItemsQUANTIDADE: TIntegerField;
    qryItemsHORACHEGADA: TTimeField;
    qryItemsHORASAIDA: TTimeField;
    qryItemsPRECO: TIBBCDField;
    qryItemsTOTAL: TIBBCDField;
    qryItemsDATAPAGAMENTO: TDateField;
    qryItemsNOMEDOPRODUTO: TIBStringField;
    qryItemsNOMEDOCLIENTE: TIBStringField;
    qryItemsAMBIENTE: TIBStringField;
    qryItemsFUNCIONARIO: TIBStringField;
    DataSource1: TDataSource;
    procedure QRLabel21Print(sender: TObject; var Value: String);
  private

  public

  end;

implementation


uses principal, imprimeOS;

{$R *.DFM}

procedure TqrpImprimeOS.QRLabel21Print(sender: TObject; var Value: String);
begin
   Value := 'Ambiente : ' + qryItems.fieldByName( 'NomeDoAmbiente' ).asstring;
end;

end.
