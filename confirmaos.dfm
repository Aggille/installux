object frmConfirmaOS: TfrmConfirmaOS
  Left = 34
  Top = 81
  BorderStyle = bsDialog
  Caption = 'Confirma'#231#227'o da OS'
  ClientHeight = 179
  ClientWidth = 578
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 70
    Width = 102
    Height = 13
    Caption = 'Valor Total da OS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 105
    Width = 62
    Height = 13
    Caption = 'Respons'#225'vel'
    Color = clMoneyGreen
    ParentColor = False
  end
  object Label4: TLabel
    Left = 10
    Top = 5
    Width = 105
    Height = 13
    Caption = 'Valor dos servi'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 10
    Top = 30
    Width = 108
    Height = 13
    Caption = 'Valor dos materiais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 10
    Top = 55
    Width = 241
    Height = 11
    Shape = bsBottomLine
    Style = bsRaised
  end
  object Label6: TLabel
    Left = 285
    Top = 5
    Width = 155
    Height = 13
    Caption = 'Valor cobrado dos servi'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 285
    Top = 30
    Width = 158
    Height = 13
    Caption = 'Valor cobrado dos materiais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 285
    Top = 70
    Width = 80
    Height = 13
    Caption = 'Valor cobrado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 285
    Top = 55
    Width = 281
    Height = 11
    Shape = bsBottomLine
    Style = bsRaised
  end
  object edtValor: TDBEdit
    Left = 125
    Top = 70
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'VALOR'
    DataSource = frmOS.dtsOS
    Enabled = False
    ReadOnly = True
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 490
    Top = 120
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
  object edtMateriais: TDBEdit
    Left = 125
    Top = 30
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'VALORMATERIAIS'
    DataSource = frmOS.dtsOS
    Enabled = False
    ReadOnly = True
    TabOrder = 0
  end
  object edtServicos: TDBEdit
    Left = 125
    Top = 5
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'VALORSERVICOS'
    DataSource = frmOS.dtsOS
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object edtValorCobradoServicos: TDBEdit
    Left = 445
    Top = 5
    Width = 121
    Height = 21
    DataField = 'VALORCOBRADOSERVICOS'
    DataSource = frmOS.dtsOS
    TabOrder = 3
    OnExit = edtValorCobradoServicosExit
  end
  object edtValorCobradoMateriais: TDBEdit
    Left = 445
    Top = 30
    Width = 121
    Height = 21
    DataField = 'VALORCOBRADOMATERIAIS'
    DataSource = frmOS.dtsOS
    TabOrder = 4
    OnExit = edtValorCobradoServicosExit
  end
  object edtValorCobrado: TDBEdit
    Left = 445
    Top = 70
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'VALORCOBRADO'
    DataSource = frmOS.dtsOS
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object edtResponsavel: TwwDBComboBox
    Left = 10
    Top = 120
    Width = 476
    Height = 21
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    AutoDropDown = True
    ShowMatchText = True
    DropDownCount = 8
    HistoryList.Section = 'REPONSAVEL'
    HistoryList.FileName = 'INSTALLUX.ini'
    ItemHeight = 0
    Sorted = False
    TabOrder = 6
    UnboundDataType = wwDefault
  end
  object edtSalvar: TCheckBox
    Left = 10
    Top = 150
    Width = 146
    Height = 17
    Caption = 'Salvar como figura'
    TabOrder = 7
  end
end
