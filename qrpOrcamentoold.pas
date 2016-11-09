unit qrpOrcamentoold;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Db, IBCustomDataSet, jpeg, QuickRpt,
  QRCtrls;

type
  TqrpOrcto = class(TQuickRep)
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    qryItems: TIBDataSet;
    tblEmpresa: TIBDataSet;
    QRShape1: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText19: TQRDBText;
    QRGroup1: TQRGroup;
    qryItemsQUANTIDADE: TIBBCDField;
    qryItemsNOME: TIBStringField;
    QRLabel21: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    qryItemsTIPO: TIBStringField;
    QRImage1: TQRImage;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    qrResponsavel: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel29: TQRLabel;
    qryItemsLOCAL: TIntegerField;
    qryItemsNOMEDOAMBIENTE: TIBStringField;
    qryItemsPRODUTO: TIntegerField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel23: TQRLabel;
    procedure QRLabel21Print(sender: TObject; var Value: string);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel5Print(sender: TObject; var Value: string);
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText14Print(sender: TObject; var Value: string);
    procedure QRLabel9Print(sender: TObject; var Value: string);
    procedure QRLabel14Print(sender: TObject; var Value: string);
  private

  public

  end;

var
  qrpOrcto: TqrpOrcto;

implementation

uses orcamentos, principal, imprimeOrco;

{$R *.DFM}

procedure TqrpOrcto.QRLabel21Print(sender: TObject; var Value: string);
begin
  Value := 'Ambiente : ' + qryItems.fieldByName('NomeDoAmbiente').asstring;
end;

procedure TqrpOrcto.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := frmImporc.edtPgto.Checked;
end;

procedure TqrpOrcto.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with qryItems do
  begin

    if ((fieldByName('Tipo').asString = '1') and (not
      frmImporc.edtPecas.Checked)) or
      ((fieldByName('Tipo').asString = '2') and (not
        frmImporc.edtServicos.Checked)) then
      PrintBand := false;

  end;
end;

procedure TqrpOrcto.QRLabel5Print(sender: TObject; var Value: string);
begin
  if not (frmImporc.edtPecas.Checked and frmImporc.edtServicos.Checked) then
    value := '';
end;

procedure TqrpOrcto.QRLabel1Print(sender: TObject; var Value: string);
begin
  if frmImporc.edtTipo.ItemIndex = 0 then
    Value := 'Orçamento Nº'
  else
    Value := 'Ordem de Serviço Nº';
end;

procedure TqrpOrcto.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := qryItems.fieldByName('Local').asstring <> '';
end;

procedure TqrpOrcto.QRDBText14Print(sender: TObject; var Value: string);
begin
  Value := frmOrcamentos.edtArquiteto.Text;
end;

procedure TqrpOrcto.QRLabel9Print(sender: TObject; var Value: string);
begin
  if frmOrcamentos.tblOrcamentos.fieldByName('Arquiteto').asInteger = 0 then
    Value := '';
end;

procedure TqrpOrcto.QRLabel14Print(sender: TObject; var Value: string);
begin
  if frmImporc.edtTipo.ItemIndex = 0 then
    Value := 'Valor total do Orçamento : '
  else
    Value := 'Valor total da Ordem de Serviço :';

end;

end.
