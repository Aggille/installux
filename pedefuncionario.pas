unit pedefuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBDatabase, DB, IBCustomDataSet, wwdblook, Buttons;

type
  TfrmPedeFuncionario = class(TForm)
    Label1: TLabel;
    edtFuncionario: TwwDBLookupCombo;
    tblFuncionarios: TIBDataSet;
    dtsFuncionarios: TDataSource;
    IBTransaction1: TIBTransaction;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedeFuncionario: TfrmPedeFuncionario;

implementation

uses principal;

{$R *.dfm}

procedure TfrmPedeFuncionario.FormShow(Sender: TObject);
begin
   tblFuncionarios.open;
end;

end.
