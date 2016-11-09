object frmObs: TfrmObs
  Left = 74
  Top = 100
  BorderStyle = bsToolWindow
  Caption = 'Observa'#231#245'es'
  ClientHeight = 246
  ClientWidth = 516
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
    Width = 300
    Height = 25
    DataSource = dtsObs
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
    object wwDBNavigator1Post: TwwNavButton
      Left = 225
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Grava as alter'#231#245'es'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Post'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsPost
    end
    object wwDBNavigator1Cancel: TwwNavButton
      Left = 250
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Cancela as altera'#231#245'es'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Cancel'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 10
      Style = nbsCancel
    end
    object wwDBNavigator1Button: TwwNavButton
      Left = 275
      Top = 0
      Width = 25
      Height = 25
      ImageIndex = 4
      NumGlyphs = 1
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Button'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      OnClick = wwDBNavigator1ButtonClick
      Index = 11
      Style = nbsCustom
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 25
    Width = 516
    Height = 221
    DisableThemes = False
    ControlType.Strings = (
      'INATIVO;CheckBox;S;N')
    Selected.Strings = (
      'OBS'#9'50'#9'Observa'#231#227'o'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dtsObs
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
    PaintOptions.AlternatingRowColor = 16776176
  end
  object tblObs: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    AfterDelete = tblObsAfterPost
    AfterPost = tblObsAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from OBSERVACOES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into OBSERVACOES'
      '  (ID, OBS)'
      'values'
      '  (:ID, :OBS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  OBS'
      'from OBSERVACOES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM OBSERVACOES ORDER BY OBS')
    ModifySQL.Strings = (
      'update OBSERVACOES'
      'set'
      '  ID = :ID,'
      '  OBS = :OBS'
      'where'
      '  ID = :OLD_ID')
    Left = 280
    Top = 8
    object tblObsOBS: TIBStringField
      DisplayLabel = 'Observa'#231#227'o'
      DisplayWidth = 50
      FieldName = 'OBS'
      Origin = 'OBSERVACOES.OBS'
      Size = 50
    end
    object tblObsID: TIntegerField
      DefaultExpression = '`'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'OBSERVACOES.ID'
      Visible = False
    end
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 312
    Top = 8
  end
  object dtsObs: TDataSource
    DataSet = tblObs
    Left = 264
    Top = 8
  end
end
