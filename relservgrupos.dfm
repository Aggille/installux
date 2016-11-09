object frmRelServGrupos: TfrmRelServGrupos
  Left = 306
  Top = 135
  BorderStyle = bsDialog
  Caption = 'Servi'#231'os por Grupo'
  ClientHeight = 128
  ClientWidth = 262
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
    Left = 135
    Top = 10
    Width = 22
    Height = 13
    Caption = 'Final'
  end
  object Label3: TLabel
    Left = 10
    Top = 50
    Width = 29
    Height = 13
    Caption = 'Grupo'
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
  object edtGrupo: TwwDBLookupCombo
    Left = 10
    Top = 65
    Width = 246
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'NOME'#9'F')
    LookupTable = qryGrupos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object BitBtn1: TBitBtn
    Left = 100
    Top = 95
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
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 180
    Top = 95
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
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object qryGrupos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from GRUPOSDEPRODUTOS ORDER BY NOME')
    Left = 5
    Top = 5
    object qryGruposNOME: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = '"GRUPOSDEPRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object qryGruposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GRUPOSDEPRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  object dtsGrupos: TDataSource
    DataSet = qryGrupos
    Left = 15
    Top = 5
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 45
    Top = 5
  end
  object qryServicos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      
        'S.OS, S.PRODUTO, S.PRECO, S.DATA, S.CLIENTE , S.QUANTIDADE, S.TO' +
        'TAL,'
      'C.FANTASIA AS NOMEDOCLIENTE, '
      'P.NOME AS NOMEDOPRODUTO,P.GRUPO,'
      'G.NOME AS NOMEDOGRUPO,'
      'F.NOME AS NOMEFUNCIONARIO'
      ''
      'from '
      'SERVICOS S'
      ''
      'LEFT JOIN OS O ON ( S.OS = OS.OS )'
      'LEFT JOIN PRODUTOS P ON ( S.PRODUTO = P.CODIGO )'
      'LEFT JOIN CLIENTES C ON ( O.CLIENTE = C.CODIGO )'
      'LEFT JOIN GRUPOSDEPRODUTOS G ON ( P.GRUPO = G.CODIGO )'
      'LEFT JOIN FUNCIONARIOS F ON ( F.CODIGO= O.FUNCIONARIO )'
      ''
      'where'
      'S.DATA BETWEEN :INICIO AND :FINAL AND'
      'P.GRUPO BETWEEN :GINICIAL AND :GFINAL'
      ''
      'ORDER BY'
      'G.NOME, P.GRUPO, S.DATA, S.OS'
      '')
    Left = 75
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GFINAL'
        ParamType = ptUnknown
      end>
    object qryServicosOS: TIntegerField
      FieldName = 'OS'
      Origin = '"SERVICOS"."OS"'
    end
    object qryServicosPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = '"SERVICOS"."PRODUTO"'
    end
    object qryServicosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"SERVICOS"."PRECO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryServicosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"SERVICOS"."DATA"'
    end
    object qryServicosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = '"SERVICOS"."CLIENTE"'
    end
    object qryServicosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"SERVICOS"."QUANTIDADE"'
    end
    object qryServicosTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"SERVICOS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryServicosNOMEDOCLIENTE: TIBStringField
      FieldName = 'NOMEDOCLIENTE'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object qryServicosNOMEDOPRODUTO: TIBStringField
      FieldName = 'NOMEDOPRODUTO'
      Origin = '"PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object qryServicosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"PRODUTOS"."GRUPO"'
    end
    object qryServicosNOMEDOGRUPO: TIBStringField
      FieldName = 'NOMEDOGRUPO'
      Origin = '"GRUPOSDEPRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object qryServicosNOMEFUNCIONARIO: TIBStringField
      FieldName = 'NOMEFUNCIONARIO'
      Origin = 'FUNCIONARIOS.NOME'
      Size = 50
    end
  end
  object dtsServicos: TDataSource
    DataSet = qryServicos
    Left = 85
    Top = 5
  end
  object rvServGrupo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryServicos
    Left = 95
    Top = 45
  end
end
