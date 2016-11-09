unit pededata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, wwmonthcalendar;

type
  TfrmData = class(TForm)
    lblTexto: TLabel;
    edtData: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtCalendario: TwwDBMonthCalendar;
    procedure edtCalendarioChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmData: TfrmData;

implementation

{$R *.dfm}

procedure TfrmData.edtCalendarioChange(Sender: TObject);
begin
   edtData.DAte := edtcalendario.Date;
end;

end.
