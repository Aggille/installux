unit relsaldos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, wwdblook, DB, IBCustomDataSet, IBQuery, IBDatabase;

type
  TfrmRelSaldos = class(TForm)
    edtSoSaldo: TCheckBox;
    edtMinimo: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtOrdem: TCheckBox;
    qryGrupos: TIBQuery;
    qryGruposNOME: TIBStringField;
    qryGruposCODIGO: TIntegerField;
    dtsGrupos: TDataSource;
    Label4: TLabel;
    edtGrupo: TwwDBLookupCombo;
    IBTransaction1: TIBTransaction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelSaldos: TfrmRelSaldos;

implementation

uses relsaldos1, principal;

{$R *.DFM}

procedure TfrmRelSaldos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmRelSaldos.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmRelSaldos.BitBtn1Click(Sender: TObject);
begin

  application.CreateForm(TqrpRelSaldos, qrpRelSaldos);

  with qrpRelSaldos do
  begin

    with tblSaldos do
    begin

      close;
      Selectsql.Clear;
      SelectSql.Add('Select * From produtos Where Tipo = 1 ');

      if edtSoSaldo.Checked then
        SelectSql.Add('AND Saldo >0');

      if edtMinimo.Checked then
        SelectSql.Add(' AND Estoqueminimo > Saldo');

      if edtGrupo.Text <> '' then
         SelectSql.Add( ' AND Grupo = ' + qryGrupos.FieldByName( 'Codigo' ).asString );

      if edtOrdem.Checked then
        SelectSql.Add('ORDER BY PRATELEIRA')
      else
        SelectSql.Add('ORDER BY NOME');

      tblSaldos.open;
      qrpRelSaldos.PreviewModal;
      qrpRelSaldos.free;

    end;

  end;

end;

procedure TfrmRelSaldos.FormShow(Sender: TObject);
begin
   if not abre( [qryGrupos] ) then close;
end;

end.
