unit procuraproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnMan, ActnColorMaps, IBDatabase, DB,
  IBCustomDataSet, IBQuery, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmProcuraProdutos = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    Pesquisar: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    qryProdutos: TIBQuery;
    dtsProdutos: TDataSource;
    IBTransaction1: TIBTransaction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcuraProdutos: TfrmProcuraProdutos;

implementation

uses principal;

{$R *.dfm}

procedure TfrmProcuraProdutos.PesquisarClick(Sender: TObject);
begin
   with qryProdutos do
   begin
      close;
      paramByName( 'Nome' ).asString      := edtNome.Text;
      Open;
   end;
end;

end.
