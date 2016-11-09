unit empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBDatabase, IBCustomDataSet, IBTable, StdCtrls, Mask,
  DBCtrls, Buttons;

type
  TfrmEmpresa = class(TForm)
    dtsEmpresa: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresa: TfrmEmpresa;

implementation

uses principal, datamodulo;

{$R *.dfm}

procedure TfrmEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmEmpresa.BitBtn1Click(Sender: TObject);
begin
  if frmPrincipal.sqlEmpresa.state in [ dsInsert, dsEdit ] then
   frmPrincipal.sqlEmpresa.Post;
end;

end.
