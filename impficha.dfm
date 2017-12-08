object frmImpficha: TfrmImpficha
  Left = 218
  Top = 45
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o da ficha do cliente'
  ClientHeight = 329
  ClientWidth = 770
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 15
    Width = 88
    Height = 13
    Caption = 'Valor dos Servi'#231'os'
  end
  object Label2: TLabel
    Left = 155
    Top = 15
    Width = 88
    Height = 13
    Caption = 'Valor dos materiais'
  end
  object Label3: TLabel
    Left = 10
    Top = 60
    Width = 128
    Height = 13
    Caption = 'Valor cobrado dos servicos'
  end
  object Label4: TLabel
    Left = 150
    Top = 60
    Width = 130
    Height = 13
    Caption = 'Valor cobrado dos materiais'
  end
  object Label5: TLabel
    Left = 10
    Top = 105
    Width = 103
    Height = 13
    Caption = 'Nome do responsavel'
  end
  object Label6: TLabel
    Left = 10
    Top = 152
    Width = 100
    Height = 13
    Caption = 'Descri'#231#227'o do Recibo'
  end
  object edtServicos: TCurrencyEdit
    Left = 10
    Top = 30
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 0
  end
  object edtMateriais: TCurrencyEdit
    Left = 155
    Top = 30
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    Enabled = False
    TabOrder = 1
  end
  object edtServicoscobrados: TCurrencyEdit
    Left = 10
    Top = 75
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 2
  end
  object edtMateriaisCobrados: TCurrencyEdit
    Left = 155
    Top = 75
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    AutoSize = False
    TabOrder = 3
  end
  object edtResponsavel: TwwDBComboBox
    Left = 10
    Top = 120
    Width = 266
    Height = 21
    ShowButton = True
    Style = csDropDown
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    ShowMatchText = True
    DropDownCount = 8
    HistoryList.Section = 'REPONSAVEL'
    HistoryList.FileName = 'INSTALLUX.ini'
    ItemHeight = 0
    Sorted = False
    TabOrder = 4
    UnboundDataType = wwDefault
  end
  object BitBtn1: TBitBtn
    Left = 607
    Top = 301
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
    ModalResult = 1
    TabOrder = 9
  end
  object BitBtn2: TBitBtn
    Left = 687
    Top = 301
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
    ModalResult = 2
    NumGlyphs = 2
    TabOrder = 10
  end
  object edtOBS: TMemo
    Left = 10
    Top = 200
    Width = 752
    Height = 95
    TabOrder = 8
  end
  object edtGeraRecibo: TCheckBox
    Left = 285
    Top = 125
    Width = 97
    Height = 17
    Caption = 'Gerar recibo'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object edtImprimeRecibo: TCheckBox
    Left = 400
    Top = 125
    Width = 97
    Height = 17
    Caption = 'Emitir Recibo'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object edtDescricao: TEdit
    Left = 10
    Top = 168
    Width = 752
    Height = 21
    MaxLength = 50
    TabOrder = 7
    Text = 'Servicos Prestados'
  end
end
