unit arquitetos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBCustomDataSet, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, wwDialog, wwrcdvw,
  StdCtrls, wwclearbuttongroup, wwradiogroup, ComCtrls, wwriched, RzPanel,
  RzSplit, wwrcdpnl, Buttons, wwdblook, AppEvnts,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, lmddbbtn, DBSBtn,
  Navbtn;

type
  TfrmArquitetos = class(TForm)
    tblArquitetos: TIBDataSet;
    dtsArquitetos: TDataSource;
    trnArquitetos: TIBTransaction;
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
    tblArquitetosCODIGO: TIntegerField;
    tblArquitetosNOME: TIBStringField;
    tblArquitetosENDERECO: TIBStringField;
    tblArquitetosBAIRRO: TIBStringField;
    tblArquitetosCIDADE: TIBStringField;
    tblArquitetosCEP: TIBStringField;
    tblArquitetosESTADO: TIBStringField;
    tblArquitetosPAIS: TIBStringField;
    tblArquitetosCNPJ_CPF: TIBStringField;
    tblArquitetosCREA: TIBStringField;
    tblArquitetosOBSERVACOES: TMemoField;
    tblArquitetosPESSOA: TIBStringField;
    tblArquitetosTELEFONE: TIBStringField;
    tblArquitetosEMAIL: TIBStringField;
    tblArquitetosFAX: TIBStringField;
    wwDBNavigator1Button: TwwNavButton;
    RzSplitter1: TRzSplitter;
    grdArquitetos: TwwDBGrid;
    edtPessoa: TwwRadioGroup;
    pnlArquitetos: TwwRecordViewPanel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    tblArquitetosANIVERSARIO: TDateField;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    wwDBNavigator1Button1: TwwNavButton;
    wwDBNavigator1Button2: TwwNavButton;
    tblArquitetoscelular: TIBStringField;
    wwDBRichEdit1: TwwDBRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdArquitetosDblClick(Sender: TObject);
    procedure tblArquitetosAfterScroll(DataSet: TDataSet);
    procedure edtPessoaClick(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure tblArquitetosAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure wwDBNavigator1Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArquitetos: TfrmArquitetos;

implementation

uses principal, historicodoarquiteto, recibosdoarquiteto;

{$R *.DFM}

procedure TfrmArquitetos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmArquitetos.FormShow(Sender: TObject);
begin
  trnArquitetos.Active := True;
  if not abre([tblArquitetos]) then
    close;
end;

procedure TfrmArquitetos.grdArquitetosDblClick(Sender: TObject);
begin
  tblArquitetos.Edit;
end;

procedure TfrmArquitetos.tblArquitetosAfterScroll(DataSet: TDataSet);
begin
  with tblArquitetos do
  begin
    if fieldByName('Pessoa').asString = 'J' then
      fieldByName('CNPJ_CPF').EditMask := '##.###.###/####-##;0;_'
    else
      fieldByName('CNPJ_CPF').EditMask := '###.###.###-##;0;_'
  end;
end;

procedure TfrmArquitetos.edtPessoaClick(Sender: TObject);
begin
  tblArquitetosAfterScroll(nil);
end;

procedure TfrmArquitetos.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmArquitetos.tblArquitetosAfterPost(DataSet: TDataSet);
begin
  trnArquitetos.CommitRetaining;
end;

procedure TfrmArquitetos.BitBtn1Click(Sender: TObject);
begin
   with tblArquitetos do
      if State in [dsInsert, dsEdit] then
         if Confirma( 'Confirma a gravação deste arquiteto ?' ) then Post else Cancel;

end;

procedure TfrmArquitetos.SpeedButton1Click(Sender: TObject);
begin
   tblArquitetos.Cancel;
end;

procedure TfrmArquitetos.wwDBNavigator1Button1Click(Sender: TObject);
begin
   application.Createform( TfrmHistoricoArq, frmHistoricoArq );
   frmHistoricoArq.ShowModal;
end;

procedure TfrmArquitetos.wwDBNavigator1Button2Click(Sender: TObject);
begin
   application.createForm( Tfrmrecibosarquiteto, frmrecibosarquiteto );
   frmrecibosarquiteto.showmodal;
end;

end.
