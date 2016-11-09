object frmPendArq: TfrmPendArq
  Left = 171
  Top = 160
  BorderStyle = bsToolWindow
  Caption = 'Pend'#234'ncias por arquiteto'
  ClientHeight = 133
  ClientWidth = 264
  Color = clMoneyGreen
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
    Width = 27
    Height = 13
    Caption = 'In'#237'cio'
  end
  object Label2: TLabel
    Left = 136
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Final'
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 42
    Height = 13
    Caption = 'Arquiteto'
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
  object edtArquiteto: TwwDBLookupCombo
    Left = 8
    Top = 64
    Width = 249
    Height = 21
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'60'#9'Nome'#9'F')
    LookupTable = qryArquitetos
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
    Left = 100
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 3
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
    Left = 180
    Top = 100
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
  object qryRecibos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    OnCalcFields = qryRecibosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      
        'r.id, r.saldo, r.valor, r.servicos_cobrado, r.materiais_cobrado,' +
        ' r.cliente, r.servicos, r.materiais, r.data, r.vencimento, c.fan' +
        'tasia as nome, r.desconto,'
      'c.arquiteto, a.nome as nomearquiteto'
      ''
      'FROM'
      'recibos r'
      ''
      'INNER JOIN CLIENTES    C ON ( R.CLIENTE = C.CODIGO )'
      'LEFT JOIN ARQUITETOS A ON ( C.ARQUITETO = A.CODIGO )'
      ''
      ''
      'where'
      'c.arquiteto between :arquitetoinicial and :arquitetofinal and'
      'r.vencimento between :vencimentoinicial and :vencimentofinal and'
      
        '( ( r.saldo - r.desconto  > 0 ) or ( r.saldo > 0 and r.desconto ' +
        'is null ) ) '
      ''
      'order by '
      'A.NOME, C.ARQUITETO')
    Left = 127
    Top = 159
    ParamData = <
      item
        DataType = ftInteger
        Name = 'arquitetoinicial'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'arquitetofinal'
        ParamType = ptUnknown
        Value = 999
      end
      item
        DataType = ftString
        Name = 'vencimentoinicial'
        ParamType = ptUnknown
        Value = '01/01/0001'
      end
      item
        DataType = ftString
        Name = 'vencimentofinal'
        ParamType = ptUnknown
        Value = '31/12/2005'
      end>
    object qryRecibosID: TIntegerField
      FieldName = 'ID'
      Origin = '"RECIBOS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRecibosSALDO: TIBBCDField
      DefaultExpression = '0'
      FieldName = 'SALDO'
      Origin = '"RECIBOS"."SALDO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosVALOR: TIBBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR'
      Origin = '"RECIBOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosSERVICOS_COBRADO: TIBBCDField
      DefaultExpression = '0'
      FieldName = 'SERVICOS_COBRADO'
      Origin = '"RECIBOS"."SERVICOS_COBRADO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosMATERIAIS_COBRADO: TIBBCDField
      DefaultExpression = '0'
      FieldName = 'MATERIAIS_COBRADO'
      Origin = '"RECIBOS"."MATERIAIS_COBRADO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = '"RECIBOS"."CLIENTE"'
    end
    object qryRecibosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"RECIBOS"."DATA"'
    end
    object qryRecibosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"RECIBOS"."VENCIMENTO"'
    end
    object qryRecibosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 50
    end
    object qryRecibosSERVICOS: TIBBCDField
      FieldName = 'SERVICOS'
      Origin = '"RECIBOS"."SERVICOS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosMATERIAIS: TIBBCDField
      FieldName = 'MATERIAIS'
      Origin = '"RECIBOS"."MATERIAIS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosSALDO_ABERTO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SALDO_ABERTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = False
      Calculated = True
    end
    object qryRecibosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'RECIBOS.DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryRecibosARQUITETO: TSmallintField
      FieldName = 'ARQUITETO'
      Origin = 'RECIBOS.ARQUITETO'
    end
    object qryRecibosNOMEARQUITETO: TIBStringField
      FieldName = 'NOMEARQUITETO'
      Origin = 'ARQUITETOS.NOME'
      Required = True
      Size = 60
    end
  end
  object qryArquitetos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      'CODIGO, NOME '
      ''
      'FROM ARQUITETOS'
      ''
      'ORDER BY NOME')
    Left = 89
    Top = 159
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 58
    Top = 160
  end
  object rvPendArq: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryRecibos
    Left = 38
    Top = 122
  end
end
