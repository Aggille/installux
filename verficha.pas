unit verficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, IBDatabase, wwdblook,
  Grids, DBGrids, Buttons, ExtCtrls, QuickRpt, QRCtrls;

type
  TfrmVerFicha = class(TForm)
    Label1: TLabel;
    edtCliente: TwwDBLookupCombo;
    trnVeFicha: TIBTransaction;
    qryClientes: TIBQuery;
    tblFichas: TIBDataSet;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    tblFichasDATA: TDateField;
    tblFichasVALORCOBRADOMATERIAIS: TIBBCDField;
    tblFichasVALORCOBRADOSERVICOS: TIBBCDField;
    tblFichasOBS: TBlobField;
    tblFichasRESPONSAVEL: TIBStringField;
    tblFichasNOMEDOCLIENTE: TIBStringField;
    tblFichasTELEFONE: TIBStringField;
    tblFichasNOMEDOARQUITETO: TIBStringField;
    tblFichasAMBIENTE: TIntegerField;
    tblFichasNOMEDOAMBIENTE: TIBStringField;
    tblFichasOS: TIntegerField;
    tblFichasARQUITETO: TIntegerField;
    tblFichasRECIBO: TIntegerField;
    dtsFicha: TDataSource;
    BitBtn1: TBitBtn;
    qrpFichas: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    BitBtn2: TBitBtn;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVerFicha: TfrmVerFicha;

implementation

uses principal;

{$R *.dfm}

procedure TfrmVerFicha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmVerFicha.FormShow(Sender: TObject);
begin
   if not abre( [qryClientes] ) then close;
end;

procedure TfrmVerFicha.BitBtn1Click(Sender: TObject);
begin
  with tblFichas do
  begin
    close;
    parambyname( 'cliente' ).asInteger  := qryClientes.fieldbyname( 'codigo' ).asInteger;
    open;
    qrpFichas.PreviewModal;
  end;
end;

procedure TfrmVerFicha.BitBtn2Click(Sender: TObject);
begin
   close;
end;

end.
