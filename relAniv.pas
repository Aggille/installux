unit relAniv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, DB, IBCustomDataSet, IBDatabase,
  Buttons, Grids, DBGrids,dateUtils, RpDefine, RpCon, RpConDS, frxClass,
  frxDBSet;

type
  TfrmRelAniv = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    qryAniv: TIBDataSet;
    dtsAniv: TDataSource;
    IBTransaction1: TIBTransaction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rvdAniv: TRvDataSetConnection;
    qryAnivNOME: TIBStringField;
    qryAnivDIA: TIntegerField;
    qryAnivMES: TIntegerField;
    qryAnivDIA_CONJUGE: TIntegerField;
    qryAnivMES_CONJUGE: TIntegerField;
    qryAnivNOME_CONJUGE: TIBStringField;
    qryAnivENDERECO: TIBStringField;
    qryAnivBAIRRO: TIBStringField;
    qryAnivCIDADE: TIBStringField;
    qryAnivCEP: TIBStringField;
    qryAnivANIVERSARIO: TDateField;
    qryAnivTIPO: TIBStringField;
    qryAnivANIVERSARIO_CONJUGE: TDateField;
    frxDBDAniv: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAniv: TfrmRelAniv;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelAniv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRelAniv.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmRelAniv.BitBtn1Click(Sender: TObject);
begin
   with qryAniv do
   begin
      close;
      parambyname( 'DiaInicial' ).asInteger  := DayOf( edtInicio.Date );
      parambyname( 'DiaFinal' ).asInteger    := DayOf( edtFinal.Date );
      parambyname( 'MesInicial' ).asInteger  := MonthOf( edtInicio.Date );
      parambyname( 'MesFinal' ).asInteger    := MonthOf( edtFinal.Date );
      open;
   end;

   frmPrincipal.rvInstallux.setParam( 'dia_Inicio' , IntToStr( dayOf( edtInicio.Date)));
   frmPrincipal.rvInstallux.setParam( 'mes_Inicio' , IntToStr( MonthOf(edtInicio.Date)));

   frmPrincipal.rvInstallux.setParam( 'dia_Final'  , IntToStr( dayOf( edtFinal.Date)));
   frmPrincipal.rvInstallux.setParam( 'mes_Final'  , IntToStr( MonthOf(edtFinal.Date)));

   //frmPrincipal.rvInstallux.ExecuteReport( 'rptAniv' );
   frxReport1.ShowReport;

end;

end.
