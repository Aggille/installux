object frmFiltraOrcamentos: TfrmFiltraOrcamentos
  Left = 155
  Top = 102
  BorderStyle = bsDialog
  Caption = 'Selecionar or'#231'amentos'
  ClientHeight = 296
  ClientWidth = 611
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 97
    Top = 10
    Width = 69
    Height = 13
    Caption = 'Emiss'#227'o Inicial'
  end
  object Label2: TLabel
    Left = 227
    Top = 10
    Width = 64
    Height = 13
    Caption = 'Emiss'#227'o Final'
  end
  object Label3: TLabel
    Left = 352
    Top = 5
    Width = 66
    Height = 13
    Caption = 'Entrega inicial'
  end
  object Label4: TLabel
    Left = 482
    Top = 5
    Width = 59
    Height = 13
    Caption = 'Entrega final'
  end
  object Label5: TLabel
    Left = 352
    Top = 52
    Width = 42
    Height = 13
    Caption = 'Arquiteto'
  end
  object Label6: TLabel
    Left = 8
    Top = 52
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object Label7: TLabel
    Left = 8
    Top = 8
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object edtEmissaoInicial: TwwDBDateTimePicker
    Left = 97
    Top = 25
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
  object edtEmissaoFinal: TwwDBDateTimePicker
    Left = 227
    Top = 25
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Date = 2958465.000000000000000000
    Epoch = 1950
    ShowButton = True
    TabOrder = 2
  end
  object edtEntregaInicial: TwwDBDateTimePicker
    Left = 352
    Top = 25
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 3
  end
  object edtEntregaFinal: TwwDBDateTimePicker
    Left = 482
    Top = 25
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Date = 2958465.000000000000000000
    Epoch = 1950
    ShowButton = True
    TabOrder = 4
  end
  object edtcliente: TwwDBLookupCombo
    Left = 8
    Top = 71
    Width = 338
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'Nome'#9'F'
      'FANTASIA'#9'20'#9'Fantasia'#9'F'
      'CODIGO'#9'10'#9'C'#243'digo'#9'F')
    LookupTable = tblClientes
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 5
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object edtArquiteto: TwwDBLookupCombo
    Left = 352
    Top = 71
    Width = 251
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'Nome'#9'F'
      'CREA'#9'20'#9'CREA'#9'F'
      'CODIGO'#9'10'#9'C'#243'digo'#9'F')
    LookupTable = tblArquitetos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    TabOrder = 6
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object btnOk: TBitBtn
    Left = 528
    Top = 98
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 8
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
  object BitBtn2: TBitBtn
    Left = 447
    Top = 98
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 7
    OnClick = BitBtn2Click
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
  object grdItems: TwwDBGrid
    Left = 8
    Top = 129
    Width = 593
    Height = 156
    ControlType.Strings = (
      'PRODUTO;CustomEdit;edtProduto;F'
      'LOCAL;CustomEdit;edtAmbiente;F'
      'TIPO;CustomEdit;edtTipo;F'
      'NOMEDOAMBIENTE;CustomEdit;edtAmbiente;T'
      'NOMEDOPRODUTO;CustomEdit;edtNomedoProduto;F')
    Selected.Strings = (
      'NUMERO'#9'10'#9'N'#250'mero'#9'F'
      'EMISSAO'#9'10'#9'Emiss'#227'o'#9'F'
      'DATA_ENTREGA'#9'10'#9'Entrega'#9'F'
      'NOMEDOCLIENTE'#9'30'#9'Cliente'#9'F'
      'NOMEDOARQUITETO'#9'30'#9'Arquiteto'#9'F')
    IniAttributes.FileName = 'SGVWINDOWS.ini'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dtsOrcamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowInsert]
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 9
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = clInfoBk
  end
  object edtNumero: TSpinEdit
    Left = 8
    Top = 24
    Width = 83
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 120
    Top = 45
  end
  object tblClientes: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SelectSQL.Strings = (
      'Select Codigo, Nome, Fantasia from clientes order by Nome')
    Left = 155
    Top = 45
  end
  object tblArquitetos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SelectSQL.Strings = (
      'Select Codigo, Nome,Crea from arquitetos order by nome')
    Left = 190
    Top = 45
  end
  object dtsClientes: TDataSource
    DataSet = tblClientes
    Left = 155
    Top = 30
  end
  object dtsArquitetos: TDataSource
    DataSet = tblArquitetos
    Left = 190
    Top = 25
  end
  object qryOrcamento: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SQL.Strings = (
      'select  '
      ''
      'o.numero, o.cliente, o.arquiteto, o.data_entrega, o.emissao,'
      'c.nome as nomedocliente,'
      'a.nome as nomedoarquiteto'
      ''
      'from ORCAMENTOS o'
      ''
      ''
      'left join clientes c on c.codigo = o.cliente'
      'left join arquitetos a on a.codigo = c.arquiteto'
      ''
      'where '
      'o.emissao between :einicial and :efinal'
      'and'
      'o.data_entrega between :eninicial and :enfinal'
      'and'
      'o.cliente between :cinicial and :cfinal'
      'and'
      'o.arquiteto between  :ainicial and :afinal'
      'and'
      'o.numero between :ninicial and :nfinal')
    Left = 225
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'einicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'efinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'eninicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enfinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cinicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cfinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ainicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'afinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ninicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nfinal'
        ParamType = ptUnknown
      end>
    object qryOrcamentoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"ORCAMENTOS"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrcamentoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = '"ORCAMENTOS"."CLIENTE"'
    end
    object qryOrcamentoARQUITETO: TIntegerField
      FieldName = 'ARQUITETO'
      Origin = '"ORCAMENTOS"."ARQUITETO"'
    end
    object qryOrcamentoDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = '"ORCAMENTOS"."DATA_ENTREGA"'
    end
    object qryOrcamentoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"ORCAMENTOS"."EMISSAO"'
    end
    object qryOrcamentoNOMEDOCLIENTE: TIBStringField
      FieldName = 'NOMEDOCLIENTE'
      Origin = '"CLIENTES"."NOME"'
      Size = 60
    end
    object qryOrcamentoNOMEDOARQUITETO: TIBStringField
      FieldName = 'NOMEDOARQUITETO'
      Origin = '"ARQUITETOS"."NOME"'
      Size = 60
    end
  end
  object dtsOrcamento: TDataSource
    DataSet = qryOrcamento
    Left = 225
    Top = 25
  end
end
