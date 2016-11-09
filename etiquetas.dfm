object frmEtiqueta: TfrmEtiqueta
  Left = 162
  Top = 16
  BorderStyle = bsToolWindow
  Caption = 'Etiquetas'
  ClientHeight = 364
  ClientWidth = 467
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 467
    Height = 364
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabStop = False
    ExplicitHeight = 365
    object TabSheet1: TTabSheet
      Caption = 'Etiquetas de clientes'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 337
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 283
        Height = 73
        Caption = 'Clientes que tenham comprado entre :'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 27
          Height = 13
          Caption = 'In'#237'cio'
        end
        object Label2: TLabel
          Left = 144
          Top = 24
          Width = 22
          Height = 13
          Caption = 'Final'
        end
        object edtInicio: TwwDBDateTimePicker
          Left = 8
          Top = 40
          Width = 129
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 0
        end
        object edtFinal: TwwDBDateTimePicker
          Left = 144
          Top = 40
          Width = 121
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 293
        Top = 8
        Width = 153
        Height = 121
        Caption = 'Com vendas maior que :'
        TabOrder = 2
        object Label3: TLabel
          Left = 8
          Top = 24
          Width = 82
          Height = 13
          Caption = 'Valor das vendas'
        end
        object edtVendas: TCurrencyEdit
          Left = 8
          Top = 40
          Width = 129
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 136
        Width = 443
        Height = 65
        Caption = 'Dados diversos'
        TabOrder = 3
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object edtCidade: TEdit
          Left = 8
          Top = 32
          Width = 423
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 208
        Width = 448
        Height = 123
        Caption = 'Medidas da etiqueta ( em MM )'
        TabOrder = 4
        object Label7: TLabel
          Left = 8
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Altura'
        end
        object Label8: TLabel
          Left = 175
          Top = 24
          Width = 64
          Height = 13
          Caption = 'Etiq. por linha'
        end
        object Label9: TLabel
          Left = 94
          Top = 24
          Width = 36
          Height = 13
          Caption = 'Largura'
        end
        object Label10: TLabel
          Left = 7
          Top = 69
          Width = 61
          Height = 13
          Caption = 'Margem esq.'
        end
        object Label12: TLabel
          Left = 172
          Top = 69
          Width = 86
          Height = 13
          Caption = 'Espa'#231'o entre etiq.'
        end
        object Label13: TLabel
          Left = 89
          Top = 69
          Width = 61
          Height = 13
          Caption = 'Margem sup.'
        end
        object BitBtn1: TBitBtn
          Left = 285
          Top = 92
          Width = 75
          Height = 25
          Caption = 'OK'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000CE0E0000D80E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
            22222200000000000222208888888880802200000000000008020888888BBB88
            0002088888877788080200000000000008800888888888808080200000000008
            0800220FFFFFFFF080802220F00000F000022220FFFFFFFF022222220F00000F
            022222220FFFFFFFF02222222000000000222222222222222222}
          TabOrder = 6
          OnClick = BitBtn1Click
        end
        object edtAltura: TRxSpinEdit
          Left = 8
          Top = 40
          Width = 80
          Height = 21
          ValueType = vtFloat
          Value = 123.000000000000000000
          TabOrder = 0
        end
        object edtLargura: TRxSpinEdit
          Left = 92
          Top = 40
          Width = 80
          Height = 21
          ValueType = vtFloat
          Value = 667.000000000000000000
          TabOrder = 1
        end
        object edtEtiqPorLinha: TRxSpinEdit
          Left = 175
          Top = 40
          Width = 80
          Height = 21
          ValueType = vtFloat
          Value = 3.000000000000000000
          TabOrder = 2
        end
        object edtMargemEsq: TRxSpinEdit
          Left = 7
          Top = 85
          Width = 80
          Height = 21
          ValueType = vtFloat
          Value = 4.800000000000000000
          TabOrder = 3
        end
        object edtMargemSup: TRxSpinEdit
          Left = 89
          Top = 85
          Width = 80
          Height = 21
          ValueType = vtFloat
          Value = 12.700000000000000000
          TabOrder = 4
        end
        object edtLinhasEntreEtiq: TRxSpinEdit
          Left = 172
          Top = 85
          Width = 80
          Height = 21
          ValueType = vtFloat
          TabOrder = 5
        end
        object BitBtn2: TBitBtn
          Left = 365
          Top = 92
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
          TabOrder = 7
          OnClick = BitBtn2Click
        end
      end
      object qrpEtiqueta: TQuickRep
        Left = 16
        Top = 416
        Width = 816
        Height = 1056
        DataSet = qryClientes
        Description.Strings = (
          'Etiquetas de endere'#231'amento')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 3
        Page.Orientation = poPortrait
        Page.PaperSize = Letter
        Page.Continuous = False
        Page.Values = (
          20.000000000000000000
          2794.000000000000000000
          140.000000000000000000
          2159.000000000000000000
          80.000000000000000000
          50.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = 'Etiquetas de endere'#231'amento'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsMaximized
        PreviewWidth = 500
        PreviewHeight = 500
        PrevShowThumbs = False
        PrevShowSearch = False
        PrevInitialZoom = qrZoomToWidth
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object qrbEtiqueta: TQRBand
          Left = 30
          Top = 53
          Width = 255
          Height = 96
          AlignToBottom = False
          TransparentBand = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            254.000000000000000000
            674.687500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 8
            Top = 7
            Width = 234
            Height = 17
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              18.520833333333330000
              619.125000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = qryClientes
            DataField = 'NOME'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 6
          end
          object QRDBText2: TQRDBText
            Left = 8
            Top = 26
            Width = 234
            Height = 11
            Size.Values = (
              29.104166666666670000
              21.166666666666670000
              68.791666666666670000
              619.125000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = qryClientes
            DataField = 'ENDERECO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 6
          end
          object QRDBText3: TQRDBText
            Left = 8
            Top = 50
            Width = 234
            Height = 12
            Size.Values = (
              31.750000000000000000
              21.166666666666670000
              132.291666666666700000
              619.125000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = qryClientes
            DataField = 'BAIRRO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 6
          end
          object QRDBText4: TQRDBText
            Left = 8
            Top = 80
            Width = 93
            Height = 12
            Size.Values = (
              31.750000000000000000
              21.166666666666670000
              211.666666666666700000
              246.062500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = qryClientes
            DataField = 'CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            OnPrint = QRDBText4Print
            ParentFont = False
            Transparent = False
            WordWrap = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 6
          end
          object QRDBText5: TQRDBText
            Left = 108
            Top = 80
            Width = 23
            Height = 12
            Size.Values = (
              31.750000000000000000
              285.750000000000000000
              211.666666666666700000
              60.854166666666670000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = qryClientes
            DataField = 'ESTADO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 6
          end
          object QRDBText6: TQRDBText
            Left = 8
            Top = 65
            Width = 234
            Height = 12
            Size.Values = (
              31.750000000000000000
              21.166666666666670000
              171.979166666666700000
              619.125000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = qryClientes
            DataField = 'CIDADE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 6
          end
        end
      end
      object edtTipo: TRadioGroup
        Left = 8
        Top = 88
        Width = 281
        Height = 41
        Caption = 'Tipo de cadastro'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Clientes'
          'Arquitetos')
        TabOrder = 1
      end
    end
  end
  object qryClientes: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      
        'sum( os.valorcobrado ) as valor, max( data ) as data, os.cliente' +
        ','
      'c.nome, c.endereco, c.cidade, c.estado, c.bairro, c.cep'
      ''
      'FROM OS'
      ''
      'INNER JOIN CLIENTES C ON ( C.CODIGO = OS.CLIENTE )'
      ''
      
        'GROUP BY os.cliente, c.nome, c.endereco, c.cidade, c.estado, c.b' +
        'airro, c.cep'
      ''
      ''
      'HAVING'
      'max( data ) between :inicio and :final AND'
      'sum( valorcobrado ) >= :valor AND'
      'c.cidade containing :cidade AND'
      'c.cep <> '#39#39' AND c.endereco <> '#39#39' AND c.cidade <> '#39#39
      ''
      'ORDER BY NOME')
    Left = 212
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'final'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cidade'
        ParamType = ptUnknown
      end>
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Left = 248
    Top = 16
  end
end
