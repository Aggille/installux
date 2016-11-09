object frmPendCli: TfrmPendCli
  Left = 72
  Top = 28
  BorderStyle = bsToolWindow
  Caption = 'Consulta pend'#234'ncias de clientes'
  ClientHeight = 469
  ClientWidth = 669
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
    Left = 315
    Top = 175
    Width = 83
    Height = 13
    Caption = 'Total de materiais'
  end
  object Label2: TLabel
    Left = 450
    Top = 175
    Width = 81
    Height = 13
    Caption = 'Total de servi'#231'os'
  end
  object Label3: TLabel
    Left = 555
    Top = 175
    Width = 102
    Height = 13
    Caption = 'Total das pend'#234'ncias'
  end
  object Label4: TLabel
    Left = 10
    Top = 220
    Width = 95
    Height = 13
    Caption = 'OS deste cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 10
    Top = 345
    Width = 106
    Height = 13
    Caption = 'Servi'#231'os desta OS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 5
    Top = 35
    Width = 133
    Height = 13
    Caption = 'Pend'#234'ncias de clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 7
    Top = 4
    Width = 75
    Height = 26
    Caption = 'Calcular'
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
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 5
    Top = 50
    Width = 651
    Height = 120
    Selected.Strings = (
      'NOME'#9'40'#9'Cliente'
      'SERVICOS'#9'10'#9'Vlr. Servi'#231'os'#9'F'#9'Valores'
      'MATERIAIS'#9'10'#9'Vlr. Materiais'#9'F'#9'Valores'
      'TOTAL'#9'10'#9'Valor Total'#9'F'#9'Valores'
      'HORAS'#9'15'#9'Total de horas'#9'F'
      'PGTO'#9'15'#9#218'ltimo pgto.'#9'F')
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dtsAux
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
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = 16250871
  end
  object edtMateriais: TCurrencyEdit
    Left = 280
    Top = 190
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 2
  end
  object edtServicos: TCurrencyEdit
    Left = 410
    Top = 190
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 3
  end
  object edtTotal: TCurrencyEdit
    Left = 535
    Top = 190
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 4
  end
  object wwDBGrid2: TwwDBGrid
    Left = 5
    Top = 235
    Width = 651
    Height = 106
    Selected.Strings = (
      'OS'#9'5'#9'OS'
      'DATA'#9'10'#9'Data'
      'CHEGADA'#9'8'#9'Chegada'
      'SAIDA'#9'6'#9'Sa'#237'da'
      'HORAS'#9'7'#9'Horas'
      'FUNCIONARIO'#9'29'#9'Funcion'#225'rio'
      'MATERIAIS'#9'10'#9'Materiais'
      'SERVICOS'#9'9'#9'Servi'#231'o'
      'TOTAL'#9'10'#9'Total')
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dtsOS
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = clInfoBk
  end
  object wwDBGrid3: TwwDBGrid
    Left = 5
    Top = 360
    Width = 656
    Height = 96
    Selected.Strings = (
      'PRODUTO'#9'10'#9'Produto'
      'NOME'#9'50'#9'Descri'#231#227'o'
      'QUANTIDADE'#9'10'#9'Qtde.'
      'PRECO'#9'14'#9'Unit'#225'rio'
      'TOTAL'#9'13'#9'Total')
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dtsItems
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 6
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
  object btnImprime: TBitBtn
    Left = 87
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    Enabled = False
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      22222200000000000222208888888880802200000000000008020888888BBB88
      0002088888877788080200000000000008800888888888808080200000000008
      0800220FFFFFFFF080802220F00000F000022220FFFFFFFF022222220F00000F
      022222220FFFFFFFF02222222000000000222222222222222222}
    TabOrder = 7
    OnClick = btnImprimeClick
  end
  object qryServico: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    OnCalcFields = qryServicoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'O.OS, O.DATA,   O.CHEGADA, O.SAIDA, O.DATADEPAGAMENTO,'
      
        'CAST( O.VALORCOBRADOMATERIAIS AS NUMERIC( 9,2 ) ) AS MATERIAIS,O' +
        '.CLIENTE,'
      'CAST( O.VALORCOBRADOSERVICOS AS NUMERIC( 9,2 ) ) AS SERVICOS ,'
      'CAST( O.VALORCOBRADO AS NUMERIC( 9 , 2 ) ) AS TOTAL,'
      'C.FANTASIA AS NOMEDOCLIENTE,'
      'F.QUANTIDADE'
      ''
      ''
      'FROM'
      'OS O'
      'INNER JOIN CLIENTES C ON ( O.CLIENTE = C.CODIGO )'
      'LEFT JOIN FUNCIONARIOS F ON ( O.FUNCIONARIO = F.CODIGO )'
      ''
      'WHERE '
      'VALORCOBRADO > 0 AND recibo IS NULL '
      ''
      ''
      ''
      'ORDER BY C.NOME DESC'
      '')
    Left = 302
    Top = 8
    object qryServicoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object qryServicoCHEGADA: TTimeField
      FieldName = 'CHEGADA'
      Origin = 'OS.CHEGADA'
      DisplayFormat = 't'
    end
    object qryServicoSAIDA: TTimeField
      FieldName = 'SAIDA'
      Origin = 'OS.SAIDA'
      DisplayFormat = 't'
    end
    object qryServicoDATADEPAGAMENTO: TDateField
      FieldName = 'DATADEPAGAMENTO'
      Origin = 'OS.DATADEPAGAMENTO'
    end
    object qryServicoMATERIAIS: TIBBCDField
      FieldName = 'MATERIAIS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryServicoSERVICOS: TIBBCDField
      FieldName = 'SERVICOS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryServicoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryServicoNOMEDOCLIENTE: TIBStringField
      FieldName = 'NOMEDOCLIENTE'
      Origin = 'CLIENTES.NOME'
      Required = True
      Size = 50
    end
    object qryServicoOS: TIntegerField
      FieldName = 'OS'
      Origin = 'OS.OS'
      Required = True
    end
    object qryServicoHORAS: TTimeField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'HORAS'
      DisplayFormat = 't'
      Calculated = True
    end
    object qryServicoTOTHORAS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTHORAS'
      Calculated = True
    end
    object qryServicoTOTMINUTOS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTMINUTOS'
      Calculated = True
    end
    object qryServicoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = '"OS"."CLIENTE"'
    end
    object qryServicoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"FUNCIONARIOS"."QUANTIDADE"'
    end
  end
  object dtsServico: TDataSource
    DataSet = qryServico
    Left = 305
  end
  object dtsAux: TDataSource
    DataSet = tblAux
    Left = 455
    Top = 5
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 185
    Top = 5
  end
  object qryPgto: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT CLIENTE, MAX( PAGAMENTO ) AS DATA FROM RECIBOS'
      ''
      'WHERE PAGAMENTO IS NOT NULL'
      'GROUP BY CLIENTE')
    Left = 220
    Top = 5
  end
  object dtsPgto: TDataSource
    DataSet = qryPgto
    Left = 230
    Top = 5
  end
  object qryOS: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    OnCalcFields = qryOSCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsAux
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'O.OS, O.DATA,   O.CHEGADA, O.SAIDA, O.DATADEPAGAMENTO,'
      
        'CAST( O.VALORCOBRADOMATERIAIS AS NUMERIC( 9,2 ) ) AS MATERIAIS,O' +
        '.CLIENTE,'
      'CAST( O.VALORCOBRADOSERVICOS AS NUMERIC( 9,2 ) ) AS SERVICOS ,'
      'CAST( O.VALORCOBRADO AS NUMERIC( 9 , 2 ) ) AS TOTAL,'
      'C.NOME AS NOMEDOCLIENTE,'
      'F.NOME AS FUNCIONARIO, F.QUANTIDADE'
      ''
      'FROM'
      'OS O'
      'INNER JOIN CLIENTES C ON ( O.CLIENTE = C.CODIGO )'
      'LEFT JOIN FUNCIONARIOS F ON ( O.FUNCIONARIO = F.CODIGO )'
      ''
      'WHERE '
      'O.CLIENTE = :CLIENTE AND'
      'VALORCOBRADO > 0 AND RECIBO IS NULL '
      ''
      ''
      'ORDER BY '
      'C.NOME, O.DATA, O.FUNCIONARIO')
    Left = 262
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
        Size = 4
      end>
    object IntegerField1: TIntegerField
      DisplayWidth = 5
      FieldName = 'OS'
      Origin = 'OS.OS'
      Required = True
    end
    object DateField1: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object TimeField1: TTimeField
      DisplayLabel = 'Chegada'
      DisplayWidth = 8
      FieldName = 'CHEGADA'
      Origin = 'OS.CHEGADA'
      DisplayFormat = 't'
    end
    object TimeField2: TTimeField
      DisplayLabel = 'Sa'#237'da'
      DisplayWidth = 6
      FieldName = 'SAIDA'
      Origin = 'OS.SAIDA'
      DisplayFormat = 't'
    end
    object TimeField3: TTimeField
      DisplayLabel = 'Horas'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'HORAS'
      DisplayFormat = 't'
      Calculated = True
    end
    object qryServicoFUNCIONARIO: TIBStringField
      DisplayLabel = 'Funcion'#225'rio'
      DisplayWidth = 29
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIOS.NOME'
      Size = 50
    end
    object IBBCDField1: TIBBCDField
      DisplayLabel = 'Materiais'
      DisplayWidth = 10
      FieldName = 'MATERIAIS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      DisplayLabel = 'Servi'#231'o'
      DisplayWidth = 9
      FieldName = 'SERVICOS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object DateField2: TDateField
      DisplayWidth = 10
      FieldName = 'DATADEPAGAMENTO'
      Origin = 'OS.DATADEPAGAMENTO'
      Visible = False
    end
    object IBStringField1: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOMEDOCLIENTE'
      Origin = 'CLIENTES.NOME'
      Required = True
      Visible = False
      Size = 50
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TOTHORAS'
      Visible = False
      Calculated = True
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TOTMINUTOS'
      Visible = False
      Calculated = True
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIENTE'
      Origin = '"OS"."CLIENTE"'
      Visible = False
    end
    object SmallintField1: TSmallintField
      DisplayWidth = 10
      FieldName = 'QUANTIDADE'
      Origin = '"FUNCIONARIOS"."QUANTIDADE"'
      Visible = False
    end
  end
  object dtsOS: TDataSource
    DataSet = qryOS
    Left = 265
  end
  object qryItems: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    OnCalcFields = qryServicoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsOS
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'S.PRODUTO, P.NOME, S.QUANTIDADE, S.PRECO, S.TOTAL'
      ''
      'FROM SERVICOS S'
      ''
      'INNER JOIN PRODUTOS P ON ( S.PRODUTO = P.CODIGO )'
      ''
      'WHERE '
      'S.OS = :OS')
    Left = 367
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OS'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryItemsPRODUTO: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 10
      FieldName = 'PRODUTO'
      Origin = '"SERVICOS"."PRODUTO"'
    end
    object qryItemsNOME: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = '"PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object qryItemsQUANTIDADE: TIntegerField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 10
      FieldName = 'QUANTIDADE'
      Origin = '"SERVICOS"."QUANTIDADE"'
    end
    object qryItemsPRECO: TIBBCDField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 14
      FieldName = 'PRECO'
      Origin = '"SERVICOS"."PRECO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryItemsTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 13
      FieldName = 'TOTAL'
      Origin = '"SERVICOS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dtsItems: TDataSource
    DataSet = qryItems
    Left = 380
    Top = 10
  end
  object rvConsPend: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = tblAux
    Left = 490
    Top = 35
  end
  object tblAux: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 490
    Top = 5
    object tblAuxNOME: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 40
      FieldName = 'NOME'
      Size = 40
    end
    object tblAuxSERVICOS: TCurrencyField
      DisplayLabel = 'Vlr. Servi'#231'os'
      DisplayWidth = 10
      FieldName = 'SERVICOS'
    end
    object tblAuxMATERIAIS: TCurrencyField
      DisplayLabel = 'Vlr. Materiais'
      DisplayWidth = 10
      FieldName = 'MATERIAIS'
    end
    object tblAuxTOTAL: TCurrencyField
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object tblAuxHORAS: TStringField
      Alignment = taRightJustify
      DisplayWidth = 5
      FieldName = 'HORAS'
      Size = 5
    end
    object tblAuxPGTO: TDateField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'PGTO'
      LookupDataSet = qryPgto
      LookupKeyFields = 'CLIENTE'
      LookupResultField = 'DATA'
      KeyFields = 'CLIENTE'
      Lookup = True
    end
    object tblAuxCLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIENTE'
      Visible = False
    end
  end
end
