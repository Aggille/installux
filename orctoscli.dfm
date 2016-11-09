object frmOrctosCli: TfrmOrctosCli
  Left = 199
  Top = 125
  BorderStyle = bsToolWindow
  Caption = 'Or'#231'amentos deste cliente'
  ClientHeight = 446
  ClientWidth = 758
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
  object DBText1: TDBText
    Left = 0
    Top = 0
    Width = 758
    Height = 17
    Align = alTop
    Alignment = taCenter
    Color = clWhite
    DataField = 'NOME'
    DataSource = frmClientes.dtsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 17
    Width = 758
    Height = 208
    DisableThemes = False
    Selected.Strings = (
      'NUMERO'#9'10'#9'N'#250'mero'
      'EMISSAO'#9'10'#9'Emiss'#227'o'
      'DATA_ENTREGA'#9'10'#9'Entrega'
      'TOTALDEMAODEOBRA'#9'15'#9'M'#227'o de obra'#9'F'#9'Valores Or'#231'ados'
      'TOTALDEPECAS'#9'15'#9'Pe'#231'as'#9'F'#9'Valores Or'#231'ados'
      'TOTALDOORCAMENTO'#9'15'#9'Total'#9'F'#9'Valores Or'#231'ados'
      'VALORCOBRADOMAODEOBRA'#9'15'#9'M'#227'o de Obra'#9'F'#9'Valores Cobrados'
      'VALORCOBRADOPECAS'#9'15'#9'Pe'#231'as'#9'F'#9'Valores Cobrados'
      'VALORCOBRADO'#9'10'#9'Total'#9'F'#9'Valores Cobrados')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dtsOrcamentos
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = 16250871
  end
  object wwDBGrid2: TwwDBGrid
    Left = 0
    Top = 225
    Width = 758
    Height = 208
    DisableThemes = False
    ControlType.Strings = (
      'TIPO;CustomEdit;edtTipo;F')
    Selected.Strings = (
      'NOMEDOPROUTO'#9'50'#9'Produto'#9'F'
      'NOMEDOAMBIENTE'#9'25'#9'Ambiente'#9'F'
      'QUANTIDADE'#9'7'#9'Qtde.'#9'F'
      'UNIDADE'#9'3'#9'UN'#9'F'
      'PRECOUNITARIO'#9'8'#9'Pre'#231'o'#9'F'
      'PRECOTOTAL'#9'12'#9'Total'#9'F'
      'TIPO'#9'10'#9'Tipo'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dtsItens
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = 16250871
  end
  object edtTipo: TwwDBComboBox
    Left = 575
    Top = 185
    Width = 51
    Height = 21
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    Color = clInfoBk
    DataField = 'TIPO'
    DataSource = dtsItens
    DropDownCount = 8
    HistoryList.FileName = 'SGVWINDOWS.ini'
    ItemHeight = 0
    Items.Strings = (
      '1-Mat.'#9'1'
      '2-M.O.'#9'2')
    Sorted = False
    TabOrder = 2
    UnboundDataType = wwDefault
  end
  object qryOrcamentos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = frmClientes.trnClientes
    OnCalcFields = qryOrcamentosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = frmClientes.dtsClientes
    SQL.Strings = (
      'SELECT'
      
        'O.CLIENTE, O.DATA_ENTREGA, O.EMISSAO, O.NUMERO, O.TOTALDEMAODEOB' +
        'RA, O.TOTALDEPECAS, O.TOTALDOORCAMENTO,'
      'O.VALORCOBRADOMAODEOBRA, O.VALORCOBRADOPECAS'
      ''
      'FROM ORCAMENTOS O'
      ''
      'WHERE'
      'O.CLIENTE = :CODIGO'
      ''
      'ORDER BY O.EMISSAO DESC')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryOrcamentosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'ORCAMENTOS.CLIENTE'
    end
    object qryOrcamentosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'ORCAMENTOS.DATA_ENTREGA'
    end
    object qryOrcamentosEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'ORCAMENTOS.EMISSAO'
    end
    object qryOrcamentosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'ORCAMENTOS.NUMERO'
      Required = True
    end
    object qryOrcamentosTOTALDEMAODEOBRA: TIBBCDField
      FieldName = 'TOTALDEMAODEOBRA'
      Origin = 'ORCAMENTOS.TOTALDEMAODEOBRA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentosTOTALDEPECAS: TIBBCDField
      FieldName = 'TOTALDEPECAS'
      Origin = 'ORCAMENTOS.TOTALDEPECAS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentosTOTALDOORCAMENTO: TIBBCDField
      FieldName = 'TOTALDOORCAMENTO'
      Origin = 'ORCAMENTOS.TOTALDOORCAMENTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentosVALORCOBRADOMAODEOBRA: TIBBCDField
      FieldName = 'VALORCOBRADOMAODEOBRA'
      Origin = 'ORCAMENTOS.VALORCOBRADOMAODEOBRA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentosVALORCOBRADOPECAS: TIBBCDField
      FieldName = 'VALORCOBRADOPECAS'
      Origin = 'ORCAMENTOS.VALORCOBRADOPECAS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentosVALORCOBRADO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VALORCOBRADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object qryItens: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = frmClientes.trnClientes
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsOrcamentos
    SQL.Strings = (
      'SELECT'
      ''
      
        'I.LOCAL, I.PRECOTOTAL, I.PRECOUNITARIO, I.QUANTIDADE, I.TIPO, I.' +
        'UNIDADE,'
      'P.NOME AS NOMEDOPROUTO, A.DESCRICAO AS NOMEDOAMBIENTE'
      ''
      'FROM ITEMSDEORCAMENTOS I'
      ''
      'LEFT JOIN AMBIENTES A ON ( I.LOCAL = A.CODIGO )'
      'LEFT JOIN PRODUTOS P ON ( I.PRODUTO = P.CODIGO )'
      ''
      'WHERE I.ORCAMENTO = :NUMERO'
      ''
      ''
      'ORDER BY '
      'I.TIPO DESC')
    Left = 56
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUMERO'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryItensLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = 'ITEMSDEORCAMENTOS.LOCAL'
    end
    object qryItensPRECOTOTAL: TIBBCDField
      FieldName = 'PRECOTOTAL'
      Origin = 'ITEMSDEORCAMENTOS.PRECOTOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryItensPRECOUNITARIO: TIBBCDField
      FieldName = 'PRECOUNITARIO'
      Origin = 'ITEMSDEORCAMENTOS.PRECOUNITARIO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'ITEMSDEORCAMENTOS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qryItensTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'ITEMSDEORCAMENTOS.TIPO'
      FixedChar = True
      Size = 1
    end
    object qryItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ITEMSDEORCAMENTOS.UNIDADE'
      FixedChar = True
      Size = 3
    end
    object qryItensNOMEDOPROUTO: TIBStringField
      FieldName = 'NOMEDOPROUTO'
      Origin = 'PRODUTOS.NOME'
      Size = 60
    end
    object qryItensNOMEDOAMBIENTE: TIBStringField
      FieldName = 'NOMEDOAMBIENTE'
      Origin = 'AMBIENTES.DESCRICAO'
      Size = 40
    end
  end
  object dtsOrcamentos: TDataSource
    DataSet = qryOrcamentos
    Left = 8
    Top = 24
  end
  object dtsItens: TDataSource
    DataSet = qryItens
    Left = 56
    Top = 24
  end
end
