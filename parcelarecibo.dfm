object frmParcelaRecibo: TfrmParcelaRecibo
  Left = 316
  Top = 176
  BorderStyle = bsDialog
  Caption = 'Parcelamento de recibos'
  ClientHeight = 331
  ClientWidth = 580
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 55
    Height = 13
    Caption = 'Qt.Parcelas'
  end
  object Label2: TLabel
    Left = 105
    Top = 79
    Width = 61
    Height = 13
    Caption = 'Vencimentos'
  end
  object Label3: TLabel
    Left = 216
    Top = 80
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label4: TLabel
    Left = 105
    Top = 310
    Width = 96
    Height = 13
    Caption = 'Total do Recibo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 243
    Top = 306
    Width = 65
    Height = 17
    Alignment = taRightJustify
    DataField = 'VALOR'
    DataSource = frmRecibos.dtsRecibos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 327
    Top = 79
    Width = 41
    Height = 13
    Caption = 'Servi'#231'os'
  end
  object Label6: TLabel
    Left = 436
    Top = 79
    Width = 42
    Height = 13
    Caption = 'Materiais'
  end
  object lblMat: TLabel
    Left = 3
    Top = 99
    Width = 35
    Height = 13
    Caption = 'lblMat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblServ: TLabel
    Left = 3
    Top = 123
    Width = 40
    Height = 13
    Caption = 'lblServ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtQtde: TwwDBSpinEdit
    Left = 8
    Top = 40
    Width = 65
    Height = 21
    Increment = 1.000000000000000000
    MaxValue = 6.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 2
    UnboundDataType = wwDefault
    OnChange = edtQtdeChange
  end
  object GroupBox1: TGroupBox
    Left = 88
    Top = 16
    Width = 390
    Height = 57
    Caption = 'Prazos ( em dias )'
    TabOrder = 1
    object edtDias1: TwwDBSpinEdit
      Left = 7
      Top = 24
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 9999.000000000000000000
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object edtDias2: TwwDBSpinEdit
      Left = 55
      Top = 24
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 9999.000000000000000000
      TabOrder = 1
      UnboundDataType = wwDefault
    end
    object edtdias3: TwwDBSpinEdit
      Left = 103
      Top = 24
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 9999.000000000000000000
      TabOrder = 2
      UnboundDataType = wwDefault
    end
    object edtDias4: TwwDBSpinEdit
      Left = 151
      Top = 24
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 9999.000000000000000000
      TabOrder = 3
      UnboundDataType = wwDefault
    end
    object edtDias5: TwwDBSpinEdit
      Left = 199
      Top = 24
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 9999.000000000000000000
      TabOrder = 4
      UnboundDataType = wwDefault
    end
    object edtDias6: TwwDBSpinEdit
      Left = 247
      Top = 24
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 9999.000000000000000000
      TabOrder = 5
      UnboundDataType = wwDefault
    end
    object edtDias7: TwwDBSpinEdit
      Left = 295
      Top = 24
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 9999.000000000000000000
      TabOrder = 6
      UnboundDataType = wwDefault
    end
    object edtDias8: TwwDBSpinEdit
      Left = 342
      Top = 24
      Width = 41
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 9999.000000000000000000
      TabOrder = 7
      UnboundDataType = wwDefault
    end
  end
  object edtVcto1: TwwDBDateTimePicker
    Tag = 1
    Left = 105
    Top = 98
    Width = 102
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 6
  end
  object edtVcto2: TwwDBDateTimePicker
    Tag = 2
    Left = 105
    Top = 120
    Width = 102
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 7
  end
  object edtVcto3: TwwDBDateTimePicker
    Tag = 3
    Left = 105
    Top = 144
    Width = 102
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 11
  end
  object edtVcto4: TwwDBDateTimePicker
    Tag = 4
    Left = 105
    Top = 168
    Width = 102
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 17
  end
  object edtVcto5: TwwDBDateTimePicker
    Tag = 5
    Left = 105
    Top = 192
    Width = 102
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 19
  end
  object edtVcto6: TwwDBDateTimePicker
    Tag = 6
    Left = 105
    Top = 216
    Width = 102
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 23
  end
  object edtValor1: TCurrencyEdit
    Tag = 1
    Left = 216
    Top = 96
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 3
    OnExit = edtValor1Exit
  end
  object edtValor2: TCurrencyEdit
    Tag = 2
    Left = 216
    Top = 120
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 8
    OnExit = edtValor2Exit
  end
  object edtValor3: TCurrencyEdit
    Tag = 3
    Left = 216
    Top = 144
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 12
    OnExit = edtValor3Exit
  end
  object edtValor4: TCurrencyEdit
    Tag = 4
    Left = 216
    Top = 168
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 18
    OnExit = edtValor4Exit
  end
  object edtValor5: TCurrencyEdit
    Tag = 5
    Left = 216
    Top = 192
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 20
    OnExit = edtValor5Exit
  end
  object edtValor6: TCurrencyEdit
    Tag = 6
    Left = 216
    Top = 216
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 24
    OnExit = edtValor6Exit
  end
  object OK: TBitBtn
    Left = 383
    Top = 298
    Width = 75
    Height = 25
    Caption = 'OK'
    DoubleBuffered = True
    Glyph.Data = {
      46050000424D460500000000000036040000280000000D000000110000000100
      08000000000010010000C30E0000C30E00000001000000000000000000008080
      8000000080000080800000800000808000008000000080008000408080004040
      0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
      FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
      80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
      60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
      B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
      1D007666280000450000013E450013286A006A39850085324A00040404000808
      08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
      5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
      840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
      0000000039009B00000000250000000049003B111100002F000000005D004517
      1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
      00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
      2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
      A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
      2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
      89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
      AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
      0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
      0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
      42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
      890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
      C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
      FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
      F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
      FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
      CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
      8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
      7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
      BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
      88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
      A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
      0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
      00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
      001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
      11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
      110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
      11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
      110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
      110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
      0F0F0F0F0F0F0F000000}
    ParentDoubleBuffered = False
    TabOrder = 35
    OnClick = OKClick
  end
  object edtSair: TBitBtn
    Left = 464
    Top = 298
    Width = 75
    Height = 25
    Caption = 'Sair'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 36
    OnClick = edtSairClick
  end
  object BitBtn1: TBitBtn
    Left = 492
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Calcular'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object edtServ1: TCurrencyEdit
    Tag = 1
    Left = 325
    Top = 96
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 4
  end
  object edtServ2: TCurrencyEdit
    Tag = 2
    Left = 325
    Top = 120
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 9
  end
  object edtServ3: TCurrencyEdit
    Tag = 3
    Left = 325
    Top = 144
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 13
  end
  object edtServ4: TCurrencyEdit
    Tag = 4
    Left = 325
    Top = 167
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 15
  end
  object edtServ5: TCurrencyEdit
    Tag = 5
    Left = 325
    Top = 192
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 21
  end
  object edtServ6: TCurrencyEdit
    Tag = 6
    Left = 325
    Top = 216
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 25
  end
  object edtVcto7: TwwDBDateTimePicker
    Tag = 7
    Left = 105
    Top = 241
    Width = 102
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 27
  end
  object edtValor7: TCurrencyEdit
    Tag = 7
    Left = 216
    Top = 241
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 28
    OnExit = edtValor7Exit
  end
  object edtServ7: TCurrencyEdit
    Tag = 7
    Left = 325
    Top = 241
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 29
  end
  object edtVcto8: TwwDBDateTimePicker
    Tag = 8
    Left = 105
    Top = 266
    Width = 102
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 31
  end
  object edtValor8: TCurrencyEdit
    Tag = 8
    Left = 216
    Top = 266
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 32
    OnExit = edtValor8Exit
  end
  object edtServ8: TCurrencyEdit
    Tag = 8
    Left = 325
    Top = 266
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 33
  end
  object edtMat1: TCurrencyEdit
    Tag = 1
    Left = 434
    Top = 96
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 5
  end
  object edtMat2: TCurrencyEdit
    Tag = 2
    Left = 434
    Top = 120
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 10
  end
  object edtMat3: TCurrencyEdit
    Tag = 3
    Left = 434
    Top = 144
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 14
  end
  object edtMat4: TCurrencyEdit
    Tag = 4
    Left = 434
    Top = 167
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 16
  end
  object edtMat5: TCurrencyEdit
    Tag = 5
    Left = 434
    Top = 192
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 22
  end
  object edtMat6: TCurrencyEdit
    Tag = 6
    Left = 434
    Top = 216
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 26
  end
  object edtMat7: TCurrencyEdit
    Tag = 7
    Left = 434
    Top = 241
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 30
  end
  object edtMat8: TCurrencyEdit
    Tag = 8
    Left = 434
    Top = 266
    Width = 105
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 34
  end
end
