unit servicosdocliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, RzDBLbl, DB, Grids, Wwdbigrd, Wwdbgrid,
  IBCustomDataSet, wwdblook, Buttons, DBCtrls, IBQuery,  wwDialog,
  wwrcdvw, ExtCtrls, Mask, wwcheckbox, JvComponent, JvRollOut, QuickRpt,
  QRCtrls, jpeg, IBSQL, RpDefine, RpCon, RpConDS, IBDatabase;

type
  TfrmServicosCliente = class(TForm)
    tblServicos: TIBDataSet;
    grdServicos: TwwDBGrid;
    dtsServicos: TDataSource;
    btnSair: TBitBtn;
    qryValor: TIBQuery;
    dtsValor: TDataSource;
    Label1: TLabel;
    qryValorTOTAL: TIBBCDField;
    btnImprime: TBitBtn;
    DBEdit1: TDBEdit;
    grdOS: TwwDBGrid;
    tblOS: TIBDataSet;
    dtsOS: TDataSource;
    tblOSCHEGADA: TTimeField;
    tblOSCLIENTE: TIntegerField;
    tblOSDATA: TDateField;
    tblOSDATADEPAGAMENTO: TDateField;
    tblOSFUNCIONARIO: TIntegerField;
    tblOSOS: TIntegerField;
    tblOSSAIDA: TTimeField;
    tblOSVALORCOBRADO: TIBBCDField;
    tblOSNOMEDOCLIENTE: TIBStringField;
    tblOSNOMEDOFUNCIONARIO: TIBStringField;
    tblServicosPRECO: TIBBCDField;
    tblServicosTOTAL: TIBBCDField;
    tblServicosQUANTIDADE: TIntegerField;
    tblServicosAMBIENTE: TIBStringField;
    tblServicosPRODUTO: TIBStringField;
    tblOSQTITENS: TIntegerField;
    btnTodas: TBitBtn;
    BitBtn1: TBitBtn;
    tblFicha: TIBDataSet;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    DataSource1: TDataSource;
    tblFichaDATA: TDateField;
    tblFichaVALORCOBRADOMATERIAIS: TIBBCDField;
    tblFichaVALORCOBRADOSERVICOS: TIBBCDField;
    tblFichaOBS: TBlobField;
    tblFichaRESPONSAVEL: TIBStringField;
    tblFichaNOMEDOCLIENTE: TIBStringField;
    tblFichaTELEFONE: TIBStringField;
    tblFichaNOMEDOARQUITETO: TIBStringField;
    tblFichaAMBIENTE: TIntegerField;
    tblFichaNOMEDOAMBIENTE: TIBStringField;
    qryValorVALORSERVICOS: TIBBCDField;
    qryValorVALORMATERIAIS: TIBBCDField;
    tblFichaOS: TIntegerField;
    tblOSBotao: TStringField;
    Label2: TLabel;
    lblHoras: TLabel;
    tblOSQUANTIDADE: TSmallintField;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    tblRecibos: TIBDataSet;
    tblUltimoRecibo: TIBDataSet;
    tblUltimoReciboID: TIntegerField;
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
    tblOSRECIBO: TIntegerField;
    tblRecibosHORAS: TIBStringField;
    sqlAlteraOS: TIBSQL;
    tblRecibosSALDO: TIBBCDField;
    tblRecibosARQUITETO: TSmallintField;
    tblOSARQUITETO: TIntegerField;
    tblFichaARQUITETO: TIntegerField;
    tblOShoras: TStringField;
    tblRecibosDESCONTO: TIBBCDField;
    tblRecibosPARCELA: TSmallintField;
    tblRecibosDESCRICAO: TIBStringField;
    rvFichaCli: TRvDataSetConnection;
    trnServicos: TIBTransaction;
    tblFichaEMAIL: TIBStringField;
    tblOSDATA_CONFIRMACAO: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure grdServicosDblClick(Sender: TObject);
    procedure tblOSCalcFields(DataSet: TDataSet);
    procedure wwExpandButton1AfterExpand(Sender: TObject);
    procedure grdOSDblClick(Sender: TObject);
    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure btnTodasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure grdOSURLOpen(Sender: TObject; var URLLink: String;
      Field: TField; var UseDefault: Boolean);
    procedure tblOSAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServicosCliente: TfrmServicosCliente;
  datafinal:TDate;
implementation

uses clientes, principal, OS, pededata, impficha, eFuncoes;

{$R *.dfm}

procedure TfrmServicosCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmServicosCliente.FormShow(Sender: TObject);
begin

  Transacao( frmServicosCliente, trnServicos );
  application.CreateForm( TfrmData, frmData );

  tblOS.Close;
  tblOS.ParamByName('cliente').AsInteger   := frmClientes.tblClientes.FieldByName('Codigo').AsInteger;

   with frmData do
   begin
      lblTexto.Caption  := 'Considerar até o dia';
      edtData.Date      := now;
      ShowModal;
      datafinal := edtData.date;
      tblOS.paramByName( 'DataFinal' ).asDate      := edtData.Date;
      qryValor.paramByName( 'DataFinal' ).asDate   := edtData.Date;
      close;
      free;
   end;

   tblos.open;
   qryvalor.open;
   tblservicos.open;
   tblrecibos.open;

//  if not abre([tblOS, qryValor, tblServicos, tblRecibos]) then
//    Close;
end;

procedure TfrmServicosCliente.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmServicosCliente.btnImprimeClick(Sender: TObject);
var
responsavel:String[50];
begin


   tblFicha.paramByName( 'datafinal' ).asDateTime  := datafinal;
   tblFicha.Open;

   Application.CreateForm( TfrmImpficha, frmImpficha );

   with frmImpFicha do
   begin
      edtMateriais.Value         := qryValor.fieldByName( 'ValorMateriais' ).ascurrency;
      edtServicos.Value          := qryValor.fieldByName( 'ValorServicos' ).ascurrency;
      edtMateriaisCobrados.Value := qryValor.fieldByName( 'ValorMateriais' ).ascurrency;
      edtServicosCobrados.Value  := qryValor.fieldByName( 'ValorServicos' ).ascurrency;
      ShowModal;
      if ModalResult = mrOK then
      begin
         tblUltimoRecibo.Close;
         tblUltimoRecibo.Open;
        with frmPrincipal.rvInstallux do
        begin

          SetParam( 'totServicos' , FloatToStrF( edtServicosCobrados.Value, ffCurrency , 16 , 2 ) );
          SetParam( 'totMateriais', FloatToStrF( edtMateriaisCobrados.Value, ffcurrency, 16 , 2 ) );
          SetParam( 'totGeral'    , FloatToStrF( edtServicosCobrados.Value + edtMateriaisCobrados.Value , ffCurrency , 16 , 2 ));
          SetParam( 'responsavel' , edtResponsavel.Text );
          Setparam( 'obs'         , edtObs.text );

         if edtGeraRecibo.Checked then
          SetParam( 'ficha' , 'Número da ficha :'+IntToStr( tblUltimoRecibo.fieldByName( 'ID' ).asInteger+1 ) )
         else
          SetParam( 'ficha' , '' );

          ExecuteReport( 'rptFicha' );

         end;

         { Se está marcado pra gerar o recibo, grava na tabela Recibos }

         if edtGeraRecibo.Checked then
         begin
            with tblRecibos do
            begin
               insert;
               fieldbyname( 'id' ).asInteger                := tblultimorecibo.fieldbyname('id'  ).asInteger+1;
               fieldbyname( 'parcela' ).asInteger           := 1;
               fieldByName( 'data' ).asdatetime             := now;
               fieldbyname( 'valor' ).ascurrency            := edtServicosCobrados.Value + edtMateriaisCobrados.Value;
               fieldbyname( 'saldo' ).ascurrency            := edtServicosCobrados.Value + edtMateriaisCobrados.Value;
               fieldbyname( 'vencimento' ).asdatetime       := now;
               fieldbyname( 'obs' ).asstring                := edtobs.text;
               fieldbyname( 'cliente' ).asinteger           := tblos.fieldbyname( 'cliente' ).asinteger;
               fieldbyname( 'materiais' ).ascurrency        := qryvalor.fieldbyname( 'valormateriais' ).ascurrency;
               fieldbyname( 'servicos' ).ascurrency         := qryvalor.fieldbyname( 'valorservicos' ).ascurrency;
               fieldbyname( 'materiais_cobrado' ).ascurrency:= edtmateriaiscobrados.value;
               fieldbyname( 'servicos_cobrado' ).ascurrency := edtservicoscobrados.value;
               fieldbyname( 'horas' ).asstring              := lblhoras.caption;
               fieldbyname( 'arquiteto' ).asinteger         := tblficha.fieldbyname( 'arquiteto' ).asinteger;
               fieldbyname( 'descricao' ).asstring          := edtDescricao.text;
               post;
            end;


            with tblOS do
            begin
               first;
               while not eof do
               begin
                  with sqlAlteraOS do
                  begin
                     paramByName( 'recibo' ).asInteger   := tblUltimoRecibo.fieldByName( 'ID' ).asInteger+1;
                     paramByName( 'OS' ).asInteger       := tblOS.fieldByName( 'OS' ).asInteger;
                     execQuery;
                  end;
                  next;

               end;
            end;
         end;
      end;

      // Atualiza as OS

      if frmImpFicha.edtImprimeRecibo.checked then
      begin

         with tblRecibos do
         ImprimeRecibo( fieldByName( 'valor' ).asCurrency,
                        fieldByName( 'id' ).asString ,
                        fieldByName( 'data' ).asDateTime,
                        fieldByName( 'vencimento' ).asDateTime,
                        fieldbyname( 'descricao' ).asString ,
                        [frmClientes.tblClientes.fieldByName( 'nome' ).asString,
                        frmClientes.tblClientes.fieldByName( 'endereco' ).asString,
                        frmClientes.tblClientes.fieldByName( 'Cidade' ).asString,
                        frmClientes.tblClientes.fieldByName( 'cnpj_cpf' ).DisplayText,
                        frmClientes.tblClientes.fieldByNAme( 'inscricaoestadual' ).asString  ] );


      end;
      frmImpFicha.Free;
      frmClientes.trnClientes.CommitRetaining;
      frmServicosCliente.Close;
   end;

end;

procedure TfrmServicosCliente.grdServicosDblClick(Sender: TObject);
var
  registro: TBookMark;
begin
end;

procedure TfrmServicosCliente.tblOSCalcFields(DataSet: TDataSet);
var
h, m,s,ms:word;
dif:TTime;
minutos,horas:integer;
begin
  with tblOS do
  begin

    if recordcount <= 0 then exit;

//   if ( fieldbyname( 'saida' ).Value = null ) and ( fieldbyname( 'Chegada' ).Value = null ) then
//      dif := Strtotime( '0:0' )
//   else

    if ( fieldbyname( 'saida' ).Value = null ) then
      fieldbyname( 'saida' ).Value  := strToTime( '0:0' );

    if ( fieldbyname( 'chegada' ).Value = null ) then
      fieldbyname( 'chegada' ).Value  := strToTime( '0:0' );


      dif :=  ( FieldByName('Saida').Value - FieldByName('Chegada').Value );

   DecodeTime( dif, h,m,s,ms );
   h := h * fieldbyname( 'quantidade' ).asInteger;
   m := m * fieldbyname( 'quantidade' ).asInteger;

   Horas       := Trunc( m / 60);
   Minutos     := m - ( horas * 60);
   m           := Minutos;
   h           := h  + Horas;

   FieldByName('Horas').asString := Format( '%s:%s' , [StrZero(h,2,0) , StrZero( m,2,0 )] );
   fieldByName( 'Botao' ).asString := 'Alterar';
  end;
end;

procedure TfrmServicosCliente.wwExpandButton1AfterExpand(Sender: TObject);
begin
  grdServicos.Left := grdOS.left;
end;

procedure TfrmServicosCliente.grdOSDblClick(Sender: TObject);
begin

  with grdos do
   if not isSelected then SelectRecord else UnselectRecord;;

//   with grdOS do
//      if not IsSelected then SelectRecord else UnselectRecord;


end;

procedure TfrmServicosCliente.wwExpandButton1BeforeExpand(Sender: TObject);
begin
  with tblServicos do
  begin
    Close;
    paramByName('OS').AsInteger := tblOS.FieldByName('OS').AsInteger;
    Open;
  end;
end;

procedure TfrmServicosCliente.btnTodasClick(Sender: TObject);
begin
  grdOS.SelectAll;
end;

procedure TfrmServicosCliente.BitBtn1Click(Sender: TObject);
var
  Data: TDateTime;
begin

   if grdOS.Selected.Count <= 0 then
      DatabaseError( 'Não há OS selecionadas. Para selecionar varios registros, mantenha a tecla CTRL pressionada enquanto clica sobre a(s) OS desejad(a)' );

  Application.CreateForm(Tfrmdata, frmData);

  with frmData do
  begin
    edtData.Date := NOW;
    ShowModal;

    if modalResult = mrCancel then
    begin
      Free;
      exit;
    end;

    Data := edtData.Date;
    Free;
  end;

  with tblOS do
  begin
    First;

    while not EOF do
    begin
      if grdOS.isSelected then
      begin
        edit;
        FieldByName('DataDePagamento').AsDateTime := Data;
        Post;
      end;
      Next;
    end;
  end;

  with tblOS do
  begin
    Transaction.CommitRetaining;
    Close;
    Open;
    grdOS.UnselectAll;
    qryValor.Close;
    qryValor.Open;
  end;
end;

procedure TfrmServicosCliente.grdOSURLOpen(Sender: TObject;
  var URLLink: String; Field: TField; var UseDefault: Boolean);
begin

  // Edita a OS.

  Application.CreateForm(TfrmOS, frmOS);
  frmOS.OS := True;

  with frmOS do
  begin
    Transacao( frmOS, trnServicos );
    edtOSPesquisa.Value := frmServicosCliente.tblOS.FieldByName('OS').AsInteger;
    btnPesquisa.Click;
    ShowModal;
  end;

   trnServicos.CommitRetaining;
   tblOS.Close;
   qryValor.Close;

   tblOs.Open;
   qryValor.Open;


end;

procedure TfrmServicosCliente.tblOSAfterOpen(DataSet: TDataSet);
var
hora, minuto, segundo, mseg:word;
tothora, totminuto:integer;
horas, minutos:Integer;

begin

   // Recalcula as horas deste cliente
   tothora     := 0;
   totMinuto   := 0;
   with tblOS do
   begin

      if RecordCount <=0 then exit;

      first;
      while not eof do begin
//         DecodeTime(fieldByName('horas').asDateTime, Hora, Minuto, Segundo, MSeg);


        if fieldbyname( 'horas' ).asString <> '' then
        begin
         hora   := StrToInt( copy( fieldbyname( 'horas' ).asString , 0 , 2 ) );
         minuto := StrToInt( copy( fieldbyname( 'horas' ).asString , 4 , 2 ) );
        end;


//       totHora        := totHora + ( Hora * fieldByName( 'Quantidade' ).asInteger );
         totHora        := totHora + Hora;
         totMinuto      := totMinuto + Minuto;
         next;
      end;
      first;
      Horas       := Trunc( totMinuto / 60);
      Minutos     := totminuto - ( horas * 60);
      totMinuto   := Minutos;
      totHora     := TotHora  + Horas;
      lblHoras.Caption := Format( '%s:%s' , [StrZero( tothora,2,0) , strzero(totminuto,2,0) ] );
   end;

end;

end.

