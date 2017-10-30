unit relservidodata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, DB, IBCustomDataSet,
  IBQuery, IBDatabase, Grids, DBGrids,StrUtils,
  QuickRpt, ExtCtrls, QRCtrls;

type
  TfrmRelServicosData = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    IBTransaction1: TIBTransaction;
    sqlServico: TIBQuery;
    qrServicos: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    lblPeriodo: TQRLabel;
    sqlServicoCLIENTE: TIntegerField;
    sqlServicoVALORMATERIAIS: TIBBCDField;
    sqlServicoVALORSERVICOS: TIBBCDField;
    sqlServicoVALORCOBRADOMATERIAIS: TIBBCDField;
    sqlServicoVALORCOBRADOSERVICOS: TIBBCDField;
    sqlServicoDATA: TDateField;
    sqlServicoSAIDA: TTimeField;
    sqlServicoCHEGADA: TTimeField;
    sqlServicoPAGAMENTO: TDateField;
    sqlServicoNOME: TIBStringField;
    sqlServicoHORAS: TDateTimeField;
    QRDBText1: TQRDBText;
    sqlServicoOS: TIntegerField;
    QRDBText2: TQRDBText;
    sqlServicoVALORCOBRADO: TIBBCDField;
    sqlServicoVALOR: TIBBCDField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    sqlServicotothoras: TIntegerField;
    sqlServicototminutos: TIntegerField;
    QRLabel3: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    lblTotHorasDia: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRBand2: TQRBand;
    lblTotHoras: TQRLabel;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    sqlServicoQT: TIntegerField;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    sqlServicoNOMEFUNCIONARIO: TIBStringField;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    sqlServicoOBS: TBlobField;
    QRLabel11: TQRLabel;
    sqlServicoDH_ENVIO: TStringField;
    QRDBText4: TQRDBText;
    sqlServicoRECIBO: TIntegerField;
    QRLabel15: TQRLabel;
    QRDBText5: TQRDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure sqlServicoCalcFields(DataSet: TDataSet);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelServicosData: TfrmRelServicosData;
  tHora, tMinuto, tSegundo: Word;
  tHoraDia, tMinutoDia, tSegundoDia: Word;
implementation

uses principal;

{$R *.dfm}

procedure TfrmRelServicosData.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmRelServicosData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmRelServicosData.BitBtn1Click(Sender: TObject);
begin

  tHora := 0;
  tMinuto := 0;
  tSegundo := 0;

  tHoraDia := 0;
  tMinutoDia := 0;
  tSegundoDia := 0;

  try
    with sqlServico do
      begin
        close;
        paramByName('inicio').asDateTime := edtInicio.Date;
        paramByName('final').asDateTime := edtFinal.Date;
        lblPeriodo.Caption := 'de ' + edtInicio.Text + ' até  ' + edtFinal.Text;
        open;

        with qrServicos do
          begin
            Prepare;
            qrPrinter.PreviewModal;
            qrPrinter := nil;
            qrPrinter.Free;
          end;
      end;

  except


   on e:exception do begin
        Erro(Pchar('Erro na preparação do relatório : ' + e.Message));
   end;

  end;

  
end;

procedure TfrmRelServicosData.sqlServicoCalcFields(DataSet: TDataSet);
var
  horas, minutos, Hora, Minuto, Segundo, mSeg: Word;
  p:Integer;
  aux:String;
begin

  with sqlServico do
    begin

      p := PosEx( 'via APP em ' , fieldbyname( 'obs' ).asString  );

      fieldbyname( 'dh_envio' ).asString := '';

      if( p > 0 ) then
      begin
        aux := Copy( Trim( fieldbyname( 'obs' ).asString ) , (p+10), 20 ) ;
        fieldbyname( 'dh_envio' ).asString := aux;
      end;

      fieldByName('Horas').asDateTime := fieldByName('Saida').asDateTime - fieldbyName('Chegada').asDateTime;
      DecodeTime(sqlServico.fieldByName('horas').asDateTime, Hora, Minuto, Segundo, MSeg);

      if fieldByName( 'QT' ).asInteger = 0 then
      begin
         fieldByName('TotHoras').asinteger := Hora;
         fieldByName('totMinutos').asInteger := Minuto;
      end
      else
      begin

         Hora := Hora * fieldByName( 'QT' ).asInteger;;
         Minuto := Minuto * fieldByName( 'QT' ).asInteger;

          Horas       := Trunc( minuto / 60);
          Minutos     := minuto - ( horas * 60);
          horas       := horas + hora;


         fieldByName('TotHoras').asinteger := Horas ;
         fieldByName('totMinutos').asInteger := Minutos ;


      end;
    end;

end;

procedure TfrmRelServicosData.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

var
  horas: Integer;
  minutos: Integer;
  h: string;

begin
  Horas := Trunc(tMinuto / 60);
  Minutos := tMinuto - (horas * 60);
  tMinuto := Minutos;
  tHora := THora + Horas;
  h := '';
  h := Format('%d:%d', [thora, tminuto]);
  lblTotHoras.Caption := h;
end;

procedure TfrmRelServicosData.QRGroup2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
var
  horas: Integer;
  minutos: Integer;
begin
end;

procedure TfrmRelServicosData.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

var
  horas: Integer;
  minutos: Integer;
  h: string;

begin
  Horas := Trunc(tMinutoDia / 60);
  Minutos := tMinutoDia - (horas * 60);
  tMinutoDia := Minutos;
  tHoraDia := THoraDia + Horas;
  h := '';
  h := Format('%d:%d', [thoraDia, tminutoDia]);
  lblTotHorasDia.Caption := h;
  tHoraDia := 0;
  tMinutoDia := 0;
end;

procedure TfrmRelServicosData.QRLabel3Print(sender: TObject;
  var Value: String);
begin
   with sqlServico do
   value := Format( '%d:%d', [fieldbyname( 'tothoras' ).asInteger , fieldbyname( 'totminutos' ).asInteger] );
end;

procedure TfrmRelServicosData.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  tHora     := tHora + sqlservico.fieldByName('totHoras').asInteger;
  tMinuto   := tMinuto + sqlservico.fieldByName('totMinutos').asInteger;
  tHoraDia  := tHoraDia + sqlservico.fieldByName('totHoras').asInteger;
  tMinutoDia:= tMinutoDia + sqlservico.fieldByName('totMinutos').asInteger;

  with DetailBand1 do
    if color = clWhite then color := $f7f7f7 else color := clWhite;


end;

end.

