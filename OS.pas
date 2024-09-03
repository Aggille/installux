unit OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, StdCtrls, wwdbdatetimepicker,
  wwdblook, Mask, DBCtrls, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, wwDialog, wwrcdvw, Buttons,
  DBSBtn, Navbtn,  ComCtrls, wwriched, QRCtrls,
  QuickRpt, jpeg, wwdbedit, IBQuery, ExtDlgs, Wwdbspin, dxGDIPlusClasses,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons;

type
  TfrmOS = class(TForm)
    qrpOS: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
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
    QRShape3: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRLabel1: TQRLabel;
    QRDBText14: TQRDBText;
    lblResponsavel: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText28: TQRDBText;
    pagOs: TPageControl;
    tabPesquisa: TTabSheet;
    tabOs: TTabSheet;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Button1: TwwNavButton;
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    wwDBNavigator1Button4: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText1: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edtData: TwwDBDateTimePicker;
    edtCliente: TwwDBLookupCombo;
    edtFuncionario: TwwDBLookupCombo;
    edtChegada: TDBEdit;
    edtSaida: TDBEdit;
    edtOS: TDBEdit;
    edtValorTotal: TDBEdit;
    edtTotalDeHoras: TDBEdit;
    edtValorCobrado: TDBEdit;
    edtValorServicos: TDBEdit;
    edtValorMateriais: TDBEdit;
    edtValorCobradoServicos: TDBEdit;
    edtValorCobradoMateriais: TDBEdit;
    edtRecibo: TDBEdit;
    edtPgto: TwwDBDateTimePicker;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edtObs: TwwDBRichEdit;
    dtsLocais: TDataSource;
    tblLocais: TIBDataSet;
    dlgFigura: TSavePictureDialog;
    qryProximaOS: TIBQuery;
    tblEstoque: TIBDataSet;
    tblEstoqueESTOQUE: TIntegerField;
    tblEstoqueTIPODOCUMENTO: TIBStringField;
    tblEstoqueTIPO: TIBStringField;
    tblEstoquePRECO: TIBBCDField;
    tblEstoqueTOTAL: TIBBCDField;
    tblEstoqueDOCUMENTO: TIntegerField;
    tblEstoqueDATA: TDateField;
    tblEstoqueQUANTIDADE: TFloatField;
    tblEstoquePRODUTO: TIntegerField;
    tblEstoqueID_LOCAL: TIntegerField;
    dlgServico: TwwRecordViewDialog;
    dtsFuncionarios: TDataSource;
    dtsServicos: TDataSource;
    tblServicos: TIBDataSet;
    tblServicosPRODUTO: TIntegerField;
    tblServicosNOMEDOPRODUTO: TStringField;
    tblServicosQUANTIDADE: TIntegerField;
    tblServicosPRECO: TIBBCDField;
    tblServicosTOTAL: TIBBCDField;
    tblServicosNOMEDOAMBIENTE: TStringField;
    tblServicosNOMEDOLOCAL: TStringField;
    tblServicosID_LOCAL: TIntegerField;
    tblServicosAMBIENTE: TIntegerField;
    tblServicosSERVICO: TIntegerField;
    tblServicosCLIENTE: TIntegerField;
    tblServicosARQUITETO: TIntegerField;
    tblServicosHORACHEGADA: TTimeField;
    tblServicosHORASAIDA: TTimeField;
    tblServicosDATAPAGAMENTO: TDateField;
    tblServicosFUNCIONARIO: TIntegerField;
    tblServicosOS: TIntegerField;
    tblServicosDATA: TDateField;
    tblServicosTIPOPRODUTO: TStringField;
    dtsOS: TDataSource;
    tblOS: TIBDataSet;
    tblOSOS: TIntegerField;
    tblOSCLIENTE: TIntegerField;
    tblOSDATA: TDateField;
    tblOSFUNCIONARIO: TIntegerField;
    tblOSVALOR: TIBBCDField;
    tblOSARQUITETO: TIntegerField;
    tblOSCHEGADA: TTimeField;
    tblOSSAIDA: TTimeField;
    tblOSVALORCOBRADO: TIBBCDField;
    tblOSOBS: TBlobField;
    tblOSRESPONSAVEL: TIBStringField;
    tblOSVALORMATERIAIS: TIBBCDField;
    tblOSVALORSERVICOS: TIBBCDField;
    tblOSVALORCOBRADOMATERIAIS: TIBBCDField;
    tblOSVALORCOBRADOSERVICOS: TIBBCDField;
    tblOSDATADEPAGAMENTO: TDateField;
    tblOSRECIBO: TIntegerField;
    tblOSDATA_CONFIRMACAO: TDateField;
    trnOS: TIBTransaction;
    tblFuncionarios: TIBDataSet;
    tblFuncionariosNOME: TIBStringField;
    tblFuncionariosCODIGO: TIntegerField;
    tblFuncionariosQUANTIDADE: TIntegerField;
    tblAmbientes: TIBDataSet;
    tblAmbientesDESCRICAO: TIBStringField;
    tblAmbientesAMBIENTE: TSmallintField;
    tblAmbientesCLIENTE: TSmallintField;
    tblProdutos: TIBDataSet;
    tblProdutosNOME: TIBStringField;
    tblProdutosBARRAS: TIBStringField;
    tblProdutosPRECO: TIBBCDField;
    tblProdutosSALDO: TFloatField;
    tblProdutosTIPO: TIBStringField;
    tblProdutosUNIDADE: TIBStringField;
    tblProdutosCODIGO: TIntegerField;
    tblArquitetos: TIBDataSet;
    tblArquitetosNOME: TIBStringField;
    tblArquitetosCODIGO: TIntegerField;
    tblArquitetosEMAIL: TIBStringField;
    tblArquitetosTELEFONE: TIBStringField;
    dtsArquitetos: TDataSource;
    dtsclientes: TDataSource;
    tblClientes: TIBDataSet;
    tblClientesCODIGO: TIntegerField;
    tblClientesARQUITETO: TIntegerField;
    tblClientesTELEFONE: TIBStringField;
    tblClientesNOME: TIBStringField;
    tblClientesFANTASIA: TIBStringField;
    tblClientesEMAIL: TIBStringField;
    edtLocal: TwwDBLookupCombo;
    edtAmbiente: TwwDBLookupCombo;
    edtNomeDoProduto: TwwDBLookupCombo;
    edtProduto: TwwDBLookupCombo;
    grdEstacao: TwwDBGrid;
    dbNavBtnCancel: TDBNavigationButton;
    dbNavBtnSave: TDBNavigationButton;
    grdServicos: TwwDBGrid;
    Label18: TLabel;
    Label17: TLabel;
    Label11: TLabel;
    btnExcluir: TDBSpeedButton;
    btnAlterar: TDBSpeedButton;
    btnNovo: TDBSpeedButton;
    Panel1: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Arquiteto: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    edtArquitetoPesquisa: TwwDBLookupCombo;
    edtClientePesquisa: TwwDBLookupCombo;
    edtOsPesquisa: TwwDBSpinEdit;
    btnPesquisa: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    qryOsPesquisa: TIBQuery;
    qryOsPesquisaOS: TIntegerField;
    qryOsPesquisaDATA: TDateField;
    qryOsPesquisaVALOR: TIBBCDField;
    qryOsPesquisaNOMEDOCLIENTE: TIBStringField;
    qryOsPesquisaNOMEDOARQUITETO: TIBStringField;
    qryArquitetosPesquisa: TIBQuery;
    qryArquitetosPesquisaNOME: TIBStringField;
    qryArquitetosPesquisaCIDADE: TIBStringField;
    qryArquitetosPesquisaCODIGO: TIntegerField;
    qryClientesPesquisa: TIBQuery;
    qryClientesPesquisaNOME: TIBStringField;
    qryClientesPesquisaCIDADE: TIBStringField;
    qryClientesPesquisaCODIGO: TIntegerField;
    dtsClientesPesquisa: TDataSource;
    dtsArquitetosPesquisa: TDataSource;
    dtsOsPesquisa: TDataSource;
    wwDBGrid2: TwwDBGrid;
    qryItensPesquisa: TIBQuery;
    dtsItensPesquisa: TDataSource;
    qryItensPesquisaQUANTIDADE: TIntegerField;
    qryItensPesquisaPRECO: TIBBCDField;
    qryItensPesquisaPRODUTO: TIntegerField;
    qryItensPesquisaSERVICO: TIntegerField;
    qryItensPesquisaTOTAL: TIBBCDField;
    qryItensPesquisaID_LOCAL: TIntegerField;
    qryItensPesquisaNOMEDOLOCAL: TIBStringField;
    qryItensPesquisaNOMEDOPRODUTO: TIBStringField;
    qryItensPesquisaNOMEDOAMBIENTE: TIBStringField;
    tblOSTOTALDEHORAS: TStringField;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tblServicosAfterEdit(DataSet: TDataSet);
    procedure tblOSCalcFields(DataSet: TDataSet);
    procedure tblOSBeforePost(DataSet: TDataSet);
    procedure tblServicosBeforePost(DataSet: TDataSet);
    procedure tblOSBeforeDelete(DataSet: TDataSet);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure tblServicosBeforeEdit(DataSet: TDataSet);
    procedure wwDBNavigator1Button2Click(Sender: TObject);
    procedure dlgServicoBeforeCreateControl(Form: TwwRecordViewForm;
      curField: TField; var Accept: Boolean);
    procedure tblServicosPRODUTOValidate(Sender: TField);
    procedure tblServicosAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tblOSAfterInsert(DataSet: TDataSet);
    procedure tblOSAfterScroll(DataSet: TDataSet);
    procedure tblOSBeforeOpen(DataSet: TDataSet);
    procedure qrpOSBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure wwDBNavigator1Button3Click(Sender: TObject);
    procedure tblOSBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure wwDBNavigator1Button4Click(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure tblOSAfterPost(DataSet: TDataSet);
    procedure btnPesquisaClick(Sender: TObject);
    procedure tblOSAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure ConfirmaOS;
    Function abre_tabelas:boolean;
  public
      OS:Boolean;
    { Public declarations }
  end;

var
  frmOS: TfrmOS;
  Status, statusOS: TDataSetState;
  Quantidade, Produto, Ambiente: Integer;
  id_local,Funcionario:Integer;

implementation

uses principal, confirmaos, procuraproduto, pedefuncionario, verficha,
  sel_orcamento, pesq_os, Efuncoes;

{$R *.dfm}

procedure TfrmOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmOS.FormShow(Sender: TObject);
var
x:Integer;
begin
  if not qryOsPesquisa.Active then
  pagOs.ActivePageIndex := 0;

  grdServicos.Visible  := ( not  estacao );
  grdEstacao.Visible   := ( Estacao );
  edtFinal.Date := now;

  if Estacao then frmOS.OS := True;

    if  not abre_tabelas() then
    close;

  if Estacao then
    begin
      edtPgto.Visible                  := (not Estacao);
      edtRecibo.visible                := (not Estacao);
      edtValorMateriais.Visible        := (not Estacao);
      edtValorServicos.Visible         := (not Estacao);
      edtValorTotal.Visible            := (not Estacao);
      edtValorCobradoMateriais.Visible := (not Estacao);
      edtValorCobradoServicos.Visible  := (not Estacao);
      edtValorCobrado.Visible          := (not Estacao);

      Application.CreateForm( TfrmPedeFuncionario, frmPedeFuncionario );
      frmPedeFuncionario.ShowModal;

      Funcionario := frmPedeFuncionario.tblFuncionarios.fieldByName( 'codigo' ).asInteger;
      frmPedeFuncionario.Free;

      tblOs.Insert;

    end;
        edtFuncionario.Enabled := ( not Estacao );

end;

procedure TfrmOS.tblServicosAfterEdit(DataSet: TDataSet);
begin
//  dlgServico.Execute;
end;

procedure TfrmOS.tblOSCalcFields(DataSet: TDataSet);
var
h:TDateTime;
mseg,segundo,hora,minuto:word;
horas,minutos:Integer;

begin

with tblOs do
begin

    h := FieldByName('Saida').asDateTime - FieldByName('Chegada').asDateTime ;

    DecodeTime( h, Hora, Minuto, Segundo, MSeg);

    tblFuncionarios.locate( 'codigo' , fieldbyname( 'funcionario' ).asInteger , [] );


    hora    := hora   * tblFuncionarios.fieldbyname( 'quantidade' ).asInteger;
    minuto  := minuto * tblFuncionarios.fieldbyname( 'quantidade' ).asInteger;

    horas   := hora   * tblFuncionarios.fieldbyname( 'quantidade' ).asInteger;
    minutos := minuto * tblFuncionarios.fieldbyname( 'quantidade' ).asInteger;

    Horas       := Trunc( minuto / 60);
    Minutos     := minuto - ( horas * 60);
    horas       := horas + hora;

    fieldbyname( 'totaldehoras' ).asString := padlzero( inttostr(horas) , 2 ) + ':' + padlzero( inttostr( minutos ) , 2  );

end;
end;

procedure TfrmOS.tblOSBeforePost(DataSet: TDataSet);
begin
  StatusOS := tblOS.State;

//  if tblServicos.state in [dsInsert, dsEdit] then tblServicos.Post;

end;

procedure TfrmOS.tblServicosBeforePost(DataSet: TDataSet);
begin
  Status := tblServicos.state;
  with tblServicos do
    begin

      if fieldbyname( 'Quantidade' ).asInteger = 0 then
         DatabaseError( 'Informe a quantidade ' );

      if fieldbyname( 'Ambiente' ).asinteger = 0 then
         DatabaseError( 'Informe o ambiente' );

      fieldByName('total').ascurrency :=
        fieldByName('preco').ascurrency *
        fieldByName('quantidade').asInteger;
      fieldbyName('OS').asInteger := tblOS.fieldByName('OS').asInteger;
    end;
end;

procedure TfrmOS.tblOSBeforeDelete(DataSet: TDataSet);
begin
  with tblServicos do
    begin
      first;
      while not eof do
        delete;
    end;
end;

procedure TfrmOS.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOS.wwDBNavigator1Button1Click(Sender: TObject);
var
  Os: Integer;
begin
   tblOS.Close;
   tblOS.Open;
end;

procedure TfrmOS.tblServicosBeforeEdit(DataSet: TDataSet);
begin
  if not (tblOS.state in [dsInsert, dsEdit]) then
    DatabaseError('Você não está em modo de alteração ou inlcusão !');
end;

procedure TfrmOS.wwDBNavigator1Button2Click(Sender: TObject);
begin
            if ( not estacao ) then
               if Confirma('Deseja imprimir a Ordem de Serviço ?') then
                  with qrpOS do
                     begin
                        tblServicos.Close;
                        tblServicos.Open;

                        Prepare;
                        qrPrinter.previewModal;
                        qrPrinter := NIL;
                        qrPrinter.Free;
                     end;
end;

procedure TfrmOS.dlgServicoBeforeCreateControl(Form: TwwRecordViewForm;
  curField: TField; var Accept: Boolean);
begin
  if Estacao then
    begin
      if curField.FieldName = 'PRECO' then
        Accept := false;
      if curField.FieldName = 'TOTAL' then
        Accept := false;
    end;
end;

procedure TfrmOS.tblServicosPRODUTOValidate(Sender: TField);
begin
  if tblServicos.State IN [ dsInsert, dsEdit ] then
    tblServicos.fieldByName('preco').asCurrency :=
      tblprodutos.fieldByName('Preco').asCurrency;
end;

procedure TfrmOS.tblServicosAfterPost(DataSet: TDataSet);
begin
  if Status = dsInsert then
    with tblServicos do
      begin
//        tblServicos.Insert;

        quantidade   := fieldByName('Quantidade').asInteger;
        Produto      := fieldByName('Produto').asInteger;
        Ambiente     := fieldByName('Ambiente').asInteger;
        id_Local     := fieldbyname( 'Id_Local' ).asInteger;

      end;
end;

procedure TfrmOS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
campo:Integer;

begin
  if Key=vk_F5 then
  if estacao then
  campo := grdEstacao.GetActiveCol
  else
  campo := grdServicos.GetActiveCol;

  with tblServicos do
  if state = dsInsert then
    begin
      case Campo of
      2:fieldByName('Quantidade').asInteger := quantidade;
      0:fieldByName('Produto').asInteger := Produto;
      1:fieldByName('Produto').asInteger := Produto;
      5:fieldByName('Ambiente').asInteger := Ambiente;
      3:fieldByName('Ambiente').asInteger := Ambiente;
      6:fieldbyname( 'ID_Local' ).asInteger := Id_Local;
    end;
    end;

end;

procedure TfrmOS.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if tblOS.state in [dsInsert, dsEdit] then
   if key = VK_F4 then
   begin
      Application.CreateForm( TfrmProcuraProdutos, frmProcuraProdutos );
      with frmProcuraProdutos do
      begin
         ShowModal;
         if ModalResult = mrOK then
         begin
            tblServicos.Edit;
            tblServicos.fieldByName( 'Produto' ).asString := qryprodutos.fieldByName( 'Barras' ).asString;
         end;
      end;
   end
end;

procedure TfrmOS.tblOSAfterDelete(DataSet: TDataSet);
begin
  trnOS.CommitRetaining;
  showmessage( 'OS excluído com sucesso !' );
  btnPesquisa.Click;
  pagOs.ActivePage := tabPesquisa;

end;

procedure TfrmOS.tblOSAfterInsert(DataSet: TDataSet);
begin
   tblOS.fieldByName( 'Funcionario' ).asInteger := Funcionario;
end;

procedure TfrmOS.tblOSAfterPost(DataSet: TDataSet);
var
os:String;
begin
  os := tblOs.fieldbyname( 'os' ).asString;
  if trnOs.active then
  trnOS.CommitRetaining;
//  abre_tabelas();
end;

procedure TfrmOS.tblOSAfterScroll(DataSet: TDataSet);
begin
   with tblAmbientes do
   begin
      grdServicos.Update;
      tblServicos.close;
      tblServicos.parambyname( 'os' ).asInteger      := tblOs.fieldbyname( 'os' ).asInteger;
      tblServicos.Open;
   end;

end;

procedure TfrmOS.tblOSBeforeOpen(DataSet: TDataSet);
var
os:Integer;

begin
{
     if frmOs.OS then exit;

     application.CreateForm( TfrmPesqOs, frmPesqOs );
     with frmPesqOs do
     begin
          ShowModal;
          tblOs.ParamByName( 'OS' ).asInteger       := qryOs.fieldbyname( 'OS' ).asInteger;
          tblServicos.parambyname( 'os' ).asinteger := qryOs.fieldbyname( 'OS' ).asInteger;
          Free;
     end;
     }
end;

procedure TfrmOS.qrpOSBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   DetailBand1.Height := 0;
   qrGroup2.Height := 0;

end;

function TfrmOS.abre_tabelas: boolean;
begin
     Result := abre([tblFuncionarios,
            tblClientes, tblArquitetos, tblServicos,tblOs,
            tblProdutos,tblAmbientes, tblServicos, tblOS, tblEstoque, tblLocais,
            qryClientesPesquisa, qryArquitetosPesquisa ]);
end;

procedure TfrmOS.btnPesquisaClick(Sender: TObject);
begin
     with qryOsPesquisa do
     begin
        close;
        sql.Clear;
        sql.Add( 'SELECT' );
        sql.Add( 'O.DATA, O.OS, O.VALOR,' );
        sql.Add( 'C.NOME AS NOMEDOCLIENTE,' );
        sql.Add( 'A.NOME AS NOMEDOARQUITETO' );
        sql.Add( 'FROM OS O' );
        sql.Add( 'LEFT JOIN CLIENTES C ON  ( C.CODIGO = O.CLIENTE )' );
        sql.Add( 'LEFT JOIN ARQUITETOS A ON ( A.CODIGO = O.ARQUITETO )' );
        Sql.Add( 'WHERE' );

        if edtOsPesquisa.Value > 0 then
           begin
              sql.Add( 'O.OS = ' + edtOsPesquisa.Text );
           end
        else
            begin
                 sql.Add( 'O.DATA BETWEEN :INICIO AND :FINAL' );
                 parambyname( 'inicio' ).asDateTime         := edtInicio.Date;
                 parambyname( 'final' ).asDateTime          := edtFinal.Date;

                 if edtClientePesquisa.Text <> '' then
                    sql.Add( ' AND O.CLIENTE = ' + qryClientesPesquisa.fieldbyname( 'codigo' ).asString );

                 if edtArquitetoPesquisa.Text <> '' then
                    sql.Add( ' AND O.ARQUITETO = ' + qryArquitetosPesquisa.fieldbyname( 'codigo' ).asString );

            end;

            sql.Add( ' ORDER BY O.DATA DESC' );
            open;
            qryItensPesquisa.Open;
            if RecordCount = 1 then
               pagOs.ActivePage := tabOs;

     end;

end;

procedure TfrmOS.ConfirmaOS;


var
  valorservicos, valormateriais, valor: currency;
  BMP: TBitMap;
  JPG: TJpegImage;

begin

   with tblOS do
   begin
      if fieldbyname( 'Data_Confirmacao' ).asDateTime <> 0 then
      begin
         Erro( Pchar( 'Esta OS já foi encerrada em :' + fieldbyname( 'Data_confirmacao' ).asString  ) );
         exit;
      end;
      Edit;
      fieldbyname( 'Data_confirmacao' ).asDateTime := now;
   end;

  // Mostra a tela de confirmação

  with frmOS.tblServicos do
    begin
      first;
      Valor := 0;
      ValorServicos := 0;
      ValorMateriais := 0;
      while not eof do
        begin
          Valor := Valor + fieldByName('total').ascurrency;
          if tblProdutos.fieldByName('Tipo').asString = '1' then
            ValorMateriais := ValorMateriais + fieldByName('total').ascurrency
          else
            ValorServicos  := ValorServicos + fieldByName('total').ascurrency;
          next;
        end;
    end;

  with frmOS.tblOS do
    begin

      fieldByName('Valor').ascurrency := Valor;
      fieldByName('ValorServicos').ascurrency := ValorServicos;
      fieldbyName('ValorMateriais').asCurrency := ValorMateriais;

      fieldByName('ValorCobrado').asCurrency := Valor;
      fieldByName('ValorCobradoServicos').ascurrency := ValorServicos;
      fieldbyName('ValorCobradoMateriais').asCurrency := ValorMateriais;

    end;

  if not (Estacao) then
    begin
      Application.CreateForm(TfrmConfirmaOS, frmConfirmaOS);
      with frmConfirmaOS do
        begin
          ShowModal;
          lblResponsavel.Caption := edtResponsavel.Text;
          tblServicos.Close;
          tblServicos.open;

          if Confirma('Deseja imprimir a Ordem de Serviço ?') then
             with qrpOS do
               begin
                 Prepare;
                 qrPrinter.previewModal;
                 qrPrinter := NIL;
                 qrPrinter.Free;
              end;
        end;

            frmConfirmaOS.Free;


    end;


   // confirma  a OS
   begin
      // faz baixa do estoque
      with tblServicos do begin
         first;
         while not eof do
         begin
            if fieldByName( 'TipoProduto' ).asString = '1' then
            begin
               tblEstoque.Insert;
               tblEstoque.fieldByName( 'documento' ).asString     := tblOS.fieldByName( 'OS' ).asString;
               tblEstoque.fieldByName( 'produto' ).asInteger      := fieldbyName( 'produto' ).asInteger;
               tblEstoque.fieldByName( 'quantidade' ).asFloat     := fieldByName( 'quantidade' ).asFloat;
               tblEstoque.fieldByName( 'Preco' ).asCurrency       := fieldByName( 'preco' ).ascurrency;
               tblEstoque.fieldByName( 'total' ).ascurrency       := fieldbyname( 'total' ).ascurrency;
               tblEstoque.fieldbyname( 'tipo' ).asstring          := 'S';
               tblEstoque.fieldByName( 'data' ).asdatetime        := tblOS.fieldbyname( 'data' ).asdatetime;
               tblEstoque.fieldbyname( 'ID_Local' ).asInteger     := fieldbyname( 'ID_Local' ).asInteger;
               tblEstoque.post;
            end;
            next;
         end;
      end;
   end;
   tblOS.Post;

end;

procedure TfrmOS.wwDBNavigator1Button3Click(Sender: TObject);
begin
   ConfirmaOS();
end;

procedure TfrmOS.tblOSBeforeEdit(DataSet: TDataSet);
begin
   if tblOS.fieldbyname( 'Data_Confirmacao' ).asDateTime <> 0 then
      if not confirma( 'Esta OS já foi encerrada. Deseja mesmo modificá-la ?' )then abort;

end;

procedure TfrmOS.FormCreate(Sender: TObject);
begin
  Transacao( frmOS, trnOS );
end;

procedure TfrmOS.wwDBNavigator1Button4Click(Sender: TObject);
begin
   // visualiza a ficha do cliente
   Application.CreateForm( TfrmVerficha, frmVerficha );
   frmVerficha.ShowModal;
end;

procedure TfrmOS.edtClienteExit(Sender: TObject);
begin

  if tblOS.state = dsInsert then
  begin

     // abre a tabela com os items do ultimo orcamento do cliente

    application.CreateForm( TfrmSelOrcto, frmSelOrcto );

    with frmSelOrcto do
    begin
      qryOrcto.close;
      qryOrcto.parambyname( 'Cliente' ).asInteger  := tblClientes.fieldbyname( 'codigo' ).asInteger;
      qryOrcto.Open;
      ShowModal;
      close;
      Free;
    end;

  end;

end;

end.

