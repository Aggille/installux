object frmTransfEstoque: TfrmTransfEstoque
  Left = 177
  Top = 112
  BorderStyle = bsDialog
  Caption = 'Transfer'#234'ncias'
  ClientHeight = 177
  ClientWidth = 433
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 37
    Height = 13
    Caption = 'Produto'
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  object Label4: TLabel
    Left = 8
    Top = 80
    Width = 33
    Height = 13
    Caption = 'Origem'
  end
  object Label5: TLabel
    Left = 8
    Top = 104
    Width = 36
    Height = 13
    Caption = 'Destino'
  end
  object edtData: TwwDBDateTimePicker
    Left = 72
    Top = 8
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
  object edtProduto: TwwDBLookupCombo
    Left = 72
    Top = 32
    Width = 337
    Height = 21
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'Nome'#9'F'
      'CODIGO'#9'10'#9'C'#243'digo'#9'F'
      'SALDO'#9'10'#9'Saldo'#9'F')
    LookupTable = frmEstoque.tblProdutos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    Navigator = False
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object edtQtde: TwwDBSpinEdit
    Left = 72
    Top = 56
    Width = 121
    Height = 21
    Increment = 1.000000000000000000
    TabOrder = 2
    UnboundDataType = wwDefault
  end
  object edtOrigem: TwwDBLookupCombo
    Left = 72
    Top = 80
    Width = 337
    Height = 21
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'30'#9'Nome'#9'F')
    LookupTable = qryOrigem
    LookupField = 'ID_LOCAL'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    Navigator = False
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object edtDestino: TwwDBLookupCombo
    Left = 72
    Top = 104
    Width = 337
    Height = 21
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'30'#9'Nome'#9'F')
    LookupTable = qryDestino
    LookupField = 'ID_LOCAL'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    Navigator = False
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object BitBtn1: TBitBtn
    Left = 256
    Top = 136
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = BitBtn1Click
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
    Left = 336
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 6
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object ibInclui: TIBSQL
    Database = frmPrincipal.idbInstalLux
    ParamCheck = True
    SQL.Strings = (
      'INSERT INTO ESTOQUE'
      '('
      'TIPO,'
      'PRECO,'
      'TOTAL,'
      'PRODUTO,'
      'DOCUMENTO,'
      'ID_LOCAL,'
      'QUANTIDADE,'
      'DATA'
      ')'
      ''
      'VALUES'
      ''
      '('
      ':TIPO,'
      ':PRECO,'
      ':PRECO * :QUANTIDADE,'
      ':PRODUTO,'
      ':DOCUMENTO,'
      ':ID_LOCAL,'
      ':QUANTIDADE,'
      ':DATA'
      ')')
    Transaction = frmEstoque.trnEstoque
    Left = 72
    Top = 136
  end
  object qryOrigem: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = frmEstoque.trnEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM LOCAIS')
    Left = 112
    Top = 128
  end
  object qryDestino: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = frmEstoque.trnEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM LOCAIS')
    Left = 152
    Top = 128
  end
  object dtsOrygem: TDataSource
    DataSet = qryOrigem
    Left = 112
    Top = 144
  end
  object dtsDestino: TDataSource
    DataSet = qryDestino
    Left = 152
    Top = 144
  end
  object qryProduto: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = frmEstoque.trnEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      ''
      'CUSTO, PRECO'
      ''
      ' FROM PRODUTOS WHERE CODIGO = :PRODUTO')
    Left = 184
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object qryProdutoCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = 'PRODUTOS.CUSTO'
      Precision = 18
      Size = 2
    end
    object qryProdutoPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOS.PRECO'
      Precision = 18
      Size = 2
    end
  end
end
