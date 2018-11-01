unit principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ActnList, ImgList,IniFiles,MidasLib,
  jpeg, ExtCtrls, RzStatus, RzPanel, RzPrgres, db, Wwintl,
  RpSystem, RpDefine, RpRave, RpRenderHTML, RpRenderRTF, RpRenderText,
  QRExport, IBCustomDataSet, IBQuery, RpCon, RpConDS,
  ibTable, ibSQL, QRWebFilt, LMDGlobalHotKey, RpRender, RpRenderPDF,
  RpBase, LMDCustomComponent, LMDIniCtrl, IBDatabase, ComCtrls, ToolWin,
  System.Actions, QRXMLSFilt, QRPDFFilt, dxGDIPlusClasses, frxExportRTF,
  frxExportHTML, frxClass, frxExportPDF, frxDBSet, frxRich, FIBDatabase,
  pFIBDatabase;

  type
  TfrmPrincipal = class(TForm)
    ImageList1: TImageList;
    ActionList1: TActionList;
    actArquitetos: TAction;
    actClientes: TAction;
    actGrupos: TAction;
    actProdutos: TAction;
    actEmpresa: TAction;
    actSai: TAction;
    Bar: TRzStatusBar;
    RzClockStatus: TRzClockStatus;
    RzKeyStatus: TRzKeyStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    gauge: TRzProgressBar;
    wwIntl1: TwwIntl;
    idbInstalLux: TIBDatabase;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    pnlHint: TRzGlyphStatus;
    ToolButton9: TToolButton;
    sctEstoque: TAction;
    actReajuste: TAction;
    actFornecedores: TAction;
    ToolButton2: TToolButton;
    MainMenu1: TMainMenu;
    Aquivos1: TMenuItem;
    N2Clientes1: TMenuItem;
    N2Clientes2: TMenuItem;
    N4Produtos1: TMenuItem;
    N4Produtos2: TMenuItem;
    N5Dadosdaempresa1: TMenuItem;
    N0Sair1: TMenuItem;
    N1: TMenuItem;
    Oramentos1: TMenuItem;
    N5Fornecedores1: TMenuItem;
    N1Manuteno1: TMenuItem;
    Estoque1: TMenuItem;
    Manuteno1: TMenuItem;
    Reajustedepreo1: TMenuItem;
    RecalculaSaldos1: TMenuItem;
    Relatriodesaldos1: TMenuItem;
    FichadeServios1: TMenuItem;
    Digitao1: TMenuItem;
    RelatriodeServios1: TMenuItem;
    Relatriodependncias1: TMenuItem;
    Funcionrios1: TMenuItem;
    Ambientes1: TMenuItem;
    Imprimirficha1: TMenuItem;
    Recalcularfichas1: TMenuItem;
    Listagemdecdigodebarras1: TMenuItem;
    Relatrioporfuncionrios1: TMenuItem;
    N2: TMenuItem;
    Recalcular1: TMenuItem;
    rvInstallux: TRvProject;
    RvSystem1: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderText1: TRvRenderText;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderHTML1: TRvRenderHTML;
    Listagemdamovimentao1: TMenuItem;
    Pendnciasdosclientes1: TMenuItem;
    Recibos1: TMenuItem;
    ManutenoRecibos: TMenuItem;
    Relatriodependncias2: TMenuItem;
    Relatriodepagamentos1: TMenuItem;
    Relatriodependnciasporcliente1: TMenuItem;
    Relatriodeserviosporgrupo1: TMenuItem;
    Etiquetasdeendereamento1: TMenuItem;
    N3: TMenuItem;
    Relatriodeserviospordata1: TMenuItem;
    RelatriodeOSemaberto1: TMenuItem;
    Panel1: TPanel;
    Image2: TImage;
    Panel2: TPanel;
    Image1: TImage;
    rvEmpresa: TRvDataSetConnection;
    dtsEmpresa: TDataSource;
    actObs: TAction;
    Observaes1: TMenuItem;
    sqlEmpresa: TIBTable;
    sqlEmpresaCODIGO: TIntegerField;
    sqlEmpresaNOME: TIBStringField;
    sqlEmpresaENDERECO: TIBStringField;
    sqlEmpresaBAIRRO: TIBStringField;
    sqlEmpresaCIDADE: TIBStringField;
    sqlEmpresaESTADO: TIBStringField;
    sqlEmpresaCEP: TIBStringField;
    sqlEmpresaCNPJ: TIBStringField;
    sqlEmpresaPAIS: TIBStringField;
    sqlEmpresaTELEFONE: TIBStringField;
    sqlEmpresaFAX: TIBStringField;
    sqlEmpresaEMAIL: TIBStringField;
    sqlEmpresaRESPONSAVEL1: TIBStringField;
    sqlEmpresaRESPONSAVEL2: TIBStringField;
    sqlEmpresaFONE_RESP1: TIBStringField;
    sqlEmpresaFONE_RESP2: TIBStringField;
    sqlEmpresaCREA1: TIBStringField;
    sqlEmpresaCREA2: TIBStringField;
    RelatriodependnciasporArquiteto1: TMenuItem;
    Consultaparacompras1: TMenuItem;
    Locaisdeestoque1: TMenuItem;
    RelatriodesaldosporLocal1: TMenuItem;
    sqlEmpresaFANTASIA: TIBStringField;
    Relaodeaniversariantes1: TMenuItem;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxDBDEmpresa: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    QRPDFFilter1: TQRPDFFilter;
    frxRichObject1: TfrxRichObject;
    fbInstallux: TpFIBDatabase;
    procedure actSaiExecute(Sender: TObject);
    procedure actArquitetosExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AppEvents1Hint(Sender: TObject);
    procedure actClientesExecute(Sender: TObject);
    procedure actGruposExecute(Sender: TObject);
    procedure actProdutosExecute(Sender: TObject);
    procedure sctEstoqueExecute(Sender: TObject);
    procedure Relatriodesaldos1Click(Sender: TObject);
    procedure actReajusteExecute(Sender: TObject);
    procedure Recalculasaldos1Click(Sender: TObject);
    procedure actFornecedoresExecute(Sender: TObject);
    procedure Manuteno2Click(Sender: TObject);
    procedure RelatriodeServio1Click(Sender: TObject);
    procedure Digitao1Click(Sender: TObject);
    procedure Relatriodependncias1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Ambientes1Click(Sender: TObject);
    procedure Imprimirficha1Click(Sender: TObject);
    procedure Recalcularfichas1Click(Sender: TObject);
    procedure Listagemdecdigodebarras1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Relatrioporfuncionrios1Click(Sender: TObject);
    procedure Recalcular1Click(Sender: TObject);
    procedure Listagemdamovimentao1Click(Sender: TObject);
    procedure Pendnciasdosclientes1Click(Sender: TObject);
    procedure ManutenoRecibosClick(Sender: TObject);
    procedure Relatriodependnciasporcliente1Click(Sender: TObject);
    procedure Relatriodeserviosporgrupo1Click(Sender: TObject);
    procedure Relatriodependncias2Click(Sender: TObject);
    procedure Relatriodepagamentos1Click(Sender: TObject);
    procedure Etiquetasdeendereamento1Click(Sender: TObject);
    procedure idbInstalLuxBeforeConnect(Sender: TObject);
    procedure Relatriodeserviospordata1Click(Sender: TObject);
    procedure RelatriodeOSemaberto1Click(Sender: TObject);
    procedure actObsExecute(Sender: TObject);
    procedure actEmpresaExecute(Sender: TObject);
    procedure sqlEmpresaAfterPost(DataSet: TDataSet);
    procedure RelatriodependnciasporArquiteto1Click(Sender: TObject);
    procedure LMDGlobalHotKey1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Consultaparacompras1Click(Sender: TObject);
    procedure Locaisdeestoque1Click(Sender: TObject);
    procedure RelatriodesaldosporLocal1Click(Sender: TObject);
    procedure Relaodeaniversariantes1Click(Sender: TObject);
    procedure fbInstalluxBeforeConnect(Database: TFIBDatabase;
      LoginParams: TStrings; var DoConnect: Boolean);
  private

      INI:TIniFile;
    { Private declarations }
        procedure ProcessaMsg( var MSG:TMSG; var Handled:Boolean );
        Function CheckClassList( AClassName: string ): Boolean;


  public
    { Public declarations }
  end;

function Versao(const Filename: string): string;
function Confirma(Mensagem: string): Bool;
procedure Erro(Mensagem: string);
function Abre(Tabelas: array of TDataSet): boolean;
function ExisteForm(Formulario: TForm): boolean;
Procedure ImprimeRecibo( Valor:Currency; Numero:String; Emissao:TDateTime; Vencimento:TDateTime; Ref: String;
                         DadosDoCliente: array of string );
Procedure Transacao( formulario:Tform; transacao:TIBTransaction );
Procedure TrocaBanco;
Function RetornaCaminho:String;

const
  CorGrade = clInfoBK;
  senha_mestra = '1969';

var
  frmPrincipal: TfrmPrincipal;
  Estacao:Boolean=False;
  FClassList:TStringList;
  
implementation

uses arquitetos, clientes, grupos, produtos, orcamentos, aniversarios,
  Estoque, relsaldos, Reajuste, calculasaldos, FORNECEDORES, relservico,
  servicos, relpendencias, funcionarios, ambientes, imprimeOS,
  calculaficha, relBarras, OS, relfunc, RecalcOS, efuncoes, RelMotEstoque,
  conspendcli, recibos, relpendcli, relservgrupos, relRecibosVcto,
  relrecibospgto, etiquetas, relservidodata, uRelOsAberto, observacoes,
  datamodulo, empresa, relPendArq, ConfDB, prodEstoque, u_locais,
  relSaldosLocal, relAniv;

{$R *.DFM}

procedure TfrmPrincipal.actSaiExecute(Sender: TObject);
begin
  if Confirma('Deseja sair do sistema ?') then
    Close;
end;

function Confirma(Mensagem: string): Bool;
begin
  Result := (MessageBox(Application.Handle, PChar(Mensagem), 'Pergunta',
    mb_YesNo + mb_IconQuestion) = idYes)
end;

procedure TfrmPrincipal.actArquitetosExecute(Sender: TObject);
begin
  if not Existeform(frmArquitetos) then
    Application.CreateForm(TfrmArquitetos, frmArquitetos);
  frmArquitetos.Show;
end;

function ExisteForm(Formulario: TForm): boolean;
var
  i: integer;
begin
  Result := False;

  for i := 0 to Screen.FormCount - 1 do
    begin
      if screen.Forms[i] = Formulario then
        begin
          screen.Forms[i].Show;
          Result := True;
          break;
        end
    end;
end;

Procedure Transacao( formulario:Tform; transacao:TIBTransaction );
var
  I: Integer;
begin


  for I := 0 to formulario.componentCount - 1
  do    // Iterate
    begin

    if  (formulario.components[ i ] is TIbSQL )
    then
          ( formulario.components[ i ] as TIBSQL ).Transaction := transacao;


      if ( formulario.components[ i ] is TIbQuery ) or (formulario.components[ i ] is TIbTable ) or
          (formulario.components[ i ] is TIbDataset) then
          with ( formulario.components[ i ] as TIBCustomDataset ) do
          begin

          if active then close;
          Transaction := transacao;
          end;


    end;    // for

end;

function Abre(Tabelas: array of TDataSet): boolean;
var
  x: integer;
  Mensagem: string;
begin
  with frmPrincipal do
    begin
      x := 0;

      gauge.TotalParts := Length(Tabelas);

      for x := 0 to Length(Tabelas) - 1 do
        begin
          try
            gauge.PartsComplete := X + 1;
            gauge.Update;
            Tabelas[X].Open;
          except
            on e: Exception do
              begin
                Mensagem := 'Erro na abertura das tabelas ' + #13 + E.Message;
                Erro(PChar(Mensagem));
                gauge.PartsComplete := 0;
                Result := False;
                Exit;
              end;
          end;
        end;
      gauge.PartsComplete := 0;
      Result := True;
    end;
end;

procedure Erro(Mensagem: string);
begin
  MessageBox(Application.Handle, PChar(Mensagem), 'Erro', mb_OK + mb_IconError)
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

  frmPrincipal.Caption := 'Installux - Administração ' + Versao(application.Exename);

    with idbInstallux do
      if not connected then
        Connected := True;

    with fbInstallux do
      if not connected then
        Connected := True;

   sqlEmpresa.Open;


   // Se é digitação, somente abre tela de digitação
    if Estacao then
    begin
      Application.CreateForm( TfrmOS, frmOS );
      frmOS.ShowModal;
      Application.Terminate;
    end;

    rvInstallux.Open;


  Application.CreateForm(TfrmAniversarios, frmAniversarios);

  with frmAniversarios do
    begin
      qryAniversarios.Open;
      if qryAniversarios.RecordCount > 0 then
        ShowModal;
      Close;
      Free;
    end;
end;

procedure TfrmPrincipal.AppEvents1Hint(Sender: TObject);
begin
//  pnlHint.Caption := GetLongHint(Application.Hint);
end;

procedure TfrmPrincipal.actClientesExecute(Sender: TObject);
begin
  if not existeform(frmClientes) then
    application.CreateForm(TfrmClientes, frmClientes);
  frmClientes.Show;
end;

procedure TfrmPrincipal.actGruposExecute(Sender: TObject);
begin
  if not existeform(frmGrupos) then
    Application.Createform(Tfrmgrupos, frmGrupos);
  frmGrupos.Show;
end;

procedure TfrmPrincipal.actProdutosExecute(Sender: TObject);
begin
  if not existeForm(frmProdutos) then
    Application.CreateForm(TfrmProdutos, frmProdutos);
  frmProdutos.Show;
end;

procedure TfrmPrincipal.sctEstoqueExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmEstoque, frmEstoque);
  frmEstoque.ShowModal;
end;

procedure TfrmPrincipal.Relatriodesaldos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRelSaldos, frmRelSaldos);
  frmRelSaldos.ShowModal;
end;

procedure TfrmPrincipal.actReajusteExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmReajuste, frmReajuste);
  frmReajuste.ShowModal;
end;

procedure TfrmPrincipal.Recalculasaldos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCalculaSaldos, frmCalculaSaldos);
  frmCalculaSaldos.ShowModal;
end;

procedure TfrmPrincipal.actFornecedoresExecute(Sender: TObject);
begin
  if not existeform(frmFornecedores) then
    Application.Createform(TfrmFornecedores, frmFornecedores);
  frmFornecedores.Show;
end;

procedure TfrmPrincipal.Manuteno2Click(Sender: TObject);
begin
   if not ExisteForm(frmOrcamentos) then
    Application.Createform(TfrmOrcamentos, frmOrcamentos);
  frmOrcamentos.Show;
end;

procedure TfrmPrincipal.RelatriodeServio1Click(Sender: TObject);
begin
  application.Createform(TfrmRelServicos, frmRelServicos);
  frmRelServicos.ShowModal;
end;

procedure TfrmPrincipal.Digitao1Click(Sender: TObject);
begin

  //  Application.CreateForm(TfrmServicos, frmServicos);
  //  frmServicos.ShowModal;

  if not ExisteForm(frmOS) then
    Application.CreateForm(TfrmOS, frmOS);

  frmOS.Show;

end;

procedure TfrmPrincipal.Relatriodependncias1Click(Sender: TObject);
begin
  application.createForm(TfrmRelPendencias, frmRelPendencias);
  frmRelPendencias.ShowModal;
end;

procedure TfrmPrincipal.Funcionrios1Click(Sender: TObject);
begin
  if not existeform(frmFuncionarios) then
    Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  frmFuncionarios.Show;
end;

procedure TfrmPrincipal.Ambientes1Click(Sender: TObject);
begin
  if not existeForm(frmAmbientes) then
    application.CreateForm(TfrmAmbientes, frmAmbientes);
  frmAmbientes.Show;
end;

procedure TfrmPrincipal.Imprimirficha1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmImprimeOS, frmImprimeOS);
  frmImprimeOS.ShowModal;
end;

procedure TfrmPrincipal.Recalcularfichas1Click(Sender: TObject);
begin
  application.CreateForm(TfrmCalculaFicha, frmCalculaFicha);
  frmCalculaFicha.ShowModal;
end;

procedure TfrmPrincipal.Listagemdecdigodebarras1Click(Sender: TObject);
begin
  application.Createform(TfrmRelBarras, frmRelBarras);
  frmRelbarras.ShowModal
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
i:Integer;
begin

   FClassList := TStringList.Create;

   with FclassList do begin
    Add( 'TLMDDBSpinEdit' );
    Add('TMaskEdit');
    Add('TEdit');
    Add('TDBEdit');
    Add('TDBCheckBox');
    Add('TTabbedNoteBook');
    Add('TStringGrid');            { Suporte ao tratamento de Grids       }
    Add('TDrawGrid');
    Add('TDBGrid');
    Add( 'TRadioGRoup' );

    Add( 'TDBDateEdit' );
    Add( 'TDateEdit' );
    Add( 'TRxDBComboEdit' );
    Add( 'TComboBox' );
    Add( 'TDBComboBox' );

    Add('TDBCheckDocEdit');  { Componente p/ edição de CGC do Roger       }
    Add('TMRDBExtEdit');     { Edit com busca incremental MR              }
    Add('TDBDateEdit');      { Componente p/ edição de datas do Sebastião }
    Add('TCheckBox' );
    Add( 'TComboEdit' );

    Add('TwwDBGrid');              { Suporte aos componentes do InfoPower }
    Add('TwwDBEdit');              { Já que tem um monte de gente que usa }
    Add('TwwDBComboBox');          { achei por bem deixar todos disponí-  }
    Add('TwwDBSpinEdit');          { veis durante a criação do componen-  }
    Add('tSpinEdit' );
    Add('TwwDBComboDlg');          { te, assim como os outros ....        }
    Add('TwwDBLookupCombo');       {                                      }
    Add('TwwDBLookupComboDlg');    { ideia do Dennis ...                  }
    Add('TwwIncrementalSearch');   { valeu ...                            }
    Add('TwwDBRitchEdit');         { 02/03/1999                           }
    Add('TwwKeyCombo');            {                                      }
    Add('TwwDBDateTimePicker');
    Add('TwwRadioGroup');
    Add( 'TRxSpinEdit' );

    Add('TRxDBLookupList');        { Suporte aos componentes do RxLib     }
    Add('TRxDBGrid');              {                                      }
    Add('TRxDBLookupCombo');       { Paulo H. Trentin                     }
    Add('TRxDBCalcEdit');          { www.rantac.com.br/users/phtrentin    }
    Add('TRxDBComboBox');
    Add('TRxDBComboEdit');
    Add('TDBDateEdit');
    Add('TRxCalcEdit');
    Add('TCurrencyEdit');
    Add('TRxLookupEdit');

   end;


   // Faz verificação se é modo de digitação com o parâmetro -e ( estação )


   for i := 0 to ParamCount do
      begin
         if LowerCase(ParamStr(i)) = '-e' then Estacao := True
      end;

   Application.OnMessage := processaMsg;


   Ini := TIniFile.Create( ExtractFilePath( Application.ExeName ) +'\Installux.ini'  );

end;

procedure TfrmPrincipal.Relatrioporfuncionrios1Click(Sender: TObject);
begin
   Application.CreateForm( TfrmrelFunc, frmRelFunc );
   frmRelFunc.ShowModal;
end;

procedure TfrmPrincipal.Recalcular1Click(Sender: TObject);
begin
   Application.CreateForm( TfrmRecalcOS, frmRecalcOS );
   frmRecalcOS.ShowModal;
end;

procedure TfrmPrincipal.Listagemdamovimentao1Click(Sender: TObject);
begin
   application.Createform( TfrmRelMovEstoque, frmRelmovEstoque );
   frmRelMovEstoque.ShowModal;
end;

procedure TfrmPrincipal.Pendnciasdosclientes1Click(Sender: TObject);
begin
   if not existeform( frmPendCli ) then Application.Createform( TfrmPendcli, frmPendcli );
   frmPendCli.Show;
end;

procedure TfrmPrincipal.ManutenoRecibosClick(Sender: TObject);
begin
   if not existeform( frmRecibos ) then application.createform( tfrmrecibos, frmrecibos );
   frmrecibos.show;
end;

procedure TfrmPrincipal.Relatriodependnciasporcliente1Click(
  Sender: TObject);
begin
   application.createform( tfrmrelpendcli, frmrelpendcli );
   frmrelpendcli.showmodal;
end;

procedure TfrmPrincipal.Relatriodeserviosporgrupo1Click(Sender: TObject);
begin
   application.CreateForm( TfrmRelServGrupos, frmRelServGrupos );
   frmRelServGrupos.ShowModal;
end;

Procedure ImprimeRecibo( Valor:Currency; Numero:String; Emissao:TDateTime; Vencimento:TDateTime; Ref: String;
                         DadosDoCliente: array of string );
var
dia,mes,ano:word;

begin

   with frmPrincipal.rvInstallux do
   begin

      decodedate( now(), ano, mes, dia );

      SetParam( 'Valor'       , FloatToStrF( Valor, ffcurrency, 16 , 2  ) );
      setparam( 'Numero'      , Numero );
      setparam( 'Emissao'     , DateToStr( Emissao ) );
      setparam( 'ano'         , inttostr( ano ) ) ;


      if Vencimento <> 0 then
         setparam( 'Vencimento'  , DateToStr( Vencimento ))
      else
         setparam( 'Vencimento' , '' );


      setparam( 'Ref'         , ref );
      setparam( 'extenso'     , '('+extenso( valor ) +')' );
      setparam( 'nome'        , DadosdoCliente[0] );
      setparam( 'endereco'    , DadosDoCliente[1] );
      setparam( 'Cidade'      , DadosDoCliente[2] );
      setparam( 'CNPJ'        , DadosDocliente[3] );
      setparam( 'inscr'       , DadosDoCliente[4] );
      ExecuteReport( 'rptRecibo' );
   end;

end;

procedure TfrmPrincipal.Relatriodependncias2Click(Sender: TObject);
begin
   Application.CreateForm( TfrmRelRecibosVcto, frmRelRecibosVcto );
   frmRelRecibosVcto.showModal
end;

procedure TfrmPrincipal.Relatriodepagamentos1Click(Sender: TObject);
begin
   Application.CreateForm( TfrmRelRecibosPgto, frmRelRecibosPgto );
   frmRelRecibosPgto.showModal
end;

procedure TfrmPrincipal.Etiquetasdeendereamento1Click(Sender: TObject);
begin
   application.CreateForm( TfrmEtiqueta, frmEtiqueta );
   frmEtiqueta.ShowModal;
end;

procedure TfrmPrincipal.fbInstalluxBeforeConnect(Database: TFIBDatabase;
  LoginParams: TStrings; var DoConnect: Boolean);
var
  caminho, usuario, senha: string;

begin
  with  idbInstalLux do
    begin


      caminho     := frmPrincipal.INI.ReadString('CONNECTION', 'PATH', '');
      usuario     := frmPrincipal.INI.ReadString('CONNECTION', 'USERNAMS', 'SYSDBA');
      senha       := frmPrincipal.INI.ReadString('CONNECTION', 'PASSWORD', 'masterkey');

      Database.DatabaseName := caminho;
      LoginParams.Values['user_name']     := usuario;
      LoginParams.Values['password']      := senha;

      Database.sqlDialect := 3;

    end;

end;

procedure TfrmPrincipal.ProcessaMsg( var MSG:TMSG; var Handled:Boolean );
begin

  if Screen <> nil then
  if Screen.ActiveControl <> nil then
  if ( Msg.message = WM_KeyDown ) and   ( Msg.wParam = VK_Return ) then
    begin
      if CheckClassList( Screen.ActiveControl.ClassName ) then
        Msg.wParam := VK_TAB;
    end;

end;

function TfrmPrincipal.CheckClassList( AClassName: string ): Boolean;
var
  intX : integer;
begin
  result := false;
  for intX := 0 to FClassList.Count-1 do
  begin
    result := AnsiCompareText( AClassName, FClassList.strings[intX] ) = 0;
    if result then
      break;
  end;
end;


procedure TfrmPrincipal.idbInstalLuxBeforeConnect(Sender: TObject);
var
  caminho, usuario, senha: string;

begin

//  Caminho := RetornaCaminho;

  with idbInstalLux do
    begin


      caminho     := frmPrincipal.INI.ReadString('CONNECTION', 'PATH', '');
      usuario     := frmPrincipal.INI.ReadString('CONNECTION', 'USERNAMS', 'SYSDBA');
      senha       := frmPrincipal.INI.ReadString('CONNECTION', 'PASSWORD', 'masterkey');

      DatabaseName                   := caminho;
      Params.Values['user_name']     := usuario;
      Params.Values['password']      := senha;


      sqlDialect := 3;
    end;

end;

procedure TfrmPrincipal.Relatriodeserviospordata1Click(Sender: TObject);
begin
   application.CreateForm( TfrmRelServicosData, frmRelServicosData );
   frmRelServicosData.Show;
end;

procedure TfrmPrincipal.RelatriodeOSemaberto1Click(Sender: TObject);
begin
   application.createForm( TfrmRelOsAberto, frmRelOsAberto );
   frmRelOsAberto.ShowModal;
end;

procedure TfrmPrincipal.actObsExecute(Sender: TObject);
begin
   if not existeform( frmObs ) then Application.CreateForm( TfrmObs, frmObs );
   frmObs.Show;
end;

function Versao(const Filename: string): string;

const
   Key: array[1..9] of string[16] = ('CompanyName',
      'FileDescription', 'FileVersion', 'InternalName',
      'LegalCopyright', 'OriginalFileName', 'ProductName',
      'ProductVersion', 'Comments');
   Key_Br: array[1..9] of string[24] = ('Empresa', 'Descrição',
      'Versão do Arquivo', 'Nome Interno', 'Copyright',
      'Nome Original', 'Produto', 'Versão do Produto',
      'Cometários');

var
   nHandle: THandle;
   BufferSize, Len: cardinal;
   Buffer: pchar;
   LoCharSet, HiCharSet: word;
   Translate, Return: Pointer;
   StrfileInfo: string;
   i: byte;
   Informacoes: TStringList;

begin
{
   Result      := '';
   BufferSize  := GetFileVersionInfoSize(pchar(FileName), nHandle);
   Informacoes := TStringList.Create;
   if BufferSize <> 0 then
   begin
      GetMem(Buffer, BufferSize + 1);
      if GetFileVersionInfo(pchar(FileName), 0, BufferSize, Buffer) then
      begin
         if VerQueryValue(Buffer, '\VarFileInfo\Translation', Translate, Len) then
         begin
            LoCharSet := LoWord(longint(Translate^));
            HiCharSet := HiWord(longint(Translate^));
            for i := 1 to 9 do
            begin
               StrFileInfo := Format('\StringFileInfo\0%x0%x\%s',
                  [LoCharSet, HiCharSet, Key[i]]);
               if VerQueryValue(Buffer, pchar(StrFileInfo), Return, Len) then
                  Informacoes.Add(pchar(Return));
          //             Informacoes.Add(Concat(Key_Br[i],':',Pchar(Return)));
            end;
         end;
      end;
      FreeMem(Buffer);
      Result := Informacoes.Strings[2];

   end
   else
   }
      Result := 'Versão 2';
end;


procedure TfrmPrincipal.actEmpresaExecute(Sender: TObject);
begin
   application.Createform( TfrmEmpresa, frmEmpresa );
   frmEmpresa.ShowModal;
end;

procedure TfrmPrincipal.sqlEmpresaAfterPost(DataSet: TDataSet);
begin
   sqlEmpresa.Transaction.CommitRetaining;
end;

procedure TfrmPrincipal.RelatriodependnciasporArquiteto1Click(
  Sender: TObject);
begin
  application.CreateForm( TfrmPendArq, frmPendArq );
  frmPendArq.ShowModal;
end;

procedure TfrmPrincipal.LMDGlobalHotKey1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   TrocaBanco;
end;

Procedure TrocaBanco;
begin
   Application.Createform( TfrmConfDB, frmConfDB );

   with frmConfDB do
   begin
    edtServidor.Text  := RetornaCaminho;
    showmodal;

    if ModalResult = mrOK then
    begin
        frmPrincipal.INI.WriteString('CONNECTION', 'PATH', edtServidor.Text);
        frmPrincipal.INI.WriteString('CONNECTION', 'USERNAME', edtUsuario.Text);
        frmPrincipal.INI.WriteString('CONNECTION', 'PASSWORD', edtSenha.Text);

        Erro( 'O Sistema será finalizado para troca de parâmetros !'  );
        Application.Terminate;
    end;


   end;


end;

Function RetornaCaminho:String;
begin

  with frmPrincipal.Ini do
    begin
      if not FileExists(Filename) then
        WriteString('CONNECTION', 'PATH', 'local');

      result := ReadString('CONNECTION', 'PATH', '');
    end;


end;

procedure TfrmPrincipal.Consultaparacompras1Click(Sender: TObject);
begin
   application.createForm( TfrmprodEstoque, frmProdEstoque );
   frmProdEstoque.ShowModal;
end;

procedure TfrmPrincipal.Locaisdeestoque1Click(Sender: TObject);
begin
   if not existeForm( frmLocais ) then Application.CreateForm( TfrmLocais, frmLocais );
   frmLocais.Show;
end;

procedure TfrmPrincipal.RelatriodesaldosporLocal1Click(Sender: TObject);
begin
   application.Createform( TfrmRelSaldosLocal, frmRelSaldosLocal );
   frmRelSaldosLocal.showModal;
end;

procedure TfrmPrincipal.Relaodeaniversariantes1Click(Sender: TObject);
begin
   application.Createform( TfrmRelAniv, frmRelAniv );
   frmRelAniv.ShowModal;
end;

end.

