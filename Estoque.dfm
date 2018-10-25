object frmEstoque: TfrmEstoque
  Left = 51
  Top = 143
  BorderStyle = bsToolWindow
  Caption = 'Manuten'#231#227'o do Estoque'
  ClientHeight = 348
  ClientWidth = 851
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
  object grdEstoque: TwwDBGrid
    Left = 0
    Top = 25
    Width = 851
    Height = 323
    ControlType.Strings = (
      'PRODUTO;CustomEdit;edtProduto;F'
      'NOMEDOPRODUTO;CustomEdit;edtNomedoProduto;F'
      'TIPODOCUMENTO;CustomEdit;edtTipoDocto;F'
      'TIPO;CustomEdit;edtTipo;F'
      'ID_LOCAL;CustomEdit;edtLocal;F')
    Selected.Strings = (
      'DATA'#9'11'#9'Data'
      'DOCUMENTO'#9'10'#9'Documento'
      'NOMEDOPRODUTO'#9'42'#9'Produto'
      'QUANTIDADE'#9'8'#9'Qtde.'
      'PRECO'#9'9'#9'Pre'#231'o'
      'TOTAL'#9'10'#9'Total'
      'TIPO'#9'11'#9'E/S'
      'NOMEDOLOCAL'#9'30'#9'Local')
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dtsEstoque
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowInsert]
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
    TitleLines = 1
    TitleButtons = False
    OnDblClick = grdEstoqueDblClick
    PaintOptions.AlternatingRowColor = clInfoBk
  end
  object wwDBNavigator1: TwwDBNavigator
    Left = 0
    Top = 0
    Width = 851
    Height = 25
    DataSource = dtsEstoque
    ImageList = frmPrincipal.ImageList1
    RepeatInterval.InitialDelay = 500
    RepeatInterval.Interval = 100
    Align = alTop
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
    object wwDBNavigator1FilterDialog: TwwNavButton
      Left = 225
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Ativa o filtro'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1FilterDialog'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsFilterDialog
    end
    object wwDBNavigator1LocateDialog: TwwNavButton
      Left = 250
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
      Index = 10
      Style = nbsLocateDialog
    end
    object wwDBNavigator1SearchDialog: TwwNavButton
      Left = 275
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
      Index = 11
      Style = nbsSearchDialog
    end
    object wwDBNavigator1Button1: TwwNavButton
      Left = 300
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Transfer'#234'ncia do estoque'
      ImageIndex = 17
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button1'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1Button1Click
      Index = 12
      Style = nbsCustom
    end
    object btnSair: TwwNavButton
      Left = 325
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Sair'
      ImageIndex = 4
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'btnSair'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = btnSairClick
      Index = 13
      Style = nbsCustom
    end
  end
  object edtProduto: TwwDBLookupCombo
    Left = 110
    Top = 210
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'BARRAS'#9'20'#9'C'#243'digo de Barras'#9'F')
    DataField = 'PRODUTO'
    DataSource = dtsEstoque
    LookupTable = tblProdutos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 4
    Visible = False
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnNotInList = edtProdutoNotInList
  end
  object edtNomedoProduto: TwwDBLookupCombo
    Left = 115
    Top = 240
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'NOME'#9'F')
    DataField = 'NOMEDOPRODUTO'
    DataSource = dtsEstoque
    LookupTable = tblProdutos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 6
    Visible = False
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnNotInList = edtProdutoNotInList
  end
  object edtTipo: TwwDBComboBox
    Left = 360
    Top = 211
    Width = 121
    Height = 21
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    AutoDropDown = True
    ShowMatchText = True
    DataField = 'TIPO'
    DataSource = dtsEstoque
    DropDownCount = 8
    HistoryList.FileName = 'SGVWINDOWS.ini'
    ItemHeight = 0
    Items.Strings = (
      'E-Entrada'#9'E'
      'S-Sa'#237'da'#9'S')
    Sorted = False
    TabOrder = 5
    UnboundDataType = wwDefault
    Visible = False
    OnExit = edtTipoExit
  end
  object edtFornecedor: TwwDBLookupCombo
    Left = 110
    Top = 178
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'60'#9'Fornecedor'#9'F')
    DataField = 'PRODUTO'
    DataSource = dtsEstoque
    LookupTable = tblFornecedores
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    Enabled = False
    TabOrder = 3
    Visible = False
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnNotInList = edtProdutoNotInList
  end
  object edtLocal: TwwDBLookupCombo
    Left = 360
    Top = 160
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'30'#9'Nome'#9'F')
    DataField = 'ID_LOCAL'
    DataSource = dtsEstoque
    LookupTable = tblLocais
    LookupField = 'ID_LOCAL'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 2
    Visible = False
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object tblEstoque: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnEstoque
    AfterEdit = tblEstoqueAfterEdit
    AfterInsert = tblEstoqueAfterEdit
    AfterPost = tblEstoqueAfterPost
    BeforePost = tblEstoqueBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ESTOQUE'
      'where'
      '  ESTOQUE = :OLD_ESTOQUE')
    InsertSQL.Strings = (
      'insert into ESTOQUE'
      '  (ESTOQUE, TIPODOCUMENTO, TIPO, PRECO, TOTAL, DOCUMENTO, DATA, '
      'QUANTIDADE, '
      '   PRODUTO, FORNECEDOR, ID_LOCAL)'
      'values'
      '  (:ESTOQUE, :TIPODOCUMENTO, :TIPO, :PRECO, :TOTAL, :DOCUMENTO, '
      ':DATA, '
      '   :QUANTIDADE, :PRODUTO, :FORNECEDOR, :ID_LOCAL)')
    RefreshSQL.Strings = (
      'Select '
      '  PRECO,'
      '  TOTAL,'
      '  ESTOQUE,'
      '  PRODUTO,'
      '  DOCUMENTO,'
      '  FORNECEDOR,'
      '  ID_LOCAL,'
      '  QUANTIDADE,'
      '  DATA,'
      '  TIPO,'
      '  TIPODOCUMENTO'
      'from ESTOQUE '
      'where'
      '  ESTOQUE = :ESTOQUE')
    SelectSQL.Strings = (
      
        'SELECT * FROM ESTOQUE ORDER BY DATA DESC, DOCUMENTO, TIPODOCUMEN' +
        'TO')
    ModifySQL.Strings = (
      'update ESTOQUE'
      'set'
      '  ESTOQUE = :ESTOQUE,'
      '  TIPODOCUMENTO = :TIPODOCUMENTO,'
      '  TIPO = :TIPO,'
      '  PRECO = :PRECO,'
      '  TOTAL = :TOTAL,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  DATA = :DATA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRODUTO = :PRODUTO,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  ID_LOCAL = :ID_LOCAL'
      'where'
      '  ESTOQUE = :OLD_ESTOQUE')
    ParamCheck = True
    UniDirectional = False
    Left = 15
    Top = 24
    object tblEstoqueDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 11
      FieldName = 'DATA'
      Origin = 'ESTOQUE.DATA'
    end
    object tblEstoqueDOCUMENTO: TIntegerField
      DisplayLabel = 'Documento'
      DisplayWidth = 10
      FieldName = 'DOCUMENTO'
      Origin = 'ESTOQUE.DOCUMENTO'
    end
    object tblEstoqueNOMEDOPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 42
      FieldKind = fkLookup
      FieldName = 'NOMEDOPRODUTO'
      LookupDataSet = tblProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PRODUTO'
      Size = 40
      Lookup = True
    end
    object tblEstoqueQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 8
      FieldName = 'QUANTIDADE'
      Origin = 'ESTOQUE.QUANTIDADE'
      DisplayFormat = '#####0'
      EditFormat = '#####0'
    end
    object tblEstoquePRECO: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 9
      FieldName = 'PRECO'
      Origin = 'ESTOQUE.PRECO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object tblEstoqueTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Origin = 'ESTOQUE.TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblEstoqueTIPO: TIBStringField
      DisplayLabel = 'E/S'
      DisplayWidth = 11
      FieldName = 'TIPO'
      Origin = 'ESTOQUE.TIPO'
      FixedChar = True
      Size = 1
    end
    object tblEstoqueNOMEDOLOCAL: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'NOMEDOLOCAL'
      LookupDataSet = tblLocais
      LookupKeyFields = 'ID_LOCAL'
      LookupResultField = 'NOME'
      KeyFields = 'ID_LOCAL'
      Size = 30
      Lookup = True
    end
    object tblEstoqueID_LOCAL: TIntegerField
      DisplayLabel = 'Local'
      DisplayWidth = 30
      FieldName = 'ID_LOCAL'
      Origin = 'ESTOQUE.ID_LOCAL'
      Visible = False
    end
    object tblEstoquePRODUTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRODUTO'
      Origin = 'ESTOQUE.PRODUTO'
      Visible = False
    end
    object tblEstoqueTIPODOCUMENTO: TIBStringField
      DisplayLabel = 'Tipo DOC.'
      DisplayWidth = 8
      FieldName = 'TIPODOCUMENTO'
      Origin = 'ESTOQUE.TIPODOCUMENTO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblEstoqueESTOQUE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE.ESTOQUE'
      Visible = False
    end
    object tblEstoqueFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'ESTOQUE.FORNECEDOR'
      Visible = False
    end
  end
  object tblProdutos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnEstoque
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      '  (CODIGO, NOME, SALDO)'
      'values'
      '  (:CODIGO, :NOME, :SALDO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  GRUPO,'
      '  UNIDADE,'
      '  PRECO,'
      '  ICMS,'
      '  IPI,'
      '  CUSTO,'
      '  ESTOQUEMINIMO,'
      '  TIPO,'
      '  SALDO,'
      '  PRATELEIRA'
      'from PRODUTOS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CODIGO, NOME , SALDO, BARRAS FROM PRODUTOS'
      'WHERE TIPO = '#39'1'#39'  AND INATIVO <> '#39'S'#39
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  SALDO = :SALDO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 40
    Top = 20
    object tblProdutosNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Required = True
      Size = 50
    end
    object tblProdutosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'PRODUTOS.CODIGO'
    end
    object tblProdutosSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'SALDO'
      Origin = 'PRODUTOS.SALDO'
    end
    object tblProdutosBARRAS: TIBStringField
      DisplayWidth = 20
      FieldName = 'BARRAS'
      Origin = 'PRODUTOS.BARRAS'
      Visible = False
    end
  end
  object dtsEstoque: TDataSource
    DataSet = tblEstoque
    Left = 10
    Top = 35
  end
  object dtsProdutos: TDataSource
    DataSet = tblProdutos
    Left = 40
    Top = 30
  end
  object trnEstoque: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 64
    Top = 4
  end
  object dlgEstoque: TwwRecordViewDialog
    ControlType.Strings = (
      'NOMEDOPRODUTO;CustomEdit;edtNomedoProduto;T'
      'TIPO;CustomEdit;edtTipo;F'
      'PRODUTO;CustomEdit;edtProduto;F'
      'FORNECEDOR;CustomEdit;edtFornecedor;F'
      'ID_LOCAL;CustomEdit;edtLocal;F')
    DataSource = dtsEstoque
    BorderStyle = bsToolWindow
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
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
    Caption = 'Estoque'
    ReadOnlyColor = 16776176
    Selected.Strings = (
      'DOCUMENTO'#9'10'#9'Documento'#9#9
      'TIPO'#9'11'#9'E/S'#9#9
      'PRODUTO'#9'20'#9'Produto'#9'F'
      'FORNECEDOR'#9'40'#9'Fornecedor'#9'F'
      'NOMEDOPRODUTO'#9'40'#9'Descri'#231#227'o'#9'T'
      'QUANTIDADE'#9'8'#9'Qtde.'#9#9
      'PRECO'#9'9'#9'Pre'#231'o'#9#9
      'TOTAL'#9'10'#9'Total'#9'T'
      'ID_LOCAL'#9'30'#9'Local'#9'F')
    NavigatorFlat = True
    Left = 120
    Top = 24
  end
  object tblFornecedores: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      'CODIGO, NOME '
      ''
      'FROM FORNECEDORES ORDER BY NOME')
    ParamCheck = True
    UniDirectional = False
    Left = 200
    Top = 24
  end
  object dtsFornecedores: TDataSource
    DataSet = tblFornecedores
    Left = 200
    Top = 40
  end
  object tblLocais: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'Select * from locais')
    ParamCheck = True
    UniDirectional = False
    Left = 240
    Top = 24
  end
  object dtsLocais: TDataSource
    DataSet = tblLocais
    Left = 240
    Top = 40
  end
  object edtSenha: TElInputDialog
    Caption = 'Senha Mestra'
    IsHTML = False
    Position = poScreenCenter
    Value = '13212313'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    Left = 648
    Top = 136
  end
end
