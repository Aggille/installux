unit sel_orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, Wwdbigrd, Wwdbgrid,
  StdCtrls, Buttons, DBCtrls;

type
  TfrmSelOrcto = class(TForm)
    qryOrcto: TIBQuery;
    dtsOrcto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    qryOrctoDATASERVICO: TDateField;
    qryOrctoLOCAL: TIntegerField;
    qryOrctoPRODUTO: TIntegerField;
    qryOrctoQUANTIDADE: TIBBCDField;
    qryOrctoNOMEDOPRODUTO: TIBStringField;
    qryOrctoNOMEDOLOCAL: TIBStringField;
    qryOrctoEMISSAO: TDateField;
    BitBtn1: TBitBtn;
    DBText1: TDBText;
    Label1: TLabel;
    qryOrctoPRECOUNITARIO: TIBBCDField;
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelOrcto: TfrmSelOrcto;

implementation

uses principal, OS;

{$R *.dfm}

procedure TfrmSelOrcto.wwDBGrid1DblClick(Sender: TObject);
begin
   // INSERE O ITEM SELECIONADO NA FICHA ATUAL..

   with frmOs.tblServicos do
   begin

     if frmOS.tblServicos.Locate( 'produto', VarArrayOf( [qryOrcto.fieldByName( 'produto' ).asString ]) , [] ) then
        begin
          Erro( 'Produto já está na OS !' );
          abort;
        end;
    Insert;
    fieldbyname( 'Produto'  ).asInteger       := qryOrcto.fieldbyname( 'produto' ).asInteger;
    fieldbyname( 'quantidade' ).asCurrency    := qryOrcto.fieldbyname( 'quantidade' ).asCurrency;
    fieldbyname( 'Ambiente' ).asInteger       := qryOrcto.fieldbyname( 'Local' ).asInteger;
    fieldbyname( 'Preco' ).asCurrency         := qryOrcto.fieldbyname( 'PrecoUnitario' ).asCurrency;
    post;

   end;

end;

end.
