object frmBaixaRecibo: TfrmBaixaRecibo
  Left = 225
  Top = 171
  BorderStyle = bsDialog
  Caption = 'Baixar recibo'
  ClientHeight = 77
  ClientWidth = 396
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 5
    Width = 66
    Height = 13
    Caption = 'Data da baixa'
  end
  object Label2: TLabel
    Left = 135
    Top = 5
    Width = 67
    Height = 13
    Caption = 'Valor da baixa'
  end
  object Label3: TLabel
    Left = 260
    Top = 5
    Width = 86
    Height = 13
    Caption = 'Valor do desconto'
  end
  object edtData: TwwDBDateTimePicker
    Left = 5
    Top = 20
    Width = 121
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
  object edtValor: TCurrencyEdit
    Left = 135
    Top = 20
    Width = 121
    Height = 21
    AutoSize = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 235
    Top = 50
    Width = 75
    Height = 25
    Caption = 'OK'
    DoubleBuffered = True
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
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 315
    Top = 50
    Width = 75
    Height = 25
    Caption = 'Cancela'
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object edtDesconto: TCurrencyEdit
    Left = 265
    Top = 20
    Width = 121
    Height = 21
    AutoSize = False
    TabOrder = 2
  end
end
