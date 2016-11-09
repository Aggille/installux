unit relSaldosLocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBDatabase, Grids, DBGrids, IBCustomDataSet,
  IBQuery, wwdblook, Buttons, RLReport, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelSaldosLocal = class(TForm)
    Label1: TLabel;
    dtsLocais: TDataSource;
    dtsSaldos: TDataSource;
    IBTransaction1: TIBTransaction;
    qryLocais: TIBQuery;
    qrySaldos: TIBQuery;
    edtLocal: TwwDBLookupCombo;
    qryLocaisID_LOCAL: TIntegerField;
    qryLocaisNOME: TIBStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qrpSaldoLocal: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qrySaldosPRODUTO: TIntegerField;
    qrySaldosID_LOCAL: TIntegerField;
    qrySaldosENTRADAS: TFloatField;
    qrySaldosSAIDAS: TFloatField;
    qrySaldosNOMEDOLOCAL: TIBStringField;
    qrySaldosNOMEDOPRODUTO: TIBStringField;
    qrySaldosSALDO: TIntegerField;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qrySaldosCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelSaldosLocal: TfrmRelSaldosLocal;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelSaldosLocal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRelSaldosLocal.FormShow(Sender: TObject);
begin
   if not abre( [qryLocais] ) then close;
end;

procedure TfrmRelSaldosLocal.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmRelSaldosLocal.qrySaldosCalcFields(DataSet: TDataSet);
begin
  with qrySaldos do
  begin
    fieldbyname( 'saldo' ).asInteger :=
      fieldbyname( 'entradas' ).asInteger - fieldbyname( 'saidas' ).asInteger;
  end;
end;

procedure TfrmRelSaldosLocal.BitBtn1Click(Sender: TObject);
begin
  with qrySaldos do
  begin
    close;
    if edtLocal.Text = '' then
      begin
        parambyname( 'inicio' ).asInteger := 0;
        parambyname( 'final' ).asInteger  := 99999;
      end
    else
      begin
        parambyname( 'inicio' ).asInteger := qryLocais.fieldbyname( 'id_local' ).asInteger;
        parambyname( 'final' ).asInteger  := qryLocais.fieldbyname( 'id_local' ).asInteger;
      end;

    Open;
  end;

   qrpSaldoLocal.PreviewModal;
end;

end.
