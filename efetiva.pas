unit efetiva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, wwdbdatetimepicker, IBSQL;

type
  TfrmEfetiva = class(TForm)
    Label1: TLabel;
    edtData: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    sqlItems: TIBSQL;
    sqlOrcamento: TIBSQL;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEfetiva: TfrmEfetiva;

implementation

uses orcamentos, principal;

{$R *.DFM}

procedure TfrmEfetiva.BitBtn1Click(Sender: TObject);
begin

  with frmOrcamentos do
  begin

    try

      with sqlOrcamento do
      begin
        paramByName('Data').asDateTime := edtData.Date;
        paramByName('Numero').asInteger :=
          tblOrcamentos.fieldByName('Numero').asInteger;
        ExecQuery;
      end;

      with tblItems do
      begin
        first;
        while not eof do
        begin
          if fieldByName('Tipo').asString = '1' then
          begin
            sqlItems.ParamByName('Quantidade').asFloat :=
              fieldByName('Quantidade').asfloat;
            sqlItems.ParamByName('Produto').asInteger :=
              fieldByName('Produto').asInteger;
            sqlItems.ParamByName('Preco').asCurrency :=
              fieldByName('PrecoUnitario').asCurrency;
            sqlItems.ParamByName('total').asCurrency :=
              fieldByName('PrecoTotal').ascurrency;
            SqlItems.ParamByName('Documento').asInteger :=
              tblOrcamentos.fieldByName('Numero').asInteger;
            SqlItems.paramByName('Data').asDate := edtData.Date;
            sqlItems.ExecQuery;
            trnOrcamentos.CommitRetaining;
          end;

          Next;

        end;
      end;
    except

      on e: Exception do
      begin
        Erro(Pchar(E.Message));
        trnOrcamentos.RollBackRetaining;
      end;

    end;

    frmEfetiva.Close;

  end;

end;

procedure TfrmEfetiva.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

end.
