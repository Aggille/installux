object frmProcuraProdutos: TfrmProcuraProdutos
  Left = 171
  Top = 138
  BorderStyle = bsDialog
  Caption = 'Procura produtos'
  ClientHeight = 343
  ClientWidth = 551
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 102
    Height = 13
    Caption = 'Descri'#231#227'o do produto'
  end
  object edtNome: TEdit
    Left = 10
    Top = 30
    Width = 286
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 0
  end
  object Pesquisar: TBitBtn
    Left = 300
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = PesquisarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777700000777770000070F000777770F00070F000777770F
      0007000000070000000700F000000F00000700F000700F00000700F000700F00
      00077000000000000077770F00070F0007777700000700000777777000777000
      77777770F07770F0777777700077700077777777777777777777}
  end
  object wwDBGrid1: TwwDBGrid
    Left = 10
    Top = 75
    Width = 536
    Height = 221
    DisableThemes = False
    Selected.Strings = (
      'BARRAS'#9'16'#9'C'#243'digo'
      'NOME'#9'50'#9'Descri'#231#227'o'
      'PRATELEIRA'#9'7'#9'Prateleira'
      'SALDO'#9'7'#9'Saldo')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dtsProdutos
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 16250871
  end
  object BitBtn1: TBitBtn
    Left = 375
    Top = 305
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 3
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
    Left = 455
    Top = 305
    Width = 75
    Height = 25
    Caption = 'Cancela'
    TabOrder = 4
    Kind = bkCancel
  end
  object qryProdutos: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      'BARRAS, NOME, PRATELEIRA, PRECO, SALDO'
      ''
      'from'
      'PRODUTOS'
      ''
      'where'
      'UPPER( NOME  ) CONTAINING :NOME'
      ''
      'order by '
      'NOME')
    Left = 10
    Top = 50
    ParamData = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
      end>
  end
  object dtsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 25
    Top = 50
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 60
    Top = 50
  end
end
