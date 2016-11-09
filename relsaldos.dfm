object frmRelSaldos: TfrmRelSaldos
  Left = 153
  Top = 105
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de saldos'
  ClientHeight = 174
  ClientWidth = 351
  Color = clInfoBk
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
  object Label4: TLabel
    Left = 10
    Top = 90
    Width = 88
    Height = 13
    Caption = 'Grupo de produtos'
  end
  object edtSoSaldo: TCheckBox
    Left = 10
    Top = 15
    Width = 301
    Height = 17
    Caption = 'Imprimir somente produtos com saldo maior que 0'
    TabOrder = 0
  end
  object edtMinimo: TCheckBox
    Left = 10
    Top = 43
    Width = 326
    Height = 17
    Caption = 'Imprimir somente produtos com saldo abaixo do estoque m'#237'nimo'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 185
    Top = 129
    Width = 75
    Height = 25
    Hint = 'Imprimir'
    Caption = 'OK'
    TabOrder = 4
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
    Left = 265
    Top = 129
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
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
  object edtOrdem: TCheckBox
    Left = 11
    Top = 69
    Width = 326
    Height = 17
    Caption = 'Ordenar por prateleira'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object edtGrupo: TwwDBLookupCombo
    Left = 10
    Top = 105
    Width = 336
    Height = 21
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'Nome'#9'F')
    LookupTable = qryGrupos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
    Navigator = False
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object qryGrupos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPOSDEPRODUTOS order by NOME')
    Left = 185
    Top = 20
    object qryGruposNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = '"GRUPOSDEPRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object qryGruposCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = '"GRUPOSDEPRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  object dtsGrupos: TDataSource
    DataSet = qryGrupos
    Left = 195
    Top = 20
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 140
    Top = 20
  end
end
