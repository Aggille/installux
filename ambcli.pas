unit ambcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, IBCustomDataSet, Grids, Wwdbigrd,
  Wwdbgrid, ComCtrls, Buttons;

type
  TfrmAmbcli = class(TForm)
    DBText1: TDBText;
    tblAmbcli: TIBDataSet;
    tblAmbientes: TIBDataSet;
    dtsAmbCli: TDataSource;
    tblAmbcliID: TIntegerField;
    tblAmbcliCLIENTE: TSmallintField;
    tblAmbcliAMBIENTE: TSmallintField;
    tblAmbientesCODIGO: TIntegerField;
    tblAmbientesDESCRICAO: TIBStringField;
    dtsAmbientes: TDataSource;
    tblAmbcliNOMEDOAMBIENTE: TStringField;
    Label1: TLabel;
    grdAmbCli: TwwDBGrid;
    Label2: TLabel;
    grdAmbientes: TListView;
    btnInclui: TSpeedButton;
    btnDelete: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure grdAmbientesDblClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure grdAmbCliDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAmbcli: TfrmAmbcli;

implementation

uses clientes, principal;

{$R *.dfm}

procedure TfrmAmbcli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Transacao( frmAmbCli, tblAmbCli.Transaction );
   action := caFree;
end;

procedure TfrmAmbcli.FormShow(Sender: TObject);
var
Item:TListItem;
begin
   if not abre( [tblAmbientes, tblAmbcli] ) then close;

   with tblAmbientes do
   begin
      first;
      while not eof do
      begin

         Item:=grdAmbientes.Items.Add;
         Item.Caption:=fieldbyname( 'descricao' ).asstring;
         Item.Subitems.Add( fieldbyname( 'codigo' ).asstring );

         next
      end;
   end;

end;

procedure TfrmAmbcli.btnIncluiClick(Sender: TObject);
begin
   with tblAmbCli do
   begin

      if locate( 'ambiente' , StrToInt( grdAmbientes.ItemFocused.SubItems[0] ) , [] ) then
      begin
         Erro( 'Este ambiente já existe para este cliente !' );
         exit;
      end;

      insert;
      fieldbyname( 'cliente' ).asInteger     := frmclientes.tblClientes.fieldbyname( 'codigo' ).asInteger;
      fieldbyname( 'ambiente' ).asString     := grdAmbientes.ItemFocused.SubItems[0];
      fieldbyname( 'id').asInteger            := 0;
      post;
   end;
end;

procedure TfrmAmbcli.grdAmbientesDblClick(Sender: TObject);
begin
  btnInclui.Click;
end;

procedure TfrmAmbcli.btnDeleteClick(Sender: TObject);
begin
   tblAmbCli.Delete;
end;

procedure TfrmAmbcli.grdAmbCliDblClick(Sender: TObject);
begin
   btnDelete.Click;
end;

end.
