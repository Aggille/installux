unit relrecibospgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpDefine, RpCon, RpConDS, IBDatabase, DB, IBCustomDataSet,
  IBQuery, StdCtrls, Buttons, wwdbdatetimepicker;

type
  TfrmRelRecibosPgto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtInicio: TwwDBDateTimePicker;
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
    qryRecibosNOME: TIBStringField;
    qryRecibosSERVICOS: TIBBCDField;
    qryRecibosMATERIAIS: TIBBCDField;
    IBTransaction1: TIBTransaction;
    rvRecibosPorPgto: TRvDataSetConnection;
    qryRecibosPAGAMENTO: TDateField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRecibosPgto: TfrmRelRecibosPgto;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelRecibosPgto.BitBtn1Click(Sender: TObject);
begin
   with qryRecibos do
   begin
      close;
      parambyname( 'pagamentoinicial' ).asdate    := edtinicio.date;
      parambyname( 'pagamentofinal' ).asdate      := edtfinal.date;
      open;
   end;

   frmPrincipal.rvInstallux.ExecuteReport( 'rptRecibosPgto' );


end;

procedure TfrmRelRecibosPgto.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmRelRecibosPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   close;
end;

end.
