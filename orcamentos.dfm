object frmOrcamentos: TfrmOrcamentos
  Left = 17
  Top = 50
  ActiveControl = edtEmissao
  BorderStyle = bsToolWindow
  Caption = 'Or'#231'amentos'
  ClientHeight = 523
  ClientWidth = 794
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
  object pagOrcamento: TPageControl
    Left = 0
    Top = 0
    Width = 794
    Height = 523
    ActivePage = tabOrcamento
    Align = alClient
    TabOrder = 0
    TabStop = False
    object tabPesquisa: TTabSheet
      Caption = 'Pesquisa'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 786
        Height = 106
        Align = alTop
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 0
        object Label11: TLabel
          Left = 8
          Top = 8
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label12: TLabel
          Left = 97
          Top = 10
          Width = 69
          Height = 13
          Caption = 'Emiss'#227'o Inicial'
        end
        object Label14: TLabel
          Left = 227
          Top = 10
          Width = 64
          Height = 13
          Caption = 'Emiss'#227'o Final'
        end
        object Label15: TLabel
          Left = 352
          Top = 5
          Width = 66
          Height = 13
          Caption = 'Entrega inicial'
        end
        object Label16: TLabel
          Left = 482
          Top = 5
          Width = 59
          Height = 13
          Caption = 'Entrega final'
        end
        object Label17: TLabel
          Left = 8
          Top = 52
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object Label19: TLabel
          Left = 352
          Top = 52
          Width = 42
          Height = 13
          Caption = 'Arquiteto'
        end
        object edtNumeroPesquisa: TSpinEdit
          Left = 8
          Top = 24
          Width = 83
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
        end
        object edtEmissaoInicial: TwwDBDateTimePicker
          Left = 97
          Top = 25
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
        object edtEmissaoFinal: TwwDBDateTimePicker
          Left = 227
          Top = 25
          Width = 121
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Date = 2958465.000000000000000000
          Epoch = 1950
          ShowButton = True
          TabOrder = 2
        end
        object edtEntregaInicial: TwwDBDateTimePicker
          Left = 352
          Top = 25
          Width = 121
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 3
        end
        object edtEntregaFinal: TwwDBDateTimePicker
          Left = 482
          Top = 25
          Width = 121
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Date = 2958465.000000000000000000
          Epoch = 1950
          ShowButton = True
          TabOrder = 4
        end
        object edtArquitetoPesquisa: TwwDBLookupCombo
          Left = 352
          Top = 71
          Width = 251
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NOME'#9'50'#9'Nome'#9'F'
            'CREA'#9'20'#9'CREA'#9'F'
            'CODIGO'#9'10'#9'C'#243'digo'#9'F')
          LookupTable = qryArquitetosPesquisa
          LookupField = 'CODIGO'
          Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
          TabOrder = 7
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
        end
        object btnPesquisa: TBitBtn
          Left = 612
          Top = 66
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333FF3FF3333333333CC30003333333333773777333333333C33
            3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
            33003377333337F33377333333333C333300333F333337F33377339333333C33
            3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
            330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
            330077F377F337F33377993399333C33330077FF773337F33377399993333C33
            33333777733337F333FF333333333C33300033333333373FF7773333333333CC
            3000333333333377377733333333333333333333333333333333}
          NumGlyphs = 2
          TabOrder = 5
          OnClick = btnPesquisaClick
        end
        object edtClientePesquisa: TwwDBLookupCombo
          Left = 8
          Top = 71
          Width = 338
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NOME'#9'60'#9'Nome'#9'F'
            'FANTASIA'#9'50'#9'Fantasia'#9'F'
            'CODIGO'#9'10'#9'C'#243'digo'#9'F')
          LookupTable = qryClientesPesquisa
          LookupField = 'NOME'
          Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
          TabOrder = 6
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
        end
      end
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 106
        Width = 786
        Height = 165
        Selected.Strings = (
          'NUMERO'#9'10'#9'N'#250'mero'
          'NOMEDOCLIENTE'#9'31'#9'Cliente'
          'NOMEDOARQUITETO'#9'20'#9'Arquiteto'
          'EMISSAO'#9'15'#9'Emiss'#227'o'
          'VALORCOBRADOPECAS'#9'14'#9'Valor Cobr.P'#231's'
          'VALORCOBRADOMAODEOBRA'#9'13'#9'Vlr.Cobr.Serv.'
          'TOTAL'#9'15'#9'Valor Total')
        IniAttributes.FileName = 'SGVWINDOWS.ini'
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dtsOrcamentosPesquisa
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ReadOnly = True
        TabOrder = 1
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
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 271
        Width = 786
        Height = 224
        ControlType.Strings = (
          'PRODUTO;CustomEdit;edtProduto;F'
          'LOCAL;CustomEdit;edtAmbiente;F'
          'TIPO;CustomEdit;edtTipo;T')
        Selected.Strings = (
          'NOMEDOPRODUTO'#9'52'#9'Produto'#9'F'
          'QUANTIDADE'#9'6'#9'Qtde.'#9'F'
          'UNIDADE'#9'4'#9'UN'#9#9
          'PRECOUNITARIO'#9'9'#9'Pre'#231'o'#9'F'
          'PRECOTOTAL'#9'9'#9'Total'#9'T'
          'TIPO'#9'17'#9'Tipo'#9'F'
          'NOMEDOAMBIENTE'#9'22'#9'Ambiente'#9'F')
        IniAttributes.FileName = 'SGVWINDOWS.ini'
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dtsItensPesquisa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowInsert]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
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
        UseTFields = False
        PaintOptions.AlternatingRowColor = clInfoBk
      end
    end
    object tabOrcamento: TTabSheet
      Caption = 'Or'#231'amento'
      ImageIndex = 1
      OnShow = tabOrcamentoShow
      object Label1: TLabel
        Left = 5
        Top = 40
        Width = 67
        Height = 13
        Caption = 'Or'#231'amento N'#186
      end
      object Label4: TLabel
        Left = 78
        Top = 40
        Width = 79
        Height = 13
        Caption = 'Data de emiss'#227'o'
      end
      object Label2: TLabel
        Left = 173
        Top = 40
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label3: TLabel
        Left = 558
        Top = 40
        Width = 42
        Height = 13
        Caption = 'Arquiteto'
      end
      object Label5: TLabel
        Left = 443
        Top = 40
        Width = 77
        Height = 13
        Caption = 'Data de entrega'
        Visible = False
      end
      object Label13: TLabel
        Left = 3
        Top = 333
        Width = 87
        Height = 13
        Caption = 'Efetivado em : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 708
        Top = 461
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object Label10: TLabel
        Left = 3
        Top = 352
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object btnNovo: TDBSpeedButton
        Left = 664
        Top = 326
        Width = 58
        Height = 44
        Caption = 'Novo'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        DataButtonType = nbInsert
        DataSource = dtsItems
        DisableReasons = [drReadonly, drEditing]
        RuntimeEnabled = True
      end
      object btnExcluir: TDBSpeedButton
        Left = 728
        Top = 326
        Width = 55
        Height = 44
        Caption = 'Excluir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        DataButtonType = nbDelete
        DataSource = dtsItems
        DisableReasons = [drReadonly, drEditing, drEmpty]
        RuntimeEnabled = True
      end
      object edtNumero: TDBEdit
        Left = 3
        Top = 55
        Width = 46
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'NUMERO'
        DataSource = dtsOrcamentos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object edtEmissao: TwwDBDateTimePicker
        Left = 78
        Top = 55
        Width = 91
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'EMISSAO'
        DataSource = dtsOrcamentos
        Epoch = 1950
        ShowButton = True
        TabOrder = 2
      end
      object edtCliente: TwwDBLookupCombo
        Left = 173
        Top = 55
        Width = 261
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOME'#9'50'#9'NOME'#9'F'
          'FANTASIA'#9'20'#9'FANTASIA'#9'F'
          'TELEFONE'#9'20'#9'TELEFONE'#9'F')
        DataField = 'CLIENTE'
        DataSource = dtsOrcamentos
        LookupTable = tblClientes
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = edtClienteExit
      end
      object edtEntrega: TwwDBDateTimePicker
        Left = 441
        Top = 55
        Width = 112
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'DATA_ENTREGA'
        DataSource = dtsOrcamentos
        Epoch = 1950
        ShowButton = True
        TabOrder = 4
        Visible = False
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 82
        Width = 780
        Height = 81
        Caption = 'C'#225'lculo do Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object Label6: TLabel
          Left = 10
          Top = 23
          Width = 92
          Height = 13
          Caption = 'Valor das pe'#231'as'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 165
          Top = 23
          Width = 122
          Height = 13
          Caption = 'Valor da m'#227'o de obra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 635
          Top = 23
          Width = 81
          Height = 13
          Caption = 'Valor Cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 319
          Top = 23
          Width = 104
          Height = 13
          Caption = 'Vlr.Cobrado - Mat.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 469
          Top = 23
          Width = 108
          Height = 13
          Caption = 'Vlr.cobrado - Serv.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtMaoDEObra: TRxDBCalcEdit
          Left = 227
          Top = 263
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataField = 'TOTALDEMAODEOBRA'
          DataSource = dtsOrcamentos
          ReadOnly = True
          Color = 16776176
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 5
        end
        object edtTotal: TRxDBCalcEdit
          Left = 600
          Top = 43
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataField = 'VALORCOBRADO'
          DataSource = dtsOrcamentos
          ReadOnly = True
          Color = 16776176
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 4
        end
        object edtValorCobrado: TRxDBCalcEdit
          Left = 319
          Top = 40
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataField = 'VALORCOBRADOPECAS'
          DataSource = dtsOrcamentos
          ReadOnly = True
          Color = clMoneyGreen
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
        end
        object RxDBCalcEdit1: TRxDBCalcEdit
          Left = 465
          Top = 43
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataField = 'VALORCOBRADOMAODEOBRA'
          DataSource = dtsOrcamentos
          ReadOnly = True
          Color = clMoneyGreen
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
        end
        object RxDBCalcEdit3: TRxDBCalcEdit
          Left = 10
          Top = 40
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataField = 'TOTALDEPECAS'
          DataSource = dtsOrcamentos
          ReadOnly = True
          Color = 16776176
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object RxDBCalcEdit2: TRxDBCalcEdit
          Left = 165
          Top = 40
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataField = 'TOTALDEMAODEOBRA'
          DataSource = dtsOrcamentos
          ReadOnly = True
          Color = 16776176
          DisplayFormat = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
      end
      object grdItems: TwwDBGrid
        Left = 3
        Top = 169
        Width = 780
        Height = 158
        ControlType.Strings = (
          'PRODUTO;CustomEdit;edtProduto;F'
          'LOCAL;CustomEdit;edtAmbiente;F'
          'TIPO;CustomEdit;edtTipo;T'
          'NOMEDOPRODUTO;CustomEdit;edtNomedoProduto;T'
          'NOMEDOAMBIENTE;CustomEdit;edtAmbiente;F')
        Selected.Strings = (
          'NOMEDOPRODUTO'#9'52'#9'Produto'#9'F'
          'QUANTIDADE'#9'6'#9'Qtde.'#9'F'
          'UNIDADE'#9'4'#9'UN'#9#9
          'PRECOUNITARIO'#9'9'#9'Pre'#231'o'#9'F'
          'PRECOTOTAL'#9'9'#9'Total'#9'T'
          'NOMEDOAMBIENTE'#9'22'#9'Ambiente'#9'F'
          'TIPO'#9'17'#9'Tipo'#9'F')
        IniAttributes.FileName = 'SGVWINDOWS.ini'
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dtsItems
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowInsert]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 7
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        OnKeyDown = grdItemsKeyDown
        PaintOptions.AlternatingRowColor = clInfoBk
      end
      object edtTipo: TwwDBComboBox
        Left = 412
        Top = 245
        Width = 106
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        ShowMatchText = True
        Color = clInfoBk
        DataField = 'TIPO'
        DataSource = dtsItems
        DropDownCount = 8
        HistoryList.FileName = 'SGVWINDOWS.ini'
        ItemHeight = 0
        Items.Strings = (
          '1-Materiais'#9'1'
          '2-M'#227'o de Obra'#9'2')
        Sorted = False
        TabOrder = 9
        UnboundDataType = wwDefault
      end
      object edtArquiteto: TwwDBLookupCombo
        Left = 558
        Top = 55
        Width = 225
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOME'#9'50'#9'NOME'#9'F')
        DataField = 'ARQUITETO'
        DataSource = dtsOrcamentos
        LookupTable = tblArquitetos
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines, loTitles]
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = edtArquitetoExit
      end
      object edtObs: TDBMemo
        Left = 0
        Top = 397
        Width = 681
        Height = 92
        DataField = 'OBS'
        DataSource = dtsOrcamentos
        TabOrder = 13
      end
      object BitBtn1: TBitBtn
        Left = 708
        Top = 396
        Width = 75
        Height = 25
        Caption = 'Incluir produto'
        TabOrder = 12
        OnClick = BitBtn1Click
      end
      object edtAmbiente: TwwDBLookupCombo
        Left = 412
        Top = 278
        Width = 196
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'40'#9'DESCRICAO'#9'F')
        DataField = 'LOCAL'
        DataSource = dtsItems
        LookupTable = tblAmbientes
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        Color = 16776176
        TabOrder = 10
        AutoDropDown = True
        ShowButton = True
        UseTFields = False
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnNotInList = edtAmbienteNotInList
      end
      object BitBtn2: TBitBtn
        Left = 708
        Top = 430
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
        NumGlyphs = 2
        TabOrder = 14
        OnClick = BitBtn2Click
      end
      object edtNomedoProduto: TwwDBLookupCombo
        Left = 285
        Top = 245
        Width = 121
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOME'#9'50'#9'NOME'#9'F')
        DataField = 'PRODUTO'
        DataSource = dtsItems
        LookupTable = tblProdutos
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        TabOrder = 8
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnNotInList = edtProdutoNotInList
      end
      object edtObservacoes: TwwDBLookupCombo
        Left = 3
        Top = 371
        Width = 681
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'OBS'#9'50'#9'Observa'#231#245'es'#9'F')
        LookupTable = tblObs
        LookupField = 'ID'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        TabOrder = 11
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = edtObservacoesCloseUp
      end
      object wwDBNavigator1: TwwDBNavigator
        Left = 0
        Top = 0
        Width = 786
        Height = 29
        DataSource = dtsOrcamentos
        ImageList = frmPrincipal.ImageList1
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        TransparentClearsBackground = True
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvRaised
        ParentShowHint = False
        Transparent = True
        object wwDBNavigator1Insert: TwwNavButton
          Left = 2
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Inclui um novo registro'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Insert'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsInsert
        end
        object wwDBNavigator1Delete: TwwNavButton
          Left = 27
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Apaga este registro'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Delete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsDelete
        end
        object wwDBNavigator1Edit: TwwNavButton
          Left = 52
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Altera este registro'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Edit'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsEdit
        end
        object wwDBNavigator1Button1: TwwNavButton
          Left = 77
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Imprime o or'#231'amento'
          ImageIndex = 6
          NumGlyphs = 1
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Button1'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          OnClick = wwDBNavigator1Button1Click
          Index = 3
          Style = nbsCustom
        end
        object wwDBNavigator1Button2: TwwNavButton
          Left = 102
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Efetivar o pedido'
          ImageIndex = 7
          NumGlyphs = 1
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Button2'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          OnClick = wwDBNavigator1Button2Click
          Index = 4
          Style = nbsCustom
        end
        object wwDBNavigator1Button: TwwNavButton
          Left = 127
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Sair'
          ImageIndex = 4
          NumGlyphs = 1
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Button'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          OnClick = wwDBNavigator1ButtonClick
          Index = 5
          Style = nbsCustom
        end
      end
    end
  end
  object trnOrcamentos: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 565
    Top = 5
  end
  object tblOrcamentos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    AfterDelete = tblOrcamentosAfterDelete
    AfterInsert = tblOrcamentosAfterInsert
    AfterPost = tblOrcamentosAfterPost
    BeforeOpen = tblOrcamentosBeforeOpen
    BeforePost = tblOrcamentosBeforePost
    OnCalcFields = tblOrcamentosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ORCAMENTOS'
      'where'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into ORCAMENTOS'
      '  (NUMERO, EMISSAO, CLIENTE, ARQUITETO, DATA_ENTREGA, '
      'TOTALDEPECAS, TOTALDEMAODEOBRA, '
      '   TOTALDOORCAMENTO, DIAS1, DIAS2, DIAS3, DIAS4, DIAS5, VALOR1, '
      'VALOR2, '
      '   VALOR3, VALOR4, VALOR5, VALOR_ENTRADA, DATA1, DATA2, DATA3, '
      'DATA4, DATA5, '
      '   DATA_ENTRADA, VALORCOBRADOPECAS, VALORCOBRADOMAODEOBRA, '
      'EFETIVACAO, '
      '   OBS, DIAS_ENTRADA)'
      'values'
      '  (:NUMERO, :EMISSAO, :CLIENTE, :ARQUITETO, :DATA_ENTREGA, '
      ':TOTALDEPECAS, '
      
        '   :TOTALDEMAODEOBRA, :TOTALDOORCAMENTO, :DIAS1, :DIAS2, :DIAS3,' +
        ' '
      ':DIAS4, '
      
        '   :DIAS5, :VALOR1, :VALOR2, :VALOR3, :VALOR4, :VALOR5, :VALOR_E' +
        'NTRADA, '
      '   :DATA1, :DATA2, :DATA3, :DATA4, :DATA5, :DATA_ENTRADA, '
      ':VALORCOBRADOPECAS, '
      '   :VALORCOBRADOMAODEOBRA, :EFETIVACAO, :OBS, :DIAS_ENTRADA)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERO,'
      '  EMISSAO,'
      '  CLIENTE,'
      '  ARQUITETO,'
      '  DATA_ENTREGA,'
      '  TOTALDEPECAS,'
      '  TOTALDEMAODEOBRA,'
      '  TOTALDOORCAMENTO,'
      '  DIAS1,'
      '  DIAS2,'
      '  DIAS3,'
      '  DIAS4,'
      '  DIAS5,'
      '  VALOR1,'
      '  VALOR2,'
      '  VALOR3,'
      '  VALOR4,'
      '  VALOR5,'
      '  VALOR_ENTRADA,'
      '  DATA1,'
      '  DATA2,'
      '  DATA3,'
      '  DATA4,'
      '  DATA5,'
      '  DATA_ENTRADA,'
      '  VALORCOBRADOPECAS,'
      '  VALORCOBRADOMAODEOBRA,'
      '  EFETIVACAO,'
      '  OBS,'
      '  DIAS_ENTRADA'
      'from ORCAMENTOS '
      'where'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'SELECT * FROM ORCAMENTOS '
      ''
      'WHERE'
      'NUMERO = :NUMERO'
      ''
      'ORDER BY NUMERO')
    ModifySQL.Strings = (
      'update ORCAMENTOS'
      'set'
      '  NUMERO = :NUMERO,'
      '  EMISSAO = :EMISSAO,'
      '  CLIENTE = :CLIENTE,'
      '  ARQUITETO = :ARQUITETO,'
      '  DATA_ENTREGA = :DATA_ENTREGA,'
      '  TOTALDEPECAS = :TOTALDEPECAS,'
      '  TOTALDEMAODEOBRA = :TOTALDEMAODEOBRA,'
      '  TOTALDOORCAMENTO = :TOTALDOORCAMENTO,'
      '  DIAS1 = :DIAS1,'
      '  DIAS2 = :DIAS2,'
      '  DIAS3 = :DIAS3,'
      '  DIAS4 = :DIAS4,'
      '  DIAS5 = :DIAS5,'
      '  VALOR1 = :VALOR1,'
      '  VALOR2 = :VALOR2,'
      '  VALOR3 = :VALOR3,'
      '  VALOR4 = :VALOR4,'
      '  VALOR5 = :VALOR5,'
      '  VALOR_ENTRADA = :VALOR_ENTRADA,'
      '  DATA1 = :DATA1,'
      '  DATA2 = :DATA2,'
      '  DATA3 = :DATA3,'
      '  DATA4 = :DATA4,'
      '  DATA5 = :DATA5,'
      '  DATA_ENTRADA = :DATA_ENTRADA,'
      '  VALORCOBRADOPECAS = :VALORCOBRADOPECAS,'
      '  VALORCOBRADOMAODEOBRA = :VALORCOBRADOMAODEOBRA,'
      '  EFETIVACAO = :EFETIVACAO,'
      '  OBS = :OBS,'
      '  DIAS_ENTRADA = :DIAS_ENTRADA'
      'where'
      '  NUMERO = :OLD_NUMERO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'NUMERO'
    GeneratorField.Generator = 'ORCAMENTOS_NUMERO_GEN'
    DataSource = dtsOrcamentosPesquisa
    Left = 599
    object tblOrcamentosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'ORCAMENTOS.NUMERO'
      Required = True
    end
    object tblOrcamentosEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'ORCAMENTOS.EMISSAO'
    end
    object tblOrcamentosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'ORCAMENTOS.CLIENTE'
      OnValidate = tblOrcamentosCLIENTEValidate
    end
    object tblOrcamentosARQUITETO: TIntegerField
      FieldName = 'ARQUITETO'
      Origin = 'ORCAMENTOS.ARQUITETO'
    end
    object tblOrcamentosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'ORCAMENTOS.DATA_ENTREGA'
      Required = True
    end
    object tblOrcamentosTOTALDEPECAS: TIBBCDField
      FieldName = 'TOTALDEPECAS'
      Origin = 'ORCAMENTOS.TOTALDEPECAS'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosTOTALDEMAODEOBRA: TIBBCDField
      FieldName = 'TOTALDEMAODEOBRA'
      Origin = 'ORCAMENTOS.TOTALDEMAODEOBRA'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosTOTALDOORCAMENTO: TIBBCDField
      FieldName = 'TOTALDOORCAMENTO'
      Origin = 'ORCAMENTOS.TOTALDOORCAMENTO'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosDIAS1: TSmallintField
      FieldName = 'DIAS1'
      Origin = 'ORCAMENTOS.DIAS1'
    end
    object tblOrcamentosDIAS2: TSmallintField
      FieldName = 'DIAS2'
      Origin = 'ORCAMENTOS.DIAS2'
    end
    object tblOrcamentosDIAS3: TSmallintField
      FieldName = 'DIAS3'
      Origin = 'ORCAMENTOS.DIAS3'
    end
    object tblOrcamentosDIAS4: TSmallintField
      FieldName = 'DIAS4'
      Origin = 'ORCAMENTOS.DIAS4'
    end
    object tblOrcamentosDIAS5: TSmallintField
      FieldName = 'DIAS5'
      Origin = 'ORCAMENTOS.DIAS5'
    end
    object tblOrcamentosVALOR1: TIBBCDField
      FieldName = 'VALOR1'
      Origin = 'ORCAMENTOS.VALOR1'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosVALOR2: TIBBCDField
      FieldName = 'VALOR2'
      Origin = 'ORCAMENTOS.VALOR2'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosVALOR3: TIBBCDField
      FieldName = 'VALOR3'
      Origin = 'ORCAMENTOS.VALOR3'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosVALOR4: TIBBCDField
      FieldName = 'VALOR4'
      Origin = 'ORCAMENTOS.VALOR4'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosVALOR5: TIBBCDField
      FieldName = 'VALOR5'
      Origin = 'ORCAMENTOS.VALOR5'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosVALOR_ENTRADA: TIBBCDField
      FieldName = 'VALOR_ENTRADA'
      Origin = 'ORCAMENTOS.VALOR_ENTRADA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosDATA1: TDateField
      FieldName = 'DATA1'
      Origin = 'ORCAMENTOS.DATA1'
    end
    object tblOrcamentosDATA2: TDateField
      FieldName = 'DATA2'
      Origin = 'ORCAMENTOS.DATA2'
    end
    object tblOrcamentosDATA3: TDateField
      FieldName = 'DATA3'
      Origin = 'ORCAMENTOS.DATA3'
    end
    object tblOrcamentosDATA4: TDateField
      FieldName = 'DATA4'
      Origin = 'ORCAMENTOS.DATA4'
    end
    object tblOrcamentosDATA5: TDateField
      FieldName = 'DATA5'
      Origin = 'ORCAMENTOS.DATA5'
    end
    object tblOrcamentosDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = 'ORCAMENTOS.DATA_ENTRADA'
    end
    object tblOrcamentosVALORCOBRADOPECAS: TIBBCDField
      FieldName = 'VALORCOBRADOPECAS'
      Origin = 'ORCAMENTOS.VALORCOBRADOPECAS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosVALORCOBRADOMAODEOBRA: TIBBCDField
      FieldName = 'VALORCOBRADOMAODEOBRA'
      Origin = 'ORCAMENTOS.VALORCOBRADOMAODEOBRA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblOrcamentosVALORCOBRADO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VALORCOBRADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = False
      Calculated = True
    end
    object tblOrcamentosEFETIVACAO: TDateField
      FieldName = 'EFETIVACAO'
      Origin = 'ORCAMENTOS.EFETIVACAO'
    end
    object tblOrcamentosOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"ORCAMENTOS"."OBS"'
      Size = 8
    end
    object tblOrcamentosDIAS_ENTRADA: TIntegerField
      FieldName = 'DIAS_ENTRADA'
      Origin = '"ORCAMENTOS"."DIAS_ENTRADA"'
    end
  end
  object tblItems: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    AfterPost = tblItemsAfterPost
    BeforeEdit = tblItemsBeforeEdit
    BeforePost = tblItemsBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ITEMSDEORCAMENTOS'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into ITEMSDEORCAMENTOS'
      
        '  (ITEM, ORCAMENTO, PRODUTO, QUANTIDADE, UNIDADE, PRECOUNITARIO,' +
        ' '
      'PRECOTOTAL, '
      
        '   LOCAL, TIPO, FUNCIONARIO, DATASERVICO, HORACHEGADA, HORASAIDA' +
        ', '
      'DATAPAGAMENTO)'
      'values'
      '  (:ITEM, :ORCAMENTO, :PRODUTO, :QUANTIDADE, :UNIDADE, '
      ':PRECOUNITARIO, '
      '   :PRECOTOTAL, :LOCAL, :TIPO, :FUNCIONARIO, :DATASERVICO, '
      ':HORACHEGADA, '
      '   :HORASAIDA, :DATAPAGAMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ITEM,'
      '  ORCAMENTO,'
      '  PRODUTO,'
      '  QUANTIDADE,'
      '  UNIDADE,'
      '  PRECOUNITARIO,'
      '  PRECOTOTAL,'
      '  LOCAL,'
      '  TIPO,'
      '  FUNCIONARIO,'
      '  DATASERVICO,'
      '  HORACHEGADA,'
      '  HORASAIDA,'
      '  DATAPAGAMENTO'
      'from ITEMSDEORCAMENTOS '
      'where'
      '  ITEM = :ITEM')
    SelectSQL.Strings = (
      'SELECT '
      ''
      ''
      ' DATAPAGAMENTO, DATASERVICO, FUNCIONARIO, HORACHEGADA,'
      
        ' HORASAIDA, ITEM, LOCAL, LOCAL1, ORCAMENTO, PRECOTOTAL, PRECOUNI' +
        'TARIO, PRODUTO, QUANTIDADE, TIPO, UNIDADE'
      ''
      ''
      ' FROM ITEMSDEORCAMENTOS '
      ''
      ''
      ''
      'WHERE'
      'ORCAMENTO = :NUMERO')
    ModifySQL.Strings = (
      'update ITEMSDEORCAMENTOS'
      'set'
      '  ITEM = :ITEM,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  PRECOUNITARIO = :PRECOUNITARIO,'
      '  PRECOTOTAL = :PRECOTOTAL,'
      '  LOCAL = :LOCAL,'
      '  TIPO = :TIPO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  DATASERVICO = :DATASERVICO,'
      '  HORACHEGADA = :HORACHEGADA,'
      '  HORASAIDA = :HORASAIDA,'
      '  DATAPAGAMENTO = :DATAPAGAMENTO'
      'where'
      '  ITEM = :OLD_ITEM')
    ParamCheck = True
    UniDirectional = False
    DataSource = dtsOrcamentos
    Left = 410
    object tblItemsPRODUTO: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 20
      FieldName = 'PRODUTO'
      Origin = 'ITEMSDEORCAMENTOS.PRODUTO'
      OnValidate = tblItemsPRODUTOValidate
    end
    object tblItemsNOMEDOPRODUTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'NOMEDOPRODUTO'
      LookupDataSet = tblProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PRODUTO'
      Size = 59
      Lookup = True
    end
    object tblItemsQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 6
      FieldName = 'QUANTIDADE'
      Origin = 'ITEMSDEORCAMENTOS.QUANTIDADE'
      DisplayFormat = '0'
      EditFormat = '##0.00'
      Precision = 18
      Size = 3
    end
    object tblItemsUNIDADE: TIBStringField
      DisplayLabel = 'UN'
      DisplayWidth = 4
      FieldName = 'UNIDADE'
      Origin = 'ITEMSDEORCAMENTOS.UNIDADE'
      FixedChar = True
      Size = 3
    end
    object tblItemsPRECOUNITARIO: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 7
      FieldName = 'PRECOUNITARIO'
      Origin = 'ITEMSDEORCAMENTOS.PRECOUNITARIO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object tblItemsPRECOTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'PRECOTOTAL'
      Origin = 'ITEMSDEORCAMENTOS.PRECOTOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object tblItemsTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 15
      FieldName = 'TIPO'
      Origin = 'ITEMSDEORCAMENTOS.TIPO'
      FixedChar = True
      Size = 1
    end
    object tblItemsLOCAL: TIntegerField
      DisplayLabel = 'Local'
      DisplayWidth = 15
      FieldName = 'LOCAL'
      Origin = 'ITEMSDEORCAMENTOS.LOCAL'
      Visible = False
    end
    object tblItemsFUNCIONARIO: TIBStringField
      DisplayLabel = 'Funcion'#225'rio'
      DisplayWidth = 30
      FieldName = 'FUNCIONARIO'
      Origin = '"ITEMSDEORCAMENTOS"."FUNCIONARIO"'
      Visible = False
      Size = 30
    end
    object tblItemsDATASERVICO: TDateField
      DisplayLabel = 'Data do Servi'#231'o'
      DisplayWidth = 10
      FieldName = 'DATASERVICO'
      Origin = '"ITEMSDEORCAMENTOS"."DATASERVICO"'
      Visible = False
    end
    object tblItemsHORASAIDA: TTimeField
      DisplayLabel = 'Da'#237'da'
      DisplayWidth = 10
      FieldName = 'HORASAIDA'
      Origin = '"ITEMSDEORCAMENTOS"."HORASAIDA"'
      Visible = False
    end
    object tblItemsHORACHEGADA: TTimeField
      DisplayLabel = 'Chegada'
      DisplayWidth = 10
      FieldName = 'HORACHEGADA'
      Origin = '"ITEMSDEORCAMENTOS"."HORACHEGADA"'
      Visible = False
    end
    object tblItemsDATAPAGAMENTO: TDateField
      DisplayLabel = 'Pagamento'
      DisplayWidth = 15
      FieldName = 'DATAPAGAMENTO'
      Origin = '"ITEMSDEORCAMENTOS"."DATAPAGAMENTO"'
      Visible = False
    end
    object tblItemsITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITEMSDEORCAMENTOS.ITEM'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object tblItemsORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = 'ITEMSDEORCAMENTOS.ORCAMENTO'
      Visible = False
    end
    object tblItemsLOCAL1: TIBStringField
      FieldName = 'LOCAL1'
      Origin = '"ITEMSDEORCAMENTOS"."LOCAL1"'
      FixedChar = True
      Size = 50
    end
    object tblItemsNOMEDOAMBIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMEDOAMBIENTE'
      LookupDataSet = tblAmbientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'LOCAL'
      Size = 30
      Lookup = True
    end
  end
  object tblClientes: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM CLIENTES '
      ''
      'WHERE ( INATIVO = '#39'N'#39' OR INATIVO IS NULL )'
      ''
      'ORDER BY NOME')
    ParamCheck = True
    UniDirectional = False
    Left = 445
    object tblClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CLIENTES.CODIGO'
      Required = True
    end
    object tblClientesENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CLIENTES.ENDERECO'
      Size = 50
    end
    object n: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CLIENTES.CIDADE'
      Size = 30
    end
    object tblClientesBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CLIENTES.BAIRRO'
      Size = 30
    end
    object tblClientesCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CLIENTES.CEP'
      EditMask = '#####-###;0; '
      Size = 8
    end
    object tblClientesESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = 'CLIENTES.ESTADO'
      FixedChar = True
      Size = 2
    end
    object tblClientesPAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = 'CLIENTES.PAIS'
      Size = 3
    end
    object tblClientesCNPJ_CPF: TIBStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'CLIENTES.CNPJ_CPF'
      Required = True
    end
    object tblClientesPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = 'CLIENTES.PESSOA'
      FixedChar = True
      Size = 1
    end
    object tblClientesARQUITETO: TIntegerField
      FieldName = 'ARQUITETO'
      Origin = 'CLIENTES.ARQUITETO'
    end
    object tblClientesFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'CLIENTES.FAX'
    end
    object tblClientesEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CLIENTES.EMAIL'
      Size = 50
    end
    object tblClientesOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'CLIENTES.OBSERVACOES'
      BlobType = ftMemo
      Size = 8
    end
    object tblClientesINSCRICAOESTADUAL: TIBStringField
      FieldName = 'INSCRICAOESTADUAL'
      Origin = 'CLIENTES.INSCRICAOESTADUAL'
    end
    object tblClientesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CLIENTES.NOME'
      Required = True
      Size = 60
    end
    object tblClientesTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CLIENTES.TELEFONE'
      Size = 50
    end
    object tblClientesANIVERSARIO: TDateField
      FieldName = 'ANIVERSARIO'
      Origin = 'CLIENTES.ANIVERSARIO'
    end
    object tblClientesCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = 'CLIENTES.CELULAR'
    end
    object tblClientesFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = 'CLIENTES.FANTASIA'
      Size = 50
    end
  end
  object tblArquitetos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM ARQUITETOS ORDER BY NOME')
    ParamCheck = True
    UniDirectional = False
    Left = 480
  end
  object tblProdutos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PRODUTOS'
      '  (CODIGO, NOME, GRUPO, UNIDADE, PRECO, ICMS, IPI, CUSTO, '
      'ESTOQUEMINIMO, '
      '   TIPO, SALDO, PRATELEIRA, BARRAS)'
      'values'
      
        '  (:CODIGO, :NOME, :GRUPO, :UNIDADE, :PRECO, :ICMS, :IPI, :CUSTO' +
        ', '
      ':ESTOQUEMINIMO, '
      '   :TIPO, :SALDO, :PRATELEIRA, :BARRAS)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  GRUPO,'
      '  UNIDADE,'
      '  PRECO,'
      '  ICMS,'
      '  IPI,'
      '  CUSTO,'
      '  ESTOQUEMINIMO,'
      '  TIPO,'
      '  SALDO,'
      '  PRATELEIRA,'
      '  BARRAS'
      'from PRODUTOS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * FROM PRODUTOS '
      'WHERE INATIVO <> '#39'S'#39
      ''
      'ORDER BY TIPO,NOME')
    ModifySQL.Strings = (
      'update PRODUTOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  GRUPO = :GRUPO,'
      '  UNIDADE = :UNIDADE,'
      '  PRECO = :PRECO,'
      '  ICMS = :ICMS,'
      '  IPI = :IPI,'
      '  CUSTO = :CUSTO,'
      '  ESTOQUEMINIMO = :ESTOQUEMINIMO,'
      '  TIPO = :TIPO,'
      '  SALDO = :SALDO,'
      '  PRATELEIRA = :PRATELEIRA,'
      '  BARRAS = :BARRAS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_PRODUTOS_ID'
    Left = 510
    Top = 3
    object tblProdutosNOME: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = '"PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object tblProdutosBARRAS: TIBStringField
      DisplayWidth = 20
      FieldName = 'BARRAS'
      Origin = 'PRODUTOS.BARRAS'
      Visible = False
    end
    object tblProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"PRODUTOS"."GRUPO"'
      Visible = False
    end
    object tblProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PRODUTOS"."UNIDADE"'
      Visible = False
      Size = 3
    end
    object tblProdutosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"PRODUTOS"."PRECO"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblProdutosICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"PRODUTOS"."ICMS"'
      Visible = False
      Precision = 9
      Size = 2
    end
    object tblProdutosIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"PRODUTOS"."IPI"'
      Visible = False
      Precision = 9
      Size = 2
    end
    object tblProdutosCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"PRODUTOS"."CUSTO"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object tblProdutosESTOQUEMINIMO: TIBBCDField
      FieldName = 'ESTOQUEMINIMO'
      Origin = '"PRODUTOS"."ESTOQUEMINIMO"'
      Visible = False
      Precision = 18
      Size = 4
    end
    object tblProdutosTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PRODUTOS"."TIPO"'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblProdutosSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = '"PRODUTOS"."SALDO"'
      Visible = False
    end
    object tblProdutosPRATELEIRA: TIBStringField
      FieldName = 'PRATELEIRA'
      Origin = '"PRODUTOS"."PRATELEIRA"'
      Visible = False
      Size = 10
    end
    object tblProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PRODUTOS.CODIGO'
      Visible = False
    end
    object tblProdutosULT_ALT_PRECO: TDateField
      FieldName = 'ULT_ALT_PRECO'
      Origin = '"PRODUTOS"."ULT_ALT_PRECO"'
    end
    object tblProdutosPRECO_ANT: TIBBCDField
      FieldName = 'PRECO_ANT'
      Origin = '"PRODUTOS"."PRECO_ANT"'
      Precision = 9
      Size = 2
    end
    object tblProdutosINATIVO: TIBStringField
      FieldName = 'INATIVO'
      Origin = '"PRODUTOS"."INATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object dtsOrcamentos: TDataSource
    AutoEdit = False
    DataSet = tblOrcamentos
    Left = 599
    Top = 13
  end
  object dtsItems: TDataSource
    DataSet = tblItems
    Left = 410
    Top = 11
  end
  object dtsClientes: TDataSource
    DataSet = tblClientes
    Left = 445
    Top = 8
  end
  object dtsArquitetos: TDataSource
    DataSet = tblArquitetos
    Left = 480
    Top = 10
  end
  object dtsProdutos: TDataSource
    DataSet = tblProdutos
    Left = 510
    Top = 8
  end
  object dlgFigura: TSavePictureDialog
    DefaultExt = '*.jpg'
    Filter = 'Figuras JPEG|*.jpg'
    Title = 'Salvar como'
    Left = 374
    Top = 8
  end
  object dtsAmbientes: TDataSource
    DataSet = tblAmbientes
    Left = 668
    Top = 12
  end
  object tblAmbientes: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AMBIENTES'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into AMBIENTES'
      '  (CODIGO, DESCRICAO)'
      'values'
      '  (:CODIGO, :DESCRICAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO'
      'from AMBIENTES '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * FROM AMBIENTES ORDER BY DESCRICAO')
    ModifySQL.Strings = (
      'update AMBIENTES'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'AMBIENTES_CODIGO_GEN'
    Left = 668
    object tblAmbientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"AMBIENTES"."CODIGO"'
    end
    object tblAmbientesDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"AMBIENTES"."DESCRICAO"'
      Size = 40
    end
  end
  object tblObs: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM OBSERVACOES ORDER BY OBS')
    ParamCheck = True
    UniDirectional = False
    Left = 634
    Top = 65533
  end
  object dsObs: TDataSource
    DataSet = tblObs
    Left = 634
    Top = 13
  end
  object qryClientesPesquisa: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'Select Codigo, Nome, Fantasia from clientes'
      ''
      ' order by Nome')
    ParamCheck = True
    UniDirectional = False
    Left = 70
    Top = 255
    object qryClientesPesquisaNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 60
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object qryClientesPesquisaFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 50
      FieldName = 'FANTASIA'
      Origin = '"CLIENTES"."FANTASIA"'
      Size = 50
    end
    object qryClientesPesquisaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtsClientesPesquisa: TDataSource
    DataSet = qryClientesPesquisa
    Left = 70
    Top = 240
  end
  object qryArquitetosPesquisa: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'Select Codigo, Nome,Crea from arquitetos order by nome')
    ParamCheck = True
    UniDirectional = False
    Left = 105
    Top = 255
    object qryArquitetosPesquisaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ARQUITETOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryArquitetosPesquisaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ARQUITETOS"."NOME"'
      Required = True
      Size = 60
    end
    object qryArquitetosPesquisaCREA: TIBStringField
      FieldName = 'CREA'
      Origin = '"ARQUITETOS"."CREA"'
    end
  end
  object dtsArquitetosPesquisa: TDataSource
    DataSet = qryArquitetosPesquisa
    Left = 105
    Top = 240
  end
  object qryOrcamentosPesquisa: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  '
      ''
      
        'o.numero, o.cliente, o.arquiteto, o.data_entrega, o.emissao,o.ef' +
        'etivacao,o.valorcobradopecas,o.valorcobradomaodeobra,'
      
        'c.nome as nomedocliente, ( o.valorcobradopecas + o.valorcobradom' +
        'aodeobra ) AS TOTAL,'
      'a.nome as nomedoarquiteto'
      ''
      'from ORCAMENTOS o'
      ''
      ''
      'left join clientes c on c.codigo = o.cliente'
      'left join arquitetos a on a.codigo = c.arquiteto'
      ''
      'where '
      'o.emissao between :einicial and :efinal'
      'and'
      'o.data_entrega between :eninicial and :enfinal'
      'and'
      'o.cliente between :cinicial and :cfinal'
      'and'
      'o.arquiteto between  :ainicial and :afinal'
      'and'
      'o.numero between :ninicial and :nfinal'
      ''
      'order by emissao desc')
    Left = 140
    Top = 255
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'einicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'efinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'eninicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enfinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cinicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cfinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ainicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'afinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ninicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nfinal'
        ParamType = ptUnknown
      end>
    object qryOrcamentosPesquisaNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = '"ORCAMENTOS"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrcamentosPesquisaNOMEDOCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 31
      FieldName = 'NOMEDOCLIENTE'
      Origin = '"CLIENTES"."NOME"'
      Size = 60
    end
    object qryOrcamentosPesquisaNOMEDOARQUITETO: TIBStringField
      DisplayLabel = 'Arquiteto'
      DisplayWidth = 20
      FieldName = 'NOMEDOARQUITETO'
      Origin = '"ARQUITETOS"."NOME"'
      Size = 60
    end
    object qryOrcamentosPesquisaEMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 15
      FieldName = 'EMISSAO'
      Origin = '"ORCAMENTOS"."EMISSAO"'
    end
    object qryOrcamentosPesquisaVALORCOBRADOPECAS: TIBBCDField
      DisplayLabel = 'Valor Cobr.P'#231's'
      DisplayWidth = 14
      FieldName = 'VALORCOBRADOPECAS'
      Origin = '"ORCAMENTOS"."VALORCOBRADOPECAS"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentosPesquisaVALORCOBRADOMAODEOBRA: TIBBCDField
      DisplayLabel = 'Vlr.Cobr.Serv.'
      DisplayWidth = 13
      FieldName = 'VALORCOBRADOMAODEOBRA'
      Origin = '"ORCAMENTOS"."VALORCOBRADOMAODEOBRA"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentosPesquisaTOTAL: TIBBCDField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 15
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentosPesquisaDATA_ENTREGA: TDateField
      DisplayLabel = 'Entrega'
      DisplayWidth = 12
      FieldName = 'DATA_ENTREGA'
      Origin = '"ORCAMENTOS"."DATA_ENTREGA"'
      Visible = False
    end
    object qryOrcamentosPesquisaEFETIVACAO: TDateField
      DisplayLabel = 'Efetiva'#231#227'o'
      DisplayWidth = 14
      FieldName = 'EFETIVACAO'
      Origin = '"ORCAMENTOS"."EFETIVACAO"'
      Visible = False
    end
    object qryOrcamentosPesquisaCLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIENTE'
      Origin = '"ORCAMENTOS"."CLIENTE"'
      Visible = False
    end
    object qryOrcamentosPesquisaARQUITETO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ARQUITETO'
      Origin = '"ORCAMENTOS"."ARQUITETO"'
      Visible = False
    end
  end
  object dtsOrcamentosPesquisa: TDataSource
    DataSet = qryOrcamentosPesquisa
    Left = 140
    Top = 240
  end
  object qryItensPesquisa: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ITEMSDEORCAMENTOS'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into ITEMSDEORCAMENTOS'
      
        '  (ITEM, ORCAMENTO, PRODUTO, QUANTIDADE, UNIDADE, PRECOUNITARIO,' +
        ' '
      'PRECOTOTAL, '
      
        '   LOCAL, TIPO, FUNCIONARIO, DATASERVICO, HORACHEGADA, HORASAIDA' +
        ', '
      'DATAPAGAMENTO)'
      'values'
      '  (:ITEM, :ORCAMENTO, :PRODUTO, :QUANTIDADE, :UNIDADE, '
      ':PRECOUNITARIO, '
      '   :PRECOTOTAL, :LOCAL, :TIPO, :FUNCIONARIO, :DATASERVICO, '
      ':HORACHEGADA, '
      '   :HORASAIDA, :DATAPAGAMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ITEM,'
      '  ORCAMENTO,'
      '  PRODUTO,'
      '  QUANTIDADE,'
      '  UNIDADE,'
      '  PRECOUNITARIO,'
      '  PRECOTOTAL,'
      '  LOCAL,'
      '  TIPO,'
      '  FUNCIONARIO,'
      '  DATASERVICO,'
      '  HORACHEGADA,'
      '  HORASAIDA,'
      '  DATAPAGAMENTO'
      'from ITEMSDEORCAMENTOS '
      'where'
      '  ITEM = :ITEM')
    SelectSQL.Strings = (
      'SELECT '
      ''
      ''
      ' I.DATAPAGAMENTO, I.DATASERVICO,I.FUNCIONARIO,I.HORACHEGADA,'
      
        ' I.HORASAIDA, I.ITEM, I.LOCAL, I.LOCAL1, I.ORCAMENTO, I.PRECOTOT' +
        'AL,'
      'I.PRECOUNITARIO,I.PRODUTO, I.QUANTIDADE, I.TIPO, I.UNIDADE,'
      'L.DESCRICAO AS NOMEDOAMBIENTE'
      ''
      ''
      ' FROM ITEMSDEORCAMENTOS I'
      ''
      'LEFT JOIN AMBIENTES L ON ( I.LOCAL = L.CODIGO )'
      ''
      'WHERE'
      'I.ORCAMENTO = :NUMERO')
    ModifySQL.Strings = (
      'update ITEMSDEORCAMENTOS'
      'set'
      '  ITEM = :ITEM,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  PRECOUNITARIO = :PRECOUNITARIO,'
      '  PRECOTOTAL = :PRECOTOTAL,'
      '  LOCAL = :LOCAL,'
      '  TIPO = :TIPO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  DATASERVICO = :DATASERVICO,'
      '  HORACHEGADA = :HORACHEGADA,'
      '  HORASAIDA = :HORASAIDA,'
      '  DATAPAGAMENTO = :DATAPAGAMENTO'
      'where'
      '  ITEM = :OLD_ITEM')
    ParamCheck = True
    UniDirectional = False
    DataSource = dtsOrcamentosPesquisa
    Left = 175
    Top = 240
    object IntegerField1: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 20
      FieldName = 'PRODUTO'
      Origin = 'ITEMSDEORCAMENTOS.PRODUTO'
      OnValidate = tblItemsPRODUTOValidate
    end
    object StringField1: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'NOMEDOPRODUTO'
      LookupDataSet = tblProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PRODUTO'
      Size = 59
      Lookup = True
    end
    object IBBCDField1: TIBBCDField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 6
      FieldName = 'QUANTIDADE'
      Origin = 'ITEMSDEORCAMENTOS.QUANTIDADE'
      DisplayFormat = '0'
      EditFormat = '##0.00'
      Precision = 18
      Size = 3
    end
    object IBStringField1: TIBStringField
      DisplayLabel = 'UN'
      DisplayWidth = 4
      FieldName = 'UNIDADE'
      Origin = 'ITEMSDEORCAMENTOS.UNIDADE'
      FixedChar = True
      Size = 3
    end
    object IBBCDField2: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 7
      FieldName = 'PRECOUNITARIO'
      Origin = 'ITEMSDEORCAMENTOS.PRECOUNITARIO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'PRECOTOTAL'
      Origin = 'ITEMSDEORCAMENTOS.PRECOTOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object IBStringField2: TIBStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 15
      FieldName = 'TIPO'
      Origin = 'ITEMSDEORCAMENTOS.TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Local'
      DisplayWidth = 15
      FieldName = 'LOCAL'
      Origin = 'ITEMSDEORCAMENTOS.LOCAL'
      Visible = False
    end
    object IBStringField3: TIBStringField
      DisplayLabel = 'Funcion'#225'rio'
      DisplayWidth = 30
      FieldName = 'FUNCIONARIO'
      Origin = '"ITEMSDEORCAMENTOS"."FUNCIONARIO"'
      Visible = False
      Size = 30
    end
    object DateField1: TDateField
      DisplayLabel = 'Data do Servi'#231'o'
      DisplayWidth = 10
      FieldName = 'DATASERVICO'
      Origin = '"ITEMSDEORCAMENTOS"."DATASERVICO"'
      Visible = False
    end
    object TimeField1: TTimeField
      DisplayLabel = 'Da'#237'da'
      DisplayWidth = 10
      FieldName = 'HORASAIDA'
      Origin = '"ITEMSDEORCAMENTOS"."HORASAIDA"'
      Visible = False
    end
    object TimeField2: TTimeField
      DisplayLabel = 'Chegada'
      DisplayWidth = 10
      FieldName = 'HORACHEGADA'
      Origin = '"ITEMSDEORCAMENTOS"."HORACHEGADA"'
      Visible = False
    end
    object DateField2: TDateField
      DisplayLabel = 'Pagamento'
      DisplayWidth = 15
      FieldName = 'DATAPAGAMENTO'
      Origin = '"ITEMSDEORCAMENTOS"."DATAPAGAMENTO"'
      Visible = False
    end
    object IntegerField3: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITEMSDEORCAMENTOS.ITEM'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object IntegerField4: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = 'ITEMSDEORCAMENTOS.ORCAMENTO'
      Visible = False
    end
    object IBStringField4: TIBStringField
      FieldName = 'LOCAL1'
      Origin = '"ITEMSDEORCAMENTOS"."LOCAL1"'
      FixedChar = True
      Size = 50
    end
    object qryItensPesquisaNOMEDOAMBIENTE: TIBStringField
      FieldName = 'NOMEDOAMBIENTE'
      Origin = '"LOCAIS"."NOME"'
      Size = 40
    end
  end
  object dtsItensPesquisa: TDataSource
    DataSet = qryItensPesquisa
    Left = 175
    Top = 251
  end
  object tblAmbCli: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOrcamentos
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AMB_CLIENTES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into AMB_CLIENTES'
      '  (AMBIENTE, CLIENTE, ID)'
      'values'
      '  (:AMBIENTE, :CLIENTE, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CLIENTE,'
      '  AMBIENTE'
      'from AMB_CLIENTES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * FROM AMB_CLIENTES '
      'WHERE CLIENTE = :CLIENTE')
    ModifySQL.Strings = (
      'update AMB_CLIENTES'
      'set'
      '  AMBIENTE = :AMBIENTE,'
      '  CLIENTE = :CLIENTE,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_AMB_CLIENTES_ID'
    Left = 708
    Top = 16
    object fldIBDataSet1ID: TIntegerField
      FieldName = 'ID'
      Origin = '"AMB_CLIENTES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblAmbCliCLIENTE: TSmallintField
      FieldName = 'CLIENTE'
      Origin = '"AMB_CLIENTES"."CLIENTE"'
    end
    object tblAmbCliAMBIENTE: TSmallintField
      FieldName = 'AMBIENTE'
      Origin = '"AMB_CLIENTES"."AMBIENTE"'
    end
  end
  object dtsAmbClientes: TDataSource
    DataSet = tblAmbCli
    Left = 708
    Top = 28
  end
end
