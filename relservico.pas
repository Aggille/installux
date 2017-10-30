unit relservico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, DB, IBCustomDataSet,
  IBQuery, IBDatabase,  Grids, DBGrids,
  QuickRpt, ExtCtrls, QRCtrls, vcl.wwdblook;

type
  TfrmRelServicos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    IBTransaction1: TIBTransaction;
    sqlServico: TIBQuery;
    sqlServicoDATA: TDateField;
    sqlServicoAMBIENTE: TIntegerField;
    sqlServicoQUANTIDADE: TIntegerField;
    sqlServicoNOMEDOPRODUTO: TIBStringField;
    sqlServicoNOMEDOCLIENTE: TIBStringField;
    sqlServicoCLIENTE: TIntegerField;
    sqlServicoTEMPO: TTimeField;
    sqlServicoFUNCIONARIO: TIBStringField;
    sqlServicoPRODUTO: TIntegerField;
    sqlServicoOS: TIntegerField;
    sqlServicoHORAS: TTimeField;
    sqlServicoSAIDA: TTimeField;
    sqlServicoCHEGADA: TTimeField;
    sqlServicoTOTHORAS: TIntegerField;
    sqlServicoTOTMINUTOS: TIntegerField;
    qrServicos: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    sqlServicoNOMEDOAMBIENTE: TIBStringField;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    lblPeriodo: TQRLabel;
    lblTotHoras: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand1: TQRBand;
    lblTotHorasDia: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    sqlServicoQT: TSmallintField;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    qryClientes: TIBQuery;
    qryClientesNOME: TIBStringField;
    qryClientesCODIGO: TIntegerField;
    qryClientesFANTASIA: TIBStringField;
    dtsClientes: TDataSource;
    Label3: TLabel;
    edtCliente: TwwDBLookupCombo;
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelServicos: TfrmRelServicos;
  tHora, tMinuto, tSegundo: Word;
  tHoraDia, tMinutoDia, tSegundoDia: Word;
implementation

uses principal;

{$R *.dfm}

procedure TfrmRelServicos.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmRelServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmRelServicos.FormShow(Sender: TObject);
begin
  qryClientes.Open;
end;

procedure TfrmRelServicos.BitBtn1Click(Sender: TObject);
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

        if( edtCliente.text = '' ) then
          begin
            parambyname( 'cinicial' ).asInteger :=0;
            parambyname( 'cfinal' ).asInteger := 999999;
          end
        else
          begin
            parambyname( 'cinicial' ).asInteger := qryClientes.fieldbyname( 'codigo' ).asInteger;
            parambyname( 'cfinal' ).asInteger := qryClientes.fieldbyname( 'codigo' ).asInteger;
          end;

        lblPeriodo.Caption := 'de ' + edtInicio.Text + ' até  ' + edtFinal.Text;
        abre( [sqlServico] );

        with qrServicos do
          begin
            Prepare;

            qrPrinter.PreviewModal;
            qrPrinter := nil;
            qrPrinter.Free;
          end;
      end;

  except

  on e:exception do Erro(Pchar('Erro na preparação do relatório : ' + e.Message));

  end;

end;

procedure TfrmRelServicos.sqlServicoCalcFields(DataSet: TDataSet);
var
  Hora, Minuto, Segundo, mSeg: Word;

begin

  with sqlServico do
    begin
      fieldByName('Horas').asDateTime := fieldByName('Saida').asDateTime - fieldbyName('Chegada').asDateTime;
      DecodeTime(sqlServico.fieldByName('horas').asDateTime, Hora, Minuto, Segundo, MSeg);

      if fieldByName( 'QT' ).asInteger = 0 then
      begin
         fieldByName('TotHoras').asinteger := Hora;
         fieldByName('totMinutos').asInteger := Minuto;
      end
      else
      begin
         fieldByName('TotHoras').asinteger := Hora * fieldByName( 'QT' ).asInteger;
         fieldByName('totMinutos').asInteger := Minuto * fieldByName( 'QT' ).asInteger;
      end;
    end;

end;

procedure TfrmRelServicos.SummaryBand1BeforePrint(Sender: TQRCustomBand;
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
  h := Format('%d hora(s) e %d minuto(s) trabalhado(s) no período', [thora, tminuto]);
  lblTotHoras.Caption := h;
end;

procedure TfrmRelServicos.QRGroup2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
var
  horas: Integer;
  minutos: Integer;
begin
  tHora     := tHora + sqlservico.fieldByName('totHoras').asInteger;
  tMinuto   := tMinuto + sqlservico.fieldByName('totMinutos').asInteger;
  tHoraDia  := tHoraDia + sqlservico.fieldByName('totHoras').asInteger;
  tMinutoDia:= tMinutoDia + sqlservico.fieldByName('totMinutos').asInteger;
end;

procedure TfrmRelServicos.QRBand1BeforePrint(Sender: TQRCustomBand;
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
  h := Format('%d hora(s) e %d minuto(s) trabalhado(s) no dia', [thoraDia, tminutoDia]);
  lblTotHorasDia.Caption := h;
  tHoraDia := 0;
  tMinutoDia := 0;
end;

end.

