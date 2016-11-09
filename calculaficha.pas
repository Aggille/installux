unit calculaficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, IBDatabase;

type
  TfrmCalculaFicha = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    progresso: TProgressBar;
    tblPrecos: TIBDataSet;
    IBTransaction1: TIBTransaction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculaFicha: TfrmCalculaFicha;

implementation

uses principal;

{$R *.dfm}

procedure TfrmCalculaFicha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmCalculaFicha.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCalculaFicha.BitBtn1Click(Sender: TObject);
begin
  with tblPrecos do
  begin
    open;
    first;
    progresso.Max := RecordCount;

    while not eof do
    begin
      progresso.Position := Recno;
      progresso.Update;

      if fieldByName('PrecoReal').asCurrency > 0 then
      begin

        edit;
        fieldByName('Preco').asCurrency := fieldByName('PrecoReal').asCurrency;
        fieldByName('Total').asCurrency := fieldByName('PrecoReal').asCurrency *
          fieldByName('Quantidade').asInteger;
        post;

      end;

      next;
    end;

    IBTransaction1.CommitRetaining;
    ShowMessage('Recálculo concluído !');

  end;

end;

end.
