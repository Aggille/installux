object frmServicos: TfrmServicos
  Left = 58
  Top = 126
  BorderStyle = bsToolWindow
  Caption = 'Ficha de servi'#231'o'
  ClientHeight = 353
  ClientWidth = 717
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
  object SpeedButton1: TSpeedButton
    Left = 552
    Top = 322
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      2222220000000000000220330000008803022033000000880302203300000088
      0302203300000000030220333333333333022033000000003302203088888888
      0302203088888888030220308888888803022030888888880302203088888888
      0002203088888888080220000000000000022222222222222222}
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 632
    Top = 322
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object Label5: TLabel
    Left = 288
    Top = 328
    Width = 191
    Height = 13
    Caption = 'CTRL + DEL = apaga lan'#231'amento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 95
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 84
      Height = 13
      Caption = 'Data da digita'#231#227'o'
    end
    object Label2: TLabel
      Left = 136
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Funcion'#225'rio'
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label4: TLabel
      Left = 280
      Top = 48
      Width = 42
      Height = 13
      Caption = 'Arquiteto'
    end
    object Label6: TLabel
      Left = 496
      Top = 8
      Width = 27
      Height = 13
      Caption = 'In'#237'cio'
    end
    object Label7: TLabel
      Left = 608
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Final'
    end
    object edtData: TwwDBDateTimePicker
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
    object edtCliente: TwwDBLookupCombo
      Left = 8
      Top = 64
      Width = 265
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'50'#9'NOME'#9'F')
      LookupTable = tblClientes
      LookupField = 'CODIGO'
      Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object BitBtn1: TBitBtn
      Left = 633
      Top = 63
      Width = 75
      Height = 25
      Caption = 'OK'
      Glyph.Data = {
        46050000424D460500000000000036040000280000000D000000110000000100
        08000000000010010000C30E0000C30E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
        60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
        B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
        1D007666280000450000013E450013286A006A39850085324A00040404000808
        08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
        5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
        840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
        0000000039009B00000000250000000049003B111100002F000000005D004517
        1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
        00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
        2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
        A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
        2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
        89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
        AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
        0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
        0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
        42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
        890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
        C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
        FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
        F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
        FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
        CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
        8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
        7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
        BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
        88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
        A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
        0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
        00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
        001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
        11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
        110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
        11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
        110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
        110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
        0F0F0F0F0F0F0F000000}
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object edtFuncionario: TwwDBLookupCombo
      Left = 136
      Top = 24
      Width = 353
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'50'#9'NOME'#9'F')
      LookupTable = tblFuncionarios
      LookupField = 'CODIGO'
      Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object edtArquiteto: TDBEdit
      Left = 280
      Top = 64
      Width = 345
      Height = 21
      DataField = 'NOME'
      DataSource = dtsArquitetos
      Enabled = False
      TabOrder = 5
    end
    object edtInicio: TMaskEdit
      Left = 496
      Top = 24
      Width = 104
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 2
      Text = '  :  '
    end
    object edtFinal: TMaskEdit
      Left = 608
      Top = 24
      Width = 104
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 3
      Text = '  :  '
    end
  end
  object grdServicos: TwwDBGrid
    Left = 0
    Top = 95
    Width = 717
    Height = 218
    ControlType.Strings = (
      'produto;CustomEdit;edtProduto;T'
      'ambiente;CustomEdit;edtAmbiente;F'
      'nomedoambiente;CustomEdit;edtAmbiente;F'
      'codigodoproduto;CustomEdit;edtProduto;F'
      'NomeDoProduto;CustomEdit;edtNomeDoProduto;F')
    Selected.Strings = (
      'codigodoproduto'#9'17'#9'C'#243'digo'#9#9
      'NomeDoProduto'#9'47'#9'Produto'#9#9
      'quantidade'#9'7'#9'Qtde.'#9#9
      'nomedoambiente'#9'40'#9'Ambiente'#9#9)
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dtsServicos
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 4
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
  object edtProduto: TwwDBLookupCombo
    Left = 92
    Top = 141
    Width = 233
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'BARRAS'#9'20'#9'C'#243'digo de Barras'#9'F')
    DataField = 'produto'
    DataSource = dtsServicos
    LookupTable = tblProdutos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnNotInList = edtProdutoNotInList
  end
  object edtAmbiente: TwwDBLookupCombo
    Left = 424
    Top = 168
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'DESCRICAO'#9'40'#9'DESCRICAO'#9'F')
    LookupTable = tblAmbientes
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object edtNomeDoProduto: TwwDBLookupCombo
    Left = 122
    Top = 191
    Width = 233
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'Nome'#9'F')
    DataField = 'produto'
    DataSource = dtsServicos
    LookupTable = tblProdutos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnNotInList = edtProdutoNotInList
  end
  object tblClientes: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT '
      'CODIGO, NOME, ARQUITETO '
      ''
      'FROM '
      'CLIENTES '
      ''
      'ORDER BY '
      'NOME')
    ParamCheck = True
    UniDirectional = False
    Left = 8
    Top = 304
  end
  object tblArquitetos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT '
      'CODIGO, NOME '
      ''
      'FROM ARQUITETOS'
      ''
      'WHERE CODIGO = :ARQUITETO')
    ParamCheck = True
    UniDirectional = False
    DataSource = dtsclientes
    Left = 40
    Top = 304
    object tblArquitetosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ARQUITETOS.CODIGO'
      Required = True
    end
    object tblArquitetosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ARQUITETOS.NOME'
      Required = True
      Size = 50
    end
  end
  object sqlServicos: TIBSQL
    Database = frmPrincipal.idbInstalLux
    SQL.Strings = (
      'INSERT INTO'
      'SERVICOS'
      '('
      'CLIENTE,'
      'ARQUITETO,'
      'DATA,'
      'HORACHEGADA,'
      'HORASAIDA,'
      'FUNCIONARIO,'
      'QUANTIDADE,'
      'AMBIENTE,'
      'PRODUTO,'
      'PRECO,'
      'TOTAL'
      ')'
      ''
      'VALUES'
      '('
      ':CLIENTE,'
      ':ARQUITETO,'
      ':DATA,'
      ':HORACHEGADA,'
      ':HORASAIDA,'
      ':FUNCIONARIO,'
      ':QUANTIDADE,'
      ':AMBIENTE,'
      ':PRODUTO,'
      ':PRECO,'
      ':TOTAL'
      ')')
    Transaction = IBTransaction1
    Left = 104
    Top = 304
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 200
    Top = 304
  end
  object dtsServicos: TDataSource
    DataSet = tblServicos
    Left = 168
    Top = 320
  end
  object tblProdutos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      'CODIGO, NOME, PRECO, SALDO, TIPO, UNIDADE, BARRAS'
      ''
      'FROM'
      'PRODUTOS'
      ''
      'WHERE INATIVO <> '#39'S'#39
      ''
      'ORDER BY TIPO DESC ,NOME')
    ParamCheck = True
    UniDirectional = False
    Left = 72
    Top = 304
    object tblProdutosNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Required = True
      Size = 50
    end
    object tblProdutosBARRAS: TIBStringField
      DisplayLabel = 'C'#243'digo de Barras'
      DisplayWidth = 20
      FieldName = 'BARRAS'
      Origin = 'PRODUTOS.BARRAS'
      Visible = False
    end
    object tblProdutosPRECO: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 19
      FieldName = 'PRECO'
      Origin = 'PRODUTOS.PRECO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblProdutosSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'SALDO'
      Origin = 'PRODUTOS.SALDO'
      Visible = False
    end
    object tblProdutosTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 1
      FieldName = 'TIPO'
      Origin = 'PRODUTOS.TIPO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblProdutosUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Origin = 'PRODUTOS.UNIDADE'
      Visible = False
      Size = 3
    end
    object tblProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PRODUTOS.CODIGO'
      Visible = False
    end
  end
  object tblAmbientes: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM AMBIENTES')
    ParamCheck = True
    UniDirectional = False
    Left = 136
    Top = 304
  end
  object tblFuncionarios: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM FUNCIONARIOS'
      'WHERE ( INATIVO <> '#39'S'#39' OR INATIVO IS NULL )'
      'ORDER BY NOME')
    ParamCheck = True
    UniDirectional = False
    Left = 232
    Top = 304
    object tblFuncionariosNOME: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'FUNCIONARIOS.NOME'
      Size = 50
    end
    object tblFuncionariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'FUNCIONARIOS.CODIGO'
      Required = True
      Visible = False
    end
  end
  object dtsclientes: TDataSource
    DataSet = tblClientes
    Left = 8
    Top = 320
  end
  object dtsArquitetos: TDataSource
    DataSet = tblArquitetos
    Left = 40
    Top = 312
  end
  object tblServicos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 304
    object tblServicosproduto: TIntegerField
      FieldName = 'produto'
      OnValidate = tblServicoscodigodoprodutoValidate
    end
    object tblServicosquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object tblServicoshorachegada: TTimeField
      FieldName = 'horachegada'
    end
    object tblServicoshorasaida: TTimeField
      FieldName = 'horasaida'
    end
    object tblServicosambiente: TIntegerField
      FieldName = 'ambiente'
    end
    object tblServicosnomedoambiente: TStringField
      FieldName = 'nomedoambiente'
      Size = 50
    end
    object tblServicosnomedoproduto: TStringField
      FieldName = 'nomedoproduto'
      Size = 50
    end
    object tblServicoscodigodoproduto: TIntegerField
      FieldName = 'codigodoproduto'
    end
  end
end
