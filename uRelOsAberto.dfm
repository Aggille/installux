object frmRelOsAberto: TfrmRelOsAberto
  Left = 236
  Top = 121
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de OS em aberto'
  ClientHeight = 92
  ClientWidth = 273
  Color = clBtnFace
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
    Left = 104
    Top = 56
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
    Left = 184
    Top = 56
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
  object rvdOsAberto: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryOs
    Left = 56
    Top = 48
  end
  object dtsOS: TDataSource
    DataSet = qryOs
    Left = 24
    Top = 48
  end
  object qryOs: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      
        'O.CLIENTE, O.DATA, O.OS, O.VALOR, O.VALORMATERIAIS, O.VALORSERVI' +
        'COS,'
      'C.NOME AS NOMEDOCLIENTE,'
      'F.NOME AS NOMEDOFUNCIONARIO'
      ''
      'FROM OS O'
      ''
      'INNER JOIN CLIENTES C ON ( O.CLIENTE = C.CODIGO )'
      'LEFT JOIN FUNCIONARIOS F ON ( O.FUNCIONARIO = F.CODIGO )'
      ''
      'WHERE'
      'O.DATA BETWEEN :INICIO AND :FINAL AND'
      'O.DATA_CONFIRMACAO IS NULL'
      ''
      ''
      ''
      'ORDER BY DATA')
    Left = 24
    Top = 32
    object qryOsCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'OS.CLIENTE'
    end
    object qryOsDATA: TDateField
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object qryOsOS: TIntegerField
      FieldName = 'OS'
      Origin = 'OS.OS'
      Required = True
    end
    object qryOsVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'OS.VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryOsVALORMATERIAIS: TIBBCDField
      FieldName = 'VALORMATERIAIS'
      Origin = 'OS.VALORMATERIAIS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryOsVALORSERVICOS: TIBBCDField
      FieldName = 'VALORSERVICOS'
      Origin = 'OS.VALORSERVICOS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryOsNOMEDOCLIENTE: TIBStringField
      FieldName = 'NOMEDOCLIENTE'
      Origin = 'CLIENTES.NOME'
      Required = True
      Size = 60
    end
    object qryOsNOMEDOFUNCIONARIO: TIBStringField
      FieldName = 'NOMEDOFUNCIONARIO'
      Origin = 'FUNCIONARIOS.NOME'
      Size = 50
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 24
    Top = 80
  end
end
