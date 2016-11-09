unit grupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBCustomDataSet, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmGrupos = class(TForm)
    dtsGrupos: TDataSource;
    tblGrupos: TIBDataSet;
    trnGrupos: TIBTransaction;
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
    grdGrupos: TwwDBGrid;
    tblGruposCODIGO: TIntegerField;
    tblGruposNOME: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupos: TfrmGrupos;

implementation

uses principal;

{$R *.DFM}

procedure TfrmGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmGrupos.FormShow(Sender: TObject);
begin
  if not abre([tblGrupos]) then
    close;
end;

end.
