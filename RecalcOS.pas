unit RecalcOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBDatabase, DBCtrls, ComCtrls;

type
  TfrmRecalcOS = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tblServicos: TIBDataSet;
    dtsServicos: TDataSource;
    IBTransaction1: TIBTransaction;
    tblOS: TIBDataSet;
    dtsOS: TDataSource;
    tblOSOS: TIntegerField;
    tblOSCLIENTE: TIntegerField;
    tblOSDATA: TDateField;
    tblOSFUNCIONARIO: TIntegerField;
    tblOSCHEGADA: TTimeField;
    tblOSSAIDA: TTimeField;
    tblOSVALOR: TIBBCDField;
    tblOSARQUITETO: TIntegerField;
    tblOSVALORCOBRADO: TIBBCDField;
    tblOSOBS: TBlobField;
    tblOSRESPONSAVEL: TIBStringField;
    tblOSVALORMATERIAIS: TIBBCDField;
    tblOSVALORSERVICOS: TIBBCDField;
    tblOSVALORCOBRADOMATERIAIS: TIBBCDField;
    tblOSVALORCOBRADOSERVICOS: TIBBCDField;
    tblOSDATADEPAGAMENTO: TDateField;
    tblProdutos: TIBDataSet;
    dtsProdutos: TDataSource;
    tblServicosAMBIENTE: TIntegerField;
    tblServicosARQUITETO: TIntegerField;
    tblServicosCLIENTE: TIntegerField;
    tblServicosDATA: TDateField;
    tblServicosDATAPAGAMENTO: TDateField;
    tblServicosFUNCIONARIO: TIntegerField;
    tblServicosHORACHEGADA: TTimeField;
    tblServicosHORASAIDA: TTimeField;
    tblServicosOS: TIntegerField;
    tblServicosPRECO: TIBBCDField;
    tblServicosPRODUTO: TIntegerField;
    tblServicosQUANTIDADE: TIntegerField;
    tblServicosSERVICO: TIntegerField;
    tblServicosTOTAL: TIBBCDField;
    tblServicosTIPO: TStringField;
    DBText1: TDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecalcOS: TfrmRecalcOS;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRecalcOS.BitBtn2Click(Sender: TObject);
begin
  ibTransaction1.Commit;
  Close;
end;

procedure TfrmRecalcOS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmRecalcOS.BitBtn1Click(Sender: TObject);
var
  Cliente: integer;
  Data: TdateTime;
  Servicos, Materiais: currency;
  OK: boolean;
begin
  tblOS.Open;
  tblServicos.Open;
  tblProdutos.Open;

  Servicos := 0;
  Materiais := 0;

  with tblServicos do
  begin
    First;

    while not tblServicos.EOF do
    begin
      Cliente := tblServicos.fieldByName( 'cliente' ).asInteger;
      Data := tblServicos.fieldByName( 'Data' ).asDateTime;

      tblOS.Insert;

      while (Cliente = tblServicos.fieldByName( 'cliente' ).asInteger ) and (tblServicos.fieldByName( 'Data' ).asDateTime = Data) and not (tblServicos.EOF) do
      begin
        Application.ProcessMessages;

        // Altera o numero da OS no servico para criar o vinculo
        tblServicos.Edit;
        tblServicos.fieldByName( 'os').AsInteger := tblOS.fieldByName( 'os').AsInteger;
        tblServicos.Post;

        if tblServicos.fieldByName( 'tipo' ).AsString = '1' then
          Materiais := Materiais + tblServicos.fieldByName( 'Total' ).asCurrency
        else
          Servicos := Servicos + tblservicos.fieldByName( 'Total' ).asCurrency;

        tblServicos.Next;

        ok := tblServicos.EOF;
      end;

      // Terminaram os sevicos, agora grava o cabeçalho da OS.

      tblServicos.Prior;

      tblOS.fieldByName( 'Cliente').AsInteger := tblServicos.fieldByName('cliente').asInteger;
      tblOS.fieldByName('Funcionario').asInteger := tblServicos.fieldByName('Funcionario').asInteger;
      tblOS.fieldByName('Arquiteto').asInteger := tblServicos.fieldByName('Arquiteto').asInteger;
      tblOS.fieldByName('Data').asString := tblServicos.fieldByName('Data').asString;
      tblOS.fieldByName('DataDePagamento').asString := tblServicos.fieldByName('DataPagamento').asString;
      tblOS.fieldByName('Chegada').asString := tblservicos.fieldByName('HoraChegada').asString;
      tblOS.fieldByName('Saida').asString := tblServicos.fieldByName('HoraSaida').asString;
      tblOS.fieldByName('ValorServicos').asCurrency := servicos;
      tblOS.fieldByName('ValorMateriais').asCurrency := materiais;
      tblOS.fieldByName('ValorCobradoServicos').asCurrency := servicos;
      tblOS.fieldByName('ValorCobradoMateriais').asCurrency := materiais;
      tblOS.fieldByName('Valor').asCurrency := servicos + materiais;
      tblOS.fieldByName('valorCobrado').asCurrency := servicos + materiais;

      tblOS.Post;

      Servicos := 0;
      Materiais := 0;
      tblServicos.Next;

      if OK then
        Break;
    end;

    ShowMessage('Recálculo executado com sucesso !');
  end;
end;

end.

