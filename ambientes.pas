unit ambientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel;

type
  TfrmAmbientes = class(TForm)
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
    wwDBNavigator1Button: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    dtsAmbientes: TDataSource;
    tblAmbientes: TIBDataSet;
    IBTransaction1: TIBTransaction;
    tblAmbientesCODIGO: TIntegerField;
    tblAmbientesDESCRICAO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tblAmbientesAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAmbientes: TfrmAmbientes;

implementation

uses principal;

{$R *.dfm}

procedure TfrmAmbientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmAmbientes.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAmbientes.FormShow(Sender: TObject);
begin
  if not abre([tblAmbientes]) then
    close;
end;

procedure TfrmAmbientes.tblAmbientesAfterPost(DataSet: TDataSet);
begin
  ibtransaction1.CommitRetaining;
end;

end.
