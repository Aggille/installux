unit observacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmObs = class(TForm)
    tblObs: TIBDataSet;
    IBTransaction1: TIBTransaction;
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
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    dtsObs: TDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1Button: TwwNavButton;
    tblObsID: TIntegerField;
    tblObsOBS: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure tblObsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObs: TfrmObs;

implementation

uses principal;

{$R *.dfm}

procedure TfrmObs.FormShow(Sender: TObject);
begin
  if not abre([tblObs]) then
    close;
end;

procedure TfrmObs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmObs.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  close;
end;

procedure TfrmObs.tblObsAfterPost(DataSet: TDataSet);
begin
  ibtransaction1.CommitRetaining;
  tblObs.Refresh;
end;

end.
