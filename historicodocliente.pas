unit historicodocliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, RzDBLbl, DB, Grids, Wwdbigrd, Wwdbgrid,
  IBCustomDataSet, wwdblook, Buttons, DBCtrls, IBQuery, wwDialog,
  wwrcdvw, ExtCtrls, Mask, wwcheckbox, JvComponent, JvRollOut, QuickRpt,
  QRCtrls, jpeg;

type
  TfrmHistorico = class(TForm)
    tblServicos: TIBDataSet;
    grdServicos: TwwDBGrid;
    dtsServicos: TDataSource;
    btnSair: TBitBtn;
    qryValor: TIBQuery;
    dtsValor: TDataSource;
    Label1: TLabel;
    qryValorTOTAL: TIBBCDField;
    btnImprime: TBitBtn;
    DBEdit1: TDBEdit;
    grdOS: TwwDBGrid;
    tblOS: TIBDataSet;
    dtsOS: TDataSource;
    tblOSCHEGADA: TTimeField;
    tblOSCLIENTE: TIntegerField;
    tblOSDATA: TDateField;
    tblOSDATADEPAGAMENTO: TDateField;
    tblOSFUNCIONARIO: TIntegerField;
    tblOSOS: TIntegerField;
    tblOSSAIDA: TTimeField;
    tblOSVALORCOBRADO: TIBBCDField;
    tblOSNOMEDOCLIENTE: TIBStringField;
    tblOSNOMEDOFUNCIONARIO: TIBStringField;
    tblServicosPRECO: TIBBCDField;
    tblServicosTOTAL: TIBBCDField;
    tblServicosQUANTIDADE: TIntegerField;
    tblServicosAMBIENTE: TIBStringField;
    tblServicosPRODUTO: TIBStringField;
    tblOSQTITENS: TIntegerField;
    tblFicha: TIBDataSet;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    DataSource1: TDataSource;
    tblFichaDATA: TDateField;
    tblFichaVALORCOBRADOMATERIAIS: TIBBCDField;
    tblFichaVALORCOBRADOSERVICOS: TIBBCDField;
    tblFichaOBS: TBlobField;
    tblFichaRESPONSAVEL: TIBStringField;
    tblFichaNOMEDOCLIENTE: TIBStringField;
    tblFichaTELEFONE: TIBStringField;
    tblFichaNOMEDOARQUITETO: TIBStringField;
    qrFicha: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel18: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRSysData2: TQRSysData;
    SummaryBand1: TQRBand;
    lbl1: TQRLabel;
    lbl2: TQRLabel;
    lbl3: TQRLabel;
    QRShape2: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    tblFichaAMBIENTE: TIntegerField;
    tblFichaNOMEDOAMBIENTE: TIBStringField;
    qryValorVALORSERVICOS: TIBBCDField;
    qryValorVALORMATERIAIS: TIBBCDField;
    tblFichaOS: TIntegerField;
    tblOSBotao: TStringField;
    QRShape3: TQRShape;
    Label2: TLabel;
    lblHoras: TLabel;
    QRLabel1: TQRLabel;
    tblOSRECIBO: TIntegerField;
    tblOSQUANTIDADE: TIntegerField;
    tblOSID: TIntegerField;
    tblOSPAGAMENTO: TDateField;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    tblOSVALOR_RECIBO: TIBBCDField;
    BitBtn1: TBitBtn;
    tblOSSERVICOS_COBRADO: TIBBCDField;
    tblOSMATERIAIS_COBRADO: TIBBCDField;
    tblOSOBS: TBlobField;
    tblOSVALORCOBRADOMATERIAIS: TIBBCDField;
    tblOSVALORCOBRADOSERVICOS: TIBBCDField;
    tblOSHORAS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure grdServicosDblClick(Sender: TObject);
    procedure tblOSCalcFields(DataSet: TDataSet);
    procedure wwExpandButton1AfterExpand(Sender: TObject);
    procedure grdOSDblClick(Sender: TObject);
    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure tblOSAfterOpen(DataSet: TDataSet);
    procedure grdOSCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistorico: TfrmHistorico;
implementation

uses clientes, principal, OS, pededata, impficharecibo, Efuncoes;

{$R *.dfm}

procedure TfrmHistorico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmHistorico.FormShow(Sender: TObject);
begin
  tblOS.Close;
  tblOS.ParamByName('cliente').AsInteger :=
    frmClientes.tblClientes.FieldByName('Codigo').AsInteger;
    if not abre([tblOS, qryValor, tblServicos, tblFicha]) then
    Close;
end;

procedure TfrmHistorico.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmHistorico.btnImprimeClick(Sender: TObject);
var
responsavel:String[50];
begin
   tblFicha.Open;
   DetailBand1.Height := 0;
   qrGroup2.Height := 0;
   qrFicha.PreviewModal;
end;

procedure TfrmHistorico.grdServicosDblClick(Sender: TObject);
var
  registro: TBookMark;
begin
end;

procedure TfrmHistorico.tblOSCalcFields(DataSet: TDataSet);
var
h:TDateTime;
mseg,segundo,hora,minuto:word;
horas,minutos:Integer;
begin
  with tblOS do
  begin

    h := FieldByName('Saida').asDateTime - FieldByName('Chegada').asDateTime ;
    fieldbyname( 'horas' ).asString := TimeToStr( h );
    DecodeTime( h, Hora, Minuto, Segundo, MSeg);

    hora    := hora * fieldbyname( 'quantidade' ).asInteger;
    minuto  := minuto * fieldbyname( 'quantidade' ).asInteger;

    horas   := hora * fieldbyname( 'quantidade' ).asInteger;
    minutos := minuto * fieldbyname( 'quantidade' ).asInteger;

    Horas       := Trunc( minuto / 60);
    Minutos     := minuto - ( horas * 60);
    horas       := horas + hora;

    fieldbyname( 'horas' ).asString := padlzero( inttostr(horas) , 2 ) + ':' + padlzero( inttostr( minutos ) , 2  );

    fieldByName( 'Botao' ).asString := 'Alterar';

  end;

end;

procedure TfrmHistorico.wwExpandButton1AfterExpand(Sender: TObject);
begin
  grdServicos.Left := grdOS.left;
end;

procedure TfrmHistorico.grdOSDblClick(Sender: TObject);
begin

  with grdos do
   if not isSelected then SelectRecord else UnselectRecord;;

//   with grdOS do
//      if not IsSelected then SelectRecord else UnselectRecord;


end;

procedure TfrmHistorico.wwExpandButton1BeforeExpand(Sender: TObject);
begin
  with tblServicos do
  begin
    Close;
    paramByName('OS').AsInteger := tblOS.FieldByName('OS').AsInteger;
    Open;
  end;
end;

procedure TfrmHistorico.tblOSAfterOpen(DataSet: TDataSet);
var
hora, minuto, segundo, mseg:word;
tothora, totminuto:integer;
horas, minutos:Integer;

begin
   // Recalcula as horas deste cliente
   tothora     := 0;
   totMinuto   := 0;
   with tblOS do
   begin
      first;
      while not eof do begin
         //DecodeTime(fieldByName('horas').asDateTime, Hora, Minuto, Segundo, MSeg);
         hora := StrToInt( copy( fieldbyname( 'horas' ).asString , 0 , 2 ) );
         minuto := strToInt( copy( fieldbyname( 'horas' ).asString , 4 , 2 ) ) ;

         totHora        := totHora + Hora;
         totMinuto      := totMinuto + Minuto;
         next;
      end;

      first;

      Horas       := Trunc( totMinuto / 60);
      Minutos     := totminuto - ( horas * 60);
      totMinuto   := Minutos;
      totHora     := TotHora  + Horas;
      lblHoras.Caption := Format( '%d:%d' , [tothora , totminuto ] );
   end;

end;

procedure TfrmHistorico.grdOSCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if not HighLight then
   if  field.Fieldname = 'VALORCOBRADO' then
    aBrush.Color := $f7f7f7;

end;

procedure TfrmHistorico.BitBtn1Click(Sender: TObject);
begin
   Application.CreateForm( TfrmImpFichaRecibo, frmImpfichaRecibo );
   with frmImpFichaRecibo do
   begin
      with qrFicha do
      begin
         DetailBand1.Height := 0;
         qrGroup2.Height := 0;
         qrServicos.Caption         := FloatToStrF( tblOs.fieldbyname( 'Servicos_cobrado' ).asCurrency, ffCurrency , 16 , 2 );
         qrMateriais.Caption        := FloatToStrF( tblOs.fieldbyname( 'Materiais_cobrado' ).asCurrency, ffcurrency, 16 , 2 );
         qrTotal.Caption            := FloatToStrF( tblOs.fieldbyname( 'Valor_Recibo' ).asCurrency , ffCurrency , 16 , 2 );
         qrObs.DataSet              := tblOs;//.Lines.Clear;
         //qrObs.Lines.Text           := tblOs.fieldbyname( 'obs' ).asString;
         lblNumero.Caption          := 'Número da ficha :'+IntToStr( tblOs.fieldByName( 'Recibo' ).asInteger )

      end;

      tblFicha.Close;
      tblFicha.ParamByName( 'recibo' ).asInteger   := tblOS.fieldbyname( 'Recibo' ).asInteger;
      tblFicha.Open;
      qrFicha.PreviewModal;
      close;
      free;

   end;

end;

end.

