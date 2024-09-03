unit impficharecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, jpeg, ExtCtrls, DB, IBCustomDataSet,
  IBDatabase, dxGDIPlusClasses;

type
  TfrmImpfichaRecibo = class(TForm)
    DataSource1: TDataSource;
    tblFicha: TIBDataSet;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    tblFichaDATA: TDateField;
    tblFichaVALORCOBRADOMATERIAIS: TIBBCDField;
    tblFichaVALORCOBRADOSERVICOS: TIBBCDField;
    tblFichaOBS: TBlobField;
    tblFichaRESPONSAVEL: TIBStringField;
    tblFichaNOMEDOCLIENTE: TIBStringField;
    tblFichaTELEFONE: TIBStringField;
    tblFichaNOMEDOARQUITETO: TIBStringField;
    tblFichaAMBIENTE: TIntegerField;
    tblFichaNOMEDOAMBIENTE: TIBStringField;
    tblFichaOS: TIntegerField;
    tblFichaARQUITETO: TIntegerField;
    tblFichaRECIBO: TIntegerField;
    qrFicha: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    lbl1: TQRLabel;
    lbl2: TQRLabel;
    lbl3: TQRLabel;
    QRShape2: TQRShape;
    qrServicos: TQRLabel;
    qrMateriais: TQRLabel;
    qrTotal: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRShape3: TQRShape;
    QRGroup2: TQRGroup;
    QRBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    IBTransaction1: TIBTransaction;
    tblFichaEMAIL: TIBStringField;
    tblFichaTELEFONEARQ: TIBStringField;
    tblFichaEMAILARQ: TIBStringField;
    qrObs: TQRDBRichText;
    PageHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    lblNumero: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText15: TQRDBText;
    QRImage1: TQRImage;
    QRSysData1: TQRSysData;
    QRDBText22: TQRDBText;
    QRLabel6: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpfichaRecibo: TfrmImpfichaRecibo;

implementation

uses principal, recibos;

{$R *.dfm}

procedure TfrmImpfichaRecibo.FormShow(Sender: TObject);
begin
//Transacao( frmImpfichaRecibo, frmRecibos.trnRecibos );
Transacao( frmImpfichaRecibo, ibTransaction1 );
end;

procedure TfrmImpfichaRecibo.QRDBText9Print(sender: TObject;
  var Value: String);
begin
   with frmPrincipal.sqlEmpresa do
      Value := fieldbyName( 'Endereco' ).asString + ' - ' + fieldbyname( 'Bairro' ).asString;

end;

procedure TfrmImpfichaRecibo.QRDBText12Print(sender: TObject;
  var Value: String);
begin
   with  frmPrincipal.sqlEmpresa do
      Value := fieldbyname( 'Cidade' ).asString + ' / ' + fieldbyname( 'Estado' ).asString + ' Cep: ' + fieldbyname( 'Cep' ).asString;
end;

end.
