unit qrpOrcamento;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Db, IBCustomDataSet, jpeg, QuickRpt,
  QRCtrls, DBClient, dxGDIPlusClasses;

type
  TqrpOrcto = class(TQuickRep)
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
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
    QRLabel21: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    qrResponsavel: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText29: TQRDBText;
    qryItems: TClientDataSet;
    qryItemsQUANTIDADE: TFloatField;
    qryItemsNOME: TStringField;
    qryItemsLOCAL: TIntegerField;
    qryItemsNOMEDOAMBIENTE: TStringField;
    qryItemsPRODUTO: TIntegerField;
    qryItemsTIPO: TStringField;
    QRImage1: TQRImage;
    procedure QRLabel21Print(sender: TObject; var Value: string);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel5Print(sender: TObject; var Value: string);
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: string);
    procedure QRLabel14Print(sender: TObject; var Value: string);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
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
  PrintBand := false;
end;

procedure TqrpOrcto.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with qryItems do
  begin

    if ((fieldByName('Tipo').asString = '1') and (not frmImporc.edtPecas.Checked)) or
      ((fieldByName('Tipo').asString = '2') and (not frmImporc.edtServicos.Checked)) then
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

procedure TqrpOrcto.QRDBText14Print(sender: TObject; var Value: String);
begin
   if frmOrcamentos.edtArquiteto.Text = '' then Value := '';
end;

procedure TqrpOrcto.QRDBText3Print(sender: TObject; var Value: String);
begin
   with frmPrincipal.sqlEmpresa do
      Value := fieldbyName( 'Endereco' ).asString + ' - ' + fieldbyname( 'Bairro' ).asString;
end;

procedure TqrpOrcto.QRDBText12Print(sender: TObject; var Value: String);
begin
   with  frmPrincipal.sqlEmpresa do
      Value := fieldbyname( 'Cidade' ).asString + ' / ' + fieldbyname( 'Estado' ).asString + ' Cep: ' + fieldbyname( 'Cep' ).asString;
end;

end.
