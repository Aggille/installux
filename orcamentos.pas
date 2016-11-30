unit orcamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBDatabase, wwSpeedButton, wwDBNavigator, ExtCtrls,Variants,
  wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, RzPanel, RzSplit, StdCtrls,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDropDownEdit,vcl.imaging.jpeg,
  cxCurrencyEdit, cxCheckGroup, ComCtrls, Spin, IBQuery, ExtDlgs, DBCtrls,
  wwdbedit, Wwdotdot, Wwdbcomb, rxToolEdit, rxCurrEdit, RXDBCtrl, Mask, DBSBtn,
  Buttons, wwdblook, wwdbdatetimepicker, Vcl.DBGrids;

type
  TfrmOrcamentos = class(TForm)
    trnOrcamentos: TIBTransaction;
    tblOrcamentos: TIBDataSet;
    tblItems: TIBDataSet;
    tblClientes: TIBDataSet;
    tblArquitetos: TIBDataSet;
    tblProdutos: TIBDataSet;
    dtsOrcamentos: TDataSource;
    dtsItems: TDataSource;
    dtsClientes: TDataSource;
    dtsArquitetos: TDataSource;
    dtsProdutos: TDataSource;
    tblOrcamentosNUMERO: TIntegerField;
    tblOrcamentosEMISSAO: TDateField;
    tblOrcamentosCLIENTE: TIntegerField;
    tblOrcamentosARQUITETO: TIntegerField;
    tblOrcamentosDATA_ENTREGA: TDateField;
    tblOrcamentosTOTALDEPECAS: TIBBCDField;
    tblOrcamentosTOTALDEMAODEOBRA: TIBBCDField;
    tblOrcamentosTOTALDOORCAMENTO: TIBBCDField;
    tblItemsITEM: TIntegerField;
    tblItemsQUANTIDADE: TIBBCDField;
    tblItemsUNIDADE: TIBStringField;
    tblItemsPRECOUNITARIO: TIBBCDField;
    tblItemsPRECOTOTAL: TIBBCDField;
    tblItemsTIPO: TIBStringField;
    tblItemsNOMEDOPRODUTO: TStringField;
    tblItemsORCAMENTO: TIntegerField;
    tblOrcamentosDIAS1: TSmallintField;
    tblOrcamentosDIAS2: TSmallintField;
    tblOrcamentosDIAS3: TSmallintField;
    tblOrcamentosDIAS4: TSmallintField;
    tblOrcamentosDIAS5: TSmallintField;
    tblOrcamentosVALOR1: TIBBCDField;
    tblOrcamentosVALOR2: TIBBCDField;
    tblOrcamentosVALOR3: TIBBCDField;
    tblOrcamentosVALOR4: TIBBCDField;
    tblOrcamentosVALOR5: TIBBCDField;
    tblOrcamentosVALOR_ENTRADA: TIBBCDField;
    tblOrcamentosDATA1: TDateField;
    tblOrcamentosDATA2: TDateField;
    tblOrcamentosDATA3: TDateField;
    tblOrcamentosDATA4: TDateField;
    tblOrcamentosDATA5: TDateField;
    tblOrcamentosDATA_ENTRADA: TDateField;
    tblClientesCODIGO: TIntegerField;
    tblClientesENDERECO: TIBStringField;
    n: TIBStringField;
    tblClientesBAIRRO: TIBStringField;
    tblClientesCEP: TIBStringField;
    tblClientesESTADO: TIBStringField;
    tblClientesPAIS: TIBStringField;
    tblClientesCNPJ_CPF: TIBStringField;
    tblClientesPESSOA: TIBStringField;
    tblClientesARQUITETO: TIntegerField;
    tblClientesFAX: TIBStringField;
    tblClientesEMAIL: TIBStringField;
    tblClientesOBSERVACOES: TMemoField;
    tblClientesINSCRICAOESTADUAL: TIBStringField;
    tblOrcamentosVALORCOBRADOPECAS: TIBBCDField;
    tblOrcamentosVALORCOBRADOMAODEOBRA: TIBBCDField;
    tblOrcamentosVALORCOBRADO: TCurrencyField;
    tblOrcamentosEFETIVACAO: TDateField;
    dlgFigura: TSavePictureDialog;
    tblOrcamentosOBS: TBlobField;
    tblOrcamentosDIAS_ENTRADA: TIntegerField;
    tblProdutosNOME: TIBStringField;
    tblProdutosGRUPO: TIntegerField;
    tblProdutosUNIDADE: TIBStringField;
    tblProdutosPRECO: TIBBCDField;
    tblProdutosICMS: TIBBCDField;
    tblProdutosIPI: TIBBCDField;
    tblProdutosCUSTO: TIBBCDField;
    tblProdutosESTOQUEMINIMO: TIBBCDField;
    tblProdutosTIPO: TIBStringField;
    tblProdutosSALDO: TFloatField;
    tblProdutosPRATELEIRA: TIBStringField;
    tblItemsFUNCIONARIO: TIBStringField;
    tblItemsDATASERVICO: TDateField;
    tblItemsHORACHEGADA: TTimeField;
    tblItemsHORASAIDA: TTimeField;
    tblItemsDATAPAGAMENTO: TDateField;
    tblItemsLOCAL: TIntegerField;
    dtsAmbientes: TDataSource;
    tblAmbientes: TIBDataSet;
    tblItemsPRODUTO: TIntegerField;
    tblProdutosCODIGO: TIntegerField;
    tblProdutosBARRAS: TIBStringField;
    tblObs: TIBDataSet;
    dsObs: TDataSource;
    tblClientesNOME: TIBStringField;
    tblClientesTELEFONE: TIBStringField;
    tblClientesANIVERSARIO: TDateField;
    tblClientesCELULAR: TIBStringField;
    tblClientesFANTASIA: TIBStringField;
    tblProdutosULT_ALT_PRECO: TDateField;
    tblProdutosPRECO_ANT: TIBBCDField;
    tblProdutosINATIVO: TIBStringField;
    tblAmbientesCODIGO: TIntegerField;
    tblAmbientesDESCRICAO: TIBStringField;
    tblItemsLOCAL1: TIBStringField;
    tblItemsNOMEDOAMBIENTE: TStringField;
    pagOrcamento: TPageControl;
    tabPesquisa: TTabSheet;
    tabOrcamento: TTabSheet;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    btnNovo: TDBSpeedButton;
    btnExcluir: TDBSpeedButton;
    edtNumero: TDBEdit;
    edtEmissao: TwwDBDateTimePicker;
    edtCliente: TwwDBLookupCombo;
    edtEntrega: TwwDBDateTimePicker;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    edtMaoDEObra: TRxDBCalcEdit;
    edtTotal: TRxDBCalcEdit;
    edtValorCobrado: TRxDBCalcEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    grdItems: TwwDBGrid;
    edtTipo: TwwDBComboBox;
    edtArquiteto: TwwDBLookupCombo;
    edtObs: TDBMemo;
    BitBtn1: TBitBtn;
    edtAmbiente: TwwDBLookupCombo;
    BitBtn2: TBitBtn;
    edtNomedoProduto: TwwDBLookupCombo;
    edtObservacoes: TwwDBLookupCombo;
    Panel1: TPanel;
    Label11: TLabel;
    edtNumeroPesquisa: TSpinEdit;
    Label12: TLabel;
    edtEmissaoInicial: TwwDBDateTimePicker;
    Label14: TLabel;
    edtEmissaoFinal: TwwDBDateTimePicker;
    Label15: TLabel;
    edtEntregaInicial: TwwDBDateTimePicker;
    Label16: TLabel;
    edtEntregaFinal: TwwDBDateTimePicker;
    Label17: TLabel;
    Label19: TLabel;
    edtArquitetoPesquisa: TwwDBLookupCombo;
    btnPesquisa: TBitBtn;
    qryClientesPesquisa: TIBDataSet;
    dtsClientesPesquisa: TDataSource;
    qryArquitetosPesquisa: TIBDataSet;
    dtsArquitetosPesquisa: TDataSource;
    qryOrcamentosPesquisa: TIBQuery;
    qryOrcamentosPesquisaNUMERO: TIntegerField;
    qryOrcamentosPesquisaCLIENTE: TIntegerField;
    qryOrcamentosPesquisaARQUITETO: TIntegerField;
    qryOrcamentosPesquisaDATA_ENTREGA: TDateField;
    qryOrcamentosPesquisaEMISSAO: TDateField;
    qryOrcamentosPesquisaNOMEDOCLIENTE: TIBStringField;
    qryOrcamentosPesquisaNOMEDOARQUITETO: TIBStringField;
    dtsOrcamentosPesquisa: TDataSource;
    wwDBGrid2: TwwDBGrid;
    qryItensPesquisa: TIBDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IBBCDField1: TIBBCDField;
    IBStringField1: TIBStringField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBStringField2: TIBStringField;
    IntegerField2: TIntegerField;
    IBStringField3: TIBStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    TimeField2: TTimeField;
    DateField2: TDateField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField4: TIBStringField;
    dtsItensPesquisa: TDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Button1: TwwNavButton;
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    qryOrcamentosPesquisaEFETIVACAO: TDateField;
    qryClientesPesquisaCODIGO: TIntegerField;
    qryClientesPesquisaNOME: TIBStringField;
    qryClientesPesquisaFANTASIA: TIBStringField;
    qryArquitetosPesquisaCODIGO: TIntegerField;
    qryArquitetosPesquisaNOME: TIBStringField;
    qryArquitetosPesquisaCREA: TIBStringField;
    edtClientePesquisa: TwwDBLookupCombo;
    RxDBCalcEdit3: TRxDBCalcEdit;
    qryItensPesquisaNOMEDOAMBIENTE: TIBStringField;
    RxDBCalcEdit2: TRxDBCalcEdit;
    qryOrcamentosPesquisaVALORCOBRADOPECAS: TIBBCDField;
    qryOrcamentosPesquisaVALORCOBRADOMAODEOBRA: TIBBCDField;
    qryOrcamentosPesquisaTOTAL: TIBBCDField;
    tblAmbCli: TIBDataSet;
    dtsAmbClientes: TDataSource;
    fldIBDataSet1ID: TIntegerField;
    tblAmbCliCLIENTE: TSmallintField;
    tblAmbCliAMBIENTE: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure tblItemsBeforeEdit(DataSet: TDataSet);
    procedure tblOrcamentosBeforePost(DataSet: TDataSet);
    procedure tblItemsBeforePost(DataSet: TDataSet);
    procedure tblOrcamentosBeforeOpen(DataSet: TDataSet);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure tblOrcamentosAfterPost(DataSet: TDataSet);
    procedure tblOrcamentosCalcFields(DataSet: TDataSet);
    procedure edtClienteExit(Sender: TObject);
    procedure edtArquitetoExit(Sender: TObject);
    procedure wwDBNavigator1Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtProdutoNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edtAmbienteNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure grdItemsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tblItemsAfterPost(DataSet: TDataSet);
    procedure tblItemsPRODUTOValidate(Sender: TField);
    procedure tblOrcamentosAfterDelete(DataSet: TDataSet);
    procedure edtObservacoesCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure btnPesquisaClick(Sender: TObject);
    procedure tabOrcamentoShow(Sender: TObject);
    procedure tblOrcamentosAfterInsert(DataSet: TDataSet);
    procedure tblOrcamentosCLIENTEValidate(Sender: TField);
  private
    { Private declarations }
    function abre_tabelas :boolean;
    function abre_pesquisa:boolean;
    procedure gravaTransacao;
  public
    { Public declarations }
  end;

var
  frmOrcamentos: TfrmOrcamentos;
  Status, statusOS: TDataSetState;
  Quantidade, Ambiente, Produto: Integer;
  Funcionario:Integer;

implementation

uses principal, ValorCobrado, filtraorcamento, qrpOrcamento, imprimeOrco,
  efetiva, produtos, procuraproduto;

{$R *.DFM}

procedure TfrmOrcamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmOrcamentos.FormShow(Sender: TObject);
begin
  pagOrcamento.ActivePage := tabPesquisa;
  Transacao( frmOrcamentos, trnOrcamentos );
  trnOrcamentos.Active := True;
  if not abre_tabelas() then close;
end;

procedure TfrmOrcamentos.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamentos.tblItemsBeforeEdit(DataSet: TDataSet);
begin
  if not (tblOrcamentos.state in [dsEdit, dsInsert]) then
  begin
    erro('Você não está em modo de inclusão ou alteração');
    Abort;
  end;
end;

procedure TfrmOrcamentos.tblOrcamentosBeforePost(DataSet: TDataSet);
var
  MaoDEObra, Pecas, Total, CobradoMaoDeObra, CobradoPecas, Cobrado: Currency;
begin

  MaoDEObra := 0;
  Pecas := 0;
  Total := 0;
  Cobrado := 0;
  CobradoMaoDeObra := 0;
  CobradoPecas := 0;
  // Calcula os Valores totais do orçamento;

  with tblItems do
  begin
    first;
    while not eof do
    begin

      if not fieldByName('DataPagamento').isnull then
      begin
        next;
        continue;
      end;

      if fieldByName('Tipo').asString = '1' then
      begin
        Pecas := Pecas + fieldByname('PrecoTotal').ascurrency;
        cobradoPecas := Cobradopecas + fieldByname('PrecoTotal').ascurrency;
      end
      else
      begin
        MaoDeObra := MaoDeObra + fieldByName('PrecoTotal').asCurrency;
        CobradoMaoDeObra := CobradoMaoDeObra +
          fieldByName('PrecoTotal').asCurrency;
      end;


      // Verifica se o ambiente existe para esse cliente..
      // se não existe, grava..

      if not ( tblAmbCli.Locate( 'ambiente' , varArrayOf( [tblItems.fieldbyname( 'local' ).asInteger] ), [] ) ) then
        begin
          tblAmbCli.Insert;
          tblAmbCli.fieldbyname( 'cliente' ).asInteger := tblOrcamentos.fieldbyname( 'cliente' ).asInteger ;
          tblAmbCli.fieldbyname( 'ambiente' ).asInteger := tblItems.fieldbyname( 'local' ).asInteger ;
          tblAmbCli.Post;
        end;

      next;
    end;
    Total := MaoDeObra + Pecas;
    Cobrado := CobradoMaoDeObra + CobradoPecas;

  end;

  with tblOrcamentos do
  begin

    fieldByName('TotalDePecas').ascurrency := Pecas;
    fieldByName('TotalDeMaoDeObra').asCurrency := MaodeObra;
    fieldByName('TotalDoOrcamento').asCurrency := Total;

    if state = dsEdit then
      Cobrado := fieldByName('ValorCobrado').ascurrency;

    Application.CreateForm(TfrmValor, frmValor);
    fieldByName('ValorCobradoPecas').asCurrency := CobradoPecas;
    fieldByName('ValorCobradoMaoDeObra').ascurrency := CobradoMaoDeObra;

    frmValor.showModal;
    frmValor.Free;

  end;

end;

procedure TfrmOrcamentos.tblItemsBeforePost(DataSet: TDataSet);
begin
  Status := tblItems.state;
  with tblItems do
  begin
    fieldByName('PrecoTotal').ascurrency :=
      fieldByName('PrecoUnitario').ascurrency *
      fieldByName('Quantidade').asInteger;

    fieldByName('Orcamento').asinteger :=
      tblOrcamentos.fieldByName('Numero').asInteger;

  end;

end;

procedure TfrmOrcamentos.tblOrcamentosBeforeOpen(DataSet: TDataSet);
begin
{  Application.CreateForm(TfrmFiltraOrcamentos, frmFiltraOrcamentos);
  with frmFiltraOrcamentos do
  begin
    ShowModal;
    tblOrcamentos.parambyname( 'numero' ).asInteger          := qryOrcamento.fieldbyname( 'numero' ).asInteger;
    free;
  end;
 }
end;

procedure TfrmOrcamentos.wwDBNavigator1Button1Click(Sender: TObject);
var
  BMP: TBitMap;
  JPG: TJpegImage;

begin

  if tblItems.State in [dsInsert, dsEdit ] then tblitems.Post; 
  Application.Createform(TfrmImporc, frmImporc);
  frmImporc.ShowModal;
  Application.CreateForm(TqrpOrcto, qrpOrcto);

  with qrpOrcto do
  begin
    tblEmpresa.Open;
    qrResponsavel.Caption := frmImporc.edtResponsavel.Text;

    tblItems.First;
    qryItems.Close;
    qryItems.CreateDataSet;
    qryItems.indexFieldNames := 'NOMEDOAMBIENTE; LOCAL';

    while not tblItems.eof do
    begin

    qryItems.Insert;
    qryItems.FieldByName( 'quantidade' ).asFloat      := tblItems.fieldbyname( 'quantidade' ).asFloat;
    qryItems.fieldbyname( 'nome' ).asString           := tblItems.fieldbyname( 'nomedoproduto' ).asString;
    qryItems.fieldbyname( 'tipo' ).asString           := tblItems.fieldbyname( 'tipo' ).asString;
    qryItems.fieldbyname( 'nomedoambiente' ).asString := tblItems.fieldbyname( 'nomedoambiente' ).asString;
    qryItems.fieldbyname( 'produto' ).asString        := tblItems.fieldbyname( 'produto' ).asString;
    qryItems.fieldbyname( 'local' ).asInteger         := tblItems.fieldbyname( 'local' ).asInteger;
    qryItems.Post;
    tblItems.Next;
    end;

     PreviewModal;
     qrPrinter := NIL;
     qrPrinter.Free;

    Free;
    frmImporc.Free;
  end;
end;

procedure TfrmOrcamentos.tblOrcamentosAfterPost(DataSet: TDataSet);
var
orcamento:Integer;
begin
//  trnOrcamentos.CommitRetaining;;
  if Confirma('Deseja imprimir este orçamento ?') then   wwDBNavigator1Button1Click(nil);
  gravaTransacao;

end;

procedure TfrmOrcamentos.tblOrcamentosCalcFields(DataSet: TDataSet);
begin
  with tblOrcamentos do
    fieldByName('ValorCobrado').ascurrency :=
      fieldByName('ValorCobradoPecas').asCurrency +
      fieldByName('ValorCobradoMaoDeObra').ascurrency;
end;

procedure TfrmOrcamentos.tblOrcamentosCLIENTEValidate(Sender: TField);
begin

  with tblAmbCli do
  begin
      Close;
      Parambyname( 'cliente' ).asInteger := tblOrcamentos.fieldbyname( 'cliente' ).asInteger;
      Open;
      Last;
      first;
  end;
end;

procedure TfrmOrcamentos.edtClienteExit(Sender: TObject);
begin
  if tblOrcamentos.state in [dsInsert] then
    tblOrcamentos.FieldByName('Arquiteto').asInteger :=
      tblClientes.fieldByName('Arquiteto').asInteger;
end;


procedure TfrmOrcamentos.edtArquitetoExit(Sender: TObject);
begin
  if edtArquiteto.Text = '' then
    tblOrcamentos.fieldByName('Arquiteto').asInteger := 0;
end;

procedure TfrmOrcamentos.wwDBNavigator1Button2Click(Sender: TObject);
begin

  if tblOrcamentos.fieldByName('Efetivacao').asDateTime > 0 then
  begin
    Erro('Este orçamento já foi efetivado');
    exit;
  end;

  Application.CreateForm(TfrmEfetiva, frmEfetiva);
  frmEfetiva.ShowModal;
  tblOrcamentos.Refresh;
end;

function TfrmOrcamentos.abre_pesquisa: boolean;
begin

with trnOrcamentos do
begin
   if not inTransaction then StartTransaction;
end;

with qryOrcamentosPesquisa do
     begin
        close;
        parambyname( 'einicial' ).asDateTime        := edtEmissaoInicial.Date;
        parambyname( 'efinal' ).asDateTime          := edtEmissaoFinal.Date;
        parambyname( 'eninicial').asDateTime        := edtEntregaInicial.Date;
        parambyname( 'enFinal' ).asDateTime         := edtEntregaFinal.Date;

        if edtClientePesquisa.Text = '' then
           begin
              parambyname( 'cinicial' ).asInteger   := 0;
              parambyname( 'cfinal' ).asInteger     := 99999;
           end
        else
            begin
               parambyname( 'cinicial' ).asInteger  := qryClientesPesquisa.fieldbyname( 'codigo' ).asInteger;
               parambyname( 'cfinal' ).asInteger    := qryClientesPesquisa.fieldbyname( 'codigo' ).asInteger;
            end;

        if edtArquitetoPesquisa.Text = '' then
           begin
              parambyname( 'ainicial' ).asInteger   := 0;
              parambyname( 'afinal' ).asInteger     := 99999;
           end
        else
            begin
               parambyname( 'ainicial' ).asInteger   := qryArquitetosPesquisa.fieldbyname( 'codigo' ).asInteger;
               parambyname( 'afinal' ).asInteger     := qryArquitetosPesquisa.fieldbyname( 'codigo' ).asInteger;
            end;

        if edtNumeroPesquisa.Value = 0 then
           begin
              parambyname( 'ninicial' ).asInteger    := 0;
              parambyname( 'nfinal' ).asInteger      := 999999;
           end
        else
            begin
               parambyname( 'ninicial' ).asInteger   := edtNumeroPesquisa.Value;
               parambyname( 'nfinal' ).asInteger     := edtNumeroPesquisa.Value;
            end;

        open;
        qryItensPesquisa.Open;

        //btnOk.Click;

     end;


end;

function TfrmOrcamentos.abre_tabelas:boolean;
begin
//  tblOrcamentos.close;
//  tblItems.Close;
//  tblOrcamentos.parambyname( 'numero' ).asInteger  := orcamento;
  result := abre([tblOrcamentos, tblItems, tblClientes, tblArquitetos, tblProdutos,
                  tblAmbientes, tblObs, qryClientesPesquisa, tblAmbCli,
                  qryArquitetosPesquisa]) ;
end;

procedure TfrmOrcamentos.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmProdutos, frmProdutos);

  with frmProdutos do
  begin
    tblGrupos.close;
    tblProdutos.close;
    dtsProdutos.DataSet := frmOrcamentos.tblprodutos;
    edtNome.LookupTable := frmOrcamentos.tblProdutos;
    tblGrupos.open;
    tblProdutos.Open;
    ShowModal;
  end;

  tblProdutos.Refresh;

end;

procedure TfrmOrcamentos.edtProdutoNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Erro( 'Produto não cadastrado !' );
   edtNomeDoProduto.Setfocus;
   Accept := False;
end;

procedure TfrmOrcamentos.SpeedButton1Click(Sender: TObject);
begin
   tblOrcamentos.Cancel;
end;

procedure TfrmOrcamentos.BitBtn2Click(Sender: TObject);
begin
   with tblOrcamentos do
   begin

      if State in [dsInsert, dsEdit] then
         if Confirma( 'Confirma a gravação deste Orcamento ?' ) then Post else Cancel;
   end;

end;

procedure TfrmOrcamentos.btnPesquisaClick(Sender: TObject);
begin
     abre_pesquisa();
end;

procedure TfrmOrcamentos.edtAmbienteNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   with tblAmbientes do
   begin
      insert;
      fieldByName( 'Descricao' ).asstring   := newValue;
      Post;
      tblItems.Edit;
      tblItems.fieldByName( 'Local' ).asInteger  := fieldByName( 'codigo' ).asInteger;
      tblItems.Post;
   end;

end;

procedure TfrmOrcamentos.gravaTransacao;
begin
     trnOrcamentos.CommitRetaining;
     pagOrcamento.ActivePageIndex := 0;
//     trnOrcamentos.Active := True;
//     abre_Tabelas();
//     abre_pesquisa();
end;

procedure TfrmOrcamentos.grdItemsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // F4 para procurar produtos

   if tblOrcamentos.state in [dsInsert, dsEdit] then
   if key = VK_F4 then
   begin
      Application.CreateForm( TfrmProcuraProdutos, frmProcuraProdutos );
      with frmProcuraProdutos do
      begin
         ShowModal;
         if ModalResult = mrOK then
         begin
            tblItems.Edit;
            tblItems.fieldByName( 'Produto' ).asString := qryprodutos.fieldByName( 'Barras' ).asString;
         end;
      end;
   end;

   // F5 repete o item anterior

 if Key=vk_F5 then
  with tblItems do
  if state = dsInsert then
    begin
      case grdItems.GetActiveCol of
      0:fieldByName('Produto').asInteger := Produto;
      5:fieldByName('Local').asInteger := Ambiente;
    end;
    end;
end;

procedure TfrmOrcamentos.tabOrcamentoShow(Sender: TObject);
begin
     grdItems.Refresh;
end;

procedure TfrmOrcamentos.tblItemsAfterPost(DataSet: TDataSet);
begin
  if Status = dsInsert then
    with tblItems do
      begin
        quantidade := fieldByName('Quantidade').asInteger;
        Produto := fieldByName('Produto').asInteger;
        Ambiente := fieldByName('Local').asInteger;
      end;

      tblItems.Refresh;

end;

procedure TfrmOrcamentos.tblItemsPRODUTOValidate(Sender: TField);
begin
  if (tblItems.state in [dsInsert, dsEdit]) then
  begin

    with tblItems do
    begin
      fieldbyName('Unidade').asString :=
        tblprodutos.fieldByName('Unidade').asString;
      fieldByName('PrecoUnitario').asCurrency :=
        tblProdutos.fieldByName('Preco').asCurrency;
      fieldByName('Tipo').asString := tblProdutos.fieldByName('Tipo').asString;
    end;

  end;


end;

procedure TfrmOrcamentos.tblOrcamentosAfterDelete(DataSet: TDataSet);
begin
//  trnOrcamentos.CommitRetaining;
  showmessage( 'Orçamento excluído com sucesso !' );
  btnPesquisa.Click;
  pagOrcamento.ActivePage := tabPesquisa;
  gravaTransacao;

end;

procedure TfrmOrcamentos.tblOrcamentosAfterInsert(DataSet: TDataSet);
begin
  Dataset.fieldbyname( 'data_entrega' ).asDateTime := now;
end;

procedure TfrmOrcamentos.edtObservacoesCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin

   // coloca a observação no MEMO

   if not ( tblorcamentos.state in [dsinsert, dsedit] ) then exit;

   edtobs.Lines.Add( tblObs.fieldbyname( 'obs' ).asString );
end;

end.

