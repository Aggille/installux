unit Reajuste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, StdCtrls, wwdblook, Mask, IBSQL,
  Buttons, rxToolEdit, rxCurrEdit;

type
  TfrmReajuste = class(TForm)
    tblGrupos: TIBDataSet;
    dtsGrupos: TDataSource;
    IBTransaction1: TIBTransaction;
    Label1: TLabel;
    edtGrupo: TwwDBLookupCombo;
    Label2: TLabel;
    edtPercentual: TRxCalcEdit;
    BitBtn1: TBitBtn;
    sqlAtualiza: TIBSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReajuste: TfrmReajuste;

implementation

uses principal;

{$R *.dfm}

procedure TfrmReajuste.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmReajuste.FormShow(Sender: TObject);
begin
  if not abre([tblGrupos]) then
    close;
end;

procedure TfrmReajuste.BitBtn1Click(Sender: TObject);
begin

  if not confirma('Confirma o reajuste ?') then
    exit;

  try

    with sqlAtualiza do
    begin

      paramByName('Reajuste').asFloat := edtPercentual.Value;

      if edtGrupo.Text = '' then
      begin
        paramByName('GrupoInicial').asInteger := 0;
        paramByname('GrupoFinal').asInteger := 99999;
      end
      else
      begin
        paramByName('GrupoInicial').asInteger :=
          tblGrupos.fieldByname('codigo').asInteger;
        paramByname('GrupoFinal').asInteger :=
          tblGrupos.fieldByname('codigo').asInteger;
      end;

      ExecQuery;
      ibTransaction1.CommitRetaining;
      ShowMessage('Atualização concluída com sucesso !');
      frmReajuste.close;

    end;

  except

    on E: Exception do
    begin

      Erro('Erro na atualização : ' + Pchar(E.Message));
      Abort;

    end;

  end;

end;

end.
