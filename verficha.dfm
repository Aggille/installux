object frmVerFicha: TfrmVerFicha
  Left = 483
  Top = 170
  BorderStyle = bsToolWindow
  Caption = 'Ver ficha do cliente'
  ClientHeight = 83
  ClientWidth = 258
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
    Width = 91
    Height = 13
    Caption = 'Selecione o Cliente'
  end
  object edtCliente: TwwDBLookupCombo
    Left = 8
    Top = 24
    Width = 241
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'FANTASIA'#9'50'#9'Nome'#9'F'
      'CIDADE'#9'30'#9'Cidade'#9'F')
    LookupTable = qryClientes
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 48
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = BitBtn1Click
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
  end
  object qrpFichas: TQuickRep
    Left = 8
    Top = 104
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = tblFichas
    Description.Strings = (
      'Seri'#231'os pendentes')
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
    ReportTitle = 'Servi'#231'os Pendentes'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    object QRGroup1: TQRGroup
      Left = 38
      Top = 105
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
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'tblFichas.AMBIENTE'
      Master = qrpFichas
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 80
        Top = 8
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          21.166666666666670000
          328.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tblFichas
        DataField = 'NOMEDOAMBIENTE'
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
      object QRLabel1: TQRLabel
        Left = 8
        Top = 8
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ambiente: '
        Color = clWhite
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
    object QRBand1: TQRBand
      Left = 38
      Top = 135
      Width = 718
      Height = 20
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
        52.916666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 8
        Top = 2
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          5.291666666666667000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tblFichas
        DataField = 'PRODUTO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 416
        Top = 2
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          5.291666666666667000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tblFichas
        DataField = 'QUANTIDADE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
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
        177.270833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel2: TQRLabel
        Left = 8
        Top = 8
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 8
        Top = 32
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          84.666666666666670000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Arquiteto: '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 88
        Top = 8
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          21.166666666666670000
          296.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tblFichas
        DataField = 'NOMEDOCLIENTE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 88
        Top = 32
        Width = 132
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          84.666666666666670000
          349.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tblFichas
        DataField = 'NOMEDOARQUITETO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
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
  object trnVeFicha: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 8
    Top = 48
  end
  object qryClientes: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnVeFicha
    SQL.Strings = (
      'SELECT'
      'CODIGO, FANTASIA, CIDADE'
      ''
      'FROM CLIENTES'
      ''
      'ORDER BY FANTASIA')
    Left = 40
    Top = 48
  end
  object tblFichas: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnVeFicha
    SelectSQL.Strings = (
      'SELECT'
      
        'O.DATA, O.VALORCOBRADOMATERIAIS, O.VALORCOBRADOSERVICOS,O.OBS, O' +
        '.RESPONSAVEL, O.RECIBO,'
      'C.FANTASIA AS NOMEDOCLIENTE,C.TELEFONE,'
      'S.PRECO, S.TOTAL, S.QUANTIDADE,S.AMBIENTE,S.OS,'
      'A.DESCRICAO AS NOMEDOAMBIENTE,'
      'P.NOME AS PRODUTO,'
      'AR.NOME AS NOMEDOARQUITETO, O.ARQUITETO'
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
      '( O.RECIBO = 0 OR RECIBO IS NULL )  AND'
      'O.CLIENTE = :CLIENTE'
      ''
      ''
      'ORDER BY A.DESCRICAO, P.NOME')
    DataSource = frmClientes.dtsClientes
    Left = 75
    Top = 48
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
    object tblFichasDATA: TDateField
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object tblFichasVALORCOBRADOMATERIAIS: TIBBCDField
      FieldName = 'VALORCOBRADOMATERIAIS'
      Origin = 'OS.VALORCOBRADOMATERIAIS'
      Precision = 9
      Size = 2
    end
    object tblFichasVALORCOBRADOSERVICOS: TIBBCDField
      FieldName = 'VALORCOBRADOSERVICOS'
      Origin = 'OS.VALORCOBRADOSERVICOS'
      Precision = 9
      Size = 2
    end
    object tblFichasOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'OS.OBS'
      Size = 8
    end
    object tblFichasRESPONSAVEL: TIBStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'OS.RESPONSAVEL'
      Size = 50
    end
    object tblFichasNOMEDOCLIENTE: TIBStringField
      FieldName = 'NOMEDOCLIENTE'
      Origin = 'CLIENTES.NOME'
      Required = True
      Size = 50
    end
    object tblFichasTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CLIENTES.TELEFONE'
    end
    object tblFichasNOMEDOARQUITETO: TIBStringField
      FieldName = 'NOMEDOARQUITETO'
      Origin = 'ARQUITETOS.NOME'
      Size = 50
    end
    object tblFichasAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
      Origin = 'SERVICOS.AMBIENTE'
    end
    object tblFichasNOMEDOAMBIENTE: TIBStringField
      FieldName = 'NOMEDOAMBIENTE'
      Origin = 'AMBIENTES.DESCRICAO'
      Size = 40
    end
    object tblFichasOS: TIntegerField
      FieldName = 'OS'
      Origin = 'SERVICOS.OS'
    end
    object tblFichasARQUITETO: TIntegerField
      FieldName = 'ARQUITETO'
      Origin = '"OS"."ARQUITETO"'
    end
    object tblFichasRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = 'OS.RECIBO'
    end
  end
  object dtsFicha: TDataSource
    DataSet = tblFichas
    Left = 88
    Top = 48
  end
end
