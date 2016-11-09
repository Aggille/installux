object frmRelRecibosPgto: TfrmRelRecibosPgto
  Left = 198
  Top = 142
  BorderStyle = bsDialog
  Caption = 'Recibos por pgto.'
  ClientHeight = 95
  ClientWidth = 271
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
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
  object BitBtn1: TBitBtn
    Left = 105
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
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
    Left = 185
    Top = 55
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
  object qryRecibos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SQL.Strings = (
      'SELECT'
      
        'r.id, r.saldo, r.valor, r.servicos_cobrado, r.materiais_cobrado,' +
        ' r.cliente, r.pagamento,r.servicos, r.materiais, r.data, r.venci' +
        'mento, c.fantasia as nome'
      ''
      'FROM'
      'recibos r'
      ''
      'INNER JOIN CLIENTES C ON ( R.CLIENTE = C.CODIGO )'
      ''
      ''
      'where'
      'r.pagamento between :pagamentoinicial and :pagamentofinal'
      ''
      'order by '
      'R.PAGAMENTO, C.NOME')
    Left = 50
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pagamentoinicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pagamentofinal'
        ParamType = ptUnknown
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
    object qryRecibosPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"RECIBOS"."PAGAMENTO"'
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 10
    Top = 20
  end
  object rvRecibosPorPgto: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryRecibos
    Left = 85
    Top = 20
  end
end
