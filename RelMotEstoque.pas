unit RelMotEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, wwdblook, IBDatabase, DB,
  IBCustomDataSet, RpDefine, RpCon, RpConDS, IBQuery;

type
  TfrmRelMovEstoque = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    edtProduto: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tblProdutos: TIBDataSet;
    dtsProdutos: TDataSource;
    IBTransaction1: TIBTransaction;
    qryEstoque: TIBDataSet;
    dtsEstoque: TDataSource;
    rvMovEstoque: TRvDataSetConnection;
    qryEstoqueDATA: TDateField;
    qryEstoqueDOCUMENTO: TIntegerField;
    qryEstoquePRECO: TIBBCDField;
    qryEstoquePRODUTO: TIntegerField;
    qryEstoqueQUANTIDADE: TFloatField;
    qryEstoqueTIPO: TIBStringField;
    qryEstoqueTOTAL: TIBBCDField;
    qryEstoqueNOME: TIBStringField;
    qryEstoqueENTRADA: TIntegerField;
    qryEstoqueSAIDA: TIntegerField;
    qryEstoquePRECOENTRADA: TCurrencyField;
    qryEstoquePRECOSAIDA: TCurrencyField;
    Label4: TLabel;
    qryGrupos: TIBQuery;
    dtsGrupos: TDataSource;
    edtGrupo: TwwDBLookupCombo;
    qryGruposCODIGO: TIntegerField;
    qryGruposNOME: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryEstoqueCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMovEstoque: TfrmRelMovEstoque;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelMovEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRelMovEstoque.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmRelMovEstoque.BitBtn1Click(Sender: TObject);
begin

   with qryEstoque do
   begin
      close;
      paramByName( 'Inicio' ).asDate      := edtInicio.Date;
      paramByName( 'Final' ).asDate       := edtFinal.Date;

      if edtProduto.Text = '' then
      begin
         paramByName( 'ProdutoInicial' ).asInteger    := 0;
         paramByName( 'ProdutoFinal' ).asInteger      := 99999;
      end
      else
      begin
         paramByName( 'ProdutoInicial' ).asInteger    := tblProdutos.fieldByName( 'codigo' ).asInteger;
         paramByName( 'ProdutoFinal' ).asInteger      := tblProdutos.fieldByName( 'codigo' ).asInteger;
      end;

      if edtGrupo.Text = '' then
      begin
         paramByName( 'gInicial' ).asInteger    := 0;
         paramByName( 'gFinal' ).asInteger      := 99999;
      end
      else
      begin
         paramByName( 'gInicial' ).asInteger    := qryGrupos.fieldByName( 'codigo' ).asInteger;
         paramByName( 'gFinal' ).asInteger      := qryGrupos.fieldByName( 'codigo' ).asInteger;
      end;

      open;


   frmPrincipal.rvInstallux.ExecuteREport( 'rptMovEstoque' );

end;

end;

procedure TfrmRelMovEstoque.qryEstoqueCalcFields(DataSet: TDataSet);
begin

   with qryEstoque do
   begin

      fieldByName( 'Entrada' ).asInteger := 0;
      fieldByName( 'Saida' ).asInteger := 0;


      if fieldbyName( 'tipo' ).asString = 'E' then
      begin
         fieldByName( 'Entrada' ).asInteger           := fieldByName( 'Quantidade' ).asInteger;
         fieldByName( 'PrecoEntrada' ).asCurrency     := fieldbyName( 'Total' ).asCurrency;
      end
      else
      begin
         fieldByName( 'Saida' ).asInteger             := fieldByName( 'Quantidade' ).asInteger;
         fieldbyname( 'precosaida' ).ascurrency       := fieldbyname( 'total' ).ascurrency;
      end;
   end;
end;

procedure TfrmRelMovEstoque.FormShow(Sender: TObject);
begin
   if not abre( [tblProdutos, qryGrupos] ) then close;
end;

end.
