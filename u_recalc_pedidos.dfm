object frmRecalcPedidos: TfrmRecalcPedidos
  Left = 195
  Top = 212
  BorderStyle = bsDialog
  Caption = 'Recalcular pedidos'
  ClientHeight = 65
  ClientWidth = 506
  Color = clBtnFace
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
  object lmdProgresso: TLMDProgressFill
    Left = 8
    Top = 8
    Width = 193
    Height = 20
    Bevel.StyleOuter = bvLowered
    Bevel.Mode = bmCustom
    BrushBackColor = clMaroon
    Color = clWhite
    Caption = 'Processando'
    FillObject.Style = sfGradient
    FillObject.Gradient.Color = clRed
    FillObject.Gradient.ColorCount = 128
    FillObject.Gradient.Style = gstHorizontal
    OptionsText = toPercent
    ParentColor = False
  end
  object DBText1: TDBText
    Left = 136
    Top = 40
    Width = 65
    Height = 17
    DataField = 'Numero'
    DataSource = dtsPedidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 129
    Height = 13
    Caption = 'Recalculando pedido: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 216
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object tblPedidos: TTable
    DatabaseName = 'shoes'
    Filtered = True
    DefaultIndex = False
    TableName = 'Pedidos.DB'
    Left = 320
    Top = 8
  end
  object tblItens: TTable
    DatabaseName = 'shoes'
    IndexName = 'iPedidoEmpresa'
    MasterFields = 'Numero;Empresa'
    MasterSource = dtsPedidos
    TableName = 'ItemsDePedidos.DB'
    Left = 352
    Top = 8
  end
  object dtsPedidos: TDataSource
    DataSet = tblPedidos
    Left = 320
    Top = 24
  end
  object dtsItens: TDataSource
    DataSet = tblItens
    Left = 352
    Top = 24
  end
end
