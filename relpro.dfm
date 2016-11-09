object frmRelPro: TfrmRelPro
  Left = 92
  Top = 115
  BorderStyle = bsToolWindow
  Caption = 'Listagem cadastral de produos'
  ClientHeight = 80
  ClientWidth = 200
  Color = 16776176
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
  object edtOrdem: TRadioGroup
    Left = 0
    Top = 0
    Width = 200
    Height = 40
    Align = alTop
    Caption = 'Ordem do relat'#243'rio'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Afab'#233'tica'
      'Num'#233'rica')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 27
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      22222200000000000222208888888880802200000000000008020888888BBB88
      0002088888877788080200000000000008800888888888808080200000000008
      0800220FFFFFFFF080802220F00000F000022220FFFFFFFF022222220F00000F
      022222220FFFFFFFF02222222000000000222222222222222222}
  end
  object BitBtn2: TBitBtn
    Left = 107
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
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
  object qryProdutos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 16
    Top = 56
    object qryProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Required = True
      Size = 50
    end
    object qryProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'PRODUTOS.GRUPO'
    end
    object qryProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTOS.UNIDADE'
      Size = 3
    end
    object qryProdutosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOS.PRECO'
      Precision = 18
      Size = 2
    end
    object qryProdutosICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'PRODUTOS.ICMS'
      Precision = 9
      Size = 2
    end
    object qryProdutosIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = 'PRODUTOS.IPI'
      Precision = 9
      Size = 2
    end
    object qryProdutosCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = 'PRODUTOS.CUSTO'
      Precision = 18
      Size = 2
    end
    object qryProdutosESTOQUEMINIMO: TIBBCDField
      FieldName = 'ESTOQUEMINIMO'
      Origin = 'PRODUTOS.ESTOQUEMINIMO'
      Precision = 18
      Size = 4
    end
    object qryProdutosTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'PRODUTOS.TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryProdutosSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'PRODUTOS.SALDO'
    end
    object qryProdutosPRATELEIRA: TIBStringField
      FieldName = 'PRATELEIRA'
      Origin = 'PRODUTOS.PRATELEIRA'
      Size = 10
    end
    object qryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PRODUTOS.CODIGO'
    end
    object qryProdutosBARRAS: TIBStringField
      FieldName = 'BARRAS'
      Origin = 'PRODUTOS.BARRAS'
    end
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 48
    Top = 56
  end
end
