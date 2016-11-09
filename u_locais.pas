unit u_locais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, IBDatabase, DB, IBCustomDataSet;

type
  TfrmLocais = class(TForm)
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
    wwDBGrid1: TwwDBGrid;
    tblLocais: TIBDataSet;
    trnLocais: TIBTransaction;
    tblLocaisNOME: TIBStringField;
    dtsLocais: TDataSource;
    wwDBNavigator1Button: TwwNavButton;
    tblLocaisID_LOCAL: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tblLocaisAfterPost(DataSet: TDataSet);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure tblLocaisBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocais: TfrmLocais;

implementation

uses principal;

{$R *.dfm}

procedure TfrmLocais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmLocais.FormShow(Sender: TObject);
begin
   if not abre( [tblLocais] ) then close;
end;

procedure TfrmLocais.tblLocaisAfterPost(DataSet: TDataSet);
begin
  trnLocais.CommitRetaining;
end;

procedure TfrmLocais.wwDBNavigator1ButtonClick(Sender: TObject);
begin
   close;
end;

procedure TfrmLocais.tblLocaisBeforePost(DataSet: TDataSet);
begin
  tblLocais.fieldbyname( 'id_Local' ).asInteger := tblLocais.RecordCount+1;
end;

end.
