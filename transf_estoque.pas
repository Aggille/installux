unit transf_estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBSQL, DB, IBCustomDataSet, IBQuery, StdCtrls, wwdblook,
  wwdbdatetimepicker, Mask, wwdbedit, Wwdbspin, Buttons;

type
  TfrmTransfEstoque = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtData: TwwDBDateTimePicker;
    edtProduto: TwwDBLookupCombo;
    edtQtde: TwwDBSpinEdit;
    edtOrigem: TwwDBLookupCombo;
    edtDestino: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ibInclui: TIBSQL;
    qryOrigem: TIBQuery;
    qryDestino: TIBQuery;
    dtsOrygem: TDataSource;
    dtsDestino: TDataSource;
    qryProduto: TIBQuery;
    qryProdutoCUSTO: TIBBCDField;
    qryProdutoPRECO: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransfEstoque: TfrmTransfEstoque;

implementation

uses Estoque, principal;

{$R *.dfm}

procedure TfrmTransfEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

procedure TfrmTransfEstoque.FormShow(Sender: TObject);
begin
   if not abre( [qryOrigem, qryDestino] ) then close;
end;

procedure TfrmTransfEstoque.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmTransfEstoque.BitBtn1Click(Sender: TObject);
begin
  /// efetua a transferência...
  if edtQtde.Value > frmEstoque.tblProdutos.fieldbyname( 'saldo' ).asFloat then
    begin
      Erro( 'Quantidade maior do que saldo disponível !' );
      edtQtde.Setfocus;
      exit;
    end;

    if edtProduto.text = '' then
      begin
        Erro( 'Digite um produto' );
        edtProduto.Setfocus;
        exit;
      end;


      // EFETUA A TRANSFERÊNCIA...


      // busca o produto

      with qryProduto do
      begin
        close;
        parambyname( 'produto' ).asInteger  := frmEstoque.tblProdutos.fieldbyname( 'codigo' ).asInteger;
        open;
      end;

      with  ibInclui do
      begin

        // LANÇAMENTO DE SAÍDA DA ORIGEM...

        parambyname( 'quantidade' ).asInteger   := Trunc( edtQtde.value );
        parambyname( 'Tipo' ).asString          := 'S';
        parambyname( 'Produto' ).asInteger      := frmEstoque.tblProdutos.fieldbyname( 'codigo' ).asInteger;
        parambyname( 'Documento' ).asString     := '0';
        parambyname( 'id_local' ).asInteger     := qryOrigem.fieldbyname( 'id_local' ).asInteger;
        parambyname( 'data' ).asDateTime        := edtData.Date;

        execQuery;

        // LANÇAMENTO DE ENTRADA DOP DESTINO

        parambyname( 'quantidade' ).asInteger   := Trunc( edtQtde.Value );
        parambyname( 'Tipo' ).asString          := 'E';
        parambyname( 'Produto' ).asInteger      := frmEstoque.tblProdutos.fieldbyname( 'codigo' ).asInteger;
        parambyname( 'Documento' ).asString     := '0';
        parambyname( 'id_local' ).asInteger     := qryDestino.fieldbyname( 'id_local' ).asInteger;
        parambyname( 'data' ).asDateTime        := edtData.Date;

        execQuery;

        Transaction.CommitRetaining;

      end;

    ShowMessage( 'Transferência concluída com sucesso !' );

end;

end.
