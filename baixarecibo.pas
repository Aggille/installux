unit baixarecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit, wwdbdatetimepicker;

type
  TfrmBaixaRecibo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtData: TwwDBDateTimePicker;
    edtValor: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    edtDesconto: TCurrencyEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaixaRecibo: TfrmBaixaRecibo;

implementation

uses recibos, principal;

{$R *.dfm}

procedure TfrmBaixaRecibo.BitBtn1Click(Sender: TObject);
var
valordabaixa:currency;
begin

   if not confirma( 'Confirma a baixa deste recibo ?' ) then exit;

   with frmRecibos do
   begin

      ValorDaBaixa   := edtValor.Value + edtDesconto.Value;

      if ValorDaBaixa > tblRecibos.fieldbyName( 'Valor' ).asCurrency then
         Erro( 'O valor da baixa não pode ser maior do que o saldo do recibo !' )
      else
      with tblRecibos do
      begin
         edit;
         fieldByName( 'pagamento' ).asDateTime     := edtData.Date;
         fieldbyname( 'saldo' ).ascurrency         := fieldbyname( 'valor' ).ascurrency - edtvalor.Value;
         fieldbyname( 'desconto' ).asCurrency      := edtDesconto.Value;
         post;
      end;
   end;

   with frmRecibos do
      GravaBaixa( tblRecibos.fieldbyname( 'ID' ).asInteger, tblRecibos.fieldbyname( 'parcela' ).asInteger,  edtData.Date, edtValor.value );

   with frmRecibos do
   if confirma( 'Deseja imprimir o recibo deste pagamento ?' ) then
   begin
     tblClientes.Locate( 'codigo' , tblRecibos.fieldbyname( 'cliente' ).asinteger , [] );
     with frmRecibos.tblRecibos do
     ImprimeRecibo( edtValor.Value,
                    fieldByName( 'id' ).asString ,
                    fieldByName( 'data' ).asDateTime,
                    fieldByName( 'vencimento' ).asDateTime,
                    'Serviços prestados' ,
                    [tblClientes.fieldByName( 'nome' ).asString,
                    tblClientes.fieldByName( 'endereco' ).asString,
                    tblClientes.fieldByName( 'Cidade' ).asString,
                    tblClientes.fieldByName( 'cnpj_cpf' ).DisplayText,
                    tblClientes.fieldByName( 'inscricaoestadual' ).asString  ] );

     end;

     close;
end;

procedure TfrmBaixaRecibo.FormShow(Sender: TObject);
begin
   edtValor.Value     := frmRecibos.tblRecibos.fieldByName( 'saldoaberto' ).asCurrency;
   edtData.date       := frmrecibos.tblrecibos.fieldbyname( 'vencimento' ).asdatetime;
   edtDesconto.Value  := frmRecibos.tblRecibos.fieldbyname( 'Desconto' ).asCurrency;
end;

end.
