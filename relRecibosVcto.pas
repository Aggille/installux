unit relRecibosVcto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons,
  wwdbdatetimepicker, RpDefine, RpCon, RpConDS;

type
  TfrmRelRecibosVcto = class(TForm)
    Label1: TLabel;
    edtInicio: TwwDBDateTimePicker;
    Label2: TLabel;
    edtFinal: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryRecibos: TIBQuery;
    qryRecibosID: TIntegerField;
    qryRecibosSALDO: TIBBCDField;
    qryRecibosVALOR: TIBBCDField;
    qryRecibosSERVICOS_COBRADO: TIBBCDField;
    qryRecibosMATERIAIS_COBRADO: TIBBCDField;
    qryRecibosCLIENTE: TIntegerField;
    qryRecibosDATA: TDateField;
    qryRecibosVENCIMENTO: TDateField;
    qryRecibosSERVICOS: TIBBCDField;
    qryRecibosMATERIAIS: TIBBCDField;
    IBTransaction1: TIBTransaction;
    rvRecibosPorVcto: TRvDataSetConnection;
    qryRecibosNOME: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRecibosVcto: TfrmRelRecibosVcto;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelRecibosVcto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRelRecibosVcto.BitBtn1Click(Sender: TObject);
begin
   with qryRecibos do
   begin
      close;
      parambyname( 'vencimentoinicial' ).asdate    := edtinicio.date;
      parambyname( 'vencimentofinal' ).asdate      := edtfinal.date;
      open;
   end;

   frmPrincipal.rvInstallux.ExecuteReport( 'rptRecibosVcto' );

end;

procedure TfrmRelRecibosVcto.BitBtn2Click(Sender: TObject);
begin
   CLOSE;
end;

procedure TfrmRelRecibosVcto.FormShow(Sender: TObject);
begin
   edtfinal.date := now;
end;

end.
