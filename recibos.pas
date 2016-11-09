unit recibos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, Grids, DBGrids, Wwdbigrd, Wwdbgrid, IBQuery,
  StdCtrls, wwdblook, wwDialog, wwrcdvw, ComCtrls, wwriched, IBSQL, Mask,
  DBCtrls, wwdbedit;

type
  TfrmRecibos = class(TForm)
    tblRecibos: TIBDataSet;
    dtsRecibos: TDataSource;
    trnRecibos: TIBTransaction;
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
    wwDBNavigator1LocateDialog: TwwNavButton;
    wwDBNavigator1SearchDialog: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    grdreciboscliente: TwwDBGrid;
    tblRecibosID: TIntegerField;
    tblRecibosDATA: TDateField;
    tblRecibosVALOR: TIBBCDField;
    tblRecibosVENCIMENTO: TDateField;
    tblRecibosPAGAMENTO: TDateField;
    tblRecibosOBS: TBlobField;
    tblRecibosCLIENTE: TIntegerField;
    tblRecibosMATERIAIS: TIBBCDField;
    tblRecibosSERVICOS: TIBBCDField;
    tblRecibosMATERIAIS_COBRADO: TIBBCDField;
    tblRecibosSERVICOS_COBRADO: TIBBCDField;
    tblRecibosHORAS: TIBStringField;
    tblClientes: TIBDataSet;
    dtsClientes: TDataSource;
    tblRecibosNOMEDOCLIENTE: TStringField;
    wwDBNavigator1Button1: TwwNavButton;
    qryUltimoRecibo: TIBQuery;
    dlgRecibo: TwwRecordViewDialog;
    edtCliente: TwwDBLookupCombo;
    wwDBRichEdit1: TwwDBRichEdit;
    tblRecibosSALDO: TIBBCDField;
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    wwDBNavigator1Button4: TwwNavButton;
    tblArquitetos: TIBDataSet;
    dtsArquitetos: TDataSource;
    tblRecibosARQUITETO: TSmallintField;
    edtArquiteto: TwwDBLookupCombo;
    wwDBNavigator1Button5: TwwNavButton;
    tblClientesCODIGO: TIntegerField;
    tblClientesCNPJ_CPF: TIBStringField;
    tblClientesINSCRICAOESTADUAL: TIBStringField;
    tblClientesENDERECO: TIBStringField;
    tblClientesCIDADE: TIBStringField;
    tblClientesPESSOA: TIBStringField;
    tblRecibosDESCONTO: TIBBCDField;
    tblRecibosSALDOABERTO: TCurrencyField;
    sqlGravaBaixa: TIBSQL;
    wwDBNavigator1Button6: TwwNavButton;
    tblRecibosPARCELA: TSmallintField;
    qryQt: TIBQuery;
    edtParcela: TDBEdit;
    sqlDeletaPgtos: TIBSQL;
    wwDBNavigator1Button7: TwwNavButton;
    tblRecibosDESCRICAO: TIBStringField;
    sqlDeletaOS: TIBSQL;
    tblClientesNOME: TIBStringField;
    tblClientesFANTASIA: TIBStringField;
    edtId: TwwDBEdit;
    qryValores: TIBQuery;
    qryValoresVALOR: TIBBCDField;
    qryValoresSERVICOS: TIBBCDField;
    qryValoresMATERIAIS: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure tblRecibosAfterEdit(DataSet: TDataSet);
    procedure grdrecibosclienteDblClick(Sender: TObject);
    procedure tblRecibosAfterPost(DataSet: TDataSet);
    procedure tblRecibosAfterDelete(DataSet: TDataSet);
    procedure tblRecibosBeforePost(DataSet: TDataSet);
    procedure wwDBNavigator1Button2Click(Sender: TObject);
    procedure wwDBNavigator1Button3Click(Sender: TObject);
    procedure wwDBNavigator1Button4Click(Sender: TObject);
    procedure wwDBNavigator1Button5Click(Sender: TObject);
    procedure tblClientesAfterScroll(DataSet: TDataSet);
    procedure tblRecibosCalcFields(DataSet: TDataSet);
    procedure wwDBNavigator1Button6Click(Sender: TObject);
    procedure edtIDExit(Sender: TObject);
    procedure wwDBNavigator1Button7Click(Sender: TObject);
    procedure tblRecibosBeforeDelete(DataSet: TDataSet);
    procedure wwDBNavigator1DeleteClick(Sender: TObject);
  private
    { Private declarations }
  public

     baixa:bool;  
     Procedure GravaBaixa( Recibo:Integer; Parcela:Smallint; Data:TdateTime; Valor:Currency );
    { Public declarations }
  end;

var
  frmRecibos: TfrmRecibos;
  Parcelamento:bool;

implementation

uses principal, baixarecibo, impficharecibo, parcelarecibo;

{$R *.dfm}

procedure TfrmRecibos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRecibos.wwDBNavigator1ButtonClick(Sender: TObject);
begin
   close;
end;

procedure TfrmRecibos.FormShow(Sender: TObject);
begin
   Transacao( frmREcibos, trnREcibos );
   if not abre( [tblClientes, tblRecibos, tblArquitetos ] ) then close;
end;

procedure TfrmRecibos.wwDBNavigator1Button1Click(Sender: TObject);
var
recibo:integer;
begin
  // Localiza a OS
  try
    recibo := StrToInt(InputBox('Localizar recibo', 'Número do recibo', '0'));
    if not tblRecibos.Locate('id', recibo, []) then
      Erro('Recibo não cadastrado !');
  except
    Erro('Digite um valor numérico !');
    abort;
  end;


end;

procedure TfrmRecibos.tblRecibosAfterEdit(DataSet: TDataSet);
begin
   edtID.Enabled := ( tblRecibos.state = dsInsert );
   edtParcela.Enabled := ( tblRecibos.state = dsInsert );   
   if not baixa then dlgRecibo.Execute;
end;

procedure TfrmRecibos.grdrecibosclienteDblClick(Sender: TObject);
begin
   tblRecibos.Edit;
end;

procedure TfrmRecibos.tblRecibosAfterPost(DataSet: TDataSet);
begin
   tblRecibos.Transaction.Commitretaining;
end;

procedure TfrmRecibos.tblRecibosAfterDelete(DataSet: TDataSet);
begin
   tblRecibos.Transaction.Commitretaining;
end;

procedure TfrmRecibos.tblRecibosBeforePost(DataSet: TDataSet);
begin
   // atribui saldo igual ao valor
   with tblRecibos do
      if state = dsInsert then
         fieldbyName( 'saldo' ).ascurrency := fieldByName( 'Valor' ).ascurrency - fieldbyname( 'desconto' ).asCurrency;
end;

procedure TfrmRecibos.wwDBNavigator1Button2Click(Sender: TObject);
begin
 if tblRecibos.fieldByName( 'saldoAberto' ).asCurrency = 0 then
 begin
   erro( 'Recibo com saldo zerado !' );
   exit;
 end;

   baixa := true;
   Application.Createform( TfrmBaixaRecibo, frmBaixaRecibo );
   frmBaixarecibo.ShowModal;
   frmBaixaRecibo.Free;
   baixa := false;
end;

procedure TfrmRecibos.wwDBNavigator1Button3Click(Sender: TObject);
begin
 if tblRecibos.fieldByName( 'saldoAberto' ).asCurrency = 0 then
 begin
   erro( 'Recibo com saldo zerado !' );
   exit;
 end;
 if confirma( 'Deseja a baixa total deste recibo no dia de hoje ? ' ) then
 baixa := true;
 with tblrecibos do
 begin
   edit;
   fieldbyname( 'saldo' ).ascurrency         := fieldbyname( 'desconto' ).asCurrency;
   fieldbyname( 'pagamento' ).asdatetime     := now;
   post;
 end;
 baixa := false;

   if confirma( 'Deseja imprimir o recibo deste pagamento ?' ) then
   begin
     tblClientes.Locate( 'codigo' , tblRecibos.fieldbyname( 'cliente' ).asinteger , [] );
     with frmRecibos.tblRecibos do
     ImprimeRecibo( fieldbyname( 'valor' ).asCurrency - fieldbyname( 'Desconto' ).asCurrency,
                    fieldByName( 'id' ).asString +'-'+fieldbyname( 'parcela' ).asString,
                    fieldByName( 'data' ).asDateTime,
                    fieldByName( 'vencimento' ).asDateTime,
                    fieldbyname( 'descricao' ).asString ,
                    [tblClientes.fieldByName( 'nome' ).asString,
                    tblClientes.fieldByName( 'endereco' ).asString,
                    tblClientes.fieldByNAme( 'Cidade' ).asString,
                    tblClientes.fieldByName( 'cnpj_cpf' ).DisplayText,
                    tblClientes.fieldByNAme( 'inscricaoestadual' ).asString  ] );
     end;

end;

procedure TfrmRecibos.wwDBNavigator1Button4Click(Sender: TObject);
begin
if confirma( 'Deseja estornar as baixa deste recibo ?' ) then
begin;


   baixa := true;
   with tblRecibos do
   begin
      if fieldbyname( 'pagamento' ).asString = '' then
      begin
         Erro( 'Não há pagamentos neste recibo !' );
         abort;
      end;
      
      edit;
      fieldByName( 'saldo' ).ascurrency      := fieldbyname( 'valor' ).ascurrency;
      fieldbyname( 'pagamento' ).asstring    := '';
      post;
   end;

   with sqlDeletaPgtos do
   begin
      parambyname( 'recibo' ).asInteger   := tblRecibos.fieldbyname( 'id' ).asInteger;
      parambyname( 'parcela' ).asInteger  := tblRecibos.fieldbyname( 'parcela' ).asInteger;
      ExecQuery;
   end;

   baixa := false;
end;
end;

procedure TfrmRecibos.wwDBNavigator1Button5Click(Sender: TObject);
begin

   tblClientes.Locate( 'codigo' , tblRecibos.fieldbyname( 'cliente' ).asinteger , [] );
   with tblRecibos do
   ImprimeRecibo( fieldByName( 'valor' ).asCurrency - fieldbyname( 'desconto' ).asCurrency,
                  fieldByName( 'id' ).asString +'-'+fieldbyname( 'parcela' ).asString,
                  fieldByName( 'data' ).asDateTime,
                  fieldByName( 'vencimento' ).asDateTime,
                  fieldbyname( 'descricao' ).asString ,
                  [tblClientes.fieldByName( 'nome' ).asString,
                   tblClientes.fieldByName( 'endereco' ).asString,
                   tblClientes.fieldByNAme( 'Cidade' ).asString,
                   tblClientes.fieldByName( 'cnpj_cpf' ).DisplayText,
                   tblClientes.fieldByNAme( 'inscricaoestadual' ).asString  ] );
end;

procedure TfrmRecibos.tblClientesAfterScroll(DataSet: TDataSet);
begin
   with tblClientes do
      if fieldByName( 'Pessoa' ).asString = 'J' then
         fieldByName( 'CNPJ_CPF' ).EditMask := '##.###.###/####-##;0;_'
      else fieldByName( 'CNPJ_CPF' ).EditMask := '###.###.###-##;0;_'
end;

procedure TfrmRecibos.tblRecibosCalcFields(DataSet: TDataSet);
begin
   with tblRecibos do
    fieldbyname( 'SaldoAberto' ).asCurrency :=
      fieldbyname( 'Saldo' ).asCurrency - fieldbyname( 'Desconto' ).asCurrency
end;

Procedure TfrmRecibos.GravaBaixa( Recibo:Integer; Parcela:SmallInt; Data:TdateTime; Valor:Currency );
begin

     with sqlGravabaixa do
     begin
          parambyname( 'Data' ).asDateTime        := Data;
          parambyname( 'Recibo' ).asInteger       := Recibo;
          parambyname( 'Valor' ).asCurrency       := Valor;
          parambyname( 'Parcela' ).asInteger      := Parcela;
          ExecQuery;
     end;

end;

procedure TfrmRecibos.wwDBNavigator1Button6Click(Sender: TObject);
begin
   Application.CreateForm( TfrmImpFichaRecibo, frmImpfichaRecibo );
   with frmImpFichaRecibo do
   begin
      with qrFicha do
      begin
           with qryValores do
           begin
              close;
              parambyname( 'id' ).asInteger    := tblRecibos.fieldbyname( 'id' ).asInteger;
              open;
           end;

         DetailBand1.Height := 0;
         qrGroup2.Height := 0;
         qrServicos.Caption         := FloatToStrF( qryValores.fieldbyname( 'Servicos' ).asCurrency, ffCurrency , 16 , 2 );
         qrMateriais.Caption        := FloatToStrF( qryValores.fieldbyname( 'Materiais' ).asCurrency, ffcurrency, 16 , 2 );
         qrTotal.Caption            := FloatToStrF( qryValores.fieldbyname( 'Valor' ).asCurrency , ffCurrency , 16 , 2 );
         qrObs.Lines.Clear;
         qrObs.Lines.Text           := tblRecibos.fieldbyname( 'obs' ).asString;
         lblNumero.Caption          := 'Número da ficha :'+IntToStr( tblRecibos.fieldByName( 'ID' ).asInteger )

      end;


      tblFicha.Close;
      tblFicha.ParamByName( 'recibo' ).asInteger   := tblRecibos.fieldbyname( 'id' ).asInteger;
      tblFicha.Open;
      qrFicha.PreviewModal;
      close;
      free;

   end;
end;

procedure TfrmRecibos.edtIDExit(Sender: TObject);
begin

   if tblRecibos.state = dsInsert then
   Begin

      // se o numero do recibo é zero, pega o próximo automaticamente..

      if ( tblRecibos.fieldbyname( 'ID' ).asInteger   = 0 ) then
         with qryUltimoRecibo do
         begin
            close;
            open;
            tblRecibos.fieldByName( 'id' ).asInteger  := fieldByName( 'ID' ).asInteger + 1;
         end;

      // calcula a próxima parcela

      with qryQt do
      begin
         close;
         parambyname( 'id' ).asInteger := tblRecibos.fieldbyname( 'id' ).asInteger;
         open;
         tblRecibos.fieldbyname( 'parcela' ).asInteger   := fieldbyname( 'qt' ).asInteger+1;
      end;

   end;

end;

procedure TfrmRecibos.wwDBNavigator1Button7Click(Sender: TObject);
begin

   if tblRecibos.fieldbyname( 'Pagamento' ).asString <> '' then
   begin
      Erro( 'Esse recibo já possui pagamentos e não pode ser parcelado !' );
      exit;
   end;

   parcelamento := true;
   application.CreateForm( TfrmParcelaRecibo, frmParcelaRecibo );
   frmParcelaRecibo.ShowModal;
end;

procedure TfrmRecibos.tblRecibosBeforeDelete(DataSet: TDataSet);
begin


   if parcelamento then exit;
   
   with sqlDEletaOS do
   begin
    parambyname( 'Recibo' ).asInteger   := tblRecibos.fieldbyname( 'ID' ).asInteger;
    ExecQuery;
   end;
end;

procedure TfrmRecibos.wwDBNavigator1DeleteClick(Sender: TObject);
begin
   parcelamento := false;
//   if confirma( 'Confirma a exclusão deste item ?' ) then tblRecibos.Delete;
end;

end.
