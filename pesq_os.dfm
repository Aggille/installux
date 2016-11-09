object frmPesqOs: TfrmPesqOs
  Left = 0
  Top = 0
  Caption = 'Pesquisa de OS'
  ClientHeight = 318
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 96
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 164
      Top = 10
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 350
      Top = 10
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object Arquiteto: TLabel
      Left = 10
      Top = 35
      Width = 45
      Height = 13
      Caption = 'Arquiteto'
    end
    object Label4: TLabel
      Left = 291
      Top = 34
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label5: TLabel
      Left = 10
      Top = 10
      Width = 69
      Height = 13
      Caption = 'N'#250'mero da OS'
    end
    object edtInicio: TwwDBDateTimePicker
      Left = 223
      Top = 7
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object edtFinal: TwwDBDateTimePicker
      Left = 415
      Top = 7
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object edtArquiteto: TwwDBLookupCombo
      Left = 89
      Top = 34
      Width = 196
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'40'#9'Nome'#9'F'
        'CIDADE'#9'40'#9'Cidade'#9'F'
        'CODIGO'#9'10'#9'C'#243'digo'#9'F')
      LookupTable = qryArquitetos
      LookupField = 'CODIGO'
      Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object edtCliente: TwwDBLookupCombo
      Left = 330
      Top = 34
      Width = 206
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'40'#9'Nome'#9'F'
        'CIDADE'#9'30'#9'Cidade'#9'F'
        'CODIGO'#9'10'#9'C'#243'digo'#9'F')
      LookupTable = qryClientes
      LookupField = 'CODIGO'
      Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object edtOs: TwwDBSpinEdit
      Left = 89
      Top = 7
      Width = 69
      Height = 21
      Increment = 1.000000000000000000
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object btnPesquisa: TBitBtn
      Left = 380
      Top = 61
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 5
      OnClick = btnPesquisaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnOk: TBitBtn
      Left = 461
      Top = 61
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 6
      OnClick = btnOkClick
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
      NumGlyphs = 2
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 96
    Width = 551
    Height = 222
    Selected.Strings = (
      'OS'#9'7'#9'OS'
      'DATA'#9'10'#9'Data'
      'VALOR'#9'10'#9'Valor'
      'NOMEDOCLIENTE'#9'29'#9'Cliente'
      'NOMEDOARQUITETO'#9'28'#9'Arquiteto')
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dtsOs
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 16250871
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 220
    Top = 45
  end
  object qryClientes: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SQL.Strings = (
      'SELECT'
      'CODIGO, NOME, CIDADE'
      ''
      'FROM CLIENTES'
      ''
      'ORDER BY NOME')
    Left = 190
    Top = 45
    object qryClientesNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object qryClientesCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 30
    end
    object qryClientesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qryOs: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SQL.Strings = (
      'SELECT'
      'O.DATA, O.OS, O.VALOR, '
      'C.NOME AS NOMEDOCLIENTE,'
      'A.NOME AS NOMEDOARQUITETO'
      ''
      'FROM OS O'
      ''
      'LEFT JOIN CLIENTES C ON  ( C.CODIGO = O.CLIENTE )'
      'LEFT JOIN ARQUITETOS A ON ( A.CODIGO = O.ARQUITETO )'
      ''
      'WHERE'
      ''
      'O.OS BETWEEN  :OINICIAL AND :OFINAL'
      'AND'
      'O.DATA BETWEEN :INICIO AND :FINAL'
      'AND'
      'COALESCE( O.CLIENTE , 0 )  BETWEEN :CINICIAL AND :CFINAL'
      'AND'
      'COALESCE( O.ARQUITETO ,0) BETWEEN :AINICIAL AND :AFINAL'
      ''
      ''
      'ORDER BY O.DATA DESC'
      '')
    Left = 125
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AFINAL'
        ParamType = ptUnknown
      end>
    object qryOsOS: TIntegerField
      DisplayWidth = 7
      FieldName = 'OS'
      Origin = '"OS"."OS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOsDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = '"OS"."DATA"'
    end
    object qryOsVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'VALOR'
      Origin = '"OS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryOsNOMEDOCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 29
      FieldName = 'NOMEDOCLIENTE'
      Origin = '"CLIENTES"."NOME"'
      Size = 60
    end
    object qryOsNOMEDOARQUITETO: TIBStringField
      DisplayLabel = 'Arquiteto'
      DisplayWidth = 28
      FieldName = 'NOMEDOARQUITETO'
      Origin = '"ARQUITETOS"."NOME"'
      Size = 60
    end
  end
  object qryArquitetos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SQL.Strings = (
      'SELECT'
      'CODIGO, NOME, CIDADE'
      ''
      'FROM '
      'ARQUITETOS '
      ''
      'ORDER BY NOME')
    Left = 160
    Top = 45
    object qryArquitetosNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'NOME'
      Origin = '"ARQUITETOS"."NOME"'
      Required = True
      Size = 60
    end
    object qryArquitetosCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Origin = '"ARQUITETOS"."CIDADE"'
      Required = True
      Size = 40
    end
    object qryArquitetosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = '"ARQUITETOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtsOs: TDataSource
    DataSet = qryOs
    Left = 125
    Top = 75
  end
  object dtsArquitetos: TDataSource
    DataSet = qryArquitetos
    Left = 160
    Top = 75
  end
  object dtsClientes: TDataSource
    DataSet = qryClientes
    Left = 195
    Top = 75
  end
end
