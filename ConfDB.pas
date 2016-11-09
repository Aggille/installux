unit ConfDB;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit, LMDCustomBrowseEdit,
  LMDCustomFileEdit, LMDFileOpenEdit;

type
   TfrmConfDB = class(TForm)
      Label1: TLabel;
      edtServidor: TLMDFileOpenEdit;
      btnOK: TBitBtn;
    Label2: TLabel;
    Senha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
   private
    { Private declarations }
   public
    { Public declarations }
   end;

var
   frmConfDB: TfrmConfDB;

implementation

{$R *.DFM}

end.
