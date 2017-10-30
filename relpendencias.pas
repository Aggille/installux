unit relpendencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery,
  IBDatabase, StdCtrls, Buttons, wwdbdatetimepicker, wwdblook, RpDefine,
  RpCon, RpConDS, Mask, RxToolEdit, RxCurrEdit, frxClass, frxDBSet;

type
  TfrmRelPendencias = class(TForm)
    btnImprime: TBitBtn;
    BitBtn2: TBitBtn;
    IBTransaction1: TIBTransaction;
    qryServico: TIBQuery;
    qryClientes: TIBQuery;
    dtsClientes: TDataSource;
    edtCliente: TwwDBLookupCombo;
    Label3: TLabel;
    qryClientesCODIGO: TIntegerField;
    qryClientesNOME: TIBStringField;
    qryServicoDATA: TDateField;
    qryServicoCHEGADA: TTimeField;
    qryServicoSAIDA: TTimeField;
    qryServicoDATADEPAGAMENTO: TDateField;
    qryServicoMATERIAIS: TIBBCDField;
    qryServicoSERVICOS: TIBBCDField;
    qryServicoTOTAL: TIBBCDField;
    qryServicoNOMEDOCLIENTE: TIBStringField;
    qryServicoFUNCIONARIO: TIBStringField;
    qryServicoOS: TIntegerField;
    qryServicoHORAS: TTimeField;
    qryServicoTOTHORAS: TIntegerField;
    qryServicoTOTMINUTOS: TIntegerField;
    qryItems: TIBQuery;
    dtsServico: TDataSource;
    qryItemsOS: TIntegerField;
    qryItemsQUANTIDADE: TLargeintField;
    qryItemsNOMEDOPRODUTO: TIBStringField;
    qryItemsNOMEDOAMBIENTE: TIBStringField;
    qryServicoCLIENTE: TIntegerField;
    qryServicoQUANTIDADE: TSmallintField;
    qryItemsTIPO: TIBStringField;
    qryItemsTOTAL: TIBBCDField;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edtMateriais: TCurrencyEdit;
    edtServicos: TCurrencyEdit;
    edtResponsavel: TComboBox;
    Label4: TLabel;
    lblMensagem: TLabel;
    qryClientesFANTASIA: TIBStringField;
    frxDBDItens: TfrxDBDataset;
    frxDBDServico: TfrxDBDataset;
    frxReport1: TfrxReport;
    qryTotais: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimeClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryServicoCalcFields(DataSet: TDataSet);
    procedure qryServicoAfterScroll(DataSet: TDataSet);
    procedure qryServicoAfterOpen(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPendencias: TfrmRelPendencias;
  tHora, tMinuto, tSegundo: Word;
  tHoraDia, tMinutoDia, tSegundoDia: Word;
  cli:Integer;
  horas: Integer;
  minutos: Integer;
  h: string;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelPendencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmRelPendencias.btnImprimeClick(Sender: TObject);
begin

 with qryServico do
  begin

    close;

    if edtCliente.Text = '' then
    begin
      paramByName('ClienteInicial').asInteger := 0;
      paramByName('ClienteFinal').asInteger := 99999;
    end
    else
    begin
      paramByName('ClienteInicial').asInteger := qryClientes.fieldByName('Codigo').asInteger;
      paramByName('ClienteFinal').asInteger := qryClientes.fieldByName('Codigo').asInteger;
    end;

    open;

  end;

  with qryItems do
  begin

    close;
    open;

  end;

   lblMensagem.Caption := 'Preparando relatório... ';
   application.ProcessMessages;

   with frxReport1 do
   begin
    prepareReport( true );
    showPreparedReport;
    lblMensagem.Caption := '';
   end;
end;

procedure TfrmRelPendencias.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmRelPendencias.FormShow(Sender: TObject);
begin
   with edtResponsavel do
   begin
    Items.Clear;
    Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel1' ).asString );
    Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel2' ).asString );
   end;

  if not abre([qryClientes]) then
    close;
end;

procedure TfrmRelPendencias.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
horas, minutos,mseg,hora, minuto, segundo:word;


begin

    if( varname = 'totalservicos' ) then
      value := edtServicos.Value;

    if( varname = 'totalmateriais' ) then
      value := edtMateriais.Value;

    if( varname = 'totalcliente' ) then
      value := edtServicos.Value + edtMateriais.Value;

    if( varname = 'desc' ) then
       with qryitems do
       begin
          if fieldbyname( 'tipo' ).asString = '1' then
             value := 'Valor dos materiais:' + FloattoStrF( fieldbyName( 'total' ).ascurrency , ffCurrency, 16 ,2 )
          else
             value :=  'Ambiente : '+ fieldByName( 'NomeDoAmbiente' ).asString ;
       end;


    with frmPrincipal.sqlEmpresa do
    if edtResponsavel.text = fieldbyname( 'Responsavel1' ).asString then
      begin
         if( varname = 'reponsavel' ) then value := fieldbyname( 'Responsavel1' ).asString ;
         if( varname = 'crea' ) then value := fieldbyname( 'CREA1' ).asString ;
         if( varname = 'celular' ) then value := fieldbyname( 'Fone_Resp1' ).asString  ;
      end
    else
      begin
         if( varname = 'responsavel' ) then value := fieldbyname( 'Responsavel2' ).asString ;
         if( varname = 'crea' ) then value := fieldbyname( 'CREA2' ).asString ;
         if( varname = 'celular' ) then value := fieldbyname( 'Fone_Resp2' ).asString  ;
      end;


  if( varname = 'tothoras' ) then
    begin

      with qryServico do begin

        DecodeTime( fieldByName('horas').asDateTime , Hora, Minuto, Segundo, MSeg);

        horas    := hora     * fieldbyname( 'quantidade' ).asInteger;
        minutos  := minuto   * fieldbyname( 'quantidade' ).asInteger;

        if minutos = 60 then
        begin
           minutos := 0;
           Inc( horas );
        end
        else
        begin
           horas    := horas + ( trunc( minutos / 60 ) );
           minutos  := minutos mod 60;
        end;

        h := Format('%d:%d', [horas, minutos]);

        tHora     := tHora + horas;
        tMinuto   := tMinuto + minutos;

      end;

       value := h;

    end;

    if( varname = 'tothorasgeral' ) then
    begin

        horas    := tHora;
        minutos  := tMinuto;

        if minutos = 60 then
        begin
           minutos := 0;
           Inc( horas );
        end
        else
        begin
           horas    := horas + ( trunc( minutos / 60 ) );
           minutos  := minutos mod 60;
        end;

        h := Format('%d:%d', [horas, minutos]);

        value := h;

    end;

end;

procedure TfrmRelPendencias.qryServicoCalcFields(DataSet: TDataSet);
var
mseg,hora, minuto, segundo:word;
begin
  with qryServico do
    begin
      fieldByName('Horas').asDateTime        := fieldByName('Saida').asDateTime - fieldbyName('Chegada').asDateTime;
      DecodeTime( fieldByName('horas').asDateTime, Hora, Minuto, Segundo, MSeg);

      if fieldByName( 'Quantidade' ).asInteger = 0 then
      begin
         fieldByName('TotHoras').asinteger      := Hora;
         fieldByName('totMinutos').asInteger    := Minuto;
      end
      else
      begin
         fieldByName('TotHoras').asinteger      := Hora * fieldByName( 'Quantidade' ).asInteger;
         fieldByName('totMinutos').asInteger    := Minuto * fieldByName( 'Quantidade' ).asInteger;
      end;
    end;
end;

procedure TfrmRelPendencias.qryServicoAfterScroll(DataSet: TDataSet);
var
horas, minutos,mseg,hora, minuto, segundo:word;

begin

      with qryServico do begin

      DecodeTime( fieldByName('horas').asDateTime , Hora, Minuto, Segundo, MSeg);

      horas    := hora     * fieldbyname( 'quantidade' ).asInteger;
      minutos  := minuto   * fieldbyname( 'quantidade' ).asInteger;

      if minutos = 60 then
      begin
         minutos := 0;
         Inc( horas );
      end
      else
      begin
         horas    := horas + ( trunc( minutos / 60 ) );
         minutos  := minutos mod 60;
      end;

      h := Format('%d:%d', [horas, minutos]);

      end;

       frmPrincipal.rvinstallux.Setparam( 'tothoras' , h );

end;

procedure TfrmRelPendencias.qryServicoAfterOpen(DataSet: TDataSet);
begin
  tHora := 0;
  tMinuto := 0;
  tSegundo := 0;
  tHoraDia := 0;
  tMinutoDia := 0;
  tSegundoDia := 0;
end;

procedure TfrmRelPendencias.BitBtn3Click(Sender: TObject);
var
servicos, materiais, total:currency;
begin

  if( edtCliente.Text = '' ) then
    begin
      erro( 'Selecione o cliente' );
      exit;
    end;

  lblmensagem.Caption := 'Calculando...';
  lblMensagem.Update;

   servicos := 0;
   materiais := 0;
   total := 0;

try

 with qryTotais do
  begin

    close;

    if edtCliente.Text = '' then
    begin
      paramByName('ClienteInicial').asInteger := 0;
      paramByName('ClienteFinal').asInteger := 99999;
    end
    else
    begin
      paramByName('ClienteInicial').asInteger := qryClientes.fieldByName('Codigo').asInteger;
      paramByName('ClienteFinal').asInteger := qryClientes.fieldByName('Codigo').asInteger;
    end;

    open;

    servicos    := fieldByName( 'Servicos' ).asCurrency;
    materiais   := fieldByName( 'Materiais' ).asCurrency;

    edtServicos.Value   := Servicos;
    edtMateriais.Value  := Materiais;
    btnImprime.Enabled := True;
    btnImprime.Setfocus;

  end;

finally

  lblmensagem.Caption := '';
  lblMensagem.Update;


end;

end;

end.
