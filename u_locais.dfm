object frmLocais: TfrmLocais
  Left = 20
  Top = 71
  BorderStyle = bsToolWindow
  Caption = 'Locais de estoque'
  ClientHeight = 285
  ClientWidth = 391
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
    Width = 325
    Height = 25
    DataSource = dtsLocais
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
    object wwDBNavigator1Button: TwwNavButton
      Left = 300
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
      Index = 12
      Style = nbsCustom
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 25
    Width = 391
    Height = 260
    DisableThemes = False
    Selected.Strings = (
      'NOME'#9'46'#9'Nome'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dtsLocais
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
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
  object tblLocais: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnLocais
    AfterDelete = tblLocaisAfterPost
    AfterPost = tblLocaisAfterPost
    BeforePost = tblLocaisBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LOCAIS'
      'where'
      '  ID_LOCAL = :OLD_ID_LOCAL')
    InsertSQL.Strings = (
      'insert into LOCAIS'
      '  (ID_LOCAL, NOME)'
      'values'
      '  (:ID_LOCAL, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_LOCAL,'
      '  NOME'
      'from LOCAIS '
      'where'
      '  ID_LOCAL = :ID_LOCAL')
    SelectSQL.Strings = (
      'SELECT * FROM LOCAIS ORDER BY ID_LOCAL')
    ModifySQL.Strings = (
      'update LOCAIS'
      'set'
      '  ID_LOCAL = :ID_LOCAL,'
      '  NOME = :NOME'
      'where'
      '  ID_LOCAL = :OLD_ID_LOCAL')
    Left = 320
    Top = 24
    object tblLocaisNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 46
      FieldName = 'NOME'
      Origin = 'LOCAIS.NOME'
      Size = 30
    end
    object tblLocaisID_LOCAL: TIntegerField
      DefaultExpression = '0'
      DisplayWidth = 10
      FieldName = 'ID_LOCAL'
      Origin = 'LOCAIS.ID_LOCAL'
      Visible = False
    end
  end
  object trnLocais: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 352
    Top = 32
  end
  object dtsLocais: TDataSource
    DataSet = tblLocais
    Left = 296
    Top = 24
  end
end
