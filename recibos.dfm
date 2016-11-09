object frmRecibos: TfrmRecibos
  Left = 105
  Top = 129
  BorderStyle = bsToolWindow
  Caption = 'Recibos'
  ClientHeight = 288
  ClientWidth = 827
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
  object wwDBNavigator1: TwwDBNavigator
    Left = 0
    Top = 0
    Width = 827
    Height = 25
    DataSource = dtsRecibos
    ImageList = frmPrincipal.ImageList1
    ShowHint = True
    RepeatInterval.InitialDelay = 500
    RepeatInterval.Interval = 100
    Align = alTop
    ParentShowHint = False
    object wwDBNavigator1First: TwwNavButton
      Left = 0
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Vai para o primeiro regsitro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1First'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 0
      Style = nbsFirst
    end
    object wwDBNavigator1PriorPage: TwwNavButton
      Left = 25
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move 10 registros para tr'#225's'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1PriorPage'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 1
      Style = nbsPriorPage
    end
    object wwDBNavigator1Prior: TwwNavButton
      Left = 50
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Vai para o primeiro registro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Prior'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 2
      Style = nbsPrior
    end
    object wwDBNavigator1Next: TwwNavButton
      Left = 75
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Vai para o pr'#243'ximo registro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Next'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 3
      Style = nbsNext
    end
    object wwDBNavigator1NextPage: TwwNavButton
      Left = 100
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move 10 registros para a frente'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1NextPage'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 4
      Style = nbsNextPage
    end
    object wwDBNavigator1Last: TwwNavButton
      Left = 125
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Vai para o '#250'ltimo registro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Last'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 5
      Style = nbsLast
    end
    object wwDBNavigator1Insert: TwwNavButton
      Left = 150
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Inclui um novo registro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Insert'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsInsert
    end
    object wwDBNavigator1Delete: TwwNavButton
      Left = 175
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Apaga este registro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Delete'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1DeleteClick
      Index = 7
      Style = nbsDelete
    end
    object wwDBNavigator1Edit: TwwNavButton
      Left = 200
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Altera este registro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Edit'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsEdit
    end
    object wwDBNavigator1LocateDialog: TwwNavButton
      Left = 225
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Localiza um determinado registro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1LocateDialog'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsLocateDialog
    end
    object wwDBNavigator1SearchDialog: TwwNavButton
      Left = 250
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Busca por um registro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1SearchDialog'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 10
      Style = nbsSearchDialog
    end
    object wwDBNavigator1Button1: TwwNavButton
      Left = 275
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Localiza um recibo'
      ImageIndex = 11
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button1'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1Button1Click
      Index = 11
      Style = nbsCustom
    end
    object wwDBNavigator1Button2: TwwNavButton
      Left = 300
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Baixa manual'
      ImageIndex = 9
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button2'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1Button2Click
      Index = 12
      Style = nbsCustom
    end
    object wwDBNavigator1Button3: TwwNavButton
      Left = 325
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Baixa autom'#225'tica'
      ImageIndex = 13
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button3'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1Button3Click
      Index = 13
      Style = nbsCustom
    end
    object wwDBNavigator1Button4: TwwNavButton
      Left = 350
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Estornar a baixa'
      ImageIndex = 8
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button4'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1Button4Click
      Index = 14
      Style = nbsCustom
    end
    object wwDBNavigator1Button5: TwwNavButton
      Left = 375
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Emite o recibo'
      ImageIndex = 6
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button5'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1Button5Click
      Index = 15
      Style = nbsCustom
    end
    object wwDBNavigator1Button6: TwwNavButton
      Left = 400
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Emite a Ficha'
      ImageIndex = 0
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button6'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1Button6Click
      Index = 16
      Style = nbsCustom
    end
    object wwDBNavigator1Button7: TwwNavButton
      Left = 425
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Parcelamento'
      ImageIndex = 16
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button7'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1Button7Click
      Index = 17
      Style = nbsCustom
    end
    object wwDBNavigator1Button: TwwNavButton
      Left = 450
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Sair'
      ImageIndex = 4
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1ButtonClick
      Index = 18
      Style = nbsCustom
    end
  end
  object grdreciboscliente: TwwDBGrid
    Left = 0
    Top = 25
    Width = 827
    Height = 263
    ControlType.Strings = (
      'NOMEDOCLIENTE;CustomEdit;edtCliente;F')
    Selected.Strings = (
      'ID'#9'7'#9'N'#186#9'F'
      'PARCELA'#9'3'#9'Par.'#9'F'
      'NOMEDOCLIENTE'#9'25'#9'Cliente'#9'F'
      'SALDOABERTO'#9'10'#9'Saldo'#9'F'
      'DATA'#9'10'#9'Data'#9'F'#9'Datas'
      'PAGAMENTO'#9'10'#9'Pagamento'#9'F'#9'Datas'
      'SERVICOS'#9'10'#9'Servi'#231'os'#9'F'#9'Valores Calculados'
      'MATERIAIS'#9'10'#9'Materiais'#9'F'#9'Valores Calculados'
      'SERVICOS_COBRADO'#9'10'#9'Servi'#231'os'#9'F'#9'Valores Cobrados'
      'MATERIAIS_COBRADO'#9'10'#9'Materiais'#9'F'#9'Valores Cobrados'
      'VALOR'#9'10'#9'Total'#9'F'#9'Valores Cobrados'
      'HORAS'#9'8'#9'Horas'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow, mViewOnly]
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dtsRecibos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ReadOnly = True
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
    OnDblClick = grdrecibosclienteDblClick
    PaintOptions.AlternatingRowColor = clInfoBk
    ExplicitHeight = 286
  end
  object edtParcela: TDBEdit
    Left = 72
    Top = 136
    Width = 65
    Height = 21
    Color = clInfoBk
    DataField = 'PARCELA'
    DataSource = dtsRecibos
    TabOrder = 4
    Visible = False
  end
  object edtId: TwwDBEdit
    Left = 75
    Top = 170
    Width = 121
    Height = 21
    DataField = 'ID'
    DataSource = dtsRecibos
    TabOrder = 5
    UnboundDataType = wwDefault
    Visible = False
    WantReturns = False
    WordWrap = False
    OnExit = edtIDExit
  end
  object edtCliente: TwwDBLookupCombo
    Left = 250
    Top = 135
    Width = 321
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'FANTASIA'#9'20'#9'FANTASIA'#9'F')
    DataField = 'NOMEDOCLIENTE'
    DataSource = dtsRecibos
    LookupTable = tblClientes
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 3
    Visible = False
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object edtArquiteto: TwwDBLookupCombo
    Left = 255
    Top = 100
    Width = 306
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'NOME'#9'F')
    DataField = 'ARQUITETO'
    DataSource = dtsRecibos
    LookupTable = tblArquitetos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 2
    Visible = False
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object wwDBRichEdit1: TwwDBRichEdit
    Left = 265
    Top = 170
    Width = 185
    Height = 89
    AutoURLDetect = False
    DataField = 'OBS'
    DataSource = dtsRecibos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GutterWidth = 3
    HideSelection = False
    ParentFont = False
    PrintJobName = 'Delphi 7'
    TabOrder = 6
    Visible = False
    EditorOptions = [reoShowSaveExit, reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1.000000000000000000
    PrintMargins.Bottom = 1.000000000000000000
    PrintMargins.Left = 1.000000000000000000
    PrintMargins.Right = 1.000000000000000000
    PrintHeader.VertMargin = 0.500000000000000000
    PrintHeader.Font.Charset = DEFAULT_CHARSET
    PrintHeader.Font.Color = clWindowText
    PrintHeader.Font.Height = -11
    PrintHeader.Font.Name = 'Tahoma'
    PrintHeader.Font.Style = []
    PrintFooter.VertMargin = 0.500000000000000000
    PrintFooter.Font.Charset = DEFAULT_CHARSET
    PrintFooter.Font.Color = clWindowText
    PrintFooter.Font.Height = -11
    PrintFooter.Font.Name = 'Tahoma'
    PrintFooter.Font.Style = []
    DoubleBuffered = False
    ParentDoubleBuffered = False
    RichEditVersion = 2
    Data = {
      810000007B5C727466315C616E73695C616E7369637067313235325C64656666
      305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C20
      4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
      5C706172645C66305C6673313620777744425269636845646974315C7061720D
      0A7D0D0A00}
  end
  object tblRecibos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnRecibos
    AfterDelete = tblRecibosAfterDelete
    AfterEdit = tblRecibosAfterEdit
    AfterInsert = tblRecibosAfterEdit
    AfterPost = tblRecibosAfterPost
    BeforeDelete = tblRecibosBeforeDelete
    BeforePost = tblRecibosBeforePost
    OnCalcFields = tblRecibosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from RECIBOS'
      'where'
      '  ID = :OLD_ID and'
      '  PARCELA = :OLD_PARCELA')
    InsertSQL.Strings = (
      'insert into RECIBOS'
      
        '  (ID, DATA, VALOR, VENCIMENTO, PAGAMENTO, OBS, MATERIAIS, SERVI' +
        'COS, MATERIAIS_COBRADO, '
      
        '   SERVICOS_COBRADO, HORAS, SALDO, ARQUITETO, CLIENTE, DESCONTO,' +
        ' PARCELA, '
      '   DESCRICAO)'
      'values'
      
        '  (:ID, :DATA, :VALOR, :VENCIMENTO, :PAGAMENTO, :OBS, :MATERIAIS' +
        ', :SERVICOS, '
      
        '   :MATERIAIS_COBRADO, :SERVICOS_COBRADO, :HORAS, :SALDO, :ARQUI' +
        'TETO, :CLIENTE, '
      '   :DESCONTO, :PARCELA, :DESCRICAO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  VALOR,'
      '  VENCIMENTO,'
      '  PAGAMENTO,'
      '  OBS,'
      '  MATERIAIS,'
      '  SERVICOS,'
      '  MATERIAIS_COBRADO,'
      '  SERVICOS_COBRADO,'
      '  HORAS,'
      '  SALDO,'
      '  ARQUITETO,'
      '  CLIENTE,'
      '  DESCONTO,'
      '  PARCELA,'
      '  DESCRICAO'
      'from RECIBOS '
      'where'
      '  ID = :ID and'
      '  PARCELA = :PARCELA')
    SelectSQL.Strings = (
      'SELECT * FROM RECIBOS ORDER BY ID DESC, PARCELA')
    ModifySQL.Strings = (
      'update RECIBOS'
      'set'
      '  ID = :ID,'
      '  DATA = :DATA,'
      '  VALOR = :VALOR,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  PAGAMENTO = :PAGAMENTO,'
      '  OBS = :OBS,'
      '  MATERIAIS = :MATERIAIS,'
      '  SERVICOS = :SERVICOS,'
      '  MATERIAIS_COBRADO = :MATERIAIS_COBRADO,'
      '  SERVICOS_COBRADO = :SERVICOS_COBRADO,'
      '  HORAS = :HORAS,'
      '  SALDO = :SALDO,'
      '  ARQUITETO = :ARQUITETO,'
      '  CLIENTE = :CLIENTE,'
      '  DESCONTO = :DESCONTO,'
      '  PARCELA = :PARCELA,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  ID = :OLD_ID and'
      '  PARCELA = :OLD_PARCELA')
    ParamCheck = True
    UniDirectional = False
    Left = 10
    Top = 16
    object tblRecibosID: TIntegerField
      FieldName = 'ID'
      Origin = '"RECIBOS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblRecibosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"RECIBOS"."DATA"'
    end
    object tblRecibosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"RECIBOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblRecibosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"RECIBOS"."VENCIMENTO"'
    end
    object tblRecibosPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"RECIBOS"."PAGAMENTO"'
    end
    object tblRecibosOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"RECIBOS"."OBS"'
      Size = 8
    end
    object tblRecibosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = '"RECIBOS"."CLIENTE"'
    end
    object tblRecibosMATERIAIS: TIBBCDField
      FieldName = 'MATERIAIS'
      Origin = '"RECIBOS"."MATERIAIS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblRecibosSERVICOS: TIBBCDField
      FieldName = 'SERVICOS'
      Origin = '"RECIBOS"."SERVICOS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblRecibosMATERIAIS_COBRADO: TIBBCDField
      FieldName = 'MATERIAIS_COBRADO'
      Origin = '"RECIBOS"."MATERIAIS_COBRADO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblRecibosSERVICOS_COBRADO: TIBBCDField
      FieldName = 'SERVICOS_COBRADO'
      Origin = '"RECIBOS"."SERVICOS_COBRADO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblRecibosHORAS: TIBStringField
      FieldName = 'HORAS'
      Origin = '"RECIBOS"."HORAS"'
      EditMask = '###:##;1; '
      Size = 10
    end
    object tblRecibosNOMEDOCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMEDOCLIENTE'
      LookupDataSet = tblClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'CLIENTE'
      Size = 30
      Lookup = True
    end
    object tblRecibosSALDO: TIBBCDField
      FieldName = 'SALDO'
      Origin = '"RECIBOS"."SALDO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblRecibosARQUITETO: TSmallintField
      FieldName = 'ARQUITETO'
      Origin = '"RECIBOS"."ARQUITETO"'
    end
    object tblRecibosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'RECIBOS.DESCONTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblRecibosSALDOABERTO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SALDOABERTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Calculated = True
    end
    object tblRecibosPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = 'RECIBOS.PARCELA'
      Required = True
    end
    object tblRecibosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'RECIBOS.DESCRICAO'
      Size = 50
    end
  end
  object dtsRecibos: TDataSource
    DataSet = tblRecibos
    Left = 10
    Top = 28
  end
  object trnRecibos: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 45
    Top = 10
  end
  object tblClientes: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnRecibos
    AfterScroll = tblClientesAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      
        'CODIGO, NOME, FANTASIA, CNPJ_CPF, INSCRICAOESTADUAL,ENDERECO,CID' +
        'ADE , pessoa'
      ''
      'FROM '
      'CLIENTES'
      ''
      'ORDER BY FANTASIA')
    ParamCheck = True
    UniDirectional = False
    Left = 80
    Top = 15
    object tblClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblClientesCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
      Origin = '"CLIENTES"."CNPJ_CPF"'
    end
    object tblClientesINSCRICAOESTADUAL: TIBStringField
      FieldName = 'INSCRICAOESTADUAL'
      Origin = '"CLIENTES"."INSCRICAOESTADUAL"'
    end
    object tblClientesENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Size = 50
    end
    object tblClientesCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 30
    end
    object tblClientesPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"CLIENTES"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object tblClientesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CLIENTES.NOME'
      Required = True
      Size = 60
    end
    object tblClientesFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = 'CLIENTES.FANTASIA'
      Size = 50
    end
  end
  object dtsClientes: TDataSource
    DataSet = tblClientes
    Left = 80
    Top = 25
  end
  object qryUltimoRecibo: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnRecibos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT MAX( ID ) AS ID FROM RECIBOS')
    Left = 115
    Top = 15
  end
  object dlgRecibo: TwwRecordViewDialog
    ControlType.Strings = (
      'CLIENTE;CustomEdit;edtCliente;F'
      'OBS;RichEdit;wwDBRichEdit1;F'
      'NOMEDOCLIENTE;CustomEdit;edtCliente;F'
      'ARQUITETO;CustomEdit;edtArquiteto;F'
      'ID;CustomEdit;edtId;F')
    DataSource = dtsRecibos
    BorderStyle = bsDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 500
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    Style = rvsHorizontal
    Options = [rvoHideNavigator, rvoUseCustomControls, rvoShortenEditBox, rvoModalForm, rvoEnterToTab, rvoConfirmCancel, rvoCloseIsCancel, rvoMaximizeMemoWidth, rvoUseDateTimePicker]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Caption = 'Manuten'#231#227'o de recibo'
    ReadOnlyColor = clSilver
    Selected.Strings = (
      'ID'#9'10'#9'N'#250'mero'#9'F'
      'PARCELA'#9'3'#9'Parc.'#9'F'
      'DATA'#9'10'#9'Data'#9'F'
      'VALOR'#9'10'#9'Valor'#9'F'
      'VENCIMENTO'#9'10'#9'Vencimento'#9'F'
      'PAGAMENTO'#9'10'#9'Pagamento'#9'F'
      '<New Line>'
      'NOMEDOCLIENTE'#9'50'#9'Cliente'#9'F'
      '<New Line>'
      'ARQUITETO'#9'50'#9'Arquiteto'#9'F'
      '<New Line>'
      'MATERIAIS'#9'15'#9'Valor dos materiais'#9'F'
      'SERVICOS'#9'15'#9'Valor dos servi'#231'os'#9'F'
      'MATERIAIS_COBRADO'#9'15'#9'Valor Mats. cobrados'#9'F'
      'SERVICOS_COBRADO'#9'15'#9'Valor Servi'#231'os Cobrados'#9'F'
      '<New Line>'
      'HORAS'#9'10'#9'Hrs.Trab.'#9'F'
      'DESCONTO'#9'19'#9'Desconto'#9'F'
      'SALDOABERTO'#9'15'#9'Saldo'#9'T'
      'DESCRICAO'#9'50'#9'Descri'#231#227'o'#9'F'
      'OBS'#9'10'#9'OBS'#9#9)
    NavigatorFlat = True
    Left = 145
    Top = 15
  end
  object tblArquitetos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnRecibos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      'CODIGO, NOME FROM ARQUITETOS ORDER BY NOME')
    ParamCheck = True
    UniDirectional = False
    Left = 180
    Top = 20
  end
  object dtsArquitetos: TDataSource
    DataSet = tblArquitetos
    Left = 180
    Top = 30
  end
  object sqlGravaBaixa: TIBSQL
    Database = frmPrincipal.idbInstalLux
    SQL.Strings = (
      'Insert into '
      'Pagamentos'
      '( Data, Recibo, Valor, Parcela )'
      'Values'
      '( :Data, :Recibo, :Valor, :Parcela )'
      '')
    Transaction = trnRecibos
    Left = 224
    Top = 24
  end
  object qryQt: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnRecibos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT COUNT(*) AS QT FROM RECIBOS WHERE ID = :ID')
    Left = 296
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object sqlDeletaPgtos: TIBSQL
    Database = frmPrincipal.idbInstalLux
    SQL.Strings = (
      
        'delete from pagamentos where recibo = :recibo and parcela = :par' +
        'cela')
    Transaction = trnRecibos
    Left = 256
    Top = 24
  end
  object sqlDeletaOS: TIBSQL
    Database = frmPrincipal.idbInstalLux
    SQL.Strings = (
      'update os set recibo = NULL , datadepagamento = NULL'
      'where os.recibo = :recibo')
    Transaction = trnRecibos
    Left = 224
    Top = 56
  end
  object qryValores: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnRecibos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'SUM( VALOR ) AS VALOR,'
      'SUM( SERVICOS_COBRADO ) AS SERVICOS,'
      'SUM( MATERIAIS_COBRADO ) AS MATERIAIS'
      ''
      'FROM RECIBOS'
      ''
      'WHERE ID = :ID')
    Left = 115
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qryValoresVALOR: TIBBCDField
      FieldName = 'VALOR'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qryValoresSERVICOS: TIBBCDField
      FieldName = 'SERVICOS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qryValoresMATERIAIS: TIBBCDField
      FieldName = 'MATERIAIS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
end
