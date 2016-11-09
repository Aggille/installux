unit produtos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBDatabase, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, StdCtrls, wwdblook, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  Navbtn, DBSBtn, wwrcdpnl, RzPanel, RzSplit, Mask, wwdbedit, Wwdotdot,
  Wwdbcomb;

type
  TfrmProdutos = class(TForm)
    trnProdutos: TIBTransaction;
    tblProdutos: TIBDataSet;
    dtsProdutos: TDataSource;
    tblProdutosNOME: TIBStringField;
    tblProdutosGRUPO: TIntegerField;
    tblProdutosUNIDADE: TIBStringField;
    tblProdutosPRECO: TIBBCDField;
    tblProdutosICMS: TIBBCDField;
    tblProdutosIPI: TIBBCDField;
    tblProdutosCUSTO: TIBBCDField;
    tblProdutosESTOQUEMINIMO: TIBBCDField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1FilterDialog: TwwNavButton;
    wwDBNavigator1LocateDialog: TwwNavButton;
    wwDBNavigator1SearchDialog: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    RzSplitter1: TRzSplitter;
    pnlProdutos: TwwRecordViewPanel;
    grdProdutos: TwwDBGrid;
    edtNome: TwwDBLookupCombo;
    edtGrupo: TwwDBLookupCombo;
    dtsGrupos: TDataSource;
    tblGrupos: TIBDataSet;
    tblProdutosTIPO: TIBStringField;
    edtTipo: TwwDBComboBox;
    tblProdutosSALDO: TFloatField;
    tblProdutosPRATELEIRA: TIBStringField;
    wwDBNavigator1Button1: TwwNavButton;
    tblProdutosCODIGO: TIntegerField;
    tblProdutosBARRAS: TIBStringField;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    tblProdutosULT_ALT_PRECO: TDateField;
    tblProdutosPRECO_ANT: TIBBCDField;
    tblProdutosINATIVO: TIBStringField;
    edtInativo: TwwDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tblProdutosBeforePost(DataSet: TDataSet);
    procedure tblProdutosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

uses principal, relpro, eFuncoes;

{$R *.DFM}

procedure TfrmProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmProdutos.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
  if not abre([tblProdutos, tblGrupos]) then
    close;
end;

procedure TfrmProdutos.wwDBNavigator1Button1Click(Sender: TObject);
begin
  application.createform(TfrmRelpro, frmRelPro);
  frmRelPro.ShowModal;
end;

procedure TfrmProdutos.SpeedButton1Click(Sender: TObject);
begin
   tblProdutos.Cancel
end;

procedure TfrmProdutos.BitBtn1Click(Sender: TObject);
begin
   with tblProdutos do
      if State in [dsInsert, dsEdit] then
         if Confirma( 'Confirma a gravação deste produto ?' ) then Post else Cancel;

end;

procedure TfrmProdutos.tblProdutosBeforePost(DataSet: TDataSet);
var
codigo:string;


begin
  // Gera o código de Barras
  with tblProdutos do
  begin
      codigo := copy( fieldByName( 'Barras' ).asstring,1,12 );
      codigo := padlzero( codigo ,12 );
      if fieldbyName( 'Barras' ).asString = '' then
            fieldByName( 'Barras' ).asString := PadlZero( fieldByName( 'codigo' ).asString , 6 );

  end;
end;

procedure TfrmProdutos.tblProdutosAfterPost(DataSet: TDataSet);
begin
   trnProdutos.commitRetaining;
end;

end.

