unit relfunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdblook, wwdbdatetimepicker, IBDatabase, DB,
  IBCustomDataSet, IBQuery, Grids, DBGrids, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelFunc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    IBTransaction1: TIBTransaction;
    qryOS: TIBQuery;
    dtsOS: TDataSource;
    qryOSDATA: TDateField;
    qryOSOS: TIntegerField;
    qryOSSAIDA: TTimeField;
    qryOSCHEGADA: TTimeField;
    qryOSFUNCIONARIO: TIntegerField;
    qryOSNOMEDOFUNCIONARIO: TIBStringField;
    qryOSCLIENTE: TIntegerField;
    qryOSNOMEDOCLIENTE: TIBStringField;
    qryOSHORAS: TTimeField;
    qryOSTOTHORAS: TIntegerField;
    qryOSTOTMINUTOS: TIntegerField;
    qrpOS: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    lblPeriodo: TQRLabel;
    SummaryBand1: TQRBand;
    lblTotHoras: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    lblTotHorasFun: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    qryOSVALORCOBRADO: TIBBCDField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    edtFuncionario: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure qryOSCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: boolean);
    procedure lblPeriodoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFunc: TfrmRelFunc;
  tHora, tMinuto, tSegundo: word;
  tHoraFun, tMinutoFun, tSegundoFun: word;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelFunc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmRelFunc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelFunc.qryOSCalcFields(DataSet: TDataSet);
var
  Hora, Minuto, Segundo, mSeg: word;
begin
  with qryOS do
  begin
    FieldByName('Horas').AsDateTime := FieldByName('Saida').AsDateTime - FieldByName('Chegada').AsDateTime;
    DecodeTime(qryOS.FieldByName('horas').AsDateTime, Hora, Minuto, Segundo, MSeg);
    FieldByName('TotHoras').AsInteger := Hora;
    FieldByName('totMinutos').AsInteger := Minuto;
  end;
end;

procedure TfrmRelFunc.BitBtn1Click(Sender: TObject);
begin
  tHora := 0;
  tMinuto := 0;
  tSegundo := 0;

  tHoraFun := 0;
  tMinutoFun := 0;
  tSegundoFun := 0;

  with qryOS do
  begin
    Close;
    paramByName('Inicio').AsDateTime := edtInicio.Date;
    paramByName('Final').AsDateTime := edtfinal.Date;
    paramByName('Funcionario' ).asString := edtFuncionario.Text;
    
    qryOS.Open;
    qrpOS.Prepare;
    qrpOS.qrPrinter.PreviewModal;
    qrpOS.qrPrinter := nil;
    qrpOS.qrPrinter.Free;
  end;
end;

procedure TfrmRelFunc.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: boolean);
var
  horas: integer;
  minutos: integer;
  h: string;
begin
  Horas := Trunc(tMinuto / 60);
  Minutos := tMinuto - (horas * 60);
  tMinuto := Minutos;
  tHora := THora + Horas;
  h := '';
  h := Format('%d hora(s) e %d minuto(s)', [thora, tminuto]);
  lblTotHoras.Caption := h;
end;

procedure TfrmRelFunc.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: boolean);
begin
  tHora := tHora + qryOS.FieldByName('totHoras').AsInteger;
  tMinuto := tMinuto + qryOS.FieldByName('totMinutos').AsInteger;
  tHoraFun := tHoraFun + qryOS.FieldByName('totHoras').AsInteger;
  tMinutoFun := tMinutoFun + qryOS.FieldByName('totMinutos').AsInteger;
end;

procedure TfrmRelFunc.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: boolean);
var
  horas: integer;
  minutos: integer;
  h: string;
begin
  Horas := Trunc(tMinutoFun / 60);
  Minutos := tMinutoFun - (horas * 60);
  tMinutoFun := Minutos;
  tHoraFun := THoraFun + Horas;
  h := '';
  h := Format('%d hora(s) e %d minuto(s)', [thoraFun, tminutoFun]);
  lblTotHorasFun.Caption := h;
  tHoraFun := 0;
  tMinutoFun := 0;
end;

procedure TfrmRelFunc.lblPeriodoPrint(sender: TObject; var Value: String);
begin
   value := edtInicio.Text + ' até ' + edtFinal.Text; 
end;

end.

