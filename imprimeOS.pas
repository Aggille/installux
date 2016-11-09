unit imprimeOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  wwdbdatetimepicker, wwdblook, DB, IBDatabase, IBCustomDataSet, Grids,
  DBGrids, QuickRpt, QRCtrls, jpeg, JvComponent, JvRollOut,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDCustomHeaderPanel,
  LMDHeaderPanel, JvScrollMax, JvToolEdit, JvExControls, JvExExtCtrls,
  JvExtComponent, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmImprimeOS = class(TForm)
    btnCalcula: TBitBtn;
    Label4: TLabel;
    edtCliente: TwwDBLookupCombo;
    tblClientes: TIBDataSet;
    trnClientes: TIBTransaction;
    dtsClientes: TDataSource;
    qrpOS: TQuickRep;
    qryItems: TIBDataSet;
    qryItemsDATA: TDateField;
    qryItemsQUANTIDADE: TIntegerField;
    qryItemsHORACHEGADA: TTimeField;
    qryItemsHORASAIDA: TTimeField;
    qryItemsPRECO: TIBBCDField;
    qryItemsTOTAL: TIBBCDField;
    qryItemsDATAPAGAMENTO: TDateField;
    qryItemsNOMEDOPRODUTO: TIBStringField;
    qryItemsNOMEDOCLIENTE: TIBStringField;
    qryItemsAMBIENTE: TIBStringField;
    qryItemsFUNCIONARIO: TIBStringField;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    lbl1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    qryItemsENDERECO: TIBStringField;
    qryItemsCIDADE: TIBStringField;
    qryItemsBAIRRO: TIBStringField;
    qryItemsCEP: TIBStringField;
    qryItemsESTADO: TIBStringField;
    qryItemsTIPO: TIBStringField;
    lbl2: TQRLabel;
    lbl3: TQRLabel;
    lblTotServ: TQRLabel;
    lblTotMat: TQRLabel;
    lblTotal: TQRLabel;
    QRShape2: TQRShape;
    Label1: TLabel;
    edtResponsavel: TwwDBComboBox;
    QRLabel1: TQRLabel;
    qrObs: TQRMemo;
    edtObs: TMemo;
    Label5: TLabel;
    JvScrollMax1: TJvScrollMax;
    pnlDados: TJvScrollMaxBand;
    Label2: TLabel;
    Label3: TLabel;
    bitBtn1: TBitBtn;
    QRGroup2: TQRGroup;
    QRBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    qryItemsPRODUTO: TIntegerField;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRSysData2: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText26: TQRDBText;
    edtServicos: TJvValidateEdit;
    edtMateriais: TJvValidateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure btnCalculaClick(Sender: TObject);
    procedure edtClienteCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimeOS: TfrmImprimeOS;

implementation

uses principal, qrpOS;

{$R *.DFM}

procedure TfrmImprimeOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmImprimeOS.FormShow(Sender: TObject);
begin
   with edtResponsavel do
   begin
    Items.Clear;
    Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel1' ).asString );
    Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel2' ).asString );
   end;

  if not abre([tblClientes]) then
    close;
  pnlDados.Expanded := false;
end;

procedure TfrmImprimeOS.BitBtn1Click(Sender: TObject);
var
  TotMat, TotServ: Currency;
begin

  qrObs.Lines := edtObs.Lines;

  lblTotMat.Caption := FloatToStrF(edtMateriais.Value, ffcurrency, 16, 2);
  lblTotServ.Caption := FloatToStrF(edtServicos.Value, ffcurrency, 16, 2);
  lblTotal.Caption := FloatToStrF(edtMateriais.Value + edtServicos.Value,
    ffcurrency, 16, 2);

  DetailBand1.Height := 0;
  qrGroup2.Height := 0;
  qrpOS.previewModal;

  pnlDados.Expanded := False;

end;

procedure TfrmImprimeOS.QRLabel1Print(sender: TObject; var Value: string);
begin
  Value := edtResponsavel.Text;
end;

procedure TfrmImprimeOS.btnCalculaClick(Sender: TObject);
var
  TotMat, TotServ: Currency;

begin
  TotMat := 0;
  TotServ := 0;

  with qryItems do

  begin
    close;
    paramByName('Cliente').asInteger :=
      tblClientes.fieldByName('codigo').asInteger;
    open;

    while not eof do
    begin
      if fieldByName('Tipo').asString = '1' then
        TotMat := TotMat + fieldByName('total').asCurrency
      else
        TotServ := TotServ + fieldByName('total').asCurrency;

      next;
    end;

  end;

  edtMateriais.Value := TotMat;
  edtServicos.Value := TotServ;
  pnlDados.Expanded := True;
  edtServicos.Setfocus;

end;

procedure TfrmImprimeOS.edtClienteCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  with pnlDados do
    if Expanded then
      Expanded := False;

end;

end.
