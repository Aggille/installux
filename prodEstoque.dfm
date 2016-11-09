object frmProdEstoque: TfrmProdEstoque
  Left = 135
  Top = 91
  BorderStyle = bsToolWindow
  Caption = 'Consulta produto no estoque'
  ClientHeight = 297
  ClientWidth = 592
  Color = clBtnFace
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
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Produto'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 569
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = #218'ltimas compras'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Label3: TLabel
    Left = 8
    Top = 208
    Width = 569
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pre'#231'os m'#233'dios de compra'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object edtProduto: TwwDBLookupCombo
    Left = 8
    Top = 24
    Width = 393
    Height = 21
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'60'#9'Nome'#9'F'
      'CODIGO'#9'10'#9'C'#243'digo'#9'F')
    LookupTable = qryProdutos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    Navigator = False
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object BitBtn1: TBitBtn
    Left = 413
    Top = 21
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
      33003377333337F33377333333333C333300333F333337F33377339333333C33
      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
      3000333333333377377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 493
    Top = 21
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
  object wwDBGrid1: TwwDBGrid
    Left = 9
    Top = 84
    Width = 569
    Height = 120
    DisableThemes = False
    Selected.Strings = (
      'DATA'#9'10'#9'Data'
      'DOCUMENTO'#9'10'#9'Documento'
      'PRECO'#9'13'#9'Pre'#231'o'
      'QUANTIDADE'#9'10'#9'Qtde.'
      'NOMEDOFORNECEDOR'#9'40'#9'Fornecedor')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dtsCompras
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 16250871
  end
  object wwDBGrid2: TwwDBGrid
    Left = 9
    Top = 228
    Width = 569
    Height = 53
    DisableThemes = False
    Selected.Strings = (
      'MAIORPRECO'#9'19'#9'Maior Pre'#231'o'#9'F'#9
      'MENORPRECO'#9'19'#9'Menor Pre'#231'o'#9'F'
      'PRECOMEDIO'#9'19'#9'Pre'#231'o M'#233'dio'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dtsMedias
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 16250871
  end
  object qryProdutos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      'CODIGO, NOME FROM PRODUTOS ORDER BY NOME')
    Left = 328
    Top = 128
  end
  object dtsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 328
    Top = 144
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 296
    Top = 128
  end
  object qryCompras: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      'E.DATA, E.DOCUMENTO, E.FORNECEDOR, E.PRECO, E.QUANTIDADE,'
      'F.NOME AS NOMEDOFORNECEDOR'
      ''
      'FROM ESTOQUE E '
      ''
      'LEFT JOIN FORNECEDORES F ON ( E.FORNECEDOR = F.CODIGO )'
      ''
      'WHERE '
      'E.TIPO = '#39'E'#39' AND'
      'E.PRODUTO = :PRODUTO'
      ''
      'ORDER BY '
      'E.DATA DESC')
    Left = 360
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object qryComprasDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'ESTOQUE.DATA'
    end
    object qryComprasDOCUMENTO: TIntegerField
      DisplayLabel = 'Documento'
      DisplayWidth = 10
      FieldName = 'DOCUMENTO'
      Origin = 'ESTOQUE.DOCUMENTO'
    end
    object qryComprasPRECO: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 13
      FieldName = 'PRECO'
      Origin = 'ESTOQUE.PRECO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object qryComprasQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 10
      FieldName = 'QUANTIDADE'
      Origin = 'ESTOQUE.QUANTIDADE'
    end
    object qryComprasNOMEDOFORNECEDOR: TIBStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 40
      FieldName = 'NOMEDOFORNECEDOR'
      Origin = 'FORNECEDORES.NOME'
      Size = 60
    end
    object qryComprasFORNECEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'FORNECEDOR'
      Origin = 'ESTOQUE.FORNECEDOR'
      Visible = False
    end
  end
  object dtsCompras: TDataSource
    DataSet = qryCompras
    Left = 360
    Top = 144
  end
  object qryMedias: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      'MAX( E.PRECO ) AS MAIORPRECO,'
      'MIN( E.PRECO ) AS MENORPRECO, '
      'AVG( E.PRECO ) AS PRECOMEDIO'
      ''
      'FROM ESTOQUE  E'
      ''
      'WHERE E.PRODUTO = :PRODUTO AND E.TIPO = '#39'E'#39)
    Left = 392
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object qryMediasMAIORPRECO: TIBBCDField
      DisplayLabel = 'Maior Pre'#231'o'
      DisplayWidth = 19
      FieldName = 'MAIORPRECO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object qryMediasMENORPRECO: TIBBCDField
      DisplayLabel = 'Menor Pre'#231'o'
      DisplayWidth = 19
      FieldName = 'MENORPRECO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object qryMediasPRECOMEDIO: TIBBCDField
      DisplayLabel = 'Pre'#231'o M'#233'dio'
      DisplayWidth = 19
      FieldName = 'PRECOMEDIO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
  end
  object dtsMedias: TDataSource
    DataSet = qryMedias
    Left = 392
    Top = 144
  end
end
