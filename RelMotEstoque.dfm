object frmRelMovEstoque: TfrmRelMovEstoque
  Left = 125
  Top = 128
  BorderStyle = bsDialog
  Caption = 'Movimenta'#231#227'o do estoque'
  ClientHeight = 176
  ClientWidth = 272
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
    Left = 10
    Top = 10
    Width = 27
    Height = 13
    Caption = 'In'#237'cio'
  end
  object Label2: TLabel
    Left = 145
    Top = 10
    Width = 22
    Height = 13
    Caption = 'Final'
  end
  object Label3: TLabel
    Left = 10
    Top = 55
    Width = 37
    Height = 13
    Caption = 'Produto'
  end
  object Label4: TLabel
    Left = 10
    Top = 95
    Width = 88
    Height = 13
    Caption = 'Grupo de produtos'
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
    Left = 145
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
  object edtProduto: TwwDBLookupCombo
    Left = 10
    Top = 70
    Width = 256
    Height = 21
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'Nome'#9'F'
      'CODIGO'#9'10'#9'C'#243'digo'#9'F')
    LookupTable = tblProdutos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    Navigator = False
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object BitBtn1: TBitBtn
    Left = 110
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 190
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
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
  object edtGrupo: TwwDBLookupCombo
    Left = 10
    Top = 110
    Width = 256
    Height = 21
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'Nome'#9'F')
    LookupTable = qryGrupos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    Navigator = False
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object tblProdutos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SelectSQL.Strings = (
      'SELECT * FROM PRODUTOS ORDER BY NOME')
    Left = 45
    Top = 5
  end
  object dtsProdutos: TDataSource
    DataSet = tblProdutos
    Left = 45
    Top = 15
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 80
    Top = 5
  end
  object qryEstoque: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    OnCalcFields = qryEstoqueCalcFields
    SelectSQL.Strings = (
      'select'
      
        'e.DATA, e.DOCUMENTO, e.PRECO, e.PRODUTO, e.QUANTIDADE, e.TIPO, e' +
        '.TOTAL, P.NOME'
      ''
      'from'
      'ESTOQUE e'
      ''
      'left join PRODUTOS p ON ( E.PRODUTO = P.CODIGO )'
      ''
      'where'
      'DATA BETWEEN :INICIO AND :FINAL AND'
      'PRODUTO BETWEEN :PRODUTOINICIAL AND :PRODUTOFINAL AND'
      'P.GRUPO BETWEEN :GINICIAL AND :GFINAL'
      ''
      ''
      'order by'
      'e.DATA, e.PRODUTO, e.TIPO')
    Left = 115
    Top = 5
    object qryEstoqueDATA: TDateField
      FieldName = 'DATA'
      Origin = '"ESTOQUE"."DATA"'
    end
    object qryEstoqueDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Origin = '"ESTOQUE"."DOCUMENTO"'
    end
    object qryEstoquePRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"ESTOQUE"."PRECO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object qryEstoquePRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = '"ESTOQUE"."PRODUTO"'
    end
    object qryEstoqueQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"ESTOQUE"."QUANTIDADE"'
    end
    object qryEstoqueTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"ESTOQUE"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object qryEstoqueTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"ESTOQUE"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryEstoqueNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PRODUTOS"."NOME"'
      Size = 50
    end
    object qryEstoqueENTRADA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ENTRADA'
      Calculated = True
    end
    object qryEstoqueSAIDA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SAIDA'
      Calculated = True
    end
    object qryEstoquePRECOENTRADA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRECOENTRADA'
      Calculated = True
    end
    object qryEstoquePRECOSAIDA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRECOSAIDA'
      Calculated = True
    end
  end
  object dtsEstoque: TDataSource
    DataSet = qryEstoque
    Left = 115
    Top = 15
  end
  object rvMovEstoque: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryEstoque
    Left = 145
    Top = 15
  end
  object qryGrupos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SQL.Strings = (
      'select * from GRUPOSDEPRODUTOS order by NOME')
    Left = 185
    Top = 5
    object qryGruposNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = '"GRUPOSDEPRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object qryGruposCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = '"GRUPOSDEPRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  object dtsGrupos: TDataSource
    DataSet = qryGrupos
    Left = 195
    Top = 5
  end
end
