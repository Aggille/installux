unit relPendArq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RpDefine, RpCon, RpConDS, IBDatabase, IBCustomDataSet,
  IBQuery, wwdblook, StdCtrls, wwdbdatetimepicker, Buttons, Grids, DBGrids;

type
  TfrmPendArq = class(TForm)
    qryRecibos: TIBQuery;
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
    qryArquitetos: TIBQuery;
    IBTransaction1: TIBTransaction;
    rvPendArq: TRvDataSetConnection;
    qryRecibosARQUITETO: TSmallintField;
    qryRecibosNOMEARQUITETO: TIBStringField;
    Label1: TLabel;
    Label2: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    Label3: TLabel;
    edtArquiteto: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qryRecibosCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPendArq: TfrmPendArq;

implementation

uses principal;

{$R *.dfm}

procedure TfrmPendArq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmPendArq.FormShow(Sender: TObject);
begin
   if not abre( [qryArquitetos] ) then close;
end;

procedure TfrmPendArq.qryRecibosCalcFields(DataSet: TDataSet);
begin
   with qryRecibos do
    fieldbyname( 'Saldo_Aberto' ).asCurrency :=
      fieldbyname( 'Saldo' ).asCurrency - fieldbyname( 'Desconto' ).asCurrency

end;

procedure TfrmPendArq.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmPendArq.BitBtn1Click(Sender: TObject);
begin

   with qryRecibos do
   begin
      close;
      parambyname( 'vencimentoinicial' ).asdatetime      := edtinicio.date;
      parambyname( 'vencimentofinal' ).asdatetime        := edtfinal.date;

      if edtArquiteto.text = '' then
      begin
         parambyname( 'arquitetoinicial' ).asinteger := 0;
         parambyname( 'arquitetofinal' ).asinteger   := 9999;
      end
      else
      begin
         parambyname( 'arquitetoinicial' ).asinteger := qryArquitetos.fieldbyname( 'codigo' ).asinteger;
         parambyname( 'arquitetofinal' ).asinteger   := qryArquitetos.fieldbyname( 'codigo' ).asinteger;
      end;
   end;

   abre( [qryrecibos] );

   frmPrincipal.rvInstallux.ExecuteReport( 'rptPendArq' );


end;

end.
