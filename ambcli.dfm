object frmAmbcli: TfrmAmbcli
  Left = 150
  Top = 112
  BorderStyle = bsDialog
  Caption = 'Ambientes por cliente'
  ClientHeight = 501
  ClientWidth = 604
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
  object DBText1: TDBText
    Left = 0
    Top = 0
    Width = 604
    Height = 17
    Align = alTop
    DataField = 'NOME'
    DataSource = frmClientes.dtsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 592
  end
  object Label1: TLabel
    Left = 5
    Top = 25
    Width = 158
    Height = 16
    Caption = 'Ambientes dispon'#237'veis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 320
    Top = 25
    Width = 167
    Height = 16
    Caption = 'Ambientes deste cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnInclui: TSpeedButton
    Left = 260
    Top = 90
    Width = 71
    Height = 22
    Hint = 'Inclui ambiente neste cliente'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFF333333333333000333333333
      3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
      3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
      0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
      BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
      33337777773FF733333333333300033333333333337773333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btnIncluiClick
  end
  object btnDelete: TSpeedButton
    Left = 260
    Top = 125
    Width = 71
    Height = 22
    Hint = 'Retira este ambiente deste cliente'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333333333333333333333333333FF333333333333
      3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
      E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
      E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
      E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
      000033333373FF77777733333330003333333333333777333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btnDeleteClick
  end
  object grdAmbCli: TwwDBGrid
    Left = 353
    Top = 47
    Width = 240
    Height = 446
    Selected.Strings = (
      'NOMEDOAMBIENTE'#9'40'#9'NOMEDOAMBIENTE'#9#9)
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = dtsAmbCli
    KeyOptions = []
    Options = [dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    OnDblClick = grdAmbCliDblClick
    PaintOptions.AlternatingRowColor = clScrollBar
  end
  object grdAmbientes: TListView
    Left = 0
    Top = 45
    Width = 246
    Height = 451
    Columns = <
      item
        Caption = 'Nome do Ambiente'
        Width = 180
      end
      item
        Caption = 'C'#243'digo'
      end>
    FlatScrollBars = True
    GridLines = True
    HotTrack = True
    HotTrackStyles = [htHandPoint, htUnderlineCold, htUnderlineHot]
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = grdAmbientesDblClick
  end
  object BitBtn1: TBitBtn
    Left = 260
    Top = 460
    Width = 75
    Height = 25
    Caption = 'OK'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 2
  end
  object tblAmbcli: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = frmOrcamentos.trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from amb_clientes'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into amb_clientes'
      '  (ID, CLIENTE, AMBIENTE)'
      'values'
      '  (:ID, :CLIENTE, :AMBIENTE)')
    SelectSQL.Strings = (
      'SELECT *'
      ''
      'FROM amb_clientes'
      ''
      'INNER JOIN AMBIENTES A ON A.CODIGO = AMB_CLIENTES.AMBIENTE'
      ''
      'WHERE CLIENTE = :codigo'
      ''
      ''
      'ORDER BY A.descricao')
    ModifySQL.Strings = (
      'update amb_clientes'
      'set'
      '  ID = :ID,'
      '  CLIENTE = :CLIENTE,'
      '  AMBIENTE = :AMBIENTE'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    DataSource = frmClientes.dtsClientes
    Left = 80
    object tblAmbcliNOMEDOAMBIENTE: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'NOMEDOAMBIENTE'
      LookupDataSet = tblAmbientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'AMBIENTE'
      Size = 40
      Lookup = True
    end
    object tblAmbcliAMBIENTE: TSmallintField
      DisplayWidth = 10
      FieldName = 'AMBIENTE'
      Origin = '"AMB_CLIENTES"."AMBIENTE"'
      Visible = False
    end
    object tblAmbcliID: TIntegerField
      DefaultExpression = '0'
      FieldName = 'ID'
      Origin = '"AMB_CLIENTES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object tblAmbcliCLIENTE: TSmallintField
      FieldName = 'CLIENTE'
      Origin = '"AMB_CLIENTES"."CLIENTE"'
      Visible = False
    end
  end
  object tblAmbientes: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = frmOrcamentos.trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM AMBIENTES ORDER BY DESCRICAO')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 125
    object tblAmbientesDESCRICAO: TIBStringField
      DisplayWidth = 40
      FieldName = 'DESCRICAO'
      Origin = '"AMBIENTES"."DESCRICAO"'
      Size = 40
    end
    object tblAmbientesCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = '"AMBIENTES"."CODIGO"'
      Visible = False
    end
  end
  object dtsAmbCli: TDataSource
    DataSet = tblAmbcli
    Left = 80
    Top = 10
  end
  object dtsAmbientes: TDataSource
    DataSet = tblAmbientes
    Left = 120
    Top = 10
  end
end
