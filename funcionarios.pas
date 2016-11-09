unit funcionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmFuncionarios = class(TForm)
    tblFuncionarios: TIBDataSet;
    trnFuncionarios: TIBTransaction;
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
    dtsClientes: TDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1Button: TwwNavButton;
    tblFuncionariosCODIGO: TIntegerField;
    tblFuncionariosNOME: TIBStringField;
    tblFuncionariosQUANTIDADE: TSmallintField;
    tblFuncionarioscelular: TIBStringField;
    tblFuncionariosINATIVO: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure tblFuncionariosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation

uses principal;

{$R *.dfm}

procedure TfrmFuncionarios.FormShow(Sender: TObject);
begin
  Transacao( frmFuncionarios, trnFuncionarios );
  if not abre([tblFuncionarios]) then
    close;
end;

procedure TfrmFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmFuncionarios.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFuncionarios.tblFuncionariosAfterPost(DataSet: TDataSet);
begin
trnFuncionarios.CommitRetaining
end;

end.
