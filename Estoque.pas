unit Estoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBCustomDataSet, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, Mask,
  wwdbedit, Wwdotdot, Wwdbcomb, wwDialog, wwrcdvw, Variants,
  LMDCustomComponent, LMDContainerComponent, LMDBaseDialog, LMDInputDlg,
  ElComponent, ElInputDlg;

type
  TfrmEstoque = class(TForm)
    tblEstoque: TIBDataSet;
    tblProdutos: TIBDataSet;
    dtsEstoque: TDataSource;
    dtsProdutos: TDataSource;
    trnEstoque: TIBTransaction;
    grdEstoque: TwwDBGrid;
    tblEstoqueESTOQUE: TIntegerField;
    tblEstoqueTIPODOCUMENTO: TIBStringField;
    tblEstoqueTIPO: TIBStringField;
    tblEstoquePRECO: TIBBCDField;
    tblEstoqueTOTAL: TIBBCDField;
    tblEstoqueDOCUMENTO: TIntegerField;
    tblEstoqueDATA: TDateField;
    tblEstoqueQUANTIDADE: TFloatField;
    tblProdutosNOME: TIBStringField;
    tblEstoqueNOMEDOPRODUTO: TStringField;
    edtTipo: TwwDBComboBox;
    tblProdutosSALDO: TFloatField;
    dlgEstoque: TwwRecordViewDialog;
    tblProdutosCODIGO: TIntegerField;
    tblEstoquePRODUTO: TIntegerField;
    tblProdutosBARRAS: TIBStringField;
    edtProduto: TwwDBLookupCombo;
    edtNomedoProduto: TwwDBLookupCombo;
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
    btnSair: TwwNavButton;
    tblFornecedores: TIBDataSet;
    dtsFornecedores: TDataSource;
    edtFornecedor: TwwDBLookupCombo;
    tblEstoqueFORNECEDOR: TIntegerField;
    tblLocais: TIBDataSet;
    dtsLocais: TDataSource;
    tblEstoqueID_LOCAL: TIntegerField;
    edtLocal: TwwDBLookupCombo;
    tblEstoqueNOMEDOLOCAL: TStringField;
    wwDBNavigator1Button1: TwwNavButton;
    edtSenha: TElInputDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tblEstoqueBeforePost(DataSet: TDataSet);
    procedure tblEstoqueAfterPost(DataSet: TDataSet);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure tblEstoqueAfterEdit(DataSet: TDataSet);
    procedure grdEstoqueDblClick(Sender: TObject);
    procedure edtProdutoExit(Sender: TObject);
    procedure edtProdutoNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure btnSairClick(Sender: TObject);
    procedure edtSenhaOk(Sender: TObject; Password: String;
      var Accept: Boolean);
    procedure edtTipoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque: TfrmEstoque;
  senha:String;

implementation

uses principal, procuraproduto, transf_estoque;

{$R *.DFM}

procedure TfrmEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmEstoque.FormShow(Sender: TObject);
begin
  if not abre([tblProdutos, tblEstoque, tblFornecedores, tblLocais]) then
    close;

    senha := '';
end;

procedure TfrmEstoque.tblEstoqueBeforePost(DataSet: TDataSet);
begin
  with tblEstoque do
  begin

    fieldByName('total').asCurrency := fieldByName('preco').asCurrency *
      fieldByName('quantidade').asFloat;

    if fieldByName('Tipo').asString = 'S' then
      if (fieldByName('Quantidade').asFloat >
        tblProdutos.fieldByName('Saldo').asFloat) then
      begin
        if not Confirma(Pchar('O saldo deta peça é : ' +
          tblProdutos.fieldByName('Saldo').asString + ' deseja mesmo dar saída ?'))
          then
          abort;

      end;
  end;

  // verifica a senha

   if tblEstoque.state = dsInsert then
   begin
      // se for saída, pede a senha.
      if ( tblEstoque.fieldbyname( 'Tipo' ).asString = 'S' ) and ( senha <> Senha_Mestra ) then
      begin
         edtSenha.Execute;
         senha := edtSenha.Value;
         if senha <> senha_Mestra then abort;
      end;
   end;

end;

procedure TfrmEstoque.tblEstoqueAfterPost(DataSet: TDataSet);
begin
  trnEstoque.CommitRetaining;
end;

procedure TfrmEstoque.wwDBNavigator1Button1Click(Sender: TObject);
begin
  Application.CreateForm( TfrmTransfEstoque, frmTransfEstoque );
  frmTransfEstoque.showModal;
end;

procedure TfrmEstoque.tblEstoqueAfterEdit(DataSet: TDataSet);
begin
  with tblEstoque do
  begin
   if state = dsInsert then
      fieldbyname( 'data' ).asDateTime := now;
  end;
  dlgEstoque.Execute;
end;

procedure TfrmEstoque.grdEstoqueDblClick(Sender: TObject);
begin
  tblEstoque.Edit;
end;

procedure TfrmEstoque.edtProdutoExit(Sender: TObject);
begin
{  if not tblProdutos.Locate('Codigo',
    VarArrayOf([tblEstoque.fieldByName('Produto').asString]), []) then
  begin
    Erro('Produto não cadastrado !');
    edtProduto.Setfocus;
    Exit;
  end;}
end;

procedure TfrmEstoque.edtProdutoNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Erro( 'Produto não cadastrado !' );
   edtProduto.Setfocus;
   abort;
end;

procedure TfrmEstoque.btnSairClick(Sender: TObject);
begin
   close;
end;

procedure TfrmEstoque.edtSenhaOk(Sender: TObject; Password: String;
  var Accept: Boolean);
begin
   senha := Password;
   if senha <> Senha_Mestra then Erro( 'Senha Inválida !' );
   Accept := ( Senha = Senha_Mestra );

end;

procedure TfrmEstoque.edtTipoExit(Sender: TObject);
begin
   edtfornecedor.Enabled := ( tblEstoque.fieldbyname( 'Tipo' ).asString = 'E' );
   edtfornecedor.tabStop := ( tblEstoque.fieldbyname( 'Tipo' ).asString = 'E' );
   if tblEstoque.fieldbyname( 'Tipo' ).asString = 'S' then tblEstoque.fieldbyname( 'fornecedor' ).asInteger  := 0;      
end;

end.
