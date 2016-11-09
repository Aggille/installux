unit uRelOsAberto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  wwdbdatetimepicker, Grids, DBGrids, IBDatabase, IBCustomDataSet,
  RpDefine, RpCon, RpConDS;

type
  TfrmRelOsAberto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rvdOsAberto: TRvDataSetConnection;
    dtsOS: TDataSource;
    qryOs: TIBDataSet;
    IBTransaction1: TIBTransaction;
    qryOsCLIENTE: TIntegerField;
    qryOsDATA: TDateField;
    qryOsOS: TIntegerField;
    qryOsVALOR: TIBBCDField;
    qryOsVALORMATERIAIS: TIBBCDField;
    qryOsVALORSERVICOS: TIBBCDField;
    qryOsNOMEDOCLIENTE: TIBStringField;
    qryOsNOMEDOFUNCIONARIO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelOsAberto: TfrmRelOsAberto;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelOsAberto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRelOsAberto.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmRelOsAberto.BitBtn1Click(Sender: TObject);
begin
   with qryOS do
   begin
      close;
      parambyname( 'inicio' ).asDateTime     := edtInicio.Date;
      paramByName( 'final' ).asDateTime      := edtFinal.Date;
      open;
   end;

   frmPrincipal.rvInstallux.ExecutEReport( 'rptOsAberto' );
end;

end.
