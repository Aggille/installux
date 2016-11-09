unit principal1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ActnList, ImgList,
  jpeg, ExtCtrls, RzStatus, RzPanel, RzPrgres, db, Wwintl, CSEZFORM,
  IBDatabase, ComCtrls, ToolWin, RzBHints, AppEvent, AppEvnts, StdCtrls,
  LMDCustomComponent, LMDIniCtrl, Enter;
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
    AppEvents1: TAppEvents;
    pnlHint: TRzGlyphStatus;
    ToolButton9: TToolButton;
    Image2: TImage;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
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
    ini: TLMDIniCtrl;
    Funcionrios1: TMenuItem;
    Ambientes1: TMenuItem;
    Imprimirficha1: TMenuItem;
    Recalcularfichas1: TMenuItem;
    Listagemdecdigodebarras1: TMenuItem;
    MREnter1: TMREnter;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Confirma(Mensagem: string): Bool;
procedure Erro(Mensagem: string);
function Abre(Tabelas: array of TDataSet): boolean;
function ExisteForm(Formulario: TForm): boolean;

const
  CorGrade = clInfoBK;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses arquitetos, clientes, grupos, produtos, orcamentos, aniversarios,
  Estoque, relsaldos, Reajuste, calculasaldos, FORNECEDORES, relservico,
  servicos, relpendencias, funcionarios, ambientes, imprimeOS,
  calculaficha, relBarras;

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
var
  caminho: string;
begin
  with Ini do
  begin
    if not FileExists(GetIniName) then
      WriteString('CONNECTION', 'PATH', 'local');

    Caminho := ReadString('CONNECTION', 'PATH', '');
  end;

  with idbInstalLux do
  begin
    DatabaseName := Caminho;
    if not connected then
      Connected := True;
  end;

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
  pnlHint.Caption := GetLongHint(Application.Hint);
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
  Application.CreateForm(TfrmServicos, frmServicos);
  frmServicos.ShowModal;
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
     application.Createform( TfrmRelBarras, frmRelBarras );
     frmRelbarras.ShowModal
end;

end.

