object frmRelFunc: TfrmRelFunc
  Left = 199
  Top = 164
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de funcion'#225'rios'
  ClientHeight = 123
  ClientWidth = 268
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 27
    Height = 13
    Caption = 'In'#237'cio'
  end
  object Label2: TLabel
    Left = 135
    Top = 10
    Width = 22
    Height = 13
    Caption = 'Final'
  end
  object Label3: TLabel
    Left = 10
    Top = 50
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
  end
  object edtInicio: TwwDBDateTimePicker
    Left = 10
    Top = 25
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
  object edtFinal: TwwDBDateTimePicker
    Left = 135
    Top = 25
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 100
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      0400000000007800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF0000000000
      0FFFF0888888888080FF000000000000080F0888888FFF88000F088888877788
      080F00000000000008800888888888808080F000000000080800FF0FFFFFFFF0
      8080FFF0F00000F0000FFFF0FFFFFFFF0FFFFFFF0F00000F0FFFFFFF0FFFFFFF
      F0FFFFFFF000000000FFFFFFFFFFFFFFFFFF}
  end
  object BitBtn2: TBitBtn
    Left = 180
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = BitBtn2Click
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
  end
  object qrpOS: TQuickRep
    Left = 8
    Top = 136
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryOS
    Description.Strings = (
      'Relat'#243'rio de servi'#231'os por funcion'#225'rio')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Relat'#243'rio de servi'#231'os por funcion'#225'rio'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 86
      Width = 718
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        79.375000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 5
        Top = 5
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          13.229166666666670000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'OS'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 50
        Top = 5
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          132.291666666666700000
          13.229166666666670000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 125
        Top = 5
        Width = 301
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          330.729166666666700000
          13.229166666666670000
          796.395833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 430
        Top = 5
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1137.708333333333000000
          13.229166666666670000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Chegada'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 495
        Top = 5
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1309.687500000000000000
          13.229166666666670000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sa'#237'da'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 555
        Top = 5
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1468.437500000000000000
          13.229166666666670000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hrs.Trab.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 620
        Top = 5
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          13.229166666666670000
          254.000000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Valor materiais'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 146
      Width = 718
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = DetailBand1AfterPrint
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        42.333333333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 45
        Top = 0
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          119.062500000000000000
          0.000000000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOS
        DataField = 'DATA'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 130
        Top = 0
        Width = 291
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          343.958333333333400000
          0.000000000000000000
          769.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOS
        DataField = 'NOMEDOCLIENTE'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 0
        Top = 0
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          0.000000000000000000
          95.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOS
        DataField = 'OS'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 425
        Top = 0
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1124.479166666667000000
          0.000000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOS
        DataField = 'CHEGADA'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 495
        Top = 0
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1309.687500000000000000
          0.000000000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOS
        DataField = 'SAIDA'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 560
        Top = 0
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          0.000000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOS
        DataField = 'HORAS'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 640
        Top = 0
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          0.000000000000000000
          201.083333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOS
        DataField = 'VALORCOBRADO'
        Mask = '###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 48
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        127.000000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 5
        Top = 5
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          13.229166666666670000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'INSTALLUX'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 5
        Top = 25
        Width = 159
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          66.145833333333330000
          420.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sistema de controle de loja'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 323
        Top = 5
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          854.604166666666700000
          13.229166666666670000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsReportTitle
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 563
        Top = 5
        Width = 155
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1489.604166666667000000
          13.229166666666670000
          410.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Text = 'Impresso em : '
        Transparent = False
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 620
        Top = 25
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          66.145833333333330000
          259.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'P'#225'gina : '
        Transparent = False
        FontSize = 10
      end
      object lblPeriodo: TQRLabel
        Left = 330
        Top = 25
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          873.125000000000000000
          66.145833333333330000
          153.458333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'lblPeriodo'
        Color = clWhite
        OnPrint = lblPeriodoPrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 202
      Width = 718
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object lblTotHoras: TQRLabel
        Left = 360
        Top = 5
        Width = 226
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          952.500000000000000000
          13.229166666666670000
          597.958333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lblTotHoras'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 605
        Top = 5
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1600.729166666667000000
          13.229166666666670000
          298.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(qryOS.VALORCOBRADO)'
        Mask = '###,###,##0.00'
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 225
        Top = 5
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          595.312500000000000000
          13.229166666666670000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total do per'#237'odo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 116
      Width = 718
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryOS.FUNCIONARIO'
      FooterBand = QRBand1
      Master = qrpOS
      ReprintOnNewPage = False
      object QRDBText7: TQRDBText
        Left = 5
        Top = 5
        Width = 186
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          13.229166666666670000
          13.229166666666670000
          492.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryOS
        DataField = 'NOMEDOFUNCIONARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 162
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object lblTotHorasFun: TQRLabel
        Left = 365
        Top = 5
        Width = 218
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          965.729166666666800000
          13.229166666666670000
          576.791666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lblTotHorasFun'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr1: TQRExpr
        Left = 605
        Top = 5
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1600.729166666667000000
          13.229166666666670000
          298.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(qryOS.VALORCOBRADO)'
        Mask = '###,###,##0.00'
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 205
        Top = 5
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          542.395833333333300000
          13.229166666666670000
          298.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total do funcion'#225'rio'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object edtFuncionario: TEdit
    Left = 10
    Top = 65
    Width = 246
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 30
    TabOrder = 2
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 15
    Top = 40
  end
  object qryOS: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    OnCalcFields = qryOSCalcFields
    SQL.Strings = (
      'SELECT'
      'O.DATA, O.OS, O.SAIDA, O.CHEGADA,O.FUNCIONARIO,'
      
        'F.NOME AS NOMEDOFUNCIONARIO,O.CLIENTE, ( O.VALORCOBRADOSERVICOS ' +
        '/ F.QUANTIDADE ) AS VALORCOBRADO ,'
      'C.NOME AS NOMEDOCLIENTE'
      ''
      'FROM'
      'OS O'
      ''
      ''
      'INNER JOIN CLIENTES '#9#9'C ON ( O.CLIENTE = C.CODIGO )'
      'INNER JOIN FUNCIONARIOS'#9'F ON ( O.FUNCIONARIO = F.CODIGO )'
      ''
      'WHERE '
      'O.DATA BETWEEN :INICIO AND :FINAL AND'
      'UPPER( F.NOME ) CONTAINING  uPPER(  :FUNCIONARIO )'
      ''
      ''
      'ORDER BY '
      'F.NOME, O.FUNCIONARIO,O.DATA')
    Left = 70
    Top = 8
    ParamData = <
      item
        DataType = ftDate
        Name = 'INICIO'
        ParamType = ptUnknown
        Value = '01/01/2001'
      end
      item
        DataType = ftDate
        Name = 'FINAL'
        ParamType = ptUnknown
        Value = '31/12/2003'
      end
      item
        DataType = ftString
        Name = 'FUNCIONARIO'
        ParamType = ptUnknown
      end>
    object qryOSDATA: TDateField
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object qryOSOS: TIntegerField
      FieldName = 'OS'
      Origin = 'OS.OS'
      Required = True
    end
    object qryOSSAIDA: TTimeField
      FieldName = 'SAIDA'
      Origin = 'OS.SAIDA'
      DisplayFormat = 't'
    end
    object qryOSCHEGADA: TTimeField
      FieldName = 'CHEGADA'
      Origin = 'OS.CHEGADA'
      DisplayFormat = 't'
    end
    object qryOSFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'OS.FUNCIONARIO'
    end
    object qryOSNOMEDOFUNCIONARIO: TIBStringField
      FieldName = 'NOMEDOFUNCIONARIO'
      Origin = 'FUNCIONARIOS.NOME'
      Size = 50
    end
    object qryOSCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'OS.CLIENTE'
    end
    object qryOSNOMEDOCLIENTE: TIBStringField
      FieldName = 'NOMEDOCLIENTE'
      Origin = 'CLIENTES.NOME'
      Required = True
      Size = 50
    end
    object qryOSHORAS: TTimeField
      FieldKind = fkCalculated
      FieldName = 'HORAS'
      DisplayFormat = 't'
      Calculated = True
    end
    object qryOSTOTHORAS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTHORAS'
      DisplayFormat = 't'
      EditFormat = '##:##;0; '
      Calculated = True
    end
    object qryOSTOTMINUTOS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTMINUTOS'
      DisplayFormat = 't'
      EditFormat = '##:##;0; '
      Calculated = True
    end
    object qryOSVALORCOBRADO: TIBBCDField
      FieldName = 'VALORCOBRADO'
      Origin = 'OS.VALORCOBRADO'
      Precision = 9
      Size = 2
    end
  end
  object dtsOS: TDataSource
    DataSet = qryOS
    Left = 82
    Top = 8
  end
end
