object frmImpfichaRecibo: TfrmImpfichaRecibo
  Left = -30
  Top = 13
  Caption = 'ImprimeFichaRecibo'
  ClientHeight = 611
  ClientWidth = 812
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object qrFicha: TQuickRep
    Left = 20
    Top = -7
    Width = 794
    Height = 1123
    DataSet = tblFicha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
      Top = 429
      Width = 718
      Height = 20
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 55
        Top = 3
        Width = 494
        Height = 17
        Size.Values = (
          44.979166666666670000
          145.520833333333300000
          7.937500000000000000
          1307.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'PRODUTO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 574
        Top = 3
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666670000
          1518.708333333333000000
          7.937500000000000000
          211.666666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
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
      Height = 305
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        806.979166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel5: TQRLabel
        Left = 16
        Top = 241
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          637.645833333333300000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 16
        Top = 264
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          698.500000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 80
        Top = 240
        Width = 253
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          635.000000000000000000
          669.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
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
      object QRDBText10: TQRDBText
        Left = 80
        Top = 264
        Width = 161
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          698.500000000000000000
          425.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'TELEFONE'
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
      object QRShape1: TQRShape
        Left = 16
        Top = 216
        Width = 697
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          571.500000000000000000
          1844.145833333333000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 368
        Top = 238
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          973.666666666666700000
          629.708333333333300000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Arquiteto (a)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 444
        Top = 239
        Width = 251
        Height = 17
        Size.Values = (
          44.979166666666670000
          1174.750000000000000000
          632.354166666666700000
          664.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'NOMEDOARQUITETO'
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
      object lblNumero: TQRLabel
        Left = 38
        Top = 139
        Width = 95
        Height = 17
        Size.Values = (
          44.979166666666670000
          100.541666666666700000
          367.770833333333300000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Renan R. Lima'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 592
        Top = 193
        Width = 121
        Height = 17
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          510.645833333333300000
          320.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmRecibos.tblRecibos
        DataField = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 549
        Top = 193
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1452.562500000000000000
          510.645833333333300000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 16
        Top = 284
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          751.416666666666700000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Email'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText23: TQRDBText
        Left = 79
        Top = 284
        Width = 276
        Height = 17
        Size.Values = (
          44.979166666666670000
          209.020833333333300000
          751.416666666666700000
          730.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'EMAIL'
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
      object QRDBText1: TQRDBText
        Left = 256
        Top = 4
        Width = 49
        Height = 29
        Frame.DrawBottom = True
        Size.Values = (
          76.729166666666670000
          677.333333333333300000
          10.583333333333330000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'NOME'
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
      object QRDBText9: TQRDBText
        Left = 256
        Top = 45
        Width = 74
        Height = 17
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          119.062500000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText9Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 256
        Top = 62
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          164.041666666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText12Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 256
        Top = 80
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          211.666666666666700000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fone / Fax : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 334
        Top = 81
        Width = 69
        Height = 17
        Size.Values = (
          44.979166666666670000
          883.708333333333300000
          214.312500000000000000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 256
        Top = 99
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          261.937500000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Email: '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 302
        Top = 99
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          799.041666666666700000
          261.937500000000000000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 255
        Top = 122
        Width = 129
        Height = 17
        Size.Values = (
          44.979166666666670000
          674.687500000000000000
          322.791666666666700000
          341.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'RESPONSAVEL1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 255
        Top = 142
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          674.687500000000000000
          375.708333333333300000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'CREA:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 255
        Top = 163
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          674.687500000000000000
          431.270833333333300000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Celular:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 307
        Top = 163
        Width = 93
        Height = 17
        Size.Values = (
          44.979166666666670000
          812.270833333333400000
          431.270833333333300000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'FONE_RESP1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 307
        Top = 142
        Width = 93
        Height = 17
        Size.Values = (
          44.979166666666670000
          812.270833333333400000
          375.708333333333300000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'CREA1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 405
        Top = 163
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          1071.562500000000000000
          431.270833333333300000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Celular:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 407
        Top = 142
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          375.708333333333300000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'CREA:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 407
        Top = 122
        Width = 209
        Height = 17
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          322.791666666666700000
          552.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'RESPONSAVEL2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 459
        Top = 142
        Width = 125
        Height = 17
        Size.Values = (
          44.979166666666670000
          1214.437500000000000000
          375.708333333333300000
          330.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'CREA2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 459
        Top = 163
        Width = 117
        Height = 17
        Size.Values = (
          44.979166666666670000
          1214.437500000000000000
          431.270833333333300000
          309.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'FONE_RESP2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 620
        Top = 164
        Width = 98
        Height = 17
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          433.916666666666700000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'P'#225'gina : '
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object Telefone: TQRLabel
        Left = 416
        Top = 307
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          812.270833333333300000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 506
        Top = 307
        Width = 236
        Height = 17
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          812.270833333333300000
          624.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'TELEFONEARQ'
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
      object QRDBText14: TQRDBText
        Left = 506
        Top = 329
        Width = 252
        Height = 17
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          870.479166666666700000
          666.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'EMAILARQ'
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
      object QRLabel2: TQRLabel
        Left = 416
        Top = 330
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          873.125000000000000000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Email'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 368
        Top = 261
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          973.666666666666700000
          690.562500000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 368
        Top = 284
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          973.666666666666700000
          751.416666666666700000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Email'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 444
        Top = 262
        Width = 251
        Height = 17
        Size.Values = (
          44.979166666666670000
          1174.750000000000000000
          693.208333333333300000
          664.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'TELEFONEARQ'
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
      object QRDBText16: TQRDBText
        Left = 444
        Top = 282
        Width = 251
        Height = 17
        Size.Values = (
          44.979166666666670000
          1174.750000000000000000
          746.125000000000000000
          664.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'EMAILARQ'
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
      object QRImage1: TQRImage
        Left = 21
        Top = 10
        Width = 220
        Height = 111
        Size.Values = (
          293.687500000000000000
          55.562500000000000000
          26.458333333333330000
          582.083333333333300000)
        XLColumn = 0
        Center = True
        Picture.Data = {
          0D546478536D617274496D616765FFD8FFE000104A4649460001010100480048
          0000FFDB0043000302020302020303030304030304050805050404050A070706
          080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F1718
          16141812141514FFDB00430103040405040509050509140D0B0D141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          141414141414141414141414FFC000110800FF02FC03012200021101031101FF
          C4001F0000010501010101010100000000000000000102030405060708090A0B
          FFC400B5100002010303020403050504040000017D0102030004110512213141
          0613516107227114328191A1082342B1C11552D1F02433627282090A16171819
          1A25262728292A3435363738393A434445464748494A535455565758595A6364
          65666768696A737475767778797A838485868788898A92939495969798999AA2
          A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7
          D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101
          010101010101010000000000000102030405060708090A0BFFC400B511000201
          0204040304070504040001027700010203110405213106124151076171132232
          8108144291A1B1C109233352F0156272D10A162434E125F11718191A26272829
          2A35363738393A434445464748494A535455565758595A636465666768696A73
          7475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8
          A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4
          E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FB8BE0
          D7C1AF03EADF0A7C2B7B7BE15D2AEEF2E34F8659679AD959DD8A824924724D76
          9FF0A1FE1EFF00D09BA37FE0227F852FC07FF9235E0DFF00B05C1FFA00AEF280
          382FF850FF000F7FE84DD1BFF0113FC28FF850FF000F7FE84DD1BFF0113FC2BB
          DA280382FF00850FF0F7FE84DD1BFF000113FC28FF00850FF0F7FE84DD1BFF00
          0113FC2BBDA280382FF850FF000F7FE84DD1BFF0113FC28FF850FF000F7FE84D
          D1BFF0113FC2BBDA280382FF00850FF0F7FE84DD1BFF000113FC28FF00850FF0
          F7FE84DD1BFF000113FC2BBDA280382FF850FF000F7FE84DD1BFF0113FC28FF8
          50FF000F7FE84DD1BFF0113FC2BBDA280382FF00850FF0F7FE84DD1BFF000113
          FC28FF00850FF0F7FE84DD1BFF000113FC2BBDA280382FF850FF000F7FE84DD1
          BFF0113FC28FF850FF000F7FE84DD1BFF0113FC2BBDA280382FF00850FF0F7FE
          84DD1BFF000113FC28FF00850FF0F7FE84DD1BFF000113FC2BBDA280382FF850
          FF000F7FE84DD1BFF0113FC28FF850FF000F7FE84DD1BFF0113FC2BBDA280382
          FF00850FF0F7FE84DD1BFF000113FC28FF00850FF0F7FE84DD1BFF000113FC2B
          BDA280382FF850FF000F7FE84DD1BFF0113FC28FF850FF000F7FE84DD1BFF011
          3FC2BBDA280382FF00850FF0F7FE84DD1BFF000113FC28FF00850FF0F7FE84DD
          1BFF000113FC2BBDA280382FF850FF000F7FE84DD1BFF0113FC28FF850FF000F
          7FE84DD1BFF0113FC2BBDA280382FF00850FF0F7FE84DD1BFF000113FC28FF00
          850FF0F7FE84DD1BFF000113FC2BBDA280382FF850FF000F7FE84DD1BFF0113F
          C28FF850FF000F7FE84DD1BFF0113FC2BBCA5A00E0BFE143FC3DFF00A13746FF
          00C044FF000A3FE143FC3DFF00A13746FF00C044FF000AEEF70A469517ABA8FA
          9A8E68C7A8F53841F027E1EFFD09BA37FE0227F851FF000A27E1E7FD09BA37FE
          01A7F8576726A36B10CBDC44A3FDE15466F15E9101C49A8DBA9F790573CF1542
          1F1D44BD5A3454EA4B68B67343E047C3D3FF0032668DFF008089FE14BFF0A1FE
          1EFF00D09BA37FE0227F856ACDF12BC3506776B16A71E8E0D509BE31784E2049
          D56338FEEA93FD2B8A79BE5F0F8ABC57CD1D11C162A5F0D397DCC87FE1447C3C
          FF00A13746FF00C044FF000A3FE1447C3CFF00A13746FF00C044FF000AA93FC7
          BF09C5D2EA493FDD8CD509FF0068AF0D440958EEA423B2A0E7F5AE39710E551D
          F111FBEE74C72AC74B6A52FB8D9FF8511F0F7FE84DD1BFF00D3FC28FF8513F0F
          7FE84DD1BFF0113FC2B9697F698D1D7EE69D72DFEF60550B8FDA7ED55498B469
          1CF6DD2E3FA573CB8A7288FF00CBF5F24DFE874C722CC65B527F7AFF0033B9FF
          008511F0F3FE84DD1FFF000113FC28FF008511F0F7FE84DD1BFF0000D3FC2BCE
          25FDA8E4FE0D0C0FACD9FE954E6FDA7F503FEAF49817FDE726B9A5C5D942DAA5
          FE4CDD70E664FF00E5DFE28F53FF008511F0F7FE84DD1FFF0000D3FC28FF0085
          0FF0F7FE84DD1BFF000113FC2BC7AE3F69BD788FDCD8DA21CFF1063FD6A9C9FB
          4C78A3B5BD98FA29FF001AC1F1A654B6937F2365C31993FB2BEF3DB7FE143FC3
          DFFA13746FFC044FF0A4FF008511F0F7FE84DD1BFF000113FC2BC2A4FDA4BC58
          C3836A9F48EB3EEFF683F194F8297C9063FB912F3F9D612E37CB16CA4FE4BFCC
          E88F09E60F7715F3FF00807D0DFF000A23E1E7FD09DA37FE0227F8527FC289F8
          79FF0042768DFF008089FE15F383FC7DF1B81FF216FF00C829FE150BFC79F1B3
          0E7576FC225FF0ACFF00D79CBFA425F72FF3365C218E7F6A3F7BFF0023E96FF8
          511F0F3FE84DD1BFF0113FC28FF8513F0F3FE84ED1BFF0113FC2BE617F8E3E34
          6EBACC9F822FF85577F8D3E3263FF21A9BF0C547FAF381E94E5F81A2E0EC6BDE
          71FC7FC8FA9BFE144FC3CFFA13B46FFC044FF0A4FF008513F0F3FE84DD1BFF00
          0113FC2BE536F8C7E306EBAE5C7E155DFE2F78BCFF00CC76EBFEFBA5FEBCE0FA
          5397E1FE668B83316FFE5E47F13EB4FF008515F0F3FE84DD1BFF000113FC28FF
          008515F0F3FE84DD1BFF000113FC2BE476F8B5E2EFFA0F5DFF00DF66A23F163C
          5C4FFC87AF3FEFE9A3FD78C27FCFA97E05FF00A978BFF9F91FC4FAF7FE144FC3
          CFFA13B45FFC044FF0A3FE144FC3CFFA13B45FFC044FF0AF8E24F897E2B6627F
          E120D43279E2E1BFC6A3FF008595E2BFFA18750FFC086FF1A8FF005E70DFF3E6
          5F7A2D704E29FF00CBD8FDCCFB2FFE1457C3CFFA13B45FFC044FF0A3FE1457C3
          CFFA13B45FFC044FF0AF8C4FC4BF15E3FE461D47FEFF00B7F8D47FF0B33C59FF
          004316A3FF00810DFE34FF00D77C3FFCF997DE57FA9189FF009FB1FB99F697FC
          289F877FF42768DFF8089FE147FC289F877FF42768DFF8089FE15F159F89BE2C
          CFFC8C5A8FFE04B7F8D21F893E3039C7883533FF006DDFFC6AD71AE1DFFCB997
          DE1FEA4627FE7F47F13ED5FF008515F0EFFE84FD17FF000113FC28FF008513F0
          F3FE84ED17FF000113FC2BE2B8FE20F8DA670A9AE6ACEC4E00595CE6B561F883
          F11D711A5FEAAD818E5589ADA1C63465FF002E24672E0CAF1FF97F1FC4FAFF00
          FE1447C3CFFA13B46FFC044FF0A3FE144FC3CFFA13746FFC044FF0AF93ED3C61
          F16AEDD520975772C703F76D8FE55AC9AA7C6C2D855D50FB98F8AEB8714C2A6B
          1C3CDFC8E59F0A4E1A4B1305F33E9BFF008511F0F3FE84DD1BFF000113FC28FF
          008511F0F3FE84DD1BFF000113FC2BE75B593E3C4D8D82F47FBE107F3AD286DB
          F68261953201FED3455D70E20E7DB0D53EE39A7C39C9BE2E9FFE047BBFFC289F
          879FF426E8DFF8089FE14BFF000A23E1EFFD09BA3FFE0227F85790DAE89F1F65
          0376AB6F17FBEB19FE95BBA77877E38918B8F10698063EF18C127F25AEE866B3
          9FFCC3CFEE5FE67054C9E14FFE62A9FDEFFC8F403F023E1E7FD09BA37FE0227F
          8527FC28AF879FF42768DFF8069FE15CD5AF86FE2F0C79DE24D37F0833FD2B62
          D3C3DF11C63CFF0012E9FF0085993FD6BB218B9CBFE5CC97DDFE670CF034E1FF
          002FE2FD1BFF0022FF00FC288F87B8FF00913746FF00C044FF000A3FE143FC3D
          FF00A13746FF00C044FF000AB967A378BE27433EBF672A8FBC059919FF00C7AB
          AE50C1006396F5AEEA7373DE2D7AD8F3EAD354DE9252F4BFEA91C2FF00C287F8
          7BFF00426E8DFF008089FE147FC287F87BFF00426E8DFF008089FE15DED15B18
          9C17FC287F87BFF426E8DFF8089FE147FC287F87BFF426E8DFF8089FE15DED14
          01C17FC287F87BFF00426E8DFF008089FE147FC287F87BFF00426E8DFF008089
          FE15DED1401C17FC287F87BFF426E8DFF8089FE147FC287F87BFF426E8DFF808
          9FE15DED1401C17FC287F87BFF00426E8DFF008089FE147FC287F87BFF00426E
          8DFF008089FE15DED1401C17FC287F87BFF426E8DFF8089FE147FC287F87BFF4
          26E8DFF8089FE15DED1401C17FC287F87BFF00426E8DFF008089FE147FC287F8
          7BFF00426E8DFF008089FE15DED1401C17FC287F87BFF426E8DFF8089FE147FC
          287F87BFF426E8DFF8089FE15DED1401C17FC287F87BFF00426E8DFF008089FE
          147FC287F87BFF00426E8DFF008089FE15DED1401C17FC287F87BFF426E8DFF8
          089FE147FC287F87BFF426E8DFF8089FE15DED1401C17FC287F87BFF00426E8D
          FF008089FE15F17FED6DE11D1BC25F1552CB46D2EDF4EB46D3E194C16B12A26E
          2CE09C7AF02BF436BE0BFDB5FF00E4B245FF0060B83FF4392A7A0D1F5C7C07FF
          009235E0DFFB05C1FF00A00AEF2B83F80FFF00246BC1BFF60B83FF004015DE55
          0828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          006F4A3AF6A42C00EB8AAB73AA5ADA0CCB711463FDA702B9EA56A7455EA4D25E
          7A14A2E4EC916F20D04E2B95BEF893A05812A6F448C3B202DFAD73D7DF1BAC21
          045B59CB3B0E9B88506BE6717C5B9260EFED7131BAE89DDFDCAE77D2CBB175BE
          1A6FF2FCCF4B149F8E2BC56FBE37EA321FF46B38615FF6C963FD2B02FBE2B788
          AE8902E840A7B22015F2389F13723A3754F9A7E8ADF9D8F529F0FE327F1597CF
          FC8FA20C81472C00F7AAB71ABD959A9335D451A8E496702BE62B8F14EAF745BC
          DD46E5813D0C8715973DCCD3126495DC9EBB989AF98C478B14F6C3E19FCDFF00
          923D4A7C313FF97953EE47D3577F107C3F6485A4D520207F71B77F2AC3BDF8D7
          E1BB442D1CD25C1FEEC719C9FCEBE793D6A07AF9DAFE28E6B574A34E31F937FA
          9E9D3E19C2C7E3949FDC8F74BAFDA0B4C41FB8B09E4FF7C85AC7BCFDA1A6248B
          7D3028EC5E4CD78FB530F5AF0EB71FE7F5B6ACA3E897F91E953C83010FB17F56
          CF489BE3E7885C10B0DAA7B843FE359577F1ABC537030B78B0E7FB918AE258E7
          351B578D538A339ADA4F152F936BF23D086558283D292FB8E92E3E25F896E0E5
          B56987FBAD8FE559775E2BD66F5CB4DA8DCB93FF004D0E2B31BA5475E6CF33C7
          5556A95A4FD64CEE86130F0F869A5F243A4BC9E4625A79189EA4B1AAEEEED9CB
          31FA9A7375A8CF7AE5F6B525BC8EB508AD90C3D2907434A7A520E86B6A2D9B59
          0D6E94DA7374A16276FBA8C7E82BDAA49CB615D2223D2987A569DBF87F53BCC0
          82C2E25CF4DB1935AF07C2EF145D36D4D1E7E7BB2E07E75EDD0C0E2AAAF729C9
          FA26CC258AA14FE39A5EAD1C93531ABD1ED3E02F8BEEC8DD6296E3D64907F4AD
          CB4FD99B5E9803717B6B0FB292C7F957B14787F34ADF0D097CD5BF338A79CE02
          97C5563F7DFF0023C69BA544F5F425A7ECB795FF004AD679F448BFFAF5B169FB
          30E831B03717D7737B290A3F957AF4B83F36A9BC12F568E19F1365D0DA4DFA26
          7CC07A530F4AFAEED3F678F085BE3CCB496E3FDF94FF004ADAB5F837E10B5C15
          D16038FEFE5BF9D7AB4F8171EFE39C57CDBFD0E29717E0E3F0C24FEEFF0033E2
          828CC3E5527E829D1D85CCC76C76F2B93D02A135F755AF813C3D66008747B38F
          1E90AD6A41A3D95BAE23B58907FB28057AB4F80AA7FCBCAEBE4BFE0A38A5C671
          5F0517F37FF00F83A2F08EB9758F2749BC933FDD858D695BFC25F16DE6366877
          433D37A6DFE75F73AC1127DD8D07D0549B47A0AF469F026197C759BF4497F99C
          93E33AFF0062925EADB3E2AB3FD9FBC6B74A4FF65F943FE9A48A3FAD69DB7ECC
          3E30B8C6F5B687FDF93FC2BEC2DB460FAD7A10E0ACBA3F14A4FE7FF00E29717E
          60FE1515F27FE67CA717EC99AEB91E66A76A83D8126B5EC7F64362ADF6BD730C
          7A797174FD6BE951F4A5AF421C2795C3EC37EAD9C53E29CD26ADED12F448F9EA
          0FD9074C07F7DAD5C3FF00B88056843FB24F862365325F5F4841E46F001FD2BD
          D4521EBD3F5AEC8F0E6570DA8AFC59CB2E21CD27BD67F82FD0F21B7FD97FC170
          E37DACD37FBF29FE95B10FECFBE0785540D1636DA3196663FD6BD1FF001A39AE
          D865180A7F0D18FDC71CF36C7CFE2AD2FBD9C4DBFC19F06DB01B740B438FEFA6
          EFE75AA9F0FF00C371105745B207D7C95FF0AE879A4CD75C7058687C34E2BE48
          E59633133F8AA49FCD99B0786F4BB5C795616D1E3FBB128FE956C595B8E90463
          FE002AC515D0A9C23B44E7752A4B7631608D7A228FA0A7ED1E82968AD2C89BB1
          303D28C52D14C414514500145145001451450014514500145145001451450014
          51450014514500145145001451450014514500145145001451450015F05FEDAF
          FF0025922FFB05C1FF00A1C95F7A57C17FB6BFFC9648BFEC1707FE872526347D
          71F01FFE48D7837FEC1707FE802BBCAE0FE03FFC91AF06FF00D82E0FFD005779
          4C4145145001451450014514500145145002019EB41A3B7351CD3C70A92EEAAA
          3B938ACA738D35CD3764095F61E78A0118AE6755F1F695A6865131B8907F0C43
          3FAF4AE4353F8A77B3165B485605E819BE66AF83CD78EB22CA6EAA575392E91D
          5FE1A2FBCF4E865B89AFAC6365E7A1EA8CEAA324803DEB2351F16695A5A9F3EF
          23523AAA9DC7F215E33A8F8A353D4F22E2F24653D541C0FC8562C8C49C9249F7
          AFCAF31F17AF78E5F87F9C9FE8BFCCF7A870FB7AD69FDDFE67ACEA5F1774FB70
          C2D6092E187427E5535CD6A1F17753B8DCB6D0C76E0F73F3115C39E9519EA6BF
          39C778839FE3AEBDBF227D22ADF8EE7B94727C252FB377E7A9AF7FE34D6B503F
          BDD42603D10ED1FA561CB3C92B12F23313C9C9CD2BF5A61C66BE2ABE618BC5CB
          9B1156527E6DB3D9A746953568452F4442DD298DD69EDD298DD6B911D4467A54
          2FD6A63D2A17EB568D1119EB4C7A79EB4C7AD91A111EB50BD4C7AD44FCE2B68A
          BBD0D1111EB4C3D6B46CB44BFD49C2DAD9CD313C7C884D74FA67C1CF12EA4031
          B55B643DE56C7E95EEE1328C7E3B4C3D194BD13FF8639EAE330F43F8B34BD59C
          21EF519ACCFDA8FC4D65FB31F862C2F35195355D675094A5B69F0B6DCA8FBCC4
          9E806476EFF88F9AB4FF00DBEE3B390349E0886EF073896ECE3F415FA5E59E15
          F12E650556349422FAC9A5F86A79557883034F69397A2FF33EA6DA5B80093ED5
          66D743D42F8816F653CC4F4D91939AF19F85BFB7D6A7E38F19E91E1AD07E17E9
          526A1A84EB0465A527193C9248E00EA7E95FA59A75B086D21124314736C1BD63
          1850D8E715F55FF108715847158FC428B7D22AFF008B6BF23C7ABC56A3A52A7F
          7B3E55B2F851E28BF6023D2E441EB2617F9D74363FB3D7886E86E9E5B6B51E8C
          C49FD2BE961CF6C5183EB5EFE1BC36CA296B56729FCD25F823C8A9C518D97C09
          47E573C26C3F668C8CDE6AC4FF00B31C7FD735D1587ECEFE1CB503CF92E2E4F7
          DCF81FA57AA6D39A315F5186E10C930BF061D3F5BBFCCF32A6799855DEAB5E96
          5F91C5D9FC1EF0A5901B34A8DC8EF212DFCEB76D7C25A358EDF234DB68F6F008
          8C715AC334A57E95F43472DC150FE1528C7D12FF0023CCA98BC454F8EA37EAD9
          125AC518016345C7A28153600EC2968AEF8C631D91CCDB7B8514515620A28A28
          00A28A2801314B4514005145140051451400878A07D28ED5C2FC43F8D7E0DF85
          F0A378835BB6B59E560B15A2B6F9E5627002A0E49A7184A6ED157607774557B3
          BA5BCB486E1032A4A81C071820119E476AB148028A28A0028A28A0028A28A002
          8A28A002928C735F38FED87FB5ADB7ECC7A0E94D6F6916ABADEA12911D94926D
          C4607CCE71C8E48C56D468CF115153A6AED81F4691EF4B8F7AFCC2FF0087B978
          87FE849B2FFC086FF0AEABE16FFC14B7C65F15FC7BA3785B49F03593DE6A33AC
          40FDA1B08BFC4C78E80649FA57AB2C971908B94A2ACBCCAB33F4528A8E22C635
          2E30F81B80F5A92BC42428A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A28A0028A28A0028A28A0028A28A002BE0BFDB5FFE4B245FF6
          0B83FF004392BEF4AF82FF006D7FF92C917FD82E0FFD0E4A4C68FAE3E03FFC91
          AF06FF00D82E0FFD0057795C1FC07FF9235E0DFF00B05C1FFA00AEF298828A28
          A0028A28A006F4A0D078AC6D63C5367A4E43BF992FF71793F8FA57978FCC7099
          65275F1951422BBBB7FC39A53A73A8F960AECD8E8326B2F53F12D86920F9D3AE
          FF00EE2F26B80D63C6B7DA892B137D9E13FC2BD4FD4D734EC5F258927D4D7E03
          9EF8BB4A9B951C9E9733FE6968BE4BA9F4586C9A52D6B3B7923B1D5FE25DC4BB
          92CA2112F677E4FE55C86A3AC5E6A2C5AE2E6493BE09E07E15037B544FD2BF07
          CD38A337CE64DE32BC9AED7B2FB91F4943074287C11FF3213DEA23D6A53DEA23
          D6BE696BB9EA2223D6A17A98F5A85EB689B2187A5447AD4A7A5447AD688D511B
          FDEA61EB4F7FBD4C3D6B52D11374A6375A7B74A61EB5AA34236E9513F5EB5D0E
          8BE0CD5BC4057EC968FE5138F31C6147E35E87A0FC11B68B6CBAADC999BFE794
          7C2FE7DEBEDF28E12CDF3969E1E8B517F6A5A2FC7F43CEC4E6985C26939EBD96
          ACF198A092770B1A348C4E00519AE9F48F85FAFEB5B592D4DB467F8E7F97F4EB
          5EFBA5785B4CD1542DA59C516063705C93F535AE0715FB3659E15D08253CC6B3
          93ED1D17DEF53E5B11C4D51E94216F37FE4790697F00E20036A17ECE7FBB0AE3
          1F89AECF4AF863E1ED2554A5824AE3F8E5F98FEB5D60E9ED47D057E9F80E13C9
          B2E49D1C3ABF77ABFBD9F3B5F34C5D7F8EA3B7969F9105BD9C16A8162892351C
          00AA05177751595ACB713388E2894BBB1380001CD58CD63F8ABC3767E2FF000F
          DFE8D7E641657B1186610C8518A1E080C39191C57D6D3A708592564798DB6EEC
          FC4CFDB3BE39CBF1CFE35EADA8C3317D1AC58D9E9EB9F97CB527E61FEF1C9FC4
          7A578457ED237FC1393E07B3163E1D9C92724FDB24FF001A41FF0004E3F81C7F
          E65C9BFF000324FF001AFD068E7983A14E34E11765E4BFCCABA3E77FF8258FC0
          3F365D47E26EA96DF2A66CF4CDE3BFFCB471FF00A0FE75FA4F8C8AE7BC07E07D
          1FE1CF856C3C3DA0DAAD9697649E5C312F61EE7B9F7EF5D0F4AF8EC7629E32BC
          AABDBA7A12DDC5A29370F5A370F5AE110B451514D7115BAEE96548D7D5D80146
          E04B4561CFE36D02DA5F2E6D6EC237FEEB5CA03FCEB4AD351B5BE40F6F7315C2
          91906370DFCAA9C64B7405AA28A2A4028A28A0028A42D8193C0AA175AE69F620
          9B8BFB6831D7CC9957F99A6937B01A145607FC27BE1CDFB7FB774EDDE9F6A4FF
          001AD2B5D62C2F541B7BDB79C37431CAAD9FC8D3709ADD01768A28A900A28A4D
          C3D6800E9F4AF16F8D1FB5D7C36F81D04A9AE6B915CEA6838D32C4896727D081
          C2FF00C088A93F6B0F8DB07C0AF831ADEBE2555D4A48CDAE9F19EAD3B82178EF
          8E58FB29AFC2ED5F56BBD7752B9BFBEB892EAEEE24696496562CCCC4E4924D7D
          1E55952C6A752ABB457E252573ECDF8E3FF053CF1A78DBCFD3FC156CBE15D31B
          2BF69387B961F5E8BF80CFBD55FF00827EFC28D57E3CFC6D93C69E29B8B9D5B4
          FD0985D493DE3990CD727FD5824F5C6377E03D6BE38D3EC67D52FADECEDA3696
          E27711C688325989C00057EE7FEC8FF04A0F813F05B46D11A355D5274177A848
          3AB4CE01233DF030BF857BD997B0CB70BECE845294B4F3F31BD0F6A0A1400060
          0ED4EA4EA296BF3E2028A2AACFA9DA5AE7CEBA862C75DF2018A6937B016A8AC1
          7F1DF87637D8DAE69EADE86E533FCEB42D75BD3EF5035BDEDBCEA7A18E5539FD
          69B84D6E80BD45145480514514015351BF834AB0B8BBB99162B7823692477380
          AA064926BF0B3F6B5F8DB3FC77F8D3AD6BC2466D2E17369A7A1E8B021214E3B6
          4E5BEAC6BF457FE0A51F1EFF00E15AFC27FF0084534DB8D9ADF88F30B6C3F347
          6C3FD61FF81642FD09F4AFC85272727935F77C3F83E583C4C96AF45E9D4B8A0A
          FD2CFF008258FC02FB2586A3F13755B6FDE4F9B3D337AF4507F7920FA9F973EC
          DEB5F01FC23F871A87C59F88BA1F8574D42F71A85CAC4580C844CE598FB0504F
          E15FBDBF0FBC15A7FC39F0668FE1CD32110D8E9D6C90228EF81824FA93D49ADF
          3FC67B2A4A845EB2DFD024CE9A8A28AFCF480A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AF8
          2FF6D7FF0092C917FD82E0FF00D0E4AFBD2BE0BFDB5FFE4B245FF60B83FF0043
          92931A3EB8F80FFF00246BC1BFF60B83FF004015DE5707F01FFE48D7837FEC17
          07FE802BBCA620A28A4A004EF552FB52834E88C93B8451EBDEA8EBBE2287478C
          8E1E63D141E9EE6BCF753D4AE35398C93B96F45CF03E95F8DF18F88984E1DBE1
          70B6A988EDD23EAFBF91EAE13013C47BD2D23F99ABAE78D6E2F77C76D9821C63
          3FC47FC2B9772643966249EE69E7B9A8DB02BF91337CFB30CF6B3AF8FAAE4FA7
          65E491F61430F4E847969AB113D427A54CF503B0442CC42A8EA4F6AF0E29B764
          77218D51C98C5787FC62FDB0FC03F098CB692DF7F6CEAE9C1B2B021CA9F466E8
          3F9FB57CD3AFFF00C14BB5C9AE1BFB23C2F696F00271F6994BB11F862BF43CAF
          81B3DCD69AAB4683517B393B27E97D4E4AB8FA145DA52D7CB53EFF006EF51B1E
          6BE00D23FE0A59AEC4E3FB4FC2B67729DC5BCC633FAE6BDCBE19FEDCDF0FFC7B
          3C5697D2CBE1EBE721425E0FDDB13D830E3F3C574E3B8133FCBA0EA54C3B9457
          58B4FF0005A9A52CC30D55F2A96BE7A1F439EB50BD259DF5BEA36F1DC5ACF1DC
          412286492260CAC0F4208A57AF8771941F2C91EBC75430F4A88F5A94F4A88F5A
          A46C88DFEF530F5A7BF5AED3C13F0EE6F103ADD5E0682C87418C349F4F6F7AF7
          F29CA3199D622385C1C39A4FEE4BBB7D0C3118AA784A6EA55764733A0F86350F
          125C08ACE12CB9F9A46E157EA6BD67C33F09F4FD2B6CB7E05EDC0E7E61F28FC3
          BFE35D9E9DA5DB6956E905AC2B146A30028C55B35FD59C39E1F65F9446357169
          55ABDDAD17A2FD59F9F63B3AAF89BC29FBB1FC7EF19142902044408A38000C0A
          928A09C57EAF18C60B9628F9EBDF5614B4515601451450056BBBC8AC2D26B89D
          C470C485DDD8E0000649AFC61FDA73F6C3F1A78E3E316B977E17F14EA9A36810
          4A6DAD20B0BA6891D10E37900F25BAE7E83B57DDFF00F0517F8F43E147C1F974
          1D3EE3CBD77C441AD902B7CD1C1FF2D1BF1076FE3ED5F8EACC59892724F24D7D
          BE41818B83AF515EFA2FD597147A37FC347FC52FFA281E21FF00C1849FE35FA1
          5FF04D5D2FC77E30D3754F1E78C3C4DAC6ABA7B136BA75B5F5D3C91B11F7E4C1
          38F607FDEAFCD7F85FE00D43E2878F745F0C6991992EF51B958460642827E663
          EC0649FA57EF77C31F0169FF000C3C09A378674C8C4769A75B2423031B881CB1
          F72724FD6B6CF6AD3A14951845294BCBA033ABE95F177FC1483F693BCF851E07
          B2F0BF8735192C3C45ABB6F69ED9F6C9040A79208E41278FC0D7D81AE6B36BE1
          ED1AF754BE9560B4B485A69647380AAA3249FCABF087F698F8C575F1C7E306BB
          E2599D8DABCA62B38D8FFAB814E147E5C9F726BC3C9307F59C473CD7BB1FCFA0
          9229FF00C347FC52FF00A281E21FFC1849FE35E93FB3E7C63F1A78A7E25E9BFF
          00095FC50D6B4CF0C5937DAB509EE35291418D79D839E59BA0039E6BE6FAD4F0
          DF86F55F16EAF6FA568B6371A8DFDCB048EDAD90BB39FA0AFBFAB86A2E0D3497
          9D96859FA13F1CBFE0AA0F017D2BE19698AC89F21D5B525CEE18C651074F5C9F
          CABE2DF1D7ED25F12FE235E4971AE78BF53B8DFD618E631C43E88B803F2AFA57
          E117FC12D3C69E2EB68AF7C5DAADBF85ED9C0616EA9E74FEE08C803F335E9FE3
          0FF824CE8D6FE1DBA9741F17DD8D4E1899D56EE2063720671C7233EBCD78346B
          E558397B38B4DF7B5FF127447E6DB6AF7CED96BDB827D4CADFE35DBFC3AF8FFE
          3EF859AB457FE1EF135FD9C898063694BC6CA3B146C823EA2B86D4F4F974AD4A
          EACA7189ADE5689C7B838355ABE9654E9D58DA493451FB9DFB247ED1F6BFB487
          C354D5CC62DB59B3616FA85BA8C2AC98CEE5E49DA7DFDEBDD074AFCEBFF82456
          9779168FE3BD41C9FB0CB2C114633C6F50C5BF422BF45074AFCA731A30C3E2A7
          4E9EC8CDEE32495628D9DD82A28C963D00AF913F690FF82897837E109B8D27C3
          462F15F88978C412036D09EFB9C7523D07E62BCB3FE0A35FB606A1E19BC97E18
          F846F4DB5C3C40EAD7B09C3A861C42A7B641C923B103D6BF33DDDA472CC4B313
          924F535EFE5792AAD055EBECF65FE6348FA27E26FEDEBF17BE245DCC7FE12293
          42B17CEDB4D2FF0074147A6E1F31FC4D787EAFE34D7F5FBA373A8EB57F7B7046
          0C935C3B31FC735EDDFB2BFEC67E22FDA65AF2F6DEF23D1B40B3711497F2A6FD
          D2704A2AF19201CFE5EB5F68E97FF049AF87915A22DFF88F5BB8B803E6785911
          49F6054D7BB531B97E025ECB44D76455D23F2C3FB56F739FB65C67FEBAB7F8D6
          D683F123C53E18BA86E34BD7F50B396139431DC3003F0CD7E83FC48FF824C588
          D3259BC13E299BEDA8094B7D554147F6DCA38FC8D7E77F8D7C1DAA7803C55A97
          87B59B76B6D4F4F99A09A33D981C71EA0F63DEBB30D8BC2E35354DDEDD077B9F
          527C06FF00828F7C42F87BAC5ADAF8B2F1BC53E1F79156617201B88533F3323F
          193ECD9E9DABF58BC11E35D23E2178574EF106837A9A86977D10961993B83D88
          3C823A107907AD7F3D36BA45F5EBAA5BD9DC4ECC70A23899B27F015FAB3FF04B
          897C4DA7FC33D7F44D774FBCB1B4B5BB596CCDDC4C990E3E60B9EA323F5AF9DC
          F3034234FDBD2B26B75DC968FB6E491624677215546493D857E3E7ED99FB60F8
          AFC53F1A753B4F07F89F50D1F40D298D9C234FB968966653F3B9DA79C9C81EC0
          57EA4FC6ED23C55E20F869AD697E0D96DE0D7AFA136F0DC5CB94484370CD9009
          C819C7BE2BF21FE3BFEC49E35F80DE117F13F8A358D1DE09261124504CCD2CAE
          DCE141519E327E80D706450C3FB472ACD733D12123C6FC5BF14BC5FE3CB686DF
          C47E25D4F5B8216DF1C77D72D2AA1F5009E0D72D4559D374FB8D5B50B6B2B589
          A6B9B891628E34192CC4E0002BF42518D3564AC8B134FBFB9D2AFA0BCB39DEDA
          EE071245344DB59181C8607B107BD7B27C35F8A9F187E2578E346F0CE97E3BF1
          14977A8DC240A05FC98504F24F3D00E6BD76CBFE0965F162F6CE09CDF6870F9A
          81FCB79DF72E46707E5EB5F4D7EC4DFB096AFF00017C6BA878A7C633D85EEA29
          0F9360B68C5D63DDF7D8920738E3F135E0E3332C1AA5292929496CB715D1F617
          82F4193C2DE13D2B4A96EE6BF96D2D9227B9B872D24AC072CC4F524D7907ED11
          FB64F80FF67AB77B7D42EC6A9E202B98F49B360D203DB79E8839EFC9EC0D70DF
          B757ED752FC03F0DC7A17864A4FE2ED49080E46E1651918F308FEF7F741E3824
          E40C1FC80D735CD43C49AADCEA5AA5E4D7F7F70E649AE2E1CBBBB1392493C935
          F3796653F5CFDF57D22FA77252B9F4EFC5EFF828D7C54F88F717306937EBE14D
          264CAADBE9E3F7BB7B6643CE7DD715F3EEABF14FC63AE5C9B8D43C4FAADE4E7F
          E5A4D76ECDF9E699F0EFE1D6BDF14FC5963E1DF0E58C97FA9DDBEC48D0703D59
          8F4000E4935F7D7807FE092825D32297C5DE2E315F372F6FA745945F6DCDD7F2
          AFAAA9570197251924BE5A95A23F3A8EAD7CCC49BCB827D7CD6FF1AD4D2FC7FE
          25D11A36B0D7B51B368FEE186E5D76FD39AFD01F899FF04A2B2D27C2DA85FF00
          857C517171A95BC4648EDAF9004931C91B874E33DABF38EE606B5B89617FBF1B
          943F50715D586C561B1B16E96B6DF41DEE7D73FB397FC144BC73F0CB55B4D3BC
          5D793F8AFC34EE125372DBAE6152796473CB633D18F6C02BD6BF5BFC2FE26D3B
          C65E1EB0D6F4AB84BBD3AFA159E19A3390CA46457F3A75FB39FF0004DEB8D42E
          7F661D10DF3BBC6B7132DB9739C47B8F03DB39AF98CF703469D355E9AB3BD9F9
          92D1F53D53D4B51B7D1F4EB9BDBA9561B6B78DA59247380AA064926AE57C63FF
          00052CF8F5FF000AE3E15AF84B4DB8D9AD788B31C9B0FCD1DB0FBE7FE05F77DC
          13E95F2785C3CB155A34A3D483F3B3F6AFF8D771F1DBE33EB7AF9919B4D8E436
          B6119E890212178ED9E58FBB1AF1DA09C9C9EB5D97C1FF0086DA87C5CF88FA17
          8574D42D71A85CAC6CC0642275773EC1413F857EB918C30B454768C57E08D763
          EFFF00F8258FC03FB0E97A8FC4DD56DB12DD66CF4CDE3A203FBC907D48DBF837
          AD7E889AE77C03E0DD3FE1EF83F49F0E6971086C74EB64B78D4770A3193EA4FA
          D745DABF27C7629E2EBCAA3EBB7A74337A8B45145710828A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A002BE0BFDB5FF00E4B245FF0060B83FF4392BEF4AF82FF6D7FF0092C917FD
          82E0FF00D0E4A4C68FAE3E03FF00C91AF06FFD82E0FF00D0057795C1FC07FF00
          9235E0DFFB05C1FF00A00AEF29886D62788B5F4D261289869DC703D3DCD6A5E5
          CAD9DB3CAE70A809AF2BD4B578EFEEE4964B88CB31E9BC71ED5F8DF88DC5B578
          7B06B0B83FE3D4BD9FF2C7ABF5EC7A781C32AF3E697C28CBD67C53A75A5D32EA
          1A9DB5BCEFF3159A55527DF06AA378AB46FB279FFDA969E4676F9BE72EDCFA67
          3D6BF36FFE0A597B343F1BB4C114F2229D2A3FB8E40FBEDE95E706FEE7FE18F9
          5FED12EFFF0084A08DDBCE7FD4D7E3783F0E7FB530186CCEAE29F3576AEB96F6
          6EFD6FA9EE4B1BECE72A6A3F09FAC2FE33D04452CBFDB165E5C4BB9DFCF5C28F
          53CF1598FF00147C21FF00433697FF008149FE35F927F052FEE24D13E2207B89
          5F1A0BE37393FF002D63AE33C07E06F137C4BD64E95E1CB59F52BF086430A3E0
          ED1D4F26BDC8F84F8484AB2AF8C718D3B5DB492B357D6EF427FB4E7EEF2C2F73
          F5BFE20FED33F0EBE1EE98F77A8F896CE7902E52DAD2412CAFE9855FE678AF81
          3E3AFEDC5E2FF8A734DA5F87F7F87B43662AA96EC7ED1329E3E761EBE83D7BD6
          4F85BF61AF8B3E28D52282F3481A55B9387BABD986D41F40493F957D95F037F6
          1DF077C2C5B7D435745F12EBD19DC27B84FDCC67B6D4E9C7A9CF3C8C55D1C3F0
          7705C7DBCAA7D6ABFD94ACD2FBB45F37729CB178CF752E489F20FC19FD893C6F
          F15BCAD53580DE1ED2243BBCFBC53E7483D550F3F89C7E35F58786BFE09FBF0C
          746B444D420BCD667C7CD24F31504FB05C57D3BB16340AA02A8180076A8DFA57
          C166DE2167599D47ECAABA50E918E9F7B3D5A196D0A4B55CCFCCF987C4BFF04F
          CF865ABC78B14BFD1DC7436F3EE07EBBB35F37FC5FFD813C53E09B79F52F0C5C
          FF00C24563102E6055DB70A3D97F8BF0E7DABF4A1BBD44DC9A59678819EE5D51
          39567523D632D6FF003DCD6AE5987ACBE1B3F23F287E06FED29E2BF811E225B2
          BF7B9BAD1FCD0977A6DD13BA300E0EC07EEB7F3C735FA67E06F1D693F11FC2F6
          5AF68B702E2CAE90329EEA7BAB0EC41E08AF99FF006E7FD9E74FD77C3373E3BD
          1ED043ACD8806F04430278BA6E23D578E7D3E831E65FF04F6F8A13695E2ED43C
          1B75366CB508CDC5B2337DD997A803DD7AFF00BA2BF42CF70580E2DC965C4197
          C392B53F8E2BADB7BFA2D533830B52AE0710B0B55DE2F667E811E05447A9A95B
          A51040D75731C2832EEC140FAD7E094E0EA49422B567D6DF957333A8F87FE0D6
          F11DF7DA2E14FD8E26E73FC67D2BDC2DE14B789638D42A28C000600ACFF0F68D
          1E89A4C16B18036A8DC4773DCD6A57F71707F0E51E1FCBE314BF79349C9F9F6F
          447E5B98E3658CACDFD95B0EA28A2BEF8F2828A28A0028A28A002AB5F5E43A75
          9CF7570EB1410A191DD8E02803249AB15F21FF00C1473E3D0F859F085FC3BA6D
          C797AE788835B8D8D868E0FF00968DF8E76FE27D2BA30D42589AD1A51DD81F9D
          3FB627C719BE3AFC69D5F568E567D22D1CDA69E99E044A48DDFF0002393F8D78
          7D29258924E49E49AEABE15FC3ED43E29FC40D13C2FA64664BAD46E562C8190A
          B9F998FB01927E95FAEC210C351515A462BF2353EF8FF8258FC04F2E2D47E26E
          AB6DCB66CF4CDEBDBFE5A483FF0041CFFBD5FA3E6B97F86DE05D3FE1A781F46F
          0D699108ACF4EB6485703EF103963EE4E49FAD6B78875EB3F0C6857FABEA1325
          BD95940F7134AE7015141249FC057E538EC4CB1B8894FBEDE9D0CDEA7C65FF00
          0539F8F7FF00083FC3AB7F02E9971B355D7BE6B9D87E64B6079FFBE8F1F406BF
          272BD37F68DF8C57DF1CBE2D6B9E27BB76F22698C76911FF00965029C22FD71D
          7DF35E655FA4E5B84FA9E1E317BBD5FA96958DDF04783355F885E2AD3BC3FA2D
          ABDE6A57F32C3144833C9EE7D00EA4F602BF68BF656FD92FC39FB3B784ED19AD
          6DEFBC593458BDD50A65B2792899E8A38FAE327DBE78FF00825E7ECEABA4E8B7
          5F13B59B7FF4CBD0D6DA62489F72307E79067B93C0F607D6BF42ABE4F3BCC655
          6A3C3D37EEADFCD92D874AF20FDAA3E32D9FC0EF835AE6BF34AAB7B2446D6C63
          279927704281F4E4FD01AF5ECF15F925FF000534F8F5FF0009F7C4C87C17A6DC
          6FD23C3F9136C3F2BDC9FBDFF7C8E3EB9AF232CC27D731318BD96AFD0495CF8C
          6F6EE4BFBC9EE6562D2CCED2313D4927268B3B496FEEE1B6810C934AE1111464
          924E00A86BEBBFF82707C073F143E2FA788F50B7F3343F0EE2E1B7AE5649CFFA
          B5FC305BF01EB5FA7626BC70B46551EC91A1FA39FB21FC198BE08FC10D0B4531
          ECD4AE231797CC570C66700907E830BF857B2DCB98EDA575192A848FCAA55010
          000600E050402083C835F9055A8EB547527BB77323F9F7F8E5ACDD7883E3078C
          2FEF0B1B89B539D9839C91F39E3F0AE1ABEFCFDBBBF61CD7ACBC5FA8F8F7C0DA
          74BAA699A83B4F7D616C9BA4B790F2CC147254F278E873DABE09BBB39EC2E1E0
          B985E0990E1A3914A907E86BF59C0E2696228C5D37D36EC6A8FA5FF650FDB835
          BFD9AB4F9B433A4C1ACF876E2E0DC49096292A390012ADD3181D315F78F817FE
          0A53F08BC55E443A95FDCE8175205045D424C618F6DC33D3B9381F8735F8E345
          7262B28C362E4E725693EA84D267F437E10F893E16F1F5B1B8F0EEBFA7EB3129
          DACD6770B26D38CE0E0F07DAB9BD6FF673F86FE25F145E788B57F08E9BA9EAF7
          6419AE2EE112172000383C7402BF083C33E31D73C19A8477DA1EAD79A4DDA1CA
          CB693346C3F106BEF5FD92FF00E0A3DAF4FE26D33C29F126686F2C6E984116B6
          57649131E17CC038209C0CE063A9CD7CD62724AF854EA61E775F7326C7E8A68F
          F0F3C33E1E50BA6E83A75881D0416C8BFD2B7A3863846238D631E8A00A48654B
          889248D832380CAC3A115257CA4A527BB244620024F0057E3E7FC1487E3D1F8A
          1F170F8674EB8F3343F0E6E83E43F2C971FF002D1BF0C05FC0FAD7E8BFED79F1
          BE1F817F05B59D656555D56E50DA69E84F266704038F6196FC2BF0C6FEF66D4A
          F67BBB891A59E77323BB1C9662724935F61C3F83E693C4C96DA2FD4B8AEA415F
          647FC1353E027FC2C8F8ACDE2ED4ADFCCD13C3989537AFCB25C9FB83DF6F2DEC
          42FAD7C85A469573AE6A96BA7D9C4D3DD5CCAB1451A8C966270057EEB7ECA9F0
          52DFE04FC19D13C3C2351A8BC62E750917F8EE1C02DCF7C70A0FA28AF6B3AC67
          D5B0FC917EF4B4F9751B67B08181451DEBC2BF690FDAE7C19FB36D9247AC4AF7
          FAE5C4664B6D2AD706461D0331FE15CF193E8700E0D7E6F4A94EBCD429ABB666
          7A87883E1CF85BC5971F68D6BC3FA76A93EDDBE65D5B2C8D8F4C915C26B3FB33
          7C1B9D4FDB7C15E1EB607A910245FE15F9A5F15FFE0A51F14FC7B34F068B710F
          8534D6E163B25DD2E3DDCF7F718AF9CFC47F14FC61E2F70DAD789B55D4D81C83
          7376EF83F89AFADC3E498BB273ABCBE9765D99FB57E0EF07FC12F8177F7DAA68
          8FA07876E664DB3CE6E9010A39C72781F4FE95B1A97ED4FF0009B4B88C92F8FB
          43603FE795DAB9FC81AFC1B9750BA9C1125CCD203FDE909A6436B35C7FAA89E4
          FF007149AEC7C3F19BE6AB55B61CA7EB5FED15FF00050FF877A37C3ED66C7C1D
          ABFF006F788AEEDDA0B711232C7196182ECC47619381D78E99C8FC929E66B89E
          495F97762C7EA4E69248DA2764752AEA70548C1069B5EF60B014B03171A5D7AB
          292B1B5E0CF0A5F78E3C55A5E83A6C2D3DEDFDC2411228E49638AFDF5F83DF0F
          ED7E167C35F0FF0085ED07EEF4EB44899BFBCF8F99BF13935F9DBFF04B6F807F
          DBDE26BFF891AADB07B2D3736DA7EF1D6723E671FEE838FF00817B57EA2D7C7E
          7F8BF6B55508ED1DFD4893296ABA9DBE89A65D5FDDCAB0DADB46D2C9239C0550
          324935F851FB54FC69B9F8EBF1975BF10B48C74F590DB58C67A2408485E3B679
          27DC9AFD13FF0082987C7BFF008579F0BA3F06E9971B359F10E525D87E68ED87
          DEFF00BEBA7D3757E4713935E8F0FE0F920F1325ABD17A0E2BA857E9AFFC12C3
          E027F6768DA8FC4DD56DB13DE66CF4CDE3A460FEF1C7D48DBFF013EB5F00FC17
          F85FA8FC63F895A278534D53E75F4EAAF26DC88E31CB39F600135FBD7E04F076
          9FE00F08E93E1ED2E11058E9D6C96F120F4518C9F527D6B5CFF19ECA92C3C5EB
          2DFD3FE08499BE71CD7CC9FB677ED7F1FECC9A5E93069D6706ABAFEA2E596DA6
          621638875738F7C01F8FA57D1DABEA76DA1E97757F792AC36B6D134B2C8E7015
          40C924D7E13FED4DF1A2E7E3A7C64D73C44F231B0121B7B18C9E1205242F1DB3
          C93EE4D7CDE4F8158CAF79ABC56FFE44A573E9AFF87B678CBFE853D2FF00EFB6
          FF001AED3E0DFF00C1473E217C62F891A278534DF07E9CF2DFCEA923A339F2A3
          FE373EC064FE15F9AB5FA7FF00F04B6F805FD8BE1DBFF893AADB62EF50CDB69D
          BD795881F99C7D48C7E07D6BE9B30C1E0B0787954F66AFD3D4A7647E80A6ED8B
          BBEF639FAD3E8A2BF3C2028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A0028A28A002BE0BFDB5FF00E4B245FF0060B8
          3FF4392BEF4AF82FF6D7FF0092C917FD82E0FF00D0E4A4C68FAE3E03FF00C91A
          F06FFD82E0FF00D0057795C1FC07FF009235E0DFFB05C1FF00A00AEECD311CDF
          8F26687C3579B4E098C8CFE15F81FE31F893E2A87E20EAB12788752489750914
          20B97C01BCF1D6BF7E3C5B62DA9787EEE18C664319DBF5C57E46F887FE09CFF1
          2354F175F6A515EE90B0CF76F3AAB4CD90A5B3CFCB5F93E678CC06599E56AB9A
          CE3184E9C5439B66D395D2FBD5CF528C673A49535769BBFE070FFB76CAF3F8D3
          C19248C5E46F0E5B16663924FCDCD72E7FE4CE87FD8D27FF0044D767FF000503
          D2A6D0BE23F85B4EB82A67B5D02DE172BD372960715C61FF00933A1FF6349FFD
          155A65528CB26CBE50D9CE3FA9A54FE2CFD1983F04FF00E409F113FEC00FFF00
          A352BD53FE09CBFF0025DE5FFB0749FCC57957C12FF902FC44FF00B003FF00E8
          D4AF47FD807C41A6786FE354B75AADFDBE9D6DF60917CEB99022E7238C9AD389
          613A996E67182BB715A2FF0008619DAAD36FFAD4FD516C5447A566689E34D07C
          50CEBA4EAF65A93478DE2D67572BF5C1AD33C0AFE1BA94AA51972558B4FB3D0F
          B98B52D5113D44FD2A57A89FA54A374427BD447AD4A7BD447AD6C8D91C8FC548
          21B9F871E268AE00685B4F98386E98D86BF2FF00F6557920FDA17C33E4641FB4
          B2F1FDDC1CFE95FA15FB5878D62F047C10F11DC33ED9EEE136708CE0967E38FA
          0C9FC2BE22FD83FC2727883E36C3A814DD0E976EF3B31F52368FE75FD0FC1317
          85E17CCB1557E0926979BB5BF33E731FFBCC65184775FE67E999E86B5FC1712C
          BE28B056E47980F3ED5907A559D16F7FB3756B5B9ED1481881DC66BF1ACAAAC2
          8E3E8D4A9F0A9C5BF4BAB9F4D5E2E542718EED33E945E941C5416D3ADC411C8A
          432B28208A9B15FE8453929C2328ECCFC7DAB3B31D451456C20A28A2800A28A2
          802A6A17D06976371777322C56D02192477380AA064926BF0C3F6B8F8E571F1E
          7E32EAFAD0918E956EE6D34F8F27021524038EC5B963F5AFD12FF8293FC7B1F0
          CFE129F0A69B71B35BF126E85B69F9A3B61FEB0FFC0B217E84FA57E42139393C
          9AFBAE1FC1F2C5E266B57A2F4EA5C5750AFD28FF008258FC03FB3DAEA3F13F55
          B6F9E5CD9E99BD7F87FE5A483F1F973ECD5F02FC27F877A87C56F885A1F85B4C
          8CBDCEA370B1640C845CFCCC7D80C93F4AFDEEF875E08D3FE1BF82746F0DE971
          08ACB4DB6481001D703927DC9E4D74E7D8CF6349508BD65BFA7FC10933A61D2B
          E15FF829FF00C7C1E0FF00015A7C3FD2EE766A7AEFEF6F0A37CD1DB29E87D373
          0C7D15857DADE24F1059785340D4357D4265B6B1B181EE2695CE02AA82493F95
          7E0CFED0DF172F7E377C5AD7BC5376EDE55CCE56D6263FEAA15E117F20338EF9
          3DEBE7F23C1FD6311ED64BDD8EBF3E8248F37AF44F801F09AF7E357C56D07C2D
          668C56EA75371228CF9708E5DBF000FE38AF3BAFD51FF825D7C03FF8457C157B
          F10F54B6DBA8EB5FB9B2DEBCA5BA9E587FBCC3F251EB5F6D98E2D6130F29F5D9
          7A94DD8FB6BC29E1AB1F07787B4ED174D812DAC6C604822890602AA8C0AD8A29
          09C0AFC99B72776667927ED43F196D7E06FC1CD73C45248A2FBCA3059464F2F3
          B0C2FE5D4FB035F849ACEAD73AEEAB77A8DE4AD35D5D4AD34B239C96663924D7
          D85FF052DFDA007C45F89E9E0DD2E72FA3F8758C72946CACB727EFFF00DF3F77
          EA1ABE31AFD2F24C1FD5A873C97BD2D7E5D0D1227B1B29B51BD82D6DE3696799
          C4688A32589380057EE67EC83F0421F815F05747D1DE254D5AE905DEA0E07266
          70091FF01181F857E747FC137FE021F8A3F1757C4BA8DBF99A1F8736DC12E3E5
          92E3FE59AFE182DF80F5AFD84DB840A3818C0C578DC418CE692C3C5EDABFD052
          7D0188519240F73542F35FD334E8CBDD6A16B6EA3A992655C7EB5F8F5FB5F7C6
          0F8B3E09F8DFE2BF0DDC78CB58B6B08AEDA4B58A19DA25F25BE640318C800815
          F366ABE34D7F5C93CCD435ABFBC7FEF4D70CC7F9D634387E55611A8EA2B3D744
          2E53FA10D0FC53A2F8A5671A4EA769A9AC2764BF669564087D0E3A579E7C51FD
          95FE197C60495BC41E17B37BD93ADEDBA7953E7D4B2E09FC6BF32FF604FDA92C
          FE03F8EF50B0F12DC48BE1CD69156498E5BC8954FCAE7DB0483F87A57EAD786F
          E33F81BC5B671DD695E2AD2AF22701818EED323EA33C579B8AC1E232EADFBB6E
          DD1A13563E17F8A3FF0004988DDA6B9F0278A0A0E4A596AAB9FC37AFF857C5BF
          1ABF66BF1E7C05BC48FC55A3BDBDA4ADB21BE88EF8253E818743EC706BF6DBC4
          DF1BBC05E0FB56B8D63C59A4D9228CE24BB4C9F6033C9AFCDAFDBEBF6D4D07E3
          5E930782BC1D1BDC6916F73E75CEA5347B7CE65E14479E42F2724E0F4EDD7DDC
          AB1B8FAB55426B9A3D5B5B7CCA4D9F0E53A36649159090E082A475CD36BDB3F6
          4DFD9EB53FDA07E2969FA6430BA68B6922DC6A37783B63881FBB9FEF363007E3
          D01AFB0AD563469BA937648A3F62BF66DB9D42EFE04781A6D50BB5EBE9501769
          492CDF20C124F7C57A5960A092700555D2F4D8347D3AD6C6D90456F6D1AC51A0
          E8140C015E53FB57FC5B1F05FE07788FC431922F8426DED00FF9EAFF002A9FC3
          39FC2BF2051788AF682D64FF0036647E6CFF00C147FE3DFF00C2D1F8BEDE1BD3
          6E0C9A1F87375B8DA7E592E3FE5A37E046DFC0FAD7C8953DF5ECDA95ECF7570E
          D2CF33991DD8E4924E4935057EB785A11C3518D28EC8D4FB4BFE099DF017FE13
          FF0089D2F8CF52B7DFA4787F0D0EF1F2BDC9FBBFF7CF5FAE2BF5BCF6AF8B3F61
          EF8CDF08BE1E7C00D134B6F16E99A66A6774D7F1DECCB14866279EBD40E00F61
          5F50F817E2FF00837E265C5DC3E17F1059EB52DA80D30B4937EC07A648AFCE33
          89D6AF8894E516A31D169FD6E4331BF688F8C565F033E14EB5E2ABB2AF2DB445
          2D61638F3666E117F3EBED9AFC2EF88BF10F5CF8A5E2DBFF00117886F64BED46
          EDCBB4921FBA3B281D8018007B57E837FC15C3C5B710E99E0AF0EC6CCB6D3492
          DDC801E199400BFCCFE75F9A95F5390E1634E87B7B7BD2FC8691A1A0681A878A
          359B4D2B4BB596F750BB90450C10A966762700002BF463E0B7FC12A2C25D1AD3
          50F88BAD5C8BE94091B4DD3480B18EBB59C8393EB8FC09EB5F19FEC9FF001074
          7F85FF001F3C29E22D79376976B39599B19D8194A87FA2939FC2BF652CFF0069
          DF85377671DCA78FF4158DD7700F7C8AC07B82720FB546758BC5D19469E1D349
          ADD2FC01B6725E11FD85BE0BF8430D6FE0CB6BC970033DF3B4D9F7C31207E15E
          79FB62788FE1DFECC9F08EF5340F0DE8DA6789B5646B7D3A3B5B58D2446230D2
          F4FE11DFD702AFFC61FF00828F7C30F875633C5A25DB78B75703F77058F1103D
          B74878C7D327DABF2D3E39FC71F117C7CF1CDD788FC41704B39DB6F68AC7CBB6
          8FB220EC3F99C9AF332EC162F155555C4B7CABBB7A892679EC9234B233B1CB31
          249ADAF047846FFC79E2DD2BC3FA642D3DF6A17090468A33C938CFD0561D7DF3
          FF0004B0F8229E22F17EA9F10750837DB6923ECD6458706661F330FA29FF00C7
          ABEC31989584A12A8FA7E7D0B7A1FA17F03BE15E9FF06BE19687E14D3A30B1D9
          C004AE07324A79763F524D763ABEAD6DA169577A85E4AB05ADAC4D34B239C055
          51924D5D39AF8A3FE0A67F1EFF00E15FFC3387C15A65CECD5FC41913EC3F3476
          C3EF7FDF478FA6EAFCB68529E3B10A3D64F5FD4CF73F3BBF6A2F8CD73F1CFE31
          6B9E2291D8D8F9A60B28C9E1205385FA67A9F726BC968AEEFE07FC2EBFF8C7F1
          3F42F0AD82316BDB8512B81911C639763F400D7EB09430D4ADB462BF2343F413
          FE096FF00FFB13C397FF0012355B6C5DEA19B6D3B7AF2B103F338FA918FF0080
          9F5AFD033587E0BF0A58781BC2DA5E83A644B058E9F6E96F1228E81462AF6B5A
          BDAE81A55E6A57B2AC1696B134D2C8E70155464935F93E33112C6622551F5DBD
          3A19BD4F8E7FE0A65F1EFF00E15EFC308BC19A65C6CD63C43959B61F9A3B61F7
          BFEFA3C7D3757E48D7AC7ED41F19AEBE397C62D73C47248C6C8CA60B28D8F090
          29C28FC7A9F726BC9EBF4ACB308B07868C5FC4F57EA5A563BBF821F0BAFF00E3
          1FC4FD0BC2B608C5EF6E144AE0644718E5D8FD0035FBD7E0AF09D8781BC2BA5E
          83A6C2B058E9F6E96F1228E81462BE1CFF00825BFC033A07866FBE246A96DB6F
          352CDB69FBD795841F99C7D48C7FC07DEBEFFAF8DCF319EDEBFB28BF763F9F52
          5B119C20E481F534C33C67F8D7F3AFCFEFF8299FED31A87834693E02F0B6A936
          9FAA498BCBFB9B490A491A74440C3919E49F603B1AFCFF00FF0085F9F11FFE87
          8D77FF0003A4FF001A9C26475715455572E5B82573FA01F3909FBEBF9D3F3915
          F8B5FB2AEA1F13FE3B7C65D17C3C3C69AFB69AB20B9BF905F498481482DCE78C
          F0A3DC8AFD9FB4B65B4B5860424A44810127270062BCEC7E07EA3354DCEEDFE0
          26AC4E4E2827039E2835F3DFEDB3F1E07C0AF82BA95E5ACC23D775306CB4F5EE
          1D872F8FF6464FA6703BD7151A52AF5234A1BB11F40F9B1FFCF45FCE93CD8FFE
          7A2FE75FCFFB7C7DF890EC58F8E35DC939FF008FE93FC6B43C3BF17BE29F8A35
          DB0D234FF196BF717B7B3A410C497D212CCC400073EF5F54F872A455DD45F715
          CA7EF9AB07190411ED4D69157A903EA6B87F829E09BAF87BF0D343D1751D42E3
          56D4A1814DDDE5D4A647925232C7279C67A0EC315F287FC14F2D3C5DE1AF0CF8
          7FC67E18D7B52D26DEDE43677B1D95C346AC1B946201EC4119F715F39430CB11
          885414AD7764C93EE7F363FEFAFE740950F4753F8D7F3FBFF0BF3E23FF00D0F1
          AEFF00E0749FE35B1E0EFDA53E22787BC57A46A72F8C358BB8AD2EA399E09EF5
          D92401812AC09E41F4AFA3970E554AEA68AE53F7B4714B589E0BF135AF8CBC29
          A46B766E24B6BFB58EE2361DC3283FD6B56E2E23B585E599D638D065998E0015
          F22D34F97A9249D3A5344E87F8D7F3AF807F6BCFF828CDA7858DEF84BE1ACD1D
          F6A9868AE35B521A280F4222ECCDFED741EFDBF3F5FE3F7C4891D98F8E35DCB1
          C9C5F49FE35F4585C8ABE221ED24F96FB5CAB1FD0079C87F8D7F3A04A87A3AFE
          75F81FE1EF8B3F16BC59AC5AE95A478AFC47A86A172E238ADE0BC959DD8F4000
          35FA69FB24FECBBE37F0A4569E28F899E31D6B52D5C81243A29BF76860EE0C9C
          E1DBDBA7D7B678CCA638287354AAAFD15B560D58FB028A28AF0090A28A2800AF
          82FF006D7FF92C917FD82E0FFD0E4AFBD2BE0BFDB5FF00E4B245FF0060B83FF4
          392931A3EB8F80FF00F246BC1BFF0060B83FF4015DE5707F01FF00E48D7837FE
          C1707FE802BBCA6218CBB9483D0F15E7BE27D11B4EBA69147EE243918EC7D2BD
          0CF6AAF796B15EDBB452A86461839AFCFB8CF8528F14E5FEC5E9563AC5F67D9F
          933B30B89786A9CDD3A9F96BFB737ECD3F107E307C54B1D63C2BA27F68D845A7
          A40D279E89870CC48C3107A115C3B7EC91F143FE19AC785BFE11DFF89DFF006F
          7DB7ECDF688FFD4F95B776738EBDBAD7E9FEBDE1D974890B0CC9093C381D3EB5
          88C30335FCD15B8CB3EE1B852C9B134231741AB5D3BBB5EDADECEFE47D2430D4
          710DD58C9FBC7E60FC32FD903E2AF86749F1A47A8786CC2F7FA435ADB81711B6
          F90C8842F078E01E7DABCE97F628F8C6872BE14914FB5C47FF00C557EBF3F535
          131ADA978B19BC273A9ECA1795AFA3E8ADDCD7FB329492577A1F8CB75A5FC49F
          D97FC696179770DE681A980258FE7CC7326795241C30E3915FA29FB387ED61E1
          FF008DBA34167793C1A5F8A11409AC1E4C7987FBC84F5E99C738FD6BD17E327C
          1BF0FF00C68F0ACDA36BD6CAE48260BA503CC81FB329FE9DEBF313E38FECD5E3
          1FD9EFC49F6AB65BABBD255C3DAEB166AC021CF0188FBADFE457D7D0C6E4FE23
          61961F1B6A38C8ECD6CFD2FBAF2BDCC1C2B65F2E68FBD03F5B9C0C71513F4AFC
          CCF84DFB7F78D3C0B6F0E9FE22817C4D631614493B6DB851FEFF007FC79F7AF7
          FD33FE0A41E00BA841BCD2B56B4976E4808ACB9F40735F9EE61E1CE7F80A8E34
          E8FB48F4945A77F96E7AB4B32C3CD5DCACFCCFAB8F7AA97B79069F6F25C5D4A9
          043182CCF2300001EF5F1E78A3FE0A51E1E82DDFFB0BC377B773630BF6B758D4
          7E59AF98BE2DFED45E3DF8E727F674F31B4D32461B74CD3D485739E377763D3A
          F1C7415E9653E1B6738CA8A58C8AA34FAB9357B792FF003B0EB66B429C7DC7CC
          FC8EAFF6CCFDA157E2EF8B5342D12632787B4C72A8CBD2E26E85FE9D87E27BD7
          D39FB117C169BE1AFC3D9359D4E211EABAE6C9B69EB1C38F901F42724FE23D2B
          CB3F64EFD8D2E4DF45E2BF1ED83429111259E97703973D43C83B01FDD3CE7A8C
          75FB9846B1204450AAA3000E82BDBE2FCF70382C04386F2877A70F8E4BAB5ADA
          FD75D5919761AA54AAF175F77B2EC34F4A88F5A95BA1A88F5AFC4E27D423D57E
          16F8BD668469574E0491FF00AA663F787A7E1FE7A57A50E474AF98239E4B6992
          589CA48872ACA7041AF58F057C508AF112CF532B14E0055989E1CFBFA57F4FF0
          0F1D51951865799CF9651D2327B35D137D1AE9DCF86CDF299A93C450574F75FA
          9E9745311D641952083D08A7D7F41464A4B9A27C7EC145252D5808466AA6A5A8
          DBE91A7DCDE5D48B0DB5BC6D2C9239C05503249356F3589E31F0A69FE38F0DEA
          1A16AA9249A75F44619E38E4285D0F5191CF3D29C6D757D80FC3BFDAC7E364FF
          001DBE346B7AFF0098CDA6C721B5D3E33D1604242F1DB3CB1F7635E395FB547F
          E09D5F0309C9F0AC99FF00AFC97FF8AA3FE1DD5F033FE85593FF000325FF00E2
          ABEF68E7B83A1054E11765A6CBFCCBBA3C0BFE0963F013EC961A8FC4DD56DBF7
          9719B3D337AF4507F7920FA9F973ECDEB5FA2BD4561783BC23A5780BC37A7E81
          A25AAD96996310860853A2A8F7EE7DCF26B77200AF8EC6E29E32BCAABEBB7A12
          F53E10FF0082A17C7CFF00844BC0F67F0FB4BB9DBA96B5FBEBDD8DCA5BA9E01F
          F7987E4A477AFCACAFDD1F893FB1BFC2EF8B9E2AB9F11789F459B52D5670034A
          D77228000C00003803E95CBFFC3BABE06FFD0AAFFF008192FF00F155F4B97E6D
          85C15054ECEFD745BFDE34D23F273F67DF84B7BF1B3E2C683E16B446F2EE670D
          732A8FF550AF2EDF903F8E057EF3F863C3B65E13F0F69DA369D0ADBD8D8C096F
          0C483015540007E95E6DF08BF65BF873F03B58BAD4FC23A1AE9F7B73179324CF
          2348DB739C02C4E3B74EB81E95EBB5E466B98AC7CE3C9A457E626EE2F7F6AF1C
          FDABBE35DBFC09F831ADF880C8A35192336BA7C4DD5E77042F1DF1CB1F6535EC
          42BCD7E30FC00F067C76B7B183C61A7CBA8DB591668625B878D431EA48523278
          EFD3F135E561DD38D58CAAFC2B7B08FC11D4F51B8D5F51B9BEBB95A6B9B891A5
          924739666272493DE9B616336A77D05A5B46D2DC4EE238D1464B3138000AFDA2
          FF0087757C0CFF00A155FF00F0325FFE2AB5BC27FB09FC1BF05F88F4FD734BF0
          C795A858CA2681E4B879155C743B5890715F76F8870CA368459A73235FF645F8
          2117C0AF82DA368AD12A6AB3A0BBD41C0E5A6700919F6185FC2BDB29000A001C
          014EAF82AB5255A6EA4B76667C7DFB76FEC6FF00F0BE7464F137866348FC63A7
          4457CBE156F631CEC27B30FE13EF83C60AFE476BDE1ED4FC2FAA5C69DAB58DC6
          9F7D0398E482E6328EAC3A820D7F461838AF3EF88DF013C05F162303C53E18B1
          D4E50BB45C3C416551E81C73FAD7D165D9D4B090F65557347A77452763F9FF00
          A9A1BCB8B7188A79231E88E457EBB7887FE0971F097563335949AAE96CFF0074
          4338609F4DC0D72327FC1257C1464CA78AF5509E85509FE55F491CF70525EF36
          BE43BA3F2DA6BB9EE3FD6CD24BFEFB13FCE99144F33848D19DCF0154649AFD67
          D0BFE094DF0C74F90497FAAEB3A8E3F80C8A8A7F25CD7B87C3AFD8FBE147C309
          229F48F0959BDEC5CADD5E2F9D203EA0B6707E958D4CFF000B4D7EED37F80732
          3F2E7F678FD863C7FF001B753B5B8BBD3A7F0F7868B8F3B51BC8CA92BD7F7687
          05BD3238F7AFD6BF82FF00047C33F023C216BA0786ACC45146BFBEB9700CD70F
          DDDD80E4FF004C018000AF408624850246AA8A380AA3005486BE471D99D6C6BF
          7B48F644B77131C57CB1FF00051BF87FADF8FF00F678B84D0EDE5BB9F4EBB4BC
          9ADE119678D410D81DF19CFE15F54D41716D15E41243322C9148A55D1864303D
          41AF3F0F55E1EAC6AAE8EE23F9C47428C55810C0E083DA92BF69BE22FF00C13C
          BE10FC42D5E7D53FB266D16F2762F27F6749B2366F5D9D07E18AF299BFE092DE
          0869894F156ACB1E7EE95427F957E854F3FC2495E574FD0D3991F963144D3CA9
          1A02CEE42803B9AFDAEFD84FE03AFC12F829A7FDB2011EBDAC017B7A58619770
          F910FD076F526B8DF87DFF0004C7F865E09F11586B33DEEA9AC4F672ACC905CB
          AF92CCA7237003246474CD7D831C6B0A2A200AAA3000EC2BC0CDF35A78B82A54
          36EA4B773E38FF008292FECFFA97C58F86F61E21D06D64BDD5FC3ECCED6D0AEE
          79616C6EC01D48C038F4CD7E454B13C12347221475382AC30457F478C81D086C
          3023041EF5F387C5FF00D823E16FC5FD5E7D5EEB4D9B46D567C996E34D611876
          FEF15C633EF8E7BD3CAB388E169FB1ACBDD5B3409D8FC4FA50A58800124F615F
          AA507FC125BC08B701A5F146AEF0E7EE284071F5C57B27C34FD827E107C359D6
          E61F0F8D66F148227D55BCEC11FEC9F97F4AF76AE7F848ABC2EDFA15CC8FCAEF
          837FB2978E7E315ADDEA769A6CBA6F87ED2179E6D56EE32B1614124267EF9E31
          81D3BE2BC76E61FB3DC4B1673B1CAE7D70715FD164FA0D84DA34DA50B68E2B09
          6230B431A855D8460818F6AF9EE5FF008276FC0E9A5791BC2AE5989627ED92F5
          3FF02AE1A1C451E693AD1B2E897EA2E63F14EBF6C7FE09F7E1B87C3BFB2F7858
          C617CDBC125CCAC063716738CFE181507FC3BABE06FF00D0AAFF00F8192FFF00
          155EEDE03F03691F0DBC2B61E1DD0ADCDA69564A520859CB1519CE327935C19A
          E6B471D4953A49AD6FA89BB9A7ADEB16BE1FD22F352BD9560B4B489A69647380
          AAA3249AFC22FDA73E325D7C72F8C3AE788E476364D2986CA363FEAE053851F8
          F53EE4D7EE6F8DFC17A67C41F0C5FF0087F598E49B4DBE4F2E78E390C65D7D32
          39C57837FC3BABE06F7F0AC9FF008192FF00F155C794E370F8172A9553727A2B
          7604EC7E2AD7EA27FC12DFE01FF607862FBE23EAB6DB6F352CDB69FBD795841F
          9987D48C7FC07DEBD987FC13AFE06020FF00C22AFC7FD3E4BFFC557D07E1AF0D
          E9DE0FD02C746D26DD2CF4EB289618214180AA0600AF4332CEA9E2A87B2A29AB
          EF7EC0DDCD51CD7C4DFF000534F8F7FF000817C3587C11A65C6CD5F5FCF9FB0F
          CD1DB0FBDFF7D1E3E99AFB275CD62D7C3DA3DEEA57D2AC169690B4D2C8E70155
          46493F957E117ED33F18EEBE397C60D73C4B33B1B4794C3671B1FF0057029C28
          FCB93EE4D7164983FACE23DA497BB1D7E7D0123CAABBDF817F0B2FBE32FC51D0
          BC2B628C4DE5C2899C0CF9710E5D8FD0035C157EA3FF00C12E3E027FC23BE14B
          EF88DAA5B6DBDD5336F61BD795801F9987FBC47FE3BEF5F7398E2D6130F29F5D
          97A94DD8FB87C1BE16B1F04F8634CD0B4D8560B1B0B74B7891470028C553F887
          E36D3FE1C783358F126A92886CB4EB679DC9EF81C01EA49E00AE9857E73FFC15
          3BE3E7D92CB4EF865A55CFCF362F353D87A28FF5719FC7E6C7B2D7E6982C3CB1
          B888C3BEFE9D485A9F027C5BF88DA87C58F889AE78A75372F73A8DC34A149C84
          4CE1547B01803E95C8019381D68AF63FD93BE09CFF001DBE34689A0796CDA645
          20BAD4241D160420B73DB3C28F7615FABCA50C2D1727A462BF234D8FD14FF826
          AFC05FF856DF0A5BC57A95BECD6BC47899378F9A3B61F707FC0B25BDC11E95F6
          6554D3B4FB7D234FB7B2B58D61B6B78D628E34180AA060002ADD7E458AC44B13
          5A5565D4C88DDD63566638551924F615F8C1FF000502F8F2DF18FE355DD8D8DC
          19340D00B595A853957707F78FF8918FA28AFD18FDB8FE3B27C0FF00825A94D6
          B388B5DD581B1B100FCCA587CCE3FDD1939F5C7AD7E254D2BCF2BC9231677259
          89EE4D7D670F60F578992F25FAB2E2BA8CAFBA3FE097FF00013FE12FF1DDDFC4
          0D52DB7E99A1FEEACF7AFCAF72C3A8FF00754FE6CA7B57C53E1BF0FDEF8AF5FD
          3F47D3A16B8BEBE9D2DE189072CCC4003F335FBCBFB3D7C22B2F825F09F41F0B
          5A2AF9B6D006B99547FAD99B976FCC9C7A0C0AF573CC67D5E87B38BF7A5A7CBA
          8DB3D2FA57997ED21F0DA2F8B1F05FC53E1C78C3CD7168EF6F919C4AA3721FCC
          0AF4D279A6B2870548C82318AFCE29CDD39A9ADD6A667F38D7F672E9D7B3DACC
          A52585DA3756182083835057D09FB767C2B3F0B3F689F10DBC5179561A9BFF00
          68DB6071B64C96C7D1B70FC2BE7BAFD8F0F5557A51A91D9AB9A9FACDFB06FED2
          1A0597ECC32B78AF58834F4F0BCAD6F24B70F82633F3260752792A00E78AF96F
          F6B7FDBF75EF8CD35DF873C26F2E87E0FC946653B67BC1FED91D14FF00747E24
          F41F2225EDC476B25B24F22DBC8C19E20C42B11D091F89FCEA0032703AD7974B
          29A14F112C4495DB775D90AC2B3162492493D49AF46F825F00BC5DF1EFC511E8
          DE18D3DA600833DE480AC16EA7F89DB1C77E3A9EC0D7B07ECA1FB0BF897E3E5E
          41AC6B31CFA0F8395B2D7722624B91E9103D47FB5D07B90457EB57C30F853E1A
          F83FE18B6D07C31A645A759423928BF3C8DDD9DBAB13EA6B9731CE29E16F4E97
          BD2FC103763CB7F663FD8E7C23FB3A6931CF0C09AAF8A25402E7569D3E71EAB1
          8FE05FA727B93C63E83A0E696BF3CAD5AA579BA951DDB330A28A2B200A28A280
          0AF82FF6D7FF0092C917FD82E0FF00D0E4AFBD2BE0BFDB5FFE4B245FF60B83FF
          004392931A3EB8F80FFF00246BC1BFF60B83FF004015DE5707F01FFE48D7837F
          EC1707FE802BBCA620A4C52D140104F025C4452450C8C3041AE335EF05321696
          C7E65EA633DBE95DB9236D1DABE3F88785B2DE24A1ECB1B0F796D25A35F3FD0E
          9A189A98795E0FE478BCD13C2ECAEA518750462A16E457ACEAFE1CB5D623C489
          B1FB3A706B87D67C11796397887DA231DD7A8FC2BF93388BC36CDB2472A9878F
          B6A4BAA5AAF55BFCD1F5986CCA956B297BACE65EA9DF58DBEA36CF05D411DC42
          E30D1C8A1948FA1ABD32346C5594A91D41155CF4AFCB17B4A33ECD1EE2B48F9B
          FE257EC29F0DFC79752DEDB5B4FA0DF4AC5DDEC1F08C4FAA1C81F862BC8B50FF
          008265DA13FE87E319231BB3FBDB5DD81E9D6BEEA738A85FA57DEE0B8E388303
          4D53A58A9596D7B3FCD3396580C3D477940F8BF43FF826BF872D6E55F54F125E
          DE443931C31AC79FC79AF78F873FB38F80BE173249A2E850FDB1463ED7703CC9
          7EB93D3F0AF536C8CD44DF4AC31FC599CE670E4C56264D3E89D97CD2B1D54705
          87A4EF082B90918E0702A17A98F5A85EBE591E9A187A5447AD4A7A5447AD688D
          511BFDEA613834F7FBD4C3D6B55A168E9BC33F10F52F0EBA46653716B900C727
          381EDE95EABE1FF891A46BA123330B6B82398A5E3F5E95F3FBF4A4248390706B
          F4DC878EF35C912A5CDED29AFB32D6DE8F7478D8CC9F0D8AF792E59775FA9F56
          46E1C65483F434EED5F35689E39D6340205B5DB3443FE59C9F32D77DA3FC7181
          9426A768D1B743243C8FC8D7EF194F8919463D28E21BA53F3D57DEBF53E47139
          0E2E8EB4FDE5E5BFDC7AA83B7AF14E04560695E37D1B59C0B6BE8CB9FE063B5B
          F235BC922BAE54823D457E9D86C661B171E7A15149774D33E7A74AA527CB38B4
          FCC7D14515DA66145252D0014514500145145001451450014514500145145001
          4514500145145001451450014514500145145001451450014514500145145001
          45145001451450014514500145145001451597E22D7ACFC31A1DFEADA84C96D6
          36503CF34AE70AA8A0924FE02849B76407C69FF0539F8F7FF082FC39B7F03699
          71B356D7B9B9D87E68ED81E7FEFA3C7D01AFC9BAF4FF00DA47E325DFC73F8B7A
          DF89EE0BADB4B298ED2173FEAA15E107E5C9F726BCC2BF58CB709F53C3C60F77
          ABF5344AC7A07C06F8557DF19FE29E83E15B2463F6B9D7CF900CF9710E5D8FD0
          035FBD5E11F0C58F833C35A6689A6C2B6F6361025BC51A8E02A8C0AF883FE097
          7F00FF00E119F085E7C45D52DB6DFEAD982C37AF29003F330FF7987FE3A3D6BE
          F735F179E633DBD7F6517EEC7F3EA4B672FF00123C73A7FC34F036B3E25D5251
          159E9D6CF3B127EF103851EE4E00AFC11F8ADF10B50F8A9F1075BF146A72192E
          B51B869704E422E7E551EC0600FA57DF9FF0554F8E6D6F6DA4FC35D36E30F2E2
          FB51087F87388D0FE39247B2D7E6BD7BF9060FD95275E5BCBF2FF8238A003270
          3935FAF7FF0004D8F80A3E1A7C25FF0084AB52B7D9ADF8936CCBBC7CD1DB0FF5
          63FE0592DF423D2BF3B7F644F826DF1DBE35E8DA0CA8CDA5C2DF6BBF65CF10A1
          048CF6C9C0FC6BF73F4FB0834BB1B7B4B68D62B7810471C68301540C00057371
          0633962B0D1DDEAFD3A049F42D0A64922C31B3B9DAAA0924F614FAF8D3F6FF00
          FDAD6D7E137836E7C21E1AD46293C5BA9A1867113FCF670329CBE47DD73918EF
          CE7D2BE3B0D879E2AAAA505AB2373E21FDBE7E3D8F8D5F1A2EE0D3EE1A5F0FE8
          79B3B419F95D81FDE38FA918CF70057CCD4E924695D9DC96763924F735A9E13F
          0CDF78CFC4BA6E87A6C2D3DF5FCE96F146A324B31C0FE75FADD1A50C2D2505B4
          51AEC7DADFF04BCF809FF09678E2F3E21EA96DBB4DD17F7365BC70F72C3923FD
          D53F9B03DABF55B19AF38FD9FF00E12D9FC14F851A17852CD1775A400DC4AA31
          E6CCDCBB7E249FA0C0ED5E915F96E658B78CC44A7D365E866DDC4A6BBAC6A598
          8551C927B565F89BC4FA5783B45BAD5B59BE874ED3AD90C92DC5C3855503DCD7
          E607ED71FF000517D4BC72D7BE16F87334BA66807314FAA8CA4F723BECEE8BFA
          9F6E454E0B015B1B3E5A6B4EAFA204AE4BFF000545F891E03F1BF88742D3F43D
          41750F13E926486F1EDB0D12A1FE067FEF023A0E9939C1E2BE0DA7492BCD233C
          8C5DD8E4B31C9269B5FA96130CB09463462EF6345A001938AFD1AFD8C3FE09EB
          61AB69BA5F8F3E21186FED6E512EAC34889F72329E55E523AFAED1C7AF715F9C
          B5FB07FF0004CEF8ABFF0009DFC084D0EE66F32FFC3F31B6218F3E537CC87F98
          FC2BCACEEAD6A586BD276D75F413D8FAD6C2C2DB4AB386D6D208EDADA15091C5
          128555038000156E8A2BF32DCCC28A28A0028A28A0028A28A002BE0BFDB5FF00
          E4B245FF0060B83FF4392BEF4AF82FF6D7FF0092C917FD82E0FF00D0E4A4C68F
          AE3E03FF00C91AF06FFD82E0FF00D0057795C1FC07FF009235E0DFFB05C1FF00
          A00AEF298828A28A004C52D1450014846474CD2D146E064EA7E1EB2D554F9F0A
          EEFEF0E0D721AB7C38963DCF652875EC8DC1FCEBD0CE71D681D3AD7C3E73C199
          2E789BC4D14A4FED4747F7AFD4EEA18DAF87F825A763C3B50D1EF34E6659EDDD
          4038DD8E0FE359AF5EFF0034093215915581EC466B9FD4FC07A66A596F28C121
          FE28F8FD3A57E1F9B784388A579E575D497F2CB47F7AD1FE07D0D0CF22F4AD1B
          7A1E367273511EB5DF6A3F0BAEA3CB5A4EB28FEEBF15CB6A1E17D4F4E2C66B57
          DA3F8946457E4D9870A67595B7F59C34925D52BAFBD5CFA0A38EC3D7F8268C43
          D6A17E2AC488D1B95652A47622ABBD7CC72CA2ED247A70187A5447AD4A7A5447
          AD5A37446FF7A987AD3DFEF530F5AD4B444DD298DD69EDD298DD6B4468467A54
          2FD6A63D2A17EB5A2344303156CA920FA8AD9D37C6FADE8EA12D6FE5441D158E
          E03F0358C7AD31F9AF4F0B8CC4E125CD42A38BF26D7E429D1A75572D48A6BCCF
          45D2BE39EAD68CAB7D0C77518EAC06D63FD2BAFD3BE3B68B7000BA866B56F5C6
          E15E0CDD6A193EB5F7D80E3DCF704947DAF3AFEF2BFE3B9E456C8B055B5E5E57
          E5A7FC03EA7D33E21F87F561FB8D4A227FBAE769FD6B762BD82E143452A480F4
          DAC0D7C6E4953C123E9535B6A9776527996F75342E3F891C835F7584F152B452
          58AC3A7E69DBF07FE678F5785A0FF8551AF5573EC8073474AF956CBE28F896C0
          FEEF537703B48037F3AE82CBE3FEBD6E544F0DB5C2F7F94826BEC30DE25E5157
          4AB1943E49AFCFF43C9A9C338D8FC0D4BE763E8BCD211E95E2767FB472E40BAD
          2C85EED1C99FD315D0597C7FF0E5C28F345C5B93D772671F957D3E1F8C722C4F
          C1894BD6EBF33CCA992E3E96F49BF4D7F23D373FE7346EAE2ECBE2F785AF8E13
          538D4FA480AFF3ADCB5F18E897A018354B5933FDD9457D052CDB0188FE1578BF
          492FF33CE9E13114FE3A6D7C99B381E94B55E3BD82550C9346C0F421854A2456
          E8C0FD0D7A31A9096CCE6716B71F4526452D6A20A29296800A28A2800A28A280
          0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
          0A28A2801074AF857FE0A81F1F0783BC0569E00D2EE766A7AE7EF6F3637CD1DB
          29E87D3730C7D15877AFB5BC49E20B2F0AE81A86B1A84CB6F636303DC4D2B9C0
          55504927F2AFC19FDA1FE2EDEFC6EF8B5AF78A6EDDBCAB99CADAC4C7FD542BC2
          2FE40671DF27BD7D1E4783FAC623DA497BB1D7E7D0A48F37AF43F805F09EF7E3
          57C55D07C2B668DB6EA75371228CF9708E5D8FD0035E795FAA1FF04BBF805FF0
          8B782AF7E216A96DB751D63F7363BD794B753CB0FF007987E4A3D6BEDB31C5AC
          261E53EBB2F529BB1F6DF853C3563E0FF0E69BA269B0ADBD8D84096F0C683015
          54003F95695D4E2DEDA698F48D0B1FC066A6A82EE01736B34278122327E6315F
          93DEF2BB333F02BF689F1DDD7C48F8D1E2CD76EA43234F7D22C793F76353B507
          E0001F8579C57AD7ED39F0635BF82BF1635AD2B54B3782D67B892E2CA6C7C934
          2CC76B03FD3B5792D7EC9867074A2E9FC3656353EE3FF82617C58F04FC38F137
          8A6DBC4DA85B68F7F7F145F65BDBC91638B6A93B9371E84E47D71ED5FA3DE22F
          8F9F0F3C2BA64B7DA978C3498208D37922E55988F600E4D7F3FC0E0E475AD0D3
          74ED53C45771D9D8C175A85CC876A430AB48C4FA002BC2C6E4B4F1559D794DAB
          EE26AE7E8D7ED15FF0544B28EDAF745F85F68F3CD2218FFB76E976AA13DE38C8
          E7EAD8E7B115F9C9AEEBFA8F89F55B8D4B55BC9B50BFB862F2DC5C397773EA49
          E4D7D003F631F107837E146A1F107E214BFF0008CE970C59B5D39C7FA5DCCADC
          226D3F7327AE79033C57CE2D8C9C74ED5DF97E1F0B453587D6DA37FF00041584
          AFBDFF00E0971F00FF00E122F15DF7C45D56DB758E95982C37AF0D391F330FF7
          41FF00C7BDABE20F07F85AFBC6BE27D3342D36169EFAFEE12DE28D472598E2BF
          7A7E05FC2BB0F831F0B742F0B592AA8B3B75F3E4031E64A79763F524D79F9EE3
          3D851F6517EF4BF2EA0D9E83CF6AF2CF8EFF00B45783FF0067EF0D49A9F89350
          4172CA7ECDA744C0CF70C3B2AFA74C93C0CD78CFED65FB7BF87BE085B5DE83E1
          B921D77C658286353BA1B43EB211D48FEE8E7D71DFF277E227C4AF11FC55F12D
          CEBBE27D526D53519CE4C929E1476551D140F41815F3B96E4D3C55AA56F761F8
          B252B9E9FF00B4AFED77E30FDA335A737B70FA6787A3626DB48B790F96A3B17E
          9BDBDCFE005784D3E1864B89563891A4918E02A8C926BEF7FD90BFE09CD7DE2A
          92CBC59F12EDDEC747F965B7D19B2B34FDC193BA2FB753EDDFEDAAD5C365B475
          F752D9772F63C2BF65FF00D8D7C5BFB44EAD15CAC0FA4F85237C5C6AB3270D8E
          AB18FE26FD0773D01A1FB63FC03B7FD9EFE2ECDA069C266D1A5B78E7B4966396
          65230D93DCEE06BF6EF40D034EF0BE956DA6695650E9F616C8238ADEDD022228
          E80015F107FC155FE15FF6EFC39D17C696D086B8D227F22E180E7CA7E84FD180
          FCEBE6B099CD4C46362A5A41E897E44A7A9F95B5F5BFFC1353E2B9F017C7B8B4
          5B998A69DE2084DAB29385128F990FD7823FE055F2456B784BC4373E12F13E95
          AD59B98EEAC2E63B88DC76656047F2AFADC5D1588A33A4FAA28FE8B283CD727F
          0B7C6B6BF117E1F683E23B370F06A1671CE30738254641F70735D657E3B28B84
          9C5EE8C85A28A2900514514005145140057C17FB6BFF00C9648BFEC1707FE872
          57DE95F05FEDAFFF0025922FFB05C1FF00A1C9498D1F5C7C07FF009235E0DFFB
          05C1FF00A00AEF2B83F80FFF00246BC1BFF60B83FF004015DE53105145140051
          4514005145140051451400514514005359030C1008F7A75152D292D40C8BEF0C
          E99A89266B38998FF16DE7F3AE6753F84FA75DEE7B795EDD8F61CAFE55DDD281
          ED5F338FE1ACA3334FEB3878B6FADACFEF5667652C66228FF0E6D1E397DF0935
          28771B79E29D7B03F2935CE5EF82F59B1DC65B19081C928377F2AFA1707EB48C
          99EA335F9EE33C2BC9ABDDE1E5283F5BAFC7FCCF66967F8A86934A5F81F304F6
          D2C0D8922743E8CB8AAE7AD7D3D75A55A5E2E26B78E41FED2835837BF0E742BD
          07759AA31EE8715F0F8BF097190BBC2E2232F54D7E573D7A5C474DFF00120D7A
          6BFE47CF6DF76A33D6BDA6FF00E0B69F3736D733427D0FCC2B9EBDF829A84793
          6D7714B8E8181526BE3B15E1F67F84BFEE3997F75A7F86E7AD4B3AC1D4FB76F5
          47999C62A17EB5D95EFC2FF10DA6EFF43F3547F146C0E6B06EFC33AADA13E6E9
          D7298EE6338AF96AD92E658576AD87947D533D7A78BC3D5F82A27F34639EB4C7
          A9E48258D8868D948F5522A07AF35C27176944EE5252223D6A17A98F5A85EA91
          B2236EB4C3D69EDD6987AD6868861EF51B5487BD46D5A2290C6E951D48DD2A3A
          B468863F5A8F7B2676B15FA1A7B75A8CF7ADE3271D994926588B57BEB703CABB
          9A3C74DAE462AF43E35D7A15C47ABDE281D84CD58CD9C520E86BD6C3E33114FE
          0A8D7A36672C3D29FC514FE47636DF183C5969B766AAEC076750D9AD5B7FDA03
          C550F0D34337FBF18FE95E6EDD29B5F4F87CF733A5651C44BEF6724F2BC154F8
          A947EE47ADDB7ED29AEC7FEB6CED641FEC820FF3AD18BF69EBA51FBDD1E37FF7
          6523FA57881E94C3D2BDFA5C539BC1695DBF5B3FCD1C92C8B2E9FF00CBA5F8FF
          0099F4243FB505A1C79BA44A9EBB6406AF43FB4DE82C4096C6EE3CF7001C7EB5
          F353531ABD2871966D1DE69FAA4734B8672E97D96BE6CFAA22FDA3BC2D27DF37
          11FF00BD1D68DAFC7AF07DD123FB40C440CFEF108AF911BA544F5DF0E38CCA3F
          1462FE4FFCCC25C278196CE4BE7FF00FB2D3E35F839CE06B318FAA91FD2ADC7F
          16BC272F4D6AD87D5F15F131E94C3D2BAE3C778DFB54E3F8FF00998BE0FC2BDA
          A4BF0FF23EE55F893E187191AED8FE33A8AB3178D74198029ABDA383D089979A
          F835FA52798E070CC3F1AEA8F1E57FB5457DECCDF06517B567F723EFD4F12699
          2FDCD42DDBE920A9D756B37FBB7509FF00818AFCFA373281C4AE3FE0469A6F2E
          01E2793FEFB35D31E3D7D687E3FF0000CDF0527B56FC3FE09FA162FED9BA5C44
          7FE0629E2EE13FF2D93FEFA15F9E11EA57713864BA99587421CD4A3C4BAB27DD
          D4AE87D2535BC78EE3F6A87E3FF0087C153E95BF0FF827E85FDA233FF2D17F31
          4BE629FE35FCEBF3DC78C75D4C6DD5EF07D266FF001A77FC277E2253F2EB77C3
          E93B7F8D6CB8EA8F5A2FEF5FE443E09ABD2B2FB9FF0099FA0DE6A9FE314A187A
          8AFCF9FF008587E274CE35EBF1F4B86FF1A3FE164F8A47FCCC3A87FDFF006FF1
          ABFF005E70FD68CBEF447FA9389E9557DCCFD07DC3D47E746E1EA3F3AFCF53F1
          2FC578FF00918751FF00BFEDFE351FFC2CCF167FD0C5A8FF00E0437F8D57FAF3
          86FF009F52FBD0FF00D48C4FFCFD8FDCCFD0EDC3D69723D457E7DC7F18FC6712
          855D7EEC81C0CC9934BFF0BAFC6A33FF0013FB9FFBEAB55C6F847FF2EE5F811F
          EA4633A548FE27E8171EDF9D1C7B57E7DFFC2EFF001B83FF0021FB9FCE90FC72
          F1C03FF21FB8AAFF005DB09FF3EE5F80FF00D47C6FFCFC8FE3FE47DCFE34F06E
          93F103C3779A16B707DAF4CBB50B341BCA6F19CE091CE2BC73FE183FE07FFD09
          76FF00F7FA4FF1AF9E0FC75F1CE3FE43F71F98A69F8EDE39CFFC8C171F98AE8A
          7C794292B538C92F26BFCCA5C0D8DFF9F91FC7FC8FA247EC21F03D483FF085DB
          F1FF004DA4FF001AF70D0B44D3FC35A3D9E97A65BC767616912C304118C2A228
          C003F0AF80BFE17B78E4FF00CCC173F98A637C75F1C9CFFC543734EA71DD0ADA
          548C9FAB5FE657FA8B8D7FF2F23F8FF91FA23B97D450597D6BF3A9BE39F8E4FF
          00CCC375FF007D542DF1CBC724FF00C8C577FF007DD63FEB9E13FE7DCBF01AE0
          3C6FFCFC8FE27DC9F12FE107847E2EE92BA7F8AB45B6D5628CEE89E6405E33EA
          A7A8FEBDEBE6DD43FE0979F09EE6577B7B8D52DC33EEDBE78200CF41C74ED5E5
          2FF1B7C6E7FE663BCFFBECD44DF1A7C6C47FC8C97DFF007F0D76D1E3E8D05CB4
          A324BD516B80F1BFF3F63F89ECDA57FC130FE0FD8DDA4F709A95EA83930BDC61
          0FE433FAD7BDFC3DF80DF0FF00E15C78F0CF8634FD365C60CEB106948F773CFE
          B5F0C9F8D1E363FF00331DFF00FDFD355EE3E3078D27015BC4BA8019CFCB330A
          AABC79EDD5A6A4FE68D1700E35EF5A3F733EFAF89DF08BC25F18B4AB7D37C5BA
          6A6AB636F2F9A903C8CAA1F18CF0467827F3AF32FF008612F81A3FE64DB5FF00
          BFEFFF00C557C8EFF14FC5EDD7C49A99FF00B796FF001A864F899E2C61CF88B5
          23FF006F2DFE358C38DFD947969C6497A9B2F0FF0013FF003FE3F733EDBF047E
          C99F093E1CF896D75FD07C2F6967AADA92619FCD662848C120138E86BD5F518E
          DB51B1B8B4966C453A18D8C72EC6C1183860720FB8E457E62B7C44F13BFDED7F
          503F5B86FF001AAD278EBC44E3E6D6EF8FD676FF001A99F19FB57CD3836FCD9A
          2F0F6B3DEBAFB9FF0099F685DFEC4BF03AF67927B8F0B5ACD3484B3C925D392C
          7D49DD511FD877E038EBE12B31FF006F2FFF00C557C56DE30D71FEF6AF787EB3
          B7F8D569BC4BAB4AACAFA95D303C10666FF1ADBFD78ACB68CBFF0002FF00806C
          BC3CABD710BFF01FF827DDFE14FD93FE0AF81BC4367ADE91E19D3ADF51B46DF0
          CAF3170ADEB862467D3D3AD7B2FF006E6990A85FB6DB201C01E6A8C7EB5F93C7
          52BCCFFC7D4FFF007F0FF8D4526A1744FF00C7CCDFF7F0D61538BEA56779D36F
          D5DFF4365E1D5F7C4FE1FF0004FD607F16E8D1FDED52D17EB32D737E379FC0BE
          3DF0DDE683E21BED3EFB4ABB5DB35BC970A030CE7B1AFCBD6BDB827FD7CA7FE0
          66976DECBF745C3FD371A95C51513BC696BEBFF00D17877497C589FC17F99F6B
          3FECB1FB3347F7B49D217EB7C7FF008AAAD3FECD3FB2E5B2EE96C3458C74CB5F
          9FFE2ABE43D2FC1FE24D773F60D2B50BCE707CA85DB9AEAAC3F672F88FAC10B1
          786AEC67FE7B613F9D7A70E2ACCAAFC1093F9B319F04E5B41FEFB1BCBEB65FA9
          F72F823C69F0A3E18F876DF41F0FEBFA5D86976F931C02EC385C9C9C1249AD99
          7F682F87B17DEF1569FF0084C0D7C5BA77EC53F112F9809A0B4B31EB34B9FE59
          AEC349FF00827FEB734A8DA8F886DA18F3F308232C71F8E2A966199D57CDEC35
          7DEE7995721E1BA1FC4C7B7E967F9267D2F2FED27F0E21FBDE28B43F46CD5393
          F6A6F8671F5F135BFE0AC7FA5794E95FF04FDF0EC0EADA86BD797401C958D426
          7F9D76DA3FEC57F0D74D2AD369B35F329CE679DBFA62BB2153329FC508AF9B3C
          8AD87E17A5F0D6A93F4497E691B4FF00B59FC304524789237C0CE162727F9543
          6FFB59FC3DBE9961B4BEBBBA95FEEA45652927E9F2D74DA47C01F00685B4DA78
          5F4F565E8EF08661F89AEBACBC3DA669C812D6C2DA051D0246A31FA577C238B7
          F1CA2BD13FF33C5AB57268FF00069D497AC92FC93398D03E2AD9F88AEA186DB4
          AD542CA789A6B278D073D49602BB953B87148A8AA300003D0538018AEC8A925E
          F3B9E15595394AF4E3CABD6E2D7C17FB6BFF00C9648BFEC1707FE87257DE95F0
          5FEDAFFF0025922FFB05C1FF00A1C954CC91F5C7C07FF9235E0DFF00B05C1FFA
          00AEF2B83F80FF00F246BC1BFF0060B83FF4015DE53105145140051451400514
          514005145140051451400514514005145140051451400514514005145140098A
          428ADD541FA8A75152E2A5BA028DCE916577FEBAD6293FDE406B1EEFE1F787EF
          09326990E4F24AFCBFCABA31D69C4579D5B2DC1623F8D4632F58A7FA1BC2BD58
          7C136BD19C05DFC17F0F5CB164864809ED1BFF008D62DEFC00D3E52C6DAFE687
          3D0300C057ACE3DE9A47D2BC1AFC2191D7F8F0D1F92B7E47753CD71B4FE1AAFF
          003FCCF0DBAFD9EEED47EE353493FDF42B59175F01FC41013E5BDBCC3D98835F
          4500282A4F7FD2BC2ADE1D64357E1838FA37FADCF421C438F86F24FD51F2FDDF
          C1BF13DB216FB0893D91C1358B77E00F10DAFDFD26E48FF66327F957D7205295
          03D2BC6ABE17E5B2FE1D5947EE677438A7151F8A09FDE8F8C2EF43D42CC0FB45
          94F0F38F9E322A89B7957AC4E3EAA6BED96B78DFEF448DF551504BA4594FFEB2
          D627FAA0AF1EA7858AFF00BAC4FDF1FF008277C38B5DBDEA5F8FFC03E267565E
          A08FA8A88F7AFB3E6F0668773C4BA5DAB8F78C567CFF000BBC31719DDA45B8CF
          A2E2BCEA9E17E363FC3AF17EA9AFF33B21C5B47ED527F81F1E9E9483A1AFACEE
          3E0BF84EE1369D302FBAB91FD6B3E6F801E17933B619A3FF00764AE6FF00886F
          9AD3F86717F37FE475C78AB04F78C97C97F99F2D374A6D7D3371FB39F87A54C2
          4F7519CF50E0FF004AA137ECD1A59FF57A95CAFF00BD8355FEA2E714FECC5FA3
          4744789B2F96EDAF91F391E94C3D2BE829BF6608587EEB59743FED479FEB54A5
          FD97E703E4D694FD61C7F5A7FEA8E710FF00975F8AFF0033A63C45973FF979F8
          3FF23C1DA98D5EE12FECC3A97F06A90B7D548AACFF00B316B79F9750B53F5CFF
          008566F863368EF41FE06EB3FCB9FF00CBD5F8FF0091E2CDD2A27AF6993F664D
          7151B6DEDB93DBAF359B2FECDBE2A1D1ED1BE921FF000A8970EE6B0DE83378E7
          9974B6AA8F253D2987A57AABFECE5E2D5E915BB7D24A81FF00678F182F4B588F
          D251597F61666B7A12FB99D0B38CBDFF00CBE8FDE796BF4A61E95E9EFF00B3CF
          8CBB58C67FEDAAD47FF0CF1E34C7FC78C7FF007F569AC9332FF9F12FB99A2CDF
          01FF003FA3F7A3CC1BA530F5AF4E9FF679F1AC680AE9A921CF45997FC6AB1FD9
          F7C739FF009047FE464FF1A3FB1B305A3A12FB9FF91AACDB00FF00E5F47EF479
          B546DD6BD2FF00E19F7C75FF00407FFC8C9FE34D5FD9E3C74EE01D20283DCCC9
          C7EB56B28CC3FE7C4BEE7FE469FDAD80FF009FD1FBD7F99E68D519EB5EACDFB3
          778DBFE7C62FFBFAB519FD9B7C6FFF0040F8FF00EFF2D69FD8D98FFCF897DCC3
          FB672FFF009FF1FBD1E547BD32BD58FECD9E383FF30F8C7FDB65A55FD9A3C6E7
          AD9423EB30AAFEC5CC5FFCB897DCCB59CE5CBFE5FC7EF4792B74A8ABD807ECC1
          E357EB6F6EBF5905489FB2AF8CDFA8B55FAC86AD647993FF009712FB83FB732D
          5BD78FDE78C9EB4C3DEBDC17F64BF183759AC47D5CFF00853CFEC89E2E23FE3F
          34F1F576FF000AD964199BFF00970C8FF5832B5BD789E0E7AD34F5AF7FB4FD8F
          7C4B216FB4EA76310EDE5EE6FE95A317EC67A893FBCD7614FF00762CD7443873
          3492FE0BFC3FCC4F89B2A8FF00CBE5F8FF0091F35374A6375AFA96DFF62D39FD
          FF0088491E8B07FF005EADC5FB16D883FBCD7A66FF0076203FAD74C785B347FF
          002EEDF35FE662F8B7298FFCBCBFC9FF0091F25D34F7AFB121FD8C3C3EBFEB75
          6BC7FF007768FE956E2FD8D3C248CA5EFF00507C1C91E62E0FE95D51E12CC9EF
          14BE68C5F19E571D9B7F267C5A7A5447AD7DDB6FFB2678121FBF6D7137FBD31F
          E95AB69FB32FC3EB5040D14484F77918FF005AEC8707E3DFC528AF9BFF00239E
          5C739747E18C9FC97F99F9F8DD2987A57E8C5B7C02F025B636F87ED4E3FBEBBB
          F9D68C7F07FC1908C2F86F4E3F5B753FD2BB61C1B89FB5517E272CB8FB0ABE1A
          327F71F9ACB6D33FDD89DBE8A6ACAF873559B6F97A75D3EEE46226E47E55FA6F
          6FE0AD0AD31E4E9167163FBB0A8FE95A29A75AC4004B68940EC1057743839FDB
          ADF7238E7E207FCFBA1F7BFF00807E62DBFC3AF13DE63C9D0351933FDDB763FD
          2B66DFE02F8F2F7023F0DDD8CFF7D36FF3AFD2758234FBB1A0FA2D3F68F402BB
          61C21417C751BF9238A7E2062BFE5DD18AF56DFF0091F9DD65FB2C7C46BB651F
          D89E4A9FE2926418FD6BA2D33F62EF1ADD9CDDCD696631C65B71CFE15F770FA0
          A53935DD0E16C0C7E2727F3FF8079F538EF349FC1CB1F93FD59F15D8FEC2FADB
          B0FB5EBB6B12F7F2E32DFE15D3DB7EC23A717067F10CE57BAA4401FCEBEADC52
          E2BBE19065F0FF009777F56CF36A71867353FE5F5BD123E71D3BF621F065BA01
          71777D72D9C926403F0E95D2E9DFB23FC38B02ACFA3B5CB8EF2CCC7F4CD7B475
          34A4E2BBA195E0A1B525F71E5D4E20CD6AFC58897C9DBF23CF34FF00803E00D3
          B1E57866C5B1FF003D220FFCEBA6B1F05683A663ECBA459DBE3A6C8147F4ADCC
          FBD1CD76C30F461F0C12F923CCA98DC555FE25593F56D9045630423E48234FF7
          500AB01401D051914B5BD91C8E4E5B898A5A28A620A28A2800A4C52D14005145
          140057C17FB6BFFC9648BFEC1707FE87257DE95F05FEDAFF00F25922FF00B05C
          1FFA1C9498D1F5C7C07FF9235E0DFF00B05C1FFA00AEF2B83F80FF00F246BC1B
          FF0060B83FF4015DE53105145140051451400514514005145140051451400514
          514005145140051451400515E1DF103F6CCF849F0C7C6D73E12F11F89BEC1AED
          B3224B6DF6595F69700AF2AA41C822BDAE09D2E608E68CEE49143A9F50464500
          4D4514500145145001451450014567EA1AC59693E57DB2F20B5F35D634F3A40B
          BD89C0519EA49E00AD0A0028A28A0028AC9F13788EC3C21E1ED4B5BD567FB2E9
          DA7C0F737336D2DB235196381C9C01DABCD3E11FED61F0C7E3978867D13C19E2
          1FED6D4A080DCC90FD9E48F118201396007522803D868A28A0028A28A0028A28
          A0028A82EAEA1B1B7927B89561863059E47380A3D49AC0F0B7C47F0B78DCCE3C
          3FE21D375936EDB25FB15CA4BB0FA1C1E2803A6A2B9FD03C75E1EF156A1A8D8E
          8DAD58EA979A6C9E55EC1693AC8F6EF9236B807E5390783E87D2BA0A0028A28A
          0028A28A0028A28A0028A28A002931515C4E96D04B3487091A9763E800C9AF14
          F87FFB667C24F89DE36B6F097873C4DF6FD76E59D22B6FB2CA9B8A025B965006
          003401EE345145001494B45002628A5AAB7FA8DAE95692DD5E5C476B6D129679
          6560AAA075249A00B38146057CFF00E27FDBC3E08784AF8DA5EF8E6CE5941233
          668F3AFF00DF4808AEC3E1B7ED2FF0D3E2D4C90F863C5DA7EA174EBB96D4C9E5
          CC47AEC6C1FD281D99EA34527514B40828A28A0028A28A0028A2B84F8B9F1A7C
          21F033C3F06B9E33D53FB274D9E716D1CDE53499908240C2827A03401DDD2570
          9F08FE34F843E39787E7D73C19AA7F6B69B0CE6DA49BCA68F12000918600F422
          B86FF86D2F845FF0B0BFE108FF0084A3FE2A5FB77F66FD8BECB2FF00C7C6EDBB
          376DC7DEE339C503B1EEB494B45020A2BC7BE2E7ED61F0C7E06F8860D13C67E2
          1FEC9D4A7805CC70FD9E493319240395047506BD2FC33E23B0F17F87B4DD6F4A
          9FED5A76A1025CDB4DB4AEF8D8654E0F2320F7A00D6A28A2801314B451400515
          C27C5CF8D3E10F819E1F835CF19EA9FD93A6CF38B68E6F29A4CC8412061413D0
          1A3E11FC69F087C73F0FCFAE783354FED6D3609CDB493794D1E24001230C01E8
          45007774514500262968A2800A28A2800A28A2800A28A2800A28A2800A28A280
          0AF82FF6D7FF0092C917FD82E0FF00D0E4AFBD2BE0BFDB5FFE4B245FF60B83FF
          004392931A3EB8F80FFF00246BC1BFF60B83FF004015DE5707F01FFE48D7837F
          EC1707FE802BBCA620A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2803F113F6FDFF0093D7F11FFD7CD9FF00E8B8EBF613C55F11
          B41F851F0D63F13F89EF7FB3B45B3B687CFB8D8CFB770551C2824F2457E3DFED
          FBFF0027AFE23FFAF9B3FF00D171D7E8A7EDFDFF00264FE24FFAF6B3FF00D191
          D42EA5BE875CFF00B6CFC201F0F2E3C6B1F8AE293448AE0DA06313AC92CC0025
          1108DCDC11C818E7AF5AF39F05FF00C14FFE0EF8BBC449A54B3EA5A1AC9208E3
          BCD420021624E072A4E07B9C01DEBE1BFF00827C7ECD5A5FED21E29D562F155C
          5C4FE17D055666D3A390AACB2C9C0E474E179C72703D2AEFFC1473F661F0A7EC
          F1E26F0C5DF83ADE4D3F4CD62290359B485C46F191920939E770FCA8BBDC7657
          B1FB1B67770DFDAC5716F22CD04AA1D244390C0F420D781FC70FDB87E17FC04D
          5A4D235BD564BED6A25DD269FA7A799226464063D013E84E7907A541FB0C788F
          50F147EC8BE0FBC9E4696F12CE5B78D98E4E2366441F9015F914977A458FED21
          A84DF172D2FAFB4E5D567FED782062B3336F6CE09FF6BAFE34DB252BB3F4E3C1
          FF00F054DF83BE28D552CEE8EADA0A390A2E2FEDC79793EBB0922BE93F15FC61
          F09782FE1D3F8EB53D6224F0B2A472FF0068400CA855C80A46DCE412474F5AFC
          E5BEF815FB267C767D297C0DE374F02DD23EDB8B6BB7606707A28F34F0D9C720
          91D463D3ECAD1FF644F0D37ECDF37C23B8F106A9AA7876E5838BC32A1950070F
          B50E301723A1CF53F80AE0D23F30FC57FB4EDEF8DBF6B4D37C4DACF8AAF2F7C1
          5A6F88D2E6D0B16114368B2E559631FEC8F4C9EFCD7EC27C28F8DBE0EF8DBE1B
          B9D7FC1FAB0D4F4AB799ADE59CC4D1857001230C01E84735F879FF000A8B49FF
          0086A6FF00856FE7DCFF0062FF00C249FD91E76E1E7795E6ECDD9C63763BE319
          ED5FAEFE15FD916C7E14FC06F14FC39F01F886F74E6D65A493FB4AFF00123C4C
          EA15B1B76F1B47D4139A1152B1CB7C4EFF0082967C20F86FAEDC6929757DE20B
          9B77314CDA5441E3561D46E6201FA8CD743F053F6F6F855F1BF5B8344D2F529F
          4AD627E21B3D4E3F2DA53E8AC0904FB6726BE70F861FB00FC2AF8436FACDD7C6
          DF1368DAACB2498B40F7E6DD113FBCDC83B89C8C7238F53C7C45F13E1F0B7C3C
          FDA4256F869A99BEF0F596A50CBA7DD0627072A4807A90AD900F7C7E34AED059
          3D8FDB1FDA63FE4DEFE227FD80EEFF00F459AFCD0FF8246FFC9C2EB9FF006039
          3FF46257E91FED032B4FFB32F8E2473967F0E4EC4FB984D7E6E7FC1237FE4E17
          5CFF00B01C9FFA3129BDC4B667E9A7C68F8F9E0CF809A0A6ADE30D5934F8E525
          608146E96661D954727EBD0679AF9C2C7FE0AC1F082EB52FB34B65AEDB43BB6F
          DAA4B74298F5E1B38FC2ABFED87FB12EBDFB427C4ED37C4F75E34B3D3FC3D6CB
          1C2D61740A79108399194E7058F27903B0278CD780FED91F03FF0066EF879F08
          EE3FE109D62CD3C7166F1AC705A5F9B87B83901C48B92178CB76E47E1436C124
          7E98FC38F897E1BF8AFE17B5F10F85B538B56D2E7FBB3447907BAB03C823D0F3
          527C40F88BE1EF861E1AB8D77C4DAAC1A469900F9A69DB193D801D493E839AF8
          1BFE08EFAEDDDCE87F1034A790B59DB4B6F34684F019C3063FF8E8AF29FF0082
          A67C51D43C5DF1CAC3C090DD3A697A445186B756F94CF2609623FDD2A07A73EB
          45F4B8B975B1F525E7FC156FE0F5B6AE6CD2DF5BB88036DFB6476EBE5FD705B3
          FA57D27F08BE38F83BE397877FB63C1FAC45A9DB29DB2C606D9226F4753C8FEB
          DABE5FF09FFC1313E17CDF07AD6CB51B4B897C5773641DB59F3D818E665CFCA9
          9DBB41EC474EFDEA4FD8CFF619F17FECD3E3A9F5EBEF185B5C59DD40D6F73A5D
          AC6CC928CE54EE38C107BE3D4719A35076E87BDFED59A3E9DE22F819E25D2F55
          F16C7E09B1BA89525D625E4469B86571919DC3E5C679DDDFA57E66EA1E33FD9C
          BC13A7D8E9BE0DF10F8CF47F135BC4219FC57A2E638EE5CF0CED1B38214F5C0C
          7E35D4FF00C1547E30EA3E29F8B961F0EACEE5E3D334948DE5815B87B8907048
          F65231F53EB5F42FC22FF82637C325F853A7A78AEC6E6FFC4F7B68B2CF7AB70C
          9F6791973B500E3033DC1CFE949EACA5A2D4EB3FE09EFE17F873E1EF046AF7BE
          0DF181F186B1AA4E26D52F2E17CAB8DC33B43464E40E4F273924F35F58DE5E41
          616B2DCDCCA90411296791CE1540EA49AFC47F08DF6B7FB14FED8DFD9105FB7D
          92CB515B4B8C9C2DC59C8411B874C9520FB103D2BEDDFF0082A4FC64BDF06FC1
          2D2742D26E9AD27F134B899E36C335BAA82CA3EA4A83ED91DE9A7A09AD4EA7E2
          2FFC14DFE0EF8135A974C82E6FFC43244C5249B4B895A20475C3310187B8C8AF
          51F817FB5BFC39FDA08341E18D647F69A2EE7D36EC797381EA01FBC3DC66BF3E
          7F630F809F003C43F0DC788BE2A789B4A9759BD91C47A65DEA62DCDBA0380594
          306DC4E4F3C631F5AF1EF8CFA7E81FB32FED25A6EA9F0A3C5506ADA4C32457F6
          B3DA5C8984396C342ECA791C1E0F55201CE7255D8F956C7EDF6BBAE69FE1AD26
          EF54D52EE2B1D3ED636966B89DC2A46A064924F418AF91FC59FF000550F83BE1
          BD464B4B41ABEB8A8C54DC58DB809C7FBE41FD2B3FFE0A21E22D6BC5DFB1B69D
          AD685E67D875092D6E6FFCBCFF00A865C8CE3B6F295F0AFEC95A8FECED1E9D7F
          69F1934EBD9753926FF46BC5693C848F0382233BB7673EBDA9B624B4B9FA85F0
          3BF6DDF85FF1EF518F4AD0F557B1D6A404A69DA827972BE064EDECC7AF00E783
          5F40F5AFCE0F82FF00B14FC16F14FC488FC51E02F8AB2CD1DADD25ED9E9D6132
          0B8B600820127248CF723D8E7A9FD1C8D3CB8D54924A80327BD344BB7424AF35
          F8D7FB407833E00E80BAB78BB545B28E52560B741BA699876551C9FAF41919EB
          5E935F895FB5DF88F55FDA03F6C9BDF0DFDB5DA05D4E3D12CA26394870C10E07
          FBC493F5A1BB0D2B9F7F781FFE0A39F08FE2ADE5DE851DDDEE877B711C91DB1D
          52208933153801812067B671F9D7E7E7FC13FD83FEDADE1A6539537178411DFF
          0077257DB1E38FF8263FC32B5F83B796DA3DADD41E2DB4B26963D58CEC5A5955
          73864CEDC13C702BE1FF00F827740D6DFB637846173978DEE909F71138A977BE
          A52B59D8FDB0D7FC43A6F85B48B9D5356BD874FD3ED90C935CDC3844451D4927
          A57C93E27FF82A7FC1CF0FEB6F616FFDADABC4AFB0DE59DB8F2BAF5F98838FC2
          BC77FE0AE3F17F50B08FC33F0FEC6EDEDED6E50DFDF468D8328CE2307DB218E3
          D71E958DFB37FECDDFB33DCFC20D2EF7C7DE2CD1EF3C51A95BF9D32CBAB084D9
          961C2050C3040C677679CFD29DFB09256BB3EF5F82DFB45F813E3EE96F79E11D
          663BC92200CD68FF0024F0E7FBC879C7BF4AF4FAFC39F047886DBF65CFDB16D5
          3C1BE238F5AF0E43A8C76FF6CB7983C7736B2919562BC3100FD372E71C62BF70
          2DE759EDE2917EEC8A187E2334D3B89AB126768E7A57E45FEDF1FB4BF897E357
          C607F859E11B89C6896776B63F67B5621AF6EB760EEC7501B803D467D31FAD1A
          CC8D16937B22FDE581D87D429AFC51FD8B235F17FEDC3A14DAA2895E5D42EAE5
          B77F7C2BB03CFB8A4C71EE7D45F0BBFE091DE1F97C356D71E3AF126A0FAC4D18
          7920D2CAA47113FC3B981DDF5E2BC33F6B3FD84759FD96ECEDFC71E0DD6EEAFF
          0042B69937CD9297366F9F95895EA338E78C123EB5FB183A57937ED5FA5DAEAF
          FB38FC4286ED03C4BA3DC4A037F7950B2FEA050D2052773C9FFE09EBFB4EDDFC
          7EF85F3D96BD379DE26D04AC17331EB3C647C921F7E083F4CF7AF41F1FFED9BF
          093E18F8DAE7C25E23F137D835DB664496DBECB2BED2E015E5548390457C01FF
          000488D52E22F8DDE24B0563F659B47695C7AB2C8807F335E69FB7F7FC9EBF88
          FF00EBE6CFFF0045C745F41F2EB63F6CFED917D8BED7BBF71E5F9BBBFD9C673F
          9578B7C3FF00DB33E127C4EF1B5B784BC39E26FB7EBB72CE915B7D9654DC5012
          DCB2803001AF53FF00991FFEE1DFFB4ABF18BF602FF93D7F0E7FD7CDE7FE8B92
          9B64A573F67FC5FE2FD23C09E1EBDD735DBF874CD2ECD0C935CCEDB5547F8FB7
          7AF9275AFF0082ADFC1ED2B557B4B7B6D6F52855B1F6BB7B75119E7AFCCC0FE9
          5E8DFB687ECEBE20FDA3FE1FD9E83A3F8961D0208263717114EA765C103E50CC
          0F0073EBDBD2BE6B9BF640FD9C3E14FC23934DF881E25D34F8D16D1CCDA843A8
          9F3126C7FCB38C1F9803C0CAF3DC76A4EE0ADD4FB1BE067ED39E01FDA1AC6797
          C23AB0B8B9B700CF633AEC9A207B953D47B8C8AF9D7FE0AE5FF26F7A1FFD8723
          FF00D16F5F187FC137B5A9F46FDAE741B2B298FD92F56E6DE4E7EFC611987EAA
          0D7D9DFF000572FF00937CD0FF00EC391FFE8B7A2F743B5A41FF00048DFF0093
          7CD73FEC3727FE8B4AE1BFE15F7ECC1FF0D4FF00DA3FF09E6B5FF09F7FC249E7
          7F66F967C9FB6F9B9F2F3E5FDDDFC75E9DFBD773FF00048DFF00937CD73FEC37
          27FE8B4AF873FE7213FF0073CFFEDCD2E887D59FB75AA6AB67A1E9F717D7D731
          D9D9DBA19259E660A88A064924F40057C97AFF00FC151BE0D68BE253A54736A7
          A840B2796DA85B5B8F247BF24311F415C87FC1597E26DFF857E14E83E19B0BA7
          B5FEDCBA66B8F2DB0648A300953ED92A7F015E69FB04FEC25E06F8A7F0997C6B
          E3AB397576D4E474B3B612B46912292A5B2A4124907DB8A6DEB644A4AD7678CF
          FC14C3E22F87BE297C5BF0B7887C31A945AA69375A0C6639E23FF4D64C820F20
          8EE0F22BF54BF66C9162FD9DFE1E3BB0545D0AD4963D00F2857E367EDAFF0000
          AD3F677F8D375E1DD2E5964D1AE215BCB2131CB246C48DB9EF8208CFA015FAC5
          E08F086A7E3EFD8CFC35E1ED1F563A1DFEA3E19B6B74BFF2F77941A201B8C8ED
          919CF19CD0B729EC8E37E277FC14B3E107C37D76E3494BABEF105CDBB98A66D2
          A20F1AB0EA373100FD466BA1F829FB7B7C2AF8DFADC1A2697A94FA56B13F10D9
          EA71F96D29F45604827DB3935F387C30FD807E157C21B7D66EBE36F89B46D565
          924C5A07BF36E889FDE6E41DC4E46391C7A9E3E22F89F0F85BE1E7ED212B7C34
          D4CDF787ACB52865D3EE831383952403D4856C807BE3F1A57682C9EC7EFE1214
          649E3D6BE65F8D3FF0505F853F053C472E857D7B75ACEAB6EDB2E20D2A312792
          DE8CC4819F500F1DEBB0FDA73E23DD7C36FD99BC4DE24B598C17F1E98A90CCA7
          05249005561EE0B66BF313F603FD9974AFDA7BE216BBA878C249AF347D29565B
          8815C86B896427019BA81C1271CD36FA1297567B67EDF7FB4C7813F688FD99B4
          9BAF08EA7E7CF6FAE45F68B19D764F0E6293195EE3DC6457AB7FC1237FE4DEF5
          CFFB0E49FF00A2D2BE71FF00828AFEC77E15F80BA3E89E28F04C1369DA55E4FF
          0063B9B0791A4459319565279E403907D057D13FF0497985B7ECE3E2199BEEC7
          AD4CE7E822434BA94FE1D0FA67E35FED1DE04F801A525E78BB588ECE4973E459
          C7F3CF2E3FBA839C7BF4AF09F0A7FC1537E0E788B5A4B0B8FED6D1A377D82EEF
          6DC795F5F949207E15F9F1E31F11DB7ED47FB5F5CFFC25FE238F48F0EDCEA4F0
          7DB2E26091DB5A464E154B7CA09038EC58E7BD7D1BFB45FECD9FB32DBFC1FD52
          EFC07E2ED1ECBC51A65B99E1F2B57599AF0A8C942858E4B738DB8E71F4A2EC39
          52DCFD2ED03C41A6F8A348B6D5349BD8750D3EE50490DCDBB874753D0823AD69
          1E95F9B9FF00048DF8BBA8EA567E26F00DF5CB5C5A59AADF58A3B126204E2451
          E833838F524F7AFD24AA4EE43566145145310514514005145140051451400514
          5140057C17FB6BFF00C9648BFEC1707FE87257DE95F05FEDAFFF0025922FFB05
          C1FF00A1C9498D1F5C7C07FF009235E0DFFB05C1FF00A00AEF2B83F80FFF0024
          6BC1BFF60B83FF004015DE531051451400514514005145140051451400514514
          00514514005145140051451401F889FB7EFF00C9EBF88FFEBE6CFF00F45C75FA
          29FB7F7FC993F893FEBDACFF00F46475E23FB4F7FC13CFC7FF001A3F687D5BC7
          3A36ABA2DBE95772DBBA45772BACA022A8390148EAA6BEABFDA7FE0D6B1F19FF
          0067AD5BC0BA3DC5B5BEAB7715BA472DDB158814652724027A29A9B6E5B7B1F1
          CFFC11BFFE6A57D2CFFF006A51FF000590E3FE15AFFDBE7FED3AF70FD81BF647
          F167ECB83C5DFF00093DF69B7BFDAFE4791FD9EECDB766ECEEDC07F787EB47ED
          F3FB23F8B3F6A31E11FF008462FB4DB2FEC8F3FCFF00ED0765DDBF6E36ED07FB
          A7F4A2DA05FDEB9B3FB006AF6DA07EC5BE17D4AF1992D2D61BA9E56452C422CA
          E490072781D0578C78C3C51FB2A7ED81F128E89751CDA6F892E9182EBD1AFD90
          48EBC0524F0CF8E9B81E1719E80FD55FB2AFC1ED4FE09FC06D07C11AF4B6B777
          F6426599ED18B44C1E466182403D0FA57CB1F1F7FE095963E2CF135EF883E1EE
          BB1F87A5B990CAFA65CA1F251C9C9F2D97951FECE0FB606051D015AE782FED6F
          FB07785BE017816E3C5BA078FE2BC11CAA9169774CBE7CB938F9194F2475231D
          013DABE88FF824BFC4AF11F8B7C07E28D0757B9B8BDD37469A2FB14D3B16D81C
          1DD1827B0DA0E3B66BC7F42FF824AFC46D56F923F12F8CF4D82C430CB5BBC970
          C077C2B01FCEBF43FE017C07F0DFECEDE02B6F0CF87622501F32E6EA5FF59712
          91CBB7E5D3B01425A837A58FC81B9B88ACBFE0A04F35C48B0C31F8DF73C921DA
          AA3ED3D493D057E937EDFBF1EB53F843FB3F5CEA5E14BC54D4752BB5D392F6DD
          8318372966607B1C291ED9CD787FED45FF0004CAD77E26FC51D4BC5FE09D7AC6
          D06A92F9F716BA8164F2E43F78AB2839C9E7A57AF7C36FD87DADFF00661D47E1
          578EB574D564BAB96BA86F6D8126D9F036952DD7047B641C7BD1A8DB4EC7C6DF
          B167ECD9E10FDA7F4DD7FC4FF123C6B7735E59DCED6D38DE05919719F3642D92
          54F20631F74F35E05FB40E87E0CF0CFED11A8E95E007597C2F67790436EEB219
          0330DA1C863D7E6DDCF4F4E2BEA2FF008748FC40B2F10986CBC67A647A233E1A
          E43489315FF700C67DB75757F143FE093F7B1E9FE191F0FB59B46D42D54B6A77
          7ABC8C8679320AB2850401D463E9C9EB5361DD5F73ED5F8F7FF26BFE35FF00B1
          6A7FFD115F9BDFF048EFF9384D73FEC0727FE8C4AFD24D5BC03E27F14FECE77D
          E0DD565B15F13DE686FA6C9346EC6DCCC63D81B38CED3D7A71EF5F347EC31FB0
          CF8DBF668F8A9A9788FC49A9693796573A6BD9A25848ECE1CBAB024151C614D5
          75253D19F277ED67F1BBC47F1B3F69FBDF06EA7E249FC3DE14B4D5C692A86429
          0408AFB1A67008CF396C9EDC718AF49FDAABF64EF82BF003E015E6A561AD4BAC
          78CAF044BA7CB71781D9C9605D95171C6DDDC9E991DF15ECBFB5B7FC13647C66
          F1B5DF8C7C17ABDBE8FAB5E90D776776A4432498FBE1872A4F7E0FAD717F0A7F
          E093F73109EE7E23F8997527585D2DEC2C247318720856676C1C03838007D7D5
          5877455FF8237FFCD4AFFB73FF00DA95E25FF052EF0ADCF84BF6B0B8D6A78DBE
          CBAA456D791B91C10802903FEF8AFAFF00F61FFD8FFE237ECBFE3CD6EE356D43
          45BDF0E6AB0EC923B495CCAACA728C01500F0483F5F6AF6EFDA8FF00657F0D7E
          D3BE138F4ED599AC356B4DCD63A9C2A0BC2C47208FE253C6471D3A8A76D057B4
          AE69785FF685F06DCFC0DB3F1DFF006DD90D321D356697F7EBB95D5398C8CE77
          64631D73C5794FECCFFF000500D17F68EF1CAF856D3C2DA869DA8794F334C1C4
          B046ABDD9B838E83A7522BF303E317ECFBADFC11F1C3787F5DBDD421F0D7DA0C
          035A36B225B48475DA0F0D8F6AFD50FD857F670F02FC21F8770788FC31A98F12
          DE6BD0AC926B4C9B77276445EA801EA0F39EBD000936C1A491F04FFC14CBC217
          7E0EFDA9E5D7E6864FB26AD15BDDC5211F2B6C014A83EBF2F4F7F7AFD41F83FF
          001E7C1DF103E13E93E28B7D72CA2B55B346BA59275536CE146E47C9E0823FC8
          AADFB497ECCDE15FDA5FC209A4788226B7BCB625ECB52800F36D9CF5C7AA9C0C
          AF7C0E84023E01D5BFE092BF11ECB557B6D1FC63A5CDA3B37FAC9A492272BEE8
          011FAD3D5068D6A78CFC5FD523FDA83F6DBBA7F0DA3DCDAEA9AB436D04910CEE
          8E3DA8641ED852DCF6AFABFF00E0ADFE04BC9FE1BF80B5C8A3792DF4995ECE66
          5190BBD1704FFDF15EE3FB257EC29E1BFD9A99F59BAB91E21F164ABB0DFBC7B5
          2053D5635E719EE7A9F6048AF7DF88FF000F743F8A9E0FD4BC33E22B35BDD26F
          A3F2E58DBA8EE181EC41C107B114581BD743F2CBF639FD917E0B7ED13F0E92EF
          5AF156A561E2DB6764BDB08AEA28C019F95955973B48C73EB9AED75FFD8F7F65
          0F0BF8BE5F0D6A7F14352B5D5A20A5E26BC8F6A13D01709807DB391C7AD56F1C
          FF00C124FC59A76B134BE05F18DA3583B92897ECF0C88BD81280EE23E83F0AEC
          FE05FF00C129A2D03C4D69AE7C47D7E2D6CDB3ACA34DB304C7230E70EEDC95F6
          C0CFAD2F90EFE67D2DF11FE27FC2EFD9C7E0BF87346F155C3EA5E149EC534FB3
          1241F695BB895001B881B4E571D700E78AF96FC39FB25FECE1FB5768773E23F0
          1EAD77E129FCD7492C0CEA3CB6CFDE68D89201EA307183F80FB77E32FC09F0BF
          C70F87B37843C41699D3C806DE4870B25B3A8C2BA1C7047F2247426BF3CBC53F
          F0493F1E695A94A3C23E34B09EC59BE5376D25BB81E842E734D8958F9A7E38FC
          39B9FD933E355BE9BE14F1A2EB1776823BA8EFB4E7D8F1393FEADC29386F6CF4
          23D6BF6E7E107886FBC5BF0B3C27AD6A7198B50BFD320B89D08C6D764048C7D6
          BE17F81DFF0004A5FEC1F15596B9F117C430EB51DB3894E9B6618A4AC391BDDB
          92B9ED8E7D457E89DADAC5656D1C10A08E28D422228C000741424127727AFC3D
          F8E36CFF0004BF6ECBED53548DD6DED7C451EAC491F7A36904991EBC1AFDC2AF
          987F6BFF00D89342FDA76D20D420BA1A278AED13CB8AFC26E5953AEC907719E8
          7B64F5E94DAB8A2EC7A27C42F8FF00E0CF0F7C18D47C6675EB19F4C92C1A4B76
          8E656333327CA8A33C924E315F933FF04F5B8179FB66785271C0965BB71F8C4E
          6BDC7C17FF000495F1A5C6B7143E2BF195943A04720252C1DE591D41E4056002
          923BF38F435E91FB3EFF00C13C3C55F04FF69DB4F1BC3A86947C236371706DED
          92676B910BA32C60E57191919E7D7AD4EACAD126795FFC15F3C1B776FF0011FC
          27E27F2DCD95D69E6CBCC03E50E8C5B1F5F9EB47F66FFD873E03FC74F85DA4F8
          83FE130D563D58C0A352B45BB890C1301F30DA572173C8CF6C57E81FC73F81DE
          1AF8FDE04BAF0C7896DCBDBCA77C3709C496F20070E87B1193F8123BD7E76788
          BFE0929F1074BD4A44F0BF8CB4E9B4F66386B979207C76C85041A1AD413D2C6D
          E97FB26FEC9E9E363A243F14B501AC59DCAC6626BC8C2990107687D983CF1C1E
          BC57E9B594096D6704319CC71C6A8A7D401815F0DFECC9FF0004C9D2BE1578AA
          CFC55E35D5D7C47AB59C825B6B4893104720E8EC4F2C41E474FC6BEEB0028000
          C01C0154896C64F0ACF0C9137DD752A7E8462BF10FE205AEABFB1F7EDA126AD3
          5AB8B5B2D54DF403A09AD64624ED3EBB491F507D2BF706BC57F690FD957C1BFB
          4B684969E20B76B6D4ADC1FB26A96D813424F6CF753DC1FC3079A1AB827638FF
          008B3FB4ECFE20FD9EAEFC5DF072E6DBC43AE32A3C7046EAD25B8C82FBA22724
          8191B719C91C1AF897E2D7FC14BB54F897F00757F05EA3A07F6778B6F88B5BAB
          B81B1018BF8C80790C718DBC8E49CF6AD9F10FFC1257E22E977AD1F867C69A6D
          CD8927E6B9792DDB1DBE55DC3F5A57FF008243F8BA3F0A5F5E4DE2EB19BC4091
          EE82C628D8C523FA190F23F2A9D4A5CA8F44FF0082497C1ABED17C3DE20F881A
          840D0C3A9E2CEC0B0C1745277B0F6CE07D54D7CBBFF050A8DF4EFDB37C45713A
          9489A5B49558F7511A64FE86BEA4FF00827527C6DF08F8FB57F0078AE2B9B3F0
          9E85012F6D7D167CB72708227EEA704F048C0E3AD7AD7ED97FB08587ED337F6B
          E21D2B535D17C516D0F905E44DD15CA0C901B1D0824FCDCFA63A60B6817B48F5
          BD6FE39F83345F816DE2D975FB1FECB3A57991BF9EA4C84C780A0672589E31D7
          3C57E4FF00FC13DEE16EFF006CEF0B4EBF7649AEDC7D0C4E6BDD7C01FF000495
          F175C6A50C7E33F195AC1A346E0BC1A6BBCACEBE83700149F5C1FA57A27ECFFF
          00F04F1F14FC14FDA76D3C6F16A1A59F0858DCDC1B6B5499DAE442E8CB18395C
          123233CFAF5A7AB0D126737FF0556FDA13C53E13D7B44F00683A85C693637167
          F6EBC96D9CA34F962AA9B87381B4F1DF3ED593F073F639F82B2FC06B3F891E3A
          F16C9AD4D3589BB9D4DE848A27DA4F9580771607E523392470057D53FB637EC6
          BA67ED49A358CD1DF0D23C4BA7065B6BC29B91D0F5471E99E87B73D6BE4AF017
          FC1257C60DAE243E2DF18DA41E1F4705A2D35DDE49173D30C00527D79FA52B6A
          09AB1E15FF0004F3F287ED93E13F23FD479975E5FF00BBE53E3F4AFB73FE0AE5
          FF0026F7A1FF00D8723FFD16F5C8F86BFE09D7E31F847FB4869DE36F006A1A3C
          5E18D3EE92486D2F6793CF311502452769E4E5B0727B7D2BE81FDB97F675F10F
          ED2DF0AB4CF0DF876EAC6CEFEDB514BC77BE7654DA119480403CE58534B406D5
          D33CB3FE091BFF0026F7AE7FD8724FFD1695F0E7FCE427FEE79FFDB9AFD37FD8
          63F675F107ECD3F0B352F0DF892EECAF2F6E7527BC47B0766408515402481CE5
          4D7CE5FF000EEBF883FF000D4DFF000B23FB5744FEC5FF008493FB63C9F35FCE
          F2BCDDFB71B71BB1DB38CF7A2DA026AECBFF00F057FF0006DDEA3E07F06788E2
          467B6D3AEA5B694A8E17CC00827FEF8AEF3FE0995F17BC3BABFECEF61E186D4A
          DADB56D0E59566B69640AE519CB8700F51CE33ED5F52FC4EF86BA1FC5DF056A5
          E17F115A8BBD2EFA3D8EBFC4A7B329EC41C107DABF367C51FF000491F1B69FE2
          397FE114F1858368D239C3DD33C332A13D085041207B8CFB51D6E24D3566791F
          FC14AFE2968DF13BF68876D0EEA3BEB4D22C934F6B885B723B86666C1EF82D8F
          C2BEC6F8E1F1AF5BF825FF0004FF00F016A1E1E9A4B5D5753D36CB4F8EED3EF4
          01A1CB30F4385201ED9CD792F8EBFE0923AE2786B4283C2FE22B1BCD715A57D5
          2F35167891F3B762C6A03703E6C93C9CFE03ECED63F668D3FC7FFB3368DF0BBC
          5522996D34C82D4DDDA8CF953C6A0091091D323BF514598DB5A1F9E9FB167ECD
          9E10FDA7F4DD7FC4FF00123C6B7735E59DCED6D38DE05919719F3642D9254F20
          631F74F35E05FB40E87E0CF0CFED11A8E95E007597C2F67790436EEB2190330D
          A1C863D7E6DDCF4F4E2BEA2FF8748FC40B2F10986CBC67A647A233E1AE434893
          15FF00700C67DB75757F143FE093F7B1E9FE191F0FB59B46D42D54B6A777ABC8
          C8679320AB2850401D463E9C9EB5361DD5F73EAAFDB0FC1D73E38FD90FC51A6D
          9AB3CEBA6457215392445B5C81F82D7C43FF00049BF8A7A2782FC73E2BF0D6B1
          7B0E9F71ACC5135B35C3840EF196CA027B9DDD3DABF4DFC01A2EAF6DF0F348D2
          BC542D67D5A1B34B6BD36C4BC32305DA48C80707AE08AF833E3D7FC129EE75CF
          175DEB7F0D35DB5D260BA90CA74DBD2C8B031393B1D7271E831C7AD53EE4A6AD
          6649FF00056AF8B7A05EF827C39E08B1BF82F75537A2FE68EDDC3985154A8DD8
          E99DDC7D2BAFFF00824FDB9BBFD9ABC4F00EB2EAF3A0FC61415E5F65FF000497
          D70F807589752F13DAEA3E3499116C559DC5B407702ECCF82CD95C8031DFF2FA
          B7F618FD9D7C41FB34FC2CD4BC37E23BCB2BCBEB9D49EF11EC1D990214550092
          07395346B7076B58FC95D1FE1BF8734CFDA62E3C1DF116EEEB47D053549AD2EE
          EA121248FE6215B24101738C9C74CD7DC5E2AFF82797ECE7E0AF09CBE25D5FC7
          FAA5B68C8824FB48BD858303D368084B13D80E4D7AEFED6DFF0004FED03F68BD
          5BFE124D26F47873C56542CD388F7457400C0DE3B30181B876E39E31F2CD87FC
          1263E275DDF8B6D4FC63A547A506C078E59646C67FB8401D3DE95AC55EFD4FA5
          BF62BF81DF03BC11E30D47C45F0B7C6B75E25D464B236F3DB4F708DB236653B8
          A85047200CFBD7D995E1FF00B307ECADE18FD98BC2F35868ECF7DAA5E61AF753
          9800F311D001D9464E07BF7AF70AA466F70A28A298828A28A0028A28A0028A28
          A0028A28A002BE0BFDB5FF00E4B245FF0060B83FF4392BEF4AF82FF6D7FF0092
          C917FD82E0FF00D0E4A4C68FAE3E040CFC1BF06FFD82E0FF00D005777815F34F
          C27FDA8FE1EF867E1BF86F49D4353B88AFACAC228668D6CE460195403C85C1E6
          BADFF86C0F863FF417BAFF00C019BFF89A2E82CCF69C0A302BC5BFE1B03E18FF
          00D05EEBFF000066FF00E268FF0086C0F863FF00417BAFFC019BFF0089A2E82C
          CF69C0A302BC5BFE1B03E18FFD05EEBFF0066FFE268FF86C0F863FF417BAFF00
          C019BFF89A2E82CCF69C0A302BC5BFE1B03E18FF00D05EEBFF000066FF00E268
          FF0086C0F863FF00417BAFFC019BFF0089A2E82CCF69C0A302BC5BFE1B03E18F
          FD05EEBFF0066FFE268FF86C0F863FF417BAFF00C019BFF89A2E82CCF69C0A30
          2BC5BFE1B03E18FF00D05EEBFF000066FF00E268FF0086C0F863FF00417BAFFC
          019BFF0089A2E82CCF69C0A302BC5BFE1B03E18FFD05EEBFF0066FFE268FF86C
          0F863FF417BAFF00C019BFF89A2E82CCF69C0A302BC5BFE1B03E18FF00D05EEB
          FF000066FF00E268FF0086C0F863FF00417BAFFC019BFF0089A2E82CCF69C0A3
          02BC5BFE1B03E18FFD05EEBFF0066FFE268FF86C0F863FF417BAFF00C019BFF8
          9A2E82CCF69C0A315E2DFF000D81F0C7FE82F75FF80337FF001347FC3607C31F
          FA0BDD7FE00CDFFC4D1741667B4E051815E2DFF0D81F0C7FE82F75FF0080337F
          F1347FC3607C31FF00A0BDD7FE00CDFF00C4D1741667B4E051815E2DFF000D81
          F0C7FE82F75FF80337FF001347FC3607C31FFA0BDD7FE00CDFFC4D1741667B4E
          051815E2DFF0D81F0C7FE82F75FF0080337FF1347FC3607C31FF00A0BDD7FE00
          CDFF00C4D1741667B4E051815E2DFF000D81F0C7FE82F75FF80337FF001347FC
          3607C31FFA0BDD7FE00CDFFC4D1741667B4E28C578B7FC3607C31FFA0BDD7FE0
          0CDFFC4D1FF0D81F0C7FE82F75FF0080337FF1345D0599ED381460578B7FC360
          7C31FF00A0BDD7FE00CDFF00C4D1FF000D81F0C7FE82F75FF80337FF001345D0
          599ED381460578B7FC3607C31FFA0BDD7FE00CDFFC4D1FF0D81F0C7FE82F75FF
          0080337FF1345D0599ED381591E294D59BC39A90D01ADD75B36EFF00623779F2
          44D8F937E39DB9C671DABCB7FE1B03E18FFD05EEBFF0066FFE268FF86C0F863F
          F417BAFF00C019BFF89A2E82CCF01F8DBFB30FC7CFDA7EC34AD07C79AE784746
          D02D2E05CB1D1A395E467C11921FAE013DC75FCBEACF829F0A34EF825F0D345F
          06E952C9359E9B114134C72CEC496663F5249C76AE43FE1B03E197FD05EEBFF0
          065FFE2697FE1B03E18FFD05EEBFF0066FFE268D06EECF69C0A302BC5BFE1B03
          E18FFD05EEBFF0066FFE268FF86C0F863FF417BAFF00C019BFF89A2E85667B4E
          051815E2DFF0D81F0C7FE82F75FF0080337FF1347FC3607C31FF00A0BDD7FE00
          CDFF00C4D1741667B4E28C578B7FC3607C31FF00A0BDD7FE00CDFF00C4D1FF00
          0D81F0C7FE82F75FF80337FF001345D0599ED381460578B7FC3607C31FFA0BDD
          7FE00CDFFC4D1FF0D81F0C7FE82F75FF0080337FF1345D0599ED381460578B7F
          C3607C31FF00A0BDD7FE00CDFF00C4D1FF000D81F0C7FE82F75FF80337FF0013
          45D0599ED381460578B7FC3607C31FFA0BDD7FE00CDFFC4D1FF0D81F0C7FE82F
          75FF0080337FF1345D0599ED381460578B7FC3607C31FF00A0BDD7FE00CDFF00
          C4D1FF000D81F0C7FE82F75FF80337FF001345D0599ED381460578B7FC3607C3
          1FFA0BDD7FE00CDFFC4D1FF0D81F0C7FE82F75FF0080337FF1345D0599ED3814
          60578B7FC3607C31FF00A0BDD7FE00CDFF00C4D1FF000D81F0C7FE82F75FF803
          37FF001345D0599ED381460578B7FC3607C31FFA0BDD7FE00CDFFC4D1FF0D81F
          0C7FE82F75FF0080337FF1345D0599ED381460578B7FC3607C31FF00A0BDD7FE
          00CDFF00C4D1FF000D81F0C7FE82F75FF80337FF001345D0599ECE224572C154
          31EA40E4D3B02BC5BFE1B03E18FF00D05EEBFF000066FF00E268FF0086C0F863
          FF00417BAFFC019BFF0089A2E82CCF69C0A302BC5BFE1B03E18FFD05EEBFF006
          6FFE268FF86C0F863FF417BAFF00C019BFF89A2E82CCF69C51815E2DFF000D81
          F0C7FE82F75FF80337FF001347FC3607C31FFA0BDD7FE00CDFFC4D1741667B4E
          0518AF16FF0086C0F863FF00417BAFFC019BFF0089A3FE1B03E18FFD05EEBFF0
          066FFE268BA0B33DA71460578B7FC3607C31FF00A0BDD7FE00CDFF00C4D1FF00
          0D81F0C7FE82F75FF80337FF001345D0599ED38A302BC5BFE1B03E18FF00D05E
          EBFF000066FF00E268FF0086C0F863FF00417BAFFC019BFF0089A2E82CCF69C0
          A315E2DFF0D81F0C7FE82F75FF0080337FF1347FC3607C31FF00A0BDD7FE00CD
          FF00C4D1741667B4E28C578B7FC3607C31FF00A0BDD7FE00CDFF00C4D1FF000D
          81F0C7FE82F75FF80337FF001345D0599ED381462BC5BFE1B03E18FF00D05EEB
          FF000066FF00E268FF0086C0F863FF00417BAFFC019BFF0089A2E82CCF69C0A3
          02BC5BFE1B03E18FFD05EEBFF0066FFE268FF86C0F863FF417BAFF00C019BFF8
          9A2E82CCF69C0A302BC5BFE1B03E18FF00D05EEBFF000066FF00E268FF0086C0
          F863FF00417BAFFC019BFF0089A2E82CCF69C0A302BC5BFE1B03E18FFD05EEBF
          F0066FFE268FF86C0F863FF417BAFF00C019BFF89A2E82CCF69C0A302BC5BFE1
          B03E18FF00D05EEBFF000066FF00E268FF0086C0F863FF00417BAFFC019BFF00
          89A2E82CCF69C0A302BC5BFE1B03E18FFD05EEBFF0066FFE268FF86C0F863FF4
          17BAFF00C019BFF89A2E82CCF69C0A302BC5BFE1B03E18FF00D05EEBFF000066
          FF00E268FF0086C0F863FF00417BAFFC019BFF0089A2E82CCF69C0A302BC5BFE
          1B03E18FFD05EEBFF0066FFE268FF86C0F863FF417BAFF00C019BFF89A2E82CC
          F69C0A302BC5BFE1B03E18FF00D05EEBFF000066FF00E268FF0086C0F863FF00
          417BAFFC019BFF0089A2E82CCF6AAF82FF006D7FF92C917FD82E0FFD0E4AFA2B
          FE1B03E18FFD05EEBFF0066FFE26BE4AFDA7FE24E8FF00127E2547AB787EE24B
          8B05B08A0323C46325D59C9E1803D1852E808FFFD9}
        Stretch = True
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 466
      Width = 718
      Height = 116
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        306.916666666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object lbl1: TQRLabel
        Left = 8
        Top = 8
        Width = 161
        Height = 20
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          21.166666666666670000
          425.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total dos Servi'#231'os em R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lbl2: TQRLabel
        Left = 8
        Top = 32
        Width = 165
        Height = 20
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          84.666666666666670000
          436.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total dos Materiais em R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lbl3: TQRLabel
        Left = 8
        Top = 64
        Width = 114
        Height = 20
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          169.333333333333300000
          301.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total geral em R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 8
        Top = 48
        Width = 297
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          127.000000000000000000
          785.812500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrServicos: TQRLabel
        Left = 180
        Top = 8
        Width = 126
        Height = 20
        Size.Values = (
          52.916666666666660000
          476.250000000000000000
          21.166666666666670000
          333.375000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'qrServicos'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrMateriais: TQRLabel
        Left = 180
        Top = 32
        Width = 126
        Height = 20
        Size.Values = (
          52.916666666666660000
          476.250000000000000000
          84.666666666666680000
          333.375000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrTotal: TQRLabel
        Left = 180
        Top = 64
        Width = 126
        Height = 20
        Size.Values = (
          52.916666666666660000
          476.250000000000000000
          169.333333333333300000
          333.375000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrOBS: TQRMemo
        Left = 10
        Top = 90
        Width = 701
        Height = 20
        Size.Values = (
          52.916666666666660000
          26.458333333333330000
          238.125000000000000000
          1854.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 343
      Width = 718
      Height = 21
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 7
        Top = 2
        Width = 549
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          5.291666666666667000
          1452.562500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 560
        Top = 2
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          5.291666666666667000
          256.645833333333400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Quantidade'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 364
      Width = 718
      Height = 53
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        140.229166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'tblFicha.NOMEDOAMBIENTE'
      Master = qrFicha
      ReprintOnNewPage = False
      object QRDBText4: TQRDBText
        Left = 47
        Top = 13
        Width = 157
        Height = 23
        Size.Values = (
          60.854166666666670000
          124.354166666666700000
          34.395833333333330000
          415.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'NOMEDOAMBIENTE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 50
        Top = 30
        Width = 626
        Height = 16
        Size.Values = (
          42.333333333333340000
          132.291666666666700000
          79.375000000000000000
          1656.291666666667000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 417
      Width = 718
      Height = 12
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'tblFicha.PRODUTO'
      FooterBand = QRBand1
      Master = qrFicha
      ReprintOnNewPage = False
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 449
      Width = 718
      Height = 17
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRDBText8: TQRDBText
        Left = 55
        Top = 3
        Width = 494
        Height = 17
        Size.Values = (
          44.979166666666670000
          145.520833333333300000
          7.937500000000000000
          1307.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblFicha
        DataField = 'PRODUTO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 574
        Top = 3
        Width = 80
        Height = 15
        Size.Values = (
          39.687500000000000000
          1518.708333333333000000
          7.937500000000000000
          211.666666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(tblFicha.QUANTIDADE)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = tblFicha
    Left = 288
  end
  object tblFicha: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      
        'O.DATA, O.VALORCOBRADOMATERIAIS, O.VALORCOBRADOSERVICOS,O.OBS, O' +
        '.RESPONSAVEL, O.RECIBO,'
      'C.NOME AS NOMEDOCLIENTE,C.TELEFONE,'
      'S.PRECO, S.TOTAL, S.QUANTIDADE,S.AMBIENTE,S.OS,'
      'A.DESCRICAO AS NOMEDOAMBIENTE,'
      'P.NOME AS PRODUTO,'
      'AR.NOME AS NOMEDOARQUITETO, O.ARQUITETO,C.EMAIL,'
      'AR.TELEFONE AS TELEFONEARQ, AR.EMAIL AS EMAILARQ'
      ''
      'FROM '
      'SERVICOS S'
      ''
      'INNER JOIN OS O '#9#9'ON ( S.OS = O.OS )'
      'INNER JOIN CLIENTES C'#9'ON ( O.CLIENTE = C.CODIGO )'
      'INNER JOIN PRODUTOS P '#9'ON ( S.PRODUTO = P.CODIGO )'
      'LEFT JOIN AMBIENTES A '#9'ON ( S.AMBIENTE = A.CODIGO )'
      'LEFT JOIN ARQUITETOS AR ON ( C.ARQUITETO = AR.CODIGO )'
      ''
      'WHERE '
      'O.RECIBO = :RECIBO'
      ''
      ''
      'ORDER BY A.DESCRICAO, P.NOME')
    ParamCheck = True
    UniDirectional = False
    DataSource = frmClientes.dtsClientes
    Left = 275
    object IBStringField1: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 37
      FieldName = 'PRODUTO'
      Origin = 'PRODUTOS.NOME'
      Required = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QUANTIDADE'
      Origin = 'SERVICOS.QUANTIDADE'
    end
    object IBBCDField1: TIBBCDField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      DisplayWidth = 11
      FieldName = 'PRECO'
      Origin = 'SERVICOS.PRECO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      DisplayLabel = 'Pre'#231'o Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Origin = 'SERVICOS.TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblFichaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object tblFichaVALORCOBRADOMATERIAIS: TIBBCDField
      FieldName = 'VALORCOBRADOMATERIAIS'
      Origin = 'OS.VALORCOBRADOMATERIAIS'
      Precision = 9
      Size = 2
    end
    object tblFichaVALORCOBRADOSERVICOS: TIBBCDField
      FieldName = 'VALORCOBRADOSERVICOS'
      Origin = 'OS.VALORCOBRADOSERVICOS'
      Precision = 9
      Size = 2
    end
    object tblFichaOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'OS.OBS'
      Size = 8
    end
    object tblFichaRESPONSAVEL: TIBStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'OS.RESPONSAVEL'
      Size = 50
    end
    object tblFichaNOMEDOCLIENTE: TIBStringField
      FieldName = 'NOMEDOCLIENTE'
      Origin = 'CLIENTES.NOME'
      Required = True
      Size = 50
    end
    object tblFichaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CLIENTES.TELEFONE'
    end
    object tblFichaNOMEDOARQUITETO: TIBStringField
      FieldName = 'NOMEDOARQUITETO'
      Origin = 'ARQUITETOS.NOME'
      Size = 50
    end
    object tblFichaAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
      Origin = 'SERVICOS.AMBIENTE'
    end
    object tblFichaNOMEDOAMBIENTE: TIBStringField
      FieldName = 'NOMEDOAMBIENTE'
      Origin = 'AMBIENTES.DESCRICAO'
      Size = 40
    end
    object tblFichaOS: TIntegerField
      FieldName = 'OS'
      Origin = 'SERVICOS.OS'
    end
    object tblFichaARQUITETO: TIntegerField
      FieldName = 'ARQUITETO'
      Origin = '"OS"."ARQUITETO"'
    end
    object tblFichaRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = 'OS.RECIBO'
    end
    object tblFichaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CLIENTES.EMAIL'
      Size = 50
    end
    object tblFichaTELEFONEARQ: TIBStringField
      FieldName = 'TELEFONEARQ'
      Origin = '"ARQUITETOS"."TELEFONE"'
      Size = 50
    end
    object tblFichaEMAILARQ: TIBStringField
      FieldName = 'EMAILARQ'
      Origin = '"ARQUITETOS"."EMAIL"'
      Size = 50
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 231
    Top = 5
  end
end
