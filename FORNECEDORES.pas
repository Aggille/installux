unit FORNECEDORES;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBCustomDataSet, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, wwDialog, wwrcdvw, StdCtrls,
  wwclearbuttongroup, wwradiogroup, ComCtrls, wwriched, wwdblook, wwidlg,
  wwcheckbox, wwDataInspector, RzPanel, RzSplit, wwrcdpnl, Buttons, Navbtn,
  DBSBtn, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TfrmFornecedores = class(TForm)
    dtsFornecedores: TDataSource;
    tblFornecedores: TIBDataSet;
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
    trnFornecedores: TIBTransaction;
    RzSplitter1: TRzSplitter;
    grdFornecedores: TwwDBGrid;
    pnlFornecedores: TwwRecordViewPanel;
    edtFantasia: TwwDBLookupCombo;
    edtPessoa: TwwDBComboBox;
    tblFornecedoresCODIGO: TIntegerField;
    tblFornecedoresNOME: TIBStringField;
    tblFornecedoresENDERECO: TIBStringField;
    tblFornecedoresCIDADE: TIBStringField;
    tblFornecedoresBAIRRO: TIBStringField;
    tblFornecedoresESTADO: TIBStringField;
    tblFornecedoresPAIS: TIBStringField;
    tblFornecedoresPESSOA: TIBStringField;
    tblFornecedoresTELEFONE: TIBStringField;
    tblFornecedoresFAX: TIBStringField;
    tblFornecedoresEMAIL: TIBStringField;
    tblFornecedoresOBSERVACOES: TMemoField;
    tblFornecedoresFANTASIA: TIBStringField;
    tblFornecedoresINSCRICAOESTADUAL: TIBStringField;
    tblFornecedoresANIVERSARIO: TDateField;
    tblFornecedoresCNPJ_CPF: TIBStringField;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    tblFornecedoresCEP: TIBStringField;
    tblFornecedoresARQUITETO: TIntegerField;
    wwDBRichEdit1: TwwDBRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdFornecedoresDblClick(Sender: TObject);
    procedure tblFornecedoresAfterPost(DataSet: TDataSet);
    procedure tblFornecedoresAfterEdit(DataSet: TDataSet);
    procedure tblFornecedoresAfterScroll(DataSet: TDataSet);
    procedure edtPessoaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

uses principal;

{$R *.DFM}

procedure TfrmFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree
end;

procedure TfrmFornecedores.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFornecedores.FormShow(Sender: TObject);
begin

  trnFornecedores.Active := true;
  if not abre([tblFornecedores]) then
    close;
end;

procedure TfrmFornecedores.grdFornecedoresDblClick(Sender: TObject);
begin
  tblFornecedores.Edit;
end;

procedure TfrmFornecedores.tblFornecedoresAfterPost(DataSet: TDataSet);
begin
  trnFornecedores.CommitRetaining;
end;

procedure TfrmFornecedores.tblFornecedoresAfterEdit(DataSet: TDataSet);
begin
  pnlFornecedores.Setfocus;
end;

procedure TfrmFornecedores.tblFornecedoresAfterScroll(DataSet: TDataSet);
begin
  with tblFornecedores do
    if fieldByName('Pessoa').asString = 'J' then
      fieldByName('CNPJ_CPF').EditMask := '##.###.###/####-##;0;_'
    else
      fieldByName('CNPJ_CPF').EditMask := '###.###.###-##;0;_'
end;

procedure TfrmFornecedores.edtPessoaClick(Sender: TObject);
begin
  tblFornecedoresAfterScroll(nil);
end;

procedure TfrmFornecedores.BitBtn1Click(Sender: TObject);
begin
   with tblFornecedores do
      if State in [dsInsert, dsEdit] then
         if Confirma( 'Confirma a gravação deste fornecedor ?' ) then Post else Cancel;

end;

procedure TfrmFornecedores.SpeedButton1Click(Sender: TObject);
begin
   tblFornecedores.Cancel;
end;

end.
