object frmRelSaldosLocal: TfrmRelSaldosLocal
  Left = 167
  Top = 130
  BorderStyle = bsToolWindow
  Caption = 'Saldos por Local'
  ClientHeight = 99
  ClientWidth = 324
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Local'
  end
  object edtLocal: TwwDBLookupCombo
    Left = 8
    Top = 32
    Width = 305
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'30'#9'Local'#9'F')
    LookupTable = qryLocais
    LookupField = 'ID_LOCAL'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      22222200000000000222208888888880802200000000000008020888888BBB88
      0002088888877788080200000000000008800888888888808080200000000008
      0800220FFFFFFFF080802220F00000F000022220FFFFFFFF022222220F00000F
      022222220FFFFFFFF02222222000000000222222222222222222}
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
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
  object qrpSaldoLocal: TQuickRep
    Left = 16
    Top = 144
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qrySaldos
    Description.Strings = (
      'Listagem de saldos por local')
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
    ReportTitle = 'Listagem de saldos por local'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 63
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
        166.687500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 5
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
          13.229166666666670000
          13.229166666666670000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'InstallLux'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 5
        Top = 25
        Width = 200
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
          529.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Controle de or'#231'amentos e estoque'
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
        Left = 599
        Top = 5
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1584.854166666667000000
          13.229166666666670000
          314.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Text = 'Impresso em :'
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
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 101
      Width = 718
      Height = 21
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
        55.562500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 0
        Top = 0
        Width = 51
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
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 664
        Top = 0
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1756.833333333333000000
          0.000000000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Saldo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 153
      Width = 718
      Height = 18
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
        47.625000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 0
        Top = 0
        Width = 64
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
          169.333333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrySaldos
        DataField = 'PRODUTO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 72
        Top = 0
        Width = 122
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          0.000000000000000000
          322.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrySaldos
        DataField = 'NOMEDOPRODUTO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 640
        Top = 0
        Width = 64
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
          169.333333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrySaldos
        DataField = 'SALDO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 122
      Width = 718
      Height = 31
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
        82.020833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qrySaldos.ID_LOCAL'
      Master = qrpSaldoLocal
      ReprintOnNewPage = False
      object QRDBText4: TQRDBText
        Left = 16
        Top = 8
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          21.166666666666670000
          269.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrySaldos
        DataField = 'NOMEDOLOCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object dtsLocais: TDataSource
    DataSet = qryLocais
    Left = 136
    Top = 8
  end
  object dtsSaldos: TDataSource
    DataSet = qrySaldos
    Left = 176
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 224
    Top = 8
  end
  object qryLocais: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SQL.Strings = (
      'SELECT * FROM LOCAIS ORDER BY NOME')
    Left = 136
    Top = 24
    object qryLocaisNOME: TIBStringField
      DisplayLabel = 'Local'
      DisplayWidth = 30
      FieldName = 'NOME'
      Origin = 'LOCAIS.NOME'
      Size = 30
    end
    object qryLocaisID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'LOCAIS.ID_LOCAL'
      Required = True
      Visible = False
    end
  end
  object qrySaldos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    OnCalcFields = qrySaldosCalcFields
    SQL.Strings = (
      'SELECT'
      'E.PRODUTO, E.ID_LOCAL,'
      'SUM( EN.QUANTIDADE ) AS ENTRADAS,'
      'SUM( ES.QUANTIDADE ) AS SAIDAS,'
      'L.NOME AS NOMEDOLOCAL,'
      'P.NOME AS NOMEDOPRODUTO'
      ''
      'FROM ESTOQUE E '
      ''
      
        'LEFT JOIN ESTOQUE ES ON (  ES.ESTOQUE = E.ESTOQUE AND ES.TIPO = ' +
        #39'S'#39' )'
      ''
      
        'LEFT JOIN ESTOQUE EN ON (  EN.ESTOQUE = E.ESTOQUE AND EN.TIPO = ' +
        #39'E'#39' )'
      ''
      'INNER JOIN PRODUTOS P ON ( E.PRODUTO = P.CODIGO )'
      'INNER JOIN LOCAIS L ON ( E.ID_LOCAL = L.ID_LOCAL )'
      ''
      'WHERE E.ID_LOCAL BETWEEN :INICIO AND :FINAL'
      ''
      'GROUP BY '
      'E.PRODUTO, E.ID_LOCAL, L.NOME, P.NOME'
      ''
      'ORDER BY L.NOME, E.ID_LOCAL, P.NOME, E.PRODUTO')
    Left = 176
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'FINAL'
        ParamType = ptUnknown
      end>
    object qrySaldosPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object qrySaldosID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
    end
    object qrySaldosENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object qrySaldosSAIDAS: TFloatField
      FieldName = 'SAIDAS'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object qrySaldosNOMEDOLOCAL: TIBStringField
      FieldName = 'NOMEDOLOCAL'
      Size = 30
    end
    object qrySaldosNOMEDOPRODUTO: TIBStringField
      FieldName = 'NOMEDOPRODUTO'
      Required = True
      Size = 60
    end
    object qrySaldosSALDO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      Calculated = True
    end
  end
end
