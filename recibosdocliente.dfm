object frmRecibosCliente: TfrmRecibosCliente
  Left = 71
  Top = 133
  BorderStyle = bsToolWindow
  Caption = 'Recibos deste cliente'
  ClientHeight = 453
  ClientWidth = 833
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
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 833
    Height = 16
    Align = alTop
    Caption = 'lblTitulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grdreciboscliente: TwwDBGrid
    Left = 0
    Top = 16
    Width = 833
    Height = 235
    DisableThemes = False
    Selected.Strings = (
      'ID'#9'10'#9'N'#186#9'F'
      'PARCELA'#9'3'#9'Parc.'#9'F'
      'DATA'#9'10'#9'Data'#9'F'#9'Datas'
      'VENCIMENTO'#9'10'#9'Vencimento'#9'F'#9'Datas'
      'PAGAMENTO'#9'10'#9'Pagamento'#9'F'
      'MATERIAIS'#9'10'#9'Materiais'#9'F'#9'Valores Calculados'
      'SERVICOS'#9'10'#9'Servi'#231'os'#9'F'#9'Valores Calculados'
      'MATERIAIS_COBRADO'#9'10'#9'Materiais'#9'F'#9'Valores Cobrados'
      'SERVICOS_COBRADO'#9'10'#9'Servi'#231'os'#9'F'#9'Valores Cobrados'
      'VALOR'#9'10'#9'Total'#9'F'#9'Valores Cobrados'
      'DESCONTO'#9'12'#9'Desconto'#9'F'
      'SALDO'#9'10'#9'Saldo'#9'F'
      'HORAS'#9'10'#9'Horas'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow, mViewOnly]
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dtsRecibos
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ReadOnly = True
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
    PaintOptions.AlternatingRowColor = clInfoBk
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 251
    Width = 833
    Height = 197
    DisableThemes = False
    ControlType.Strings = (
      'OBS;RichEdit;wwDBRichEdit1;F')
    Selected.Strings = (
      'OS'#9'10'#9'OS'#9'F'
      'DATA'#9'10'#9'Data'#9'F'
      'NOMEDOFUNCIONARIO'#9'46'#9'Funcion'#225'rio'#9'F'
      'VALORCOBRADOMATERIAIS'#9'14'#9'Valor dos materiais'#9'F'
      'VALORCOBRADOSERVICOS'#9'14'#9'Valor dos servicos'#9'F'
      'VALORCOBRADO'#9'10'#9'Valor Total'#9'F'
      'TOTALDEHORAS'#9'10'#9'Total hrs.'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow, mViewOnly]
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dtsOPs
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = 16776176
  end
  object qryRecibos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = dmInstallux.ibtPrincipal
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      '* '
      'FROM RECIBOS'
      'WHERE CLIENTE = :CLIENTE'
      ''
      'ORDER BY PAGAMENTO DESC')
    Left = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end>
    object qryRecibosID: TIntegerField
      FieldName = 'ID'
      Origin = '"RECIBOS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRecibosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"RECIBOS"."DATA"'
    end
    object qryRecibosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"RECIBOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"RECIBOS"."VENCIMENTO"'
    end
    object qryRecibosPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"RECIBOS"."PAGAMENTO"'
    end
    object qryRecibosOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"RECIBOS"."OBS"'
      Size = 8
    end
    object qryRecibosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = '"RECIBOS"."CLIENTE"'
    end
    object qryRecibosMATERIAIS: TIBBCDField
      FieldName = 'MATERIAIS'
      Origin = '"RECIBOS"."MATERIAIS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosSERVICOS: TIBBCDField
      FieldName = 'SERVICOS'
      Origin = '"RECIBOS"."SERVICOS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosMATERIAIS_COBRADO: TIBBCDField
      FieldName = 'MATERIAIS_COBRADO'
      Origin = '"RECIBOS"."MATERIAIS_COBRADO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosSERVICOS_COBRADO: TIBBCDField
      FieldName = 'SERVICOS_COBRADO'
      Origin = '"RECIBOS"."SERVICOS_COBRADO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosHORAS: TIBStringField
      FieldName = 'HORAS'
      Origin = '"RECIBOS"."HORAS"'
      Size = 10
    end
    object qryRecibosSALDO: TIBBCDField
      FieldName = 'SALDO'
      Origin = 'RECIBOS.SALDO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryRecibosARQUITETO: TSmallintField
      FieldName = 'ARQUITETO'
      Origin = 'RECIBOS.ARQUITETO'
    end
    object qryRecibosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'RECIBOS.DESCONTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryRecibosPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = 'RECIBOS.PARCELA'
      Required = True
    end
  end
  object dtsRecibos: TDataSource
    DataSet = qryRecibos
    Left = 80
    Top = 10
  end
  object qryOs: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = dmInstallux.ibtPrincipal
    OnCalcFields = qryOsCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsRecibos
    SQL.Strings = (
      'SELECT'
      'O.OS, O.DATA, O.VALORCOBRADOSERVICOS, O.VALORCOBRADOMATERIAIS,'
      'O.VALORCOBRADO,O. SAIDA, O.CHEGADA,'
      'F.NOME AS NOMEDOFUNCIONARIO, F.QUANTIDADE'
      ''
      'FROM '
      'OS O'
      ''
      'LEFT JOIN FUNCIONARIOS F ON ( O.FUNCIONARIO = F.CODIGO )'
      ''
      'WHERE '
      'O.RECIBO = :ID')
    Left = 125
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryOsOS: TIntegerField
      FieldName = 'OS'
      Origin = '"OS"."OS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOsDATA: TDateField
      FieldName = 'DATA'
      Origin = '"OS"."DATA"'
    end
    object qryOsVALORCOBRADOSERVICOS: TIBBCDField
      FieldName = 'VALORCOBRADOSERVICOS'
      Origin = '"OS"."VALORCOBRADOSERVICOS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryOsVALORCOBRADOMATERIAIS: TIBBCDField
      FieldName = 'VALORCOBRADOMATERIAIS'
      Origin = '"OS"."VALORCOBRADOMATERIAIS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryOsVALORCOBRADO: TIBBCDField
      FieldName = 'VALORCOBRADO'
      Origin = '"OS"."VALORCOBRADO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryOsNOMEDOFUNCIONARIO: TIBStringField
      FieldName = 'NOMEDOFUNCIONARIO'
      Origin = '"FUNCIONARIOS"."NOME"'
      Size = 50
    end
    object qryOsTOTALDEHORAS: TTimeField
      FieldKind = fkCalculated
      FieldName = 'TOTALDEHORAS'
      Calculated = True
    end
    object qryOsSAIDA: TTimeField
      FieldName = 'SAIDA'
      Origin = 'OS.SAIDA'
    end
    object qryOsCHEGADA: TTimeField
      FieldName = 'CHEGADA'
      Origin = 'OS.CHEGADA'
    end
    object qryOsQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'FUNCIONARIOS.QUANTIDADE'
    end
  end
  object dtsOPs: TDataSource
    DataSet = qryOs
    Left = 125
    Top = 15
  end
end
