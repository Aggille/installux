object frmValor: TfrmValor
  Left = 49
  Top = 93
  BorderStyle = bsDialog
  Caption = 'Valor cobrado'
  ClientHeight = 123
  ClientWidth = 669
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LMDLabel1: TLMDLabel
    Left = 0
    Top = 0
    Width = 669
    Height = 29
    Bevel.Mode = bmCustom
    FontFX.LightDepth = 0
    FontFX.ShadowDepth = 3
    FontFX.LightColor = clInfoBk
    FontFX.ShadowColor = clBlack
    FontFX.Style = tdShadow
    Align = alTop
    Alignment = agCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MultiLine = True
    Options = []
    ParentFont = False
    Caption = 'Valores do or'#231'amento'
  end
  object Label1: TLabel
    Left = 35
    Top = 40
    Width = 101
    Height = 13
    Caption = 'Valor de m'#227'o de obra'
  end
  object Label2: TLabel
    Left = 195
    Top = 40
    Width = 71
    Height = 13
    Caption = 'Valor de pe'#231'as'
  end
  object Label3: TLabel
    Left = 285
    Top = 40
    Width = 115
    Height = 13
    Caption = 'Vlr.Cobrado de Materiais'
  end
  object Label4: TLabel
    Left = 560
    Top = 40
    Width = 92
    Height = 13
    Caption = 'Valor a ser cobrado'
  end
  object Label14: TLabel
    Left = 430
    Top = 40
    Width = 96
    Height = 13
    Caption = 'Vlr.Cobrado de M.O.'
  end
  object RxDBCalcEdit1: TRxDBCalcEdit
    Left = 15
    Top = 60
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'TOTALDEMAODEOBRA'
    DataSource = frmOrcamentos.dtsOrcamentos
    ReadOnly = True
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0.00'
    NumGlyphs = 2
    TabOrder = 0
  end
  object RxDBCalcEdit2: TRxDBCalcEdit
    Left = 145
    Top = 60
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'TOTALDEPECAS'
    DataSource = frmOrcamentos.dtsOrcamentos
    ReadOnly = True
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0.00'
    NumGlyphs = 2
    TabOrder = 1
  end
  object RxDBCalcEdit3: TRxDBCalcEdit
    Left = 280
    Top = 60
    Width = 121
    Height = 21
    DataField = 'VALORCOBRADOPECAS'
    DataSource = frmOrcamentos.dtsOrcamentos
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0.00'
    NumGlyphs = 2
    TabOrder = 2
  end
  object RxDBCalcEdit4: TRxDBCalcEdit
    Left = 535
    Top = 60
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'VALORCOBRADO'
    DataSource = frmOrcamentos.dtsOrcamentos
    ReadOnly = True
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0.00'
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 580
    Top = 93
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
    TabOrder = 5
  end
  object RxDBCalcEdit5: TRxDBCalcEdit
    Left = 405
    Top = 60
    Width = 121
    Height = 21
    DataField = 'VALORCOBRADOMAODEOBRA'
    DataSource = frmOrcamentos.dtsOrcamentos
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0.00'
    NumGlyphs = 2
    TabOrder = 3
  end
end
