unit historicodoarquiteto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, RzDBLbl, DB, Grids, Wwdbigrd, Wwdbgrid,
  IBCustomDataSet, wwdblook, Buttons, DBCtrls, IBQuery, wwDialog,
  wwrcdvw, ExtCtrls, Mask, wwcheckbox, JvComponent, JvRollOut, QuickRpt,
  QRCtrls, jpeg;

type
  TfrmHistoricoArq = class(TForm)
    tblServicos: TIBDataSet;
    grdServicos: TwwDBGrid;
    dtsServicos: TDataSource;
    btnSair: TBitBtn;
    qryValor: TIBQuery;
    dtsValor: TDataSource;
    Label1: TLabel;
    qryValorTOTAL: TIBBCDField;
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
    tblOShoras: TTimeField;
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
    dtsficha: TDataSource;
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
    qryValorVALORSERVICOS: TIBBCDField;
    qryValorVALORMATERIAIS: TIBBCDField;
    tblFichaOS: TIntegerField;
    tblOSBotao: TStringField;
    Label2: TLabel;
    lblHoras: TLabel;
    tblOSQUANTIDADE: TIntegerField;
    tblOSPAGAMENTO: TDateField;
    tblOSRECIBO: TIntegerField;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistoricoArq: TfrmHistoricoArq;
implementation

uses principal, OS, pededata, arquitetos;

{$R *.dfm}

procedure TfrmHistoricoArq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmHistoricoArq.FormShow(Sender: TObject);
begin
  tblOS.Close;
  tblOS.ParamByName('codigo').AsInteger :=
    frmArquitetos.tblArquitetos.FieldByName('Codigo').AsInteger;
  if not abre([tblOS, qryValor, tblServicos, tblFicha]) then
    Close;
end;

procedure TfrmHistoricoArq.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmHistoricoArq.btnImprimeClick(Sender: TObject);
var
responsavel:String[50];
begin
end;

procedure TfrmHistoricoArq.grdServicosDblClick(Sender: TObject);
var
  registro: TBookMark;
begin
end;

procedure TfrmHistoricoArq.tblOSCalcFields(DataSet: TDataSet);
begin
  with tblOS do
  begin
    FieldByName('Horas').Value :=
      ( FieldByName('Saida').Value - FieldByName('Chegada').Value ) * fieldbyname( 'quantidade' ).asInteger;
    fieldByName( 'Botao' ).asString := 'Alterar';
  end;
end;

procedure TfrmHistoricoArq.wwExpandButton1AfterExpand(Sender: TObject);
begin
  grdServicos.Left := grdOS.left;
end;

procedure TfrmHistoricoArq.grdOSDblClick(Sender: TObject);
begin

  with grdos do
   if not isSelected then SelectRecord else UnselectRecord;;

//   with grdOS do
//      if not IsSelected then SelectRecord else UnselectRecord;


end;

procedure TfrmHistoricoArq.wwExpandButton1BeforeExpand(Sender: TObject);
begin
  with tblServicos do
  begin
    Close;
    paramByName('OS').AsInteger := tblOS.FieldByName('OS').AsInteger;
    Open;
  end;
end;

procedure TfrmHistoricoArq.tblOSAfterOpen(DataSet: TDataSet);
var
hora, minuto, segundo, mseg:word;
tothora, totminuto:integer;
horas, minutos:Integer;

begin
   // Recalcula as horas deste Arquiteto
   tothora     := 0;
   totMinuto   := 0;
   with tblOS do
   begin
      first;
      while not eof do begin
         DecodeTime(fieldByName('horas').asDateTime, Hora, Minuto, Segundo, MSeg);
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

end.

