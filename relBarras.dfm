object frmRelBarras: TfrmRelBarras
  Left = 307
  Top = 99
  BorderStyle = bsToolWindow
  Caption = 'C'#243'digos de barras'
  ClientHeight = 65
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblMsg: TLabel
    Left = 70
    Top = 45
    Width = 167
    Height = 13
    AutoSize = False
  end
  object BitBtn1: TBitBtn
    Left = 15
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      22222200000000000222208888888880802200000000000008020888888BBB88
      0002088888877788080200000000000008800888888888808080200000000008
      0800220FFFFFFFF080802220F00000F000022220FFFFFFFF022222220F00000F
      022222220FFFFFFFF02222222000000000222222222222222222}
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 175
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Sair'
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
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 95
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Padronizar'
    TabOrder = 1
    OnClick = BitBtn3Click
  end
  object tblProdutos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Produtos'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into Produtos'
      '  (CODIGO, NOME, BARRAS, PRECO)'
      'values'
      '  (:CODIGO, :NOME, :BARRAS, :PRECO)')
    SelectSQL.Strings = (
      'Select '
      'Codigo, Nome, Barras, Preco, tipo'
      ''
      'from '
      'Produtos'
      ''
      'where'
      'Barras is not null'
      ''
      'order by'
      'TIPO,NOME')
    ModifySQL.Strings = (
      'update Produtos'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  BARRAS = :BARRAS,'
      '  PRECO = :PRECO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 40
    Top = 5
    object tblProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object tblProdutosBARRAS: TIBStringField
      FieldName = 'BARRAS'
      Origin = '"PRODUTOS"."BARRAS"'
    end
    object tblProdutosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"PRODUTOS"."PRECO"'
      Precision = 18
      Size = 2
    end
    object tblProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblProdutosTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PRODUTOS"."TIPO"'
      FixedChar = True
      Size = 1
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 75
    Top = 5
  end
  object rvCodBarras: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = tblProdutos
    Left = 120
    Top = 5
  end
end
