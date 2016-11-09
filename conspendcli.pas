unit conspendcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery,
  Grids, DBGrids, IBDatabase, Wwdbigrd, Wwdbgrid, Mask,
  RpDefine, RpCon, RpConDS, DBClient, RxToolEdit, RxCurrEdit;

type
  TfrmPendCli = class(TForm)
    BitBtn1: TBitBtn;
    qryServico: TIBQuery;
    qryServicoDATA: TDateField;
    qryServicoCHEGADA: TTimeField;
    qryServicoSAIDA: TTimeField;
    qryServicoDATADEPAGAMENTO: TDateField;
    qryServicoMATERIAIS: TIBBCDField;
    qryServicoSERVICOS: TIBBCDField;
    qryServicoTOTAL: TIBBCDField;
    qryServicoNOMEDOCLIENTE: TIBStringField;
    qryServicoOS: TIntegerField;
    qryServicoHORAS: TTimeField;
    qryServicoTOTHORAS: TIntegerField;
    qryServicoTOTMINUTOS: TIntegerField;
    qryServicoCLIENTE: TIntegerField;
    dtsServico: TDataSource;
    dtsAux: TDataSource;
    IBTransaction1: TIBTransaction;
    qryPgto: TIBQuery;
    dtsPgto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    qryServicoQUANTIDADE: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtMateriais: TCurrencyEdit;
    edtServicos: TCurrencyEdit;
    edtTotal: TCurrencyEdit;
    qryOS: TIBQuery;
    DateField1: TDateField;
    TimeField1: TTimeField;
    TimeField2: TTimeField;
    DateField2: TDateField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBStringField1: TIBStringField;
    qryServicoFUNCIONARIO: TIBStringField;
    IntegerField1: TIntegerField;
    TimeField3: TTimeField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    SmallintField1: TSmallintField;
    dtsOS: TDataSource;
    wwDBGrid2: TwwDBGrid;
    qryItems: TIBQuery;
    dtsItems: TDataSource;
    wwDBGrid3: TwwDBGrid;
    qryItemsPRODUTO: TIntegerField;
    qryItemsNOME: TIBStringField;
    qryItemsQUANTIDADE: TIntegerField;
    qryItemsPRECO: TIBBCDField;
    qryItemsTOTAL: TIBBCDField;
    Label4: TLabel;
    Label5: TLabel;
    btnImprime: TBitBtn;
    rvConsPend: TRvDataSetConnection;
    Label6: TLabel;
    tblAux: TClientDataSet;
    tblAuxNOME: TStringField;
    tblAuxSERVICOS: TCurrencyField;
    tblAuxMATERIAIS: TCurrencyField;
    tblAuxTOTAL: TCurrencyField;
    tblAuxHORAS: TStringField;
    tblAuxPGTO: TDateField;
    tblAuxCLIENTE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryServicoCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure qryOSCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPendCli: TfrmPendCli;
  tHora, tMinuto, tSegundo: Word;

implementation

uses principal, eFuncoes;

{$R *.dfm}

procedure TfrmPendCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmPendCli.qryServicoCalcFields(DataSet: TDataSet);
var
mseg,hora, minuto, segundo:word;

begin

  with qryServico do
    begin
      fieldByName('Horas').asDateTime        := fieldByName('Saida').asDateTime - fieldbyName('Chegada').asDateTime;
      DecodeTime( fieldByName('horas').asDateTime, Hora, Minuto, Segundo, MSeg);

      if fieldByNAme( 'Quantidade' ).asInteger = 0 then
      begin
         fieldByName('TotHoras').asinteger      := Hora;
         fieldByName('totMinutos').asInteger    := Minuto;
      end
      else
      begin
         fieldByName('TotHoras').asinteger      := Hora * fieldByNAme( 'Quantidade' ).asInteger;
         fieldByName('totMinutos').asInteger    := Minuto * fieldByName( 'Quantidade' ).asInteger;
      end;
    end;

end;

procedure TfrmPendCli.BitBtn1Click(Sender: TObject);
var
cliente :Integer;
minutos,tminutos, thoras,horas:real;

begin
   tblaux.Close;
   tblAux.CreateDataSet;
   qryPgto.Close;
   qryPgto.Open;
   with qryServico do
   begin
      open;

      while not eof do
      begin
         if Cliente <> fieldByNAme( 'Cliente' ).asInteger then
         begin
            tblaux.Insert;
            Cliente := fieldByName( 'cliente' ).asInteger;
            thora := 0;
            tMinuto := 0;
         end;

         tblAux.fieldByName( 'cliente' ).asInteger       := cliente;
         tblAux.fieldByNAme( 'Nome' ).asString           := fieldByName( 'Nomedocliente' ).asString;
         tblaux.fieldByName( 'Servicos' ).aScurrency     := tblAux.fieldByName( 'Servicos' ).ascurrency +
                                                                   fieldByName( 'Servicos' ).asCurrency;

         tblaux.fieldByName( 'Materiais' ).aScurrency    := tblAux.fieldByName( 'Materiais' ).ascurrency +
                                                                   fieldByName( 'Materiais' ).asCurrency;
         tblAux.fieldByNAme( 'Total' ).asCurrency        := tblAux.fieldbyName( 'Total' ).ascurrency +
                                                                   fieldByName( 'Total' ).asCurrency;
         tHora    := tHora    + fieldByName( 'TotHoras' ).asInteger;
         tMinuto  := tMinuto  + fieldByName( 'totMinutos' ).asInteger;

         next;

         if ( cliente <> fieldByName( 'cliente' ).asInteger ) or ( eof )then
         begin
            Horas                := Trunc(tMinuto / 60);
            Minutos              := tMinuto - (horas * 60);
            tMinutos             := Minutos;
            tHoras               := THora+ Horas;
            tblAux.FieldByName( 'Horas' ).asString := Format('%s:%s', [FloatToStrF( thoras, ffNumber, 4 , 0 ) , padlzero( FloatToStrF(tminutos, ffNumber, 2 , 0 ), 2 )]);
            edtMateriais.Value      := edtMateriais.Value   + tblAux.fieldByName( 'Materiais' ).asCurrency;
            edtServicos.Value       := edtServicos.Value    + tblAux.fieldByName( 'Servicos' ).asCurrency;
            edtTotal.Value          := edtTotal.Value       + tblaux.fieldByName( 'Total' ).asCurrency;
         end;
      end;
   end;

   abre( [qryOS, qryitems] );
   btnImprime.enabled := true;
end;

procedure TfrmPendCli.btnImprimeClick(Sender: TObject);
begin
   if tblAux.RecordCount = 0 then
   begin
      Erro( 'Nenhum registro para imprimir !');
      exit;
   end;
   frmPrincipal.rvInstallux.ExecuteReport( 'rptConsPend' );

end;

procedure TfrmPendCli.qryOSCalcFields(DataSet: TDataSet);
var
mseg,hora, minuto, segundo:word;

begin
  with qryOS do
    begin
      fieldByName('Horas').asDateTime        := fieldByName('Saida').asDateTime - fieldbyName('Chegada').asDateTime;
      DecodeTime( fieldByName('horas').asDateTime, Hora, Minuto, Segundo, MSeg);

      if fieldByNAme( 'Quantidade' ).asInteger = 0 then
      begin
         fieldByName('TotHoras').asinteger      := Hora;
         fieldByName('totMinutos').asInteger    := Minuto;
      end
      else
      begin
         fieldByName('TotHoras').asinteger      := Hora * fieldByNAme( 'Quantidade' ).asInteger;
         fieldByName('totMinutos').asInteger    := Minuto * fieldByName( 'Quantidade' ).asInteger;
      end;
    end;

end;

end.
