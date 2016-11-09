unit servicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  wwdblook, Mask, wwdbedit, wwdbdatetimepicker, DBClient, IBSQL, DB,
  IBCustomDataSet, IBDatabase, DBCtrls;

type
  TfrmServicos = class(TForm)
    pnlDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtData: TwwDBDateTimePicker;
    edtCliente: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    grdServicos: TwwDBGrid;
    tblClientes: TIBDataSet;
    tblArquitetos: TIBDataSet;
    sqlServicos: TIBSQL;
    IBTransaction1: TIBTransaction;
    dtsServicos: TDataSource;
    tblProdutos: TIBDataSet;
    edtProduto: TwwDBLookupCombo;
    tblProdutosNOME: TIBStringField;
    tblProdutosPRECO: TIBBCDField;
    tblProdutosSALDO: TFloatField;
    tblProdutosTIPO: TIBStringField;
    tblProdutosUNIDADE: TIBStringField;
    SpeedButton1: TSpeedButton;
    tblArquitetosCODIGO: TIntegerField;
    tblArquitetosNOME: TIBStringField;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    tblAmbientes: TIBDataSet;
    edtAmbiente: TwwDBLookupCombo;
    tblFuncionarios: TIBDataSet;
    tblFuncionariosCODIGO: TIntegerField;
    tblFuncionariosNOME: TIBStringField;
    edtFuncionario: TwwDBLookupCombo;
    dtsclientes: TDataSource;
    edtArquiteto: TDBEdit;
    dtsArquitetos: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    edtInicio: TMaskEdit;
    edtFinal: TMaskEdit;
    tblProdutosCODIGO: TIntegerField;
    tblProdutosBARRAS: TIBStringField;
    edtNomeDoProduto: TwwDBLookupCombo;
    tblServicos: TClientDataSet;
    tblServicosproduto: TIntegerField;
    tblServicosquantidade: TIntegerField;
    tblServicoshorachegada: TTimeField;
    tblServicoshorasaida: TTimeField;
    tblServicosambiente: TIntegerField;
    tblServicosnomedoambiente: TStringField;
    tblServicosnomedoproduto: TStringField;
    tblServicoscodigodoproduto: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure tblServicoscodigodoprodutoValidate(Sender: TField);
    procedure edtProdutoNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServicos: TfrmServicos;

implementation

uses principal;

{$R *.dfm}

procedure TfrmServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmServicos.FormShow(Sender: TObject);
begin
  // Cria a tabela temporária..
  tblServicos.CreateDataSet;
  if not abre([tblClientes, tblArquitetos, tblProdutos, tblServicos,
    tblAmbientes, tblFuncionarios]) then
    close;
end;

procedure TfrmServicos.BitBtn1Click(Sender: TObject);
begin
  pnlDados.Enabled := false;
  grdServicos.Setfocus;
end;

procedure TfrmServicos.SpeedButton1Click(Sender: TObject);
begin

  // Grava os servicos na tabela..

  with tblServicos do
  begin

    first;

    while not eof do
    begin

      if fieldByName('Quantidade').asInteger > 0 then
      begin

        tblProdutos.Locate('codigo',
          VarArrayOf([tblServicos.fieldByName('produto').asInteger]), []);
        sqlServicos.paramByName('Cliente').asInteger :=
          tblClientes.fieldByName('Codigo').asInteger;
        sqlServicos.paramByName('Arquiteto').asInteger :=
          tblArquitetos.fieldByName('codigo').asInteger;
        sqlServicos.paramByName('Data').asDateTime := edtData.Date;
        sqlServicos.paramByName('HoraChegada').asString := edtInicio.Text;
        sqlServicos.paramByName('HoraSaida').asString := edtFinal.Text;
        sqlServicos.paramByName('Funcionario').asString :=
          tblFuncionarios.fieldbyName('Codigo').asString;
        sqlServicos.paramByName('Quantidade').asInteger :=
          fieldByName('Quantidade').asInteger;
        sqlServicos.paramByName('Ambiente').asstring :=
          fieldByName('Ambiente').asString;
        sqlServicos.paramByName('Produto').asInteger :=
          fieldByName('CodigoDoProduto').asInteger;
        sqlServicos.paramByName('Preco').asCurrency :=
          tblProdutos.fieldByName('Preco').asCurrency;
        sqlServicos.paramByName('Total').asCurrency :=
          fieldByName('Quantidade').asInteger *
          tblProdutos.fieldByName('Preco').asCurrency;
        ;
        sqlServicos.ExecQuery;
      end;
      next;

    end;

    ibTransaction1.CommitRetaining;
    close;
    createDataSet;

  end;

  pnlDados.Enabled := True;
  edtData.Setfocus;

end;

procedure TfrmServicos.SpeedButton2Click(Sender: TObject);
begin
  ibTransaction1.RollBackRetaining;
  tblServicos.Close;
  tblServicos.CreateDataSet;
  pnlDados.Enabled := True;
  edtData.Setfocus;
end;

procedure TfrmServicos.tblServicoscodigodoprodutoValidate(Sender: TField);
begin
  if tblServicos.fieldByName('codigodoproduto').asInteger > 0 then
    if not tblProdutos.Locate('codigo',
      VarArrayOf([tblServicos.fieldbyName('codigodoproduto').asInteger]), [])
        then
      DatabaseError('Produto não cadastrado !');
end;

procedure TfrmServicos.edtProdutoNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin

   if edtproduto.Text = ''  then
      Accept := True
   else
   begin
      erro( 'Produto não cadastado !' );
      edtProduto.Setfocus;
      Accept := False;
   end;
end;

end.

