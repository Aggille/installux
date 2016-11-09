object frmReajuste: TfrmReajuste
  Left = 125
  Top = 64
  BorderStyle = bsDialog
  Caption = 'Reajuste de pre'#231'o'
  ClientHeight = 95
  ClientWidth = 334
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
    Width = 86
    Height = 13
    Caption = 'Selecione o grupo'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 110
    Height = 13
    Caption = 'Informe o % de reajuste'
  end
  object edtGrupo: TwwDBLookupCombo
    Left = 8
    Top = 24
    Width = 321
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'50'#9'NOME'#9'F')
    LookupTable = tblGrupos
    LookupField = 'CODIGO'
    Options = [loColLines, loRowLines, loTitles]
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object edtPercentual: TRxCalcEdit
    Left = 8
    Top = 64
    Width = 113
    Height = 21
    AutoSize = False
    DisplayFormat = ',0.00'
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 64
    Width = 75
    Height = 25
    Caption = 'OK'
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object tblGrupos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    SelectSQL.Strings = (
      'Select * from GRUPOSDEPRODUTOS')
    Left = 224
    Top = 48
  end
  object dtsGrupos: TDataSource
    DataSet = tblGrupos
    Left = 224
    Top = 64
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 256
    Top = 64
  end
  object sqlAtualiza: TIBSQL
    Database = frmPrincipal.idbInstalLux
    SQL.Strings = (
      'UPDATE PRODUTOS'
      'SET PRECO_ANT = PRECO,'
      'ULT_ALT_PRECO = '#39'NOW'#39','
      'PRECO = PRECO * ( 1+( :REAJUSTE/100 ) )'
      ''
      ''
      'WHERE'
      ''
      'GRUPO BETWEEN :GRUPOINICIAL AND :GRUPOFINAL')
    Transaction = IBTransaction1
    Left = 296
    Top = 64
  end
end
