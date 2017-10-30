object frmRelServicosData: TfrmRelServicosData
  Left = 144
  Top = 160
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de servi'#231'os'
  ClientHeight = 91
  ClientWidth = 269
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
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'In'#237'cio'
  end
  object Label2: TLabel
    Left = 137
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Final'
  end
  object edtInicio: TwwDBDateTimePicker
    Left = 8
    Top = 24
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
    Left = 136
    Top = 24
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
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      22222200000000000222208888888880802200000000000008020888888BBB88
      0002088888877788080200000000000008800888888888808080200000000008
      0800220FFFFFFFF080802220F00000F000022220FFFFFFFF022222220F00000F
      022222220FFFFFFFF02222222000000000222222222222222222}
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 182
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Sair'
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
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object qrServicos: TQuickRep
    Left = 69
    Top = 153
    Width = 1123
    Height = 794
    DataSet = sqlServico
    Description.Strings = (
      'Relat'#243'rio de servi'#231'os')
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
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
    ReportTitle = 'Relat'#243'rio de servi'#231'os'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 38
      Top = 188
      Width = 1047
      Height = 15
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
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
        39.687500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 0
        Top = 0
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          0.000000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'OS'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 48
        Top = 0
        Width = 257
        Height = 15
        Size.Values = (
          39.687500000000000000
          127.000000000000000000
          0.000000000000000000
          679.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'NOME'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 476
        Top = 0
        Width = 49
        Height = 15
        Size.Values = (
          39.687500000000000000
          1259.416666666667000000
          0.000000000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'CHEGADA'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 532
        Top = 0
        Width = 49
        Height = 15
        Size.Values = (
          39.687500000000000000
          1407.583333333333000000
          0.000000000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'SAIDA'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 660
        Top = 0
        Width = 65
        Height = 15
        Size.Values = (
          39.687500000000000000
          1746.250000000000000000
          0.000000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'VALORCOBRADOSERVICOS'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 732
        Top = 0
        Width = 49
        Height = 15
        Size.Values = (
          39.687500000000000000
          1936.750000000000000000
          0.000000000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'VALORCOBRADOMATERIAIS'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 788
        Top = 0
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          2084.916666666667000000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'VALORCOBRADO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 621
        Top = 0
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          1643.062500000000000000
          0.000000000000000000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel3'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 588
        Top = 0
        Width = 20
        Height = 15
        Size.Values = (
          39.687500000000000000
          1555.750000000000000000
          0.000000000000000000
          52.916666666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'QT'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 311
        Top = 0
        Width = 162
        Height = 15
        Size.Values = (
          39.687500000000000000
          822.854166666666700000
          0.000000000000000000
          428.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'NOMEFUNCIONARIO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 892
        Top = 0
        Width = 149
        Height = 15
        Size.Values = (
          39.687500000000000000
          2360.083333333333000000
          0.000000000000000000
          394.229166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'DH_ENVIO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 851
        Top = 0
        Width = 35
        Height = 15
        Size.Values = (
          39.687500000000000000
          2251.604166666667000000
          0.000000000000000000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'RECIBO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 59
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        156.104166666666700000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 5
        Top = 5
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          13.229166666666670000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'INSTALLUX'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 5
        Top = 25
        Width = 159
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          66.145833333333330000
          420.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sistema de controle de loja'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 487
        Top = 5
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          1288.520833333333000000
          13.229166666666670000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        Color = clWhite
        Data = qrsReportTitle
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 892
        Top = 5
        Width = 155
        Height = 17
        Size.Values = (
          44.979166666666670000
          2360.083333333333000000
          13.229166666666670000
          410.104166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = True
        Color = clWhite
        Data = qrsDateTime
        Text = 'Impresso em : '
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 949
        Top = 25
        Width = 98
        Height = 17
        Size.Values = (
          44.979166666666670000
          2510.895833333333000000
          66.145833333333330000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'P'#225'gina : '
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object lblPeriodo: TQRLabel
        Left = 494
        Top = 25
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          1307.041666666667000000
          66.145833333333330000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        Caption = 'lblPeriodo'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 148
      Width = 1047
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'sqlServico.DATA'
      FooterBand = QRBand1
      Master = qrServicos
      ReprintOnNewPage = False
      object QRDBText9: TQRDBText
        Left = 16
        Top = 8
        Width = 45
        Height = 20
        Size.Values = (
          52.916666666666670000
          42.333333333333330000
          21.166666666666670000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 203
      Width = 1047
      Height = 33
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
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
        87.312500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object lblTotHorasDia: TQRLabel
        Left = 621
        Top = 8
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1643.062500000000000000
          21.166666666666670000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'lblTotHorasDia'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 668
        Top = 8
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          1767.416666666667000000
          21.166666666666670000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sqlServico.VALORCOBRADOSERVICOS)'
        Mask = '###,###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 732
        Top = 8
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1936.750000000000000000
          21.166666666666670000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sqlServico.VALORCOBRADOMATERIAIS)'
        Mask = '###,###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 786
        Top = 8
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          2079.625000000000000000
          21.166666666666670000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sqlServico.VALORCOBRADO)'
        Mask = '###,###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 520
        Top = 6
        Width = 70
        Height = 15
        Size.Values = (
          39.687500000000000000
          1375.833333333333000000
          15.875000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total do dia :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 236
      Width = 1047
      Height = 33
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
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
        87.312500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object lblTotHoras: TQRLabel
        Left = 621
        Top = 8
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1643.062500000000000000
          21.166666666666670000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'lblTotHorasDia'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr10: TQRExpr
        Left = 668
        Top = 8
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          1767.416666666667000000
          21.166666666666670000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sqlServico.VALORCOBRADOSERVICOS)'
        Mask = '###,###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr11: TQRExpr
        Left = 732
        Top = 8
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1936.750000000000000000
          21.166666666666670000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sqlServico.VALORCOBRADOMATERIAIS)'
        Mask = '###,###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr12: TQRExpr
        Left = 786
        Top = 8
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          2079.625000000000000000
          21.166666666666670000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sqlServico.VALORCOBRADO)'
        Mask = '###,###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 493
        Top = 6
        Width = 97
        Height = 15
        Size.Values = (
          39.687500000000000000
          1304.395833333333000000
          15.875000000000000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total do per'#237'odo :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 97
      Width = 1047
      Height = 51
      Frame.DrawBottom = True
      AlignToBottom = False
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
        134.937500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 8
        Top = 8
        Width = 16
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 40
        Top = 8
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          21.166666666666670000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 512
        Top = 8
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          21.166666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Hor'#225'rio'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 704
        Top = 8
        Width = 88
        Height = 17
        Size.Values = (
          44.979166666666670000
          1862.666666666667000000
          21.166666666666670000
          232.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valores cobrados'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 680
        Top = 32
        Width = 44
        Height = 17
        Size.Values = (
          44.979166666666670000
          1799.166666666667000000
          84.666666666666670000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Servi'#231'os'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 736
        Top = 32
        Width = 44
        Height = 17
        Size.Values = (
          44.979166666666670000
          1947.333333333333000000
          84.666666666666670000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Materiais'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 821
        Top = 32
        Width = 24
        Height = 17
        Size.Values = (
          44.979166666666670000
          2172.229166666667000000
          84.666666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 480
        Top = 32
        Width = 44
        Height = 17
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          84.666666666666670000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Chegada'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 552
        Top = 32
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          1460.500000000000000000
          84.666666666666670000
          74.083333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sa'#237'da'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 592
        Top = 32
        Width = 15
        Height = 17
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          84.666666666666670000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Qt.'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 632
        Top = 32
        Width = 24
        Height = 17
        Size.Values = (
          44.979166666666670000
          1672.166666666667000000
          84.666666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 311
        Top = 8
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          822.854166666666700000
          21.166666666666670000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Funcion'#225'rio'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 923
        Top = 32
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          2442.104166666667000000
          84.666666666666670000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Digita'#231#227'o via APP'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 851
        Top = 32
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          2251.604166666667000000
          84.666666666666670000
          89.958333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Recibo'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 16
    Top = 40
  end
  object sqlServico: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    OnCalcFields = sqlServicoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      
        'O.CLIENTE, O.VALORMATERIAIS, O.VALORSERVICOS, O.VALORCOBRADOMATE' +
        'RIAIS, O.OS,'
      
        'O.VALORCOBRADOSERVICOS,O.DATA, O.SAIDA, O.CHEGADA, O.VALORCOBRAD' +
        'O,O.VALOR,'
      'R.PAGAMENTO,O.RECIBO,'
      'C.NOME,'
      'F.QUANTIDADE AS QT,'
      'F.NOME AS NOMEFUNCIONARIO,'
      'O.OBS'
      ''
      'FROM OS O '
      ''
      'LEFT JOIN RECIBOS R ON ( O.RECIBO = R.ID )'
      'LEFT JOIN CLIENTES C ON ( C.CODIGO = O.CLIENTE )'
      'LEFT JOIN FUNCIONARIOS F ON ( O.FUNCIONARIO = F.CODIGO )'
      ''
      'WHERE '
      'O.DATA BETWEEN :INICIO AND :FINAL'
      '--AND COALESCE( RECIBO , 0) = 0'
      ''
      'ORDER BY O.DATA, O.OS, F.NOME')
    Left = 48
    Top = 40
    ParamData = <
      item
        DataType = ftDate
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'FINAL'
        ParamType = ptUnknown
      end>
    object sqlServicoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'OS.CLIENTE'
    end
    object sqlServicoVALORMATERIAIS: TIBBCDField
      FieldName = 'VALORMATERIAIS'
      Origin = 'OS.VALORMATERIAIS'
      DisplayFormat = '###,###,0.00'
      EditFormat = '###,###,0.00'
      Precision = 9
      Size = 2
    end
    object sqlServicoVALORSERVICOS: TIBBCDField
      FieldName = 'VALORSERVICOS'
      Origin = 'OS.VALORSERVICOS'
      DisplayFormat = '###,###,0.00'
      EditFormat = '###,###,0.00'
      Precision = 9
      Size = 2
    end
    object sqlServicoVALORCOBRADOMATERIAIS: TIBBCDField
      FieldName = 'VALORCOBRADOMATERIAIS'
      Origin = 'OS.VALORCOBRADOMATERIAIS'
      DisplayFormat = '###,###,0.00'
      EditFormat = '###,###,0.00'
      Precision = 9
      Size = 2
    end
    object sqlServicoVALORCOBRADOSERVICOS: TIBBCDField
      FieldName = 'VALORCOBRADOSERVICOS'
      Origin = 'OS.VALORCOBRADOSERVICOS'
      DisplayFormat = '###,###,0.00'
      EditFormat = '###,###,0.00'
      Precision = 9
      Size = 2
    end
    object sqlServicoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object sqlServicoSAIDA: TTimeField
      FieldName = 'SAIDA'
      Origin = 'OS.SAIDA'
    end
    object sqlServicoCHEGADA: TTimeField
      FieldName = 'CHEGADA'
      Origin = 'OS.CHEGADA'
    end
    object sqlServicoPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = 'RECIBOS.PAGAMENTO'
    end
    object sqlServicoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CLIENTES.NOME'
      Size = 60
    end
    object sqlServicoHORAS: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'HORAS'
      Calculated = True
    end
    object sqlServicoOS: TIntegerField
      FieldName = 'OS'
      Origin = 'OS.OS'
      Required = True
    end
    object sqlServicoVALORCOBRADO: TIBBCDField
      FieldName = 'VALORCOBRADO'
      Origin = 'OS.VALORCOBRADO'
      DisplayFormat = '###,###,0.00'
      EditFormat = '###,###,0.00'
      Precision = 9
      Size = 2
    end
    object sqlServicoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'OS.VALOR'
      DisplayFormat = '###,###,0.00'
      EditFormat = '###,###,0.00'
      Precision = 9
      Size = 2
    end
    object sqlServicotothoras: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'tothoras'
      Calculated = True
    end
    object sqlServicototminutos: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'totminutos'
      Calculated = True
    end
    object sqlServicoQT: TIntegerField
      FieldName = 'QT'
      Origin = 'FUNCIONARIOS.QUANTIDADE'
    end
    object sqlServicoNOMEFUNCIONARIO: TIBStringField
      FieldName = 'NOMEFUNCIONARIO'
      Origin = '"FUNCIONARIOS"."NOME"'
      Size = 50
    end
    object sqlServicoOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"OS"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sqlServicoDH_ENVIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'DH_ENVIO'
      Calculated = True
    end
    object sqlServicoRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = '"OS"."RECIBO"'
    end
  end
end
