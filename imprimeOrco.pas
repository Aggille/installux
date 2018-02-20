unit imprimeOrco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, frxClass,
  frxDBSet, QuickRpt;

type
  TfrmImporc = class(TForm)
    edtServicos: TCheckBox;
    edtPecas: TCheckBox;
    BitBtn1: TBitBtn;
    edtTipo: TRadioGroup;
    Label1: TLabel;
    edtResponsavel: TwwDBComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImporc: TfrmImporc;

implementation

uses principal;

{$R *.DFM}

procedure TfrmImporc.FormShow(Sender: TObject);
begin
   with edtResponsavel do
   begin
    Items.Clear;
    Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel1' ).asString );
    Items.Add( frmPrincipal.sqlEmpresa.fieldbyname( 'Responsavel2' ).asString );
   end;
end;

end.
