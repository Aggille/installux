object frmRelServicos: TfrmRelServicos
  Left = 0
  Top = 149
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de servi'#231'os'
  ClientHeight = 99
  ClientWidth = 280
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
    Left = 144
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
    Top = 56
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
    Left = 187
    Top = 56
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
    Left = 5
    Top = 145
    Width = 794
    Height = 1123
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
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
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
    ReportTitle = 'Relat'#243'rio de servi'#231'os'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 86
      Width = 718
      Height = 20
      Frame.DrawBottom = True
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
        52.916666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 185
        Top = 0
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          489.479166666666700000
          0.000000000000000000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Produto'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 490
        Top = 0
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          1296.458333333333000000
          0.000000000000000000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ambiente'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 145
        Top = 0
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          383.645833333333300000
          0.000000000000000000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Qtde.'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 211
      Width = 718
      Height = 16
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
        Left = 180
        Top = 0
        Width = 311
        Height = 17
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          0.000000000000000000
          822.854166666666600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'NOMEDOPRODUTO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 495
        Top = 0
        Width = 211
        Height = 17
        Size.Values = (
          44.979166666666670000
          1309.687500000000000000
          0.000000000000000000
          558.270833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'NOMEDOAMBIENTE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 125
        Top = 0
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          330.729166666666700000
          0.000000000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'QUANTIDADE'
        Transparent = False
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
      Width = 718
      Height = 48
      Frame.DrawBottom = True
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
        Left = 323
        Top = 5
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          854.604166666666700000
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
        Left = 563
        Top = 5
        Width = 155
        Height = 17
        Size.Values = (
          44.979166666666670000
          1489.604166666667000000
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
        Left = 620
        Top = 25
        Width = 98
        Height = 17
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
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
        Left = 330
        Top = 25
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          873.125000000000000000
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
    object SummaryBand1: TQRBand
      Left = 38
      Top = 267
      Width = 718
      Height = 30
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
        Left = 10
        Top = 5
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          13.229166666666670000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblTotHoras'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 106
      Width = 718
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'sqlServico.DATA'
      FooterBand = QRBand1
      Master = qrServicos
      ReprintOnNewPage = False
      object QRDBText7: TQRDBText
        Left = 5
        Top = 5
        Width = 45
        Height = 20
        Size.Values = (
          52.916666666666670000
          13.229166666666670000
          13.229166666666670000
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
    object QRGroup2: TQRGroup
      Left = 38
      Top = 146
      Width = 718
      Height = 65
      AfterPrint = QRGroup2AfterPrint
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        171.979166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'sqlServico.OS'
      Master = qrServicos
      ReprintOnNewPage = False
      object QRDBText8: TQRDBText
        Left = 95
        Top = 5
        Width = 16
        Height = 17
        Size.Values = (
          44.979166666666670000
          251.354166666666700000
          13.229166666666670000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 515
        Top = 5
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1362.604166666667000000
          13.229166666666670000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'CHEGADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 600
        Top = 5
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          13.229166666666670000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 680
        Top = 5
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          1799.166666666667000000
          13.229166666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'HORAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 35
        Top = 5
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          92.604166666666670000
          13.229166666666670000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186' da OS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 145
        Top = 5
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          383.645833333333300000
          13.229166666666670000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 190
        Top = 5
        Width = 256
        Height = 17
        Size.Values = (
          44.979166666666670000
          502.708333333333400000
          13.229166666666670000
          677.333333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'NOMEDOCLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 455
        Top = 5
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1203.854166666667000000
          13.229166666666670000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Chegada'
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
      object QRLabel9: TQRLabel
        Left = 560
        Top = 5
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          13.229166666666670000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sa'#237'da'
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
      object QRLabel10: TQRLabel
        Left = 645
        Top = 5
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          1706.562500000000000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total'
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
      object QRShape1: TQRShape
        Left = 35
        Top = 40
        Width = 681
        Height = 15
        Size.Values = (
          39.687500000000000000
          92.604166666666680000
          105.833333333333300000
          1801.812500000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 35
        Top = 25
        Width = 98
        Height = 17
        Size.Values = (
          44.979166666666670000
          92.604166666666670000
          66.145833333333330000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Funcion'#225'rio / Equipe'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 150
        Top = 25
        Width = 296
        Height = 17
        Size.Values = (
          44.979166666666670000
          396.875000000000000000
          66.145833333333340000
          783.166666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'FUNCIONARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 455
        Top = 25
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          1203.854166666667000000
          66.145833333333330000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186' pessoas'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 520
        Top = 25
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          66.145833333333340000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlServico
        DataField = 'QT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 227
      Width = 718
      Height = 40
      Frame.DrawBottom = True
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
      object lblTotHorasDia: TQRLabel
        Left = 10
        Top = 10
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          26.458333333333330000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblTotHorasDia'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 8
    Top = 48
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
      'O.DATA, O.OS, O.SAIDA, O.CHEGADA,'
      
        'S.AMBIENTE, S.PRODUTO, S.QUANTIDADE, F.NOME AS FUNCIONARIO,O.CLI' +
        'ENTE,'
      'P.NOME AS NOMEDOPRODUTO,'
      'C.NOME AS NOMEDOCLIENTE,'
      'A.DESCRICAO AS NOMEDOAMBIENTE, F.QUANTIDADE AS QT'
      ''
      'FROM'
      'SERVICOS S'
      ''
      ''
      'INNER JOIN OS'#9#9'O ON ( S.OS = O.OS )'
      'INNER JOIN PRODUTOS '#9'P ON ( S.PRODUTO = P.CODIGO )'
      'INNER JOIN CLIENTES '#9'C ON ( O.CLIENTE = C.CODIGO )'
      'LEFT JOIN FUNCIONARIOS '#9'F ON ( O.FUNCIONARIO = F.CODIGO )'
      'LEFT JOIN AMBIENTES '#9'A ON ( S.AMBIENTE = A.CODIGO )'
      ''
      'WHERE '
      'O.DATA BETWEEN :INICIO AND :FINAL'
      ''
      ''
      'ORDER BY '
      'O.DATA,O.OS, O.CLIENTE,O.FUNCIONARIO')
    Left = 40
    Top = 48
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
      end>
    object sqlServicoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'SERVICOS.DATA'
      Required = True
    end
    object sqlServicoAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
      Origin = 'SERVICOS.AMBIENTE'
    end
    object sqlServicoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'SERVICOS.QUANTIDADE'
    end
    object sqlServicoNOMEDOPRODUTO: TIBStringField
      FieldName = 'NOMEDOPRODUTO'
      Origin = 'PRODUTOS.NOME'
      Required = True
      Size = 50
    end
    object sqlServicoNOMEDOCLIENTE: TIBStringField
      FieldName = 'NOMEDOCLIENTE'
      Origin = 'CLIENTES.NOME'
      Required = True
      Size = 50
    end
    object sqlServicoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'SERVICOS.CLIENTE'
      Required = True
    end
    object sqlServicoTEMPO: TTimeField
      FieldKind = fkCalculated
      FieldName = 'TEMPO'
      Calculated = True
    end
    object sqlServicoFUNCIONARIO: TIBStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'SERVICOS.FUNCIONARIO'
      Required = True
      Size = 50
    end
    object sqlServicoPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'SERVICOS.PRODUTO'
    end
    object sqlServicoOS: TIntegerField
      FieldName = 'OS'
      Origin = 'OS.OS'
      Required = True
    end
    object sqlServicoHORAS: TTimeField
      FieldKind = fkCalculated
      FieldName = 'HORAS'
      DisplayFormat = 't'
      Calculated = True
    end
    object sqlServicoSAIDA: TTimeField
      FieldName = 'SAIDA'
      Origin = 'OS.SAIDA'
      DisplayFormat = 't'
    end
    object sqlServicoCHEGADA: TTimeField
      FieldName = 'CHEGADA'
      Origin = 'OS.CHEGADA'
      DisplayFormat = 't'
    end
    object sqlServicoTOTHORAS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTHORAS'
      Calculated = True
    end
    object sqlServicoTOTMINUTOS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTMINUTOS'
      Calculated = True
    end
    object sqlServicoNOMEDOAMBIENTE: TIBStringField
      FieldName = 'NOMEDOAMBIENTE'
      Origin = 'AMBIENTES.DESCRICAO'
      Size = 40
    end
    object sqlServicoQT: TSmallintField
      FieldName = 'QT'
      Origin = '"FUNCIONARIOS"."QUANTIDADE"'
    end
  end
end
