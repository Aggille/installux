object frmData: TfrmData
  Left = 135
  Top = 104
  BorderStyle = bsDialog
  Caption = 'Informe a data'
  ClientHeight = 245
  ClientWidth = 246
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblTexto: TLabel
    Left = 10
    Top = 10
    Width = 106
    Height = 13
    Caption = 'Digite a data desejada'
  end
  object edtData: TwwDBDateTimePicker
    Left = 10
    Top = 25
    Width = 191
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 45
    Top = 215
    Width = 75
    Height = 25
    Caption = 'OK'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 125
    Top = 215
    Width = 75
    Height = 25
    Caption = 'Cancela'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object edtCalendario: TwwDBMonthCalendar
    Left = 10
    Top = 50
    Width = 225
    Height = 160
    Date = 37873.476654409720000000
    Time = 37873.476654409720000000
    OnChange = edtCalendarioChange
  end
end
