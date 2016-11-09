unit parcelarecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdbspin, wwdbdatetimepicker, Buttons,
  rxToolEdit, rxCurrEdit, DBCtrls;

type
  TfrmParcelaRecibo = class(TForm)
    Label1: TLabel;
    edtQtde: TwwDBSpinEdit;
    GroupBox1: TGroupBox;
    edtDias1: TwwDBSpinEdit;
    edtDias2: TwwDBSpinEdit;
    edtdias3: TwwDBSpinEdit;
    edtDias4: TwwDBSpinEdit;
    edtDias5: TwwDBSpinEdit;
    edtDias6: TwwDBSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtVcto1: TwwDBDateTimePicker;
    edtVcto2: TwwDBDateTimePicker;
    edtVcto3: TwwDBDateTimePicker;
    edtVcto4: TwwDBDateTimePicker;
    edtVcto5: TwwDBDateTimePicker;
    edtVcto6: TwwDBDateTimePicker;
    edtValor1: TCurrencyEdit;
    edtValor2: TCurrencyEdit;
    edtValor3: TCurrencyEdit;
    edtValor4: TCurrencyEdit;
    edtValor5: TCurrencyEdit;
    edtValor6: TCurrencyEdit;
    OK: TBitBtn;
    edtSair: TBitBtn;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    edtServ1: TCurrencyEdit;
    edtServ2: TCurrencyEdit;
    edtServ3: TCurrencyEdit;
    edtServ4: TCurrencyEdit;
    edtServ5: TCurrencyEdit;
    edtServ6: TCurrencyEdit;
    edtVcto7: TwwDBDateTimePicker;
    edtValor7: TCurrencyEdit;
    edtServ7: TCurrencyEdit;
    edtVcto8: TwwDBDateTimePicker;
    edtValor8: TCurrencyEdit;
    edtServ8: TCurrencyEdit;
    edtDias7: TwwDBSpinEdit;
    edtDias8: TwwDBSpinEdit;
    Label6: TLabel;
    edtMat1: TCurrencyEdit;
    edtMat2: TCurrencyEdit;
    edtMat3: TCurrencyEdit;
    edtMat4: TCurrencyEdit;
    edtMat5: TCurrencyEdit;
    edtMat6: TCurrencyEdit;
    edtMat7: TCurrencyEdit;
    edtMat8: TCurrencyEdit;
    lblMat: TLabel;
    lblServ: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtSairClick(Sender: TObject);
    procedure edtQtdeChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtValor1Exit(Sender: TObject);
    procedure edtValor2Exit(Sender: TObject);
    procedure edtValor3Exit(Sender: TObject);
    procedure edtValor4Exit(Sender: TObject);
    procedure edtValor5Exit(Sender: TObject);
    procedure edtValor6Exit(Sender: TObject);
    procedure edtValor7Exit(Sender: TObject);
    procedure edtValor8Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParcelaRecibo: TfrmParcelaRecibo;
  pMat:Currency = 0 ;
  pServ:Currency = 0;

implementation

uses principal, recibos;

{$R *.dfm}

procedure TfrmParcelaRecibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   frmRecibos.Baixa := false;
   action := caFree;
end;

procedure TfrmParcelaRecibo.FormShow(Sender: TObject);
begin
     with frmRecibos do
     begin
          pMat  := ( tblRecibos.fieldbyname( 'materiais_cobrado' ).asCurrency /
                     tblRecibos.fieldbyname( 'valor' ).asCurrency ) * 100;
          pServ := ( tblRecibos.fieldbyname( 'Servicos_Cobrado' ).asCurrency /
                     tblRecibos.fieldbyname( 'valor' ).asCurrency ) * 100;

          lblServ.Caption := 'Serviços:' + floatToStrF( pServ, ffNumber, 6 , 2 ) + '%';
          lblMat.Caption  := 'Materiais:' + floatToStrF( pMat, ffNumber, 6 , 2 ) + '%';
     end;
end;

procedure TfrmParcelaRecibo.edtSairClick(Sender: TObject);
begin
   close;
end;

procedure TfrmParcelaRecibo.edtValor1Exit(Sender: TObject);
begin
   if pServ > 0 then
       edtServ1.Value       := edtValor1.Value * ( pServ / 100 )
   else
       edtServ1.Value       := 0;

   edtMat1.value := edtValor1.Value - edtServ1.value;

end;

procedure TfrmParcelaRecibo.edtValor2Exit(Sender: TObject);
begin
   if pServ > 0 then
       edtServ2.Value       := edtValor2.Value * ( pServ / 100 )
   else
       edtServ2.Value       := 0;

   edtMat2.value := edtValor2.Value - edtServ2.value;

end;

procedure TfrmParcelaRecibo.edtValor3Exit(Sender: TObject);
begin
   if pServ > 0 then
       edtServ3.Value       := edtValor3.Value * ( pServ / 100 )
   else
       edtServ3.Value       := 0;

   edtMat3.value := edtValor3.Value - edtServ3.value;


end;

procedure TfrmParcelaRecibo.edtValor4Exit(Sender: TObject);
begin
   if pServ > 0 then
       edtServ4.Value       := edtValor4.Value * ( pServ / 100 )
   else
       edtServ4.Value       := 0;

   edtMat4.value := edtValor4.Value - edtServ4.value;

end;

procedure TfrmParcelaRecibo.edtValor5Exit(Sender: TObject);
begin
   if pServ > 0 then
       edtServ5.Value       := edtValor5.Value * ( pServ / 100 )
   else
       edtServ5.Value       := 0;

   edtMat5.value := edtValor5.Value - edtServ5.value;
end;

procedure TfrmParcelaRecibo.edtValor6Exit(Sender: TObject);
begin
   if pServ > 0 then
       edtServ6.Value       := edtValor6.Value * ( pServ / 100 )
   else
       edtServ6.Value       := 0;

   edtMat6.value := edtValor6.Value - edtServ6.value;


end;

procedure TfrmParcelaRecibo.edtValor7Exit(Sender: TObject);
begin
   if pServ > 0 then
       edtServ7.Value       := edtValor7.Value * ( pServ / 100 )
   else
       edtServ7.Value       := 0;

   edtMat7.value := edtValor7.Value - edtServ7.value;


end;

procedure TfrmParcelaRecibo.edtValor8Exit(Sender: TObject);
begin
   if pServ > 0 then
       edtServ8.Value       := edtValor8.Value * ( pServ / 100 )
   else
       edtServ8.Value       := 0;

   edtMat8.value := edtValor8.Value - edtServ8.value;


end;

procedure TfrmParcelaRecibo.edtQtdeChange(Sender: TObject);
var
dias:array[1..8] of smallint;

begin

   with edtqtde do
   begin

      if value >=1 then dias[1] := 30  else dias[1] :=0;
      if value >=2 then dias[2] := 60  else dias[2] :=0;
      if value >=3 then dias[3] := 90  else dias[3] :=0;
      if value >=4 then dias[4] := 120 else dias[4] :=0;
      if value >=5 then dias[5] := 150 else dias[5] :=0;
      if value >=6 then dias[6] := 180 else dias[6] :=0;
      if value >=7 then dias[7] := 210 else dias[7] :=0;
      if value >=8 then dias[8] := 240 else dias[8] :=0;


      edtDias1.Value    := Dias[1];
      edtDias2.Value    := Dias[2];
      edtDias3.Value    := Dias[3];
      edtDias4.Value    := Dias[4];
      edtDias5.Value    := Dias[5];
      edtDias6.Value    := Dias[6];
      edtDias7.Value    := Dias[7];
      edtDias8.Value    := Dias[8];

   end;

end;

procedure TfrmParcelaRecibo.BitBtn1Click(Sender: TObject);
var
mat, serv,dif,tcalculado,valor:Currency;
vencimentos:array[1..8] of TwwDBDateTimePicker;
valores:array[1..8]     of TCurrencyEdit;
servicos:array[1..8]    of TCurrencyEdit;
materiais:array[1..8]   of TCurrencyEdit;
dias:array[1..8]        of TwwDBSpinEdit;
x:Integer;

begin

   if edtqtde.value = 0 then
   begin
      Erro( 'Digite a quantidade de parcelas !' );
      edtQtde.Setfocus;
      exit;
   end;

   x := 1;

   Vencimentos[1] := edtVcto1;
   valores[1]     := edtValor1;
   servicos[1]    := edtServ1;
   materiais[1]   := edtMat1;
   dias[1]        := edtDias1;

   Vencimentos[2] := edtVcto2;
   servicos[2]    := edtServ2;
   valores[2]     := edtValor2;
   materiais[2]   := edtMat2;
   dias[2]        := edtDias2;

   Vencimentos[3] := edtVcto3;
   valores[3]     := edtValor3;
   servicos[3]    := edtServ3;
   materiais[3]   := edtMat3;
   dias[3]        := edtDias3;

   Vencimentos[4] := edtVcto4;
   valores[4]     := edtValor4;
   servicos[4]    := edtServ4;
   materiais[4]   := edtMat4;
   dias[4]        := edtDias4;

   Vencimentos[5] := edtVcto5;
   valores[5]     := edtValor5;
   dias[5]        := edtDias5;
   materiais[5]   := edtMat5;
   servicos[5]    := edtServ5;


   Vencimentos[6] := edtVcto6;
   valores[6]     := edtValor6;
   dias[6]        := edtDias6;
   materiais[6]   := edtMat6;
   servicos[6]    := edtServ6;

   Vencimentos[7] := edtVcto7;
   valores[7]     := edtValor7;
   dias[7]        := edtDias7;
   materiais[7]   := edtMat7;
   servicos[7]    := edtServ7;

   Vencimentos[8] := edtVcto8;
   valores[8]     := edtValor8;
   dias[8]        := edtDias8;
   servicos[8]    := edtServ8;
   materiais[8]   := edtMat8;

   with frmRecibos do
   begin

        //mat  := tblRecibos.fieldbyname( 'materiais_cobrado' ).asCurrency;
        //serv := tblRecibos.fieldbyname( 'servicos_cobrado' ).asCurrency;
      // efetua o parcelamento

      tcalculado := 0;

      valor := tblRecibos.fieldbyname( 'valor' ).asCurrency;

      for x := 1 to 8 do
      begin

         // calcula o valor das parcelas para jogar a diferenca na primeira parcela
         if Dias[x].value > 0 then
         begin
            vencimentos[x].Date     := tblRecibos.fieldbyname( 'data' ).asDateTime + dias[x].Value;

            valores[x].Value        := valor / edtQtde.Value;

            if pServ > 0 then
               servicos[x].Value       := valores[x].value * ( pServ / 100 )
            else
                servicos[x].Value       := 0;

            materiais[x].value := valores[x].value - servicos[x].value;

         end
         else
         begin
            vencimentos[x].Date     := 0;
            valores[x].Value        := 0;
            servicos[x].Value       := 0;
            materiais[x].value      := 0;
         end;

         tcalculado := tcalculado + valores[x].value;

      end;

       // calcula a diferenca e joga na primeira parcela;

       dif := tblREcibos.fieldbyname( 'valor' ).asCurrency - tcalculado;

       valores[1].value := valores[1].value+dif ;

   end;


end;

procedure TfrmParcelaRecibo.OKClick(Sender: TObject);
var
id, cliente, arquiteto:Integer;
data, vencimento:TDateTime;
descricao:String;
valor, servicoscobrados:currency;
horas:String;
vencimentos:array[1..8] of TwwDBDateTimePicker;
valores:array[1..8]     of TCurrencyEdit;
dias:array[1..8]        of TwwDBSpinEdit;
servicos:array[1..8]    of TCurrencyEdit;
materiais:array[1..8]   of TCurrencyEdit;
x:Integer;

begin

   if not confirma( 'Confirma este parcelamento ?' ) then exit;

   try

      with frmRecibos.tblRecibos do
      begin

         id          := fieldbyname( 'id' ).asInteger;
         cliente     := fieldbyname( 'cliente' ).asInteger;
         arquiteto   := fieldbyname( 'arquiteto' ).asInteger;
         data        := fieldbyname( 'data' ).asDateTime;
         vencimento  := fieldbyname( 'vencimento' ).asDateTime;
         horas       := fieldbyname( 'Horas' ).asString;
         descricao   := fieldbyname( 'descricao' ).asString;
         delete;

         Vencimentos[1] := edtVcto1;
         valores[1]     := edtValor1;
         dias[1]        := edtDias1;
         servicos[1]    := edtServ1;
         materiais[1]   := edtMat1;

         Vencimentos[2] := edtVcto2;
         valores[2]     := edtValor2;
         dias[2]        := edtDias2;
         servicos[2]    := edtServ2;
         materiais[2]   := edtMat2;

         Vencimentos[3] := edtVcto3;
         valores[3]     := edtValor3;
         dias[3]        := edtDias3;
         servicos[3]    := edtServ3;
         materiais[3]   := edtMat3;

         Vencimentos[4] := edtVcto4;
         valores[4]     := edtValor4;
         dias[4]        := edtDias4;
         servicos[4]    := edtServ4;
         materiais[4]   := edtMat4;

         Vencimentos[5] := edtVcto5;
         valores[5]     := edtValor5;
         dias[5]        := edtDias5;
         servicos[5]    := edtServ5;
         materiais[5]   := edtMat5;

         Vencimentos[6] := edtVcto6;
         valores[6]     := edtValor6;
         dias[6]        := edtDias6;
         servicos[6]    := edtServ6;
         materiais[6]   := edtMat6;

         Vencimentos[7] := edtVcto7;
         valores[7]     := edtValor7;
         dias[7]        := edtDias7;
         servicos[7]    := edtServ7;
         materiais[7]   := edtMat7;

         Vencimentos[8] := edtVcto8;
         valores[8]     := edtValor8;
         dias[8]        := edtDias8;
         servicos[8]    := edtServ8;
         materiais[8]   := edtMat8;

         frmRecibos.Baixa := true;

         for x := 1 to 8 do
         begin

            if ( valores[x].Value = 0 ) then continue;

            insert;
            fieldbyname( 'id' ).asInteger                := ID;
            fieldbyname( 'parcela' ).asInteger           := x;
            fieldbyname( 'cliente' ).asInteger           := cliente;
            fieldbyname( 'arquiteto' ).asInteger         := arquiteto;
            fieldbyname( 'data' ).asDateTime             := data;
            fieldbyname( 'vencimento' ).asDateTime       := vencimentos[x].Date;
            fieldbyname( 'Valor' ).asCurrency            := valores[x].value;
            fieldbyname( 'Materiais' ).asCurrency        := materiais[x].value;
            fieldbyname( 'materiais_cobrado' ).asCurrency:= materiais[x].value;
            fieldbyname( 'Servicos_Cobrado' ).asCurrency := servicos[x].value;
            fieldbyname( 'Servicos' ).asCurrency         := servicos[x].value;
            fieldbyname( 'Horas' ).asString              := Horas;
            fieldbyname( 'descricao' ).asString          := descricao;
            post;

         end;

         close;
         open;
         locate( 'ID' , vararrayof( [id] ) , [] );

      end;

   except

      On e:Exception do
      Erro( Pchar( 'Erro de gravação :' + e.message ) ) ;

   end;

   close;

end;

end.
