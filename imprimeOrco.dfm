object frmImporc: TfrmImporc
  Left = 90
  Top = 41
  BorderStyle = bsDialog
  Caption = 'Or'#231'amento'
  ClientHeight = 223
  ClientWidth = 213
  Color = clMoneyGreen
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
    Left = 15
    Top = 65
    Width = 138
    Height = 13
    Caption = 'Respons'#225'vel pelo or'#231'amento'
  end
  object edtServicos: TCheckBox
    Left = 15
    Top = 15
    Width = 174
    Height = 17
    Caption = 'Imprimir pre'#231'os dos servi'#231'os'
    Checked = True
    State = cbChecked
    TabOrder = 0
  end
  object edtPecas: TCheckBox
    Left = 15
    Top = 40
    Width = 175
    Height = 17
    Caption = 'Imprimir pre'#231'os dos materiais'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 125
    Top = 190
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
    TabOrder = 4
  end
  object edtTipo: TRadioGroup
    Left = 15
    Top = 108
    Width = 186
    Height = 66
    Caption = 'Tipo'
    ItemIndex = 0
    Items.Strings = (
      'Or'#231'amento '
      'Ordem de Servi'#231'o')
    TabOrder = 3
  end
  object edtResponsavel: TwwDBComboBox
    Left = 15
    Top = 80
    Width = 181
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
    TabOrder = 2
    UnboundDataType = wwDefault
  end
end
