unit clientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBCustomDataSet, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, wwDialog, wwrcdvw, StdCtrls,
  wwclearbuttongroup, wwradiogroup, ComCtrls, wwriched, wwdblook, wwidlg,
  wwcheckbox, wwDataInspector, RzPanel, RzSplit, wwrcdpnl, Buttons, Navbtn,
  DBSBtn, Mask, wwdbedit, Wwdotdot, Wwdbcomb, QuickRpt, QRGraphcon, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;
type
  TfrmClientes = class(TForm)
    dtsClientes: TDataSource;
    dtsArquitetos: TDataSource;
    tblClientes: TIBDataSet;
    tblArquitetos: TIBDataSet;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1FilterDialog: TwwNavButton;
    wwDBNavigator1LocateDialog: TwwNavButton;
    wwDBNavigator1SearchDialog: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    edtArquiteto: TwwDBLookupCombo;
    tblClientesCODIGO: TIntegerField;
    tblClientesENDERECO: TIBStringField;
    tblClientesCIDADE: TIBStringField;
    tblClientesBAIRRO: TIBStringField;
    tblClientesCEP: TIBStringField;
    tblClientesESTADO: TIBStringField;
    tblClientesPAIS: TIBStringField;
    tblClientesCNPJ_CPF: TIBStringField;
    tblClientesPESSOA: TIBStringField;
    tblClientesARQUITETO: TIntegerField;
    tblClientesTELEFONE: TIBStringField;
    tblClientesFAX: TIBStringField;
    tblClientesEMAIL: TIBStringField;
    tblClientesOBSERVACOES: TMemoField;
    tblClientesINSCRICAOESTADUAL: TIBStringField;
    trnClientes: TIBTransaction;
    RzSplitter1: TRzSplitter;
    grdClientes: TwwDBGrid;
    pnlClientes: TwwRecordViewPanel;
    tblClientesANIVERSARIO: TDateField;
    wwDBNavigator1Button1: TwwNavButton;
    edtPessoa: TwwDBComboBox;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    wwDBNavigator1Button4: TwwNavButton;
    tblClientesNOME: TIBStringField;
    tblClientescelular: TIBStringField;
    wwDBNavigator1Button5: TwwNavButton;
    tblClientesFANTASIA: TIBStringField;
    tblClientesINATIVO: TIBStringField;
    edtInativo: TwwDBComboBox;
    tblClientesNOME_CONJUGE: TIBStringField;
    tblClientesANIVERSARIO_CONJUGE: TDateField;
    wwDBRichEdit1: TwwDBRichEdit;
    QRGraphicCanvas1: TQRGraphicCanvas;
    edtPesquisaCliente: TcxLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdClientesDblClick(Sender: TObject);
    procedure tblClientesAfterPost(DataSet: TDataSet);
    procedure tblClientesAfterEdit(DataSet: TDataSet);
    procedure tblClientesAfterScroll(DataSet: TDataSet);
    procedure edtPessoaClick(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBNavigator1Button2Click(Sender: TObject);
    procedure wwDBNavigator1Button3Click(Sender: TObject);
    procedure wwDBNavigator1Button4Click(Sender: TObject);
    procedure wwDBNavigator1Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

uses principal, servicosdocliente, historicodocliente, recibosdocliente,
  ambcli, orctoscli;


{$R *.DFM}

procedure TfrmClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree
end;

procedure TfrmClientes.wwDBNavigator1ButtonClick(Sender: TObject);
begin
   close;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
   trnClientes.Active := true;

   if not abre( [tblClientes, tblArquitetos ] ) then close;
end;

procedure TfrmClientes.grdClientesDblClick(Sender: TObject);
begin
   tblClientes.Edit;
end;

procedure TfrmClientes.tblClientesAfterPost(DataSet: TDataSet);
begin
   trnClientes.CommitRetaining;
end;

procedure TfrmClientes.tblClientesAfterEdit(DataSet: TDataSet);
begin
   pnlClientes.Setfocus;
end;

procedure TfrmClientes.tblClientesAfterScroll(DataSet: TDataSet);
begin
   with tblClientes do
      if fieldByName( 'Pessoa' ).asString = 'J' then
         fieldByName( 'CNPJ_CPF' ).EditMask := '##.###.###/####-##;0;_'
      else fieldByName( 'CNPJ_CPF' ).EditMask := '###.###.###-##;0;_'
end;

procedure TfrmClientes.edtPessoaClick(Sender: TObject);
begin
tblClientesAfterScroll(NIL);
end;

procedure TfrmClientes.wwDBNavigator1Button1Click(Sender: TObject);
begin
   application.Createform( TfrmServicosCliente, frmServicosCliente );
   frmServicosCliente.ShowModal;
   frmClientes.BringToFront;   
end;

procedure TfrmClientes.SpeedButton1Click(Sender: TObject);
begin
   tblClientes.Cancel;
end;

procedure TfrmClientes.BitBtn1Click(Sender: TObject);
begin
   with tblClientes do
      if State in [dsInsert, dsEdit] then
         if Confirma( 'Confirma a gravação deste cliente ?' ) then Post else Cancel;
end;

procedure TfrmClientes.wwDBNavigator1Button2Click(Sender: TObject);
begin
   application.Createform( TfrmHistorico, frmHistorico );
   frmHistorico.ShowModal;
end;

procedure TfrmClientes.wwDBNavigator1Button3Click(Sender: TObject);
begin
   application.Createform( TfrmReciboscliente, frmRecibosCliente );
   frmRecibosCliente.ShowModal;
end;

procedure TfrmClientes.wwDBNavigator1Button4Click(Sender: TObject);
begin
   if not ( tblClientes.State in [dsInsert, dsEdit] ) then
    begin
      erro( 'Você deve estar alterando ou incluindo' );
      exit;
    end;

   application.Createform( TfrmAmbcli, frmAmbCli );
   frmAmbcli.ShowModal;
end;

procedure TfrmClientes.wwDBNavigator1Button5Click(Sender: TObject);
begin
    application.CreateForm( TfrmOrctosCli, frmOrctosCli );
    frmOrctosCli.ShowModal;
end;

end.
