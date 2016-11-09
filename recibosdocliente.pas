unit recibosdocliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, IBCustomDataSet,
  IBQuery, ComCtrls, wwriched;

type
  TfrmRecibosCliente = class(TForm)
    lblTitulo: TLabel;
    grdreciboscliente: TwwDBGrid;
    qryRecibos: TIBQuery;
    dtsRecibos: TDataSource;
    qryRecibosID: TIntegerField;
    qryRecibosDATA: TDateField;
    qryRecibosVALOR: TIBBCDField;
    qryRecibosVENCIMENTO: TDateField;
    qryRecibosPAGAMENTO: TDateField;
    qryRecibosOBS: TBlobField;
    qryRecibosCLIENTE: TIntegerField;
    qryRecibosMATERIAIS: TIBBCDField;
    qryRecibosSERVICOS: TIBBCDField;
    qryRecibosMATERIAIS_COBRADO: TIBBCDField;
    qryRecibosSERVICOS_COBRADO: TIBBCDField;
    qryRecibosHORAS: TIBStringField;
    qryOs: TIBQuery;
    dtsOPs: TDataSource;
    wwDBGrid1: TwwDBGrid;
    qryOsOS: TIntegerField;
    qryOsDATA: TDateField;
    qryOsVALORCOBRADOSERVICOS: TIBBCDField;
    qryOsVALORCOBRADOMATERIAIS: TIBBCDField;
    qryOsVALORCOBRADO: TIBBCDField;
    qryOsNOMEDOFUNCIONARIO: TIBStringField;
    qryRecibosSALDO: TIBBCDField;
    qryRecibosARQUITETO: TSmallintField;
    qryRecibosDESCONTO: TIBBCDField;
    qryRecibosPARCELA: TSmallintField;
    qryOsTOTALDEHORAS: TTimeField;
    qryOsSAIDA: TTimeField;
    qryOsCHEGADA: TTimeField;
    qryOsQUANTIDADE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qryOsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecibosCliente: TfrmRecibosCliente;

implementation

uses clientes, principal, servicosdocliente;

{$R *.dfm}

procedure TfrmRecibosCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRecibosCliente.FormShow(Sender: TObject);
var
Total,tMateriaisC, tServicosC,tMateriais, tServicos:Currency;

begin
  Transacao( frmRecibosCliente, frmClientes.trnClientes );
  // atualiza o titulo
  lblTitulo.caption := 'Recibos do cliente : ' + frmClientes.tblClientes.fieldByName( 'Fantasia' ).asString;

  with qryRecibos do
  begin
   close;
   paramByname( 'Cliente' ).asinteger     := frmclientes.tblclientes.fieldbyname( 'codigo' ).asInteger;
   abre( [qryrecibos, qryOs] );
  end;
  // soma os totais

  tMateriais := 0;
  tServicos := 0;
  tMateriaisC := 0;
  tServicosC := 0;
  Total := 0;


  with qryRecibos do
  begin
   first;

   while not eof do
   begin
      tMateriais     := tMateriais  + fieldbyname( 'materiais' ).ascurrency;
      tServicos      := tServicos   + fieldbyname( 'servicos' ).ascurrency;
      tMateriaisC    := tMateriaisC + fieldbyname( 'materiais_cobrado' ).ascurrency;
      tServicosC     := tServicosC  + fieldbyname( 'servicos_cobrado' ).ascurrency;
      Total          := Total       + fieldbyname( 'valor' ).ascurrency;

      next;
   end;

  end;

  with grdRecibosCliente do
  begin

      columns[3].FooterValue     := 'Totais:';
      columns[4].FooterValue     := FloatTostrF( tMateriais , ffNumber, 16, 2);
      columns[5].FooterValue     := FloatToStrF( tServicos  , ffNumber, 16, 2 );
      columns[6].FooterValue     := FloatTostrF( tMateriaisC, ffNumber, 16, 2);
      columns[7].FooterValue     := FloatToStrF( tServicosC , ffNumber, 16, 2 );
      columns[8].FooterValue     := FloatToStrF( Total      , ffNumber, 16, 2 );

  end;



end;

procedure TfrmRecibosCliente.qryOsCalcFields(DataSet: TDataSet);
begin
  with qryOS do
    fieldByName('TotalDeHoras').Value :=
      ( fieldByName('Saida').Value - fieldByName('Chegada').Value ) * fieldbyname( 'quantidade' ).asInteger;

end;

end.
