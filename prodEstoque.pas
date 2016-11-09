unit prodEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBDatabase, DB, IBCustomDataSet, IBQuery, wwdblook,
  Buttons, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmProdEstoque = class(TForm)
    Label1: TLabel;
    qryProdutos: TIBQuery;
    dtsProdutos: TDataSource;
    IBTransaction1: TIBTransaction;
    edtProduto: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    qryCompras: TIBQuery;
    dtsCompras: TDataSource;
    qryComprasDATA: TDateField;
    qryComprasDOCUMENTO: TIntegerField;
    qryComprasFORNECEDOR: TIntegerField;
    qryComprasPRECO: TIBBCDField;
    qryComprasQUANTIDADE: TFloatField;
    qryComprasNOMEDOFORNECEDOR: TIBStringField;
    wwDBGrid1: TwwDBGrid;
    Label3: TLabel;
    qryMedias: TIBQuery;
    dtsMedias: TDataSource;
    wwDBGrid2: TwwDBGrid;
    qryMediasMAIORPRECO: TIBBCDField;
    qryMediasMENORPRECO: TIBBCDField;
    qryMediasPRECOMEDIO: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdEstoque: TfrmProdEstoque;

implementation

uses principal;

{$R *.dfm}

procedure TfrmProdEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := caFree;
end;

procedure TfrmProdEstoque.FormShow(Sender: TObject);
begin
   if not abre( [qryProdutos] ) then close;
end;

procedure TfrmProdEstoque.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmProdEstoque.BitBtn1Click(Sender: TObject);
begin
  with qryCompras do
  begin
    Close;
    parambyname( 'produto' ).asString := qryProdutos.fieldbyname( 'codigo' ).asString;
    Open;
  end;
  with qryMedias do
  begin
    Close;
    parambyname( 'produto' ).asString := qryProdutos.fieldbyname( 'codigo' ).asString;
    Open;
  end;

end;

end.
