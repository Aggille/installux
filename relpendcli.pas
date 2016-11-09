unit relpendcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdblook, StdCtrls, wwdbdatetimepicker, Buttons, DB,
  IBCustomDataSet, IBQuery, IBDatabase, RpDefine, RpCon, RpConDS;

type
  TfrmRelPendcli = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryclientes: TIBQuery;
    IBTransaction1: TIBTransaction;
    edtCliente: TwwDBLookupCombo;
    qryRecibos: TIBQuery;
    rvPendCli: TRvDataSetConnection;
    qryRecibosID: TIntegerField;
    qryRecibosSALDO: TIBBCDField;
    qryRecibosVALOR: TIBBCDField;
    qryRecibosSERVICOS_COBRADO: TIBBCDField;
    qryRecibosMATERIAIS_COBRADO: TIBBCDField;
    qryRecibosCLIENTE: TIntegerField;
    qryRecibosDATA: TDateField;
    qryRecibosVENCIMENTO: TDateField;
    qryRecibosNOME: TIBStringField;
    qryRecibosSERVICOS: TIBBCDField;
    qryRecibosMATERIAIS: TIBBCDField;
    qryRecibosSALDO_ABERTO: TCurrencyField;
    qryRecibosDESCONTO: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryRecibosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPendcli: TfrmRelPendcli;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelPendcli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRelPendcli.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmRelPendcli.FormShow(Sender: TObject);
begin
   if not abre( [ qryclientes ] ) then close;
end;

procedure TfrmRelPendcli.BitBtn1Click(Sender: TObject);
begin

   with qryRecibos do
   begin
      close;
      parambyname( 'vencimentoinicial' ).asdatetime      := edtinicio.date;
      parambyname( 'vencimentofinal' ).asdatetime        := edtfinal.date;

      if edtcliente.text = '' then
      begin
         parambyname( 'clienteinicial' ).asinteger := 0;
         parambyname( 'clientefinal' ).asinteger   := 9999;
      end
      else
      begin
         parambyname( 'clienteinicial' ).asinteger := qryclientes.fieldbyname( 'codigo' ).asinteger;
         parambyname( 'clientefinal' ).asinteger   := qryclientes.fieldbyname( 'codigo' ).asinteger;
      end;
   end;

   abre( [qryrecibos] );

   frmPrincipal.rvInstallux.ExecuteReport( 'rptPendCli' );

end;

procedure TfrmRelPendcli.qryRecibosCalcFields(DataSet: TDataSet);
begin
   with qryRecibos do
    fieldbyname( 'Saldo_Aberto' ).asCurrency :=
      fieldbyname( 'Saldo' ).asCurrency - fieldbyname( 'Desconto' ).asCurrency


end;

end.
