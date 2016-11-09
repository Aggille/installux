object frmOS: TfrmOS
  Left = 70
  Top = 119
  BorderStyle = bsToolWindow
  Caption = 'Digita'#231#227'o de OS'
  ClientHeight = 512
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pagOs: TPageControl
    Left = 0
    Top = 0
    Width = 811
    Height = 506
    ActivePage = tabOs
    Align = alTop
    TabOrder = 0
    object tabPesquisa: TTabSheet
      Caption = 'Pesquisa'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 803
        Height = 66
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label21: TLabel
          Left = 164
          Top = 10
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
        end
        object Label22: TLabel
          Left = 350
          Top = 10
          Width = 48
          Height = 13
          Caption = 'Data Final'
        end
        object Arquiteto: TLabel
          Left = 10
          Top = 35
          Width = 42
          Height = 13
          Caption = 'Arquiteto'
        end
        object Label23: TLabel
          Left = 350
          Top = 35
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object Label24: TLabel
          Left = 10
          Top = 10
          Width = 70
          Height = 13
          Caption = 'N'#250'mero da OS'
        end
        object edtInicio: TwwDBDateTimePicker
          Left = 223
          Top = 7
          Width = 121
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 1
        end
        object edtFinal: TwwDBDateTimePicker
          Left = 415
          Top = 7
          Width = 121
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 2
        end
        object edtArquitetoPesquisa: TwwDBLookupCombo
          Left = 89
          Top = 34
          Width = 255
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NOME'#9'40'#9'Nome'#9'F'
            'CIDADE'#9'40'#9'Cidade'#9'F'
            'CODIGO'#9'10'#9'C'#243'digo'#9'F')
          LookupTable = qryArquitetosPesquisa
          LookupField = 'CODIGO'
          Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          ShowMatchText = True
        end
        object edtClientePesquisa: TwwDBLookupCombo
          Left = 415
          Top = 34
          Width = 281
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NOME'#9'40'#9'Nome'#9'F'
            'CIDADE'#9'30'#9'Cidade'#9'F'
            'CODIGO'#9'10'#9'C'#243'digo'#9'F')
          LookupTable = qryClientesPesquisa
          LookupField = 'CODIGO'
          Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          ShowMatchText = True
        end
        object edtOsPesquisa: TwwDBSpinEdit
          Left = 89
          Top = 7
          Width = 69
          Height = 21
          Increment = 1.000000000000000000
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object btnPesquisa: TBitBtn
          Left = 712
          Top = 30
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
          TabOrder = 3
          OnClick = btnPesquisaClick
        end
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 66
        Width = 803
        Height = 240
        Selected.Strings = (
          'OS'#9'12'#9'OS'#9#9
          'DATA'#9'13'#9'Data'#9#9
          'VALOR'#9'22'#9'Valor'#9#9
          'NOMEDOCLIENTE'#9'32'#9'Cliente'#9#9
          'NOMEDOARQUITETO'#9'45'#9'Arquiteto'#9#9)
        IniAttributes.FileName = 'SGVWINDOWS.ini'
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dtsOsPesquisa
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
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 306
        Width = 803
        Height = 172
        Selected.Strings = (
          'NOMEDOPRODUTO'#9'33'#9'Produto'
          'QUANTIDADE'#9'10'#9'Qtde'
          'PRECO'#9'12'#9'Produtos'
          'TOTAL'#9'12'#9'Total'
          'NOMEDOAMBIENTE'#9'29'#9'Ambiente'
          'NOMEDOLOCAL'#9'26'#9'Local')
        IniAttributes.FileName = 'SGVWINDOWS.ini'
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dtsItensPesquisa
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    end
    object tabOs: TTabSheet
      Caption = 'Dados da OS'
      ImageIndex = 1
      object Bevel3: TBevel
        Left = 457
        Top = 122
        Width = 293
        Height = 55
        Style = bsRaised
      end
      object Bevel2: TBevel
        Left = 185
        Top = 122
        Width = 275
        Height = 55
        Style = bsRaised
      end
      object Bevel1: TBevel
        Left = 3
        Top = 122
        Width = 180
        Height = 55
        Style = bsRaised
      end
      object Label1: TLabel
        Left = 95
        Top = 40
        Width = 86
        Height = 13
        Caption = 'Data de Digita'#231#227'o'
      end
      object Label2: TLabel
        Left = 195
        Top = 40
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label3: TLabel
        Left = 5
        Top = 80
        Width = 55
        Height = 13
        Caption = 'Funcion'#225'rio'
      end
      object Label4: TLabel
        Left = 250
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Arquiteto'
      end
      object Label5: TLabel
        Left = 575
        Top = 80
        Width = 83
        Height = 13
        Caption = 'Hora de chegada'
      end
      object Label6: TLabel
        Left = 672
        Top = 80
        Width = 70
        Height = 13
        Caption = 'Hora de Sa'#237'da'
      end
      object Label7: TLabel
        Left = 5
        Top = 40
        Width = 83
        Height = 13
        Caption = 'N'#250'mero da OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 11
        Top = 125
        Width = 150
        Height = 13
        Caption = 'Qt. Func. / Total de horas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 379
        Top = 125
        Width = 69
        Height = 13
        Caption = 'Total da OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 665
        Top = 125
        Width = 81
        Height = 13
        Caption = 'Valor Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 250
        Top = 97
        Width = 319
        Height = 17
        DataField = 'NOME'
        DataSource = dtsArquitetos
      end
      object Label13: TLabel
        Left = 189
        Top = 125
        Width = 73
        Height = 13
        Caption = 'Vlr. Servi'#231'os'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 284
        Top = 125
        Width = 75
        Height = 13
        Caption = 'Vlr. Materiais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 470
        Top = 125
        Width = 84
        Height = 13
        Caption = 'Vlr. Cobr.Serv.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 580
        Top = 125
        Width = 75
        Height = 13
        Caption = 'Vlr.Cobr.Mat.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 600
        Top = 40
        Width = 59
        Height = 13
        Caption = 'N'#186' do recibo'
      end
      object Label19: TLabel
        Left = 505
        Top = 40
        Width = 65
        Height = 13
        Caption = 'Data de pgto.'
      end
      object Label20: TLabel
        Left = 672
        Top = 40
        Width = 66
        Height = 13
        Caption = 'Encerramento'
      end
      object Label18: TLabel
        Left = 10
        Top = 435
        Width = 291
        Height = 13
        Caption = 'F4-Busca produtos - F5-Repete '#250'ltimo item digitado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 300
        Top = 188
        Width = 213
        Height = 16
        Caption = 'F5-Repete '#250'ltimo item digitado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 10
        Top = 325
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object btnExcluir: TDBSpeedButton
        Left = 187
        Top = 183
        Width = 86
        Height = 35
        Caption = 'Excluir Item'
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
        DataSource = dtsServicos
        DisableReasons = [drReadonly, drEditing, drEmpty]
        RuntimeEnabled = True
      end
      object btnAlterar: TDBSpeedButton
        Left = 95
        Top = 183
        Width = 86
        Height = 35
        Caption = 'Alterar Item'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        Layout = blGlyphTop
        NumGlyphs = 2
        DataButtonType = nbEdit
        DataSource = dtsServicos
        DisableReasons = [drReadonly, drEditing, drEmpty]
        RuntimeEnabled = True
      end
      object btnNovo: TDBSpeedButton
        Left = 5
        Top = 183
        Width = 86
        Height = 35
        Caption = 'Novo Item'
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
        DataSource = dtsServicos
        DisableReasons = [drReadonly, drEditing]
        RuntimeEnabled = True
      end
      object wwDBNavigator1: TwwDBNavigator
        Left = 0
        Top = 0
        Width = 803
        Height = 25
        DataSource = dtsOS
        ImageList = frmPrincipal.ImageList1
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alTop
        ParentShowHint = False
        object wwDBNavigator1Insert: TwwNavButton
          Left = 0
          Top = 0
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
          Left = 25
          Top = 0
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
          Left = 50
          Top = 0
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
          Left = 75
          Top = 0
          Width = 25
          Height = 25
          ImageIndex = 11
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
          Left = 100
          Top = 0
          Width = 25
          Height = 25
          ImageIndex = 6
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
        object wwDBNavigator1Button3: TwwNavButton
          Left = 125
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Encerra esta OS'
          ImageIndex = 9
          NumGlyphs = 1
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Button3'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          OnClick = wwDBNavigator1Button3Click
          Index = 5
          Style = nbsCustom
        end
        object wwDBNavigator1Button4: TwwNavButton
          Left = 150
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Visualizar ficha'
          ImageIndex = 0
          NumGlyphs = 1
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Button4'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          OnClick = wwDBNavigator1Button4Click
          Index = 6
          Style = nbsCustom
        end
        object wwDBNavigator1Button: TwwNavButton
          Left = 175
          Top = 0
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
          Index = 7
          Style = nbsCustom
        end
      end
      object edtData: TwwDBDateTimePicker
        Left = 94
        Top = 55
        Width = 96
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'DATA'
        DataSource = dtsOS
        Epoch = 1950
        ShowButton = True
        TabOrder = 2
      end
      object edtCliente: TwwDBLookupCombo
        Left = 195
        Top = 55
        Width = 296
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'FANTASIA'#9'30'#9'FANTASIA'#9'F')
        DataField = 'CLIENTE'
        DataSource = dtsOS
        LookupTable = tblClientes
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnExit = edtClienteExit
      end
      object edtFuncionario: TwwDBLookupCombo
        Left = 5
        Top = 95
        Width = 241
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOME'#9'50'#9'NOME'#9'F')
        DataField = 'FUNCIONARIO'
        DataSource = dtsOS
        LookupTable = tblFuncionarios
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        Enabled = False
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object edtChegada: TDBEdit
        Left = 575
        Top = 95
        Width = 90
        Height = 21
        DataField = 'CHEGADA'
        DataSource = dtsOS
        TabOrder = 8
      end
      object edtSaida: TDBEdit
        Left = 672
        Top = 95
        Width = 81
        Height = 21
        DataField = 'SAIDA'
        DataSource = dtsOS
        TabOrder = 9
      end
      object edtOS: TDBEdit
        Left = 5
        Top = 55
        Width = 81
        Height = 21
        TabStop = False
        Color = 16776176
        DataField = 'OS'
        DataSource = dtsOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtValorTotal: TDBEdit
        Left = 365
        Top = 144
        Width = 86
        Height = 21
        TabStop = False
        Color = 16776176
        DataField = 'VALOR'
        DataSource = dtsOS
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object edtTotalDeHoras: TDBEdit
        Left = 16
        Top = 144
        Width = 56
        Height = 21
        TabStop = False
        Color = clMoneyGreen
        DataField = 'QUANTIDADE'
        DataSource = dtsFuncionarios
        ReadOnly = True
        TabOrder = 10
      end
      object edtValorCobrado: TDBEdit
        Left = 661
        Top = 144
        Width = 86
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'VALORCOBRADO'
        DataSource = dtsOS
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 17
      end
      object edtValorServicos: TDBEdit
        Left = 190
        Top = 144
        Width = 86
        Height = 21
        TabStop = False
        Color = 16776176
        DataField = 'VALORSERVICOS'
        DataSource = dtsOS
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object edtValorMateriais: TDBEdit
        Left = 280
        Top = 144
        Width = 81
        Height = 21
        TabStop = False
        Color = 16776176
        DataField = 'VALORCOBRADOMATERIAIS'
        DataSource = dtsOS
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object edtValorCobradoServicos: TDBEdit
        Left = 466
        Top = 144
        Width = 91
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'VALORCOBRADOSERVICOS'
        DataSource = dtsOS
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object edtValorCobradoMateriais: TDBEdit
        Left = 561
        Top = 144
        Width = 96
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'VALORCOBRADOMATERIAIS'
        DataSource = dtsOS
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
      end
      object edtRecibo: TDBEdit
        Left = 600
        Top = 55
        Width = 61
        Height = 21
        Color = 16776176
        DataField = 'RECIBO'
        DataSource = dtsOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object edtPgto: TwwDBDateTimePicker
        Left = 500
        Top = 55
        Width = 96
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'DATADEPAGAMENTO'
        DataSource = dtsOS
        Epoch = 1950
        ShowButton = True
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 669
        Top = 55
        Width = 81
        Height = 21
        Color = 16776176
        DataField = 'DATA_CONFIRMACAO'
        DataSource = dtsOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 78
        Top = 144
        Width = 83
        Height = 21
        TabStop = False
        Color = clMoneyGreen
        DataField = 'TOTALDEHORAS'
        DataSource = dtsOS
        ReadOnly = True
        TabOrder = 11
      end
      object edtObs: TwwDBRichEdit
        Left = 10
        Top = 343
        Width = 788
        Height = 81
        AutoURLDetect = False
        DataField = 'OBS'
        DataSource = dtsOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GutterWidth = 3
        HideSelection = False
        ParentFont = False
        PrintJobName = 'Delphi 7'
        TabOrder = 21
        EditorOptions = [reoShowSaveExit, reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
        EditorCaption = 'Edit Rich Text'
        EditorPosition.Left = 0
        EditorPosition.Top = 0
        EditorPosition.Width = 0
        EditorPosition.Height = 0
        MeasurementUnits = muInches
        PrintMargins.Top = 1.000000000000000000
        PrintMargins.Bottom = 1.000000000000000000
        PrintMargins.Left = 1.000000000000000000
        PrintMargins.Right = 1.000000000000000000
        PrintHeader.VertMargin = 0.500000000000000000
        PrintHeader.Font.Charset = DEFAULT_CHARSET
        PrintHeader.Font.Color = clWindowText
        PrintHeader.Font.Height = -11
        PrintHeader.Font.Name = 'Tahoma'
        PrintHeader.Font.Style = []
        PrintFooter.VertMargin = 0.500000000000000000
        PrintFooter.Font.Charset = DEFAULT_CHARSET
        PrintFooter.Font.Color = clWindowText
        PrintFooter.Font.Height = -11
        PrintFooter.Font.Name = 'Tahoma'
        PrintFooter.Font.Style = []
        DoubleBuffered = False
        ParentDoubleBuffered = False
        RichEditVersion = 2
        Data = {
          7A0000007B5C727466315C616E73695C616E7369637067313235325C64656666
          305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C20
          4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
          5C706172645C66305C66733136206564744F62735C7061720D0A7D0D0A00}
      end
      object edtLocal: TwwDBLookupCombo
        Left = 524
        Top = 283
        Width = 121
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOME'#9'30'#9'Nome'#9'F')
        DataField = 'ID_LOCAL'
        DataSource = dtsServicos
        LookupTable = tblLocais
        LookupField = 'ID_LOCAL'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        TabOrder = 20
        Visible = False
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object grdEstacao: TwwDBGrid
        Left = 3
        Top = 217
        Width = 778
        Height = 102
        ControlType.Strings = (
          'NOMEDOPRODUTO;CustomEdit;edtNomeDoProduto;F'
          'PRODUTO;CustomEdit;edtProduto;F'
          'NOMEDOAMBIENTE;CustomEdit;edtAmbiente;F'
          'ID_LOCAL;CustomEdit;edtLocal;F'
          'NOMEDOLOCAL;CustomEdit;edtLocal;F')
        Selected.Strings = (
          'PRODUTO'#9'9'#9'Produto'
          'NOMEDOPRODUTO'#9'37'#9'Descri'#231#227'o'
          'QUANTIDADE'#9'5'#9'Qtde'
          'NOMEDOAMBIENTE'#9'35'#9'Ambiente'
          'NOMEDOLOCAL'#9'35'#9'Local'#9'F')
        IniAttributes.FileName = 'SGVWINDOWS.ini'
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dtsServicos
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 18
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
        OnKeyDown = edtProdutoKeyDown
        PaintOptions.AlternatingRowColor = 16776176
      end
      object dbNavBtnCancel: TDBNavigationButton
        Left = 721
        Top = 430
        Width = 75
        Height = 45
        Caption = 'Cancel'
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
        Layout = blGlyphTop
        NumGlyphs = 2
        TabOrder = 26
        DataButtonType = nbCancel
        DataSource = dtsOS
        DisableReasons = [drNotEditing]
        RuntimeEnabled = True
      end
      object dbNavBtnSave: TDBNavigationButton
        Left = 641
        Top = 430
        Width = 75
        Height = 45
        Caption = 'OK'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
          2222220000000000000220330000008803022033000000880302203300000088
          0302203300000000030220333333333333022033000000003302203088888888
          0302203088888888030220308888888803022030888888880302203088888888
          0002203088888888080220000000000000022222222222222222}
        Layout = blGlyphTop
        TabOrder = 25
        DataButtonType = nbPost
        DataSource = dtsOS
        DisableReasons = [drNotEditing]
        RuntimeEnabled = True
      end
      object grdServicos: TwwDBGrid
        Left = 0
        Top = 218
        Width = 796
        Height = 101
        ControlType.Strings = (
          'NOMEDOPRODUTO;CustomEdit;edtNomeDoProduto;F'
          'PRODUTO;CustomEdit;edtProduto;F'
          'NOMEDOAMBIENTE;CustomEdit;edtAmbiente;F'
          'ID_LOCAL;CustomEdit;edtLocal;F'
          'NOMEDOLOCAL;CustomEdit;edtLocal;F')
        Selected.Strings = (
          'PRODUTO'#9'6'#9'Produto'#9#9
          'NOMEDOPRODUTO'#9'37'#9'Descri'#231#227'o'#9#9
          'QUANTIDADE'#9'5'#9'Qtde'#9#9
          'PRECO'#9'8'#9'Pre'#231'o'#9#9
          'TOTAL'#9'8'#9'Total'#9'T'#9
          'NOMEDOAMBIENTE'#9'30'#9'Ambiente'#9#9
          'NOMEDOLOCAL'#9'25'#9'Local'#9#9)
        IniAttributes.FileName = 'SGVWINDOWS.ini'
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dtsServicos
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 19
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnKeyDown = edtProdutoKeyDown
        PaintOptions.AlternatingRowColor = 16776176
      end
      object edtNomeDoProduto: TwwDBLookupCombo
        Left = 221
        Top = 357
        Width = 121
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOME'#9'50'#9'Nome'#9'F')
        DataField = 'NOMEDOPRODUTO'
        DataSource = dtsServicos
        LookupTable = tblProdutos
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        TabOrder = 23
        Visible = False
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnKeyDown = FormKeyDown
      end
      object edtProduto: TwwDBLookupCombo
        Left = 96
        Top = 357
        Width = 121
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'BARRAS'#9'20'#9'C'#243'digo de Barras'#9'F')
        DataField = 'PRODUTO'
        DataSource = dtsServicos
        LookupTable = tblProdutos
        LookupField = 'CODIGO'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        TabOrder = 22
        Visible = False
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnKeyDown = edtProdutoKeyDown
      end
      object edtAmbiente: TwwDBLookupCombo
        Left = 346
        Top = 357
        Width = 121
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCRICAO'#9'40'#9'DESCRICAO'#9'F')
        DataField = 'NOMEDOAMBIENTE'
        DataSource = dtsServicos
        LookupTable = tblAmbientes
        LookupField = 'AMBIENTE'
        Options = [loColLines, loRowLines, loTitles, loFixedDropDownHeight, loSearchOnBackspace]
        TabOrder = 24
        Visible = False
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
    end
  end
  object qrpOS: TQuickRep
    Left = 8
    Top = 526
    Width = 794
    Height = 1123
    BeforePrint = qrpOSBeforePrint
    DataSet = tblServicos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
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
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 38
      Top = 410
      Width = 718
      Height = 20
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 12
        Top = 3
        Width = 537
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          7.937500000000000000
          1420.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblServicos
        DataField = 'NOMEDOPRODUTO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 564
        Top = 3
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666670000
          1492.250000000000000000
          7.937500000000000000
          211.666666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblServicos
        DataField = 'QUANTIDADE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 303
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        801.687500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 647
        Top = 176
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          1711.854166666667000000
          465.666666666666700000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Data: '
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 16
        Top = 229
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          605.895833333333300000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 15
        Top = 254
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          672.041666666666700000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 78
        Top = 254
        Width = 297
        Height = 17
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          672.041666666666700000
          785.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblClientes
        DataField = 'TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 16
        Top = 216
        Width = 697
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          571.500000000000000000
          1844.145833333333000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 381
        Top = 229
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          1008.062500000000000000
          605.895833333333300000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Arquiteto (a)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 475
        Top = 229
        Width = 238
        Height = 17
        Size.Values = (
          44.979166666666670000
          1256.770833333333000000
          605.895833333333300000
          629.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblArquitetos
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 620
        Top = 199
        Width = 98
        Height = 17
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          526.520833333333300000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'P'#225'gina : '
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 562
        Top = 5
        Width = 149
        Height = 19
        Size.Values = (
          50.270833333333330000
          1486.958333333333000000
          13.229166666666670000
          394.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ORDEM DE SERVI'#199'O N'#186
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 609
        Top = 30
        Width = 79
        Height = 20
        Size.Values = (
          52.916666666666660000
          1611.312500000000000000
          79.375000000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblOS
        DataField = 'OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 81
        Top = 229
        Width = 294
        Height = 17
        Size.Values = (
          44.979166666666670000
          214.312500000000000000
          605.895833333333300000
          777.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblClientes
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 272
        Top = 8
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666700000
          21.166666666666670000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 272
        Top = 32
        Width = 74
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666700000
          84.666666666666670000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 326
        Top = 56
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          148.166666666666700000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 272
        Top = 56
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666700000
          148.166666666666700000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Bairro:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 488
        Top = 56
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          1291.166666666667000000
          148.166666666666700000
          74.083333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 488
        Top = 80
        Width = 54
        Height = 17
        Size.Values = (
          44.979166666666670000
          1291.166666666667000000
          211.666666666666700000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'ESTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 326
        Top = 80
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          211.666666666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 272
        Top = 80
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666700000
          211.666666666666700000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 272
        Top = 104
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666700000
          275.166666666666700000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fone : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 326
        Top = 104
        Width = 69
        Height = 17
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          275.166666666666700000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 326
        Top = 128
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          338.666666666666700000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 272
        Top = 129
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666700000
          341.312500000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Email: '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 272
        Top = 156
        Width = 129
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666600000
          412.750000000000100000
          341.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'RESPONSAVEL1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 424
        Top = 156
        Width = 209
        Height = 17
        Size.Values = (
          44.979166666666670000
          1121.833333333333000000
          412.750000000000100000
          552.979166666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'RESPONSAVEL2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 272
        Top = 176
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          719.666666666666700000
          465.666666666666700000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'CREA:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 324
        Top = 176
        Width = 93
        Height = 17
        Size.Values = (
          44.979166666666670000
          857.250000000000000000
          465.666666666666800000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'CREA1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 424
        Top = 176
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1121.833333333333000000
          465.666666666666700000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'CREA:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 476
        Top = 176
        Width = 125
        Height = 17
        Size.Values = (
          44.979166666666670000
          1259.416666666667000000
          465.666666666666800000
          330.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'CREA2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 270
        Top = 197
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          714.375000000000000000
          521.229166666666700000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Celular:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 324
        Top = 197
        Width = 93
        Height = 17
        Size.Values = (
          44.979166666666670000
          857.250000000000000000
          521.229166666666800000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'FONE_RESP1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 422
        Top = 197
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          1116.541666666667000000
          521.229166666666700000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Celular:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 476
        Top = 197
        Width = 117
        Height = 17
        Size.Values = (
          44.979166666666670000
          1259.416666666667000000
          521.229166666666800000
          309.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = frmPrincipal.sqlEmpresa
        DataField = 'FONE_RESP2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 382
        Top = 254
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          1010.708333333333000000
          672.041666666666700000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 382
        Top = 277
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          1010.708333333333000000
          732.895833333333300000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Email'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 473
        Top = 252
        Width = 238
        Height = 17
        Size.Values = (
          44.979166666666670000
          1251.479166666667000000
          666.750000000000000000
          629.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblArquitetos
        DataField = 'TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 473
        Top = 277
        Width = 238
        Height = 17
        Size.Values = (
          44.979166666666670000
          1251.479166666667000000
          732.895833333333300000
          629.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblArquitetos
        DataField = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 15
        Top = 277
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          732.895833333333300000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Email'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText28: TQRDBText
        Left = 78
        Top = 277
        Width = 298
        Height = 17
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          732.895833333333300000
          788.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblClientes
        DataField = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRImage1: TQRImage
        Left = 14
        Top = 10
        Width = 220
        Height = 111
        Size.Values = (
          293.687500000000000000
          37.041666666666670000
          26.458333333333330000
          582.083333333333300000)
        XLColumn = 0
        Center = True
        Picture.Data = {
          0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
          02FC000000FF08060000008D530208000000017352474200AECE1CE900000004
          67414D410000B18F0BFC6105000000097048597300000E7400000E74016B24B3
          D60000001F74455874536F667477617265004D6163726F6D6564696120466972
          65776F726B732038B568D2780000FF7A49444154785EEC9D7580DCD4DAC6B76E
          B454D7AD2BDDBAD3428B950285E272B9F7C28714EAEEEE42A12D50F752777777
          77EFBABBBBCBF33DEFC964775B062ED0E2F9E3B7C964324926C9ECFCDE33EF79
          8F05000303030303030303030383BF2966171A18181818181818181818FC3D30
          BBD0C0C0C0C0C0C0C0C0C0C0E0EF81D98506060606060606060606067F0FCC2E
          3430303030303030303030F87B6076A181818181818181818181C1DF03B30B0D
          0C0C0C0C0C0C0C0C0C0CFE1E985D6860606060606060606060F0F7C0EC420303
          030303835F44A63F90E107A4FB6AA479131F8D54CE0B295EE49E364D268924C1
          44BC2710C7E784D83B1A717735626F6944DF24378028127DCDC49522A22EDF4F
          F16591971EE0229F3F0B841D03820F032147C851CE732A149FD7092A36551CD2
          0834330D3C687E79F1A9EC579079B55CE6893E0D361D4320A741028F55A6F238
          C0B4BE20F385707DC15FD6E1FAA17C8F1117C879BE5799CA7BE7F908E3FB0FE7
          F98B94F3CA731CCDF31DCD731F639A8FBA6D5A466238AF90791DB936BCB609BC
          EE0F62EEFE303030F84331BBD0C0C0C0C0E04F480E652A87329D4DB116CCAD23
          D29D6A92EC244A5932E52C89A21C7795F246E90B3F434E51FC4E53EA2883F7C1
          65917C4E883849593C828290C38AFCE043C8A7C4E6051C40AEFF7E1ECA5EE478
          6F41AEF746E4786D40B6E77AE4DC5B87ECBBAB91756715B26FAF42CA952548BE
          B21049971621F9E27C245D5880C4F37309E7CF9193F390747CAE22F1D81C241C
          9D8DF823B39070F85B45F4BEAF1531FBA6227AEF978AA83D531491BB27237CE7
          3884ED187B1FA1DBC71412B465A42270F3881F10B47908BC577685D7D24F7077
          D1470ACF45FF873B0B3FC4DD053FC4F327F09AFF7FF74D3DE77D847BF3FF8B7B
          73F9DA79FF313F2577E6FC17B7E66ADC9CF31F131FDEC78DD9FFC58D591FFD80
          9B33F9FA59C5F93FDC9E4D667D8C3BB3F99EE67482CF92EE085E3900111B8621
          72E348446D1A8598CDE314919BC6226ADB9788D8FE552151DBBE42CC8E6988DD
          399D7C8DE4BD3391B4F79B4252F77E8BB47DDF20E3C077483F341BA987E723F5
          E802A41F5F828C53CB9079FA7B649F5D81DC736B9073612D722F6E40EEA58DC8
          BBBC09F95736A3E0EA56E45FDF86821BDB51707D27706B1F708741CA5D062D5E
          0C50BC19A0F8F0BEF3E5FDE7CFFBD49FF76310839450DEBBE1D7794FF23E9600
          258CD350062B61B25C823ACE0BD1A6A024560247DEFFD10C2463F97989378210
          0303B30B0D0C0C0C0C1E1269F1CE0E00B2281C59148F4CCA773A65258DE2924A
          3949BEAC9170914242A911A2293811949E304A50D80120844214BC9BD2B31305
          41DB28DC9B29DC1B90E7B711F97EEB90737B29F26E2D44EECD05C8BD3607D957
          6621EBD2B7C8BA300D59E7A622E3F444649E1A8FF463A390B47F20A2B67643F0
          BACF10B8FA2304ADF93F04AFFAE83E8256FD5763C57FEE2364F97F10FCFDBF15
          41CB3E40E0D27F2170C9BB085CFC168217BD85A0856F2270C16B089CD7511130
          F7550491D005AF23647E47047359F09C570897CFEE405E41E0AC971138FB458D
          99ED1501DF3DAFF0FFF6398D19CF28FCA63FADF175DB427CBF6AF383C70FE233
          F52985F7974F2ABCA6B42EC4F7CB560898D20C7E131BC2677C7D85EFB8FAF01E
          570FDE63EAFE00DFD13FC467540385EFC8468553EF91DCD688866AEA3DBC01BC
          46707B66A6C5F11A56BF88A17CFC009E431A2ABC86362A441EDF1BE801CF011E
          6A7A6F403DDCE9E741EAE1F680FAB833A0116E0FE4BAC35AF0589F243C1F6378
          5EC63CA3F01ED5165EA3DBE22E97DF19D9567177D4D3B837FA19788E79D6C473
          85F35E639F830FF11DF72CFCC6F3DA4C78413D56CBC6B6E3F3CF2BEEF1B1E7D8
          177077DC0BB837FE25784E7805F7141D7177E2EBB837E90D85E7E437E135E175
          784F780B3E13DF86F7240DCFC9EFE21EB93BE57DDC9CF41EEE4DFB2FFC677ECE
          FBAA2B8217F642E8E23E085DDA5FE3FBC1085D3104A1AB862374CD0884AE1D8B
          90F5E310BA711282374F41C49E5988D83B17E1071620FCD062841FF91EE1C796
          23FCC46AC49C5C8BD4E39B90737A3BF2CEEF45F685FD48BF74901FCFE3C8F4B9
          849C30060DE63ED706067F51CC2E34303030F8C7924E499756724945C990B414
          8A7A2A453D85929E724593F4F8B394F35340D4490AFA71CAF961CAB9A470EC41
          81FF0E0AF956E4FA6E42C6DD5548BFB3922F5F86C46B0B9170790E622F7C8BE8
          73331073FA2BC41D9B88B843631073600CA2F65158760E44E0965EF0DDD00D3E
          EBBB70DA15FE1B3AC36F7D27F8AEFF84FC1F7CD67DA4F05B43315FF92E85E72D
          842E7F1321DFBF4609EA8890A51D10B2F825842E7A91C2DD0E610B9E43C482B6
          089DFB2402BF6D8EC0194D1130BD1182A637FE21331A22707A03044F6B80A0AF
          EB1712FC557D847CDD803452F3C15F3544C8544EBFE4BA5FD643E8940608E363
          9DF02F354227D745C8240F844DD4089D50A790B049EE081EEF426A171232C159
          116A226C626D6D3A5E23741C1F8F7342F858AE3B96CBC6707D35D51F733B639C
          103ADA594D7F6CB94CE5B561A3ED103ACA1A6123ACEE2374B8A5C6B05AF71136
          B4385C6FB035B1FD0121836C14C103AD7F92B081B6081FA011D6DFA618768A90
          BEDC0E09EE63FB03827AF358FBF218FA58F2B165E1BA41F21C09ECE700FFDEF6
          08E8E7489CE1D3DB01DEBD1C3975826F1F17E20CFFBE0EF0EB630FDFBEF6F0E7
          3A82775F6778F57182672F67DCEBE984BBBD9C70AFB78BA270590F47DCE9EE00
          AFEE8E0AEF1E4EF0E272AF1EB5F97C6DAEE70ACFDE7570AF973BEEF4F2C0AD5E
          7571B3675DDC50D4C7B55E1AD7BB37228D71AD67135CEDD11897BB37C1053E3E
          DFBD29CEF5688AD3DD9BE16CAF5638D7AF0DCE0D688B0B039FC3A561ED7175E4
          2BB83AEA359C1FF11A2E8C7A0B17C6BC874B13FE83CB933EC2A5A91FE3F2B4CE
          B834A31B4E7EDD1927BFE98E5333FBE0E49C01383D7F08CE2E1E8EB34B47E3D2
          B2F1B8B578127C967D05BFD5DFF1B3351B9E1BE6E3EEF6A5F03DB41981671970
          9BFBFF6060F017C5EC4203030383BF1492EAA2B7A4A7DFA1A453D0D329E8A994
          F3D4F314F53384829E4C928E01B18728EAFB00DFAD80D746E0DE5AE0F64A14DC
          588AFC6BF3917B7516722F4F47C6D949483D3506C9C78722F1D800241EE983D8
          03DD10B1EB53846DFD18619B3F41F8C6CF10B6E1538453C6C328E2A16BFFA308
          59FB2F84AC7E4F11BCFA6D04AE7C1341CB5F43C0B257E1BFF415042C7D19A1CB
          28E74BDA2B410F5EFC0202173E0FFF396DE03BEB49F8CE6EA5F09B25B484EFCC
          165CDE5CE133B319FCBF6DA6E45D443D74469342C228F3613328E0D328DDD3EB
          23727A5D444DAB8BE8E91E889B51D7441D45E43457441099AAF9AF5D1491536B
          2B22BE7456444E7146D497B589EB7DD3F02914F02F29D0A669F8140DFD75858F
          27733AC9B19088C9DCFE24BE7E8213A22672DBC588E6F2188ABE1039CE51113D
          D61151631C08D797E9282E1F6D8FE8D1B2CCAE701A35CA9ECB6D0BA7112328D3
          23AD0BA7E1C36D8A3DA66453F885885176EAB14C157CBE3891BF8008EE434782
          821F2362081964892881F21F39C0AA18368A280604422403029D08060442783F
          6EA76F4D04F77E1C8124A45F4D840E64903280C1049F0B92E9003B040D744060
          7F47F8F5B3270EF0E5BCFF4067040E744240EF9A08EA591D013D6B20B09725FC
          7BD5A2BCD7A2B85BC3BBA71DFCFA3A6901405FCA7E1F8A3CB9D79BD26F927F9F
          EE4EF0A3F8FB3300F0ED218F6BF3F5B5F97A3EDF93B2DFC31DB77A78E086D0BD
          1EAEF7101A50EE1BE072AF26B832E0695C1ED41E5786BE84EB235EC1F551AFE3
          C6D8B77073FC7BB831F17D5C1947911FF72F4DE6277F886B5F7F863BB3BAC17B
          5E5F78CD1F04AF4523E1B5641C7C974DA6B47F858075DF2060F34C046D5B80C0
          9D8B10796835228EAE47E4C92D0CB27721E6D25EC45E3F84849BC79174F71432
          7DCF213BE0227243AE212BF83AD2826F202DEC0E32A319F49BFB3F6360F017C6
          EC4203030383DF8D021F2097A29E738FC27E9750D633AE50D42F707A89E24E61
          4F3D4D613F4161A7AC271D06E20F00317B5010B409F901EB91EBB71A59DE2B90
          716F09526FCF47EAF55948B9FE0DE2CE4F42F49931FCC21F8EC8134310717C20
          C20FF743E0BE6E08D8DE09119B3F45ECC68F10B3E14344ADFF37A2D6BE8FC8B5
          EF2072CD1B8858DD11D1AB5E46D4AA1710BDF23944AD781A51CB9F42F8D22710
          BA88A23D8F823DAF1942E6362F24740EA7B39B14123EE77E22B84C31A7116980
          F0D9F51131CB0391B329E573EA29D4E3991E889A551711DFB92392447CEB86F0
          6F5C15613328E5D335A267B82376BA7BA1C0C7F1B110AF70451CD789F9DA1931
          5F39DC47F4640AEF246B44733EEA6B3E9665323FD55EE34BCA3389E6BCAC1F37
          D509B15F3A163199DB99C2F54924D78BFC52A6643245FB012226715B24722285
          95444CA0B08EA75493A889DCEF03C48CE73E4D448FE594448BD49318CAB9104D
          A18F1E658BB8B13C363E1F3B46B02B9C6AEBD9AA75A247D9A86914453F6AA4CC
          9B1EF37925FF26C90F1B41411FA605053255525E4CDEA386FD1091765DDE8B4F
          C30753BC8758226C502D840CAE65762A840FAC854812D1DFF201785C44177F5D
          F28B64DF1A217DB99F417608E96F45A1B744F0401BCABD0D02F8BC7F7F3B040C
          70844F7F7BF850F2BDFB3BC1AB9F233CFB53DA858114F2014E5C8FB2DECF16BE
          7DEDD47A5E94FB7BFD5CE035B81EFC473587D7B0E6B83BB4396E0E6E86EB839A
          6B0C6D893BC39FC23D49011ADA0A5E435BC36BC453F01ED906DEA39E85F7E8E7
          E03DF625788F7F059EE33BC253A5F1BC05CF29EFC17BEABFE0FDF57FE033EDBF
          F09CF67F085F310CA1ABF9F95C3F09315BA6226EC70C24EE998DA4030B907C68
          0972CEAE45CEF90DC8B9B8197957770277F9B9F73B090432800FE4FF8500FE9F
          0864601FCCFF19A1B701CA3A22F9BF248AC17FAC91B76F60501CB30B0D0C0C0C
          7E35D9FCA2CDF4A4ACF30B38E32A90467197D6F5C4239AA8C7EDE597F12EB21D
          08DF0084ACE617F70A7E912F057C17A0C07336F2EECC40EECD2974FE91483D37
          0429A70720F9646F249EE88EC4A39D117BF03344EFFB08513B29E83BDF41C4B6
          3710B6E535846D7A15211B5E42E8DA1710B2A61DA236BC88C8752F2062D53308
          5FD506112BC9F2D60859D202810B9B92C6A42182163552842C6E4C996F8C702E
          0FE7F2B03975113EB71E22E7D657C4CC6B809839F5114D411762E7D545CC5C77
          45F41C3745D46C5744CD7451C4CDA28417237E26A714782176962B7142CC2C8A
          EE4C8A2DA76AFE3B4E49EC4C47C4CF7241C277B515F1DF3A2BE2BE71423C899D
          E148B917EC0B916531D3F97A13D1D328C626E4B1BC36E65B27359575D5F26244
          7F4D9916A65288BFB4A1D4539C8B3389EB91E8895C8768CBB5F524888899A411
          3D91524DE2A6F0B8880A104CAF2DCE7D4180CE38CAAE89A809DCD7386EDB44CC
          580D3D00106957488B3E453E7224038B62D31F5B2E53FDB5FAB6D4F2115A50A0
          0283E10C888A11F320C378EC83F99A210C90883E8D18CC6D919F338D186C8F30
          BE266CB02342073914C389CB9C113CC0014194F6A0FE8E8A604ABA4E20253E70
          800B7CFBBBC0BB5F6DCA3D25BEBF2BEEF67585D7400F040C6F0CFFE14DE137AC
          19BC87358537C5DD7B784BF88C7882724E511F45C6B4C6BD3194F7714F53CCDB
          E1CEA41771674A47F87CF70182177746E4CABE085DD90F412B062260F92004AC
          1C82C0352311B66E1CC2364E40D4F6C9FC284F45FCBE6F90727836324E2C46F6
          D9EF917769BDD649F7063FE3B776A3E0EE7EC08B81BAF7717ECEF9BF4041690F
          BE68EA907B93922E1D6E19F4C753D8137FA443BA8181C1AFC6EC420303038342
          F228F0B93E400E253EEB0EE19773E60D209D5FD60922F10729F1FB34898FDA8A
          82F0B528085E8EFCC045C8F2FA0699F7A622EDE638245F1D86F88B03107BAE17
          62CE7547DC992E88D8F31E85FD2D25ECE1DB3A2272EBAB08DFF21265A21DC2D6
          3F43B1780A616B5A217C750BD21C916B9A2162755384AD6C88D0EFEB2174991B
          7145D8528D0813914B5C11BDD815318B385DE882D885CE8AB80594E685946712
          B7A836629650CC97BA70DDDA8AA8457CBC80CBE7BB2862E7B929E2E7792812E6
          52DAE7B89B7025DCD65C6E770E25BA18F1B31F84EB50EE13661687423F9B123E
          DB96E24F39E6346E16E578A61DE2BFB3E3F3F648F8D64111FF8DBD22C144FC0C
          AE6322EE3E28D29CC64EA7C44EA77CCB3CD78FE336641A399D423A8DA249A2A6
          D9703DEE9FF371D3F8FCD7DC3789F98AAFA5F0C77EC9E3992AADFB45C47FC9F7
          52081F4FB62156C590C73ADC37A55F8819CF6321B113B86D060A71138B843FDC
          24FDC511D11722C631182051634D8CA68C17C2C785693E1AD1A3391DE55848E4
          48074DF27F30D5502DF726C18F186E85F061962A2D278ACF09C55BF8EF6FE5E7
          F324728803C287383D406D840DAD8DD02114F6C1B54DB82802156E8A80216EF0
          1DE20A9F21EEF0E663EFC175E0A5A8ABB837B81EFC463683CFC8A69474CAFAA8
          16F019DD0ABE9474E984EB3DE669DC1BDF1EB727BC84BB933AC073EAEBF0FCF2
          4D787EF51682677F889865DD90B8AA2F6297F742F4B25E88FC9ED3E57D11B766
          2092360C47D2963148DA3509897BF9F93CFC2DB24ECD47D6E945C839B71CB8B1
          05F03F642AED49490F3A4D393FCFE0FC121076599374A990236552A52A4EBC2E
          EADE40B221EB06067F46CC2E343030F88790C32FEB1C7E71674AEACC392055F2
          DCF9059F4C914FD9CF2FF09DFC425FCF2FF8C5C8F1FF0E995E5F22EDCE3824DD
          1C4681EF83A4331F21F1C85B88DEFF0AE5FD2544ED7911D17B5E40E4AE6711B9
          A32D45BE35C2B73647F8E6C608DFD49022DF80225F1721EB28EA6B9D11BED21A
          112B2D7F40E472AB42A2BE2F227AB9B5090AE4328AA489D8A5F713B7C41A718B
          6D11AFB388924C12741652A449FC024AB782818040C917E2E6E9B82974F1D71F
          C7CC65304194F03F409CC8FD7D010065D9348D9D4DA9BE0F47D5CAAFA6246E96
          46FC773C369220E22F7C634BAC9144126758694CA7544FE7BAD379DC6AAAA15A
          FD45E029F3456841804ECC34CA37853FEE2B81E74A4D8B3195524EA4E53EF64B
          060C5379FCC297B5113BC519319379CC14FAA42F6D088F690A8F4721F3D648A0
          FC274C12D9B742DC246BCABDD6EA1F35416BCD8F1C4F811E6F87304A7DD87847
          8596CF4F5117C653E405697D37A5F50892B223E93A6A3AC691C1800B7145F858
          17848FAE8D88914E8AA851CE947F067123391D29F2EFAC645F3D3F8AD23F9ACB
          182CE8F9F9C5F3F5234630D020E123C90847848C7040F0700784F2B542089705
          0DE774B833828652EA8751E887B92270980B25DE057E4329F24329EEC328ED43
          EB53D05B2060FC93F0A1A87B52D83DC7B681F7F8A7E135E169784F790E3E53DB
          C3EFEB97E03BED157813AF691DE135E36D787EF73EA256F640E4AA5E085BDD07
          A16BFAF133335095D88CA6AC47EE9C82F0FD73107E6429624FAD42D2F9F548BB
          BC95F1F82EE47952D6FD4E50D0A5A42511498FB802445E37714B6B518FA79C27
          1AF9EA0606FF04CC2E343030F80B51E00F0D1F20CFDB940B7F43CB83CF269914
          F9B49394784A40FC5E0A3C253E7C13456015B203E722336006D2BCBF42E2EDF1
          88BF3A12B1170722FA5C6FC49EE986E4F35D107FEA43441F7A13917B5F44F8AE
          A711BEB335C2763647C48E8688D942F1DD6887C87514F7B594F2B5D6C412516B
          6A21727575C4AEA9899835D510B3EAF122565746ECCAC710B3B21C12569642C2
          AA12DA54514611BFA22CE2979723154C5442FCF79591B0FC718DEFAB217E5955
          525D91B0B46621F14B6A1099F2F1624B8D45945005C559A1897FE2023B13324F
          E63B2A12E63991DA8A22F917E431A577AEB3A250F465DE4C4BFF839895FD62C8
          AF00B133B95C5AFF4DD22FC47DCB80E55B062E24EE1B8AFE0C416BD1374771B9
          D75AF0EF27F66B0A3F91C04027E16BEEEB2BBEDED49A2FA22F693A2A55C794D2
          23CB54003085C22DCB2653E649F424ABC279C503A93DD2AA5F1C2DA587C23E9E
          C22FD24FC22752F045F649E40493F093E8098E8819C729855F75C41DC56081A8
          0A3BA3B54A3C22FC91635D11359AD351B50B891EE3CEA92B4247D446C8485704
          8F764330970572993FE53D6CB4AB2274940B82B82C70841BFC47B8C28F539F91
          75E033AA1E3C47D6C7DD91F54803DC19DE00B7473480E79826F099D40A3E939F
          A2B43F0DDFA9CFC1F7EBE7E1338DE23EE355F87EF31ABCBF7B1BFEF33E44E8B2
          CF11B5BA372256F745F8EA7E88DC3008D19B87237AEB08C4EF1C87C4BD93907A
          781AB24FCE46EED90528B8FC3D708341F6DD2D500374A9C1B728EFA1A7F9B9E5
          67395C060C63901E436937525F0C0C0C7E2666171A1818FCC9C8A5D0E77851E0
          29F3E93781548A7C1205207A37A118446D269484889540D82220681665E12B64
          DE198E8CDBFD9076BD0B92AF7C88A4F3EF20EED4AB883CF602220E3D83C8FDAD
          11B9EF0944EE6989C85D94F89D4D10B1BD31A2B653E6B7D547FCF6BA88DDEC8A
          E8F5947A4A7C14E53D766D35C4ADABAA90C742E46A6D3E7A6D7544AFA3E0AFA9
          4AAA207AD563A42262565440ECAAF285C4AD24AB44EE4B21716509139C5F5146
          91B0BC2CA59E01C1F7154C5452247E5FC504A59FC29FB05464FF87C29FB05864
          DF9CF06B242D14E9B746DCA25A885BCC008153C5422B45C27CAE379FEBCC6730
          30CF41913C9750DA8524CA7AC21C4AF95C0AF03C81924E8A5AF335F4741E9DB8
          990C188A6392FCE2E8C21F33D3B990E8EF9C080596447DEB8C886F5D3875E463
          2B52AB90D86FAD14313328DD0A8A7D31F9D75BFC55CEFED7146BA9CEF335A598
          D3E8AF29CC5F71BB5F711F539D89FC52C0639A2AA2CFE0E04B6BC44F65A03195
          E7E64B06775FDAF0752E089BEE8ED0696E08FFDA0D615FB9227CAA6B61959EA8
          29CE889CCC633775C895341DD52177AC1DA2C64A8E3E03C509560A95CA63EAE0
          2B9D792326392098EB848CB345A8FC1A50EC97808889DCEEA4DA88182BBF0248
          30202DF64E947B678409235D94DC878CF640C0A83AF0A5B0FB8D6B82A0A9AD11
          F4F553F0FFAA3585BD25FCC6B780FF8456F09FD41A7E93DB20E0CB67E1FF757B
          044CEF00BF6F3AC2FFBBB7E03BEB5DF8CDFD2FFCE67F049F79FF079F059F2168
          793784AD1F80885DE311B16F0A620E4D43C289EF90726E11322EAF40F6F5B5C8
          BEB309F93E7B28EB47F8B9E46735F22CA7E7F979BD4C59BF06C492B8DB94764F
          7E9619AC27FB0229FC9C9BFBFC1B1818183C2466171A1818FCCE14040079FCD2
          CFBE0B645EA5D45FA0D49FA4001C06127651123602A1CB5110B410B9BE339179
          773A326F4D40D4A1CF1173F043441FF82FA20FFE8BD37728F1AF22624F7B84ED
          6E8388BD4F70BE112276D741F84E8AD2762B846DAD8E904D9511BAB12262B756
          A1D057D6D8F81862365442DCFAC710BFA13212D6574612E793D65642D2BA0A48
          5D571E691BCA9132485F5F06A9EBCB227E4D05C4ADAD8CF8757C0D89E3BAB16B
          2A72794524ACAD884499AEA1B893F8D56591B45A9B4F5C55FA01D9BF5FFA95F0
          DF27FDE684BF4A31E9FF75C21FBB98924CE1D7A6947F09001659216E01838105
          22FCB6947D3BCABE460A855E489E6D8FA439B6889F47A15668E2AF09BF83CACD
          17D94FA4C06B382389E29E48614FFA5643E6258F5FE5EAABA986B4E83F28FD91
          5C5783324DD90FFFD68D530A35853F6A664DC2608C68E2CF65DF50A68908BF9E
          D35F3CC547643F7A9AA32AC919369DDB94929C856539B91F0A7FE4575C472AF7
          48B51ED5CA6F43E9D7C43F760A257DB20D42A7BA20E8AB3A089E5A07415FBA23
          780A1F4FAE8D60CA78E82429C549F99E48119FE0A088E6B2582E8BE13269E10F
          9F688FD0897608652020C8BAF23AA9C51F34D10581135D1134C98DF375E13FD1
          037E13EAC0678287C6F8BADC5F63EEAF116982C0494D1130A93902A788D43F8D
          C0E92FC06F467BF87C43799FF5260217FF17116BBB2066536FC6C7BD11B1A117
          E2B70C46C2D66148DC3112297BC721E3D097C83A3603B9A76723E7DC02E0EA0A
          ADB5DD731BE0C3E0DA772FD9CF609A121F7946937719C138EE06C5FD0EC59DF2
          9EE2CDCF2EE55DC67330F75937303030F80330BBD0C0C0E01122A936F99481BC
          6B400E453EEB9426F2891488788A7CCC72206211F2836622C7672A32EE8C42DA
          8D8148BBD2131997BF40DAD9FF22E5C41B483AF232920F3F87A4836D90B8B735
          12763743CCB67A88DE5607515BDD11B9C5C58433A2B750D4B6D8227A33E56C33
          2576730DC46F7E9C3C86C4CD1591B4896CA6806FA1606FB6202591B491C2BDA1
          2412D77319855E4858A391B896EBAE2B83644ABE4C13D79636218FCB29643E7E
          7569C26D90A435A590CC7592D670BBABB90F92B44A9B26AEB440C20A6D9AC469
          D28A12264A2912BFE7B6BF2F4BB85D615905C2C083B2AF93B854A84AAA17A1D2
          788A0BBF46D2224B13947D1392DA13BB8832BBB808791CBB88F2BE80D30594F7
          F91A09F33444FE8584B99AEC6BC2AFB7F28BF0DB219E24CEB643D22C06063335
          5229F16924F55B7BA47FA321F329DFD9228924CED4A1FCEB79FBA428A547432A
          EC447F4311D7E136A2BFE5B19B88FD46B057925F5CF48BA7EE68293D5C679A2D
          A26650C4BFD18898219D7A2508E0FCD794740ABF88BF6AEDFFB236A229F7315F
          B9F2B575103BD51DD1535C1133D999F2CFE7382F444D7629441E473200909AFB
          82927FAE2F88D4874EAC8D9029751132B93E82A63444C8974D10F25573847DDD
          0AC1D39F44D0F4360898DE1641DF3C87E0EF5E42D0AC97D548BD21735F47E8FC
          3711B2E87DC46EEAC97BBC2FA2B70E40CCD6C188DB3902F1FBC62291E29E74EC
          1B649CD75ADC736E6C409EF74E2084A21E25BF8C9D03622535E612B9CE790A7B
          FC2D0A3B036E11F6343F0ABB3FA7468BBB8181C1DF03B30B0D0C0C7E09D29247
          4928A02CE4DFA4D45324324F02A90728F55B2912EB28F54B29F5B39117FC15D2
          3C4721E64A6F849FFE14B1A7FE83B893EF20EED89B8839DC01D107DA216AEF93
          88DADD02313B1B226E775DC46D7746DC16AB42694FDA5219C99B2B2912B75544
          FCB60A7CAE1C62B7C8B402E2B77099A23CE389B248D8446126C91BC986D28AD4
          F5A591C669CA7ACAF6060BA492944D1648DB5812A99B4A218DC1401AB799B281
          AF31497EC2BAD20A3D18D0B793CA0021755D49CA7D09A49890C7695C9E24922F
          822FA24F7EF058C9BE604EF88B49BF12FE0A14FDC71EA9F0C72DA4FC8AE09B88
          5B28389A64DFA91826E99F4F1127BAEC2BE6DA2B12646A927D4DF8358A4B7F8A
          487E3192BEB32F26FB3F14FE42F1A7C4EB88D4AB3C7D999FC1639D41E97E8098
          E94E8AD8690FA0B7F22BE167B0309D41E1741B358DE0546AF287F3B9B0A94EC4
          59A5E78453EEC3A67A90BA08FDD2439374123AB90E2226B953EEDD1029F353F8
          DC240F044DAA83C0C9F51030A50102A73685FFD72DE03FBD35FC67B481DFB74F
          C37FE6F30898D50E81733AC0677647F8CC7D0BFE0BDF43E8F71F2172F5E788D9
          D883416A5FC46C1980C45DA390B86F1C520F4D41D6896F907B6E2E7065317073
          2570773D10B8170866F01C764C4B9B893AC3CF1A83EA586975E76731E13625DE
          CB10770303837F3C66171A181814433AC4E6DDA3C8DF2097816C0A453A853E89
          B291B211485E41B95800447E87DCE0C9C8F41E86E41B3D9078F963449F7A0331
          273A20F1F873483AF614928F3447C2FE7A88DE4999DA6AAF5AE3A3B6D646B448
          3D49D8E184849D14C59DD648DE6585E49D3590BCA30A52B65720E591B2AD0C29
          85F4ED14F31D25F81CC579278579BB05C55F9B26C994246E2DA1B18512BD9982
          BE49649FF3EB29E7947549CDC9A4D42B3695453A83032D55878100055F90349E
          E4F5E58B5AF529F24212655E050F6B2C344C322F532185F33AFAB2E2CBE5352A
          1858C9C714FE4296336020C9DFF31829FCC9CBCA12061D947D2165D96385242F
          ADFC13C2AFF3A0F017897FF2426BA4CCB72176F733CF5EA5EFE8B9FB3A7A2BBF
          A009BE2D9267DF8F08BE12FE597A5A0F0307533E7F0C899EADC36BCEE90F3BED
          4A2A8FD6AA7F1FC5845FEBB4AB497FDC74DE37D35D7E40ECB4DA8A9869AE6689
          FEBA68402EC9D18FFF8AFBFDDA91CB5CD47392D71FFE751D847C45899F560FC1
          D31A20E0EB86F0FBBA117CA73541C037CD11F45D4B847EDB1261339F44D8ECA7
          1136A71D82E7BE88C0F9AF2260E1DB0858F26F04AFEC8CE0757D11B675182277
          4F42F4C1E9883F3617C9679620EDD22AA4DDDC88B43B5B91E9B30BF9810729ED
          FC5CC59CD7D26412AE335896541993B4A7FA19E26E606060F02B31BBD0C0E01F
          4B3E854255B991EA366728199490E41D148FF540D412206C16F202BE42C69D31
          14FA5E883BFD6FC49F7E0371A73A22E15407249D7801F1479E42ECFE2688DEE5
          86D8DD94F8DD7694F75A94F76A94F54A48A3BCA7EF2C8B8C5D1528ED15B979CA
          AB0911FBE46DE590B4B534A59D624D92B75382770A14650ABE927A13297C5C88
          3C36912CD2BF95D2BF855392BAA5245236731B1B45F6655A1A19947CBD353E75
          6D29A4AD6310500CD57ACFE5DAAF016518109451BF0AC8AF003A296BB96D9242
          8117645E3D36897DAA2C2F26F9F7C9BEF093C24F94F01749FFA316FED47956C5
          B031A1E7EC53F4E73A99D02AF668557B8AAAF248E7DDA439F6DA9414977C117C
          25F97C7D14D71522F9389C8FC3B9BDC839E6A53FC694BFAF13FF9D63614A8F5E
          4F5FB5F017B6EE53F0A7F35E3321A3EF46711A39BD0EC267D445F8F4FA8AB019
          0D14A1331A21647A4345E83432A309C2BE694A796FA1E43D64765B04CD7E0681
          73DB51DE3B2060D1EB085CF236FC97BD8780E5FF41F0DA4F11BDB51B03D3BE48
          D93B18E9074722E7C404E49F9D86824BB380EB8B817B6B019FED40103F3FE1A7
          F8D9918EAA1478A92C13739732EFCB8F9B99CF9F81818181C16F82D98506067F
          6B0AFC805C19448A1292798852BF1548DC40A95F05C42E4141D877C8F19F806C
          EFA1C8BCDB1369D73F46F285779178FA15249C7C1E09279E42DCA11688DDD710
          49BB3D904AB14FDDE542217742EA4E07628FB49DB648DF6D45B1AF4EAA227D47
          6552099914FC8CEDE5481964ECA06453E253771521522F24713E717711F17CFC
          2009F2DA1D25904EB117D228F66914FD54CE0B297CAC93BA59235DA5ED68A40B
          1B7E48DAFA62ACE3EB38D591C70AFD3922D22F14B6F63F8012FB557C1FC5A67A
          1EFFC30BFF03693D147E4DFA357E507D47A5F258237131857EB10D1217D6A2FC
          D7E4BC950A041217D868D579544B3E455FD5E47743CC6C8DD8391E8899EBC169
          3D44CFA9A38DAC3BD705D1F35CD554279A41810CDC2553C57C0A3FB71731C741
          1139D711517328EC0C1254DD7D8ABFA0B5F03BAA91760BF3F4BF9320C04511FD
          ADABEAB81BF58D8BA903AF54EC21335D5547DE50E19B3A08FAB63E02BE6D84A0
          592D1132A73542E63D83E079ED1034EF0504CF7F09610B3B2278E95BF05AFA1E
          BC577F84C08D5F20647B1F44EC1982A843631177FC4BC49FF916E957BE47FA8D
          35C8BEB70DF9BEFB80901314F8F340C4254AFC55205A4647A5C0C7F1F3942095
          668C3291060606067F46CC2E3430F86B239D6429227914125CE1F40CC5FE0890
          B61B48DA8482B855C88E5880ACD06948BCD5130957FF0FB1E7FF85D873EF20EE
          ECEB883DF312E24E3E873811FBA3CD1073A82E62F63B53F0ED11BF9F92788072
          B88F92B8BB2A324996A20A327755268F15B19B72BFAB0229A75AF475D27694D1
          D859126914F7340ABD9A9254117E4E75E9D711B9D7D164BF041245F6B79546E6
          96328AB4CDA529FE0C22B670BBA616FDD462A46F2A5128FBC591DCFDE2483EBF
          A298E8FF40F84D14093F25BDB8E8AFE663139AE46B1D790B59555A55E591FCFD
          472DFCC55BF6CD57E9910A3DB66A40AE98053510BBA87A51759E45362AAF5FF2
          F865202E7DF02D35CAEEFCBA0C081A705A5F897FD46C77442FE074A1879A462E
          A88308AE2FADF77A0BBE202DFB311200988896C7737428F20C24A267B92A2267
          B92162561D847F5717A133EB23626E5384CE698AA0D94D11F05D53F87ED70CBE
          335BC07FF6130898D71AFE0B9F82DFE2A7E1BFF479047EFF228256BC8AA0556F
          2078CDFB085AFF2122B77741F4EE3E883F30144947C722EDD454E49CFF16B83A
          1FB8F53D257E33F283F600610728F04729EFA728EF1718005F0752EE50E029F2
          924A73DFE7CBC0C0C0C0E0AF86D98506067F0DFC29F6DE5A6B7D360525F32CA5
          5E5270B653ECD7505A162337640A72028723C3AB27526FFF1F92AFBD8DC44B14
          FAF36D117BB625124E3542EC110A17853EFA8023628583F648386443AC9178C8
          92824F813C501549FBAB20E5C0E344A6559076E031A41EA0C0EF2FAD48DD570A
          29FBEF27713FE5765F6924EC2D65A234E2F7945224ED2E85D45D2591B1A308C9
          CDBF0F0ABD902622BF95526F227D0B830892B1B5BC9A6A9D6C3552B76848DE7E
          8A20A93B2455A61BB48EB8291B28CF1BCBA80A3D095B1E8081819048E957557B
          88E4FD6B481F00BEB77502830A4EA5B36EF25A3EB786025F08D7335128F8F751
          5695E07C74C26F92FE07843F9EB21FBFD85A1B6D971409BD74D6B543F4525B45
          D41299B747CC620745AC74DC95CEBA4AFAB581B6248547527AA4D53F89629F38
          DF1991B31D28F78EAAF53E928F0B5BF4E7B94246E68DA6D0CBAF009AD4BB236A
          A69B6A998FFED61D11DFD541D8AC060899DD0421739B23647E2B8450E043173F
          8BE025ED11B4B40345BE237C96BD01EFEFDF85F7CA7FC377EDC708DCD419A13B
          7B2374DF20841F9B84D053331075710E12AE2D41DABD35C8F2DB8AFC90FDC88F
          A0C0C7F133117F4913F8A45B9AC0A73120364A461A181818FCA330BBD0C0E04F
          89C87DC15520EF1890B583E2B201485D4FA9598E82B09948F79980C49BFD1073
          B913A2CEBF8FE8B3AF21FE5C7B249C6983F8134D107BCC1D31476D29F8351177
          A42AE20F3F86B4E3D590CA69CAC18A48E334FD482522F3159076A41C9FA3441F
          A1649BE6530E9541F2C1D2483A405925C9072D907C482389F3F77180C2BC5F23
          619F4E09C4EFB55024EE2989D49DDCB6A9C53F75BBC87DD9FBC8D8AA2152AF77
          B0CD3221F3E95BCA238DA4725E17FD6413895BCA28E9D7900080CBA5524F2165
          90B0B924E2B65A14228FE345F8373228292CD1C9F7BA8EDB5068253853D69AE0
          3291FD22E12F127DC56A06150F8ABECEFF14FE9FEEB49BB8EC41E127C584FF41
          D98F5F646FC241116792FBA8C5F688E463217A9133A2163A217ABE483CD759E0
          42F1A7F09B06D68AA7DC6B3028A4E4C72FACCD208272BFC095C2EF8A88B96E08
          A5E087CEF640C89C86089BD71461F35B72FA2442E7B741D8826710B9F805442F
          EB80A815AF23F0FB3711B8F27D04AFFB10E19B3B2172670FC4EC1D809883C310
          756834D22EF1BEBEB60099B79723C76B030A0265946406B5B12780840B2888BF
          8E82A47BFC1CF0B3216524CD7D6E0C0C0C0C0CFEF1985D6860F0C7E20BE4DC01
          3228F729A72936FB80188A7DE45C206C3CF2FD7B23FDDEBF9174ED15249F7F0E
          2914FAA4934F20FE7863C41FAB8BC4636E483EE98AD4932E483DEE889463B648
          3E6289A423D5907CB82A528E5626959076B43CD20F51A60F50B80F9642C6E132
          C83C4AE93E6C81340A7C0AA722EEC99C261FD148E27C229F13643E49A644C45F
          045FD64FE13495929FCA698A4C29FA697B34D28BA7EF90E45D0C1A76526849D2
          0E0614DB3544FEB500406FE12FA3D27584CC2D1AE992C6B395AF35097EF18EBE
          52A547AAF62452E2EF43D5DCD748DEF443F44EBD7A351FAD255FD0AAF6E8A29F
          BAA60252CD0ABFF916FEA4553A3C4613BAF0DF0F5F4B129733D8F8D1B29C5A69
          4E5DF80B07E052837069036FC553FC45F81396D870DE8E50F297382AC98F5BE4
          5448BC09D5924FE217BA9A70E36357D5521F339FF3F3DD11BFA08E127B69C197
          CEB791B31914CC96941D378ABEA4F3D447F882E6085FD206E1DFBF80B015AF21
          64E53B085AF31142377541F8F67E88DA370AF14726F37E9D8EE473739075670D
          32BD3622CF7F3B107280F7F87106B0E780C44B40D27520999F039179B39F1303
          03030303839F87D9850606BF0BF9921BEC0514506C7225CFFE200AD2B6A22061
          05F228F7F961D390E13912A9B77A21E5D247483AFF1A25E969249F6E82F8134E
          883D540B19A7AC9079D21219276B20FD4415641C7F0CE9C72A2899D75BE51587
          CA17CD1FA6401FA1E093AC23A5B9DB92483F58021914F74C4A7D06455EA65947
          29E69C4F97659C1752890402A95CA6A0E0A71E2889345DF2499A890C8A7EFA5E
          13147D2193929FB1534375D8DD49E1DF45693691B4B334527608946D92BA5D23
          655B09A415237DAB86A4FA2453F493B752BA892AC969AAE09328C2FF205B3492
          45F889CADB2F5675475075F555DA0EE775D66AE2AFAAF6AC2D538CE2293DDCEF
          7DD26F12FF555C5E28FC3A22FC22F722F9C59165C5EBF053F67F42F835D93723
          FCA6D6FDD845362A7547D5D997341D12B3C0C98474AC75A3C4EB39F87595B487
          CD6B88D0794D1142798F58DA16614B9E46C8D26734963D8FB0552F226ADD2B88
          DDF006A2D6BE89E8F5EF207ECB7F90B8AB1303C73EC83939127917A7A2E0EA6C
          E0DE72C6AF9B28F37B81E893A6F49A1B14F95B0C663D09EFFF74A3628D818181
          81C16F8BD98506068F1E1F4E6E52EE293C7927809CC314FC9D40EC32206C3AB2
          FC8623F9DE1788BFF50EE26EB443FCB55648B84CB1BFD800F1673D107FD20589
          C71D907CC20169276D95E8679CAA89C423959044C14F395101A927CB23FD5439
          A49D2AA5483F41813DA6912E2DF79C661CA1D893CCA3260E53FC0F70DDFD7CEE
          001F53FE3328F19994FFACC32590CD79214B9EA3C467EEE3F37BF91A92BEA724
          B2F61691B987EB1423632FA59CEBA4EF6180B19BC7B48B22BFBB6C618BBE4AE7
          918EBB26F95701C08E1266295E7253472AF288F46750DCA5028FAAD26342AFD2
          A357E7D129EAAC6B127C533D7EA9BFAF23036629E15FCF6D1423E981C7C28F76
          DAD5918EBB14FEE4950F42E9FF81E86BB2FFBF85DF34F0D64F087FDC124BA209
          7FDC623D379F41E21217C42E76E373EE9CAF8FF0254D11B1AC15A2563C8D8855
          ED94CC87AD791D61EB3F40E8E64F90726428E28F8C44F4E17188383211D127A6
          21EEFC1CA4DF588ACCBB6B81A03D280839C47BF82810798AF7F37920E18A26F4
          6994F94C23CDC6C0C0C0C0E08F47FDF1F6367E32367884140450EC4D2DF7D994
          FBEC7D40C67AE4A72C4276DCB7488D188FF8C0A148F2E989946BEF23EDE2CB48
          3CF724E2CFD447DC3907249CAF8984738F21E16C39249D2D83E43394E3D322F4
          15917A9CD3E395B496FC93954805A49DE6F3A74A138AEAC99284027A82527B9C
          827E8A327EB234324F50D28F8BF053928BB5DA4B0B7FD6A152A40CB20F975688
          F48BE067739AC3E7B20F70F93E4EF7719D7DE534F696A7E497450E653E87B22F
          64FF40F8252860A04152766BB29FB2AB3C927655A0F04B0DFE72AAA36EE60E1E
          27C920E9DB19249042D937B5F04B2DFE42B89E20D29F41A9CFA4C8A71399D751
          D25F4CF4F54A3DC55BF285740A7F71D997C722FC69EBB9BE5E85E701C9979179
          8B3F4EE63A4292A934A7B4F417CABEA94ACF0F855F137D29CDA951C204657F45
          19242C2F9ECA53C94465242D7B9C5453242CAD8EF865351933D6225688596643
          1C10B9D401114B5D11B6B40EC2BF6F88F0E54D11B6E20984AF6A83C8D5CF2262
          4D7B44AE7D0911EB5E47E4F6FF43D4DEAE94FAFE48393512E9E72622EBCA77C8
          BBBB14F0DDA8B5CC471C33893CEFE744A95CC3FF9746E51A0303030383BF10EA
          8F21FC060F87DC3F3780FC7394FB0340DA3A20693E05692ABDA82712EFFD0771
          375E45FCB5E79170AD2DE22FB744EC85C6883F5F174967EC907EBA26D2CF5427
          8F23FD6C25A49D2DCB79CAE7590A33C93823F0F169CA38C55E71B28C22E3249F
          3B49B97E80740A7F06855FC812F13FA621C25F9CCCC39473927188C1C0212E33
          212DFC8550FC55CBFF01EECBF46B808EB4F84BCBBFA4EFFC00D5C24F1997FCFD
          DD946D69E52792B72FA93C693B4A29D1CFA6B8676DE3FADB781CDBB81F95B7AF
          75DA4DDD569EC25F16C9DB18F89044BE46CA710A92E693B9853C20FB0F0ABF1A
          704B514A4D25575FE5F093E2E53985F40D12046864ACE7741D8F9B229FBA86AF
          370DD2A5A7FA88E4271487EB2552F4E389AAB95F2C8F5F4BE3E132131210C8F6
          24ED2781D3F8D52511B7AA14125652F6579643C28AF248F8BE1212F4567CA9C0
          43B14FA6D82753EC9396D84272F3A396392272851BA256D445E4AA46085BD51C
          A16BDA2074FD4B08DDF43642B67D88E803BD9078623812CF30D03C3B15495766
          23E7EEF7C8F7DF8282F02340F419DEAB1779CF5EA5CCDFA4CCDF35D26C0C0C0C
          0C0CFE56A83F86F01BFC7C28420594FBDC5340D65ED02E29482B91133707A9A1
          1390E8D30771773E44ECF557107FB50D92AF3547E22537249EB745CA794BA45F
          A885F4F394FBF3D59079BE3232CF9646F6594AAFCE9992C83A5D4291798A226C
          9AD71F1741D1164E72BE3827B81E292EFB3F4FF8F9F827A1FC1EA4C013C9D7D7
          49A7EC0B69147C73E839FCAAD6BE82D2AC3AEC9654E93CAA857F3BB7AD5AF665
          4A28FC7AA75D4172FA93B7335028DECA4F44F8A5136FC6666ECB24F98AADDAF4
          7EE117D91718386CA2AC2B28DE82AC23B9FCA4B0063F055E41214F5BCBED9B28
          9ED32F693F4AF21914E8653B25CF5FCA76A6AE2F8BB40DE554959E424C1D7513
          569444FCF21288FBDE0271CB4B21766569C4AD2E4FE1AF441EA7BC5745C4B21A
          085B6A89B0650E08FBDE85530F842F6F84F095CD11B9FA49C4AC7D0651EBDB21
          62CBAB88DAF93E120E7C82E4E3DD91716E30B2AE8E43DE9D6F51E0B51808D800
          84F13E8D95CEB0E7C19B92627FC7107A03030303837F14EA8F21FC063F4A9E0F
          C59E929446614A9611692951B15351103A10D9FE9F21F5EE3B48B9DD0189D79F
          47C2A55688BBD01009E75D907CDE0E69E76B52ECA5D5BE826AB5CF789073947D
          0AFE7DC24FB2CE68A2FFD7107E2E27E6645FF829E1D73BEC26A9CEBA14E69D14
          6781CF174706E24ADE69C294CAA3A0F0A7A82A3DE54C2539B94D93EC8BF4EBC2
          9FBA8902BEA98CAAC39FBEB13CD2D6F37A10A9C72F253855394EBE464A722692
          A48D22F0DC3E11E997F41EBDD5BF3010A0F4A7AD6320B2A62292575752D3A4D5
          147C4A7D82927A6E8FA4AC61C0B2A62C5228F4A9AB2A924A8C0F2B236D5555A4
          AFAE86C4EFAB2061F9E388FDBE3A62975B2276556DC4ACAB87E84DAD10B9B51D
          82377740F08EF710BEBF13A28EF743DCB93148BAFA3532EFCD4196CF52E4876D
          437EE43EDE9347786F32084DA6D4A75CE1FD7A8BC1A8F17FCDC0C0C0C0C04050
          7F0CE137D090564F8A52DE59CAD201206933256A3510350705416391EBD303D9
          F73E40C6CD17917CA505922ED641CA05474ABD0D32CE5B21EB7C0D645DA882EC
          0B159173A11CF22E9422259177917103C93D4F712799E728DA674B22EB5CA91F
          C8FE6F29FCAAD2CE6F26FC5CFE0B853F9988EC27EE269CD72841EE977D85883E
          4993CEBA247D1BA744177E29CB99BAA5B4127E1DADD32EF72714937E19704B64
          5FEAF0C773791C038584CDA50B6BF6276FA2A46FE4B6A43C27E55EE7BE9C7D55
          9987C24FD94F5CFD3812D75446C2EA8A885F534111B7AE22E2D63F86D8759511
          B5B62A2256D540F88A5A085F6E878895CE885A550751ABEB2376C31394FBA710
          B3E539C4EE7C198907DE47CAF12F90716110D2AEF29EF39A8BBC801594FA6D40
          DC21DE93BC3753198066DE01B28D3C7A0303030303839F83FA6308FF3F99DB9A
          E067EE03D2D6203F6926B2A3472239A00BE2EFBD8BA4BB1D917CFB39245F6B85
          E4CBF59172B13625DF1669972C9171A906722F5541C1C54AA40270B11C0A2E94
          46FEF99228A0D4E753DE7384F394FD0B94F90B946B0A7F060381CC0B65917DB1
          8C92FFBF8FF01787CFFFA4F06B247359D26E69DD1728DA7A1D7EC9DD27E98AB2
          2A75472AF26452E415947D99CA32D5B2FF00AA44E716060F7C5E43ABCB1FCF60
          218E530597C988BA7A002029383AA9EB29FCD2797723B747F157A22F53090418
          38A8517AD73360585F01311B2A217A7D4544AC2B8FF0751510BAA10A4236D542
          D0163B046E7347D0F6C608DAD50661FB3A20F2D0BF1073FC33249EEE89B87394
          FADB3390E1B510798112586EA5D0EF07524E805124B90264DDE3FD6954BA3130
          303030307818D41F43F8FF297871720DC83DAD6ADED30C81B825C80B97CEB503
          91E0F509123C5F43C2DD3688BB5E0F3157EC117BB92612AF5447CA95C79172F9
          31A45EAE88F44B159079B502B2AF96A7C497442E053F97A29E77AE04F228F7F9
          94FB828B25804B14780A7DA1EC739ACEE745F8D32F96D6C4FF7714FEDF26A5A7
          B4E2D70A7F21851579A4B3AE49F4B75640860935D2AE1A708BC76B927ED5CA4F
          812FDEAAAFD7E397DAFC895C5F61127EBD16BF2EFC095C2602AFA7F8A452D805
          35A22E655F8DB24BB98FDB580AD11B4A236A43794452EEA3365645E4FAEA085D
          5F0B915B9C11BED50D61DB3C10BAB33EC2F7B440C4C1A71179AC23224FBE8FF8
          CBDD90786308D2BCA62027642110BD9152BF97C1E51125F57929D75090CEFBD2
          68AD373030303030F8CD507F0CE1FF3BE30BE45F3155CF5903247C83BCB0A148
          F1F90C09B7DE40FA9D579176E3694A7D53CA992B922E5B23ED5A35A45FA7D85F
          2B838CEB659075BD14326E50D2AF516E49EAB5528A94AB14D0ABE59071A52C32
          2E952994F80CCA7D16030121FB5249E45C2EA5A61985C2AF912EA93D7F1BE12F
          65E27EF12FAAD2A35324FC52775F4A71AA929C147785AAD45384DE915706D87A
          10C9E34FE43612046E4350036FC9405C32F2EEE632AA93AE20ADF2E99B780D37
          F1B80AABF2F09A50E275E14F5E4FD9DF5016099BCA216E6B59C432E80867A011
          B6AD324277582278A713A987D0DD4F207CDFF3083FF83A124E7D81C4737D917C
          7928326F4D409ECF4C20643910B31D483CACA5E050EA91E9C9DBD1DCFD696060
          60606060F05BA3FE18C2FF7782D7521FB936F700F293562227663AD2030722C5
          FB23A4DC7D1529B7DB20E566437A980B52AFD820FD6A2D645EAB8E9CEB554839
          E45CA5A85FB1400EC9BB4609E734F3126594D38CABE40645F426C5F146494A7F
          496E83027A95B22FE26F92FF2C927991422E79FB147F998AE06790AC8B25B416
          7F33B2FFCF137EBE8762C29F2EF0B14EAAA284D64197E8E53993B795D3A67C5E
          893E5F575CF6055DF4B5CEBA5A87DD8C0D0CE428F7E9EB2A23657D65246EA882
          D84D5511BBB126A23659216AB30322B6B9225C897D2384EEA3DC1F6D8798B3EF
          3220FC0C89D7FA20EDDE58E40751EC235702F1BB18448AD89F6040791148BF45
          B937FE9F181818181818FC99507F0CE1FF2B2323D852F00B28F8797B80EC5528
          489E8ECCB0BE48F1FD2F92EEBE8CE43B14FCDB8D28F96E48BDE680D4EB5648BF
          5E13E937AA705A9E53BD25BF0CB2AF9541EED5B2C8BD5C0E79972A20FFF2636A
          9A7BB13C722E9545F6E552C8A2E4678AF83318D0499760E032059A32AF0B7D61
          BACFB9D2C83D5B8A94289CE69F9179AEF313C2FF207F55E1977AFCFAC8BCC53B
          ED0A29147EA9D6A32AF650DC5376F2755C474891967B69C517A1DF299D7CB98E
          6994DEC4EDE528F7E590B6A91232365642EEB6EAAA953E63530525F8699BCB72
          CAE3D9CC00403AE16E2ACFF92A48D9500D896B6A2061AD1D12B63823629723FC
          48F4D156083BD40E7EBB3B22F9E200245C1883E41BDF20C77715F242B702B187
          28F397C01B0548A5D44B0A4E4E00EF3D73F7A4818181818181C19F09F5C710FE
          BF1272AD285D3885825C0A7EEE2614A42F4666EC14A486F54372C04748F4EE80
          A43B2D904CC14FBF6D8FCC9B35491564DEA880AC6B6535B1BF5196CB28AB3729
          A53729A53728D5D74B51F829FB57CB23F75225E45DA4EC93820B8F21FF424525
          FDB99728EF574AAAD6FF6C4ABF4E16653FFB12A71739BDA055E411D9CFA3ECEB
          E49F29558C326A590EE5FEC7845FC4FECF2FFC5CFE10C22F0368691D76B57941
          893D9165323AAF74E64DD85E12F1DB4A207E6B29246C2B8DA41DD2A957449F81
          DBDAAA485EFDB8227D632DC4ADAA8CCC9D14FACD9688DB6285C84D7688D85C1B
          31DB9B206E675BC4EFEE80D4831F20FDF46748BEFE0592EFF541A6DF04E487CC
          03E2F702890C1EE3E51E3377FF19181818181818FCD5507F0CE1FF0B90731BC8
          3A4AD60129DF212B7638D222BE4092FFDB48F17911899E4F21F14E13E28E943B
          8E48BF6385ACDBD59079BD12B2AF97532DF7D9D744E8C9F512C8B95192D25F12
          D2B2AFB5F03310A0EC4B475C11FE9C2BE5542BBFD6D2CFE945060202853FEF32
          A5FF522942A9A7E8E753F40B4B6F9A643FEF9CC83E395F06B9E7F8BA1FC0FD70
          FAF7A9C37FBFE8EBE8293D45C25F4A937D69D59716FE3D0C00F6721B7B4A9B5A
          FACB20754739520129DBCB13995628ACDA239D7A052D8F9FD76D4B2524ACAD88
          94CDB590BDCB0DB1EB5D90BAFB0904AC6E80C04D6DE0BBA91D3C377784E7F60F
          E177A02F828F4F44E4F9850C063723D3E710D2FC8F212BEC32B2236F2327C218
          8CCAC0C0C0C0C0E0EF88FA6308FF9F945CD3A057A9078098C5C80D1D87ACA0CE
          C8F07F03295E6D9174A73E526E3921E3962D32EF5823F36E7564DF7D9CF31528
          FBE59175AB0C726E52B829F4B9374B21FF4629E45DA798935C924DA4555F5AFC
          1522FC2672AE94BE9FCBA50AC9353D16E9CFA7F40B0F0ABF4ECE45BE86487A8F
          9075A1F47D3C28FBBFA5F0FFBE65393574E117D917A957C26F4AE149DB45C957
          2DFD5A8BBFA4F7C888BA92AE934CB94FDCF61812B65446E2D6AA8AA46DD590B0
          D5C496AA88DB5A13313B1C11BBBB2EA277B540D4EEE79076E263DCF8FE555C5C
          F601764D7B03DBA7FF179BA777C6866F0662C3AC09D830672636CC5B828D0B37
          60DBD25DD8B86837D987ADDF1FC5C6C587B17EC161AC9EC7C7AB8F60C7FA03F0
          BA6DFC6F30303078741C39701DABBF3F86158B4E61F5E28B26CE93B30FC0658B
          2E63D5C22BE412D62CB984558B4F63F5D26358BFF2280EEEB9C0CD99DF878181
          C10F517F0CE1FF3321035F9D04D23701C9F390173102D9419F23CDEB55A4DD6E
          85F4DBF59075C71139776C9077A7065717AAA3E056654A3D459F929F758B127F
          87827D97A27D9B524D726F91E2D27F8D627E559BEAE45EA3A49B903C7D05970B
          92B3AFB8A23D97CDA9A0B7F4E750F60549E7C9E654527B149735D2CD201D81FF
          FA75F835F4329C45E8C22FA2AFC9BE127E917C69C52769BBCA16CABF8EA4EF24
          EE2C8BC45D1591B8A72A85BE1AA2B65B21629B1DC2B7392362477DC4EE790249
          879E45C289571073F13F88B8D495F7C764E4052E43ECB555D83577343E7FE939
          BCF7643BBCF3E46B78B3F57B78BDD587E8F8E4E7E8F04437BCD0B207DA35EF83
          179AF7C7CB2DFBA37DB33E7891F32FB4E88B179FE88B0E4FF5C6ABCF7647DF2E
          1371F7BA5103DFC0C0E0D1E0732F19C3062CC04BCFF4C5F3AD06E2B9E6C3D0AE
          D970FE3FE2B4F9A0629896371BAD78A1F928BCD46A049E6DDA07ED5BF5C2EBED
          7A63C69435DCA4F9FD181818FC10F5C710FE3F129EFB829B40FE698AFE2E2063
          09B263C72235F0732478BE8A64CF3648BDD30029B71C9071BB1645FF71E4DE2D
          8FFCBBA55170A73405BE0C0AAE939BA59177AB2429C140A0249F2F05789641F6
          4D4AF48D922A8547C8BB5E5209BD2EF9F994781D5DFA25E5A750F4191C08D231
          5797FE42E12FD6EA2F6537F51C7E41C9BC3C3689FD0F44DFB4EE5FBF2CE72F10
          FEDDBAE46B693B693BCB735A11C92471472524ECA88CD8ED5511B5A306A276D9
          236AAF1B220E3441E491A71173F235245CF80869D77A21E7EE48C07F2A103A07
          C8DE06641DE2F40A32226FE0CAC1C3F8BF573F454BA75750B7C66B6860F501EA
          5B7E443E415DCBCF50D7FA0BD4B3EE8ABAB63DD0C0A6171A58F74013FB3EA867
          D90D752C3BA181DDE768E0F011DA36FB024BE6EEE32D6AEE9E3530F86B73EB5A
          388E1EBA0A5F9F203E34BF8EC1A367D5D25378F99981A8EFFC29EADA77457DEB
          9EA437EADBF420DD8A302DAF5BAB2F1ADB0D463D2BFEAFB2ED8EFA769FA1B1F3
          C778ABFD101CDD27E3CA98DF8F8181C10F517F0CE1FFBDF147013CB5116EF3B7
          0269DF213B6AA8EA701BEFFD0212BD9A23D9CB0DA99EF6C8F0B246A6670D64DE
          7B1CD95E9591ED5D11199E2591768F5249B2EE51B43D29DD9E2590EB4971E7B2
          BCDB14774ABAB4E0E773AAB85624FB22F492CE23E45DA5FC2B4AF1390DC9F357
          B25F4CF845F455A94E0ABB74DA559D77490EC9BE5C1A5997F81A4ABF54E9D185
          5E977A41AAF6649DD7C83947A45ACFB9DF37A5E78F107EE9A46B4EF845F65376
          8AE45743DC764BC4EF7440FC1E77C41D688AD8C3CF20EEE49B883BFF31526F0D
          419ACF97C8095B02AECC7BE584927BE4DE62A0C82FBCBCFB07AC9A3C78215E6C
          D61D6E8FBF8F960EBDD0D4B6379AD8F44623AB1E6868C52F58C1BA33E7896577
          D4AD46F1B7EACF80A00F3C6A75433D9BCE68E6DE05FDBB2F40A04FD67DDB3630
          F8AB73F7660CB6AC3F8B6103E6A05FAFC9B878E106179B5FD7E0D1E27B2F037D
          BACC47338FAE70B7EE06772B0ABDA5D093F07F9155370D9997E594FD3A35FAF1
          7FD600FE6FEA050FCBAE6860DF096D1B75C7B4B1DBB849F3FB313030308FFA63
          08FFEF819CE3AB14FCE314B69DC8495B879CA46F9111FC3932FD3B22D5E749A4
          78D543BAB703327CAB23CBA72232BD4A23CFA71C859E427DAF8C9A667A956210
          4001F5A11CFB73EA4DE1A4E467DC2514FD1C22C25F708BBBBC496E9420255170
          5D5279B4567ED5827F8322CCA96AEDBF4FF6B5CEBD7A0BBF8E5E975F845F3AED
          E65FD4845F643FF38A2EFCA534E13751549EB348F295E89F2953C84377DA3DC1
          7D9AC19CF0671DE55424BF3887B93E11A1BF1FBEFE01EE177E065DC548DD5FE2
          87EC2B85648A7ECA9E0A9C5641F2EEEA48D845B9DF6143777742CCCE3A883DF0
          24A20FB7A7E0BF8DD44B9F21FBF64014F84D022229F829DB81D4C340D605DE37
          FFBB35EBEC617FBCF1EC10D4B7F90C0D6D7AA11EBF30EBD6ECA3A857ABA76AC5
          17E16F60D3058DF8852BC2DFCC7630DCAB4A4BFF4034B2EB877A765DF1E25343
          B07A29835133FB3030F82B72EB5A34562D3D86013DE7E0E5E7BAE3C5673B63FC
          E805F0F70BE3D3E65F63F06859B9F80C9E6931101E76DDE0568B526FDD9FFF8F
          4C58F7D55AFA0BE163F5DC20B857EFABFE3FA95F01EC3EC1DBED87E3FCD1106E
          D2FC7E0C0C0CCCA3FE18C2FF5B21ADAF37286B47809C0D40C64CE4C70D457AE8
          C748F67B0DA9BE6D91EEE58E2C4F6B6479D524D590EDFD18298F5CEF32C8A1F0
          E77A9554480BBE06A59BC2AF934DD9CFA1EC67DFD1C895D67D93F44B7A4F3E85
          5F278792AF0BBF8E08FFFD88F873DDAB5CD784DEB2AFC1E788E4EE17A6F39852
          7A44F01F4417FEACF314EEE22DFC261E947D09008A4B7E717E28FC0C368E9745
          F6B1F21A32AF6000728CDBA1E8E71CE77E38CDA6F06753F8B329F942EE61EEFB
          08B77190DB38544E9171B02C320E50FE15DC1F255F27E32085DFD4A22FCF6772
          DDAC831528F6E528FCE59176B01C52F69741E21E0B8D7DA5917CB022A79511B7
          CF92B8206A4F23F234E20FBE8EF4939F20FDE240A47931E80B5D09C4EDA4E0F3
          3E493F47C1BF09E4FDF2CFE4D8A1CBF084C7E768E4D055B59AC917663D4B4ABC
          1585DFAA07EA59772F421E5B4950D05BD1C0A69FFA426DE2DC05BD3F9F8F40AF
          4C6ED2FC7E0C0CFE2A5C3D1F8AD9D3B6E39D0EA3F06C8B7E685EA7339ABA7F8C
          579EEF86E387F83933F31A83474F90573EDE78612C5AB80D413D9B0170A9FAB9
          4A29AC6749A9AF459957709EFFAFE4D746F5BF89FFB71ADA0C82D363DDD1C076
          28EA587547DB267D3071E46A6ED2FC7E0C0C0C7E1CF5C710FE478DA45B9CA2E8
          EF4241EA02E4C68F47465867A405BD8114BF2791EC5B0769BEF6C80EA8851C9F
          0A74BB32C528558826FB945381A26F8E3C4ABEA08B7EEE6DCA78716E16615EF8
          F91A85CC17A1CB7E6EA1EC7399598A72F8FFB7F0FF909F127E11FBFF25FC1927
          CA53FA85B2C83C519AB2CF6339C1F54D2DFB4AF4852322F85C7E98CB490E253E
          4BD2790E6AD29F71A834D20F52F445FA399F79B80CB28EC8320A3ED7975F03F4
          F55540B0B71452F79441F2DE7248DA571149072A23F9C0E348D85F1DF1FB2D11
          BBCF1651FB6A23FC4003441F7B1A8917DE43DACD5E0CE4260241F38028068089
          0781B44B0C061F3E17F5F8016FBCF1E220B4ACDB132E35BF407DDB8170AFD517
          1E947E0FAB7EF0B0EE753FB28C4840D0C0AAAF0A001AD8754687A78662FDD2F3
          DCA4F9FD1818FC1538B6DF1B5F4FD884775E1986E79FE883FA0E9FA3B97B1FB8
          5B7F8696F5BA60C288EFB99AF9D71A3C7AE6CD3888679B0D43DD5AFC9F536B30
          1AD9F551A93B4AF295EC0F2E26FDBAF0F7827BF55E68EA300C752CFBA2A1632F
          BCD97E142E9C0CE526CDEFC7C0C0E0C7517F0CE17F14DCE3E41C257F3B90351F
          3989A39015F30552C3DE4072501B24FAD545829F2D92FDAA21D9BF225202CA20
          DD8FB2EC5BFA3EC92F82E2ADCBFE3F49F8C9CF4DE9493F5D1AA994FED453A590
          C66519A6E7B24FF27527389516FEA37CBF8719081C2E8F2C534BBEC87C06E55F
          243E87329FADB7E02B4A209DC29FCAD7A41E2E89B423147BAE97C67552F71353
          8E7ED67EAD953FED00657F7F15C4EFAB85040A7EC2A1E64838F602E24EBE83E8
          D39F21CB7B1C728267A120761D90BE9F727F9AF7C81514E036EF9747F3B90BF5
          CBC798C12BD1ACCEE7A867A7FD545EA7D61078D41A0E0FCBA164B049FC4D580E
          2C5C2EF9B1F213BA74886BE2FC0506755D82C0BB39DCACF97D1918FC9939B8D3
          0B23FA2FC76BCF0F57ADC1756C3E814BAD8F55EB703DBB9E68E0D8593D77E6A8
          314AF4EF85E7AD687CF0FA783C51B73F5CABF650293A4D1C06A04E4D0ABFB4E8
          174ABFE9174941FD2AD9076E928A68CB795EBBA66E5D316DC20E6ED2FC7E0C0C
          0C7E1AF5C710FE5F8B942CBC44F602D92B91973E1DD989839016F51F24063D83
          789F3A147B07A406D4405AE063C80AAE80ECD0B2C80AA15406512EFD28EBBE25
          CDC8BE21FC3F4FF84B2295CB534F53C24906B94FF855EB3EDFEFD132C8A2F067
          1E294F812FA349FCD1124833E5F48BEC2B247DE730AF0D455F645F48E2B29423
          A5B96E45520929872A237E7F65C4EDAD8AE83D96883D5207B1C79A21E1D47348
          BDF02FE4DCEECBDBE26B20620510BB0B48A1E0675D030A7C789F98BB871E9EC3
          BBFCF146FBE168EADA1DB5AB7F81C60E23E05A8D925F6B8449FA392F925F28FB
          F29C160C68C2DF138D1DBBE0C55603B069B9DCCFE6F76360F067C4F74E3AB6AE
          BD8681DD17E3A53643D1AA7E6F34A9DD1B6E965DD0C871800A80258DC4DDAA2B
          9EA8D70B93466EE4CBCC6FCBE0D1B3E0BB7D2A9DAABE7D0F25F31E35255FBF2F
          85BFA72985A78842E11728FC756D7AC3A566273477EF89D75F18864BA7A2B949
          F3FB313030F869D41F43F87F29D29A2F837EEC0072A6232FAD0FD262FE8DC490
          179118D81CC981EE480DB2467AE0E3C809AE88DCE0B2C80B2A85DCC092C809A0
          24FB733E80CBFC8912FE1266D1645FCBE1CFBDC7C766F8270BBF9A9AAAF3481A
          8F4AE7392E693D0CAA8E95410691349F8CE30C0E1800A49848E6FAC95C3F85CB
          530E97A5C4330838584AA5F064495EBF040187894CB90D11FDC423351073C81E
          1187EA20F2E8138839FD02A22FBC8F44AF8148099C849CA8F940D26620FD2883
          3F0AFE03D5737E2BC27D0B3076E01AB469C82F539BCF546B7D9D1A7DD0C06A38
          DCAB0D543F9F4B9E6C61AB99FA32E56359AE9EEB878676BDD0B4F6E718D46D01
          BC6E2671B3E6F76560F067C2F3460ABE9F7782A2BF14AF3C3D12ADEAF5436367
          4D122505A44EAD0170AB314805B892DE262921AA75FF48305F6E7E9B068F16AF
          1BE9F8F0ED296856BBBBCADB6F68DBDFD419B7BFAAC2A3897E9F420AFF3F99FE
          67B95B764343A72E68DDB033664CDECA4D9ADF8F8181C1FF46FD3184FFE722E7
          E924257F23257F167293872023F275A4473C8194A0BA48F2774472402DA40755
          56ADF9394AF22D901F580220F97E94691F4ABA6F6914F89653E4FB18C2FF6B85
          3F8BD31C0A7CAEEA9CCBE338261D782B22F3D863C8A0A4A71FAB808C13659176
          AA145245F28BA1E49FC29F7CBC3C928E94A7F89747DAE10A483FC4F97D65555E
          7ECAC1EA483C6883F8C375107DB415A24FBF82D8CB9F20D9732872C3BFA3E0AF
          05B228F8F957795F781273F7CC6FCBF13D0178E3B99168ECF439DC6A7ECA2FD4
          BE70ABD6134D1D46A89276EA8B53FD3C2E39B1D251F7FE2F5569656BECD8032F
          3CD1079B579EE326CDEFC7C0E0CFC2D5F3D1F866F276BCDF71B4CACF9732B21E
          365D55FA874BF55E70ADD11B75AD06A1BECD304E8751FA07A0A1437FD5BF65CA
          68A375FFF764C9ACB368DD80FF73ACBBAAFF41524CC0BD460F5341012D5F5FA3
          D703C23F50CDD7B1EE8226AE9DF07AFBFEB87CD608D40C0C1E06F5C710FEFF41
          C12D4ABE5450598E82E409C88DE94AC97F0369214F22C3BF36B2FDAD91136889
          DCA01AC80DAE8A9CE04AC80C28A772F4337CCB2037A03CF2032AA0C0AF3CE04B
          7CCA025EA555CDFC02117E1F4AFB83FCA8F0338828C66F2DFC8256A5A7B8E417
          E70F14FE933C2FC7184891DC6322FCA529FC5A275E91FDD4E342398D13659076
          AC24D28E6BA93C32EA6EDA314DFEE31830243058483A5285826F8DF8FDB59178
          A829038217107BF80D249FEB861CCF2940C4724AFE3E20F33CEF87DB14FD3F36
          0FD8DF2B11E306ADC6530D7AC0C3EA13CA4D1793D8F741036B49D591CEB826D1
          57D579E44BD7549D4705017D546E738B3ABD30B8D76278DD8AE366CDEFCBC0E0
          8FE6C8DE3B183F7C25DE7A69189E6CD44D55DC91819864EC08B9DF1BDA0C5129
          6B7539AF52782891AA224C8DAE68E2D29DAF1B8133477F9F5FDE0C6071E34222
          FEF3FA0CD4B7EFA55AF61BDBF3DA5875A3F07751ADFB45C22FFF8F4CFF9374D9
          D77F7D74EA86560DBEC0B4C9EBB849F3FB313030F879A83F86F09B4372AEAF00
          79FB2978CB5090300ED9919D9011F212D2839A202DC809D9947C045607022A03
          FE1591E75F5EA5EA640792A0728A9CC00A8A5CBF72AAD466817769C0AF0C40A1
          2FB82BC2FF80E8EB18C2FF3384BFB492FC5CA25AF78F9756293C42FAF132F773
          B4ACCADFCF385CA6B0F6BEE4F2C7F17591C71E43F4311BC49DA847DAAA41AF52
          2F7643D6AD0940F82A2086929F7A01C8FA635AF17F8C1387EEA1439BFE68EEDA
          1D0DEDBB5176BAAA167E69B59756B422D9A7E80B14A3FB4A7272DAC8A9279E6E
          D6079B574B8A9AF9FD1818FC911CD8790323062CC45B2F0F419B263DD0C4F50B
          D4B5EBA42AEEC87D5FA7665778D414791CA6D277249D472A51493A884B8DCE68
          EAD207CD3D3A61D2A835DC9CF97D183C7A96CE3985368D86A8EBD1C87630DCAA
          7757A3E83671ECAB845F2AF61409BFD60051D4BA4FF83FAA71EDAE78FD85C1B8
          7AD1A8BB6F60F0B0A83F86F017C79713CA4FF62614A4CC405A7857A487BD89CC
          90D6C80876A3C4D7542DF892979F1F5496F25E912F798CC25F81E25F0E798165
          542A4F76304597640551620329EC242FA0240AFC641784522FFC7CE1BF5FF475
          FECEC2FFE3B2AF09BF94E54CA3B0671CAF88CC9315483995AFAF0FB8957D429B
          661DE5362437FF5039641DAE84CC835590B1BF2A92F75B21F6881BA24FB542DC
          B90E48BCFA29B27DC601D194FC94C3947C067C66EF913F9E9080788C18380B4F
          7874462387EE4AF655ED7D69D5979FC5F9E5D9C046BE447F42F839DFCCBD1B86
          F5598E9B9723B959F3FB3230F8A3D8B6FE023E7863A41276913FFD1E16C997CE
          E6756A756190DB1B3240537DCB216A2A32E961DD43A5F93470E889064E9DD0F1
          F981B874DA90C6DF0BEF5BA978EF95F1AAFCA6FCF222C50164F45C0FCBCE0A19
          FB43AAF278D4E4F3A6BC7E95C253A31F1ADB0D53695975ACBBA94A4B92BB1F1C
          90C8CD9ADF978181C1CF43FD31845F90D6DB7340CE16E4A67C83ECD8BEC88E7A
          9F92DF0A99A12EC80DA981DCD0729C5A205F87328F404ABF7F39CA7E292D4F9F
          CBF2823572B84EB6083F915CFEBC004EFDF93A81D2AF6308FFFD986BE1FF31E1
          57A93A27CA23FD1465FE5459649F62C07592DB11D13F4664B02D1988EB7865A4
          1D961AF9364838E086D4632D917EB60352AF7E865C9F5140D45C207123255F3A
          DDFEF907E4397AF002BA751A83775E1A86D79E19850E4F8EC0AB6DC6A063DBF1
          9C8E53746C3B161D9F1E4946906126649ECBF89C7474FCF45FD3B06FDB5D6ED2
          FC7E0C0CFE28EE5E8FC547EF8E437DA78FE066D9499567541D3D451E6BF55383
          C5498773117FA9FC52B7E62053EB30E5D154CAD1B5D66778A25E374C1D6BE4EE
          FF9ECCFB661F9E6DDE5F5DA3065643D535910609493B14A465BF81E50025F922
          FD3295D174EBD6D2AE6D5D9BBE68E2D2136FBE3802E78E1BB9FB06068F02F5E7
          9F2DFC9739D90FE4AD444EDA6464C474464AD8CB480B6D86ACB0DA94F5EAA64A
          3BA55110521279A114EC300A32A722F41200C8BC040079120450F485020ABE4E
          9E927D4A7B406955A1272BA00C32FD29AC24EF670B3F1FFF01293D7F964EBBE6
          85DF0219674A6835F84DADFAD27957F2F9554E3FE7A5CA4ECAD14A883D521391
          C7EA20E66C3B24DFF814397EA351103A1F88DD03A45D01F27FBBB299BF059E77
          4371F2D84D1C3F781B92DB7C78CF5D1CDDE78963FBBDF8F89EE931D97F9BDCC4
          D103D735645E96C9735CFFE4213F04F919A3EA1AFCF9983D6D272457DFDDEA73
          34B21D8486D6C3E05163B096BA53530452C68FA0EC5B763509A356794AC45F55
          E8A9D55355E679F7E5C9387D249C9B34BF1F8347CB9DAB7178FBE591AADF84FA
          B551AF1466C5E0CCAAAB4206FB6B60C5808092EF5E5D7EA119A090804D5212E5
          D799271BF6C6F4C946DD7D03834785D9857F7B0AFC810219F8E8A4127DA44F40
          7ADC17480A7D094921F529FB36C80EAB8CFCF03214FC924AF4115C0A082D8B7C
          218CE24EC9CF16C235721804C83291FE3C69F90F30E1CFDD715AE05F5AE5F72B
          D99741B728FF190C0272A416BF21FCBF5AF873643B7C8D2ACD49C1CF3A2A036B
          5542FAE1C79176CC1249271C117FA631E22EBD88A4BB9F212BF44B53759D6340
          EE2DDE0366EE0F0303833F94BBD7E255CEBE8C2D216536A595B84E35527D08C5
          7F844920FBC0A39696C3DFC8AE1F1ADA0C54818008A6CAE5B7EAAD72C8278FD8
          C94D9ADF8FC1A3475AF75BD5EFAEEAEE6BB9FA5A4BBE26FC5C6ED5A350F845F2
          551961066BF22B8DACA746E1B5FB0CEF771C872BE762B849F3FB313030F86598
          5DF8F7C624FA591B51903A0D39319F223BAA3DD2C21A213DCC0E999195901B5D
          02799194490A3CC24AA020B81C0A821E2355911FF238F224873FB40C9FA7CC52
          F4055937C794CA232DFA22FAF067A0E05796B2AFA1097F29640696403AD7C960
          20F003E1A7E8EB9817FEFBF9A70BBF94E614B24FF1184E5742DA899A4838668F
          84130D117FF639245DFD37327C8602B18B81CC030CF0AEF1FA9BBB2F0C0C0CFE
          2C2C9973485567A96FDB45A57C48CBBE478DA168506B181ADB0C5539E0F56AC9
          C04D94C39A3D541EBF8CDC2AADC59233DEC076281A3BF5C7DB2F4EC6F17DA1DC
          A4F9FD183C5A6E5F4EC23B1D46A3459DBE0CB87A2AE1D7645FFA1349E94DADFC
          A61A644BA567F557D74C845F5279E4358D9D7BE189FA9D3173EA2E6ED2FC7E0C
          0C0C7E396617FE3DF1050A64D4D335C84F9A8AAC983E94FBF754C59D9C1047E4
          86D7426E6445E44551A029FB427E04A714F9FCE0D2C80FAC442A53FAAB3000A8
          A48280BC50CA6E486942212739C114F0A012AAEE7E5E4069D5AA2FA22FD57BD4
          205B44527A7228FAD90C08841FA4F418C2FF8B72F8A5D466F2D172483E5E1D09
          279D1177BA05E22F7544BA670F5E932940E26A20FD20907F9DB781B9FBC2C0C0
          E0CFC4DD1B4978EFD551AAFEBAE4E8AB929BD6C3D0C866241A5A49DA8EB41A77
          A34876E7F201147E0AA4754FB8D7ECACF2C4A513A888634B8F7E983AC668DDFF
          3D993BFD804AC5A96BC3EB514BCBCDD7655FA66AA0AD5AFD51AFA626FC92AA55
          A70683374B49EF9134ACAEA8EFF0393E787D2C2E9D0EE326CDEFC7C0C0E09763
          76E1DF89FC021915F72CD906644E4356DCE748096B8FD4F046C88A70569D71F3
          C328F2E155901F5E41C9BB4ACD092F0144735EF2F525375FE5E77399A4F60495
          01024B03016539951AFBE528F965D468BA8288BF8E54E851557A180048102083
          6F49A59E028ABEA03AED1693FCE268C26FC28CEC0BFF64E14F3F5901C9276D90
          78AA1E92CF3F87B49B1F21C37B14324217203F79BF49F2FD89F97BC3C0C0E0CF
          C7A25987D0D4FD5395D6519752AF5AF855BA477F78D4900EBA5D298A3DD0D0A6
          17E571203CAA4B0D7E2D3FBC816D77D529B4816357BCFFEA249C3F6154E6F9BD
          B872360CFF7A6DBC0AB45CABF6E0F5D206CFBAAF659FD7AB9E74AEAE3940137E
          3B4E190848EBBE0A0CECBAAB74A0D9D3767393E6F7636060F0EB30BBF0EF810C
          8A241D7277A120E73B64C4F7444AD46BC8886C899C1857E444D7404E64398A7D
          290A7F290A7F19148451DCC305CA7B5869E48695449EB4F253FA0B24BD4708A1
          F40795D484DF9FE22FE5384D88F81795E51428AB0F54E9292CCBE9ADA1CA729A
          917DA1B8F0E77852AEC92FCBE167A0F103E1E7F15C2FE2E1855F3009FF85FBD1
          653FF7025F4FB9D7F95FC29F61229DE2AFCFA7713EED7469A49EA6E49FAE82E4
          5335117FD20D71E7DB23E15A270654E381E4D540CE298AFE1D5E7773F784C1DF
          8940BF44DCBC1A858B67C270FC8027766FBB82ADEBCE62CBFAB3D8B1F102766D
          BB88B3C7BDB94E18827CFFFA65FDFCBC1370EF6614AE5C08C6E9A3DEAAB3F6BE
          EDD7B07BCB55BEDF4B7CEF17143B365EE6B26B7CEE86EA9C7DFE7400A4E28DBF
          77124203D2B929F3DBFF33E075231B6FB41F8EE67528EEB65D50DFBAB7268214
          47A9F822693C0DAC7BA0B19D26FE0D2C87300818884636FDD5A04E429D5A5FE0
          D966C33075F43E84ABB1F1CCEFEB8F22D02F195EB76370EB4A144E1EF2E575F4
          C4DE6DD74DD7F02CB6AD3F875D5B2E60CFB64BAA83FDB953FEB8732D8AD72F05
          21FE69DC84F9EDFED12C9E7544B5EE4B49D4863683188049D52493C84B6A8FB4
          EA53F6EBD71AAC5AF9A5B5DFA3562F755D553A4F4D1904B037DE7A6924AE9E33
          3A591B183C6ACC2EFCEB7317C8DB0D647FA75AF4B3E35E467674336447392127
          A21672231E477EC4634AEC0B224B01912528FC250BC90F2B5188AACA4344F895
          F44B075E52A04B7F4079525143497F454A7F05520ED97C5EABC1CF6D10D579B7
          B8F053E475E9CFE734BF50F629F33EA590E3CDD772AACFE7789546CE3DA1AC22
          D7B31C72EE72F95D8AF21DCA3551924FF26E090C5A6EF2F50A8AB9C8FE4D8A36
          A7C2A3117EEDB9AC4BA59079B13445BFAC22FB3CF77D9EC740A917F2CF69E412
          5DFA73389F778E81C1690B641291FDAC73A590C1E5E922FC9C6671FB295C3781
          C21F77A62262CED820E66C43C45F6C8758A99B1FB11879890728FA178182BF77
          79C940EF54DCB8100F91A25B979249226E5F8955DCBD1CCF6902A7099CCABCB6
          FCCED504DCBC1487BBD79270EB720CFC3CE3E1E3F9F0AD9EE101F9B87325D9B4
          AFF807F62F533EBE1A8DBB5722718BC27D97DCBA1A0A9F5B31B8722E089ED7A2
          B919F3DBFE316E5E0EC7FE1D37B178F6418C1FB60AFDBB2EC4DB2F8DC31B2F8C
          C5EBCF8EC6CB6D86E3E52787E245D2E1A96178B9ED30BCF3E268F4F8740E86F5
          5A8489235762D7864B08F4FE734BAFE07F2F1D174E8662F7E65BF87EFE718C1D
          B802FFF7EE64BCF5C270BCDE6E14DE7A7E02DE786E0C5E9352AB6D07F3FD0EC5
          CBADF9FE5B8F4687D663F1EA53E34D255AC7E05FAF4E45F70FE76140B7A518D1
          6739BE1AB7055B575DC5A553B108F52BE0EECC1FC36FC12DDE17372F3270B99E
          ACEE4B797CFB720ABCAF65E3C291047C35722F9E6D32102ED53F46637B4AA249
          F655275D5D1E557A883696848865ED6A3DB5CE9F1214D80D5623EC3EDB741C56
          CFF7C5E59319FC9CA4F2FE4FC4B50B61EA9EF4BEA5EDFBFAA528DCB81AC4C332
          7FAC0F8BCF1D7EF62E47AA6A58CB171EC2A451AB30A8E702F4EBB20083BA2EC1
          D01E2BF1F6F3BC7F9F198D57DB0EE7351C8C979F1AA006D37BA5ED20BCFA341F
          3F3908FF7EFD4BF4F96C2106765FC6D77C8F09C33662D9ACE3D8B5F10EAE9D4B
          44981A3CD8FC31FC5E78DFCCC09B2F8C4733D7816AA02D190F44AAED68D76D20
          855FABA0A48BBE96C72F6385F4530372C9C05C724DA5EEFEB75F6EE726CDEFC7
          C0C0E0D76376E15F9582FC004ADF25207F0B0A52C72133FA7D6445B7444EB413
          72A31E2765911F591605119C52F695F04751F6A328DD1145E4879342E1A7B49A
          2AF51447D27B0A088208A55E93FF525A6A8F09196C4B83DB15D9D7855F527A28
          F97A2BBF2EFB9AF097FA11E1A720F371B66729C2408228F9FF51E12FFD3F855F
          7838E1D79FE3762FFE88F09FE379A2B8E753E085E2C2AF30A5EF649D2B839C0B
          15382D87F4D3A59176AA04D2CE9444F2A992483DFF18522FDB23FE72434450F4
          A36FFC1F7242A700E9FC62C8FE67E4E64B8BEE27FF1A8FF73B8CC33BEDC72B91
          7DF7A5519C8E3031BA1823F1D64B23C8304879BCF75E1D8337DA0FC37B1D47A0
          7BA74938735C3AAE9BDFCFCF21C837195F8FDF8AFFBEF9A5DA5711DC77FBB1DA
          543D1E81775F1E8E775E1A84F75F1D8CB75EEC4B39EFCDF941F8FCDF133065EC
          726ECEFC3E743C6FC6AB16EB518396E2FDD746A2FD93FDF14CF3BEAA25B1459D
          5E14BCAE6AF44E198C49CA334AD516415241548BAFF51768E1D6032DDCBF404B
          8F4FD1F1D9BE18D47D0EB6ADBE8C30DF1CEEC2FC7EFF08AE9D8FC08615E73171
          C43A74F9E83BBCF3F258257C2FB41C8027EBF54423C72FF87E3A69EFB5560FB8
          55FB8292D4090DAC3EE5FBFD1C1E35BBA89417C969572DAA32B891355F67DF13
          CD6AF75423323777ED8CA71BF7C6BF3A4C3649E4524C9FB81D47F678C3DF3395
          8761FED81E0592A6F1E1DB13550BFE6BED86A87BF2FD0E63F01EDFE7BB2F3280
          79761C9E6B32148D1D7B68A53645EC95EC17137EA150FA7BC1C3BA0F3CACFAA1
          91C350383FDE0B6E327093E3509EAB0178A5CD54BCD57E0AEFBBB1AAD5F89D0E
          DA67E2CD17876A9F8B8E43D0A7C7449C3975838767FE987F092101E9F0BC9582
          33C74230EBEB5DF8CF5BA3F91E87E0956707E1B996BDF164A31E68E5D11D2DDD
          792D5C7AF09A4807635E1F2B1163B9673F2792C6F499BAAEF5ACBE50835435B4
          D3D66DE12AF444EBBABDF07CB3817C7FC3F0DAF323F1D13B53B067CB5D04FB64
          F330CC1FDB6FCD8C49BBF054C3C1FC3C0EE2310F54C2AF7E9D7950F895ECEB29
          3EBDF85E7BA389C3209502D4D2AD1FDE7D658CD1BA6F60F01B6176E15F0F69E2
          B88882DC2DC84E9F86ACA41E488D7909C911F59111698BCCC8CAC88EA2804753
          C8A334F222F838A2D4CF10FEFB5BF87544F825AFBF40302D5325390553B59EDC
          204E19100832289708BF2AD329C22F53C9E357ADFBDC9697883E038562A8CEBA
          26D9CFE27A4226E775B2BDC83D0AF4CF127E6EE73710FE5C5DF8554A4F6993F4
          0B92D2C36351D2CFE338534E9173B614459F827FC10219172D90CA69CAB95294
          FBF2C838531999A71F578364659FA8829C53359079C20EC9C7EB23E1747BA4DD
          ECC16B321B48DD05E45D60602783A599BB1FFE7E8C1FBE128D5D3F427DBB4FE0
          52E33FF0B0F937EADB7F887AB69FA29ECDE7DA08A4C5F0B0A500DA7E0637AB8F
          552EB4BBCD7FD1BA6167F4EF361B7EF752B849F3FBF93948EA81C85A5DFB4F7E
          B86F7D545F13222CEEB53E437DDB4E68ECF439EA587F80BAB6FF42C7670661D3
          AA8BDCDC0FB77FE75A120EEF0AC4B4F17B29BD13D1BEF5083473EBAD523CEADA
          F650032AA951566BCA68AB22B582D6AA28553FA4F39FC2A61F1ADA72994D0FD4
          B1FC94E7EE333473ED44F9FF0C2F3CD10B9FBC3716F7AE4671973F3C86DF0BFF
          BB79D8BCEA3A06F7FC9EEF753C9E6B3108ADEBF7A7FCF451E25BC7B293AA54D3
          D0BE9B16D84849439B3E6864335095366C68D39D8FBBA83497063C270DACA484
          A586E4B5AB9195D528CB9449EB4FB9BD8F29C91FA38973170611BDD1CC9D538A
          A808E947EF4E50BF28C8AF370F1EE7C372E64830857B141A387D8C7A0E9FC2D5
          EADF68E8FC198FE5BFBC873F52C7E45EEBFF5480261D75A5CCA64AE17950F61F
          107E391F12E0C9FA228FEE35A4628FFC32D003AED53FA38076465D9B4FD4F61B
          D83330B2F93FB85B7EC4E59FAB7E023D3A4FC6DDDB0F37B053887F3E4E1D09C1
          EC6907F1E9FB33F042ABC1BC860C3C6AF7506308B85B994697E57590710304B9
          7F5507636BBE4FB96755994A5E4F06303A720D1BDBF33ACB7930BD57EDF5BCA6
          FCACC9B56CECF239FF2F7C8C675B765701C69EADD711ECF7DB066E0F22BFDCC9
          00594D5DFAA9E0CB5D1F23E1BEEBA70D88A6B5EC17E5F44BFF0CC9E397F72581
          CCB7538CCA3C0606BF156617FEB59016DE7D40F60264240F4262F46B488E6A41
          E1AF8DAC985AC88A7A0CB931E5901743018E298982184A3891D29B3914FDFC47
          28FCFAE05B3A4AF845FE3995CA3D5AF51E4A30653F97F29F63AAD293EB43C92E
          C4D4C2AFAAF3F0790603B9AA759F525D1CC9EBFFC5C24F09274AF6AF53BA1F5A
          F8B9AE2EFD1729F226E1CFBCC87D1476DAE5F19C2B4BD92F8F1C222DF892B693
          6912FEF44B2590CC002099C140DAE92A483F59835822FDB8236980B493EDB89D
          4F51E0351588DE0A645EE1F536771FFC7DD9B5F92ADAB5929127BBABD63E41BE
          EC1B397456E22092FB203252A5D42FAF674B51B0A3143A7EA15AC7776EBCC54D
          9ADFCFCF41524D86F6598CE61E5FA09EBD69FFA6D6BCFBE45B1D878C9A291D2A
          07A99FF7A58A4A3D9BCFF064FDEE18D86509FC6FDDDFC21EE89B810D2B2FE1B3
          FF4C57E939CF341DCEA0A617458D426037983238006E140419765FCAFD89D44B
          0EB0C88556EF5BD0F28175D4289E1444912B915FF945408E415ACBDB34EC862E
          1F4EC4C11DD2D7E7FEF7F95B73E24020268FDA84EE1F2FC0EBCF4F444B0F0A9E
          0325D0A6A76AB5165152D54B78EC224E725EA555DFBD86FC8221B2A4A54548A5
          9A426AF13D0A85CBB82E4553C92605518206B977A453ABE4B90B0D1CE4DEE8AA
          EEAD46B5BFC00BAD07A1FB2733B175ED251EA6F963FF358C1AB812CDEB50BEED
          28F48EBD50BB0683455E0BF58B058F4D24B691BDDC3BBC4FF81E25CD431B8155
          64F1C1D67D41137E392F6ED5E5979D1E9463AEC7655A5D7E8A24B7A7073C122C
          C97990FD689FA15E68F7C4106C5E738E8767FE987F0EC70E0460CC9075E8F0EC
          103CD18002EFD40D75AC78ECBC86926254DF6608CFF7A0C27B5190FBB5F07DC8
          3D2BCB6A6839EE85292FA64A36D25959BD467EB1E1FAC53F6BF2DE5C2D19C030
          98AFE7F0B10ADC5E6ADB1FA307AD40A0D7EFF7EBD5D713D7E0E9A60C561CFB30
          68E3F14A0B3F3FFF729F1609BF76ED94E83370D1C45FBBA612B0B5F6E88B775F
          1A836BE762B949F3FB3130307838CC2EFC4B501000E4F39F75EE4A207504D262
          DE4752442B8ABE13B2136B2037E131E44497417E4C790562CA10CA742C259AE4
          C669E447735322FD0F0ABF09E9B0AB77DA2D8E927D49E991541E41E5F4F3D028
          F73A22FA7A6BBFD4E8D7ABF664064A2DFE52AA0E7F26C9A0F80B597E14770900
          044ABD9027D24F0A3CB94FCABDE22E8387BB94F87B9478917D2EFB9FC27FA30C
          72AE975648759EACEB14F44750A52797C22EE45C28739FF0675EE2FBA1D0670B
          17F8FC59EEFF2C65FFAC26FD99E7CB20E38296AFAFE0E3D40B159178A606E24E
          3923E14C1B249EFF00F0FE1208DD0824FFF3445F080BC8C180EE0BF07CD3619A
          F055EF8D26F643E05683B2662B72275F9AD27AA6B5A0E9F3F2A5EB215FBA140F
          69196F59B72BFA759D471178B85175B7AFBB8D579F1D8E3AD26A2A2DFAFCF2D6
          5B1F35B9322132C363930193B4E1F2292CB2DCF66374683310EB979EE7E6B46D
          FADC4E518229BF3EB47FAA2F9AB953466D3AC1B97A27D5622B03F3C87B925ADD
          AAC6BAB5BC474DA08A829CA2913AA5B3A08E7B75090C06AB1C610910B456602D
          EDA7A13DA5BFD1E7983272153C6F24171ECF6F89CFAD4C7CF7E56EBCFADC603C
          DF72209A38755502DA40AACC50E6E4FAD6A921322FEF53AB4D2EEF4F6B092E6A
          BD97D66095B22379D0A6D6E1C2E75410A60538B26D3DE5490BCE8A6453F6E752
          8301906D1FD4AEDE4D0588CDDD0651FEBBE183D727E0D0AE47F30BDAA943C178
          EDF9D1DC6E4F552E53EE49D9AF87752FD51A2FF7B5C8A194D394328DFA356D6C
          3784D753EE6993300AA663D791F323F7831E1CE9ADFBF25E45FC55A0C7FBB389
          C30075DD45F4E59C3471EA893E9F7FAFF2F91F3CDE9FC3A943A114EB5590F424
          F96CD5B367E022010CF727F76163DB11BC36C3788D8613193740469B957BD334
          081551ADE0A66BA94B7E034B06B744BB7F19D09A06A3D2823E4DFA55C020EB4B
          10282DFDFCAC48ED7A979A52D9E80B3C51AF97AA9673EFDA6F3F82F6ADCB712A
          4DAAB97B4FB8D6E43DC4EBD1C876A8FAAC69015BF1EB66FA3FA1287A4EEECF56
          0DBA61CEB4BDDCA4F9FD1818183C3C6617FEF9B90EE41D00B2172237B633B262
          DA232DB21E32A26A21279E729F580AF922F422F051E548056D1A4D1996167E3E
          97974071161E5AF8B5D29C6A1A508A7099A4EE98F2F6F34DD22FB22F157BB218
          186404517403CB209DF29FC1F5D24DD25F5CF8554D7E11FD7B0C2484BBA55170
          A71491A9463E97490EFFFDC22F88F06BDCD7C2AF0BFF35917D5DF88587157E6E
          BBB0859FB27FB1C403C2CFD79FE3FA92CE738E818149F805A9C49379B62452B9
          2CFE5C35449C7541F4951790E1DB1F885E02649C05D27D78D9CDDD077F7FF66C
          B98DF64F0EA6B050706B0C844B15911C0A01BFFCB516345DF27531D21ECB48A3
          22FC2271EED69FA0C33303B17FFBC3552FF2BA9189015D57A8D668110D697D2F
          FC0257A2AFA5F168C2AFB5EE89B8B856EDAD44AE89635F3477ED8AFE5F2CC2DD
          4BE9F0BA9A8ECDABAE52F4E753F4FBA8D40449F368E0D819AEB53E4713E70126
          01D4C4479361536BA76CDB2440325FBC855FCE812EFC4D1D46F0B5FD790C1440
          1538E8C101255AE4CFE113B46BD903C3FB2DFED5F2F773905F46962F3881CE1F
          7E8BE79FE0FBAACD6086D7456447959EE4B5D45A72F99CCD70258C22FE5AB0C4
          F76A12FB46361A228ADAE0533C07D2322CE743B59A6A2DA8AA0F03917426B93E
          BA54CB3EE45CCA76551065C7EB435996348C66CEA3550BAD4B8DCE68E0D4096F
          77188A2BE71EAE8377987F1E46F65FA584B0813D038B6AF2EB94E4DC53E66DE4
          18B4EB21EF51AE8F767DB56BA84F75315428713421EBD41CA4CE956A09574183
          DC13DC47A1EC6BF74B633B7E1E780E544BBFD52778A9D5306C5C7E938768FEB8
          7F0CCF9BA9F8F6CBBD78A9CD60B46DC2E3A1E8D7B5EBA47EB568E8D097C75F14
          B06983850D54C7A8CBBE7EEFA9F7C56393EB28D74BAEA5D6CACFE7A574A5FA4C
          4B90AB7DD63559D629BAE7E517BC464E7DE1508501872D9759F37CDA49FF96DE
          F8F7EB9355A7E807DFC3A364E6D43D78B221831CFB6E70AB25A3E86AD74DAEA3
          1C7BD1352BF6BFC2F4BF415D3F062F4D9DBBA9FE15D72F447293E6F7636060F0
          F0985DF867255F46C92D3808E42C454EDA68E4247DA446C8CD8EB6A5C4574741
          7C3925FABAC42392921F511105E18F71BE1285BF2C72F99C48BF6ADD8F2F5AF7
          D708BF26FD025F1F249D76F5329D15013FEED397FBF463B0611A744B6AF1E730
          20C82299FE947D530B7FA1E8FB689D76F33D193CDCE336EE5422DC0E29B8CD6D
          DDAE88FC3BE5495925FBD2C2AF645F09BF865E9A33EF968674D6D591941EBD0E
          FFCF157E215B497F91E41747645F137E4DF045F435D9D7537AF87A117EA9CA53
          ACB36EE6799E83F30C7CCE94A0F49747D2396BC45F6986C47BFF4646D8444ABE
          D461F622E6EF857F023E77E330BCEF0AB4AE3F104E8F75454BE709148961FC42
          1DA05A3F0B5BD0EEFB42D584407269A525B5B1731F3475FB1C43FACC47B0DFC3
          E5EE6F5D731BAFB49DA0C4C6DDB29B12C3C2FD2AE12F86E94B5DE4475AFC64DE
          A55A273CDB7808BE1D7F14BBD6796158AF6578ED999178AA7E2F95DF2FFD1124
          C5C3C3EA73B8D5E8A464D5BD4617256E92B7AEF2F1AD29467CAC09ACFE7E25AD
          47CB89D6CE85D67A2DB855EBA9D05A8CB556FE42E995D748CE38A55F3A751EDE
          FDDB0496E78F4760D288AD78F5D991BC16D21AACF5AFA8EFD045A5B388844AFA
          898C162BD22A2227C72BF258287C22843529F2A4307547845F09B14EF17B413F
          2F5ACBB76C4F5AC2E5570341845484D2BD3A859141950C6CE55655F2AFB52040
          D2B55AD6EB84D75FEC819B577E7D259B63FBFCF166FB3168529BC7412195942C
          95EA623B9081462F757FC8BE9BD88D54C7A5821B93142BA195F7F4A350A2552B
          FA50ED35EA9ACBBD217D1D7AA1B9B3FCBA24626C0A0825CD89F75873B74F31A4
          C7220678BF2CD75D52EBDE7D65A412DC271B0C809BE517EABAD5A9D5056ED58B
          06FDD272EE1968F0DCCB3D2BF7AEF6CB4A51FA996ACDE77B54BFC4F0F3A32DE7
          EB54C7D62185D747DEA70AD4F89EF4F7A5DE275FAB3F27FB9480569D3FAB212A
          7873B7ECC163EC0FE94CEB772F89876FFE3D3D0C174E07AB8EE54D9D2590D2FA
          4EC8FDAA07E6FA2F7145F7A47C5E05F9BF656AA4B0EDA302A7F9DF1AADFB0606
          BF356617FE3991948EED40EED7C84DEB82D4B8179112590FF9093694FCF22A2F
          5F52754091472C653FAA24459F121E4E718EA03847519CA328FFD1146593F4CB
          FA0F2BFCB99C578450B08328EB011590EFCF7DF955A1F0573621E25F5E897FAE
          8CB42B82EF4F7C29CDBE3C1E53DE7EBE571905CC087F3E853FF74E45E4DE2D6F
          2ACBC9E0412AF698157E1EB389DC9B4514D5E117E1A78C2BE1E7730F21FCDAC0
          5BDCD6658ABC49F695F0AB5AFCA5917DBEACCAE32F147ECABFCADFBF500269E7
          CB23F55C2D249C7143C2A56791E9D70D485C04E49D6460E7CBEB6DEE3EF8E7B0
          7FC72D95CB2E2DA3EACBBC26BFCC558ACA4025AC455FA8FC322D146D4D8245F6
          2565427EEE7FE59921D8B5F9E152A202BDB231B8C74A55764F7E391079AB23AD
          CCEACBFC7EC9D4902F75913249D318ACAA7034731A84D7DB7E8D0F3BCE42FB96
          4320956744F025B75CEBD458D4222D39D82AEDA698E46B422F75BB3581D225AA
          08EDBDEBEB0AB2AE089820FD0874F9D747F854DBA6F44BFEF3B409DBF856CDBF
          FF5FCB8CC95BF1C16B93F0445D09BE7A5112BBC05D068872E80E57E9CC2C2DCE
          7CEF525148E4AFE83D1649A34CB5167E3DFD83CF735ED27CB4736CA2F05A98E0
          3211614DAEB49666BDB559172EE9142AD746056594CDBA56C394904BC768779B
          8FD0A6D967E8D3750ABCEFFEBA514FC70E5E8756F52980D6DDB8DDBEEADE11E9
          975158A5355ABBAF07692DE1F2CB55610BB826B3C5DFCBFDC83A22FC4350470D
          BCC5D7F3DC498028F78E9C3F114FD9B6FC6222F34A4A19DC7568DB076B161FE5
          E1993FE60791310C268C5881979FEE8B161EBC279DBAC1BEF227A86FA7E5A92B
          C9A7E82A693721D7500238B9AEF77F364DD7A516032B4B5E1BB54C5FCE0040C9
          FE30859606244141F1A041FBC5420507F21CCF95046D4DEC19F4F0B56E3506A1
          81ED70759EE55787F64F0EC4EECD8FA60AD183CC9ABE13CF371BACCEB9BC07ED
          DE95FF555A8384F68B1A8F53DE5BE16794A8EB67BAFF9CFBA880F0DE8D386ED2
          FC7E0C0C0C1E0D6617FEF9B8CAC95A206738B2925FA3ECD7476AAC2DB212AA22
          2F81821D5F1AF9B194E698922A4F5F097F8C894822D57822A41C27A59B4869CE
          FC28CA751497479AF811E117992F2EFCBAE84BA75D19813787EB64F1359932E5
          F392B6A34A71FA95419E0FC5DDBF020A7CCA330090567FEEDB8741889F96F7AF
          E63D1910DC15F8BC6739C08BCBBCB92F53CE7E2E253E8753D591D7BB0C32BD28
          F9BEE590ED5716A95C9E7197FB34A1845FD617D1BFC5D326AFE754A748F88B78
          14C29F7D850104D7C91428FE9AF053F4CF3148395B995450293D9914FE0CE1A2
          05D22F9646F2451B849D6D8524CF2F188C7D0BA4EE04B2AEF15A9BBB07FE79F4
          EB3A47556B11392D4CED50AD989417E9DC47699056EBDA8F77A1104865138A54
          0D1147AE633B50B5C0CB4FFB437A2D7FE8DCFD6DEBAEA2DD13143309242C2597
          5E8E495A6045BC7E1CBD85550B5006A85657414FBD1044EC7541D75BB8450AA4
          255E821A69BD141194C041B623DBD5831D113BFDB52245FABCC896A47568FB28
          261B4A3E4CF0F5B22F3977D2F2DEABD31CF8793E9A1AFDC1BEE998387235DA36
          ED89A6AE3D54474EA90FAF07627A7023830D4920A2072432155CAACAB16BC22F
          68D22702AF49A63A4FEA7C69E750DEAFBC0FEDB1D6A22F92ABFA5030509456F0
          86D65A7A939C43A98C22AF9773A29D73C9851FACADCF7B4D82B9BAB6945BE74F
          D0EEC96E58367F3FDF96F9F7FA639C38108C0E4F0F55B9FBD2922B818426FCBD
          D1C871105CE5D78AFBEE1793CC175EA35EEA7E960A3CF2FED5F5E63DA4DD57DA
          54445FD57BE73990F3A9049BF3EABEA3EC37B6190BF7AA5A8BB9B4F04B95A6BE
          9FCF44986F160FD1FC7117E7CED544F4EF36174F35EEAED29CA4C3B30466D2B7
          44EEC126B6C3E0F638EF35061D5AEEBAA4EE68ADFCFAB5298E2C976316E175AB
          56149CCA675CAE8D5C278F1A4319A48C365D37ADDF4AF1FB5ED693F726EF4917
          67EDDCC954DBB6EAC363DD032DEBF644DF2E731116F0F3DEEFCFE5E69538BCF9
          F210347260F06A0A46B4FB51FFFC4A303240BB5EBC9672BEE49E93CFB42C57D7
          8FCBE55788E5F3CF22C4FFF7E9436360F04FC6ECC23F15F9E72981CB9197D20F
          39F12F233BDE5D897E66625964C65384255F3FBE24859F821D435996CEB922FC
          D2DA2F44932881F21D49F996141F050380486DE0AD9F12FE075BF811C66D8772
          FD104A7D480964F3B108BF127F3E9F4DA46E7F6E7069E4F89743AE7F65E4F856
          43BEBF0D0AFCED91E36D8D6C2F2B45E63D1BE4DD7143FE6D77E4DF75A4E05B51
          ECAB50ECCBAB9AFB5299A7C09FDB3295E34CA7C02753E845F4337D4A22CB3418
          57AE0CC8656AEDCFBD5742050AD2BA9F2D55788A0BBFA995FF510A7F7671E117
          D997967EC9DB3F5F1ED9947D21EFE263C8BFC2EB75B10452CF9744CAC5CA48B9
          6487E88BAD90193202B9F16B788DCF00B946ABBECE9E2D37F1C60BA355DEBB7C
          C98BC02891A3D4284CC2AFA4D5D4A2285FB8D2DA280224B9FB4D6AF74587B6A3
          B07B933737697E3F3F8700EF440CECB110ADEA490BAD96F6A109882E1945A251
          84BE5C9772F9999F5220EF83CFEBC2A2E56C4B10D3571DBB264ADA7B11D1ABFD
          B8D49A97741EED7DC973322F52A55AE83995D7EB52AC0BB22EFF66455F50C72E
          C2AF8987E462FFF7AD49B87925866FD9FC79F8B9047867AA81C19E7F424A3352
          406D7BA9D66DA93224ADDA4AA64DC7A649D160355592AE023611FF5E68ECC0F7
          20630910A94B2FA923AA3E3D8305556D46AAEED84B5AD0E70CF0BE5048E51D59
          47CE9D74EE76AFD69FF23892223F5CB5A22BE157E7F7FE4EBCB26F3906B936B2
          8EA4854870222525A5BFC1A09E8BE073FB978DF22AB9FB4F35D2B651DF4E0B42
          45F6256548FD3A64AB5D83428A5F1FD37593C050906B2FE8C729FD33F4EA4FF2
          5EA43F86F66B8956AA55EE3DC9A1AF5B63381A5A8D56E7B889636FBCD45A3A8C
          F37F8D99E37D902B67A2F1EF37C6A94EE4D2AA2FD751DD7FF26B82BA8F792DAB
          F5457387D12A2D49A45F7E81538116AFB508AEFAD5C6740D0BAF23035139C6A6
          8ED28F84411FAF995C5BD76ABCBE1462FDF324EF51EE4F7D2ACB7559D697177E
          D60ACF99BC5E0BACE4FA4905A637DB8FC2A1DD8F7650C2AF266CC2B34FF0DAA8
          0EE772EDF4E0453EE39AF0CB71E89F49396F5AC38596DF2FE7B099735FBCF7CA
          445C3EFDC796C63530F8A76076E19F031F2D5F3FEB3BE427774366F4B3C88C74
          466E6C75E42796475E7229E424524E1328C4F16591175B4E212DFD92C7AF527B
          181028E98F2126E157E93D119C463238882EF9B3855FE5EB8BF053F6115A1AF9
          C125B501B6FC792CFE65F9B8B47A5E7E11908EB8697E1474BFCA48F3B743EC5D
          2744DDA88BB02B8DE17BBA01EE1DAB8F3BE4DED186F03CD20C3E479BC1EF6443
          049C7545E8455BAE6B89847BD591EA5D15C99EE591728FB2EC5D8E8103A1DC2B
          B1F7E4F150FA336F9740C69D526A9A4EA14FA7D0E731288027CF4D31D9CFE773
          79BFA285FF7F75DA15E1CF14E1D75BF625975F6AF08BF013A9DE23293CE97C3E
          F54A19C45FA885980BF5907AE34D64058E02D20F83510E2FB9B97BE09F49A87F
          A61A45B6A58726B1F2E5295F9A4AF46CBAF08B9ED227924CE1D75AA8354912F9
          1119963285D23A2B0353C9E89C1101DCAA99FDFC5CB66FB888762D7BA2B1A3B4
          9E8A1C4A6B24F74FA9D04443930CED4B5E47930095964319938A42226685AD7F
          96C394880AB23D91249102915C11592939DACAA3279E6F3954D5E17FB6D950B4
          6D3C184F371986967506C0C3A6ABEA47A064DF245F82CCEB8F358195797368EB
          6BADA494109B4FD1F1F9C1B872FEE106FDF1BD9D85A1BD57A8BC64A98E24A92C
          924FAD82104AA09C33AD0F81E93CD6180AD7C7296D924EC3F7222DF5326E81BC
          7FC93797165AA9CDFFEA3363F046BB096A3453E1F57663D0F1B9116A5029E940
          FA5CCBBE78BA591FAE2F653629FD369DE156ABAB122B915091513DB05062C87B
          49934FADFCA57E1E9558F258A4A55FB5F853CEEBDBF7C0EBCF8FC791DD3FBF03
          EF913DBE3C9F43D4B13857FF54A532C92F1B722E241546C45F82A0C2FB47A107
          674568F7B6C8A4F65950F71CAF57E13597A0C196EB50C6658C0669D596605705
          567C2F756A696531A5824C33F76EE8F5F9AC9F350E8554539201BAA4CEBDD4D2
          17791751950EE8725EB4FB4B0B3AE51C6B9F07492D92FB497B4E1B13403EB75D
          791E3BAB01B75A37E8437AA14DE3FEBCB7B54A4DCFB518A04A843EDD74A00AAA
          5BD4E9ABFA0748895625D1EA3353FCDE2D8E2EFC3DD43555C8B993E7E49CDA75
          57A3D72E9A75806FCBFC7BFDA55C3D97888E2F0C412397A2B2BC45D78CFB54C7
          A55D27792CCFEBBFCCC8AF3CEA971DBB9E6AF0BC7933F81D6F661F0606068F1E
          B30BFF78EE71B205F959139195F83E72125A51E25D5040D92F88AD80828432C8
          4FA2D893DCF8D2147D8AB7891F15FEE872947C1DCABFB4FCEBF9FBFF4BF829F1
          2A9D27B884127D917B2D5F9FDB0AA9AA72F473BD29FD8195F85C35A4FA5547CC
          3D2B84DF74C1BD3375707C9B33362CB2C5FCA935316150450CEC62813E9F5AA0
          F72716E8F9A10506707E544F0B7C35AC14D7298BCD8B1EC7D12DD6B8B4D716DE
          A71C19043822E1BA03D26FDB22F75E4D2D975F55E3A174DF2B8FACBB1590E7F9
          989ACFB851029922F892DEF37B083F653FF34A29645D92EA3C92B75F165926D9
          D7AAF63010B9540249974A21E6520D445D6E8E843B1F31E8FA0EC83C0AE4F8F3
          5A9BBB07FEB91CD871172F3EC52F5427ADB54CC98DFA429796418A204557ABD9
          CD2F7B7EA14AEA80D6CAA649BFC87523E72E78A1753FECD8F0CB2B911427C437
          077D3ACF42ABBA52339D1242F192D49A42E1525FEE3AF2B8E88B5E1300ADE6B9
          2EFCB25CDE93AA405353AFE03358B5E23672E88EA7EAF7C18BAD06E0DF1DC761
          40973998397517562C38854D2BAF61C3F737306BEA11F4FD6299925EE93829AF
          D38F459B8A0069ADD49A989984E8C7A0DC8A90C8E064AF3E3700D72F47F06D9B
          3F17FF8B50BF7C4C1EB94D0DBA2435C965FC006965D5FB3AA8FD486BA7126C0A
          38A55A52370469AD967325A2FF54831E68DFAAAF1A2179D2C88D583AE704F66F
          F3C5B9A351B8723A01372FA6E0CE9554C5F963D138BE2F183B37DCC6FC6F0EA1
          5F9705AA54A4742C6DE42CF5E7B5EA3CF25E454845BCD4AF1F56BC875400A9A5
          986842A65D471514F0BC489020F9F6D23A2F8381CD9B7E826FD3FC7B7F9061FD
          E6E3A9265FA881B6542A0CCFAFF427110175AD29BF4A0C5079FC45F789F9A90A
          48787F8B70EBBF14C973720F29D13489BE94A494ED4B594A37CB4EAA9F842C57
          1DCCADF899B1EF84979F1E80F52B4EF1F0CC1FB3CE91FD9E78F999DEAADC6643
          19FCCC4A4B29937B498234B9AFB4741CAD53AEB4D8CB3995E373ADD64D9D6F59
          2EBFC24845A0166E5DD0F1E961E8FCE177183D700DBE99BC535DD375CB2E60E3
          8ACB58BBF43C1F1FC38C493B5427FD1E9FCE55C19B7C8665DC08099A35A9E6FB
          E63EB520C89433AFDFC722FA522657AF9265BA9612343CD36CD0232B7919E257
          806FA6EC43AB86DC3FCFF5FDD78CA8FDEA9F2F4953937B4C6BD1577D2AE43EE3
          3593EBF1EF3726E0CE552377DFC0E0F7C2ECC23F960B94C0E5C84AEB8DAC9417
          9116E744E1AF8A82C42A14F84A14F98AAAAEBE927BC9DD57E93C147113057125
          5110CF790ABFEAC4ABF2F94B69C22FADFCD1250B655F527DD4A05B3F21FC2A87
          5F843F84DB0D29A5445F5AF6F383B8ADE08A48A74C23A83AE7ED907ECF1EB1D7
          DD1178AE310EAC71C237A3CB2BA9FFE0750BBCF48C059E6E6981160D2DD0B8AE
          059A90A6F538F5B040334E6579EBC65CA7B905DA3F6981379FB7C0BF5FB6C0E8
          6E55F0FD14479C5CDD009EFB1A20E2942B522E5B23FBE6E30C34AA23F3E66348
          BBF1989AE6DCA9AC8281ECDB5283BF245467DD07845FB85FF01F7CFCCB855FA5
          F55C2C47D1AFA0F2F6B3CF5550E22F01409AE4EB5FAF88C4EBF688A0ECC77B75
          011257F21ACB8069E6AEFF3F1B7FCF54953E23A52FD5C0592260FCB2979634ED
          8B9CA2568B0262AAD92D5FFA5A8A8096122372D4C4A93B9A7B7452A5261FDCFE
          2F65FBBA9B2A354586F4572925DCBEFEE5ADCB7511FA17BDF665AF8EDD8AA2C9
          631309D204A9BF423B5EC925EF83D675A4E57E30FED57132A64FDC89237BBCE1
          75EBC74520D03B177BB779A2CF170BF1645D11654D00B5FD492BBAB4C66A39E9
          3F7E8C9A98A87C689EC386CE9FE3DF6F8EC19D1BD1DC85F9FDFE2F16CF3AA25A
          F6A563733D9E23371E834CA5B5596448FDC2C173A005713C4ECB2170AAC27362
          3F04CED53E57ADE132389A08E1AA254771F3722402BC7F598515BFBB6938B8F3
          1EC60C5EA93A6B4BDF8466AE7D551D7A9151ED57205D52794CEA58B4EBA3E59C
          6B1D86F56B263473EECF00A22FC60DD908096A1EDCE7835C38EB854E1F8EC2BB
          1D07E1C5B63DF15ABB4164085E6F37021D9F1DCB60662C1A3B519E6D252585E7
          4884F147A6EA7C158AB5F477D0045252629AD71E8056F506A0439B716ABBAF3F
          3F56A5C1C92F1F6FBCA0CDBFF2CC30BCF2EC20FCEBF551183374217CEFFD74CA
          D6D50B5178F585BE68EADE09F51DBE800C1627E74C8E47EEAB8656BC9E351844
          54634065C3CF20035949C9917421ADF375173475E679B5EB8427EA7553C1D7F0
          7E4BB17DFD35DCBD96C85D98DF6F712E9F09C788FE4BF85DA0FD2A21BF30E8A9
          5772AFAAE099FB51419B7E3F2BE1378D7A5D28FCFDD5757EB6C940CCFE7A0F37
          6D7E7FBF84CB67E2F17A7B06A92EDCB7045BBC36EAD746551256AE9B1C8FFE39
          D3FB31F03E92AA61F2EB0C033D09A25A35F802F3BF954A6CE6F7636060F0E831
          BBF08F41F20ECE00598B9099D81D19714F2337D91979C99590974861A5C41724
          50DC13CA134A7F5C790A7E1925F8AA459F722F53917DB58CA2AF75E29501B748
          B4A0C97E8149F635E1FFE9167E19304B72F5258D07A16551105C8E5400422A52
          F22B736A890C4F5BC45F7387FFC926D8BBC405A3BA94C43BCF5AA05D330BB4A4
          D8D771B280939D056A3B1287D2A86D5F818F1F87A3F56370B62987DAB6E5E062
          5F969486B36D493EB680AB8D053C387D8A01C14BDCCE07DCDE28060FDB67DAE1
          CEEE3A083FE98AF88B0EC8BC6D47C1B744FAB5C79176AD12726E3FA6A43FE726
          CFCD1D19788BC75F5CF80B5BF51F85F0173DF743E12FAD3AE6A65CAA80987396
          88BEFC1452037A0129EB81BC876B75FE3BB37DFD15BCDC566BDD971650112F25
          38D221515AC86BF5E6172B65D6729049F8B516BFC24E7DD29A664F717CAA2F0E
          ECBCC54D9ADFCFCFC1FF5E167A7DB650B5588B60682D8D925F2EA90D14476BBD
          92C88322AD5394622352292229922982246222290E2FB51E82A13D9663FDF757
          71F1641464A0B1078FE3C7387D34146FB49BA47E419063D35A19B52A21927EA1
          B7CA9A97FDA26394D6D2E675BA6250CF79F0F7F97952F620372F45AB5AE23286
          80B4E84BC766492791CE932A7F5F5A63B91F2DBF5CCE877460E4BE29408D9DFA
          AB916EA583ABFCA22103913DB8FD5F4AA87F362E9D8AC6E09ECBF9DEA4A559D2
          52FA147606961C7F3510150312B9C7E4DCA96B4B99945C787D445AF955C7C3FA
          633476FD9481E87CC8761FDCD7830405C4E2DAC5405C3D1F8A2B67C370E16410
          09C19533B1D8B72500F3BEBE88B68D46ABF75E780DCCA2058C728FCB7913D957
          2924FC2C48F0F954BD819839E5388EEE0EC7A59349EAD78EB347C370EE58A8CA
          0B3F733410678F05E1EAB9489C3DEE0BAFDB3F5DE75D3A6C77EFF40D9E6CC2C0
          C2E6139556232939122CC93DAF7E6DA8C1FDCB7111A992249F49AD5F4557758E
          9BD5EEA94ACCB66AD005437A2DE3B184FFAA0EF372DE667DB51732826D1D5E03
          B966EA5CA8CF91749CD7C5DE74AE94F07399C0FB4C5BCEE084F79D08FFE2D987
          B959F3FBFA25C818042DEAF13DDBF6D02A2DF17834E1E739A9C57DCAFF83C2FF
          09DAE75D3E9B92C225019E6AC490FE326F8FC1CD2B0F37C6838181C12FC3ECC2
          3F86A314C159C84FFD0CD9F1AD911BE7A0B5EAA75440417249E425515689CC23
          89F29D48F98EE3545AF0554B3E51A93CF2583AEFCA805BE528F8E55529CE8218
          BE563009BF887E7E44C9FF9DC31F4AE9A5F04BEBBE083F4235D9CF0D288F34EF
          2A88BD571B3EE71B60C732070CEF5C066F3C6581B6F54AA191633938D72A0577
          878A70B62F45D1B7809B7319B83B56E2B2AA70B7B5466DCB9A9483AAF0B0790C
          1E769551C7A10ADC1C85AA5CBF1A5C1D1E476DEB0AA8EB58060DF8FA16B52DD0
          B19505BABC658199236AE0D4BABA083A6A839C3B76C8BB638BB4AB559073ABAA
          92FECC6BA59177BB1C859F024FD9CFBFC10088B2AF09BF487D29D3F421859FCF
          E7CAF46229558233F75C594E4B2BE14FBB50196997DD1177E159A4DE1B08246F
          E5A536F2F57F0C3FCF580CE83E4FE5F98AE0A81415F9A2171193167EA9BD5E93
          F2613944A106E9A104A84EBD35B5817E2435E409F7BE18DE771542FC1EAE32C7
          A65597D1BEE530B4701958D89954C44224488E4D5252B42F774DCEE45835E9D6
          C45B13366D002C55BD84EFC9C3EA33D4B7FB3F74786A307A7F36135BD79DC7E5
          737EDC9DF963F829BCEE24A2DBFFCD4573170AA0E5A7140AADD553AF56A34456
          8E4B471D5FF16334B5665370DB36ED8D79DFECE366CDEFEBA7080D48C7D0BEF3
          54ABA5D4AF5739EA3564BB2394D8AB80475A424DE745AE9992312E97EA3DAE96
          9FE09966FD306DC20E0479FFFC80E7E770E9542CDE7B653C1A50B2A4A55EA455
          CE8588BE4AFFB29273D45D6B2DA62CCA7974ADF95F8AD92768E6D28562DE0B4F
          37E986579FEF87C963962334E09775DC7D9040AF1C7C33E9009E6C30086E723F
          9BC4F4C790A04D52A0E43AA994277BAD255DD2BF3E79FB5B06358F6EB0A665F3
          8FE3D916BDD448C3F6553E5203BF490BB9D6D9566BBD6F240180DD40D5D2EF5A
          85F7987CFE786CAAEF00EF3F0FDB4F791F74C384E1EB21FD391EDCC72FE1EC91
          48BCF2F4686DDBEA17A161EA73AE7EC1D27FE9509DF7790E75E197941EB9CF4C
          E74F7E1979E5A991D8B9F1E1AB9F9D3B198CB73A8C4413370ABF4D5FB856D71A
          1974D95729866A6461C27DABC6080690726C7A195619144CFA302C9AFD687E71
          303030F8F9985DF8FB731CF9D9DF2033F9236425B4444192039050093931D2AA
          5F86924F5229E8A99AF4E72652CCE329F6F1947095B2C34DE8E93B22FBB192BA
          43D157A3ECCA08BB9AF04BCDFD4222B92DA23FCE8BD29615849744BE54E2D1A1
          F4ABF29B92CA135C0905A196C809B447F25D5B845D75C7C18DCE1837A80C5E7B
          DA02AD3C2CD09852EF66F5389C6B5AC2CDC601B56D2CE168CBC78E1550DBBE2C
          9C6C4AC1D5B602BF18AAC3DDF271FE33ACCA7F840C02ACCB53EEA5B5BF221CED
          1E83836D3552034EB65670B1AB0567AB2AF0B02FCF2F230B3472B640BBE616E8
          FD9F929839D80297375647D4390FC49D7746FA4D3B64DFAA86F46B3C67772B20
          E726A5FF46198536F09649EEAF7299A0045F96DD8F2EFC8AFF21FC8A8BD25157
          EAEE9746E685B24AF6132E3821E1CACB0C96C601E90781EC473354FFDF15E91C
          DBE1E9C1DA804C1443BD655C49A225BFC465A0A542E11F84BA3534D9571D09AD
          46729D21EA0BFED53663B07FFBC30D5A26ADCCFDBB2E466B0F9318AA348FDEFC
          92FF8CF3BDD0D84E066A925C6F19548B5FF44AA4A59F01C543A6F298322079FA
          222BF258F2919BBB75C23B2F0DC1C26FF63E92018146F45B8DD675A5E4E3A76A
          FBD2F2AB52552C7BFE50F875F46355F4522DA8ED5AF7C696B5E7B949F3FBF929
          CE9F08C6EBED29A78EFFA775D2E53573ABC1F76C3D5C053B22687A4BB5127F1E
          832C53F9F414A2864E9D55EBFEEDCB0F27D33FC6DCE9FBD0AE555F38567F5F55
          F591FAEC4E553E6120D71F2DDC7AE0893ADDF04C933E78F1A9417895F7DF6BED
          86E2E3B7A7A8728E9386ADC5DC19BBB171D5699C3FF5F0C1BA54BE79A9CD4055
          AA538455BB2626C1D75B870B5B88E5FEA6F0D76260C6A9D6D2DF93D7BA135E68
          311473A63DBA0E9F7B775EC287EF8FC4ABCF0D5603D5C9B809D207A291238338
          4ABC87F54794D54F28D59FA9FD4B002E9F07D5F2CF6B2E632A3475EDAECA770E
          E9BDE4A1655FB8762E116FB59FA0FA22C867482A2D29E1E7E75C6AEFABCFA42E
          FCEAB367CADF2F147EDE730C52DE7D7102E41E7D70FBBF94AF266CC6332D1834
          5A6B7D30E4D72B25FCFA31F07F931C9F4205BA5AEA983410C8AF5C5296B6996B
          7FBCDB611C3C6FFDFAD4390303835F87D985BF1BF9D261733FF252C6212DF66D
          6427B500D29C5190F8187229F0427E6245E4265440AEB4F0A7F07132A74AF8B9
          8904A2B7EAC7952492BE534ED5D99751751127557BCA205F96C554445E7405A2
          8DB69BCF0040B69F49B2B9BD6C3E965AFA2ACF3F8CAF09E4364349642964F953
          6843CA223BC41209DE6E08BEDA14D7F6B7C08C115555AE7DEB0616FCB2B7403D
          C79270B7A904C71A8FC3A99625EAD83BC0455AF229F7B5ED2AC3D5A11CDC1C4A
          51E02D28FD167027F56CCBA0AE4D59D4B12DC9F54BC05DB6E1540EAE8E95E064
          5715CE76D670B0B2818B8D3DDCEC6D19405481937519D4712A89266E1678A595
          05BE78C302B347D4C4D59D2D107CC60589376AA98EBC92CB9F7583E7F2C6E3C8
          BB5545C97FA6B4F0DF642075A302B22E51F8AF94449E2EFA7CAE78875E218BCB
          A52CA7CAD5BFA4897FEE2542D91724552847D691167E49EB21527633EEB223A2
          AE3E8F8CE0C9C84FF8E535BCFF698478676160170A364543BE24654024D5C2AF
          CB10BF588B64559369592EE2281D083549EAA7EA5A0FEEF5F0B9FBD24956AAE3
          6875F765FFB2EF62422FCBA425AFE60848A51D352A2C455BD22D44CA54ED7C8A
          8987E550D5F1B3B1732FCA504F7CF0E6309C3A229DF2CDEFF79710E497AA3A38
          4A1A85D6B2DF471321CAA196A6A255C3511D6279BC2A5FDF242222452AA7DEA6
          271A53D4DE7F6304EEDCF875ADC523062C469B263DB45C6B917BCB11A8537D08
          CF8F291852527B3F9AA4497D72C9F9EE864E1F7C0BFFBB79DC9CF97D3C0C17CE
          04E2ED8E7DF1F4139DF06CCBEEE8D86EA4AAF2F34E87D118D46B2EC68F5882B9
          DF6CC3BA95C77170F775C8FA9E376311E0F3E86BA34F19BE032DDD7AA191BDF6
          8B55F1D6E1FABC87EBD71CAAA6EA3C89B8F27E53C11BEF25D7C7FB9A7EC1A234
          BE3C1C77AE3D7C09559D1B9783F1FDC23D98307229460F5EA6F2EE7B7F311BEF
          751C81B75E1EA2FA21BCFA1C7976285E6E3B0CED9F1884679A0D506547DB36EB
          8BE6F53EC7D32DBB60145F7BEFE6A3396FA70F07E1B567794EEC3E539F29091A
          3DAA3370B6A46CCBE74D066193FB48EE679E4B0942E4972D15A0AB00A9BBAAF4
          35ACCF4A04FB3EDC381C5724779FF78C94FA95C04BFAE1A8B2B8EABA11B98EEA
          5A6A8F0BFF6799FE5F69ADFB5AE7EFC5B38E7193E6F7636060F0DB6176E1EF46
          013FF8D95F223FF50364C537417682350A921F0752CB91D2400A0592829E9758
          0905A9A534E14FA2844B5A4F4249E450DC55251EC9DDA7B04B8BBD12FDD8F214
          FF52AAE55E5AFD45FA11FD180AA2B89D28CABFA4F398843F47FA0730882890ED
          459544767029644AEDFB40EE23BC3CB239CD0F7F1C59217648F26B848B07EB62
          F6A42AE8FC9E05DAB5B080878305EA3A57A6909787438D7270B7AB86BA8E35E1
          665B456BC9B72F8B7ACE25D0D8DD02AD1A5AF00BD7022FB5A1A83F6BC17FE616
          78B535A74F5AA003A7CF35B540730F060FCE16A8232940C4DDBE126A5B3FAE7E
          29A86D630507EBEA2A107071AA0217C732DC2FB7D9AC349E6F6C81CF5EB3C081
          E58E08BF5007B117AB22EB8EA4F754A7F45741C6F5F24895149DDB7C8F374A22
          F502CFCD9DC7917395C27FD5D4CAFF23C22F653755AD7D917C917D924FF917E1
          CFE636A5E4A6040F99972A21F94245C45DB046FCADB64809E8C3EBB8C7A8C4F3
          33D8B9EE26DE7961924A5990727EEA4B52BEC895588B00E95F9EF29C08B788A3
          7CE9F651F5D6A5A55F5E2B1D356584DE07B7FF4BF0F54C42FFAE4BD08262A5EA
          795BEA02A60BBFA905510673B21A4DB995949D014A5E259F59729E45CC44AE5D
          29052DEB0C51E3018C1EB40257CE057117E6F7FB4B397F2A48D5F156A93CD299
          91C7207D19548A13CF9D6A5157E750A4484A4D0E2722E1940FEBDEAA34A0942F
          7DAA495F4C9FB2999B34BF9F9FE2E6A558FCDF7B1355A75F69E995F322C2AF46
          4BB532754A2D84C7614213A43E6AF461C9937FA3DD385C38FEDB552C993F7B23
          E67CB7092B161FC1FE9D7771EE4404853909FEBFB053F0C370EE5824DE7B710A
          5ABA0E6290FA05DF3F0344D5D9B398F42BE1E7BD65BAD7556D7D29ED6A3D0CCD
          1DC729C97CA24E2F2C9F7B849B34BF9F87213440EB3F21A571FD3D93E1752B01
          B72EC7E0D2E9309C3CE487033B3CB16DDD75AC597201CBE69EC4C259473169F4
          3A8C1BB11C5327AEC2C5B3AA06AED96DFF52D62E3B83175BF3FF80CD27A640BA
          AF127ED57158D29CF8D9D4455BE45F3A11AB756A497F0CDEDF369D551F8025B3
          7FFEA8C23FC6D431DB552101A996A4DDBF3C0EEB22C1D7EF67FD5A16DDEBFDD4
          6BA4146753977EF8EF9BD370FDBC5199C7C0E08FC0ECC2DF8703C8CB998EB484
          779193DC1239490EC88EAF841C69958FA7844ACB3B85BD20BE220A9228EAA6D6
          7D25FC4914F8048A3DA55E55E249E4B24469E1E7BC49F2D5BC3C47B1976040AB
          C35F0E45836D715B5114D5504A7F04E535AC24B2824A232FA4025F5B83DBA98A
          54DF72480BB4A4E8BBAB3CFD431BEA635097D27899C2DE9C025FD789625EBB12
          EC6D29FC8ED551C7B93A1C2C4BC3C9DA020D6A5BA0B18B05DA52E2DF7E512BC3
          F9D5B04A583EA326762E73C6910DEE38B9A90E8EACAD8D032B9DB079BE0DE68D
          AF8CE15D2CF0C91B1678E3190BBCD8CA026D28F20DB81D777B0BD5B1D7D98E81
          05030927FBCAA4025C9DCAC2AE26030F3BAECB60A1E7BB165839A91ABC0E7820
          EE9233D2AE3F8ECCDB6590E7C9F727253925ADE76639A452D8F36E95A6E8EBB9
          FC9AF43F28FB590C08A4ECA654E291D29BBAF0EB2DFC120448D9CD0C0A7FDAE5
          CA48B86889F82B4D183475E6755A0A4611BCDCE6AEBF814EA0670206775BAA72
          D13599D672BEF55C6F0D116EADC553937EAD95BFA81E7E0FB4F2E8ADCAFA3DB8
          FD5FCAE6B5E7F16C0B6E5F4A024A750DD9BF1230EE5FED5B17FEC1FC8297BAE3
          5A59476D344DAD33A8FC32202D7AD2B22F75E4177C731CA17E05DCBCF97DFE1A
          96CE3FA484463A01AB56609E07F95544E538530CE59825575D7568E6B1CA48B3
          3255837D717D917DC9B97FE79509387BFCD7A53C1CD9E3AF822CA9E32F0184A4
          2E48AD71D9AF4ADF51E74CBB5645D7B248D4E4D844D0DAB7188DF95F9DC6C513
          B1DCACF97DFDD5993472BDEAA82D694C1E35BA5352798F2B492426E1D7CF8F2E
          FC82B45ACB75955F6B441ADF7F75D22F1E04ECB72424201341FE0FDFD1BA3852
          D147FA013C555FEBE4AEFF2FA85B83813D831F395F22FC851D66890A00E43320
          81AE657755E2F55FAF8D7FE881AD24B07EFBA531EAFF816C5F7E29AB53BD9726
          FCA67DEB1405B71ADA40733D5599DA27EAF5C2E2593FBFB4EBFF2224E0D78D8A
          1DE46B8CEA6BF0CFC4ECC2DF9E6394FDAF9196FC01D2E29A53F69D28F4D581D4
          4A407279D5B28F644A7D626995CB2F036AA9BC7D4ABF74D8CD8BA3E8CBA8BAF1
          5C2EE93992CF9F20C25FA2B073AE88BEB4E2170ABF040FA60EBA8820E1D2824F
          6218504887DC70EE37B62AF2C32A2123A022D2836A2035C80561B71BE0C44E17
          8CEE6D81D7257DA79105EA53E61D2C2DE0E624B24F1C2AC1D6BA141C6D29E775
          2CD0ACBE055E7A9AF2FDB105964CB7C5DE35CEB875AC01822E3640C4D5BA88BB
          51078937DD9170C31929775D385F1BD157DD1072CE035E5CEFE2CE7A38B4A63E
          B62E6980AF4758A1F37F4AA2FD531678A221B7EF660157CABF54F671B2AF0407
          FB8AB0B7290B0FC7CA68E454126DB9FF775A5B60CEE08A0838DA1C89D79C907A
          AB1CB2EF52F049D675CAFB8DB2C86310902223E22AE12F421EEB88EC675D2D5D
          28FCD90F0A3FA739974A53F6CBA96A3C8997AC9070AD11D2BC3FE0B99C09E4FC
          EF9AD706B0D8B9FE125E69334CE5DB8A286A292822F8BA28EA02F4A0F0F34B5E
          72F8AB7551A5385F7F7604F66F7FB87419EFBB09E8D5F95B95C72C032EA9941E
          4A7FE1FE1F105811311941531F5DB4B1DD60353A6E23A7BEAA34A1A4F10CEBBB
          8C9B36BFBF5F8BF79D14F4FA62365AB86923984ACBA626851200691D3D65991C
          9B12FC9A3CA7B5865234B56356E93C765FA8C17F268EFC75ADFBC2C615D7D1BE
          F53078D87EAE093FE5460697926B24FB280A90B4F35524FC5A6BA8B45C37B11F
          CE40A90F9EACDB0F1FBC3209B3BF3E801307021F7907DE3F920B274355DF0049
          5F925F82A4E3AB56714A5AF9050A63F19661D3FDA6F5C5900A3D5A5958297BFA
          28A5F1CFCAC903A178A1F500F5B996F7AE7E2DE2FD5BB7FAE042E19773A6B7F2
          CBB81C7A9F1E1568DA74469B863D3179D4066ECEFC3E7E2E1346AE569DCAD52F
          6285BF3AF2F35653BF76DABDAC5D3FFD7F85465DE9DC5BB38B4A2DFAF71B1371
          E76A0237697E3F3F97DDDBAE60DAE44D9832968CDAAA317A33D958845ABE9DEC
          509DC4E5B1049C5F4FD884A9E3D660D6B42D38BADFA81667F0CFC2ECC2DF8C82
          00A0E00890F50D32D2DE456A6263E426B9202FB1964ADBC94FA4882694416E42
          09D539575AF365545D4155E791349FD4722848AA8002CA7E5E020383940A6AF0
          AD9C6869ED97967F29DB29293D65B4B29CC5CA762AA434A7B4F6CB68BB618F01
          21558020061A615C3F8CF21A5206E9A1B510EBEB867BE71B63F94C1BFCFB750B
          B4A8ABB5E83B51EA1DACCAC1C5C912B65655E048D9B7B7B3403D8A768BC61678
          96B2DDFD530BAC596483F3FB5DE17BB13662EF3A232790F85B21C79B41857735
          C09B018EE05303795ED5B501B5BCEC91EBE7826C1F0F24DC7641E8D5DAB873D2
          01E70FD4C6BA455618D4D502AF329068C3A0A3B97B19385B9585835D15D4AE6D
          057BAB1A70B2AC8CFA76E5F9656A81375A32D8186707CF831E48BC6E8D842B16
          C8BC4DE9BF570E69574B21E77605A45F29799FE0675F2B538888BE9073858F2F
          734AB13727FCB9972B20E3E26348385F1D7197EB22C5F35D065853814C1941F7
          D7555FF9271170370D83BB2F467357293928D22C835A69E50AA5E5B7F897A726
          DB9A4CAAC75C47E45572E75BD5EF8E11FD1F5EACD7AD3883E75AF5521D49EBDB
          F7A2F00BC58FC18449CC946853CA44AA65002D994AC761F9F9FF89FA9D31A4F7
          0278DFFE75A52E7F8A75CB2FE285A706A291838C41A0FD1A22B2AFCE07030FBD
          755D8E4FF52FB0A22CD594BC7A0A138300499190BAF7FFEA3811270EFDFA34A3
          EFA61CC2334D87AA8E8C32B2ADF409F0B091528D3C7F36DD1E48811AAC5128FC
          7DE05E95E7B2E600D55A2A2DDFD22AFB7CB381F8578789AAA4E6F279E7716CEF
          5FBF7CE1E4519B545DFAC2F42B5E2FAD759AD7A8D8FD6C0EC91797A04E066593
          D2A7DEB7FE3CADFBBF05372FA4AA5F8DA45A907CD655106B29257087F25E19A4
          527AE4DE91BCFD46146A752E797F49302B23FDAAF3CB7BFBCD1747E0F0EE87EB
          BC7FE154045E6F3F1C8D6BCB88D1DDD4B1C8FFA846F20B96083F8F4FC1EBF443
          E1378DAC6CDF4D95295D3AF7E14B835E3E1786FFBE3B1A6D9AF646CB7A7DF85D
          38104F2BFA9BE86B42E607F2FF503FAE33044FD4EDAF4631960A4A3220DC1B2F
          F5C58E4DE7B849F3FB3130F83B6276E16FC749CAFEB7484FFC2FD2921A223BD5
          8A226F49A1A704275551F9FB054914E0A4AA0C042AAA1AFCD971D5B84C0B0832
          A229E45122F855F9B826B262AB2227BE06D7E17C4C2D6446D540566435457694
          2572A2AC1559D17C3EBA2AB2A31F474E440DE486592337D40979C10C36FC5D28
          FD6EC80F75407AA02D12FC9C1170C3033B565B61F4807268F784051AD6B68087
          7359B8D856461D172BD8595783BD4D75B8D5AE8ABA2E1668EC41096F6E81CE1F
          5960F522475C39D1104137DC91E4EF848CC05AC809AACCFD9447AE4F29E47B95
          027C1970F8104F79CC40E39E500EB99E7C6FF72A21C7B31232BD29E42427B806
          226F5747D01527DC3ED5185B16BA6348A74A78BD95055AB959C0C5C102569652
          DBDF12759D1D605BED31FEB3AF8C963CAE57794C5FF5B580F71157245CAF89E4
          6B1476EE23ED5A0955C527E74679645D17C12F2EFB6515595745FAB9CE4F087F
          8EB4FA5FA880D473D5107FBE0EE26FBE8ADCF07194FD5D0CEC8C8A3C3F87ED6B
          AEE1C556FC02B5D772D04508DDAA69F2A30F5A631EED4B555AB29BD5EE8D17DB
          F4C5FE1D0FD762E573371DBD3BCF438B7A5D55A948A90EA2097FD1FE144AC4B4
          2F77BD05566B55A7C84A8B2365BAAEFD8718DA6721EE5E7FF4D538FCBDB2D0E3
          B379AA2A8A88A0927B753C14211E873A8F726ED4F9D3FA4234B2910A275AE75D
          A96E2269122D3CBA6158DF25DCA4F9FDFC1C260DDF81B68D45F8BBA9964C293B
          2881924AC3F881F0EB654C356113D96D64CDE043A567F445635B4DFAA59E7B5D
          EB4EAAC55F3A4E8FECBB05BD3B2DC2E841ABB06DDD659C3EEE033FEFBF4E1EF4
          A9C3E178B3FD1806915D783E64E458065B9672AFFF2FE1D752B454494E9BCF79
          9EBB62C14CFE6F31B38FBF3241BED908F0CAC1A923216A3C8ACEFF9D85B64D78
          1F3B146F51D7EE1DAD655FCE95F417E1FDA6645B1E6BC22F322E7D1E5A37E881
          C1BD1672F3E6F7F9739932661B9E6CDC478D49508FF7A75C1309EA45F0554A8F
          5577D33114FF8586EBA9FF15BDD467A2995B0F35F0D9AD2BBF7E146B9D195F6E
          41CB06FFCFDE59C7C771246D786DCB8CB2985906919939B6630EE7EEBB0B9999
          65B6C3B9C0052ECCCCCC8E296666926C0BCCCC20A6F7ABB77A475A299B8B93B5
          2F979CFE787FBB9A5DCDF476F74C3F555D5D3D080D02A42FF933A180F4A7521A
          E2A061FA1D2DB7282E783CA27C6F97F1FCFF70FB2D77EBC2F4B2E72F57B9FECC
          727AF0EA682D8AF29F41CEA5BF20EB5C1C7205E28B2ED544E105E6D917101770
          BF70C40B670E04E0F4C1609C39EC87D3877C71EA4010CE1E0CC485A3BEC838E9
          838C1301387FC41FA70E06E0C481601C4E0DC6C9FD029BFB1AE0545A18CEEE0B
          C5C543D1389DD640A03B02FBB6C660EF36D1F6482301F1FD5B1A63FF862638B8
          BE190ECBEBBED5B1485D91802D8B9AE18B37A2306D941B7A75B0A125B3EF84D2
          935E07D141C108F1F643A0575DCD8FCF05B30CAD6929B0FFB7DE36BCF4881FB6
          FCD8124776C6E34C4A2032F6D713D8AFAC8B7FF3D32BA020D50D4529D504F6AB
          AB0A04F8F376BB01E93554456952177B6A1AE8DF5519852915E5B80D990CC349
          AD84CC94BA38B5CD1F27B6B4C0BEE55DF0F163C1B8F35A1B3A34B5218A8B7C43
          AB6926A040DFBA880AF140B84F05C485D8D025D6861767BB236551639C5AEF87
          0C81FCEC6D1591B551C07E4B4D05FE9C2D1534D4C7C0BF01FEBC8D5515F60DF0
          5732706FCFD2532C86F3ACAB810B6B02706E530FE4EE9F015CFA0228DC214DEE
          AC0F94CB5149DB8E6B661E863930F65D3DFB32A85B996474E19DC2901D881C65
          1F54B9910D33F330534CD9F3FF5ABDF3F24A746F3355407A34C23DB9E192756D
          CA0EFD0A6266E0E72BE18D65E7E25E66E349089DA29B4FDDD47B16562FB9720B
          181DF5C60B4B34430AE382797D1A3D0AD13E5C286CCAA79B13C96726D487D95D
          A6A84162CA4C4FF340F4EF36139FBCF3DB52715AB23CFC5C0FA0F9D2FD04D008
          19526734468ADB4EA1CDF2F09700BFE5A98DAE2F860BCB25DF67B615A6326466
          9684A0F1BA8B6BFB98448D81EED12E11FDBA25E2C6DE8978F1A9EFB0F887DD9A
          ADE6D7EEC8FB9FD2E134E0BE699FA16D636917817D6E92C6351E4D0208B05257
          DAAFA48E8AFB952563C045790AC8FA8E457C3877429E8194A43F0EA4256F39AB
          212C3B369EC1D6B567C094A4CB171CC0779FED0017E47267E6FBA77F86C923DE
          C284A1AF6B161C86871190E3834C3813EB81FDDA649812A8667FD67E2506A5AF
          1886768397DF89AECFF4AF13D579C0BD17BEFA788314C379D92E47CB161CD6DD
          8BE34268D48F323363729F331316170D1BE0977BACB88F5BC06F97B42DEF8B8E
          CDC681EB6DCA9EFFD76AD9C25DE8DF7DB22E900FF7A0B13F598D41DEEB2562BA
          529118CE7C65B9AC993FD66743DF3BD1A3CDB8F27D00CAF53F29A707AFBC5250
          54F836B2320623F3423C72333C050C057AB9D0F6A200E7E95A3898541BCBE756
          C357EFD4C6676F7BE08BF7DCF199BCFFF25D777CF94E352CFDBE36F66C09C59E
          CD9158F2AD3B3E7DA72A3E7FA7BEBCFAE1F3B703F0F1AB9EF8FC8DBA58F68D0F
          362D8EC077EF7BE3C97B6C78786655FC63660D3C34BBB2A8121E9AE9867FCCA8
          8247A657C723536BE0E1C995F0D41C77DC3DA606FE4FC0BD5B4B3BE887314EBE
          1A427DBD1115108150EF104DB51919500B31E115D04020BB77471B9E99ED83E5
          1FC7E0D896F638BF3B1E1753BC057C6BE80EBDB96936140AB417A513EC6B8AEA
          223FB5067209FBE99575D7DEDC343791FC9D5A558C80EA02FD6200EDAE8AA25D
          F2BFC9AC3AF9FF541B0AF6544276724D646CF7C385AD8D7064452C367D158F7F
          CDF141BF4E36348B96F2EA6EBE7511E85F07FE3E6E9ABAB379A4D9ACEBE32723
          707865739CDBEC8EDCA4AAC8DE2440BFA5AA1DF409FC06FA2D2FBF05FB791BA5
          7C1B0DE097067E29CF862AC8DC581F67D7C72263E750E0CC7B02FB3BA5C99DF5
          817295D5A71FACC6352D995DC70CA6F4EC33F424CE7FAA89DB9541B604B8CB0E
          A8024532A0D20BD8ABE30C013FD762F7F7EECAC1A8BB9E17D818A353F75C70AB
          BB62165F9F5E6A0BC4ACEB738035AFCCC6D3D85F403670A41A0D5F7CB0494EEB
          FC5AAE68EFEE0CDCDAEF6EB38090D7D37006CA007F547D13C2432384E5A6D164
          0C02820A53874A99E57FDB341A85F1435FC481D4DFB6F0CFD21BCF2F57E34363
          F8FD474B3D8CD645BB6C4F6D336D37D69B00BF05FD52160BF8B9E99502131759
          0AE4C70ADC36F41CA9612CA6DCFC5FFBAEB802CBD17E0311E1FD77B9DF87A045
          A3A19A26B24F9744DC79EB03F8E08D151A3E65659AF96FD0CA85C7D1B7F33D88
          0FA6613856E3F0D5900948D4D49206F81DFB96F9BD569B324314FB6387A6A3F1
          DAF3FF1DE97D53779DC5F6CDC7B071ED21316AF763E177C93AF3F2F6CB4BF1DA
          733FE2F107BEC29CC477F197FEF788E16BD29F5ED77DB61A987DBBCC0477D2EE
          D2723CDA278CD5D0B7B63153D1C06F888235F78408F3B80BF181E374113CFB37
          E3F2D9A709F684587AAF09FCB1FE720F68F61EE93762D09A70BA0968DD601C26
          8D74CDBBBF2F250F8FDCFBAD1AB321F5068AE1C9E7139F49623CCB35E2A57F9B
          5D8769B41AB036ED66EFE794B42BC392AEEF391DBB779E91D33ABFD6E5EAA139
          EFA04DDC50BDF7A3BD268A3148E7883CA708F25237467C6FCDFC31A5AB99FDA3
          2114597F185A468FC4F8C1CF62DF5548395BAE72FDB7CBE9C12BADA2A2B9C8C9
          99848C8BED917DC90B055902C0DC4CEB6C45145CA884BC733ED8BE3A1023FE66
          C3B56D6CE8D5CE869E4C5529AF7DDA0A588B86CB676B1676C58AB9D760F0ADF2
          5907517B91FD737EAF8F7C7FE85F6C58F845073C3ACB57BDF4ED9AD8D022CEC4
          D7B794F72D136C682DEFDBCAB136B1F24AF13381FCD8081BA242CC8EB8A14175
          342E3EC0CB0761BE0168181480508F4A68228640E7A636DCD4DD86D71EF3C781
          D5AD71617BAC007B43E4A707886AA260AF1832CCE39F2EAF69F4EAD71668AF87
          02515E5A0DE4ECAD8CAC7D3664EEB7E96BD65E519A00776A65E4EFA98682DD35
          50B8AB068A922B03AA8AF2DE0DF94902E2493591B3C31D593B7C70697B145216
          C762D10709B8A9ABFC4681FE503F03FD3E7E95101A5A0D11016E682A65BEB5B3
          0D6B3FE980636B8291B9AD3AF2B70AF06FB269E69E2C9123F0EB865C02FA4615
          05EE6D9AC587DFCF16E867B61E1A0319EBAAE3FC86005CDCD10345079F04B25C
          F328FDAF69D4E0C775D1A9D9B9965E287AE8CC464D06160D247191A301DB9238
          5D8540CF21D27F2761D6C4F7E574CEAF71B97AF7D595E8D68A39BFB91B2E0748
          B99EBD0C3F0BFC22CDC2C1F77E4CBDC745951371FFF44FB03F254B4EEBFC5AAE
          E8C337A59CAD05B039FBE06BE0D982C312497914244DB90929E69840B6005242
          E8505CDF6D0E7EFCDEF5198825F352D0AFDB54C4870F11501BA475C7BD074CFA
          4F96C57866F9CAC5D81A634D6FA3A7948F79E8A58C262CC292FC6DF7FC334CA2
          E4F7D9EBDC6A13860A89D4280B10800E1FA5198B0898CC23FFCDA71B9126605A
          B6BCFF693D30F53374889DAC7B4B586DA2D02AC68CB5D682691BE98535F1E166
          768BB34584BA467E9374B3A601DDA762EFEEFFBC21939A9C818DAB8F63EE97BB
          C5E058869993DEC7DF6E7804FDAE1180EF3E077D3A4FD3787B6E5AD6B5D52474
          6A3641C696F1F22C26EC8E5043502540AF92F75C2CAED25921B9BFB90BADFC66
          EDA752479C9922B8D23835ED6D89F567EAD0EA2F845A7E4F8D43F94E5CC81874
          693109DF7CE25A78DF9A25C775C621C69FD7717C1E5865B09749FAA4E5658FAC
          CFEF9A3E1E5A77346202C7A25DC268BCFBAAEBC91BD6ADD827F53D1171610335
          7C2E2E70BAD9DC4ECA5072BF58E52BB93FD4E0E75A287F795EFA0CD119B2F75E
          5B26A7747E9D7295EBCF2CA707AFAC96A320FF496465F61785213FAB2A8A32E4
          3017E19EE70EBA95917DC61FAB1746E0E65E36340EB2C943B106C2BDAB21D2C7
          0DB1F2778240F8CD3D6CF8E1937EF8E6C30118D0CDA4BCD4EFFA56929BB93262
          036C0AB6D75F63C3276FF6C0CC71E16823704FAF77887F1504055556850455D1
          709CA8603744075642985F45DD102B5C141450057EBE55E0EF5B13C1019E72CC
          0F1181DE6814E42ED7B1A19B180C7DC5A8481C64C386792D71607D022EEC0C45
          7EAA0FB0D70345FB6ACAAB003A73F8A7570252E47D8A1C4BA96B803FAD2E72D2
          AB225B8C01C27EE601816DBE2AF09BD09DFC3D5504F8AB19E04FAA2EB02F0643
          929C27C90D8549F279B240B91800B9F23E2BA916B2778623755104BE7F351C37
          7612E86F60839F87182E0DEAC2D7AFAAE6EC8F0EA88E4E3195F0C0482FEC5DDA
          186737D4D6CC3B45DB05F209FCDB0CF8E70AF46BB69E62E03739FA75275DEEB8
          4B0341E03F5B3ECBD9581D17D77BE0DC9604E4EE1B019CF912C8BE3A211C7F46
          7DF4CE4A74EF3016F1C1F4781AE027D411F64B80DF6C0E653E1FAF53F60901B3
          11ED61A6A79B478CD141D9D55D75B9E32DBDDDCDA2646014706FE8C3F0177ACE
          7EC1C32F6A288016CE297E01CFB8D0119ABECFD534803F277AAFB98B69D3A8E1
          1A3AC3700F0BAA4B60DF0263FBC02FAF04297A4B191EC3D878662F7964F66738
          987A6536BA9A3CFA19346F7897FE7E7AF863FC670AF04F47943BDB9361469C75
          10801559E1055C68A979D3ED1ED29FCA0E30A5EABCAC2609F44C56F0213472B1
          70E320AE4D188A9E1D26E0AFD7CDC6FBAF2FC7EE6DBF4FB8CF921FD270538FFB
          151AD95F75F1ADF6E7511A16C2DF66CD62B04ED8EF359D29EB4B8E710687EB47
          B8D8F2AD17FF3319BFB82FC1C635C7F0FE9BAB307BCADBB8B1CF1CF4ED3603DD
          DB4D43A7E653D0A2A1D47BD048448BE1D82850DA89BB62071A88A7E7B95180FC
          567FF95C603CC273B8BC8E7190C9E264AD8BD1C5F05CA42FF71BFB093DF966C6
          CC84F350A61F5BE233C1D497C6CC4BFF206873F6273E70823A00B88875CAE837
          C19DB2CBFEB65F232EB26E172FFD539E3DE69924BFDBFE4C727C1E685FD6CC40
          C640E17BFE16B65FB3C8F1F8EB807BB165DD1139A5F3EB5CAEEE9FF53A5A34BE
          53337FB10E6908F21E30F789C3FD52AA8CA69CAC9B708F216813331123EE78E6
          77BB1FCA55AEDF5B4E0F5E39AD43115E4656D65DB8783E165997047A33ABA2C0
          BED11581BFF0A21B324FF963C5FC685C2750AFF9E6FD7D04D27D14B6C3BDABC8
          03D4E4B29FFBF98DF8EAA39BD05B803F5A8C8050DF0A08F5A98650EF1A621C54
          458C1800FDE4B38FDEEA8BA91322D5A31FC2EF85D74660580DF805574340706D
          0407D645A87F1D3106EA222CA8BEFECDD49A2161B5101E26C742EA21CC5FE457
          0BA19E36348BB0E1DA9636CC1955018B3F0D45FA86089CDD138CECFDDEC86786
          9F8302E507B83BAF40FE5ED1FEAA02FC5551C885B9F698FDA2B4EA2848AF82BC
          BD02D9FB049AEDCA4D178816D8CF4DB5213F85AA80823D1574716FC12E37F5EC
          F39579F4F3765540EE6E0174BB7204FC0B92EA206F47300E2E8B14E80FC500AE
          3D6824BF3BA0A21838EE080AF441804F2D248455C1003156567C148153EB0334
          A487BBE412F40DEC3B003F25B09F2FA0AFBBF00AE89BDD760DEC676DAC26AF75
          70614328CEEFEC27B0FF24C42A902677D607CA5556E9BB7231E2AEA7101F7997
          0C5C43EC833BE15A062DC2BE0C64D6F4B46E3AE44F6360926E7015EF3F4B77B1
          E59435C352664E743DEFFE3B2F2E41976663E59C430D741056EB5B5EF1D2037C
          096CF2BD0CF6018988F41AA5F9F69901E38907C5F073728D2BA14FDF5D8F9E6D
          260B080E564FB089C9B7E41CF8092C0C8F524F72A0C04BC01DE8DB6932562ED8
          27A7747E9D5FAB250BB609148E4742C46085BCA05A23D03468B67A3AD5AB2FA0
          CBF21A4FA931E8AC2C3525E5B7975BCBEE082EF6F7D667A5BE2F70E53743A071
          BA82A31A6B6278D1034A0065AC33D3A2FEA5FF7DE0FA8CE42DFFD9308607A6BD
          AF2114ECAB346E988693706A795D1522E537594610EB85296069BC505C0BA1D0
          D8FF61A4EEBC3A33469636AF3EA79B694D1FF70EFED2EF1FE8D66A2A5A3796FE
          1D3C4CC69FA16A4C3103130D4DCEE270F681A2379EB31714DFB3ADACDF65C1B0
          91D5FE84687AF2AD7635FD96DF55A35F8E119C6914D1382ABEF78AFB807C5F17
          F04A9BF395F5C7EBFA9ABCFB3DDB4FC6C26F5DCB8EB66251BADC2353ED19B0C6
          69BB1803C37A16943C0F780F6A3891DC637C4EF137D088A341D33A662C5E7BC1
          F50DD256FCC8D87D2943F06DF23BA53DE45EE635B42EB55C25D23AD2BA65592D
          C34AFAA0B461CF76D3F1EE6BE59979CAF5BF2BA707AF8C52E4E51BE4E54F16E0
          EF22B01F88BC8C5A00754920F8A2C0F0452ED8AD85EC531158BD301ED7F7320B
          50C382FD1018E027D0EA2BF05F5777B3A531F0FD1737E1AB4F6E442F81FF68C6
          D807564364701D5D441BE55B17B1C115E4C150011FBD7D3D122744A369820DFE
          01A2A05AF00DAC09EF2001FF202F04F97B20C4B79E18171E080DAC87003F3106
          7CDD10E85F590C0D37817DEE9E6BBCE54C8379CBB5367CF35638F66F6A8AFD1B
          BD90B9DF0B3907AA2377BF00F161315E0EC9EB0101E3BDF22AC23E37511514A5
          0AFCA7317EBF228A28F92C5F009F22E8E709E8171483BEBC779400BD4A403F7F
          7709EC53D97B44F21DBE2FD85E51F3E0E72405E0E08AC678EF8908354EE2A3DC
          10E4571B21C1FEF0F3963A0CA9860EB1363C3AA9220EAC6880ECAD1E02FD8EC0
          2FE72F05FC5226F9DC11F8B9E36EF6A6EAB8B4BE162EADF3C0B94DF1B8983E02
          C8FA1462D1487B3BEB07E52AAB4FDFDB8AEEED1311136A3249589EBCE2D0130B
          FEEC0317075366DF609808437A789CF9B9FB749C8C795FBBB6AB6ECAD68BF8BF
          FEF7203E649002868614794FD3D904824AC9E0C9570B3AACB28D45787D7A2C47
          0AEC0EC51D37FF43A0F2EA8491ECDB9D8789C35F4593B0210AEE040B631CD9CB
          530A84593E33E0B38C040442665CD00801C8819833E9751C49CB96D33ABFD66F
          D11B2FCE478FF613D4CB9F103A1921B5076BBB316ED8024135EAA47C16F09BAC
          260438B390D7A874DB979655FFD6EF648CFB240D7F8910038DAF51EA1D17F012
          30E53A8C067EC334A5629BD851B8B1D76C7CFCF65AECDBE3DABA85CBD1E26F53
          715DB7996812CAF5085C9B2020EFCE9CF202A65CA0AE75C10DCAB820D500BFF1
          EC4B997DC71A2F6EC008B48D1BAB3BDA963DFF95D2A26F0EE3D1BBE7E196DE0F
          A373F32968D548C03170B82E5A67889A817C014CBB479E216CF42E73C16894C2
          AEF1CA5B406F01BE42B2C8FC2E4B0688F9DB8B257FB31EF84A2388C7D85719F6
          54B28647DADE6A775DF82DB0EF394B5F15B8A57EA3BDEF44EB46C33076C8D338
          94962F3FCDF9EFBD1CDD33F56D70C32F0D895123C519F09BBEC8EB5B6B8E584E
          934A78A4DE077FE9F720B85F46D9F3FF5ADD33ED3574682AC67BD0603DB76530
          29F4B35CCC5C6497A927239D4111A3916B22687C8CBCF35924CBF3AEECF9CB55
          AEFF15393D7865B44E5E5EC0A58BFD909DD900B919DEC813B82F385F1F8517DC
          5170818B766BA0E8ACC0F3F1265835BF390608588787D810105803BEFEB505D6
          6B233CA026A2036D02F2367CF7693F7CF9715FF4BC869B5E09F0075544484865
          040756552F7F03F95EDF6E15F0E15BD763EAF846681E674344700D0407F90AE8
          FB2038C44FFEC71F613E5E88F4AEADA143117E62640457446C584DC48555478C
          9CA3698418189D6D187DBB0DEFBD58036B16BAE3C07601DCBDF5917744CA7FB4
          0EF20F56574F7DDE410162017E8AD05F204640A15D90CF8BEC020D015191403E
          0D81C23D5555457BDCE4B5825DF27F76E50BCC3B2A6F9701FC5CF9CC529EFC5D
          B8438C8A9D3591BDBD2ACE6EF641D28204CC1A52051D62A42EBDAB68BACE40BF
          7A62145596DF27C64B171BD67DDE101736852063531513BBEF10CE53B0A9B248
          5EE9DDB7437F09F0BB216B736D5C58575FE48FF35B3B23FFD43F818255D2D6CE
          FA40B9CA6ACF8E6C0CF9FBBFD0BCE1183152B9B08C03253D7AF4F0CB802F6060
          819FE50D348BF7269B81D563AC026FEB46C371DF54D7BDFB6F3EBB0CAD1A0E43
          4C808034B3EDC8004EE0670ACB12E0779035A0DAFFA6479BF1E35D5B8D033DF0
          65CF7FA5F4F5FB3BD0A3F5140D0FD1F085FA760F71719938D85B62F9081E06A0
          E879A407963B19D3485AB9205D4EE9FC3AAEE8E947BFD1586E665969E0730762
          051C398363328618E02FF6664B1935356531E85BB2CACFFA35BFA104B2F8DEF1
          F7CAAB000DA194AF8D03E4981FBDE4C6034D63802157847FC68BB76A3C06D7B4
          998039896F4B719DFF862BA507A67D8CD60DD946C31414196EC1750BBAE03350
          0C157A81D54BCB991A1A6F130CF04A5963832668584C7CD8303552D293AFAC71
          466D5E731ED3C6BF833E9DEE46C7B8443506994A958B8A59D784682E9CE50C9B
          890717C3DC473E9357F6418D6D572097DF4558B7FF9E62A87794B4BB694FDEE7
          8CD5B72F1EA7275FEA860BB54D3E7DF9CC1E9AA270ED6520BA549B2BF04F15E0
          E7AED1D3E5FC623CD23808BE4B0CCEB1F8EEF3CDF2F39CFFE6CBD1A2EFF6A05F
          B7697AAF68988EF4518569B9BE0999B1F7497B79D87E565F5410F797B2040DD5
          FBE0F5E717CB299D5FE772B5F2C77DE8D36512E243EED2F6611F51234BFAB5EE
          A6ADD7B664DD17D297D89FB861A094A741E040F4E830059FBC7B75120994AB5C
          7F14393D784554F41D0A736723F3423BE4670503595EBA9B6EE1795F145CF441
          41466D81FE5A283AE387BC63CDB1EA87660AFC61A1360485544760703D84857B
          2222A00E1A0698909E795F5C876F3E1B80DE02FC3A1310580DA12104FA9A08F5
          A98786816EE8DFAD223E7EEB064C9FD0106DE2C530F0AF63D269FA0AF0FB7920
          2AA0AE004E1D746F5E4D641607776B6D43F71636F496D7BFF4B061E6F0EAF8E2
          B550EC5E1B27A0EF83BC937EB874B832728E5444D1F1AABAC896C05F70B0AA66
          E3A1871F872AA1E86045057E47E8E77B47E82F4AABA0B1FD45BB998DC764E461
          F88ECA0EFE96973F9FE06F17819F804FE5CB7B4B45495575D75CC6F69F15803F
          BBA511BE7E2E10D7CBEFE2FA87109F1A080FF650C327C2DF866BE5777EFAAF28
          1C5E19818C2DB591C5549C96675F61BF34F0337E3F7F8B0D591B441BAB206B93
          07CEAFF5C5850DE1C8DA730390F789347779CEFDCBD5FB6FAC45975602764123
          C5E83403273D8465815F3DEDF4AC29201028E80934A13EB18143155C5DCDCC93
          BCF534FEDAF73ECDF7CEF85FC218437974932A0189E241D40E2B25E0611D93C1
          3D70249A440EC3E4512F5FB585BA3CEFC421AF088494C0868128FEED582E6BD0
          2F291F5FE96167869B6611C3706FE27B724AE7D771550753F334A4A977E744B4
          693C14B1C1B72126F04E0D4152CFA440881A512CA780A009E9B19757CB6EA9EC
          6F7054E9DF4A2F749440B59512949043D08FF69A2CAF89F2BB67683C350D332E
          1A8DF4FD2BAEED90882FDEBF7AD9B4B84BF08DDDEF4342C828CD385402B18CF1
          365E6FC29A058BECDBBC07D84EC69B2E069394958B4FAFC4664D8E4ADA7A1E8F
          DEFF05FA5D3353670F98DF5FE19D31F952BFBCD7781FF0958B50794C819A7B4B
          08F0738F04B34FC2600D5552C8B5DACB92B49175DF5A0B5A797F17DFE31AC267
          C4EC4C9AA949C19FB9ED8D379D692FA99F9C5BDB5DFA9082BF49E1CBF2356F38
          0453C7BD283FD1F9EFBE5C31BB107733A6E14363A5D87BCE6B7B995909D3074D
          5F257C6B9A4E7D5EC8770246E9C2DAD1839E426A92EB2164F7CFF84017FE4679
          DD21D735F790992D31E152A58C64873AE23DA0E161BEC3D1347A04460E7C067B
          76FEB9376C2B57B97E494E0FBAAEED28CA7F03D9178622EF624B145CF217D8F7
          D40DB40ACF056A569E1C02FFA53AC0596F141E4BC0DA7909B85E803F5420D53F
          A03A7C7CEB21C8CF1BE13E5EF27015E0EF6AC382CF6EC6771FDD883E9D05F8C5
          0808158067D84FB07F0042BDFCE4E15D1DFDE5B38F5FEF8DE963C2D1BA917CCF
          A70E423DFC11E1E323967E0D746A5A1589C382F0D6B31178EF050FBCFF9217DE
          7FD91D5FBCE185859F0462FDFC30A4AC8EC2C99DD1C8D8178E826381B8B4B72A
          B20FB821F75045E41CAC20EF2B6A8EFDA223B504EAAB68FCBEA5A2FD02FD3408
          04F02D15D8C5901E023F3DFCF4EC17EDA9A2C05FB0BB0A0AF60868EF11D02E03
          FC05143DF9C946453B2B013BDC44F2BF3BAB206F6755646E9332EDB42127A93A
          2E6DF3C59EF90D31F5EF6EE8DCD8A6331891C1F5455CBC5B19D7C455C303237C
          903C2F1217B67A08F0570337DED285BA62301408D4176E94DFB1417E871DF80B
          14F82BE2E2FA6AC8DCE42DC01F20FF170B1C1E22CDED7A7EE5FF153135DDF03B
          9F449B380E440C15602807BD64040C0EA604000EAE53541CCCCC223E33C0D283
          C841AF4DA371B87FAAEBE0FACAB3DFA977BF79F8040DB5E060490F7FC96EBF65
          E1B3AC64000E1A8AAEAD26E0CB0F5DF32CFE3B7DFCCE0A31CCA7203E48AE2965
          E2A2657A4515964A41B0831CCAC9B8F1161113D1AFE3DD58F6FD2139A5F3EB5C
          293125E9E8BBFE896BDB8F9567901852418310E93158DB4F43B344EAE1F71158
          943A54C0B5878C28B097157F6BA9DF68608B52EFBD5D0C8761480FA5DE7D311A
          C3DC47693C7C7C88D49B406A4CC8402444DE85FED74CC78FDF5FF930BC83E919
          B86FFAFB68D580A9220596E537725756BE328CA9A18794D3DD18AF0CE7311E7E
          F96DFED24EDCC955EA21D27B289A478FC1D8C12F61DFEE2BE7DDDFB8F6006EBD
          6E063AB51C23E3CADF35AE9BE94263FC08B7C30468E5FE13A865BA5096D3EC68
          2BF5ADC69900BBA3E152FCBBE47E519578E7CD798C68F01443BDB4758C0FC39B
          8C479F6A1ECA6B8C46747DF99E5C27D6879B6BC97381336CDE523F166C6B5FFE
          A9F1A7296083C7A35FD75998FF8D6B46DCBC6F92357D28F7E1D0B5160AFB523E
          07E037F5C03E68409B468DCECC48797543AEC0E1EADDFFF02DD7175973D137D3
          CE368930999DF82C34BB79CB3D517F22E27CA7D9CB51523F25F7903C2F79DF04
          8D44AF4E33F1F17BE56BCCCA552EA7075DD71A14E43C818BA7FF8A13879BE148
          7A280EEF09C1B1D4281C4B8BC5A194281CDCEB8F1307BD9179380099079B60E5
          DCA6B88131FC61368404D782BF9FA780BC1F227D7D65307353E09FFFC92D98FB
          E1CD02FC15145EC3FD0DEC07FB062AF037F0AFAAC0FFC91B7D30636C84A6DD6C
          E05F1F11DE4102FEDE88F6B1A1676B1B5E79220AFBB7B5C1B1DD1138296539B1
          270CA7F604E16C7A00320E042057CA9477C807F9070588F7D6506F7EE191AAC8
          3F24407E58409DBBFD1E1150E6425D01FE42817F2ED6E5A2DDC27D02EC76E0CF
          73007FA6EAA40A09FCA2C25401F814F93BC5827D03FC5CB46BC5F35BC04F4FBE
          C27E9254AD02BF1819DBABA1688794616775E489D1C0CC3DD93B2A206373759C
          5A1BA91B73F56A6E434CB04DEAA706827CEB233AB0BE0C3236DCDEBD02D67F1E
          86F39B7D90B5B996C2BEC9BF6FE2F7D5C3BFC14D6416EE166DA984EC751591B1
          46807F8317CEAD0B45D6F60EC0E999D2DCAE6D5CF4BFA4F7DF5C816BDAC9401E
          344207230ED6C5602D839505FC060899BE9171C013105E6F980E740AFFBEC330
          A0CB1C2C9F972AA7747E9DCBD1EEED67716BFFD96A3C84D6B94B5323AA474F67
          16CC463FC683660DA64E2465691337129346BE80F4E4AB1317BE2FE53C460F7A
          02AD1B9A1008D68F7A84059C1A7832D5238F11402C08E6FB9232331CAA49C878
          348F188539133EC0714D24E5FC5A57528CA3E6A65EE306FD0BD7F79C25003C4A
          618861200424CA787CFF0DF01358F477D88D1A4B657E2FE3CAA962D011B16F69
          FFB287F45820CDC5BC0C95E12EC39346BC8694E473525CE7BFE1B768EDB243BA
          E0333660A47AAB1BD497F2B25F0908ABF7DAEE3166DF22E8B37FEBA26A3FB316
          846961197ED4ABC36CBCF9C20A39A5F3EBFC5A3196FC9601D3D1A4C15D68143C
          08D1FEC374713343AE1AFB8A68BC2AC88B2122A0CF57057029335F1B7A489905
          C06368887BCA314F1A6CF4369BB09DE276B287FFD08868CC991D5FCEF0889115
          3C142D2247A37DE389E8123F1DDD9BCD46CF16F7E2DA160FA155B880ABC2B4F4
          6BB98639FF6429C754A92B1A00721FEAF9C528D0F3D3D0B5CF48044CD005F39C
          613BBC37477EAAF3DFFF4B3AB837170FCCFC181D9B4E4668DD3BD124589E371A
          CE43E097EBF337AA4A033FFB3143B4F8CCE2AC0DD3918EB8F349EC4F75CDBBCF
          FD361E9AFD29DAC64ED4F5140941131156D7A427A6A1C87620F497003FEF11DE
          47F67B488EF37D0B313C47DCF52CF6EEB9F26161E52AD71F4D4E0FBAAEA528CC
          BE471E407DB06041349E7AC20DCF3C5E1F4F3DEC8BC71FF2C7938F78E3A9C7AB
          E2A5E76C58FA7D1D9C3D700D96FDD001FD7BD8D02882805A11417E75101AC06C
          3DDE080FA880FEDD6CF8E15303FC84FAC8A00A02FBEE08F3F7544F7F84BF8718
          01365C2786C147AFF7D718FE2602FCA17E75358F7E948FA73CE04DDEFE0F5F69
          28809F80BC23FEC83BEC29AFF5ECAA23B05F5B5457E09EAA2DE05F5324807FA8
          B2027FFE6101F7439480F84101F10302ED227AF609FBC5A13C02FBCE54986E54
          C04DB9ECD0AF5EFDB27208E9A187DF82FEC224B9469218164CD199E4861C81FE
          BC5DD505F86D02FF02E7F277E6C640ACFAA011FE2275D6906B1D82EB22C4CF0F
          E17E9E3298DA7043471B16BCE62DE01E88DC8DEEEAD9672C7FA9F49C724C77DB
          DD2006861803056BC420582DD7D9E08173EB237171D78D40E6CBD2DCE5E13C97
          237A2AC70D7E15CD22058264906C1A3251BDEAC55E34F50ECA002E83178F5903
          AA6EC8555F0C0419E8A2E4F3568D26E29E291FCB299D5FE772F5F2BFB85BADC0
          85C0493150160FE4E6DA1650F2337AF2689070112A63FDF9DA346C047A771D85
          1FE76F95533ABF8EABFAE8AD35E8D97E9ADCBF8310132810CBC59CBAC5BF0CEA
          02FE547CC0343B0008E0D25B2C50A2DE7385137A06870A84265EB5D8FD5FD237
          9F6FC0B4F12FE0FA5E33D0B9F944348B92320610700971A6DE19EA62C25D0C3C
          D218D01D8135DFBA00A4C030552A4F3FC3491404CD398CACBE6364196DEC73E6
          BB5C043E4201AA53D36978E3852B67B01F49CBC5FD533F428BA851DA47683896
          F425D38F4A95575E99BE929E7D0BF8A9960D2760E8DF9EC1BEDDB9725AE7D7FA
          3562861FCE16302DA36630F2E3E672722D3FDE573476052459A772DFD1C34ED0
          A5179E3B1EC7731F0CF711F2F734F9CE0C01FFE9D2B7A69AB4A2AC4B313CB53F
          FA8B41133C5ACBCEFB8A33528C851FA0BB224FC7AD7D66E2FE191FE1997FCCC5
          AB4F2DC3176F27E3BD1776A053FC0C816BA6B5B487CAD8C5BEC0BA8B769F8A84
          80BBB59F731D0A37E9632851A4BB94972151D28F3A351FEF72ECFEE2B9FB707D
          B77BC43819AA86B58658F15E62FB71C641DB916D667E77715F93B2B2EC2C0BBD
          F0DDDB4ED10DE0CA9EFFD76AD9FC83E8D369B66923BD4F785D1A3994FCAD214D
          66BF0B1A017AAFF88DD4E7251D25EAB0081CABBBFC7EF759F9CEEFE52A17E5F4
          A06BA20BED7B14648CC781946B70EF7D15D1BDBB0D9D05B43BB4B0A16D731BDA
          883AC9DFD7F5B2E1DD976A60DFCEEE58F47D57F495EF350A635ACE4A88087217
          D8F7D47CF8A18115D0EF9AD2C01F41CFB5BFC0BC7C27CCD75D80DF5D537A5ED7
          B5223E7CAD3F264F88437C9C0D410175147623E8E126F0B7B3E1E357A2702625
          1A8547EAAAE7BEE8881B0A8FDA454FFE912AEAC1A7F20E0BF41E76847D01707B
          669E4202BF42BF40B8A854ECBE13D8A71C81DF827E2B8447E500FDA516EE5A71
          FBC972DCAEBC5D9590B3B30A727755D1909EECED52FDDB2B09B0FB61FB378D30
          E6FF6C888B22F0D746A8BF3F42BD3D1125C0DFB78D0D9F3D551727570409C07B
          09DC57D3CDB732E5FFB3440AFD722C6F4375E4AC154386213EABDC50B04AEA64
          833BCE6F8AC185F42140EE67D2D6CEFA40B9CAEA9D5756681610C6BCEAC25819
          B8A23D863800BF5914675E39981A1100E941E3624C0EEEDCB5D4D50DA3D2775D
          C05FFA3D8284300ED8F60154AFE7088B06D2340C8583BF0023819F0B60B91158
          D3D00968D170181E7BE01DECDF7B4A4EEBFC5AAE2865E759CDCCC345B08C5367
          D619C6ACD35BAD8061851E3196D9C37822E99135B1D0ACC7D10A6CF4AEDF93F8
          E6EFBEBBE6C63547F0CEABAB9038FA2D0CE8FE00DAC64F4693706973BFE1D06C
          4D0272041703FAD22EF650100D8DE1CC8087FCED2510EA2FBF5D2027A22E3DBD
          06107FDA7E46664D88E9471A3A26B2163B368B48C45DB73C8D6D1BAE8C977FF9
          BC7479FECE468BC8F188A8C7F015A68F7484450BDCECE595579305C7E4A7A762
          82C6A05BCB9978FFB52BB389DF96758770F794F7D0212111F1218CEB9E8048EE
          63C11911312EE2034748DD0AFCD71F8B06EE028BF54D5F623D3790BE16E93E48
          436FD8DFB8AF027F0B63FC9B848E56EF71979633047267A177E7BB71DB8D4FE2
          FEE99F6BD97FF832193FCEDD854D6B0E61C7E623D8B7E752A95D9DF7ED2CC0D3
          0FCE47EB0662D45B598BB47E0CD4AA3127D76AEC35538D0C0D971123903327EC
          27FC8CB37EDC197BC2B057B07BC7C9E273FF16DD3DF103B48F1103D11E3A43A3
          508D44B65DA936B443B7F637D3867C3E7126AD7D4C2246DDF51C387B58F6FCBF
          56F78AE1C84D058DC79ECF29294BF1EC86552E6BAD91291781DF94D9F4F356D1
          13F5F9B17D836B7553AE72FD59E4F4A06BDA89A282F79173E1EFD89BD406F7DE
          5D1BAD05F41B870ACC73A32C51B440676C880DD7B4B4E1B9872B236D5B772C9B
          DF07FD7AC8E7723C22A08AC69D07FAB8FF02F0BB0BECFB21D4C75F73F77357D9
          FEDDDCE4817B9D007F0CE2E305F8036BA8E110E15717D17E02FCED05F85F0D2B
          06FEA2A3D580A38CC777807E51C1914A22016B817BD51123C2BE02BFE8BF03F8
          2B2227B99289E1DF21D5BFD50D795BFD91B6A839EE19531BCD98AD27A8AACE96
          84FA88D12375DF53DAE3F5FBDC7074A923F0572805FC3C962FC09FBB8EE13D95
          51B0BA22F2578B71B1D11D17B6C62163FF78A0E03B6972677DA05C8EDA9B7A1E
          A3073E8BB85086E6180F148122CEDF8A0B36905F0CFA3AF01B59A11D84226EC3
          7FEF542E92767E9DCBD56BCFCD47F306C69B5A0AC08A81D1C0BE25F5A031FC42
          17218ED578746EFA35E09A5958BBFCEAA563FDF8EDD5B8A68D0CFAFE8334DB06
          C317185BCCF29A702766123231BDFC9BDE6CD621B3C1A8C7D66784A62FD55D75
          BF756D73B22BA903690558B6F000DE7F63BD00D233B8B1D71C74683A1A4DA306
          232670A0C0E860A96B66F6A1E75F00D473B2C20DF74768EC3915D1DCD04B8C9B
          A6818C612E69A79F02BF6937C7FEC473122E09FD0C9DE9DB6536562E3E28C572
          5ED65FA3FBA7BD8DA611037511AC09D7F9050FBF48814EC4F023BE26848DC3E8
          3B5FC73E9D38747E9DCB557ACA1930A563F34677E85A13BD969487198CB8A917
          F78FE0FDA761471E628C7BCF420C25F5AC7D49003B21789C6687E16FE222E42E
          CDA7A377C759B8BEE74C3C30F37D7CFCDE4A2C5FBC07495BCF226DF725B9ACF3
          B294D5BAE58775F760F64F1AD2EA25D7191BDE8F8456D3A7637D6789A147C356
          EE43CEB209ECEBEEBA346CE5F9D1AFCBBDF8EA43D752F3323CB05FA7599AA988
          6D43E39061560CF32BF54CD0B6B303BFD586F2CAC5D69C79E8D97A3A3E7AD3F5
          4C5D3FCE4B46AF4E934BDA4C81DFF1DA16F01B4384CF27536F23EDCF87D19A8E
          B647DB19F8F203D7761C2E57B9FE4C727AD0356D04F25F42CED9EB90BE43A073
          A6279A27305B8E0D517E1534CE3EDCCB4D2CF52AE822C75F78B81EF6EDE88D95
          8BAE43FF9E620C884110E6E786884047E0B719E0FFEC2601FE1BEDC05FC1E4D3
          F70B42A87730C2FDFCD550E8DFB5B21DF81BD9819FBBCDD647847F4D27C0EF5E
          0CFC06FA2BCADF02E1C74A6481FE4F80DFF2F0DB61FFF701FE0AC849124097E3
          DC79378FF1FD02FC399B7D91BEB8191E9E5CDFEC361C5451EAD3CC843408AC82
          EE4D6D7876860D8797862167837731F06B488F2857809F8B7709FCF91BAAA250
          DE17AD1543626D65B3E1D6B626C83C340D28743DEDDAFF825E796E9E2E6C4D08
          E3D4373DAC847CCA0EA616F46B288F054666E067FC3577898C0D198EEBBADF0D
          6640297BFE5FA35DDBCEE0E6BE33D578A0A7DC5CC73E783B0EEEF672B0BCC64B
          6CC28B38A032DD64CBE8E178F4DEABB7C9D6FE3D39183DE8698D35673E76CD29
          2F833F6184B0C359126B9D01C31DAC547D0D3CE80927C8D1BB2F4652D4D5CDCC
          E3AA1877BD747E0A9EFDE757183BE429DCD0631A3A356146217A33CDC647BA81
          97EF0C017F017C8F6902A602FE023BD6E2D792B62B2BD38634D208950433426C
          F1DF7E43D0BBD3747CF785EB21592BE6A7624037A64F1CA4199F1202A7A821E6
          14F81DCA6B605F7E87B41F0DBA6B5ACDC6C76F5E99108C979EFD169D5B0D45B4
          FF5FD59008E70C09D7C770A3282903C5F2E902509F5952AF33A5EF4C55038B06
          0B4368223D6F973E34424374A68E7C4337305B3A2FDDE58C542F3E391FED1246
          2226C0ECD340E0A731C6FA516FBF948DC0CF7D373853C2B8751E376DC899B631
          6819354E1D00DCA3A2ECF92F5747D37370F7A4B7D0214EEE253F82B4691B63DC
          F3BDD556A66CA5805FC4EF84BB0F44FBD8891875FBB3D8B3DDF54C38D326BEA8
          FB4610DA4B03BFE3F38A65327D4BEF7B2F798E6ADF9657FFA1BA09DED8C12F5E
          91F294AB5C7F16393DE89A56A228EF29E49DEB85FD3B9B60D6140FB410F08E0E
          AC200FDE3ABA8836CADB431E605EE81257192FFCC30B695BFB60C9DCFEE8C70D
          B504F8437DAA203CC00AE9A9AF997BF8D90F9FDDE814F8837D823564C529F007
          5512E0AF2BC646757980D881FF95089CD9D35880DF033842E0AFA022EC1709E4
          3BAA18F419CAA3B1FB955070508C830302C25CB0AB31FCBF17F00BA017037F65
          E427C96F11E0CFDEE42DC0DF048F4EAD87364D4CE6A3F0C07A76E0AF81AE72EC
          E9E91571685938B2367A21773363F82B69580F619F6938353DE7FAAA02FE3550
          B8A11A8AD6BB215F94B1B126CE6F6F86CC230F0005E5BB16FE92766DBB84BF5C
          773F1A070DD278544E7D13521927CC78738DC9A664407506FC8CDB8F0B198316
          8D86AA47B1ECF97FAD5EFED78F3A9832DEB834F0970CA0256590C156CBC8B2D2
          9BCE58E3116812360C37F59C8DB54B5DDF32FFE7F4D9BB9BC548927AE24EA70C
          FBB07BA5CD004FC8E7B43D3DC82644C5A45294CFBD980585DED0514808198601
          5DA7FD5779F7FF9D52934F62C9FC1D78FD851F9038FA05CD41DFB5E564B46C28
          D01F40A03180AF594A088202AFA6BDCACA0E6AD27E6A30700754017C02AC058B
          BA78D87F109897FFB30FD6CAE59D97E972754FE21B681B3B44C0FD2EED2334C0
          0CF0DBCB53DCA7D9D7ACE306F81903CF109BF8D0B19830F44DA4EC707D01F8DA
          650771539F19681239483DC55C2710E62EA0CA903A01486E52D6580C585DA06E
          876A63441AE3917D8E7D8FA9416FEC35131FBCB1AA54488E2B5ABBF83C6EEEF5
          88DCD76298B21D04E259373AFB2206AD09BF32DEF5A8FA02B17C5E689F1FAB5E
          77D62FB30BDD72ED8358F0CD1E39A5F3EB5C8E967C97865EEDA6E8F9B4BFE8AC
          19673718BA6766D31CFB93F55C32EF0DF0D368E9D12E119FBDE77A18D6FC6F77
          A17B87F16816C5F5115C63217D9DC05F7C7DBBECFD47EF7DED6B26242A3E48EE
          93803BD0BBF3647CFAAEEBFDBA5CE5FA33C9E9419754B40CC87902F967AFC5C1
          A4A69899E889E6029891C16E08F7AB87705F6F847979C983C2079D05F85F7AC4
          0F299BFAE0C7EFFA63404F13FA13E65B5D805F60FEB2803F00C1BEFE08E5AEBC
          816EE8A7213DFD31796203C427FC1CF04709F0C7A2F0B05709F00BD45316F417
          D2D32F2A017E817D017DE6DE2F38501345FB9992B39A80BEDBEF06FCFC3B97D0
          4FED74432E53756E93D7ADDED8BB345E80BFAEEE45104EE0E77A07017ED64327
          39F6ECEC6AD8BF34C401F82BEBC25D857D51E146316CECC09FBF4ECEBBA122F2
          3654C0C58D55716E4733641F7D4C80BF3CD5D92FE9D567974B1BC840243013EE
          6116C8D2FBC9B47F8CC3FE79E0A7466BCC3ABDF1DC5467D902D706F75D5B3270
          6BDF8774A3AC482FC6C4CBF54A0DA03F057E0EA40981D375E75DC287C6EE470F
          C1A377BBBE70F8E7B46F773646DCFEBCFCEEF10A6A96679FE52290A8E753E04C
          B375089C30FC80B0CFB863932E5140C04BEA2D6A04EE997CF53799BA1ADABBE7
          1CD6ADD8078635CD9CF8167AB79FAA5E7FC68E27049945BED6CC4B89F8B75DF6
          F623E86B7623E94BBA93B20026C5F7D17E77E2DA8E13B170AE6BFB39AC98B71F
          7D3A4E1280BD5DC391D40BED303354521E47E0377D8D062D176333BC8CB1FB1F
          BF756536477A68F6C76815335CB31211DED5BBEF3711111E0292DE72EF0524AA
          879FFD8986891AB5046DE947DCD8AE51E010B44F188BB1839FC7CE8D576EEDC7
          01B13D674FFC5C17EF736F045E8F6DC45742360D0E0DDF51E097571A79526784
          7D962F5ECA1D517F90AE4BE1E66607D37E7B661EEA9E491FA25D8C1840F587E8
          BDC476E1F5F55EA2C7BF549B95F42B23D3A7988275C49D8F836B83CA9EFFD76A
          C6C477D02A9619A506EB82E852C0EF441A7A54BC5057CAE437040961B72171CC
          B348DB757576FD2E57B9FEA8727AD02515AE00B29E46FEE9DE0AFCB3A679A0A9
          007F1863EE036A29A407FBD4457440757410207FE99F7E48DBD21F4B7FB81103
          7A18E00FF7AD25C0EF85205F01FEC07A0EC07F3DE67E74BD03F09B901F05FF20
          7705DB7ED7542C017EF5F05716E0AF27A05B5306156BD16E039CD91D27C0EF8D
          A2C3D505F42B168B613D858705E0ED325E7D07D8E7865B02FC05076A21FFC0EF
          0CFC22DD8137D986EC1D95912DB05FB44DC07C9B17D21637C67DE32ACBC3D3AC
          7708F3AD8B483F2F44FAD64017698FD7194AB53C18999B3C0CF0DBBDFC04FEC2
          CDD2941B2BA0683DBDFCD53594A768835C7BA30D1736B809F03745CEB12780BC
          AB977BFDCF202E86BCB5CF23EA4D675614DD31D7EED18BAC2B20C6B4770CE9E1
          14B90E608EF026920195D3DADC78E69E196FCA299D5FE772F59A181FF4163343
          09BDAAC5C05F7C6D3BF0DB07731DD00532B8C32F37710AAF3F1A2D1B4CC22D7D
          EEC7F285572F769F9979BAB498AAB9E30984043502A49149196A4111A15F6721
          A45E8D07DB78B3B9B8F1A61EF763C1B749724AE7D7F92369C5A274DC37FD5DF5
          A45AB34556B622D376D67B910394995007038D6C4F0B3015FE83066B06990D6B
          7E7B0CFFA13D45983DFE3DB46E344C00ED368D75D74C4E0A610E652BEE53F2AA
          E53470C93D0208E4CC5C3479C45B48DE725E4EEBFC5A97AB65F3F76A3E791AB6
          A1EE43343529FB505CD014CD78C5FA681234550D58C6F2D300E02BEF0B2E0EA7
          21D4367E14260E7F197B5D089771A60FDFDC8CCE2D13D124427E3FEFC162E0A7
          0CF0B35ECCECCD78C40598D022BEE7BD48006688DB5FFAFD03F3BF76CD509BFB
          E56EF4ED384BF7A8603F61E898756FD1BB4FC3B22466DEA12D29AB3F058ED46C
          3A9FBCEBFA6EEB73BFD8857E5DEE4693F0F16AA095067DBEB7645DDFCC60A971
          E9236DEB29ED297DBA57A709F8E223D7F7012857B9FE6C727AD02515AE06329F
          43DEC97ED8BFB319EE9EE5890401CC2081CEA0E07A0809F643A07F1D05F676CD
          6C78E1314FA46F1D8025736F40DF6E364DAD49E08F0CE2CEB85EA581FFF301A5
          813FA0AE7C5E575E6B09F0D7290DFC6562F81D81FFC3574B3CFC047E2ED805F3
          EB1FA92CC704E01DA4213CF6309E1211FCAB0AF013F67FBF901E8AB0CFC5BB04
          FE9CED52FE1D9590B3CD1349F31B60EA601B5A34963A0DA98C701F7744F9FB22
          CAB71AAE917AFFE05FDE38B43210999BDDEDC05F4DBDFC0584FD4DA20D06F80B
          37D440EE3A39CE4DB8E4F879397E6E6782F1F0E7B8BE40EBCFAC375E5C2146ED
          1405EB48F7513A4071F3287AD3E27C99679BF9F665D022D42A0871303320A492
          01352678884E4FBB026554EACE4C5CDF638E66E6E1404AC009AF6FCA547A402D
          19CCAD819E60141B304D3DEDAD1B8FD7FCD865CF7FA5B467E7298C1AF82FB48D
          996AF7C64A7918862150AF1E3C2923419F83BC15E2A346898011E1C400D40874
          889D8C59133F90533ABFCE6F51DA9EB348DA761AEB561EC682EF52F0C5875BF1
          FA734BF0D09CF7F0C87D6F61DEB7577F4F8A775E5E8D3E9D6721C2FB0EC40699
          598F6269BB95911C675D397E6EC581378918A1EB060EA4FFF638E7D50B4EA247
          EB29681A3E5CBDABCC30C46B987516F6F2E9754BFA93633F57D016C8EED96E26
          DE7DE5CAD4DF3FEFFF1C2D1B311C6EB87AF21BF90ADC4B1FD1D9043F4222F770
          3075C350221A1D0AFE4CB119300AAD1A9BCC37C99B2F7F11EEE568C9FC545CDF
          6B1662C30623928605AF277562427AEC7DD78B0BFACDE66C66C6410C59AFA19A
          0987616D915ED2B7E599F2C00CD7EEC1FDA9B99ADE97BB6CD3A030D9C368704C
          40D3E0697A0F712D4669E0B79E4DD27E6C53DF119A8674C41DCF821BAE95BDC6
          AFD5DD891FA15DDC1484D537EDC605D6E6BA569FB154D2A718E2A43BFD0AF073
          BD53CB46233166F093D89F76464EE9FC3AE52AD7FFAA9C1E7449056B5194F13C
          724F5E87FDC9AD3173BA3B6205F803822B09F0FBC2C7CF1781415E080BB3A14D
          0B1B9E79A436F6EDA0875F405EA0BE1167023C6B20CCCF1B6181BEEAB90F1623
          800B7AE77ED617DF7F380003BADAE433F99E1803C1413505EAABE9665D3CD6B7
          6B2501FE1B90383E0E097136840456475890271A04D4D60C35DDDB13F8CDA25D
          E6DEC7B19AC0F16A0AFB847986F8141DAE8AC24355F4BD05FC45072BEA425D6B
          D1AEA5DF334B0F95B35DBEBBBB1A7293AA226BBB1B72B70998EFF4C3FA2F4331
          FE761B62C36D68185A5BC3A8B8F95823FFAAE8D5CA866F5EF5C3D1B5FE02FCB5
          8B819F9B6FA9779FC0BFDEA671FB79EBAB207B8DD481007FAE28638B1BCEEF88
          C3C5BD73806CD7BD3A7F56A5ECB8881BAE9DADE101D68EA2BAE8CE5BA0C87B98
          7AD1ACC1939E7FC659D35BC5F002C613ABC74A06F7968D860B50BA0EAE2F3CF9
          033A34B17BCC0580083C258BF21C06D462383303BDC658FB4DD4F8E798A051B8
          F1DA07B07EF90939A5F3EBB8AA775E5D846EADC7233658C05441D561902F2EA7
          BC6A39459EE3114F6F324354048C08FE5C54CC8D9B562CF875E564DA4E8613ED
          D8701ECBE6EFC7DC2F92F0D64B4BF0DCE3DFE3DE69EFE822E2FFBBEE41F4EF36
          5BCE3F5320753A3A361D8F8ECD46A16D93DB71FFAC57E434CECF7DA5B437391F
          9346BC2E8697183AFE6C23A983E2FAB043B55537729C10C7F48D6AB471368469
          0BE53B8CE3EFD064125E79E60739ADF36B5D8E668F7F1F1DE2A41F0BECC7F873
          E6609403EC3BB695BD6CFC5B8F9BBE4FAF2C8DBBE1B73D879D9B5C4F0FBA61E5
          11DCD47B96C6EDD3D0E6CC5403EFA9E69A5A0603D756FDD0A88C0D9CA2F74468
          5DC68D8FC235AD67E0AD97AFECB36DEF9E5C4C1CF51C9A46DFA1BB1D73975F66
          9E6299AC593E35FC592F561A4C2963633FA6E11C6ADF836284AEE761DF5BB9C8
          B51DA39977BF77A799DA6E565D14B78DB697D491003DAFCF32B23DB919609CDF
          74354A744640EEB34ECD26E1BB4F5D9B69A0167DB7C7E4DDF765C69FE9724FCF
          903EEB68D0B2CF94F41BAB3FD16852A34D0C15E6DDE73E005F7DE45A5858D2B6
          E358B7FC00167EBB5B77A336DAAB5AF29DA57DFABAE09B542C9D77008BBE4B97
          67C641CCFB6A8F2EEA9EF7F556AC5F95865D49576F67EF5D3B8F61F592BD582A
          8624EBEFC7EF53B4AC0BBF4D91BF53B1786EBAAEF160A287253FB0FC697ACCFC
          2EF9EEDCDDF8E19BED58BF7A1FD2538FCA299D5FC7D2A6F572CE05DBB064410A
          7E90DFF9E3DCFD7A4E9EE7E7B47CA194E1DB9D52C6DD58F8FD36FCF0F526AC5C
          BCFBAA667773D4FA1587F5F7B39DD846DCBD79C93C29FB0F3BA47C4958FCED5E
          2CFBFE08967E2F752475B2F887DD2A969D75B564EE212CF87A2F167E27BFF507
          F97BC16EAC5CB6135B36FD31D6859595D383AE69238AB25F43DEE95BB06F673B
          4C9B5E1F714D05BC43AA223424007E7E7E0808AA8F5001FEF66D6D78E1895A38
          98DC4F17EDF6E966434CA84D536832CD66B0407F48A0C7BF07FEC0DA26F56650
          1D3BF0BBE1FD576F46E2B8264888AD8040BF6A9ABE33DABF061A8B31D1BB8B00
          FF1B2138951A81BC637550C00C3DA704EE4F5445D1B1CA283A5A05F902F7B9FB
          EC0B745506F615F819CFEFA0DF17F8A56CC95591BBC30D593BED5EFE6D557161
          B33F567C1C865BA4CEA2E5374706D61578F49587A91762836CB859EAF9C7777D
          716AA39FEEB44BD02F067EC2BE03F0334B4FCE7AB9CEA64A0AFC973656C4D9CD
          11B8903241807F01E4C748B33BEB07FFDB7AF9E979BAE90B3D8AD6E24A023F07
          6F93479B9E57139EA2B1B31CBC3C4769BC3C1711D2BBC5A9EDEB7ACCC0A2EF5D
          DB323F25E994A60064388F8637D8819FD72B1950EDB20FA4C5F2677C35438B46
          A055A3717878CED5CBCCB36BFB518C1DFA249A37603ABE910EC0CF7211420826
          D6DFF6F209F0270424EAAC09C37898D9A665C3B1B87BF2A73898226775729DB2
          7AEFF545F8E7039F604EE2BB1875E78BB8B5EFC3BAD9578F765375E130DBB175
          CC4834891CA62103CC6E13ED3B540CE8219ADA9221204DA3EFC20DBD2663E7E6
          AB9FF3FB9139DF6BB88A591362AF17C736D37A627B9A05BE0427BE12FC4DA617
          6E526452722EFEE1B7C3DAA2B929B8A9C7030A7EECD3F450EB7A0A693702A289
          097768BBE27299B2F19520CB59A3B75EBC3221181FBDB54A172247780DD2BE4E
          D82F05FC8EB9DCA53C0CE7D194A0FABD443112C6A177C7399A36B5ECB97FAB52
          9232A55F3F87CEADC4380D1F82308F3BF47E62D88C99E133B37C06F8592F16D4
          CAB3438C28864971C33086F7F11E9C39E17DECDDE55A96A0D993DED37A377551
          A66DF46F03FCFAAC92BA22E4EBEEDF9E53F4B9C59907C6EED3F8DCBEC1756FFA
          ECC9EFE8AEBA66975C690B8F44757C149747CBE65837A6AFEB9E1C62D8D191D1
          BA5122C60F7D19A93B5D9B9979FFCD65E8DF7D3C7A7618A7E9417B759C62D734
          F4E940CD2856DF2ED3B5BF756F3B59DECF449FCE72BC4B22AEEB3911A306DF8F
          9DDBAE4CCA5B67FAE4FD55B8FEDAA972CD69B8B6C3542D1F8DB86B3B4C57F17D
          AF8E33F43D9F65FC9C65ECDD89EFE5F7749A841BFA4CC6F041F762C3BA5FDE40
          F3A5E73FC28DFDC7A26FF709C25973A47E66159F47EBE927E2F149E8DA7A247A
          751E27753259F86B2C7A761CA1BBA7EFDC7475D7587CF9D17ADCDC773AFA759B
          2A7590A8BF9F75D5BB7322AEED385E3409FD3BCF41DF0E73D0BBBDD4977C876B
          9A7A7698A8A1933DDA4ABDB6BB478EDF27E7B84FEEDFB11870ED040C1F3C1B1F
          7DF0AD5CC2F975FF9BE5F4A06BDA2A10F80EF2CEDF8EB4ED1D316B86279A10F8
          FD2A29C407F8BA23C0AF86C6F4B76B65C3B3FFAC82FD493DC4F2EA85DE02F231
          62084405B8AB873F4800F5DF027F407D857E86F684CAF7C2022A4987AE81F75F
          F9AB007F0B01FE4A66975986F4F857D37D007A76B6E1DD57FC70747710B28FD5
          442E17E89E96629F12C03DC9D70A283A2E624CFFF1CA02FB02E176D82FD6E112
          FDDEC05F44CFFED64A02FC0CEFA9869CED75716A4338E6BE11899E52BF110C91
          F2AB270F443F19E4DDD15CEA77F84D366CF8320817B6780BF0D7700AFC8CD92F
          D85011BA0BAF007FE166318404F633E4F899757EB8B0EB0E20F323A0E0CF1123
          7D2595BCF5346EE93D4BB3D998C16A920C9602F81CD0EDC061C5A3D39BC71879
          7E8F00101F3045BDB19C9EE6E0FEC06CD7BDFB2F3DFD2DDAC60C9381D42CCCE3
          06420C314A0832596E2CB8B006516B20359272F90C435CB80062B71958B7E2EA
          79F73F7A7BB90C0E724DFF3B0D949609453175698E5980A4998EE46F8D49E72E
          A1C143D0AFEB2C2CFDE1B09CD2F9751CB569F511DD05B55DEC70B491FA6E1232
          56BDDF3C1F612BCAEB2E01C2815A77068E8CC7D388E5114091B2C6050D41BBB8
          A178E3851FE5B4CEAF7525B469E539F5846A161986AB14D74F49DB59E5625D11
          D2B84B2C8D4E1A794D82E955BF131DE3270B38BA96AEF481599F28F471C6CA2C
          0C366157EC63EA11B62F3C35E5B34BCB65CAC6BF99AA96A1666C87B2E7FF2DE2
          4C0C67C522BCECB1FBF496ABC79CE560DDB0FDAC36E4FA81313ACBA0B0EFC7B0
          B5916A087186AEECB97F8BD2930AF0CFFBBED73021C6BBF37A9C31631D69681A
          37DE93B259FDB9ECE27DF6436668A27119133C586797E67EE1DAEEE65CD7A26B
          41C4502BEE2F3F51495DD19053D0F69AAACF0E7D76C9BDD6ABDD347CF591EB79
          EE7F94F2F46CCB35167C2E326B12AF33499E85F67D26581EBEAA1C9F0972FFB3
          FDBC8669DAD5EE6DA6E38BF75D4B31BB65FD49FCF58639888FF83BA2FCFECF3C
          8BFCEF9236A306D9C567813CDBE595F77D84E7FF497D0C96FE36508DFF86817F
          43DB848178E4BE777170EF95D9D4AEAC92B79DD372C686DEA56D414792A6F1D5
          1921BB01CE9D87038D93897B49F07B147F03CBCA72B688FD3B1EBAF70D39A5F3
          EB38EAB38F17A35D8BBF21C2FF0644FB73AD8B3CAB5917A5EAE6A78A099057A9
          C746FEB74B7BFD0DE19E37A25B8B49F8F283ABC30E87D273F1DA730BC5D89880
          8448295BD09DDA2E2C2B67D68CC3C6386E4AEA66B0B625CB1A133044EE0DE9FF
          FE6375665B67910247A045E3E1B8B9FF0C7CFEF14AB98CF36BFFB7CBE941D744
          8FD1E7C8BB3816A9DB7BE0EED975D1B6B50D91029E0D05B81B08E84785CAFB70
          1B3A08903EFD880DE93BDB63D9821EE8738D1C97CF23FC6A23C4C75377C80D09
          F432C0DFE36780DFBE68971B4B85FB5745BFCE3505F8FF560CFC218135D51888
          0CA8A1D726F07FF046184EA43742EE490FE49DA88C7C81FD9CE32266E5392110
          2E2A60B61E9153E0B7EBF7CEC34FE02FDC2940CEDD7519C7BFAB062E6D656C7E
          0C5E79C00F9DC5D00A57E0F79401C3471E08D5D03ADA86D9C32A60D7BC10646C
          F6B0837E2579ADF213E027E0E76D7443E67AB9D606A927799F23C7CFAFF3C485
          9DFD8073CF0279EBA4BD9DF583FF5DBDF0E4F7029026C7B67AF5B9C0B43856DF
          3E882AF0DBBD665EDC96DE0C6204260EB004217A8B962D726DEA3379CB59F502
          B5881A85E05A77A897570D0C193435BC430750035F56D928823EC5B0A2D8E091
          F2B01B867FDC73F562F7F7EFC9D3D87DC6E0F261ACC06DAF9362390CF8162035
          F018A39979E871E4839ABBFFDE37FD4339A5F3EB9455CAD64BF8BF7EF76BFE78
          F5686A5B4D5140E61A01B605CF6D00480083ED69C98B59530C94107A9B450CC3
          DFAE7F107BB6B9E67DFD39D1ABCBDCE2DCFC898B1A1BD26074809F12B1AE584F
          F67493DC3956DB58C0510C18EEA1406F16C33ACA5EE372B56AC901DCD2EF0134
          093540A82925A54E18CE43A3B554484F7119AD36B48E49BF1283E1B17BBF9153
          3ABFCEAF516AD2050CFDFB13EA4567B8932E70D532D8CB51AA9ECC7BC6F97360
          675DD240A0A140AFE8C655976730FE3B6D59735A77DEEDD42C112D1B4CD5D904
          EEF2CB193666BD621F2BBDCB36FB345FEDF5246564B61C023FB306B16F4F1BF7
          BA869D95BDD6AF51E2E897D03AC62C962E6E9352F56249CAC3FB4ADA5653AC8A
          E164BCFB63B4AF4F18F21C5276BAB6C8FAD8DE7CCC1CF71A5A3794E78E3A42E8
          04992E86BCC9BC53DC6E7C5595694BFFD1029003D1366EBC7AF75376B8B696E0
          F187BE448B18813E31AE62C400E14C8CD9A0D052E97AE2738AE5D6C5D55E43A5
          FFDCA5338103BA4F1723F6B89CD2F9755CD5F34FCE43D38677168F3126544FFA
          8E8C2B7C2E51AC27759AD8CB4AA35CD7D84879F9BC4A88188A013D12B163CBE5
          CD4A266D3F82FFBB690662C26E47249FBDBE53EC6D51BA4E54F636D259EB2069
          47A93B6ED8C8D92A1A762DA32660CAA8F77028DDB5BE5C567BB65FC29CC437D1
          A9C548348B16632490090EB85E86ED480391337A5CFC2EF524F73BEB8E65A393
          8759A9B88BBCEE322DCF0E7E8F0BFD6954769267EED821AF62EDF2ABD7A6FF09
          393DE8BA16223FE37E1CD875331EFB474DFCF5661BFA09A4DFD8CD86EB04EAFB
          8B0674B7E10E39FEC9DB6E3898D216CB1775415FEEB44BE0F71748F7F5D2DCFA
          A581BF7F19E017A3C0DF5B17F76A5A4E3BF07FF8323DFCCD04F86D080CA8AAC0
          1F15581B51729E6B3AD8F0EEABB138BAA7392E1E0C40E65177E49EA88D9C1335
          907BAC2A0A4E5441E17101E963F2334EB94163F52DC8671CFF41871CFCBF731E
          7E05FE2437DD702B7B77055C12E03FBB2914C9F39A61E26D95648090BAE41A06
          3F6F19D83C645093DFDFC486E767D5C0C1C5A1C8DC584F209FA02FC0BFA5B2BE
          166EAA006C9472E822DD8A7A2C639DBC5F5F45D3741A2F7F5D5CD8DA1AB98712
          05F8AFAE47F38FA61D1BCF6AFEF4D60DE4A1C287AB9700A3E394BDF5609407A2
          95C5841B711194984B9E611A04ECB671A3F1E0AC8FE494CEAF73B97AEE9F7335
          E34894E7203D3F418CD7659692887A3280394E91D3834DC903D0A4C31BAFDEB3
          A6912331A0E7346C5A7BF51E766F3CBF1C1D9A8C43536E4E2690A103A9E320CB
          0144CA59E2113560C45D751302A40E3D65000B19A653C9AB7EBCFC69F4FDBB32
          0438DE5008A6B7874618BD98C6289AA08324CBA35E4EFBC0661901265C6B92CE
          C8E831FFA1E89830162F3CBA18F4EC96BD962BE2ACD1130F7E8D568D05F4FD87
          2321D040A3693B0EB20E7D4BFB17C1C8003F437AB84E84BBA136091B84B6B103
          F1EC23AE4D493FF530FBD5040DA362DC3E07768AFD98327D9A7D8BEDE620AB7C
          94F4B576F1E3F0E11B572615E79A25877153AF7BD13060A02E8E771AB2E628A9
          2F429A7AD0355B90DCB37E23D0B9F944BCF4AFDFBEB68146F6EBCF2CC2ADBDEF
          469B4652E7A1341447E9FDC67EC5F630302BB04FE077F4F24B7F37CF095347AC
          4BDE03DCA5BB67FBC9F8FC7DD71225705D0AD7C8348B94E78FFC5ED34F4C5D14
          F79FE2FAB11B1CFE0C09E371B3F91EFB79BFCE53F0C57BAE2FB25EF0E51EDD07
          A059B8B9D719E268AD61E07D65EAC1B15F97948DC769D8316B558FF613F0DD67
          AECD366C5D7F16D7F59C852651C3D58860DAD4D2D733CF1CD35646D65A282EBC
          A6573D3670283A35190BA6852D7BFE2BA5ED1B32B49C096258F01E2A0DF8F667
          825DD6FE04045B3EA3AC1923CE58B68D1B8BC71FFC5C4EE9FC3ACEF4F07DEFA2
          4D823C9B9988C2DE4E25D7E37BBBEC9FB19F53C601609C026CB7B880F1B8E9DA
          87AF88616D69F1DC54FCEDFAFB75BC4B6012016E6AE73742D7E5D079C5B51E04
          FDE2753D6278B36E62F82CE798E369766AD675487CEEFB8921103254D76A3D72
          EFD7D89F522497717EED3F8A9C1E745585DC6D37FB359C3930125B3676C4A279
          1158FA6D03ACFA3E168BBF8EC4C2AF22B0E89B58ACFD310E3B3786E0F4918E58
          BAB06D31F013CE3586DFD7F757003F3DFC95E541540D1FBE723312C7279845BB
          C1D5111AE48988807A88F0B3A16BFB0A02FC6D7122A537728EB5C6C5FDD1C839
          1A29EF83917DC4073987DD9175B03AB205E4F30F338E5FE057A0FFA7C05FCDE8
          77CED25324B09FBBD3868C641B2E24D7C6990DB158F15E13DCD4D98658A6380D
          AC27C0EF2337671DC4CAEF67FCFE972FF8E2F4AA70E46CA8A7213BB95B2A28D8
          5BC04FA9779FC0BFB5A21806047EF9AD6BAB8931C058FEDA38B7290AE776FD9F
          B4F357D2E4A922E77DE17F4DCFFD739EC23A1FAA1ACF6CC1BE3590CB438F0F47
          EB214D1930A24CDE792EEAEB7FCD14AC5AECDAAEBADBD69FC2806B66693E7B0E
          4884443E78C3EB9AADF939789BEBCAC39A60CD696A8A03AF1DF839A0368B1E86
          C71EF84C4EE9FC3AAE2A3D391BB7F479506735E8A9A2578AC612BD50C60061BD
          9901A53420C9C39AD3ADF25DD637F3D4DF3BEDD78740BDFFEA52DDDD96D3DCCC
          734EE0E7B55857EAED91BAD3015D062B2363901819AFB6CE4648599B858FC675
          5DEEC3338F2CC29635AEA798E48EAE6FBFBC54D7721044E3C3A49DFCA5ACD26F
          1488B45E4A804465EF635A5FF4C80A04A807D2E736B46A742746DFF5188EA6FF
          768364EBC623B8FDE67FA27130C3C4E861647DD8E14CAE4DC820207291B0298B
          831CCB29F5D5266682AEB7D8B8F2949CDAF9F52E57733FDFAD0B5A237DEE54E0
          371B4739422CEBC44172DCCCDE8CD4CC301A6A13385EE07A04FE3AE0815F95F6
          92B30BEB961FC2F34FCCC52D7DE7A045F44031AE18563458D35B86D713833490
          3347E67EE32C085F7F0AFCF472DBFBBC944F43FC9822530066C41DFFC2EEEDA7
          E572CECB7039E20C41ABC6A3344C8FF777C9FDCFEB597565D59149CF4938637F
          33F028CF91D0C1983AFA05A4ED722D769FDEDD9963DF41BB183937C32A04480D
          189ABD004ABCD30E65D3F259FD489EB1BE4375E663DCB0A7B06F8F6BB1FBF4EE
          B78E936776302151EE6B791698FB879236127136D188EFCDFA2B3E47594FF45E
          B3CD6FE83EF38AF4E79FD3B3FF5C8476625444F90D36F5C2BE632F9FCE1A9792
          18E574F4C8F34B1D171AE623AF62B4DDD8F3C15FBD507EC1DC6DE8D951FAACF4
          E9689FA9727EF37C29AE27EF29A5A4EB30EC33437C1E309454C74569EB8E4D27
          E3833797CA699D5FEB72B56F4F263E7C73B58C99D3ECB37BD216721F87BA73D3
          46196369D83285B148A19FCF76017E26C6A0438EB06FC612667BE3B35C0C12CE
          42440FC7CD7DEE165EFCF3A478757AD055E5231DC89B87FC33F7E2ECA95E387D
          A221B24F4521EF54282E1D0DC0A56321C8381187CC534D71E9742CCE9FEC80C5
          0B5AA07F2FFB22D3805A9709FCF5CDE65CFEEEBA5117C357FA75AD840F5FBD0E
          53C7374242BC592C1CC80DBFFCEAA361504D74695D07CFFCA31D362DEC8C9495
          CD90BEA639F6AD8DC3BE355138B259CA971A86FC43416617DE633505F805E88F
          C8CFB2A0DF0EFE26FFFEEF9F96B350603F477491C09F5417475726E08DBBFDD0
          B3A90D0D032B22CC9F75E42D0FF81A681E6EC3E8BFDAB0EECB06B8B44EDA637D
          FD9F007F8103F0E76CB6E9EEBBD99BC5F8D9501D056BAA02EBC508DA580DE7D6
          FBE1E4D61EC83BFB0E8AF2B74BB33BEF0BFF4BDAB4F6A83C20EE311B4631E7BE
          0EE476D8A7F85E06F8469E66D3240EA2561E693E1CD513E2374C3D144CF558F6
          FCBF56CC2ED33E960323AF3F1911F5B889D6147DA8E9B5E5416D3C3132B012AC
          351ED3C4AAAB27448020217C226EECF520D6AFBA7ABBEABEF1C242B46E3856CB
          C6F013AD07C2BEBD2C1CD40C18D9432058AF5AB7C6988A741F841611937143B7
          07B072D1AF2FE7B2793B30A09B9C37E00E1D1439885BB0AAED238393E5B9D63A
          93E3845C354A3C870994194F28BD429C12D69D47DBCE12287A171FBCBE560CB7
          FDD8977A79A10687F65E444AD269CD24F1EE2BAB30F46FCFA17D7C22DA349886
          D03A43B43C84EBB0BA03D13CCC3EA5EE540436C2DC24CD3DDF3C7C029A84DF85
          1B7A4CC61617E3E53FFF6835BAB41210F5A537CC6CD0A4B31D347AE4DAF47A96
          40A3257BB92C68538013780C9B80EEADE7E0BE29DFE2B377766A56918DAB8EE9
          2CCDAA1F8F62DE977B4529F8E4FD15F8FA8B25484DD92F45705EAEAF3FDAA5F5
          AEF1EE9A31887DC79A21B2D707FBBB433F3230345A4193FD8EF709CBCF8DB146
          DDF1069E7B6C916640D9B3FD0238CBB27DE371797F09DCC48ED9AABEF96813DE
          7AFE474C19F932FA749C8CD68D86A365D4185D0BC23EC2F6A2679F70D834682A
          22E57DACF4A34672FF51B19ED2D74425CF8A612A536EE9DF521EBE32A3D26BCF
          2E969FE9FCB75F8EBEF974BD2E586C123152BDD79AF652EF7F79B5DAA454DF91
          579681B3577C1E08347246A76FC7E9F8EA03D74339599EBE1D67A2790467A086
          EA758C03841E61B3ABB0E9278EB2F71FED4BD2EF04CCB866E7EB4F5CDBE577D3
          9A13C21853D5B06A1C300681B5A43C7ED38A438B582E356ABDC4402C96D48BB4
          1B532CF359C0F86FAE057AECEEABE71CE12C44EF2E53901039D27EFF993AB3EE
          3333AE586D287D4ADA4D5397AAF1CB590813C7DF3E662A1EBF6FA19CD2F9757E
          4E07F65EC2A8414F8B512CF7B9FC6EAB5EF45565AE6FEACCCCF459CF4CDE0B6C
          33AE23E2DA023A92A68E7F1AE929BFDD38DABF27078F3FF085CE5AC587317487
          46CD1444D49F2446FF2C338E69782A434587CBE7C6E3CF85FA9AF259CACC9DD9
          B911A6BEE78EED7EC3D1AD7922C60F7E16AB96FCB99C994E0F5E19C90D98F51C
          322E0C4056461470C90385E7DD5070AE1290595BE485DCB3BE28BAD400E78FB5
          C0B2F9CD70635F1BA28204D27DAB08A81AEF3D413ED4DF8400CDFDF43A01FEEB
          30A08B894DE7625CCA02FE487EAF4B057CF85A3F4C9D108D2671623C84544790
          6F7D3520A282EA2326AC1AFEAFBF1FA60CAE8DC48136CC1C6EC3F4C1F23AD486
          17EFA980959F87E0D896385C4C8B44F67E6FE41FAE8582239514FA8BD3710AF4
          33930F61BF68BF5D847E47E0DF27DF11F155E508FC6902F4047D5131F01783BE
          40375FE558FE1E0795857DF9BB5020BF30A90272926CB824DF39B7C307C9DF37
          C3945B2BA15323A94BBF4A08F5734744A0371AF857473B39365B7EEF9EC58D90
          BD2902F9EBEA29F0E76F16E027F48B08FC14BDFB0AFCA21C794FC8CF5B551985
          6BC5E0D95455C37ACE6C6E89EC230F485B2E008A5CDB05F6CFA0579F17708D65
          460D813EC634CB0384A0AFD02A03840E1802FB663035F0630101D3DD71A063CC
          E1F53D67BAFCA0D9B2F6186EB876867A9C755D801814DC58C7845ED8E3E37550
          B00FEC16F0AB979FF18E7C488E46AB980978F89E2B1363ED4C7B769CD33506AD
          A2CD4EBEAC07C60B5B53CFC5E0F333C04FC3209E6B0C2247E3BEA95FC8299D5F
          E7973473FCCBE8983006911E034DDBD8074C1DCCEC1EEC92C1D5B49D028780A5
          8685680C286364CD743577566E16350A1D9A8E552FD1D861CFE0C1391FE0B517
          16E18B8F36E3DBCF92F0DDE7C998F7D52E7CFDF1667CF8D672BCF0D4D79835F9
          15FCFDC6391AA2C034AA2D1B0890F909008921D424708E1837F4FA4A3D081C11
          928AE1E72762F9CD204B8F1ED72830FBC4FC2F5DCBF8443DFFD4B7681327ED65
          CF23CFB238CE8270D054E34DC1DF49D9B4EE8CF4FFFC46288010D6996DA48F00
          0D3389F4EE341DD7B6679691A9E8D2763086DC350B0BE7AF9622382FD7371F27
          CB3966A8D1AC0026ED612051A4D7B6F777ED47A62F114E08FBCC8EC5BA653DF3
          3E890F4944D388091A7FDFB3FD148DC9BEB1D74CBBE6E0BAEE776BC6939E6DC7
          A34BF39162200C444CE040F50CB2CF32373C4187D0C3309E18EFC908AD394C33
          4A112CA2EBF39E37B0AFC02FE52B017E9EC3D41DEF89666113F57AEB57FC7643
          ED605A16664CA0777F0CC23D076B1F62D98A81DF6A177BBFB79E0BCCCFAF9B95
          0938D118E6C276EE3E7C30C5B55D75B90BEE8C09AFAAA1CF7ECC7B46FB83F419
          BDA6BBC3AC91D586C53275C3E714672BC60F7B5E4EE9FC3A97ABC71FFA1AED9A
          8CD1F543DC802D8E1BB349BB94D48FD4895C57DBA858666D833A020412B980F6
          2679E632ACB3ECF9AF94184AD7B9F964DD89986B4F580FC6C36E8D2BA6AC1664
          D3F1C4FB80CF7D8666F179C9B0A35B7A3E8C8D2B7EDBC2F4E79FFCC1DCFF3A3B
          56A65DACB629EE479C05E1B3DD7CAE469D3CDBC3EB0D32B321BD2761E3DADF36
          93BD6DC3198C1BFA1CDA259890371A6A5C2313EDC97D2466CA6F67E6AD49662C
          F393318DCF0591A633E6BA1D0D691BAFFD4DC3FFE4BEE578D9A5C5243C38FD03
          A42767CA659C5FFB8F2AA707AF8CB802FB5364650E45D6A556C83DEF83A28BD5
          808CAAC045016881FFA273B55074C60779279B63F5BCE6F220154027F0FB5745
          5890BBC07C5D847AD71008B2E1FAAE36CCFFF426CCFBF856DD78ABA1C07DA877
          6D310EEA2122D81761DE9EF2C0AD5A0CFCD3C745A365BC1806722EAE0760D80F
          8D83C8200F340AAB83261136348FB6899569D4BA810D9DC540F84B371BDE7D32
          0C29AB5AE9E65C5987FC917BA406720F0B580BE86B6CFFE96A38BF5BDE1F7603
          D22B0269A2BD1500017B58B02FAFB907CCABCA0EFD84FDC234F9FD2962305004
          7E05FDCA28D85DC5BC12FA1D809FDF21E4E7EC90EFEEAC887C79CDDF29E02DD0
          CFFFB9B8BD3232F6D4C391F511F8F6C5585CDFDA8684601BA2FD2BCAEFAF8D30
          BF3A62D5BAE1DA16367CF42F4F1C5E19868CF5DE28DC585B80BFB200BF9C4F25
          86845DDC64CB52EE46F97B4325E4AF37E2FBDC0D72DDF50138B7B93770EA4931
          EEFEB773F2135C07F49884A65143CDA25379A8E88240856703AD660ADD78CEAD
          2C381C78436B0FD76961C68032AFFB83B3DF97533ABFCEE5CA0C60F6079DFDBA
          FA202E3B68D22821380B20D1EBC285552C07FFAF49C4680D09DAB8F2EA65E679
          E9A9C5E8DE520657AFBB742020307380E0604F5865184149C89391F1C6D22810
          28F01F8AC6C17768BAB575CB7FBBA78861334C31A7719F525F11F5C709CC4F35
          31CB3248A94124A201172B0308BDB466A19C002B5388DADBD3184A94BCB70F32
          F442368D145812E3A953D3A9E8D67226BAB79E6D009740DB568EC920D3217E8C
          4E2327841A2F1CDB81EDA483B78087CE7E78DAA7CD7D8C77AD81871846723D0E
          EAAC2F3534A5EE1892C00190992818ABDBBDDD787CF9D1361CDEEBFACEB13326
          BD8126913CB7E95306068DF7CE1847940979FA497F535930408344CAC9CC225E
          0C0F62960C19B835E389008DDF20340C188C089FBFA075DC404C9FF03CF6A7FF
          7C98D40F5FEF502381FFA3BF9DEDA06D2470C636641968B089D14DE08FF1E282
          6B0348C5F707C5EFD1D0649BEBAC17B38D984C2D2C1BDBC6F40781079F3BE4BE
          9172CA6B8C9F7C26B0CE5860C260430F39A7B457ACF77434709F8C461E627473
          B33D355609F822353C449CADE23555AC2B7B5F97DFC0F4990FCEFA0007D37F7B
          C8CAC22FD3D1A7FDDD521FD27FFD2623DE4FFA537DB9A6653CABAC7BACA42E98
          C1480D4EB927986588E927BFFE748B9CD2F9752E579CB561DF37218456DFB0DA
          C192690B63481B83D2B423FB19436E86A07BFB5198F78D6B3BBE7346E9C66BEF
          D10C5F5CC84C102400EA33861E7E4BF277F19A2CD697DC839C05E05E0EEC73ED
          9B8DC4738F7F2DA7747E1D57B575ED19791EDFA3EB9C682019470EFB90693BED
          479E53EDEDC8BA1BA9CE08DE8726F468AAFEAE768D27E2E9877EFB1A9EC5F3A4
          ED3AC9B33258FA3BEF5DFB3D6F393CF85CE2B5743D86BD1F5B6D594A726FD133
          FFD64BBF7E1DE067EF6EC70D3DEFD764140921F25C16E3431D6C1A46345D5E67
          489B99E7A4CEB0F9C93340CACAFB96631C1D34C6D32F6D2DAF1C479A460D96DF
          3516AFBF385F2EE1FCBA7F74393D78255488BDF2B20005050F223BE33A649D0F
          47FE457AF62B0BF80BAC9E93AF9DAF0C9CA98BDC63310AFCD7F7B4212A9CBBE3
          D6D0DD73834591FE7590105E11D709887FF7D18DF8E6C35BD0B78B0D71216E9A
          AF3F2CA83E2242BC11E5E7A750CB909ECFDFB909B327C5A0A9407C847F75057E
          66F20908F040909FB7C6FB4706BA239ABBF306544754500D44F95791075A0505
          E55E2D6D9833AA12D6FF108B233BA3716EAF17320E5497F2D641F6411B2E11DC
          8F54D65CFD0AFAE9223946E0A777DF827D951DF60DF00BE00BEC17A512F8DDEC
          AA68009FB06FC901F8F3C4B0D0F7BB2AA370573514EDAE8E82648174017E7AF9
          B393DC5090E683836B3DB07B49534CBFB32E3AC8EF8E0DAEA0C60ED72E44FA56
          4393501BFE2A75B8E1AB309C58E709ECF446D66A311E360BC417033F551AF835
          967F0381DF92017E2A6B7D5D5CD8D5F7CCCF0000FFF4494441542046D1EEBB80
          4B5F00D9AEA58BFB23EB89873E41BB84E13A6870EA503360F813000983F220E4
          D42207704AA719ED8028F0DA345820451E985C747A5D8F99E0662165CFFF6BB4
          7D2333F3DC8DE68CDDE7B5F5816B1F44AD87AD7D8025B87200E3006216E81900
          A3D1C205A25C285AF6FC574AC9DB2EE0B6018FEA039BA097106C163A73D0B040
          9FDE560E182697FC5833E84AD9753684F5EB7F275AC40CC103B35D5FE03C7EF8
          0B68172F83A7C0A2666CD1C59506A0155E09797CF592C1CDC74CFFB22E4B83BE
          5D6AD48D5560628E704DEDC6948CF4CAA9044403A48F10788A67560476A5EE35
          D696206C3778F87B8DC7CE0CA00A1A0CF590BFE3FD690C18988D703731EB9A7A
          D37BB0A6A263A68A1EEDC763EBBA8B48DFE3FA6EA87B924E63F0DF1F43821883
          0D796D2983D6910CB6A69E2CAF1F4140EA4ADF3B02BF2304C87BA9CB58198C75
          064C4099DFE379CC6C81C0B30CC45CD3C250941FBEFCF731F55BD69F54EF3BF7
          4A08751F84F860C6184B7BAA2164C091D3F70CAF512812882B5596622831E5A7
          D816E6BD65CCC86FE46FB5FFE63881C3F0BA62AC8AC11227F70E7F07EF27DE57
          09FE5314FA6318AE27C61A818CC0CFBD23D4D0565033330D26ECAF2494C7F22C
          B32F766D39596780CAFEDECBD5A1944CCC1AF701DA379E2ED76739E419C4FB8B
          4621E1D5025851E97A30FD9879EE09456D622662C288979192EC9A77FF40DA45
          DD059BBBF416FF5E677D438E997503A62CBC27D806E6DEE03E00A33063E20B48
          DEE65A88DA3F1FF84C8D62DE8FBC4F353B8B7DC641CBC2B6F0E2227EA93B87FA
          E2DFDCF02B42FA69D3E851B8EEDAE9D8BCEE989CD2F9755CD5130F7E8B4EF162
          34D253EF314A67889C03BF949765A783C2CF3872589F7C86B66B381BFD3BDD83
          9DEB7FFB5A10A6041D37EC79346BC8B027B3FF06DB83F797B693DC5F9AE58C49
          05ECFDB86CBF32EF47A245C3519832FA7539ADF36B9515FB0E4355B933779370
          B336C9F40B735FF23AE6D96842433986383A24F87D3E5798E4C18CCD5CA33601
          AD629998620A562CFECF6C08F67BC9E9C12B275ADE1F202F7B0C322EB440CE25
          2F14660BB85E12303E2F907CA11A90E58EACD30DB1626133F4606C7E880DFE41
          B5E01F580721211E0815A867769D6B3BD9E481FF37CCFDEA6FE8D6918B516D08
          F1ABA91B6FF9785517F8F7D1B095BE5DABE0ED97AFC7D4B1B168152F0684EEC0
          EB8BA020817E51A0C07E708037C202B8B9576D84FAD74044602D84FB554383C0
          6A72D3DB10E36FC335CD6C7860626D6C98DF14A7F62420EB70B0427FCEC14AC0
          A99A283858155902E29A9AD3AEFC8302C402F979072AA8319023C640BEBCE6EF
          15281715A58B52C5C84911A3678FBCB7AB70B7D449B1C418D8534144EFBD9C53
          949354C16CAA955403B9C935E555CA41E8DF5345813F23D91B07D634C6CB0F78
          6AB91B07574398AFBBFC3E5F847879202EB83A3A36B4E1C9A9B5B07759002E6D
          AF89BCADD5ECDE7D02BE05FBD4E5037FF6861A1ACB7F7A7307141CBE1FC85F21
          EDEDAC1FFCB9C50D44AEEF391D4DA34C8C20218FF1818DFD273B80FE548198E9
          467CCF63FC4C060C4E2972C157F3A8C1F8E7FDAE6F6CF5C43FBE41EB1802993C
          D0F4FAF601ABF8E16B1F1C44BC7E93A0693A854ED06E12CC416C08E2C386E386
          9E7763C38AABB791D44BCF7C87B631F2F0F51E68060E1A1AF220B6C2A13828F0
          816D79F4F9E03603868148422DA7D16FE83D1BCB17BA9EED212D3907BDBB26A2
          5903A93B31D858778E1E7542B7196405843CEC302B6554B8FF89A4DEE5B5917C
          5F178A09FC2B4C0838316480B33F3A03A4C0532203958EE2606A64A0D35A2C4C
          71F7DC2988A82BC6871A466610E5465834843A351FAB1BAE71E7CDB2BFF5B76A
          4FF229FCDF8DB3111BC61484025F52271C58D98F2C63ACA49D1C067715077D03
          4A1604105C7486420C28665C32306D8C07024B84F76D6815331CD3C6FF72AEF0
          FD2905983CEA4DB48E9D68EAD68F0689658C1843C4CCCE98EB11964ACA6395CD
          5E567BD90D2898DF60CAC6577EC7FC8F6E66267F7341BC75DC717122FFD7BA36
          CF45F13CECD3DAA7086B044886F2F83235AC1DFAEDE5E00C11439A562EF9ED0B
          F8177CBD15D7B4923E22FD22DE5FDA47AE17ED3144CA4E23C3CC5A9910158736
          63DFA6C4380DE777C346A3678719F8EAE31D724AE7D7B95CCDFD72ABCE147036
          CDF47B53BF256D61B547C97380E273814E090559310419FFCF73953DFFAFD1FA
          95FB35F49146A27A7AE55E2D0DFCF632E9B3D3DE5694B41BDB5B3DC47ECCD13E
          12FF7AC4B55DABFF9D38CBCAB0AE846003B791F504E4FDACF210FACD33BDF819
          AF6D38D2841CCA3355FB9DF4C3D68D27E1E98717C9299D5FE772F5CAB33FA26D
          82DCAF9CCDB6F76FF3CABE6CA05B43C61CDA52A5E5B2B7B7FC0F431FFB77BB1B
          9B56FDF23893B4F5A8CEF2B58997E77EB0F4593144CD3D6964CE6DCDE699F270
          4C53E7905C8FC6A386A7495DA87122061EC7B9B609633075DC9B38A051B4CEAF
          FD6791D3835756CB5194FF2F6465DC28D01F8DEC4B35519821B07F89A13D3591
          7FA91632CE4562ED8AE6E8DDD38606D13604875683AF7F6504F80BB80A90C745
          56423FF9ECEBCF06E0CBCFFAA2570F1B1A45D9101A580191115511E85F010D82
          EB222EBC8A007F25BCF7EA00248E8A42EB38C6FA5710A8AF852081798AB306C1
          0135E4BC55E5B81B1A84D611A3A2BAA82AC2FCAA20C2D74DA13F2ED8860EF2FF
          1306DAB0FC9B4638B4231A190703917DB0362E0AE8E3681D512DE41F1128A60E
          0B201F1220E62EBD072A09F0BB09F00B503BC2BE02BF180CA2A2948A2A7AF94D
          DCBE05FA2522F02355C07C5765E4255743DEAE9A9A6B3F2B59807F7775E4A5D4
          46E60E6EB4158A159FC4821978E2A55EC2833D10E0E78F60BF2084FBB8A345B8
          0DB774B061E5471138BED643CF7569AD9C7BBB63388FA55F03FC557061632D9C
          D918858B49B78801F72A90E17AAAB63F9AB868A863B3319ADD83504798675E6F
          7A7F0CEC3B02FF0C3BF4333518BD0F0207F587690CFA80AED304B05D4B7DB96D
          C305F4EF3E43C34738502B7C2AF03B88D7D50162923C04B9032B53744AF969A0
          300442A0831E2F7A94CA9EFF4A69D78E93B8B9DF14B48C9607B7C03EC35722DC
          65D095013D3E908384012B8A70C4B2590B2C154464306BE073175A361E84FB66
          BABEC0D9D2EAA587D1F79AA968123102DCAADFC4393305E61444B927AAB7965E
          527A72B51C524E47C0FFE9AB5D0299D6AC8E35FB43EFAD011EEB3751F6015164
          409F9068BEA790CF301FCE3450FCBEB42777252570D2F3C701382EF84E746B33
          16A3073D852D6BAFACC1B637F534860F7C18B1E177EA80A9702FFD496148E0DF
          9A897004B512F1BB8E927A914198DEF0186FF93F7ABEF59E90F7FCFDEC178177
          C8337DAAAE79285B1667FAF8EDEDE8D17EA600C1684430B446CAC7B2B0DFA8F1
          44B095BAB442B34ACAE558CE9FCA408C29B7F53B291A84AC7FB603EF211AA84D
          8213D13C6C325A4626A269A8B4896E8A44D03040C473303C4B0D49DE87843605
          FE9235347A5D695F868A30DC64C7E6DFEE919D31EE25B488E6B360907AF5D5B3
          AF6B05283BF0535237A5FBA0E9A3DC19B84DFC584C18F12A52935CCB9B7E2035
          1353C6BC88160D397B6319BCA64E8C4A03A23A43A44EE99DD63A977B817DBC45
          D4084C1DF306D2925DCB84F5E87D1F690C38C395189A131B304DCE3F519F437A
          DF693958267B1FB7033F6768D42895FB980B68FB5D335367D1CA9EFF4AE9F107
          E8C4619B983E6DCAC0FE6CCA6379F98BEBCFDE7E7C667017727AB65B448ED54D
          E5766DC991533ABFCEE58A3B51F791FB926155DA4FA4AE68E09A1949630CE97D
          ECD0962AAB6FD9DF47CA73B44BF3199AA0A0EC351C35EFEBEDB8EEDA090AFBCD
          A2CDC25B8E9FC5ED627F4E9AB01D86DA590905CC753986F019C96BF239494388
          B0CF10C0579F733D53D01F454E0F5E5931B4671EF20BE62023A317322F04239F
          8B7605F471A10672CE57C585534158F16303F415A86F186143A4006A780817DC
          3245A718014136F4E5A2DD6FBAE3FB6FBAE25A01FE7001F208F93C543EE36BB4
          9F89EBEF2360FBCD07D763CE8430346BC04C35F6CC3F3C1F77F195D706A2867C
          95FF8DE4C256DFCA880EAD81E8905AA2DA72CD9A72BC3262E53B1DE26DB86D80
          0DDFBDEF8B83DB23917D205040DF0319BB047EE9C127E81F1509F45BC09FB7BF
          9282BE81FD8A1ABB5F645761992C3D05A915919F22E7112382A13BF4EC53D825
          4641B21B0A932A2167BB7C2ED05F905215D9BBDD04F82B236BB7C0F6CE3A38BF
          251C49DFC763EA1D6E681B6B4358A81BFC833C111C1E061F6F77F5F67793E34F
          4EB0217D413072B77B216F2B4379A4AC047A17803F77831B323656C3D9F5F571
          614B1329CF6D62C47D06E4FCF6EDFAFF6862B68E9B7ACE92016898EE60CA074A
          7C8049BF67856318D91F4E0ED0CD0715E3309942B04DEC28016CD7BDFB8FDEFB
          25DA3711A3C3FF2E5D3C5C3C80EB83978302070B7AF98CE88D24A8700329BE0F
          AE3B4863F799CF7CD32AD75200FE3BBDFAFC7C8DCBD6F86879E8D3E3AAA12932
          901AF823040AE4DB4320E859A737D82C76A401304663DDAFEB39050BBFBFB2A1
          642B16EFD56DF5E3C2062336688240C00C29CB2C34A8CFB850B36BADE531D3BA
          D5FAB50F66655E0D685ADE7ABB679E839125EB98CA78F48BCF693F0F8F59C739
          8051BC3E3FB33CEB11EE43D583DB2472906E1BFFFC13DF61EF6ED743789CE9A1
          7BDFD24D7F98A39AE52670304C866DC457EE7EACEDA86052D2D78AE144259020
          AF2CBBD6A7C0AFE36C8A7A5B0576DBC48DC4F4F1AF617F6ABE5CDA79791C95B2
          A3001386BF81E6D1026FC1520E7B2A3EC2872EAE947A33F1E00636AD72945649
          992DA862FF34B21B0DAAF1BA236C42C06C33C322EDC3B0B4B68D1231E2AF6F62
          F6986FD13E46EE73AE4520F4CBF5687CF0F71A2381B36E2654C4DCA7845F6300
          1A2371349A458DC5A8BB9E47FAEEDFB699DBDC2F76E802F0A661A68F7111A71A
          3E627C983A70047CD3DFB45F5946AADF0869E7219A8AF1DBCF5DF7EE7FFDF176
          5CD366823E63CCC65F8ECF27F34C54D9CBC3FA62DD46D663B92619CFBBDF5DB8
          AEDB4C7CF7996BE559BFE2A02EC6667617D6351D344C23A9068687095531F5E1
          5836F9DBAA27293BFB2817FB3EF98FEFE594CEAFE3AA56FCB80FD7F7B80F4DC2
          CD8C079FD3BCD74CDF347DB1A49C0E6564FD495B6B42818061682763CCB38F5D
          995988FDA9B96200BEA819A9E82D67BBE8BD25F73EEF69939DA774598AEBCD41
          84F6D68DA662C2B0977020EDA76B548EA4032FFF6B09BAB79D88F6096375C68F
          9BE3C504C8B8559FCF1733D6EA3391B0EF6752E15A3365FAFCB59787F77F783D
          66F01A818E7189B8A1E7BD2EEF5AFD4793D383575ECCE0F23172722621F35217
          E45E8A40D1454F149CAB0164BB23EF7C10B6AC09C494B136DCD0CF867ED71AD1
          00B8A98F0DD709E04F1861C3AAA54DB0724902C60C379FE9777BC977FADB70BD
          18047F91FF9970A70D0B3F6B89A7EFAB873BAF97CF3B8A11D0D9865E5D4AC4BF
          FB769257114385FA74AD8276CD2A20588C8688A0CA1AEAE3EF5ECDC4FF7BDB04
          A06C983CB422BE7E2B108737C7E0624A28F2F7FB20FF602DE41DAE2CB02F504C
          D03F28907F40207F9FC0797A956219EF7E4505FE7CBB722901FFDCB48AC84915
          78E6C2DC62E8AF500CFC5CA49BB54DBEB75324C73293DC90B3A7B6FC8F17CE6C
          0941EA82043C33C51D5D04EAE3A32BC237A00ABC83DD1110E6832079DF225ACA
          FE7F6ED8FC5924CEAF0D1088AF879CF59580ED5551B085E02FD7FDCDC05F0959
          D4E6DA38BBA63ECE6C68011CB91FC8FCDFD98CEBF9C7BE47FB387A8307CA8031
          481F7EFA2093078D42990E68D6A0663DE84A1E84848FA661A33487F08695AEC5
          A26E5A730A375C3B1B09118311EEF5778D7FB61E7C56194AA0C60E2D04347920
          5A65E2004F0FCAD357717A7AF7F60CDCDC6F8E96531795C9204138A4E79C90AF
          998C04FE2CE067CA347E4ED867993556DA7BB8CE0E5C8905CE6595B6E72456FE
          B81737F59EA5B0C3101CC2688CCF4C0534F5FADBDB4EDBF5DF887DC0403A619D
          7F330699A0633CF61C8CD5E3A49F19A8578FB4D489193CAD41941E4E82ABF158
          D39824BC11F45B4727EAC6455D9B4FC0B0DB1FC7EB2FCCC3C1F4AB03FBD4375F
          AC43EFAE1310EE7DB30EB025EB1A0C1C5BC06FD68794C0F34FFA9E88FD4EA7FF
          A57EB9C88EF54B6F1C43E358F77DBA24E2FBCF7F5DDADF85DFA5EB6273CE0ED0
          E8A517D184D018E8D73A5663CD2A87552ECAB1BC725FB0DEE5B87AC6D96ED2EF
          18AF4FF17733A427AC8E31DE083FBDDA4DC70353BEC2FA1F33F1D6339BD0ADB9
          003D8D5A9D91613B4E947A99A61E7E857DCF19F23A5DEBC17A26503A432410DA
          A2C158DC9DF8310EEDFDF5FB261C48C9C5A411AFA155231AA7F28C92DFCE7AE0
          FD4E1034DE4F5ED751045BFBACA4007FA4F7405DCB337EC4332EAF01D9B73B17
          D3C6BEA3C618439568D4E9EFE5EF2EBE365F4BEA81D95D08FCEC1BAC3B7A669B
          860FC68CB1AF627F8A6BE579F4DECFD13A66A4A67135DEFD19BA0747F14C02FB
          7571F94CBD98F7D237781FFA8F445CD8408DDDDFB2EED7E5B3FF357AF4BEAFD0
          BAB1D40B33CB48DBF17EB1FA65C97D64D5A1299F6339F9BC890D1A841B7BCCC4
          B6F5572E01C3EB2F2C41A704E92776C391FDCB948FFD4CCAA6E39F69C762952A
          9F944DDA362E78BC8C7FDC99B8F4FA07EE583E67F247B8A6F50CB46C3049419F
          1B41B25F328B92A3879FD7374E14194F14F8CD0C0D9362B4089BA57BCFF079DD
          AEF16474693A091387BC869D1BAECE8EE8FFCD727AF0EA682B8A8ADE437EF678
          E45CE88ABC7361283AEF8EECE355917FA63E2E1CF643CA364F6C1528DDB4361C
          9BD74560FDAA30ACF931143BD746236D7B008EED0DC1D1B470EC11D0DDBAB601
          56CB679B568563E3F2706CF8B121B62E6984E4554138B1BB31B62FF5C6DAB9DE
          58FA5520967C15821FBFF137FA3A48FFD663F27EFE3781F84660F8D1FBFD714D
          7B1B62226DEAE98F08F4447880972EEE6D1422068100F54DD7D8F0CE93C1D8BD
          BC294E6C0F17C00F44EE81BAC83B50430C801AD08DB8F65605D2AB03A9544D51
          6D14A5D55415A457435E7A25E4ECB3214B94B95F5ED3AB2233B51AB2522B2337
          A592407F258DE3C7AECA0AFC48ABA6A13D340218B39F955447C03F18E7B73640
          F20F8DF0EA3D01E8D5DC26D63FF726A806DFC09AF00BAD03FFC02A886F2065EE
          66C3DC97C3707E7D8C00BE3FB257BBA360435DCDB253B4A39A1DF07F1EF875F3
          2DCDD2F353E0CF5BEFA6E7C9DB5C13E757574486B4CBC56DFD8093FF022EFEF9
          B3F6AC5BB51F370B6073F752E660668E6A660360888E8945970731077A4BC5E0
          6DE09B7FC7048DD2D472FFBCFFD7ED78E84C0C2DA2779F5E90F86079F8F1C1A7
          1946182AE0787D4E0B732A9F0F41B34909371E2264710F819B7ADD8F6DEBAE5E
          6AB9579E598626D1F260F6E7A63E32B8321E56A0DE0A33622CAA017D1910E46F
          6613E1624B42652CBD82DE4305B446E2966B1FC2F285576F91D5CAC529B8E396
          07150A34D56A20A7A8C52892C1CC82F792F6B4DAB4F4A0463877FCBB94E4BB84
          766B2ADC027B1D08091D223388970CE496B79FB0A6DEE4B8F168133754D34532
          D3D0BEDD5776AB7A67DA9776014F3CFC39AE693B4EE06BB8B4C9082937C343A4
          3F0B183BCED498500307C96F70046CF3BB382B408861985BA2C257E3C0E1BA1F
          05B7C93F949E2B97755E969FD3338F7D8DBE5DA7E8BA1A866B10FA755D8DC092
          0293D6B1551E0739296FB1675FEE0FF6BD463E83A5FE074BDF1DAA61326D6327
          6958C82DFD66698A555EFFE85EE0FDD7D6A15BAB445D00AF1B00F94C419467A2
          DC8B531125F5A31BFF78CE12CD91DF2ED0AFBF5FFA3B61DF0EFCCDA246E3C199
          BF2DDDEC571F6E47F736D3E5F934099134C2E4BAAC6735383CB9FEC03EC3A032
          338F667D1125EF7DE4B7070F43FF6E33F1F5A7AEEF86FCE93B5BD0BBE33D880F
          1DAFCF1AFEBE92FB857DDC8237DE47E69E52678494ABA1CF34ADB3B89051A63C
          9F6C94533ABFCEE568E9BC7D729ED9681E611688B34F3025306712E831D66B2B
          F04B39A47C34362CB18CEA51963EDAA5D5683CFE8FAB97777FC5C2FDBA2961B3
          30F32C31302DCF08FBC26FAB9E4CFD953C27AC3A35FD48403761349E7E949B64
          3ABFCE6F11D795DC72ED831A7A67EA50AE2565E30C845EDFA11DCD7BC7B63665
          0C731F25F5385AD71BBDF65C89A3F0C7EFF762D49D2FA25DDC14348F9C811001
          76AE89D38C5102FC663D94998131CF44338B5A32C6996B85D73529729B864BFB
          868E40E71613F0AF87E7E2B00E1B3FFD4D7F76393D78F5243769FE2BC83A3718
          5967DAA0F0420470C11738E78E9C13D55074B13E72CF7A23F3948F180581C839
          1B80BC33E12838138AC2B35EF25E3E3FE58D9CD302DAA723917B260AD9670291
          7D2A08B9C71B22FB889C4FBE5B70DC0759073C917D381097F687E3C2BE089C3B
          102C0AC485FDA1A230391E898B07C270F6902F8EEF8F1223A21D9E7CD00BDD3B
          70A1AF407F584D04F9318B8F407F8027227CAB20568EF76D67C39481362CF9BC
          010E6C8A47665A43E4A64979D27D90B7B71E0AF6D60014FA4569558AC1DF007F
          758DEBCFDE574161DF00BF407C6A15E428F07321AE7DF1EEAE2A28D8E5A6A09F
          932C202E86003DFB67B6F8E1C89A46D8F86963BCF54008AE97F2C687D9C05D86
          83FDEB2238B8BEEE2ECC10A68E4D6CB877940D0756C4E1E2066F64ACA9066C0B
          0436FBE0E2EA4AC8DDFCCB8B767F09F8999F3F7315BF5F1117D757C799F50D71
          61C75F80B36F02593F9F33FBCFA0679FFC4C77688DF6BED39EAA8FA90587E940
          C1301D7A1C0CEC332ED7920378CBFBB8D0A1E8D76D1AB6AC75CDF3B2751D3394
          CC96017AB07ACF782D2E8635C0EFB018D02ECD0822860007F4508FBFCB202CBF
          C36FA03DB4E8EAC5EED3BBDF577E2FB35A30065C1FD20288842A423D63BAB978
          930BD2B83096A0C59D7409F804AD463E0311ED751B3AC54DC63F66B81E02F54B
          DAB1E904EE9BFE2E7A759C2683CF2435A458AF267D24DBDC6A4F7B9B160F6AD6
          C0E628CB23C53875039E16D89700BEF5BFA2E20153CE6DF5236933EE3BD03E26
          11D7B6998149235FC0FB6F2CC5AEAD57CFC3E84C7B765E043DA40C13681A4A0F
          9FF43582B0C08505FD25E06C19729481688ABFCF0A6322CC10B40899119E4375
          0D05F70D5832EFB72F38FEFC83B5E8D56992AE4721F45B8050D21ECE40FFA765
          B5BCFBD6C2DAD8808168123218CD2207A15BEB89BAE8933B7D96DDE995E906BB
          B61A8728DF3B34B4A8916FA2E60927B4D053A9599B8ABDFC0CF323A0C93DC050
          1A8161DEC72D1B8DC4C377FF7A670077FE658C7BCB86E3E45A721F0588E121B0
          CAD0067A3D695C9ABAB0FAA4A9130544F9DB02C536B1E334D779D9F3FF5AEDDD
          9585E9E3DED5BD0DA2BCC6222E78B2FEC6D21068DAA4A4DF73362F51E3F76980
          30DB15672B268D7C0987F7BA1687FED0ACCFD12181060E0D55262E98A18BDFB9
          A6897B48D069C3D937EB9E26E817A7C595FB5467ECE4597BFDB58948DA7A15F3
          EE3FF483B4A1712ED083CE754C741030039442BFD615EBB04CFDD9FFA691D43C
          6A1206749F81ED1BAEEC7A9EFD69979038FC35B46928F7883FB3F4987D23D460
          92729819504B4EDA59A4A1395E43342566E2A837B06AD131BCF7EA5A3572D877
          79DFE81A345FB3EE8D4910781FB34F73C6A3EC2C821AF1229E5B9F29D24E4D43
          2768D8164378BEFDE4F2D602FD59E5F4E0D5D50AA0F02514640C44C6F1160286
          9102E9EE283C531105E72AA2F05C0D79AD2D804FD545D1E97AA25AF29DCAF2EA
          86A293B55174AABED1E93A28385B1D85A745C7DD81631EC009F9EE7181EEE3B5
          50744CFEFFA8270A8E7922FF783D515D795F1FF9473D5078D80B8547E4EF1355
          9175B4362E1C6C809DAB13F0D483EEB8B6B3007FA80D1102F861013511E65F4F
          80BA2EA203AA223EDC86165136DCDAC386571E89C4B6F9CD7174631C32536290
          931E88ACB4EA9ABDA7205D7EEA61D15E91003EF699F09EDC342EE6E5A25E0169
          42FF1E816C7E578E319E3F6F97BC261BE8CFE33A01F93C27B5024E6DB3E1FCEE
          40EC5D138BEF5E8DC2E09E36746A28B04FCF3ED72208E80779D713E3A43E1A05
          55429738314CEEB061FBDC0638BACA13395B6BA1605B35E46FA82B7257AF3C81
          FFA7613D25C09FBBF117805F942FD09FB7CE7C277B53659C5B5707A7D63542F6
          9E81C0E9D7804CD77336FF376AE5F2ADB8A1DF185D20C90DA2CC622113276B3D
          E478CC8819681C25C70810028CF4BC3CF58FAF5D0EC178E49E4FD0B1990C8C02
          09E11E02864C59E947AF88C9E95E7C4D2E6CA2F8B7BF1807017F474CE86D08F3
          BA09CD1A0CC65FFADF7755BDFBCF3DF915BAB491B205DE21E51B628C919FD55D
          0205B74B1D0F1438FA1B6282FE8EB890DB10E97D036EBBEE61AC9C7F484EE9FC
          3A575AF4B43D30F34381BB59E8D47CB46EB0161F3E48EB90F0CFB850B63F6776
          18FFAB8B8B65D031204F8F97818512D9C314F85E3D8766E6C08AF937FDC7ECDE
          C91D80B94B6EDB9861E8D474B84ECD3F2CC0B2E8EB3D573574E797B47CC13E4C
          1BF59686B134F2BF5DC3DAD420F2328BAF397B63067F0EC002D076038703B1F9
          ADE637360AE07E052334952653DA72315DB3060371CFD4B7E532CEAF7DB95A3A
          3F558195B33409E1A3F43A3428787F10B80DF89AF2D1EB6DD64458332BD27E02
          14043F7AF21BFB0FD454909D9B8EC74D3DEEC5A4612FE18B0F3661F776E7F7CB
          DBAFFE80AE6DE47E0FBE43334A71012CB307314CA651D09D9A498961212C87BE
          FA0F170DD5B8F0866254340CBC0DAD6207E28159EFC8E97E7AFE7FA7F7DF5C88
          5E9D0586E43AAC5F1AD77C2D39BF48DEF31ED4D03FE9C37CE54C96AEFD91EF32
          C530F7A698FB85EB90F4CD27DB74B68390CF8406EC1B06089D80A0C29B017EAE
          BF08E7A64D6224712176F7B6535CCE3AB569CD21F95D33901066F79097BABE55
          065E9FB36F729F8B81A4B30C72BFF2957D9899CC3A34197755F3EE6F5C7514FD
          3BCFD685DFAC2B1327CF6738E1DF245CE0BD648C656318F1BDD62D0D36311EC3
          EB4B7F6D3613CF3F7E7572CB7FF8EA3A748C977249DFD17145EA861BD89584B3
          3A023FEBD632304D3BD380E1C66B5C63C2509BB177BE86BE1D67A17984F4578E
          A70C3FB39E99FA9CB4005FC65C5E43CEC319057516C8BDCB73F36FCE98B29E9A
          468E11A379B886B6AD5EEC5AC8EC9F414E0F5E5D31F7D12220F771145CBC1D79
          A75B08B4FBA1F04255145DAA6036E43A23EF4538575D405F5ECF5412C340FEF5
          8C48E01EA704E8798C7FCBF122BE9EAC2C92EF9E94E32705B04FC8DFC7AB8811
          20DF17159DA82272D3634547A96A80BC821B691DAF8A9C83F571615F1476AD6F
          82671FAD877EDD6D888BB6A14168250169374404D4D1F49D415E6621715381FE
          4E0936DCD1C786371FF144D2E21638B62D1EE7D382D4A0C83F5409195C802B50
          9F972620CD709DB4AA28DC2B06CDBEEAC84BAFACF1FB8CEF871801CCC74FC0D7
          7CFB29B5447591BDAB3EB2537D716A871F0E6E0AC7EAEFC3F0F8ACEAB8B1AB0D
          CDC518691E591521415510C07D0BFCEAE9BE04B1FE6EBA4877C2CD366CFAA229
          8EAE0EC2A52D02F73B04CCB75644CE46B9F6E6DAC8DF5A0D795BDC5C06FE2201
          FEFCF515F4BBD99B2BE2C27A1BCEACA9838B1B9A216BFB5D52C732585DFCF341
          FF979F2FC4C0DBA7EBF4F280CEF76B6EE37E9D66178B7FAB3ACFB16BA683EC9F
          CB2B63AE5DF6EE6F10F01AFF9CAE0318D0ED7EF4EBFC20FA777908BD3B5AD796
          EBF155CB749F5DF7E84EA1FDBA250A188CD1DD6E6FEA330D9FBFEFDA54F92F69
          DCA88770439F44F4E830197DBACCD632F4EF22F5F8134DB56B0AFA779D8CBE9D
          C7A35F977152DF6371DB0DB3F0E673AEA796FB2DE23A8B4FDE59A36B07D8766C
          CFAECD27EA8659CD228609108E41ABE8B168122A0067CFCE62063C0E501C84E8
          7562D880F1D699E33280D343264603776A6D123A5CC1B27DDC684DA778438F69
          1879C7A378F4EE0FF0C57B6BB07D9D6B999CAEA40E0A7BBDFBE21A0CBCF9512D
          6B87F8D168DB78B4C6B3736D0AC3DC685CAA0163FF9D96114C4329D2E736847B
          FF55E197B35DB1A183D034FA2EFC65C01C2CFEE1CAECDE9D9694857F3DFC9DC6
          F533A73DBDD68D689C8861C159139687E177BA398F949165B5E281D98E5C2BD2
          A6F1080191E99834F415BCFCC48F5831EF978DCD05DF6FC01DB7CE927B8CBB06
          CB7342EECD3EF26CE02EC2FDAF9982BED2AFFB7595CFBBCEB1BFCE30EA364DFF
          A7DF359370EB802978F6F14FE574CEAFF1737AE5F9CFF0B71BCD39FBCABDCFEC
          2C7DE5BE62985389A6AACCF58CFA7496EFF39EEC365BF70479E6B16F5DCE8473
          20ED3CA68C79553710238472A6A118DC14B61DE400FB948615059A1911CEB071
          D6C2D5B0B50767BF8BF609628807389441AFEBF8DE5C9FF7ACAE9771E782DEE9
          1A0EC57B98FD827B3EAC5F7D404EE9FC3AAE8A3368CCBBCF3E49C383FD5363D4
          A56F9A85DF34A2CDCC20FF760469A60BE54C51CB06D2F7641CD8BEDEB5BD137E
          4EEB971EC14D3DEFD667968687AA81CFC5D5CC74E430ABCC72B17C3A9355524E
          7AE339C3C79916CE5E76889DA24E03DD00928E0FFD3FBB1166FF9F62C9DFFCED
          047DE6FC67E209FDDB6B349A848C477C0837F69A88C71FF80AA93BFF7CBBE6FE
          16393D78F5C507F93CA0F029649E1F80ACF30D9179D11D3917ABA0E0424D5DCC
          5B7446205D25F07F56C0F29C803DA5068088060037EF1215CAFBC2D3A2536230
          D80551D109016A057D8AEF2BA2F078A56229F01F14F0DF2B207E4800F8487D5C
          3C108E3D1B62F1F2E37EB8BE87807DA40DF111DCC0CA0DC1BE15D138B2161A84
          554580807FA3D00A682EE07F4D531B46FCC586779E0EC0A6C50D90BAD10FC792
          DC917FCC07F907EA216F6F1DE4A5D611E8AF8B7C79653ACDBC14F99D7B6AA270
          573D1424D7456E5255CDA9CFD49BB97B3C717E7B200EAF8B44D28218ACFEAA15
          5E7D340A3774B3A1BD5C2B410C91E8904AF0F7714360B0077C7DEB20D8BB2662
          032BA1478C0D536EAD84DD73DBE0F8AA08646FAF8FBC9D9591BF43607FAB0D39
          5BE4FDD6AAC8DF5609B95B6C02FC8EB0FF53E0FF778B76A98275621408E4E76C
          10E097FFC992FFB9B4AE122EADF6C085D5B1C8D8F23731A89E050A564A9B3BEB
          0B7F4CED4E3E84B5AB7663C3CA43BA5116333EAC5B915E2CE677E63115DFAF4A
          13A51AADDC5BFCD9CECD57669A75D3FA24AC5B99A2E559BE301D6B964A7996B3
          6CF6EB5B65B1C463A20DAB0E60F98FA9D8BEE90CD6AEB87A8397A51D5B0F60CD
          8A346C5D7F166B971F97B21C11B1FEF8EA281E3B8CCD6B8E4A7DEEC3C6D507A5
          ACFBA4AC3BB17AD92EECDDF39F0D6129AB437B33D4B3FBC357DBF1F6CBCBC119
          9619135EC7E4512F63F8ED4F697855E71663D0A35D22AE6993A8DBB5776A3609
          1D9B4E56756A96A85BE4D3EBC9CF7BB617001320FB4BFFFB31F2CEA771CFD4F7
          F1C4435FE0C3375762E9FCDD48D979F5665DAE8492B79CC5779F6FC693FFF814
          3326BEA2803765F49BFA9B7AB69F8CAEAD26689C2ED3D7527CCF701742260DD5
          DE62D8F5EB3E4D00F71E4C1AFD3C3E7AE7CA3F2F962DDC87A71FFB0EF74C7F0F
          E3873DAFD0CB7AEFDA4ADAA5D93815637CBBB5166354C09740C7B6BC67EABB78
          FDF9C51A5EC485B065CFFBEFB463CB71B9AFE459B1FCA8F4DF53FABA4EFAF7C6
          3547E43E90E780FD3E5CB752EED7B25A25C7E5B991BCE3D7EF31C1FF59B12445
          AFC7FB8CD7B4CEB76E359F437C1E196D582DCF2B113F6759F9DDF52B8F4A198F
          811BAD953DF7AFD5D79F6C506330218400C7900B7A6B8DE15BEC55578873007D
          0D6B32B1DA3A3B113C18BD3A4FC5FC6F5D3302572D4E47EFCE13C5281FAFEB67
          4A20D2BAB60350DAC55920CD06E33355671B381BC330B1E7FE39574EE9FC3AAE
          6ADD92C39A898879F719C2C34DE9B87E89B3678463023EBDDE566820A1578D00
          319074BD0AB35C4939DBC54DC6530F2D90533ABFCE95D0F431AFA04D235336CB
          8BAFE13D1E43A5FEFE3DF0D3831F1FC005D934BE46EBFF70969CAF4C255AFCFF
          C59236B29F8BBF3FDE7F1622EA4E4042C04C3BEC8F44A4E7EDBA63FD753DA6E1
          E3B757CB58E19AC1FA6792D383FF19F1C69D8FBCBC7B91997513CE9F8FC7C50B
          FEC8B9E481A24BB5D5E39F7FC60D05672B8B015009F9E7054ECF5594BF690054
          1609FC53729CC05F70C62E01FF629DA40CE8ABE4EFC213252A3A565980BFB600
          7F0D81FF6A2838EC86F3E995917D341AE95B9AE2AD677C3161602D746B2E701F
          643CFB04FF88C0EA08134504D546A84F1524445643ABC63619D46D1874AB0DCF
          3E540DF33EF6C586F901485B1D8E13DB1A2163773CB2F7C4206B4F3472522205
          F82304ECE535B9A14079235CDA1281D31BC370647528762D08C5B2F783F0F973
          A17874A20F6EE86843E7041A1F15D130B43A7C3C2B2124A81E82833D753331EE
          3310175211D7C4DB9028D7DFF279531C5F1EA6293873986B7F8740F97601F86D
          F2BA4DEA733BBDFDF2B700BAABC09F27C09F2BC09F6D17C15F8FAFAF86CC35F5
          717665247277DF24EDF00F145CFA4AC0FFCA78EDCA55AEFF26D100D8977201E9
          BB2E60D7B6336AAC1010B98893B3261FBEB916EFBCBC126FBDB81C6FBFB442F3
          4EBFFFFA6A7CF6DE067CF3C9162CFA6E8F1A69DB379C465AD2EF17A673A5B467
          C71931380F80F9B3B9C09203EF7BAF2D13E36831DE796589FCF6E5F8E8AD557A
          7CC137BB40182764EEDAF6D3D47C575A7B533275CD03DB88EDF3D15B6BA44CCB
          541FBCB14ADA641DE67F2386E592FD484BBE7AB9D5FF1774283D1BE386FE0BAD
          1B0AACF98E1030654ADDA90A6D2624C311F84BA04ED7328818EE14E53308ADE3
          462271ECCB38B8F7D72FE076D443B33FD48DDCB8C6AA386DB25E9BB0CF6BDB41
          5FA172BCC236F702A0F79821254C6ED034729486F6EDDA7A75BCE687F666E2B1
          BBBF40BB1842F0483538B81B3581DF5A236601BF05FDD61E10AC33661563C85A
          5CA8895BDFBDD5B53AFB25BD27F7F3352DC59063588FCF040D355298775C44CB
          3626EC5B0BC4EDF5CCEF5A060BC19F6DA2FBB058EDC119525DFB4671B6D400BF
          F9ED5360F62099AE1BDD7126242E6808BAB79A8CE177FC134BE75FB90D07FF2C
          727AF03F27E6E85F8E82829790993D0C97323A213323143919B5040E05CA45F9
          1704F62FB8D95505F967AB1BE83F534164BCFE04FE3C4B72CC52FE29015A4A40
          5FBDFB0EB09F4FF83F5E41805F609FD07F58CE79C44D3DFFD947AAE2DCDEFA38
          961C89B53F34C2C353EBE0FACE363409B321D2D78606C1B51129B01FE45313E1
          FE3E08F5F340986F75340A71D3509F363136F5C64FBCAB3E9E9A158E0F9F8EC7
          C2775B62F9C7CDB0EEEB386C5B108F9D0B1B63F3F791D8F05514567E1C8D79AF
          46E0C37F86E299297E98765B5DFCAD6B05F410806F112CD70DA98C460C27F2A8
          2106872FC28202E1E7E38BF0107F4487D44584B70D3DC4281973B30DAB3F0E43
          E68E183122EA2143009E5E7D05FDED1590BBD54D54454379F205F4F3E4F302F9
          DC25E0A736BA29E86709FC67AD91FF5B5B11F96B2A207B35BDFD95716EA33F4E
          6EEE80B3BB4702673F16E8FFDF5E3853AE7295AB5CFF0BFAEAA32DE8D67ABC6E
          FAC4B0142B8B0B33A7688A54F5F6DA014FE1CE409D05FC5CF7D030E02EF4BD26
          11F3BFDB29A7747E9DCBD1CA450734FC2421C49E454DAE5FBC885CE0922A817D
          6388D0F34C88E542662E36E63A02CE043DFEA08C634EAE7125B476D9215CDF6D
          0E9A854B5934DD2D131A8C95F29A24071A16E800FC34A0B8589621829A0D4A0C
          03AEC7603AD5179F5C28A7747E9D2BA56D6B0FE1D6DE26AC47374764EA57EF31
          BAE6A004F8E9DD77C808A5C06F1665D39022F8EB0C8580BF15E6A32141C5C0CF
          7E61B58F9945E079349C891993FC4C9AE61E6DC6E19EC4377020F5EA672BFB23
          CAE9C1FFBC36A0A8E80DE4E58C47D6858EB878C617D9E7AAA030A312722F5641
          EE856AF24AE0AF8482F3C6EB5F74BA8A2EE2E562DE42817F7AF77F0EF8E9D907
          3DFC02F845C74BA0BF40DE339E3FF74065141C62888F9CFFB040F24181D6C315
          9075B02ECEA74623655D4BBCF66828AEEB68437CA80DD10136040B6447096C87
          F87B22C8D70B415E02FD3E5EF299971805B510E9E386D82081FF4636F46C5901
          D777B2E1C62E36DCD6CF86D17FB361DC1D360CBBD5865B7AD87053571BFAB7B7
          E1DA6636741163A1554425C4FB5744946745C407BB8BC55E17917E3E88F0F385
          7FFD7A8808F617E8F744B05CA369849C5F60FFAE3E366CFCA61132921BE2F47A
          F94D4962C024D3BB2F002FCA63080F817FB3184D9BA4CE04F80B05F65D057E6E
          BE45E0A7E8E9CF5D2BFF2FB09F27E09F4DC9B10C29CFA9D5DE38B5A10DB252C6
          485BBC0C642C10F077ED015EAE7295AB5CE5FAEF14377E1B33E8058DDD27AC69
          180F215B802EA2DEC8E2C5B006F8E9CD2D013B6BD129E1B549E4104C9B40EFBE
          6B71D80FCDFE54D7C6F01A846685F9E2AC51A31D80DFF24627DA81741C223C98
          06928B408D777FE796A3724AE7D771558FDDF795C02BF7051050B6033FCBC7B0
          1E63809844000465C6F113F819B7CEFD3C58462E7C6F143808B7F67D00C95BFE
          33E12CDC178175ABBB7D73A1AD003B33E49440BA05FC26FD6C09F0F377182F3F
          F75B30DE7E6364596B9CCC39F84AF15CFCBEE9475CD71054FBAF681F3B16BD3B
          4CD4B55D8752CAE3F57F4E4E0FFE3EDA08E4BD8FA24B93917BBA87280CF9E7DC
          8DCED744EE2581FA0C01D48BC6AB8F93D54D461E2EE03DE5A631FC8E613DFCDB
          80BEE87845E0486523817A1C13F03F26DF13E0C7D92AC8E1DF624070A12F73E4
          EBF74ED64476BA181907BD7121350AA9AB63F0E613EEF8BB007BBB041B6205B4
          23022B2222A82A228399BED31D21BEF511EEEBA38AF0F7428390FA880CE4E70C
          05B221D4CF8648310262A36C486820AF913634089763CC08640F170AF3AF26E7
          AAA9E222617F8F4A88F4AFA30B72C3C590880AAA8106C11510EE6F3604BB410C
          89779F0846D28F8DB06B710D9CDB595D77E2CDDD510B79DBEB207F674DE46F17
          03809B776D1578DF5C13059BAB5F11E02FDE788B7FAF77D305BC8502F81AD7CF
          509F759590BDBA1A72D6D61143C00319EB0270615302CEEFE88BDC83D381CC4F
          80C272E82F57B9CA55AE3F9B181A754DCB49681E3E493DFA06E84C0E7B82ABE6
          6B27045AC0CFAC5D84FE62E097EF068FC580EEF762EE57BF6EF3B5B26278C7F5
          3D67A927986560D888868114A75F15E01719EFBE05A789A68C728C8B60992FBE
          5DFC043CF9D095CD67EFA8B54B8FE8026EA6DEB5CAA47B40788F15E01F2B654D
          448CB7D9848C8689F1884FD4301E1A47CC02C56C4F1D9A4CC28B4FFEE736C0FC
          FC9DF5E8DE4AEA8B19AD08EC625095A4E5144857038AB06F01BF0179C6EA73E6
          C7188352EF52F7261B8F316A4A665AD8674CBF617BB00FD12062080F371C1CD0
          2D118BBF2B0F17FE25393DF8BBA9680B50F09180E02C149CEB8BAC5371C83913
          8EDC739EC8BB545981BFF08205FC3505E4EB28F0D3D35F0CFC7C2D0BFC2704F8
          09FA472BD825C78EC87704FA7308FEA72B20575EF3E41833F6141EA8A83BDFE2
          4835141CAC6E32F8A407E3D8CE046C5EDC124FDDED89EBBAD8A483DBD054C0BD
          31A15D009C3BF33608F4554F7CB0973782FDBC34977F70400D8485D44078582D
          8486D446A07F6D04F8BA23D0AF3E0202B949561D0488C1C078FCA0401F04067A
          2228A02E82FC05FC05FAC3FDAB22CADF0D0DE41A71621CB46E64136BD6860903
          6D58FB6553EC5DD610A7B7F82133A52E2E250B68EFAE80C2E4BAC8DC2486D276
          D156370DEDE142DD82AD35512422F013F05D05FE9C4D6EC85E5701396BC4205B
          5BD1C0FE1AA95786F6AC13C3636D2DE4ACAC85CCE59591B5AA2A32D6D6C59975
          4138B3A53D2EA68F02B23E13436F2D50942C5DC0499F2857B9CA55AE72FDA194
          BAF312268D7805AD1B30EDE2480DD7203C47D667B699B1EAD9651A49853F0BF8
          1DE2B4CD5E00E37523C0E913DE95533ABFCEE5EAFE19EF2904D3F34C90646C3E
          41D4ECBD6079F98DF7B838648465B07B9B194AC3148FCC5C94B2E3EAADB1F9C7
          EC2FD03A86692D47A18107BDFB63A4AECC3E252C67ACCF54857EAB5C847D0562
          F95DCC4BCF0DCD12C247E0E6DEF761E7A6FF5C62833D5B2EE0965EF7AAA1C2D9
          061A545A26BB47DE1851847ECBC0A387DF64EE62E80FFF87BF85060C672C746D
          821836E67F4CF8123FD3F693FFD154C82103D1A9E930CC9AFC1A78FDB2652AD7
          4FE5F4E0EFAB1DF2F21D90F330B2CFDD868BA7DA21F3749840BF3B0A2E0A8C33
          A447001D27AA01A76BC87B014F81FB9C5302A7047DC6F69FADA879FD35638F1D
          FE41D100A0988AD30EFD0CF1D1301F39567854FEE7A8180F872B152BF78000B0
          803F33F864EDF7C385D4681CDA188D959F79E2AD276A0974BBA17B6B03E27121
          36B9E9AA22D2A7AE40BF0F427D09FD1E0809F44068B0007E505D05FB007F6F04
          F8058AFC05F83DE1175047540F0141F535EB8EC2BF007F68603DF5F4370AAAAC
          EB07DA35366141778FA8882F5E0941F2E2C638BB390C995BEB217B6775E42655
          D63CFE794902DE3B2AAB679F8B7409FAF9DB04D605EE19BF9FBB59FE26DC975A
          B06B40DF11F8A97C81FE3C5D88EB08FD25B25276E6AE1723692D21DF28874680
          1800B96BE47A76E5ACAE84EC359591B9B6262EAEF5C499350D7166EBF5C83B7C
          3790F11E90BF42DADE599F2857B9CA55AE72FD51F4D9BBDBD1A3CD1C936D47E1
          99E11906F25476A8D6EC375C6CCAC5A83EC3EDA136F4E44E444CE058F46C3F0D
          4B7EE05A3FE7D7B91CAD58B417D775BF57B3D6F07AB1BE33105E6F8882A30152
          42BF945177AFA54150E25D57C866688918236DE246E2F5E7AF5EC69B754B4F69
          0A4DEEA5121F38C1C1434E997096D2068A3152B8D0D5CC9E4C44B4D75074881F
          83579EF9414EE9FC3A574B0FCC7C5F778DE73E0E5A67DAC646C5652E557613FA
          C33E628C02CBD8A2477FA2423E53A146B94F428CFF74DD5340376B0C18A87BC7
          F4ED3E012FFCEB13EC4AFACFEDC7F24797D383BFBF760305735190FD34F23246
          20EB7C775C3A1589AC531E6653AE7302FB4CD779BA228A2E8801605FB8AB9E7D
          4DCB5949B3F3A8C43850AFBF3D9E5F819FA13C847E7AF4F9CA909E23722E1181
          BFE088FCFF11F93F51FE514AC0FF901BB2F75743FE410F141E0A44466A200E6F
          8EC0DAB9B1786C4E6DFCBD8F0DDD5BD8D022D2807FE3904A08F7A980B080CA08
          94D7203F1BC283AA223CA48E80BC3BC202FD1019128008310222826B88AA2122
          C40DE10CD709321B7F711F80B67136F46D6FC3D09B2AE09149B5F0D54BFED8B9
          A0018E6D6C80B35BFD91BD5D8C91ED02E63BA4BC3BE5F78A4CDC7E455DA84BD0
          B7A4C02F623A4E4BAE02BFF94CCEC50C3D0AFA9604F8458CE9A7380360898B7A
          690064AEAD8D0BEB23E57774C2B9A4DB9079F041017F3EA8CA57D797AB5CE52A
          D71F5169BB2F61D2F037D1227AB2F1D4738754C21CC1D55A7CA960C7501F13A2
          A17B21F873512A815B60DF7722DA349C8C7BA67CE872A6A4FB677C80D68D05A0
          697C78240A6832B7BD5C47AEC9EBD1C068E4692DE0A5A779845D524EAF71E046
          7ADC5FE396BE73B065C3AF4F917AB99A33F923B48B9B82F8904962907057677A
          C8CB003FEBAA94C622DE3E5BC26C3EACB39B7ACE46D216D7F676F92DFAFEF3ED
          9AE696BBB7D3C3CFCC41EACD27F0DBCB6A341EB176C3859F7126A704F82D19E8
          8FF39B2EEF2721B49EB447E068C4860C41AB98A1B8BED7347CF1F13AB9ACF3B2
          94CBB99C1EFCAF51D16AA0F01D01FF19C838D7171967629073CE1BF9E7AB1543
          3EA51B6F69DE7DB3B1966EAEC5F7272BA3E044155175E49FA88D82E322795F78
          BCB2F1EA5BE05F0CFC6E2653CFE112E0E7425F7AFEB9911617F7E6ECAF85BC03
          1EC8DBEF87CCBDA1389DD600695B1A62CB92187CF54E08EE1E5B01B75E6B432F
          817486FC3055678B463634114380AFCDB8991763F9BDC428F0AF84E6A115D142
          E0BE45840D2DA38C17BF476B1BFED2DB86617FB5E11F536DF8E0B95A58F75D10
          D25604E3C4465F5C4AF242EE9EFA9AB33F6FA794B514E80B848B0160E9BF11F8
          15FA05F8B3D756C3E955D570728D178EAF8EC699CDDD909B3A5ADAE369E0FCF7
          407E79369F7295AB5CE5FA23E9F30FD7E97E068C25D7587C429FE5DD2F03FCD1
          1E3C3E56175F32FE9BF1DC84DBC68123D1AFCBBD58FCFD7E39A5F3EB5C8EB8D3
          729F2E02F841431125306F01A8AE23F0160343805E815FCB4328B57BF6EDD2B4
          9C0123D12E76D455CDBBBF745EBAEE59C11D8F6302C723C27DB843969B32C06F
          87657D2FF5CB7213F65987ED63C7E3D5A796C8299D5FE76A2A69D345DCD2E77E
          34F01FA4ED68D63F18A82F017EBE5ABF816DC1D02DF31B4C1FB1BCFDA67F44D4
          1BA5B31D7121D2568177A0538B919834F205ECDCFCC74F5DFC7BC8E9C1FF2E6D
          9697CF5154701F72B3FE0F99E75B20E37400B24ED741DED92A9A89474376B8C3
          EE89AA028BDC3D9712E03F21606F01FFF1BAA27AF6D76A620008C89F60380F63
          FA2B15C37E59E0CF3D24407BD826EFE53B47ABC8673505FC6B237B6F5D64ED77
          C7C50375713A950AC4C93D3148DB988075F362F1CD5BE178FD715F3C34A50AA6
          8DB461FC5D368CBDC386E1B7D8F0D71E36DCD8495EBBD930EEE6EA98F4972A98
          7E4755DC37B23AFE35BD16DE7BD21B8B3F0AC1B6F961485D1988E35BFC717197
          37B276C9757732038F817C027DA1BCA72CE07784FDFF66E037E13D9570717505
          5C5ACBD87E775C5A132C7F27E0FCBA5EC8D93541DAF475207B059057EEF12F57
          B9CA55AEFF76A5EE3A8FB1C3FE85A6514335FCC2A4D714785398330B35F5D50E
          82843BC2B7C6705B1E6DBF2168D96824664D7C1F87D20AE5B4CEAF7539BA77DA
          7B9A9E3226681422B87995BFC0BE2FD340D2B35F1AF60D509778A119DEC39CF7
          AD1B8CD38DF4766CBC7A9BDFFD63CE27E8D0742CA27C8618C344CAC28C37A6CE
          CCDF2C6331EC5B62188F182509411375F75FC6D1A76DBBBA79F77F4E47D2817F
          DEBB00EDE3A74A7999E6B4A48D1DEBD500BF81FD7F0FFC13D024989F0F42E3E0
          DBC4709B84A71EFE0C7B7765C9E59C97A15CFF5E4E0FFEF7890B3A170045CF23
          3F732CB2CEF647C6A916C83E19828233B5803302FBA704F0A993F4F20BC4ABE7
          5E80FEA4C0FA498161399E7B4A60F9645581FDEAC83B5E43C15F37DF7202FC85
          87C52010E513F80F0AF8CAABC6F81FA92CEFABA2E0502DF9AE48FE3F5FFE27EF
          504D6300A4F9E05C4A084E2685E3D09670A4AE0B41B240FB8E657ED8B2D817EB
          7FF0C08A2FEB60D9E775B0EA8BFAD8312F0CBBE64720E5C748A42F8DC48195E1
          38BE2E14E7B606E3D24E3FE4A7FA202BA916B2B6BB2167BBFCCE24316A92AA01
          3BAB033BAAA068A7DB4FBCFBD67BD555077EA35F0DFC76E8CF5D57555E452B2A
          237785B4CB8A7AC85AE18FECF5CD51987C130A0F2402A75F0072183B59EEF12F
          57B9CA55AEFF567DF8F62A746E351A31C1833587BE86D13064C382B962783540
          47CF3417F02A807B8F516F7AE3803B34F52537642B7BFE5FA3F9DF6D47AF8E53
          74112BBDDF564C3C0D0BB3E8D5DAA976A2DDD8A057DF40A9C91433CEEEDD1F89
          179EBC7A31F1EB971FC3CD7DEE41A3A03B35F38C6500998DAB4A03BF05C925F5
          27651423263670385A351C8A579E5E24A7747E9DABAD037B80775EDC81D68D27
          213E709CCE529832FF1BE0E70264BE96EA1BF239DB440C8118FF1168193D1C37
          F49A828FDE5E2A97717EED725D9E9C1EFCEF1417EEAC12E8FF10C87D14791747
          23E7741FE49C8C42DE497781F89AEACDC749817D2B565F33F498D87DCE047071
          2FC13FFF641501FE6A6580DFC4F01BE037B05F688FF1E72B819FCA15F8CF3960
          43F63E79BF5F40585E0BE4EF42399E7740E0767F55E4EDAF8D9C7DF57029AD1E
          32F77A227BBFAF2A73AF372EA68A5120CA4AF31079E142527D0DD1C948F64676
          B21772767B223FC50305BBEB213FB926F2765447E14E01FC64D16E91403F41BC
          707345395615853B4ABCFB8EE2313DFE5F0EFC79ABA4BE56487B2C93F2AE90DF
          B4B20AF2975541F6F27A72CE489C5E9980F3DBAF17836A0670E13569FB8540E1
          16E90BCEFA48B9CA55AE7295EBF750FAEE1C8C1DFA029A351C8E70CF3B354DA4
          023F17652AD0D96587408A597B4C2E76E375E76EAD2DA2076276E2CB724AE7D7
          B95CCD9CFC9ACE1470B12E434CE8058FF418AC5E7B2E72E54EAD1ACFAF331062
          0C303F3FA1D44BFE667618291F3793BAF9DAD948DA7C464EE9FC3AAEE8606A1E
          1E9CF589947338C23C6FD3301EDD904CEA89D05F0CFC5A5F847C0BF829EE6ACB
          509EB1880DBA0BFFD7FF1E29E77F2E334F59BDF1FC4A5D74DC245CEA508DAA92
          B6FE29F0DB7F8B03F01B03C7FC8FAEE310C3A743EC148C1BF83236AD3E269770
          7EDD725DBE9C1EFCEF16C33B5603799FA030F31FC83B7313724F3543D6896064
          9FA8A3597BC0987E8A213BDC70EB849BF1F29F12A814F05703400C0213D223DF
          630CFF51794F71E1AE00BE25423E37E3E27BEB3BFCBE1A04F4FCEF95BF0FB901
          47C4D8385049FE76434E6A25E4A60AC8EEAD83ECD43AF2B7BBC803D929F591B3
          A7AEA83672778BF6D442417A3D14C8F7F2D26A09EC5747DE2E01FC3D3551289F
          1726D7166897CF994F7F5B4D1428FC574161925C3B59CA242AD849958EE17784
          7E57819F627A4E6790EFA85F067E39A62A01FEBC559590B34CDA66557555FECA
          6AC85B5E1D598B2B23734965E4AEAA8BAC551EB8B43A1CE7D736C7E90DBD702E
          6938728E3C6A72F8638D1880BBE5D5593F2957B9CA55AE72FDA7F4DEABABD1A3
          ED3424848F4298C720017D07607502FB9459A43B010D7DA620D2730CE24287E1
          C65E3331F7ABF5724AE7D7B91CCDFB7A07FA759B8A2611A3B51C26552453840E
          55B08CF161EA4703FC5A0E9FE1227E66169AF2730267C7A6E3F1E253F3E494CE
          AFE3AABEFD7427BAB79A88D8C0C1BA68997541AFBD1A412C4BB1D7BB04901D81
          3F8A614962D0746C3606AF3D77F577D575A6D49D599835E94D74683A1ACDA3C7
          20D27BA800BFF90DC56D6D6FFF62E877047EB63FD75388216619379C7961FDFF
          BDEF33D8BCBC3C5EFF4AC9E9C13F8618DE213762CEA328C8188AAC337D9071B2
          09B24FF921EFB480F22901467AF74F12F62D09FC0BE81709F017A93120A7B12F
          DC2D067E5159E0777CCFF01E1A00AA03F2BFFB2B02FBDC509826009B267F0BF4
          833BF7A60B98EFAD8EA2BD5296B4BAC84FA9ABAF48AB83A2B49A284AA9868294
          2A02FF1591972E8682282F4DC03D55CA28C64291C07F4192807F923B8A923D05
          DEEB9B9CFA3BAAA0604F2514A64A79F610F62903FCCEA0FFBF11F8B357DB5479
          ABE55A02FDF92B2B23677915642EAF8A9C553534B4277B5965E3F917E5AEA889
          8CA5F5716669104EAE6C8EB35BFB21336D18B20FDD2FEDFFA58871FE9B209527
          7DC2595F2957B9CA55AE725D2DA5276763CCA01705F8B8DBAB809B3F3DFB8455
          134653DA4B4D191064388A86F308F03376BD6DDC584C9FE09A77FFE0DE6CCC9E
          FC8EA688247C36F41BA7F0C8FD00580E7DEF3E41533E123A19BAD3C07B88CA18
          2002E07E53101334468C8F395735EFFE9491F61D6A03AC3A32F5A3E05FECE177
          06FCF2B71C8FF619A3460D3308256F3D2DA7747E9DAB252E36FE4BFF7BD03A76
          18E2C2066B4A4EB63BEBB0ECFA8812E037D0CFCF1A0AD81BE01FA1465759E0BF
          E99AC7B0EEC7DF6FD6E2CF26A707FF384A038A9608E87D80A2EC27907B711C32
          4EF7C5A51309C83AE98BDC33B5C50010903E2D807C52209A0B7805E80B04DE8B
          440AFA0CD9719005FF16E05B705F24EF1D45EF7EE1810A28DA2F60BFBF9A485E
          0F54D46354C17E8A1EFF2A2281FB7401F874F95E5A65350E08EC056220E4A70B
          5053F2779EBCF25881BC2F4C110365B7FC6F724DE427D541DECEDAC84D12250B
          10EFAA82ECDD9590B34BFE8739F79D81BEA5FF18F0572C867C47FD14F84B2B57
          C09FA20190B5DA4D37E7CA5C594D0C00D1D2AA285C510305CBAB2377592D642E
          AD878BCB7D716E5518CEAC6E84E36BDBE2F4E69B7169F744E0E8E3C0A54F04FC
          574B9F28DF71AF5CE52A57B9FE53FAE8AD75E8D62A1171C102D302D006F208AB
          2654C6023903807608A4FCC79B948BFE93D1246C12AE699388650B645C77728D
          CBD5F75FEE40EF4E33D1389000499036B0A9B25F9731E4C512008D0B1CA3B9F6
          19FA13173051407A143A36998A379E5F2EA7747E1D57B5E8875DE8D662229A85
          337C47CA29E5B232DB58B0CFD0187ACB75B3B0FA264D65B487945F77B21D2E06
          CD6074683201AF3DF79FDB55973A909A8DF75E5B856B3B24AA61C5DCF8DC3FC0
          DA47C1EC006C65E9615F60FD9BDFE4D816847DB3C6A36C3FA151331E3D5ADE8D
          579F5A2697745E8E72FD3A393DF8C7D34E79911B33EF23E45E7A00974EDF8EB3
          C75AE3CC9160649DF146CEE95AC839510DB947DD90670FD9D11CFC02F60AF8C7
          997E93AFF2B75D96B75F81DF11F60F562C05FCF90704CA0F541371E1AEFCADB1
          FC4684FEFC7D02E37BDD14FCE9F5CF4F17D8B7C05E44C8E7CC403E3DF622857D
          BEEE1183614F6514245746FEAEAAAABCDD550DEC2BF0BBC97BB9E69F08F8B357
          55145541D60AF97DCB2A2347BDFC8CF197DFBD9CC7C41858561D992B6AE1D2AA
          7AB8B0CA1FA79646E0F4EAD638BFA92FB292874ABD3F089C791BC8592C7DA27C
          916FB9CA55AE725D4DA5EFBA8031839E43CB8602A6FE9310E9C11D5399618660
          F7CBC0AF2137A2B6B189983DE903ECDF9323A7757EADCBD1D471AFA379F468C4
          0659596E4A00D35C9BA06FB2DC70B3ADE8FA2311E539443DCCBAF3AB182DD1BE
          83F1D7FE8F62DB86AB13BB9FBE2703B7F49B66BCFB4C47AA5983B85095EB19EC
          A14E02FB26D4658CEE54DCC06392D985563ED7FF9132B66AC40C42739096F49F
          CB5CC3109EFBA67F88AEAD26A14904D7480C4784273DFB637513359D8510B1CC
          16B89B36B080BFA44D348B93AEF1B0FA89DD40B3FF5F8BC8B19831E61DEC4F29
          0FEBB912727AF08FAB5D40C122E467BC8C8CB39370E1D475387FB2192E9E0E46
          C6C9BAC83E594DF3F2E33863EE05DC09EFC72A6B5EFEC2E3955020F0AF330076
          D1E35F0CFCFCAEAA92BE2AEC1F14D895F72A81FD5CF92E537832952717F712FA
          7305F873F7099CEFA3A7BF8A00BE00BC86EFC8E7766F7E7E8ABCEE91EBEF16A3
          60773514EEA2E4BD003D768B81C0D09DDDF23D7955ED96EB7147DDE4AB0FFCBF
          BC6857CA21FAADC04FD0CF5D25E75F6949EA6B857C7FB97C46891190B5BA2232
          575542867C96B9C20D99CBC518585A550C80EAB8B8A416CE2C71C7E9A57E38BD
          2C0A67D6B4C1A56D3721377D120A0FD1EBFF8549ED59E85AC6877295AB5CE52A
          D74FF5D5FB9BD0314140399079ED05EEBCA61AD853A823C0514E809FC027A0CF
          18F498A011E8D3693696CF776D63AB85DFEE468F7602F48123ED20E920B96E63
          015123792F6588F59D286259CC3E002C4B6CC870746D39196FBEB4524EE9FC3A
          AEE8405A019E7BFC5BB44D18220612171113F65937845C0B90AD34A5A6DE14F8
          3DE90D9FA0613C84EC68BF3BD0367E045E7D8ECE2DE7D7BAD25AB9201D63EF7A
          1ED7B498A11B97716642330A49F9350CC767AAD4EB1487D02347E0A72E17F8ED
          7DC46F086EEE791FB85B72D9B294EBD7CBE9C13FB6D281A23502FE9FA228EF29
          5C3C3B0C97CEF643C6E966C83A198E9C933EC83D511705476A22FF700D141EAD
          85A2E33545D505F8DD34F77E3EC379440AFE02EF06F809FA252A067E0BF409F9
          0EB0EF0CF829C6EB53B96902ED02FCEACD17E02FDC2D46C72E294FB259AC5B94
          24654AAE8CA25D726D81FD0242BF5DF9722C3FB912F293A4BC3F17BB6FE90F02
          FC052B2831A496CBEF5926E75D66803F4B3ECF105D94EF32677F8618053C9EBB
          54CE4BADAC824CD1A565D5707E496D9CFFD113E71647E0DCF2E638B3B23B2E6D
          B913D97B668861F7B2C0FFB740FE6AE9263B44E50F907295AB5CE57245FB92B2
          3176E0B368192DD0EE375A777C8DF59D81F88069264B8BC29D1DF815E408B625
          C0CF787F86DE309BCEDD891FC8299D5FE772356DDCAB1A6212133816111E2560
          695DB7B1A70029815FFE66284F43CFD102A9663682801DE1354863D1278C7819
          294999724AE7D77145CF3DF103FA5F330DCD1B0C4703EF615A36023D81D94A47
          C9FAD2C5C57E2C7709F04779993A6B183018F11177E2D6EB662135F93FE3DDFF
          E0CDC518D02D11AD1B7201B4B4B33DFC886553034FEAB5A1A71C23ECF3BDD744
          FDDCD4BD69EF529263669F067E56B69FB00EE4D57798189363F1EAB3BF5FBAD1
          3F939C1EFCE34BA09FDEFEA2F540DE7728CC7E19D917A6E0E2A99B71E1784B51
          18B28E7B23E78427F28E7A205F54C00DB98ED510C8AF2CE02FD069F7F0E70BC4
          5305872AA91C819FA23140D8B7E09FA9394D7A4E39B6CF9200B9A574016A91E5
          E127F0D3835FB85BCE590CFC629024D54241B21821BB18CB6FA0BF50409F9979
          8A92443BDD8A5372FE91819FB06F809FB0EF86A2655504F82B6B9ACE6C81FFCC
          5502F916F08B32E5BB5922CE005019CBDC14F63397D546F6D23AC8FDD11DB98B
          3C91B5D007971606E2DCA2709C5B9180F31BBBE3C2AEDB9071603A72CE3C0DE4
          7C04147247C2F285BEE52A57B9CAF55BF4EE8BABD0217E0C9A478CD3F86D02BF
          497539D901F8CB8277090046FB0E4742F87005E0958B0EC8299D5FE772B466E9
          41DDAD96997E22BD8619CF71F1F5089E0CE5A1779F71FB06F81B798D12D9F3F2
          4BF939D3D0A35D223E7C7B859CD2F9755CD1B67517715D8F996A54D0B8301983
          049ABD05F63537BDBC17C8D7B4965EC6DBAD213E3E53347DA502B2DF08DDE7E0
          9AB6E3F0EEEB577F57DD03A9997860FA5BE829D76B116516D772075CB6B3817A
          2E7C665A55299B18255ACFC5F1FB0EC0FF1399190BCAF48F32FD84AF02FCCD22
          8661FCD017B16FF7EFB3A1D89F494E0FFEF9B415C8FF1605D9CF22E7C218649E
          E98F8BC7DBE0D2D186C8391222A0EE87DC431EC83D5C1BF9470438ED9E7E42BF
          73E0B72FCE3D28E02DB06FE09FC7E4FFF689C140ED95F77B05C6F7CAFF3A888B
          74290DE71115595EFEE2901E313A76D5328B7519BBBFDB003FBDFA8EC08F1D72
          3D01FE4279FDE302BF7CB6B222F256B8A90AECCA5F5EA938A4276B6505857E8A
          A13DF4F82BF0AF14AD106340BE9BC1BCFD4BAA21E7C7EAC8FBB106F245058BA5
          FE44B962045C5A5A176796F9E3C4F2281C5DD5064737F4C1A9ED77E0DCAE69C0
          C9B78133DF414E227D6433A421A4CB38EB43E52A57B9CA552E4BBB779EC1DFFA
          3FA03BBC467B0E339E69C29F2737D2E202540158672067498E73A1678B86C370
          DF8C77E494CEAF73B97A60E6876827C647A3C02108AB3F58D707586069424B08
          FC9409E721F0C7FA8DD6901EE3619F80A691633066D00B48DA765C4EE9FC3ABF
          5507D2F2F0D8BDDF14EF0DD0D0D72A8794D1D32EFE2D8687D68D43B84C03EF44
          93D1468C18EEC6CB9D8C47DCF924D2765F90533BBFDE95D0BA654715B6BB3423
          98DF818420298B94890612677108FA5A3EF99B625D5BB314CC7E54AABD8B6519
          0262C0D855FC99D54FECFD26DA6B30E243868841381D4BE7B9661096EB7F06F8
          2D09F81709DC653F879CF3939175EA16149C688DC263E102FB7EC83E540FB947
          6AE8E2DEFCA302B176D82F0DFC26965F17ED8A40E817E02FDAEF864201FDC2BD
          55351B4F517A15919B48BE2FA06F890B7675D12E219FDEFD34312CF4BD407B8A
          0074AA1B7253058445392902DA7B8C340527BDFC0AFC15809D72CD9D7F70E0E7
          4EBB5C904BAD74330B7709F4A24C86EEAC90320AD4D300E0665C5CB8CB1D79B3
          56562A360218F39FBF5CAEB154AEB144FE6FB1FCBFBC662D11E3608918038BDD
          707E51159C5F585BE4210AC2F905E1B8B0A011CE2E6A89D3CB7BE3FCFADB9193
          3C49DAF211E0F45B02FF7381DC75E5693ECB55AE7295EB67F4CA0B5FEBEEAE4D
          42C623BCDE108166B3E854A15F20D0DA40CA82B79F80BFFC1D1F3A1A37F4BC17
          CB17BA969987BBD5F6EB3A0371A143D54B1FEDC55CF0A3EC206979F6A912C856
          0FBFB7D96C8BEB0E58E6363113F1EA3357DE6BBE2FE53C1E9CFD36BAB79DA8E5
          8B0B9AAA8B9B75E130C158605FDF4BB94A72D21B0F3F17C2467B891125706DD6
          3C0CC5B5ED67E0FDD7D6C8A99D5FCF55EDDD731E5F7EB819D775BF5B175373D7
          DCE6A133CD0C0ED3968A9114E52E75A7469E8175BE37C60A37D1E2FA037B5B5B
          EDAD32A06F85FDD09031C04FD9CFA5FFC3BE2286A4007F6CD0205DABF0F423DF
          4BD19C97B75C9727A707FFDC62EC3661EE1B81BAE750786E040A4E0F40F6B10E
          C8381C87ACA321C83DE623D05F1B79872B23DF0EFA05072B0BE8533FF5F0171D
          10ED9763FB04C005FA0DEC5701D2283740A0DF5291003E5502FCF23FF61CFE96
          AC349D047EBEE653847EC6F2EF9273248B04F629C23E17EE3A857DEA0F02FCBA
          38578E5199D42A017E817E86FAA8E77F6915857E66EEE1C25D2EE0653C7FA6C0
          7DB6403E61DF0AF3A1A190B54C3E5B2AEFE5FBBA91D78F9C01A889DC85759033
          AF1EB2E6D641E60F9EC8581281B34B1AE1F4926638B9BC33CEACBD05193BC74B
          7B3F21F0FFBEC0FF22204BFA4B5E32C49A93BEE3AC4F95AB5CE52AD7FF8EE801
          BFA5FF54B488E2EEA806E4097CF4EC13DE08A991EE76E02E063807E0A77C47A0
          4DEC28CC497C534EE9FC3A97AB579E5E8CF6096375875F66D9E18EBAB1FE9687
          D9027E7995BF09F816F4339CA6A1E7580D4569123C418C8FFBB16DFD95CD67BF
          3FFD3C268D7E025D5A317DE55D88091C8F88FA130474A7DA437918D24388369E
          71F5EA6BFCBEA933CE94444ABD6ABA537F6E6E351A43FFFE2FECDF932FA7777E
          4D57B47BE7293CF7F8F7629C4C46B3C8F1BA48B8F4466513A4ACD27E76A3440D
          14F5E6D3AB2FDF67C6212DBFD5EEFC2EDB812A0DFC06FA7F1EF8B9C681BB2F27
          440CC5E8812F60EFAEF2B01E57E4F4E0FF8E98B671BE80DC5BC8CBFE07B2CE8F
          C0C5937D70F16833641E0A41F60177E41FAC25405F1D45FBAA19EDE78EBA9581
          4302F547DCD4FBAF9979B84077BF00AABCAA3140F81798475A3520B5BA8A9B6D
          E9A65AA9958BF3F05BB06F190014FF66E69E7CBEA7979FEFE9E9DF4509905B0B
          76932B234FA03F570C80DC9D02D64E94B75DFE87B2C37E8183F27F6FE0B787F4
          A808F89687DF0AD911D1C3AF62988F3DAE5F63FB05EA358B0F17F73A91F1F253
          52AEC5F23F3F1A652DAA84EC859555590BABE2D2A21AEAFD3FBBA02ECECCF7C1
          9905A138F3630C4E2F6D2F06406F9C5F7717B2936700C75E32197F729608FC73
          5138678BCA6700CA55AE72FDEF8980DDB1E9448DB12E0D7565E04D44AFAF094F
          19A9B1E9E6FB02B28183D1B3D370AC58EA5AFAE43D5B4FE1E66B67A369D8083D
          BF05CDDCD4CB94C39205932CABFC4DD8F420C84ED61D78BB369B8CC7EEF9504E
          E9FC3ABF459BD7EDC703B3DED19D701BF80F42433F8161017B7AEBA99FCC3CF0
          D5EEE9671D31D73E65CD96301352D7E613F1D9DBEBE4F4CEAFE98AD62D3B8E59
          13DF47E72693D124C4A1AEECB20C25359AB878D877A0F6814877F99ED77401FD
          193A1B11E9354A1717C7064DD0F7565FE022E938316068E858F1FF3FE933DA46
          A68F98B50CC3111F341A033ADF8B855F727DA6F3B297EB97E5F4E0FF9E76A008
          3FA220EF5DE4673E849CB323907DBC3F720FB745CEBEC6C8DF1F26101F80A283
          5EC0C13A2838585517E6E6EC132825E81F14803E24A7395C41C5101F8DD94FAD
          580AF80B53AB89AAAA2160E5E12F0EEF11A867EE7D6EB8A59B6EED11A867ECBE
          8308FCF9C902D9BB0CF0332D676E9201FE9C24298FE872815F61FF77077EA93B
          81FBB2B2609F9E7AC6E95B52C02FABB2B0BF54BE27B2805F3DFF22CE0250598B
          4A2BE3C70AB8B4B0A2C80D171754C6A505D590B1A00E2E2EF4C68545A13835AF
          014EFFD8166757F7C7B92D837071F734E41C7A0C45A75F012E7E0A398918016B
          C5081003A060B7742767FDAB5CE52A57B9FE1C624EF45BFA3C88A6110268F6B0
          13037404B6D2F0466F2F3FE742547A7CE9F9E5FF34F61B89568D47E0A1BB5F97
          533ABFCEE5EAE33797A3679BC9EA0926E8F3DAF4385B5EE7D2206917CBC8301E
          8F9988F79F81B8A011E8DC6C3896CF4F96533ABFCEAFD596754770EB8029E820
          E78D091E86C60102CC7E258B6F3504E6DF02FF584D15CA3D02E202A42EBD86A2
          6DA309183FE825ECDA7C4A2EE1FCBABF555F7CB00937F5BA17B12143D034C41E
          8EA5ED5A5277FFCFDE59C74771B56DF8AB421D270909EE6E058ABB7B5D281477
          774A0BB4A5C5DDDD697177774F42DCDD3D2404BDBFFB39B3B3D92C0B2D6DDFF7
          ADCC1FD7EFCC8EDBCE5CCF9967CE684F474C4F48E4D8DB3388B1EB814A05C6A3
          448E511C673C038091EA65EC0A85FA6BEF68941CC5F98D504F5C4AE5EECBFD3E
          503DD1289347845F3F3EFA39434CCB52CBE33E522D1551FE65DBA77DBD87AB6A
          7BFD0D7E1D9B3DFFBD50D81E5DA2C0EDA6CC2D039226E3414C5FDC8FE884BB21
          EF212DA818D24372E16E783664445082C328EC8194FCC097330978494BDF9152
          7E4B1A8F09F5B22E0301E12E91D41DA9E97F4CD957ADF4A8A6395F352335F80A
          69A98788EC3FA2D46B25A5DFC354BB6F4BF86FB33FB9EF4A291774E1A7E40B99
          A2AFF36F14FE1770E73825FF783625FC42DAD19771E7C84BE415241FCEC6E139
          91742C2FE28E1640CC89E2883E5311D1E76B22FA5203445F6C8EC4AB9F70FF0E
          05827F04625703897B81D4330C046EF394B2758E19181818FC7D593EFF906A52
          B24C014DDE959C2931B4143793282A3194A61B87695FB0CDD357A5699477EC85
          0E4DBFC6B9137FECFB28213E2918D67B2E6A96EEA75A8FD1D7456AF735F9D7D7
          CBB44E56EBAA5A9AC93750E5897FD0722CDCAF4772B6B697F55B09F17D84033B
          DCD0A9E518542AFE25CA387EA5ED272EB3646E697567B04AD71134C1D7538D32
          F799BEAE2A97DFAEAF4A51AA54A82F1AD71C81ED1B9CB918DBCBFE3D0478DDC1
          DC9FF6A0599DA1A85CBCB712752D2547D641AB69D78E3303B57C5C67117E5380
          A27FACAC684E06750EE3558B3BD24252F55203D5CBD803BAAEC2C06EEB29EBDC
          460679E5F20F54D3490DFF6F117ED90F72EE94CCD39F41596F7CDA760A7C5D52
          B9DAB6B7C5E0D9D8ECF9AFE77100C55F5A6C3909DCFB9902370B7763FA2325AC
          1D92C3DE456A7851DC89C88D8CF0B7F038E84D4AFD1B80DFEB2C5F33918DC2FF
          2A10F48AF965DD87D23CA749F6E5C98059F87D181C783238F07C85701AC123BB
          42B5C36F127EC9DB57A2EFC1F9985AEB91DFF758FE16E1D773F833655FC45EEF
          D67FFFB3853FFD84A5EC0B26E13FF10ACB97F85BD27D38FD518E4FD28F70DAA3
          5A0A50DAD1EC4839FA16921800241CCB83E8C3B911B13F2FE20F1543E2D1CA48
          3ED90029E73A21F54A1F64B84D0242570109FB19389E07D2782EDDF7E1A965E3
          5C33303030F89BE0E396848E2D46A34699212865271228329855A2B5521356ED
          455E69B2D1D46D27292D3DF05ED901F86E3CEFAD3696F13C5C3D1D820E8DC750
          067BAA2708125CC8B2A5665C524132D74B477E67F69375921AF44A85BFA29CCE
          81BFDB1F6BF5E6E6C5442C9F7B166DB94E958A7753CD674A2DB7B64CD937F27E
          03F703E557245E89BE5EBB4F91B6145D298BE762705460008AE5FE02B5CAF447
          FF6EF3E1EDFAE709AFDB8D448CE8BF0C75AB0C40ADF28319C4F545D1DCB22F87
          A8177595E8CB07B124758BA5D4EA9B859F94C83500959C28EFF6C3395D5F530B
          427DD0E0DDFEEAF8DEBA9886BD5BFDD0A6DE04942BD013959DB4C046829CF2F9
          47AA63A0F174E197E65D257893A7304DDE1D8A03DBFEDC80E7DF84CD9E0696F8
          018FAF50FCF7E171DA523C4C9E887B71DD9012D11C498195F030B8301E05E4C2
          43DF1C14FB7728F9EFE071E0EB90167A54DA0EE55E476B929382ECFF0AEEF966
          C37DC9E7F76280A04BBEA9665FD5F413794157FFC2AE94F7A55BF2F8F59268C2
          4F3175D778BAF073B9CE9CDF2D060E4AEA5F32959CD7BF56F8B5941E41BAD38E
          B11F11D9BF4F1E487998FBF1E04BC838F02AD2F7BF8ABBFBDF40FA8177907188
          01DF913C483D9A1B8987F322F6407E44ED7544F4FED2883F5A1B772E74C0DD1B
          5D91E13A0CE99E3C6782E6E251F47A20495A893AC360F21ACF2B379E62464EA2
          8181C1DF83C5B38EA26E654D0C4BE6CF7C6137ABB469B22A88ACA91778736892
          5DA1007F3B7E854FDA4CC6B963419CA5EDE5FC56B6ACBC88A63546AA74970A0E
          D242D010551B2C72AA3E6A9565DD04590F6D5DA494DAFDB2F67D28FC3DD0B9D9
          785C3D1DCED9DA5ED6B3F0B97D0733BFDBA96AC9DFAB3040B51D5FD6E12B94C8
          DB4DBD1F20CB92A63F256F5D9AAFCC4C8D1132F757668DBAACB7BE7EFD54D394
          4D6A0CC4AEAD57B938DBEBF0BCECDA7A457D13A04E45EEB702BD51344F0FAE6B
          3F159054721CA5BD03A1845F64DF84AAE99775E3BECC3B92E38D55DB53229F34
          35DA4BBD84DDE0DD7E58BDF81882BC33B818FC9F9FFB5D0C64A052B5584F15BC
          94C83550D5EE57B41F6D3A0EFAF131759BF785691F985A7C92FD50AB6C5F4C19
          B31E1101FF9D8F8DFDD3B0D9D3E069DC041E1D0632D650FC7FC283B82140F487
          7814520F69BE1571C7A718D2FC0B20DD3F27C9868C008AB0FAE016853D40527A
          E4455E7961371B1EFABC4A44F8B365A6F188E47B731C1F8AB9F70B2AAF5FBDAC
          2B2DF4907B14FD277842F8854CE97F52F85FA6D08BECEBC22FFC3B84FFC9941E
          533F06026922FC147C416AF6EF99787084FBE9308FCBC157719FC27F6FDFABC8
          D8930DF7F6BE8E8C83AF23E5D02B147E2DFD27E9F05BFC9D134907F321767F01
          44EE2B82982315117DA236A2CFB444F4E58F11776B00923CC6F13CF911774316
          00715B80843D40EA499E57F2A1380FE081D11A908181C15F0B6F97747CDC762A
          2A171B8062797AA1B43DC5DF2C6696D29629B052035CC1417B31566AF945F86A
          96E983EFC66EE02C6D2FE779F8E9EB9D6858798C12D50A0E22D483553A4AE9FC
          BD94C82B799675A29C2AF4F5339522D4E51CFAAB36E6A589D16F476C80D7CDDF
          56831EE8970CE7AB11D8B2E622C5798C6A3A526AC98BE7EF8AF28E7D503CF757
          A854503EE845C1E5B2D4938E5C1A92D2523EBFA4F268D26FDE8F56C2AFD6317F
          1F542FD91303BF9A093FCF782EDAF6FAFC56FCBDEF60E9DC0368DD7024AA9618
          80B205B8CF782CCB1518A18233394E22E52A7032D7F09B30AF9B76BCA5994ED5
          04A7634FD42CDF17ED9A8EC0C9434F7ECB66FE8FBB50BBBC7C59B8A796D264F1
          A1316D3B6D0BBF1E30CA577D8BE6E8AE02B3CFDA4F82CBE53F9E7AF56FC4664F
          83672135B2EE5A0DED8313401A852D6E16D2C3872035EC632487D645526809A4
          84E6435AD8DB480B7A0D1981D929FBAFE1819FD6420F7C5F60F97F0AEDA35B94
          6C1F81DDF2DBF442AFFC16D9CFF0A6B893BB5E2F9978D9C44BC830D5F29B85DF
          2CFD0285DCF4D26E66B39C2FE2DE2D91FADF26FCC23D25FDBAE05BF337167E8A
          FE5D294D35FBBAF02BE9977E2C530FFD1FEE1CE678475E46C6D16CB87B38BB22
          E35036A413C9F74FE2F0A403FF877892B4FF65241E14F97F03090C00E20EBE8D
          9883791075D01E91070A22E24069441DAE8C986335117DB2BEFA0E40C2C50F90
          76B30F1E7A7E03042F01A2B601F1A780249E63A90C00EE1A4F010C0C0CFEB72C
          9D7312B52B50BC726B2FA0AA2FD99AC55413C04C61D3C455E4AEBCFD28CAE268
          14CB3D10958A0C64D0F03D8EEDFF632DF308417EA918DD6F1D6A951AA396AB7D
          03407B39B88C7D4F0AACD4483F4DF835540A10C791A701D58B0F42D3774763F9
          AC73B87A320EBE0C70AC9719E6FF10EE3793B07DF3754C99B0051D9B8F47DD8A
          0350A528030C871E2A3D483E42262D12C9D30C492B2A9E8B929B67806A0254D2
          582AD88D41B9BC0C52D4530F62DE87D29D55F84BCA3A3A0E40F33A23B073CB1F
          6F99E7E6A5287C3B7A13EA5619844A45FB2BA9972649D53152023F50C97565A7
          31DA0BD7FAFA3D05696254BEA5D0A4D6708C1AB8046E3712B89827977B749F9B
          4A739240489EC4C84BBBA573CB4BD5A6EDFE15E1975A7E496F2A57A03B1ABF3B
          E83FD64AD13F1D9B3D0D9E83478C66EF5D542FFA3ECE588EFB77C62335F63324
          843744626825240514474A80139D2D3F327C73E281EF9B147D8A3F655E90967C
          EEFB51C2190458B6C5AF418916D9A7DCDFF77A05F73C75D1D7645F78A286DF12
          4AFF83DB9C8F127E96A6177775E15735F8BF92D2F34F167E25FB94FABB26E157
          98D27EEEB094549FB4932FAAFCFE94A32F20F90803007287DD694774182028A4
          FB25DC39F432520EBCC800E00524EE7F11C9075F56A41C7C1589075E43C2FE37
          10BFF76D9203717B7323668F3DA2F71522E5117BB80E124FB447DA851EC8B83E
          0A779DBFC3439F05781CB41688D909241F02578AE7DA59069B3CE7E0428C60C0
          C0C0E03F8B974B0A3AB7F816150A0DA6D88E505F892D92534FEF106133C99A59
          10357195540C49F990AFC44AF38CB52B0C57C2693DFFDF839F572206775B858A
          8E5A5021DF00104154A29DBFBB927EB51EB25E79476BE8EB68423D11901A67AE
          A7BC505CADE850D42D3F02ADEA8C535F119EFDC37E4813A44BE71CC58FDF6CC3
          D8C16B557BF0ED9B4E525FBB95977D25375DD24DE4C982C8AC08B388B304132A
          25C76E202AC8D390BC0329F95C1F4967B11B4FE915C936EDAF27F69D26BC651D
          86A372D1415CE60248EB48D6FBE079387EC0131FB699A8BEF45BB1F01006600C
          74720F672032563D8191E324FB41F687D4F2CB130973A0A4822591725947AE9F
          D4F673FF562D31080DDF1D86D953777111B6972BF87B26AB2F03D72849816740
          568AC1847C77403F0EDABC75E9D7F783AC83FC96770506AB97BE2588AB56A207
          7E18F733F78791D6F3BCD8EC69F07BF1041E5F02EEEFC5A33B4BF030F91BA445
          7D89B4F016480BAE8AD4802266F1BFE7F336EE79BF8EFB3EAFA95CFEFBBEAFAA
          AFEC3EF07B452BBD5952EC1F78BF8A079ED914D20CA734C9A9DAE397741E9677
          29F54AF44DE29F45F8C97D5DF8A5A6DF2CFC9682FFD7157EC57F58F83328F982
          5ED32F79FCA9EC4EA1F0A7727C1DF9ADE07021556AFFE54980C8FE61728881C1
          C197549E7FFAFEEC56B0DF815790BA9FE2BF8F01004B21696F3624ED7C87E442
          D2AEFC48DAED8084BD0511BFAF18E20E9442F48172883F560B3147EB23F2680B
          441E7F1FF1677B22E3E658C0772610BE1A88DF0624EDD35282D22E00E9CE6024
          C8D3D1D6F969606060F0FC2C9E7D48B5BB5F229FC8DE684D0EA51517B3B06962
          9629AC120C48EA0F4BFB61289E87D25B68203A369B8C8B277F5F9EBC353E1EF1
          F8ACED8F2A6D466A80B59A6A0AACFD00F562F06F117E25B5ECA7E7D68BEC8AA0
          977390AFE1F684BC285BAFD220D4AB3A58E5A757294E592ED20FE59C06AA8F60
          C9764A4B3AF2AD01A98996A70C45DE1AA89AA994D41D592F594EB9FC1CAE5AA8
          E1FE916548CB3C2AA5C5F4522AD75DABC9D6BE5950C661887A47A29CE32034A8
          3A06BBB7B872936DEF87DFC2EAC527540D7B85823DB8AE5AAD7ED97CFC6D3F5E
          C9BC6CBB126C0E532951B28EDC96B279393CCF0494CFFF0D4AE414E997E6417B
          A0945D17D4AD38109D9A7F835FD65DE7226C2FD79285330EA25EC5612AADABC8
          3BF26134CB63615BF8653D248092604E0550F9FBA86DE8D8641C6E5C88E16C6D
          2FCBC036367B1AFC093C70A3F89F6200B09D02361B0FE2062135B42392FDEB23
          D9AF0A527CCB21DDAF04EEFA38903C74B4B7C91BB8EB9D8DC18048BFE4F8132F
          11FE57F0C0FD553C727F5935C7F998A22F80D27F5F177D13F25B47BDD82BC24F
          94F09B6AF9FF2EC2FFDFA8E1B7147E917DB3F09B489576FA89EA967E1C7E87A2
          7F476AFA4DB5FB92F29376E86525F577F7BD4AB2E3DE5EC2EE7BFB5E41C6DE97
          C98B48DBFB02EEEC7B01C9FBFE8F8EFE7F48DEFB125277BF8E3BBBDE5465CAAE
          D728FDD9C9AB2A1848DCFB1A62F76447CCEE1C88D96987A81D4510BDB33CE276
          D742D2FEE64838C4F3E94277245E1B843BCE63F1C06B2A10B81888DC04241C04
          52CE91AB0C04782E3EF8639FAE373030F877E2E31E8BF64D47E3DDD21462A995
          B5D35ED45439DE666133A1643F1349FB2965C7EE02FD51B3EC104CFD7A276769
          7B39CF8BBF4F2286F658A6C45E5A71A95A689CAA519797642B1694AFB45A0ABF
          5E4B9D55F83534E1D791DF12CC484B3FE50BF453A93A25EDBF4289FCDD55FBF2
          22E225F20E6210A3D582CB178545DA25D8909AF1CA4EE3380F4D6065B888AA96
          AB2F4D5A5A346B49B4F511A4F59E919AD4721B4ADBF7E7B27AA91AF4E17DD6C1
          E3D6EF6B3DC8ED461CBE1BBF09B52B314829D813D58B8E54EF5494CC358AFB43
          6AF647719BE5B869B22FEF3DC8D30A2D8019899239E55B055FA3448E712A4090
          B6F4AB14ED43D9EF87213D16E0FCF1502EC6F6B2AD39B4CB031D1B7FAB9A1755
          4DB3CA979045ECD531B025FCF2C561795222C198A46CB1948FB7F17834AE3E0C
          5B561B693DCF8BCD9E067F32F76E03F7CE02193B80F485B89F3016C9615F21DE
          BF15D2FC6A22DDB734D2BC0B22D5330F5229FD694AF829F7F2812E7979D7F345
          4DF4DD5E066E5BE0FA92B92D7EAD594ECA2BE5DE5CBB2FE26F25FC4F7E6157C7
          B6F0FFE35FDAD539F68249F829E647B536F905F91AAF34C9997E243377FFDEC1
          6CEA05DEBB075FA5F46743D29157917A98DD22FCFBB92FF6F1B851EE1FEDE5FE
          DEC37DC8F21EB94B5229FE497B5F51329F40994F667090BC87F310C92789BB38
          6CF74BE40533497B5ED6C6614090B8E36D246CCF81F85F7223F6170706036511
          B5A732A2F65543D4A19A883C5A0751A79A20E65C5BC45CFC08E99E8370CF7F3C
          1E86CDC4A3A8257814BB81C1006FBA778EF07CBCC46080E766BAF192B0818181
          6D96CEDB8BF7CAF5562FC28A0496C8399C923B40B5E462165693A0658ABECE20
          8A726F54A024B66D321E57CE457396B697F37B98327A236A97A338DAF535C9BE
          F6455FF9226D66BBFC5CBF2C2929BA64EA62A9FF366D0B51924EE9951A7C6901
          48906E9154117B4DE4477019A318148C61103090DBCA65DBF755E932F2A1AC5A
          25C7AB5A6C6D3E99FB46CD5B6AF7F3684F15B4654AED3E7F7398DA6F9C4F19C7
          EE685A6B34766CFC7DDF743971C0079F76F80E752A0DA164F757EB24C74D5A4C
          B24CE391ED17D9975678E4C9881C67AD969F418FDD04AEE7385516CBD14F0520
          4DDF1B81E993B7C3D7EDF99A07F5754BC3E0AF16AB168CE4F868FB43DFF7D6C2
          AFED2B39A6F25BF68D9C7B12D8495052AD781F8C1AB0EA0FA739FDDBB0D9D3E0
          3FC935E0E14106001BF0386D361E450FC5E3882F713FB823BDAB3E52FDCA23C5
          87F2EF9D9BF2FF1685ED75DCF5CC4E81CF8607EED9F1D8FD3580DDB8FD2A1EDD
          D66AFEEFB9BF820C0603196E2F6AADF310117FC1FCD2AE21FC369BE5D4655FDA
          E457B26F127E219D222F88E8DF23F70F65C78303D9F1703FCB7DD990B15F5EDA
          15E167707098484ACF012EFF00F7D77E8D7BFB3211E14F935AFD3DAF50E05FD3
          527AF631005035FE2F3208D048DAA323B2FF0292D94F02052165B7F032EEECCE
          86D45D6F3200C889F8ED7910BB3D37A2B6E542248381F09DB911BE3B1F42F738
          22647F31841EAE8888A3F51071A215224F7646ECF9AE48B93618E9AEDFE0A1EF
          623C0E5A0F446C0762F73218380C249F6220201FA0BBC573F5C916170C0C0CFE
          1D7838C7A1638B91A85EA22F0ABEF9A5AA1DAE603F564998D46A9B254D89B3A4
          F1686835FB83503C6F5F9473EA8B6A657A61EAB7DB384BDBCBF9BDAC9877102D
          EBC83B055F69CD5FAAF5A0148AC0CABA649149C124F9AABFA93B8B786645D574
          DB6B79E7EA1B02145079B2212FB44A9E7E3169A5C66E288AE7EB85F2857AA146
          D981685167228677FF195FB65F868A4E32AD2EAFFDD5FC54B0200108855B4456
          7ECBBA49DA8ACCABB43D830787EEEAC355437A2F82BC3F61BDDDBFC69A25A7D1
          B6D138542ED617457277E7BA0E60A0324A49BE7C6CACA20429B9B56DD6B64D0B
          90D453118ABFB6FF06A9710419A756E9614AF6D72D3DC745D85EEEAFB178C601
          D55A8F7A0223A94B6ABF6B018F86A5F06BEF45E8E9455AB3A6723CB82D8E3DD0
          B1D9445C3D17C6D9DA5E96C193D8EC69F0DF40522C18B9679C01ED8D92B50688
          9F860751437127F46324073446926F5524FB94468A5721A4B8E7459A7B0EDCF5
          78030FBC299DDE947D7999D7FD750AFEEB94FBEC14FE5771DFED151394F02CAD
          F4B0A4EC67FDF09660FDFBDF25FC22FADA07B728EB475FCCC2DD230CA088B4C5
          2F3C3CF4221E50EA1F1ED0B84FB1CF38FC824AE911520FBD6081FC26328C651A
          C74D670020D29FB187DBB98BCBD8CDE122FBECAF30897FD2BE97D453009DC43D
          AF229E4142DCAE574936C4EF7E1D0922FBBBDF42CAF63715C9DBDED0D8C16EA2
          BF1B10F3F33B88FD392FA2B7DA216AB323A2361566774906091591B4FB5DC4EF
          AD8DD8FD0D107BB029620FB741DC890F9174B127D29C4721C3EB073C0A5DCCA0
          7423B812789C7A0C8FD2CFE261C61506020C06607C4CCCC0E09FCCC29914B44A
          FD547BF2EAEBB579062BA4765F6A7CCD922682666EBA9132979F01012999BFAF
          CA7B6FDB7414AE5FFAF39B52BC72DA17EFB7A4C416F802950B0D5235F022E4EA
          C550114A6B9954826F21F7EAB726E496C3442C05D5520DFB89A8CBFC04114EF5
          3D011179070AB17D5FCA797FB4693816C3FA2CC3F6F56E38B82D1C2DEB7E83F2
          145B2DD75F4F4F91A7072320EF13483A8DAC9796FBAFD5F64BD398AA76DFA92B
          5AD61F8E9D5B2E73336D6FBB2DFC3C32F0E3B73BD1A4D6489475EAA5D653DB56
          53CA50DEA1289993DBC46DABE8C04023AFF65E8139DD88A22FDBA5D5F8F755B5
          FD558AF46720D31F9FB4FF0E270EFCB1D4D05387BDD1A6D128F5D55CF33EB729
          FC120C08DA7E937597E1B28FE4189775E8A55A1A927713AC9761F0746CF634F8
          1FF0509AFABCC00080F29FB6028F927EC4A38431C888EC85BB21EF23D5B70992
          3C1900789440AA6701A478E46410F016253F07325CDF41BAF31BB8EB42F9777D
          8DB29F0DF76EBF6CD50E3F4BB3F05BCAFDBF47F86DA5F4E8B2AF093F7F9BD0BF
          B6ABB7C72FDCA7BCDFA3BCDFA3D067C2F144E8C99D83147D06042987745E408A
          0A04649826FD19947A11FEFBBBB99E14FE34FE4EA6EC2BF16730A0D5EA4BEDFE
          CB2AC547527904917E2169EF6B2CB353F8B323716776A4923472674736A46E7F
          5591B2ED15A4FCFC0A92B7BE8CF4ED6F90B7C83BB8FB4B0EA46FCD81B42DEF90
          9C48DD9A13C9BFE442C2B63C88FF391F83037B446D2B84A85D6511B3BF06628E
          3441F0C1E6083DFE3EA21804C45E1F863897F148F4F81EA97E339111B20C8F23
          7E012278CE461F00E28E3230380DA448AAD07520DD85E7B4F1EE8081C1DF11E7
          2B5168DF749CCADD17D1ADE4A8BDAC5BF41DF9E2AABC202BE26ACA8B1739B3F8
          38932EFCD2A464D592BDF1D3645E276C2CE3CF60E6948D685D6F946A2D47D653
          445D89641699D44552EF2F126CD5CF025DF8657B651C3DC54709B1437F259C25
          ECBA3198E98F4635476378DFE5D8B5C519FE14EE202FE08709BB546B38B2FDEA
          7B05E6E589F08B688F54B5ED923623483F599E34772A5FABAD56AA1706F79A0B
          3FCF586EA2EDEDB6E6EAF9080CECB904352B50E80BF446E5222355CDBE1C3709
          2A8AE5E8AF5AC6A95A90FB2AFF6014CFD147C9BE7A8998EB27CD86CA7A4ADA8C
          6A5A347F37542CD45D3D41193774156E5DFEE32FC906FA2461608FD90C22B417
          9D33F78B2EFC821C13399FB4E0518E874A9F522948A614299E67D24AD290DEF3
          10E093C659DB5E9E41566CF634F85F23ADACDC021E5D04EE50A41237E051F45C
          DC0F1F4FF9EF81B4808E48F16D8064CFF278E05D98B1423E64B850E69C190038
          BFA9A4FF9E6B760602AFE0BE8BF012859F626EFED2AEB4C1AFB7C3FFEF167E11
          FD8CA3E418A7B3107D4BF436F925DD47DADD17528EBEA29AE1941AFE0CCA7CC6
          811755FEFEDDFDAF68ADF2903B0774B4167AB4567A382D512FECEEE534147CC5
          AE179126EC7C99F2FE0AE17248EA8EFF43CA7606042CEFEC62294F051830A4B0
          3B89FD9277122965BC9D0C387649BA0FD7615736CE8B01C2CF0C207EE6F27EE1
          B27FD648DECADF44FA27B27F228384C46D0C20B6BD8EB85FDE42F4D6B711B929
          07C236E446F8667B446E6110F04B09C46C2BCB80A022A2B65746EC8EEA88D955
          07117B1B23FC402B441FED8884339FE1CED5BEB87F7B341E794FC663FF9940E8
          7220722310BB0B48E0B99C7402483DC780E00A835B797FC097E7BAADFF808181
          C1FF928533F7A14E85019A7851CA8AE518A86AF625875D4BE7A1A8E9C22FE348
          AB3802BB552E3A85BF72B1E1E8D4E23B5C39FF9F4BBDF0BD1D8B25334EA06195
          D1AAF6579AC6949A7959CF4C9964A9645EAB6DD7FBEB2FE96A887CEA68FDB434
          12ADB51D114D699147F2DCAB171F8086D587AB2FD56E58791141BE0FB82ADAFA
          5C3C1D828ECD27A8D67C548A4EFE3194E8B128958F0193EC1753BA9320CB52AD
          F4705F490B4822FCF2C5DAF64D2662FBA64BE679FE1A1B579F45BB66A351ABBC
          D61A927CF9B6700E396E1479696A335F7F150C95C9DB1F2573F5A13C0F4015A7
          919AE4E7E1F652A6A59950916A49E1911796DF2D398081D4082C9B7D10217E7F
          5E1398CBE71F52C74A1D0FF3BE7EB6F04B7F6942543D1DE17079A7A27CE1EEEA
          435FC70E7A70B6B6976590159B3D0DFE62DCF701EE5DA7201DA3286DA5342D40
          5AD4B7B813D21BF7033BE2A16F43A47BBC8B54D772A418D26E3B22CD2D2FD2DD
          7222DDF56D0603AF53F6B3E3FEAD6C7878331B1EDC78150F6FBCC29298E5DF32
          08A0C89B64FFE9C2AFF7B3167ECAAF897B97054DF8EF5FE4F80ACBEEACA2FF84
          F053E835D9A75893B4731464F64B632020C180C224FAF74EEBE5F30A3FE7FF0C
          E1CF947D0AF5D117B4F6F819240829329D0DE1D75BEA11D2F6313020A9EC9FCC
          E1AA394E0A7FA2A4EDEC11E1E73C7673BA5D02A7DD990DE93B38BD74B35F3A25
          3E8D529F4EE95725855F4813F9E76F11FF44960914FE448E934444FE93B653F4
          49CA368DD4ED2FAA32F9670E27A9DBB42022E197FF433C7F0BD29DFCCB8B2A38
          489627045B18306CCE86C44DD991BCF175A46C7C13A99BDEC19DCD397067634E
          246DCC85A8CD7910BEC50EA19BED10B2C509610C0C22B65744E49E9A88DCDF00
          21BB9A226C7F7B441DFF1CB1677B23E9F230A4DE188B7BB7A720C36B0E320237
          E37EC43E0603C7795E9F0192190C245F60507095C1EE0DED29C15D779EFB0C82
          EF1BDF1C3030F86FE07C350C9D5B8F40E5E2DD558DB3FA5AAC03A534772FF595
          5DF92D2FAA2A611571B5EB8D520EDD28FCDD54FEB9A4A59474E88D9AE507E3C7
          6F777396B697F36711E0760FE3066E44BD8A2350D1C914A4E8B268C624FB4AF8
          35D1D4645E137A55AB2F2F895A8CAFB6338F3CB9E8AB3E5455ABCC60B4AC3B1E
          63076CC0C61557E1EB7E978BCFBA2ED3BFDF8C1AE5BF4259A71EDACBBCF91834
          E4A74C53BCE5855C69E9A7943DF71791941B25E376FD547F79DF416AAE07F698
          8F50FF7B4FCCDB1AF9F8D8D4491BD1A44E7F542DD31DC5F37FA15AF729EF3458
          B52664B93C0924547EBEBD26D3B25DE579EC44FE45FA45FEE5494605C7816A3F
          766C32018777787231B697FD7B3979C453E5DF972ED083FB58177A391E22FAA6
          E324C74F7F62A48EA5A41D0D42A50222FDFD1824F54039C72EA85DF14B2C9CF5
          EC6F00186462B3A7C15F1D46B49243FDE03C03809D94A5C5480FFB06897EBD11
          EBD51E719EF591E05905499E25907CDB09A92EF9917E330F853F271EDFCC05DC
          7C078FAEBD8E8CCBAF52FAB323E37A36DCBBF632EE5F7F9981C04B787453CA17
          F090B2FFF8E68B7840B9178117C1D703800C22CD7566ADD1673F0BEE5F62C040
          E97F7089D35DD0615061EEE67822FD22FF1C5750BFD93F5D384F713FFF8A22ED
          DCCBB84344FAEF3018483321322F927FFF14030B5552A04F32F8B022ED24C599
          681FD4D2300BBF0DD9B74CEFD151CD71926413F2112E49E5B97BF045F5B2AE86
          BCB89B491A055FB82335FBFB29DFAA763FF325DC3B94FEF4DD1AAA863F0B5C67
          1D4AFD1D1D4ABEDE2DC2AFD7F08BC05B224F06CCC26F410AC55E27D90AD56F2B
          0383AD2F21750BD779330385CD52EABC622689246E7E0DF15B5E43ECE6D7C91B
          88D9F426A236E540D4C6DC88DC981711EBED11BEA100C2361646C4A66288DA5A
          16D13F9743CC2F0C0AB65747C8CE868838D056BD3B204F0812CE7E85A40B7D90
          767D24325CBFC5038F9FF0D0672E10B81C9C0910B90D88A240C43048883DC420
          C1141C4860708F37A77B460A9181C11F65CEF4AD685AAF372A95FC1C954A74A7
          F8B3BB785FF51268A5E2FD58F643A5620350A9C860964350A5F84035BC52B11E
          A858BC1BAA94FE0AD5CA76C5471DC6E1EAA508CED2F672FE4CA4D59819DF6D47
          AB062350BD4C2F542BA535E1280180D6D4A4BC34AB212DD688446A1F061BA4F2
          FEB560803299AF3725B98712F6AA25FB3268E98B863506E083B6133079EC061C
          DAE38E402FDB327EF562203AB71D8AF7AA7447B9225D50B1581F542C3AD04CA5
          A21238F451FB53F66595220315950BF7C3BB25B94F8B7C81D6F507E3F09E5F6F
          99C7DB3B1C2307CF47DBA663D471AA58E24B542DDD0B954B70995CAEB48C54B9
          447FC2E365467E6BC831AB5A7820AA151C806A4528D3057BA26AD11E6850B91F
          46F55B02D7CBBF3D9DE879F0F18AC7F8318B51B5ECA7DA7E283AC482418AAA45
          07907EA846AA17EBCFF5E33A16EC87AA0C88DE2DD20F350AF745F5A2DDD0B47A
          2F0CEEFE136E9E0BE6AC6D2FCF20139B3D0DFE463C08A0E4386B2FFFA653FE25
          FF3FF907DC8F198A7BE1DDF028EC23DCF56B8114971A88BF5A12C9970BE2CE35
          7BDCBD914F0500F76EE6C0FD9B6F9137F0F0E66B446AFFA5D69E227D958BB845
          4157924F41BF4EF9274AF44DD2FFE0DA2B241BEE5F7D598D7F9F28D967F990A5
          92FD4B2F6A35FB4AF633855FD5F03F45F8336BF65F41C6D95771F7CC2B1A67B5
          5A7E95EEC3526AF6EF53FA33D1E45FAFD9D785FFAEFA6A2E859C92AFCBBE4DE1
          3FC271596A2FEE5A96947B69739FA588BEFAE2EE614DF8B58F6E31982099E2AF
          91B69FE24EA4FD7D9DD4BD9C768F8E26FD42EA6E0EB342177EB3EC5B21693CB6
          64FF69C26F29FB4F433D01A0F4A76CE1EF5F2169CB8B8AC4CD2F901791B0E905
          246C7C89BC42B2217E7D76C4ADCB46B2B3FB0D24AC7FDB4CDCBA1C88DC908701
          823DA2B73821662B83822DC511B6A534C27FAE82B06D3511F84B6D046F6F8CD0
          5DAD11B2A73382F77E84A0BD9F21785F17041E607070F55B24DFFA09E9EEF391
          E1BD0CF77DD7E371D07620FC000382630C86CF3228B8A87D8FE08E7C944C9E16
          C813337F964673A40606D604062460D9925D183A600606F5998541BDE76250AF
          856431599A49CF6518D86339CB5518D273A5F6BBE7220CEC350F83FBCE56D36F
          D9709CB3B4BD9CFF1487F6BA62D298F518376403DA341C8FEAA535C9AE567220
          6A9419A2CA8A057BA166A9A16438AA171F4206A9AFC04A0D7E9DF283D0ACE628
          B46B3C1EFDBACEC3D4895BB17DE315DCB8FCEB81CBC5731E183F5AB67F2606F7
          5980413DB83F7A705F9918CC7D34B8A7945AF7C87E1BB8EFD672390B55ADFEF0
          FEF3306BEA26F879277076B697A1B36CE9667C3B6E1586F75BCC69E76248EF05
          64118FC3020CECCEF991413D969891FC7E59077D7D06765F82613C6E03BE5C4C
          1650F297A17FD769F871E25A78B9FEFAF2FF085BB71CA2F4CFC7609E57837BAC
          D0907DC37248AFE56606765F8CA15C576108D7772819CEED18D96319D77D3E86
          F498811993D6323809E26C6D2FCB20139B3D0DFECE78018FAE536C4E5370F603
          C99B283EF3713F7402D2FC7B20C9BB0D123D6B22D6BD14E26F3B20F5461EA45F
          7B8BBC8EBBD7B223E3C62BB87F43F2FC5F50F9FE22F17749C6554AFB75ED2980
          0C57E370DC7B5728FB975FC3BD4BAF228372AFA5F050BC45FAAF707AF59B12CD
          616638DC0C055FD0527DC87976937B14FE7B67191C50F21F9C7915F74F67C383
          53EC3EFD3279110F29FA0F2485C71AF6D7314B3F11E15750EEA5651E29CDE93C
          4489BEE2E52C65BA34CF696AB527ED08E59BE8ADF268C2CFFE16C26F2DFE7F57
          E11792B6F2B70DC9B745F26642D94FDAC8E936664A7FE2A6579F107F2176ED6B
          8859931D89EB1804AC7D1DF16B5E43EC9A3710BBEE6D44ADCD818835B911BA3A
          2FC2D6DA236C5D4184AC2B428A21785D4904AE2BADB1BE024237D46490D010D1
          3F3743F42FAD10F94B0744EFF810717BBF44E2E1DE883FDC1F89C78620F9F448
          DCB9309181EB8F78E43C0B705B00782E034236E251F81620CAD42C69FC112DB5
          28E912FF3B3759DE66697CB9D8E0DF85BF6F3402BCE3212F5906FA2423D03B35
          2BA67E015E7710E8751721DEE9FC9DC6DF296A58906F32420212392BDBF3FF4F
          13E2FF00678F0761D9FCE3183B740D460E5C85110356B35CA38295AE1F4EA350
          2EC3A4115B317EE03A4AE4320CF96A2146F75D86E913B761EB8A4B38B5DF0F7E
          AE69880CC8CCCFFFAD04FB25B160E99566DA3F1926D2C91D45904F3A7C3CD3E1
          CDE13EECF6F57BFE8F6BF97A4621C82301E1BEA98A60CF24847825B3FB0E42BD
          5310E693662694CB0CE7F1D24A598F7404FBA6212840CBCF0FE0F2DDDDFE7BCD
          5C06F8C49ACFAF00221F52F3F74E821F4B4BFC7D9308879BD17EFBFE86A0C820
          2B367B1AFC8390DCE70CC9FF3FCE20602B90360FF712C62231B21B1283DB21D5
          AB01D26E57A7DB9447D2B5A248BEEE88D4EBF99176232FD2AEE740FA8D7770F7
          FA9BC8B8F6260382D71900BC8E0C4ABECEBDCBECA7780D19975F56722FF9FC8A
          2B9469FE96FE772FBD84F4CB146B0A7F3A830025FBD27D91427D81C1C2C557C8
          4B99B9FCE78417F040A45F50A2AFF1F054A6F0AB1C7E536DBF8E9ED7AFE5F253
          D6C9DD132C4D4D70EA985FD855C22F82FF249AF06BC84BBAC29DC314741386F0
          6B28E1279AF0FF9FB9A63F71D3CB4AFCE337BC6CE25585C87F02495AC3A060F5
          CB485EF52ABBB321796D7624AF7B1D896B24087803896BDF41FCBA1C8AD8B539
          496E45F4DABC885B9B1FB12BED11B7AA20E2561641F4F222085B520C218B4B22
          64693984AEA884A835B510B1AE3622D6D743F8C68688DCD40C919B5B226A4B1B
          84FFD21E41BB3A2360CF0708DAF709420E7645C491BE88393902F1672722E1C2
          0F3CF71721E3E64ADC77D98447B7B73148D807F81C02FCF87F0A3AC140E11410
          C70021F1BCF6242191814212FF6FA92EFCAF79101F62BC986C60F0BF22C8F71E
          03907BF076BB03F79B8970BE12830B270371F352145C2E47C2F326031B8F3484
          FB3DBFD81B18FC9DB0D9D3E09F8C9B6AFDE7E18363789CB11D485E0E444FC3BD
          90F1B8E3DF0FA93E9F23C5B32D125DEA21E14665245C2B85A4AB45907AC50969
          97EC917E292FEE5FC9830757F3E2C1B59C7870FD2DF226EE5F7B0DF7AF9B527B
          CCA2AFC9BEBC2B70F7D22B0A117BAD14F97F0569175E236F70BED9C92B0C00FE
          8FE5FF218DA5A072F9897A415764DE52EC492A8381D4F35A7EBF4EEA59966784
          57917AFA15C59D93EC3EC1F2B84E36F515DDBBC7B82E47B94E36645F83EB6E22
          FD30D797DC39C4799B30845FC32CFC9B32A55F6AFA1337FC1F791109EB190090
          C4F52F9B4958F70A12D6BC8A84D522FED929FED93456BD868495D915F12B5E53
          24AC6400B08AAC7C53C3D49DB4FA6D24AD7A87E4E6387991B0C29EE33B310028
          C460A0188381E288595D1251AB4A227C552984AD288D90E5E54879842E2B8FC8
          15E51411FC1DBEA2222257556790F01E62D7D547DC86A6885CDD18116B5A2062
          6D6B44AE6B8BC80D9D11B5F17D446DFA00E19B3F46CC813E883E3208F1274620
          F1F458249FFD1A2917A620EDCA74A45F9F8B07AECBF1D07D351E7B6F027C7F66
          A0B08B81028386B0A30C161828445E6079058861901077038867A090E4AE3D55
          48363E7A66606060F08F26E4BFF7DE99CD9E06FF266E030F2F02F78E01E99491
          B40D40E2023C8A9C8207C1C391E2DE05776E77C61DE79648BD511F69D76B20FD
          5A250A4D59DCB9CC40E0626EA45E7A1B772EBD89B4CB6F90D7D89F322DF24EEE
          5ECEAE7191722D48BF4B22FB2FA9E19AF0BFC66E4DF8D344F6C91DCABE4E1A85
          5F5ED47D124A32E53EF5ECAB4AEEAD11D14F3BA571E724055D38FE9209AE1F65
          5FAFE5CF4CE9B124ABF86BC29F8DA2CFF92B0CE1D7C922FC36A53F2B7A0020B5
          FC89EBB32369FDEB485CF71A1229FE1200482924AD7E5D91BCE60DA4AC7DD38C
          FC96FE09AB5EA5E073FCE50C0A56BCA5C43F49C49FC42DCB8BE8A5791149A296
          D92172B91DA2963B227A4521C4AC288EB8152510B7D809098B9C90B8B820298C
          B8454510BBB008A2171425C511BFAC0CE2979643ECB20A88595A9EF32B8FA825
          E514614B2A20705155F82FA989C065EF2168455D04AF6C84A0554D11BCA61542
          D6B543C09A0E085CDF19419B3E46E0A6CFC91708DAD20D113BFA2272EF50C41C
          9E88982393117B7C2A124ECD40D2D9B948BEB01029979722E5CA0AA4DD5A8F74
          972DB8EBB61D191EBBF1C8EF0810CE40218AFFD9C8F30C12AE324860B0202430
          6048BCC940C1194875055218DC2791140610290C20EE3080906650EFF20663BC
          BF606060609095105E1703797D0CE075D29F04FAB39BF8B39F1FAF9F3EBC8E7A
          7B6A787910FEF6F521D29FBF3D79ADF5E035D7F9161E5DBD82C7D7AEE2F1E5CB
          7870E11C1E9C3B8B8767CFE0FEE953F48E63483D7218A9278F22EED821C49C38
          8AE0C3FBE179601F7C4E1E43C46DF9B0A58DF5FB83D8EC69F06F46A24D9ECC0F
          280E77291429872812D232CA123C0EFE0E0FFD4720C3B307529C3B23E16A7DDC
          BD5E0977AF156700501077AE385054F2909C94FE77D88F81C09537C86B48A5F4
          A75E7985503CAF5248C99D2BFF87F48B2FAAB41EFD09804AF121772E50D22F50
          AACF6747CA050ADFF9D7483624B17F12A7115229FCE9A739EDA95771EFD4CB16
          50E24D2FEBDE3BF97F8A8C131A77E5455D6B24AFDFF462AEF9E55DC14AFED30F
          334811E957A2AFF39F157E1D5BB22FFCAF853F95922FA450F285644ABE25299B
          B87EA6EE248ABE5E26AD17E9FF3F44AFFB3F44B28C5AFF22A237BC8498752F2B
          B47C7FB2FA55C4AECAA68813C15FFD0625FF2D55BB1FB7F23524ADA5F80BABDF
          44E2EA77382C0703809C885B9E4B91B8261FA7C9CBF1F32266653E442FCF4FEC
          4901C42E2D88D8C54510B7A418A55EE4BE042985B8A52511B5582362710945D8
          124B8A21747151842F2ACA69CB227E7179060A0C0A58C6B08C5C581E110B2B22
          6C5145842EAC84D0455510BCA89A161C2CA80ABF855511B0A8068297D462FF9A
          1CA716E7579BF3AD87F0658D10B1B219C257B544F89AD6085DD91A616B3A217C
          FD0708DFF031E27EEE8ED47D03907E7008520E0E45ECDE4188D9C7C081C41E1C
          8EF8C3239178742C928F4D40D289AF9171612A322E4EC3FDCBB3F0F0EA1C3CBE
          B100B8B5087059C2587F25FFEEDBF1D87F376F6CFB81E08340E851208CC17FF8
          498DD01340C46920FA02838B4B40CC6520F60ABB196024BA30D0E00D2E8137BA
          445E339278D34BE1F523D5683ED5C0C0C006E1BC3684F21A112232CD6B4620AF
          1D8114E480DB946A575E8F784DF175A658136F4AAFE04517F1E46F0F966EBCEE
          DCE475E81ADDE4DA59E0EA19E0CA29E0C211E01C5DE50CAF63A7F60127F60007
          E92D07B703077E06F66E01766DC4E3ED6BF1F0979578B07529EE6F5982F40D8B
          7077DD42A4AD998F94957390B4742612164F47FC829F9030FF47444E9B8CA81F
          2721F2FB6F103E6522C2BF9D80D089E3103C610C82268C80F7F8BEF09ED81B5E
          5FF781FBB89E701FDB1B6E637AC17944775C19D80527BABE8FE3DD3EC4B12F3F
          C2912F3E201FE278D74F70BE4F779C1F321087460CC7FEAF27E0E48CE938357F
          0ECEAC580EE7BDBB11E96A08BFC1FF0AF90EC05DFED1D279E3CFE09FE92EFF3C
          29CB79F3FF010F4306E0516017DCF37A1F29B75B20E1663DC45FAB8EF8AB1591
          74B50C122E1541D22527921FC9977252FC5F27D91810BCA490FCFDBB2A873F9B
          4AF791DF42DA79213B85FF75F22652CFBD4134E94F3EFF0A922F302810E1A7DC
          DF3FF9321E9C7CC9CC7D8ABD20A27F5F177E13779F22FDAABD7D9245F82DA1F4
          A71FA6C453FA75C9B7C4107ECEDB86F0EB829F48A91794EC0B14FD0412CFE171
          9C2E96A510B7F145C4AD7F81BC84588A7FFCDA5711BF46643FBB39A73F695D0E
          24AD11DE51D21FBF2ABB0A021256BD4DB17F47097FC2CA5C0C02F250FA7398D0
          0280B8E5B911BF9C41C00A7B24AE10E12FA4A43F665161442F2E8C188ABC104B
          A98F5E5A8C716E51442EB5A488226249614472FCF805459040E2E7B39B24CC67
          F0B0A018E2E6733E0B34F4A705511C16C1FE3A91F38AAA71D534EC8E9DC7F598
          CBFE738A9112089F5D0251F3CA72BCF2089D531E4133CB22644E25061435186C
          D440C8BC77192CD444300386A005354DBC87A045B51948D443C8E286085BDA14
          A1CB9A226C5973842C6F89D0E56D1844B445F8CA760859D511FEAB3F86EFDA2F
          E0B7AE2BFC367483FF861E0ABFF53DE0C33260733F84ED1C8ED8FD139078F85B
          241CFA16712C938EFD8094D3B318802F45C2E5150CF25723F5FA3AA4DFDA88BB
          AE5B71FFF62F78E0BE138FBDF6E091CF7E3CF63D80C77EBC2107F0C61CC48022
          98C144F0710D092A8430F60BE30D3C82377295EAC4E022E62A038C1B2C79B38F
          1578E38FA314C45210E2186C247913CA834E7200AF4D16D8BA9E1918FCAF9173
          53CED504A960E3EF58DE63A58CE1391C6F3A6F6329C7711C1ECA733DD6749E47
          508AC3F91F88611943590EA134877258388785711E21EC0E6377A80F1E8940CB
          B01006E2C102FF2F4AB039BF0076FB51B4A526D983BF6F5D63C9F145AA6F9E03
          9CC92DFE179D79CFBFC1FFEBD5C3787C85FFDFCBFBF1F0C21EDC3FB70B0FCEEF
          E6BD7527324EEC40C6D16DBC37FE8C3BFBB72265EF66A4ECDE88E45D1B10BB65
          39127E5985D8CD4B10B56101A2D6CE43C49A59885C3D0BE1CBA6217CF18F8858
          3815E10B7E40C8DC29089A3D0901B3BE86DF8CF1F09D3E0E3E3F8E81D70FA3E0
          FDDD48784F1E81DB5F0FC0F5113D7061E017B8D0F7635CEBF3316EB1BCD5EB43
          DCE8F13EAE75EB881B5D3BC2B54767DCFAB23D690BE72E6DE0FC792B387FDA0C
          B73E698C5B1F37C08D0FEB2A6E7E548F653D5CFFA02EAEBD5F07D73AD5C5950E
          B571B95D1D5C25975B0B7571B9651D5C6A5117179BD721F570A1595D9C6F5E0B
          279B55C6F1561571AC45451C6E4E5A57C3714E7FA4631DEC6B5B07073A35C691
          4FDBE0E897EFE350970F70E0CB0F7166602FF84E9D8CE8D5CB10BF6F0F12CF9C
          C12337573CF4F6C47D3FD379F01FC2664F0383A72317232F3C965420300878C4
          0BC2035E08327801485D8F7BB1F3911AF62D52FC8722D5AB07925D3F44EAAD16
          48B9F21E522F5640FAF962C838570077CFE641DAE9B7D99D93C29F83BC89BB17
          B32BF1BF7B8172ADDAE07F81E3BD485E3637CB99719A8101B97F2E1B2F3884FD
          541BFC26B197A6391F9CD64AAD594E53292DF588F093744ABF34CD99C6EE34CA
          BE2566F167B73C11B00C04D28F68A4999BE314FE5EC2FF5BA45F177EC196E467
          61F38BAA759E148ABA12FC0D5C1F0B5228EFC9147B5B88F42BF937050566D60A
          2F2071CD8BEA85DEC4D5AFAABCFEC4555293FF367F6B79FB892BD94DD15748F7
          CA1C2417453E0F1228F60A917F92B45CC88DA46579483E62A7B184E26FA60071
          54489A8FA4FB6422814126318B182C080B29FB94F64C8A50F60B67216681C069
          48F4FC82666275E6719E247ABE50441145F1D7284EE12F8E080900E6965484CD
          2EA5610A0A226673F82C968A52ECC761334B2374565984CE2C67A20282679199
          9510348BCCA86CA2A289CA089C591901D335FCA75581EFB46A089CF59E226876
          5D04CDA987E0B90D4C3442C0BC260858D80AFE8B5A2170515B042C6E8BC025ED
          E0BFA403CB0E2C3B2170D9FB0858F681C27FF9470858F1B12270C567085CF989
          EAF69772D5A7F05BF509BB3F43D0DA6E88DADA17F1BB872161F70824EC1D89A4
          BD63907C601C520F4E44EAE16FF83F9C82B423DFE1EEA999483F3307F7CF2EC0
          BD730B71FFFC223CB8B4040F2F2FC3E3AB2B282AAB79995AA3716B1DD908B86C
          065CB7006EBF000C4AE0B19B25F1DA0B781FD45ECAF63D4C2132E1CF20C5FF28
          2F7D442F5537839500062A8124E0D49365800CB7D1DF5C52A882CE33B8E17534
          46248EF215C9E0269AD22542172B522730C0D189A5A4C58B00B28CE330F58485
          BFAD4BF5D445C67DCA7055721CBD4CE0B80A992797A3A3F797E02A96E3C5521C
          454E6328A28274AB7E266228A0311C57474DC7E9655B74F46D89E6364773B84E
          14C71322B97E3A7ABF08760BE19CFE09389F30EEB3304A6BD8154A2E03C5D04B
          1A610C1C75E477C8458A2FCB2096B608E4780126FC4DF8527EFD789CFC39DC97
          A5078F9F2B8FFF6D8AF06D1E631796CEFC7D8BE7CDADFD14649E4BC2F51DC0B5
          ED1A57B751987FC1C34B5BF1E0E216DCBFB0190FCE6EC4E393EBF1F8C41A3C3C
          B6060F8EAEC6FD43AB90716005EEEE5F8EF47DCB90B66B91E2CE8E7948DD3E1B
          293FFF84A42DDF2361F324246C9C8CF875265633105FF50D62567C8DA865E311
          B5641C22978C46E4C2918858300261F3862164CE2084CE1EC2EBC000F8FCD01B
          AE13BAE0E6888FE03CFC23B8283E80F3B0F74927DC1EDE997482CBE0F60AE741
          ED706B605BDCEAAF71B35F1BDCECDF1AB77A37C7CDDE4DE0DC8B32DDB3296EF6
          68825BDD49B7A60A976E8DE1DCB511A5BB3E6E75A9839B5FD4C68DCF6BE2E667
          EF52BCDF85FBC70DE1D6A91E5C28C8B73BD783EB071CAF13C7E9504B71BD7D4D
          5C6B570357DB56C3B5365571B575255C695101179B96C58546A571AD4919DC64
          F70D96D71B95C5B5866570B541695CAD5706D7585E6F584A71AD41715CA95F84
          C30AF37721C5B5068EB8D1A820AED62F802BF51CF99BDD1C7EA96E215CA85308
          17EB17C785062571A69E501AA739CF13B54BE358ED52385DBF222EB67C0FA79B
          93B60D70B673739CFDA815CE7ED11197FA7581DBC411F09BFD3D42572D42F42F
          1B9072EC20322E9FC73DE7EBB8EFC9F338C014E8FD97B1D9D3C0E0F7C10BFE63
          DEB0EE330848E7852F8D37D4E8C5BCD84EE385743C1EFB0CC463F7AE78E8FC3E
          32AEB7C2DD2B0D9072B12A92CF9741E2B9E2883F5B8050CACEBD8D94F36FAADC
          FE3B14FBF473D979337F0DF7CEBCCE1B3C838213947E724F5279E4635B6728F8
          E4C1D9CC6ECB663945F2EF90544ABC19D52E3F65FC24830A531020C27F87729F
          46B9D779AAF0EB58B5C3FF57177E5B826FCD6FAEE1377D942B79134B117E2BD9
          FF55E1A7D8A7903BEC16528535ECB786D3ACE6FC4CADF724AFCA465E43F24A4D
          F8F5177535C9B7107D25FB7929FA22FC147B117C0B929791A5F94C382844F893
          96E4379564710145E2A2AC48006086C3E31739207EA12385BFB009C9FDCF14FB
          380BE2E73B99899BE7C820C001097359B25B845F0B0074E1E7F4730B12CECB82
          E83985103997C3E73018985DD8048385599C87CE4CFE361133A310A26670DC19
          C51039B3184B060E8A928A88E9A51039AD0462A671DDA7719A9FB81C76C7FCC8
          80E3274E37B50822D91D3595D34F2D414A21EAC7D2A48C22C244C80FA5494984
          4E2DA30836534E1138B5BC22E0FBF2F0FF81E5D44A59F0FBBE027C7FA8A8F0FE
          A1027CBEAF04DF1FAB20707A4D04CFA903FF19EF2160461D520FFE33EB216066
          4345E0AC46A4097C673486DFCC660AFF59CD494BF811FFD90C4448C09CB6F09F
          ABE12BE59C762CDBC16F5E7BF8CEEB08EF051FC26BE187F05CF011CB8FE1B9E8
          13331EFCEDB5F853782E113E33E3B5F4738D255DE0B9F84B85D7A2ACA5E7C22E
          F05844167C01F7855FD82C6F2FEC0ADF754310B0751CC2767E8B88DD93C91444
          EEF90E517BBF47E4BEEF11B5FF078D7D3F2AA2F7FF84A8033FA932723F7F1F9C
          86C8434F127578BA22FAC88CA712737426E28ECC3621DDC27445ECE1690AED37
          FB1F9A41669139883B38D74CEC8139883D385B1173609609CEDB02B5CEA6F5D7
          E03AEEE5FAEF66F74E6ECB0E0EDFCE6E1391DBA69A09FFF97B45C4D6EF14E15B
          A6642174C344846C184FC62278FD18321A41EB47981806FF35831501AB87C27F
          D510320C7E2B87C26F05872D67BFA543189C6612B0783083578D2013FEF30728
          02E7F587CFCC5EB8FDC397709EFC195CA67C0ED7899F286E4FF8182E5F7F08D7
          F19D716B7C27388FA3245B706B2C85794C07DC1ADD1E3746B5C38D9194E6E1AD
          E032AC055C7586B4A45CB780CBA056701ED812AE03F8BB3FFBF76F06977E4DE1
          DCB7115CFBD6874BDF3A70EE539B925D13B77ABC0B97EEEFC2F52B96DDAA53AE
          AB295CBEACA270EE52192E5F5486F3171570EBF3F2AA14AE7F541A973A15C3B5
          CE2570BD5309DCE8583C0B373B68B8742C09E70E2570AB7D49DC6C5702CE6D4B
          E2561BFE56148773BB62706E539814C5ADD645142EAD8AC0B56531854BF34226
          9C70BB790113F6C40E6ECD0AC0A35111B8D72FA6F06858029E8D8B2BA4BFE0D5
          A498C2BB31695214BE8D8BC287FDBD1B168657834270ABCDF9D42900CFBA05E1
          59AF08E1BCEA958057FD92F0206E758BE376BDA20AD77A85E05CC749E1C2F1F5
          DF37DE2B806BB59D70BD6E115CAE5318E7EA14C1790609175B56C2D9965528F4
          EF52E8EBE2E2A74D71E98B96B8D4AD1D039E8FE136A207C27EFC96D7F099B8BB
          7E15B0FB67E0E801E00283F99B57B5272792FB6FD395FE37D8EC6960F0A7F0C8
          97F2EF01DCBBC500E00A90CA4020F9201EC76DC7BDC84DB817B60819011371CF
          7710D23CBE42A27327C4DD6884E8AB55117BA90CE22E1541FC794AD985FC483D
          9F0769E77321FDCC3BB87BFA2D649C791BF7CFBEA17D4C4BC4DED4724F3A453F
          8DBF45F005CBE63995E09F78D9C4AB26D8ADC45F937F353FA9D9D73109BFA002
          80FFB2F0FFA55FDA350B3FC59C246D7CC94CF2864C92D653DED73D89887DEAEA
          5790B64A2375753696D99042C94F59C9722525DF24FA1A6F99655F13FE1C2A75
          27612505DFF4A2AE6AA567B99D96B663460200A9D52722F90A27855EA3AFBDB4
          9B4916C137497E2694FD455C0E89A5F86B50B849DC82020A4BC94F9C6701455F
          489AC3E5903853EDBEA4F398994309A7F40BF11C47889BCD6081C4CF623993CB
          31C3E599C9EC1F3BC389D22F50FC67328850F2AF05002A08985E14D1D335D98F
          FFC9917079EC8EFB91D3FCE484E8A90529F6E4074EFF23830B06002A08F8A1A8
          22E2FB220AD53FCBF0C20A7D78C4F7C510F65D5133A153E4777145C8F7C51134
          A52882261753047258E0A4E20898ACE13FA5047C27E99482F7A492F0FE9625F1
          FA86DD134B22645219844D2AAB90EEE06F3209FCB60C82269557047E5B0E01C2
          44061EDF9487DFC472A40CFC388DCCDBF7DBD2F0F9462BF56E594626A56DE233
          A10C2907DFF1E5CCA5F7F8B2F019575695DE63CBC06B5C199BA5C7B872B83DAE
          02DCBEAE0AAF49B5E03DF93DF84CA90DEFEF343C27B3DF943AF09A5CDB8CF794
          7AF0FCAE9E2ABD26D7E53EA9CBF5B58DDFA47A669E36DC7B22E7417CBEA947EA
          C0FB1B2E93F84CAC9905EFAF6B98906EF69BA0E139FE5D85D738DB788FAFC1B2
          A689F734C6D681E798DAF018FD1E3CC6B224EE63DE33E336BA9699DBA36AC275
          640DDC1E5103AEC329B656B829AA296E0FAB4A2A539E2BE0F6500D97C1E54CB0
          7B50258A34E597B8F4E778FD2AE3765F4EA3E0EF3E95146E26DC7B578227FBBB
          F7AE08B75E15E029658F72B8F52565F8730AEE1725E0FE7969852771FBAC143C
          3EA3647E4ED96429B87FCA71CCB0DF271CFE09BB3F2EA14A974F28C826DC3E29
          AEFAB97D5C4AE1FE5119DCFE80DD26DC3F2C09CF0F388F0F28C726DCDFA7305B
          E0D159C3F383C20A8FF70BC1AB73217876A21013AFCE4EF07EBF20BC3B39C1A3
          BD033C4D78B4B3CFA46D017899F06EE304AFD68EF06C29707ACABB6733CE4BE1
          088F169C0F716FEE68A2A04286CBB85E147D1D6FCABE573307629F891A26E365
          CED7ABA989C61CD690EBD0A0007CEB17805F7D7BF8D5B553F8D7CE0F9FDAF9E0
          D390EBDFC85105009E0DB5E0E1763DEEC7BAA5709BB8D66180523B936BB54AE2
          6A4D062B75CBC3BD4975B836AE0997A6B5E1DAAA015C3B36C1ADF75BE1D6671D
          71BBCFE7F018D987FFC7D1F09EF12D0297CD42F4B6D5483EB21DE9170E01AEF2
          F4C705F0A3DF04FDB5A4FE59D8EC6960F09FE6D1437F3C7EE0CC60E024707737
          688E40FC32DC8FFC09E9C16371C7A71FEE78754182737B245C6F8AF8CBEF21FE
          4265249C2B8584B3C5907086F274DA0EA96772E10EE53FF5CC9B265EC79DD342
          76CAFE6B94FE57917E329B22E3C46B8ABBC75FA7C073D8916C483EFA0A928E50
          568F52408F528805CABD7C51576AFB0DE17F067F58F85F32497E76A45A20B22F
          A29FB432BB4AE3B1C49CD223A5AADDD7527834F292FC59445F4BE1D1D378A466
          DF4EABDDA7E42BE1A7DCC72FD124DFB24C5854C88227C55FD5F09B643F860180
          2EFE310B0B28E21650CC49A6F417D2989349C2DC424AF8A5565F937D536992FD
          D8B99C5609BF883EA57C3697C9326E16830D0ABE20A21F3BCBB2E47025FCFC4D
          34E9D7C45FA38842643F466AF6A771BED3385F25FD9CF647CE8344FFE8A810F9
          8FF991D399E1B4530B2B627E7042EC542E6BAA03E28894B13FD8B33F97FB1DF7
          0589FD9EE390E8EF393F1235C5290B11DF15CCCA14060B247C7221844E2EC8B2
          08C2A698605020844E62E040C248C48402881C9F49F87847E2A0CA88094E08FB
          DAC404CE6F7CC1AC4C70240E08199F5F6342BE2C65F0F8BC081CF77482C672DC
          5176081DF9242123388C040FCFF754824670DC314E081AE388A0918EF01F5100
          812480DD1A05E137DC51E13B8CC2335C7E671230AC20FC07733CE23FA88019F9
          ADE337D0210BBE03EC15EAF700CE7340212B9C08E7D3DF411130404A7B13F9E1
          D72F9F2280DD82FEDBBF2F254C2FCD7059BD2966BDECE0D3D381389A2808DFEE
          14C01E4EF0E94D09EC63AF4A6F8EE7DDCBC15C7AF5CC9FF9BB873DBCF9DBABBB
          1DBC7AE4D34AE2DB9DD37EC5799BF0EEC669884FB7BCF0EE9A07BE5F711CA11B
          B79DF8742D40B83FBFE47A7471827F17EEC32E854D6526015FB0FCDC09BE9F71
          5F7DC26DF9D41E019F717F10BF4FB8ED9FD823E8B30208FAC80EC11F3A5820BF
          3309FA203FB147E8070E8A90F70B98097C9FEBF57E5EF87C905795BEEFE727DC
          679D29B89D794C3B713D3B68F8B5CF8A6F3B8E23B4E7F816F853D8FDDB717D4D
          F8B5E53132E1DB86C7AA4D1EF8B5CB0BFFB679B56EE2DF9A652BFEB620A0258F
          31096E638F90D60510DC8ADB46E90F6AC16D26C1CD1D1048C10FA0B0EBF83300
          C884FBCFD4EDD794E7994E13EEBF265CD7C63C279AD8E176E3BCB8DDD40E1E94
          7FB726F9F93B9F2ADD1AF377433B4DE6896F23CEBF21A9CFF992C00685F8BB10
          E5DE01B71A38E256FD42B849D9BFD68052DFB01CAE36AA88CB4D2AE37AAB7771
          A92569570B573BD5C7E5F71BE3DAC72DE1D9E323840CEF83D0D1C31031711CE2
          7FFC0EA90BE7E2DEDA95C0CE5F805347B497833D5D35A90FFBFB48FDB3B0D9D3
          C0E07FC2631FE0A13B90710D483D0B86D340C2763C8E5A85FB21D391EE3F1669
          0C04523C3E45BC4B6BC45DAB8F94CB35907CBE02E24F9644DCC9A2483C5504C9
          A70A22E5A403524EE447FA893CB87B2237328EE7C0BD6339F0E0584E3C38FE0E
          1E1C790B778FBC8974F64F39F10E928EBD41D17F8D50388FBD4AF1A7AC8ADC8B
          E89B9020C0F8D26E5692B6BC88448ABF201FDB9266382D91B41E699147276B4A
          0F87AD6540B0864197996C2A675FDAE78F5F6D6AA7DFD456BFDE5C67C25AADC9
          CE84D552FBFF165256BC4D781C97E752242FCB9995E5EF98BA732375691E920F
          A94B34F18F5F6A8FB86514E8A5145D12CF40206E2931E5ED2B1615798278532A
          8FE4F2472FA6189B885E48B9257A6A8F96BF2F682FF0C6CE2BA631B7842A45F6
          A316E8293D5A19338FD32B28ED94FED8B914E83914E8B97688A3F4C7CECE4FB9
          B737C165CEA674EBA539A54724DF12CED782E8E91CC724FCB136845FC9BB1991
          FAAC88D48BDCC7FEC07521F1DF6B65DC77F910F3BD1D62A7F03789FB4EEF6620
          30D94E113D29BF9998490E88FE9601868998499CFF64AE2FCBC8490510F58D03
          22BE35F14D8127889AC8E9BEE1B69B889AC84082FDA48CFEA6A0E9B75008915F
          17CC42F8C4820C06285F5F53C41414704E1B3A9182C632F3772632BE8E041B11
          E3B89E63B3123186FD4D848DB27F36A319148CC88390610C22866A6528838130
          060B61C3B91EC3183C0C65F0A0E0FA0C937E943076EB040FE13C7E85A0C10C30
          9EC00E81FD1970F42F6A416104F62BA421C30650AE5806F7A3E43100C884CB25
          41FD28BE425F87CCD28C2382FB080511D4AB10296282CB21813DB92C4A7C60CF
          3C08A6C4075B9441DD1950F5C8ADCAC0EEB910F415FB7D950B81DD72939CA632
          378229F3C114FDA06E5CB689C0AEDC2E13C15FF2B852F27582BB707D4C047DE1
          88404ABD88BD4EE0E714710B023EA3D47EC2D202FF8FED10F01197F909E74DF1
          0F610090893D82395C2784018125C11FF27890A00FB8FF49E08796705F080C10
          023FA0584B5040F117823BF1189808EAC875EFC87DDA9EDDED395E07AE8B0581
          ED398FA7D1964119653FA08D46701BAE9382EB2D652BAE1F0969CDF525812D38
          0E096ACEFD4F029B71BF93A0A602CFD726DCA78D35821A71D90265DD5CEAE8C3
          14DC2622F2EF41B9776F610F8F960E706710E146F1776FE9C47E854831B8352D
          CA00A038030176372C0ED7FAC5E152AF185CEA168773FD12F06C5B09EEEDABE0
          76871A70EE5C07CE1F36C1AD2F5AE3D6571D71BDCFFBF0F8BA276E4FEE07CF59
          2311B852D2C0E62276EF6AF5C231DC2F6AB5F4F222B3BCEC1CFECF90FA6761B3
          A781C15F8A075E0C02AE9013C0BDBD40FA063C4E5C8887513FE071E8783CF01D
          8C3BB7BB23F9E66748BADE194957DB20FE4223C49DA981C4D3559178A22CE28F
          1643C2A182483CE488944305907AC81E2987ED907A3C3F928FE546D2D11CE41D
          A41E7B1B778EBF853BC75E27AF21EDE8ABE465C51DF9D2AEF1E1AD2C68C2FF82
          2241B5BF2FA29F593E5BF8FF0F89EB386D165EA2D0337858F3B20599D22FA26F
          C694EE93B2C242FA89127C5B98A43F7919A5DF2CFC94D2658226FE22FD42EC12
          C124FDB6845F5AE621BAF4CB0BBC4AFE1752A6C993C2AF49BFFE526EB4927DE9
          D6445FD5EE9BCA4CE117D9D750C26F227AB6BD09CA2E253F7A16976B812DE197
          141F4B62A653DA4D68D2AF11F313A59BE8B21FA36AEC33D1FB69B2CFFD359541
          4816B4DAFE841FB86FBFB7CF2CBF635035C58EF0B7B92493196450EC63BFE5F2
          29F552CAEFB849DCF7AA3F97F70D976D227A220306330E2A20D0045F2392E21E
          31C15E21DD3A4ACED94FABFDB73395D2DF49D5F44BB7D4F6EBFDC3C651ACC766
          8E27BF85F0B159116117224CF2AE97E152D33F4A13F79091796D966123A4CC4D
          B1CF4972219CDD1123F3A8327CA846E4F0BC881896071143F33D41F890BC66C2
          06E7B189F5F0D041B9CD8451FA83FB52F0FA52F648483F8A7C9F4C827AB3BFA9
          3BA40FBB7B737CA10F45AF6F5E45604F8A2A09EA4589B54118E711DA4B874153
          4FEE6F13213DB9CF29FCA13DB92E3D72D924B47B4E847C9503A1DD6CC17DF615
          F7C357DCDF5FF17890B06E7659E9C27E3608FD82CB26419F6725F8B3AC847D51
          10A10C048430CA7FE8A70C1C28FA52CAEFA08F28C324F0C33C26F221E003CAB4
          095DEC1532FC030A3309783F9746E73C2638BE89C0F7B94FDFA76C0B1DD9DD51
          4A22326F42893E096CCBFE2682DA31E05170DF9B4AE9AFC9BD26FBFA6FFFD65C
          4FF65335F92DECE0DF3CBF22A039C7B520B815E7DB92E76C0B9E27CD79EC4950
          335300D08CFD9B3922A469210437610022D24F0229F2810C0484000E17FC9B30
          A0227E8D0BAADA7ADF4685E0D5B8103C28F6AE2D1C558EBF4B8BC2B8D9B228AE
          352F86CB2D4BE072AB32B8DCB6322E77A88EAB9D6BE3FA870D70E393A670F9B2
          0D3C7A7482479F0F1032AE2742BFE98FA81FC72071DE0F485FBD10D8B11E38BA
          0B387F10F03C07F850EC83AF0251B78168CA7D0CE5DE9667FC0BB0D9D3C0E02F
          CF23FE691FBAB2F32618AE3308388687C97BF03061131EC42C4746D80CDC0DFE
          1A896EFD90E0F205E2AF7544FCA59688BBD808F1E7EA3018A889F853159178BC
          28459FE271281FE20FE741E2919C4AFE538EBE85E423AF23F5E86B8AB4A3D955
          0A50DA619687E4E35BDA07B8F4B6F8FFBDC24F69DFAC21C2AFA3A49FA5DE2CA7
          4EB248BF0969A5274B539D2451FA51FC45FAB5167AB4567A542E3F4959F5A689
          B755EDBE750B3D92D32FCD72DA466B925372FC139639229E88E4C72ECF8F5829
          6D0ABF454D3FD1D37CE21716542450E48524CA7AC202F6B3C8DD17F4D41E4152
          7DA21750D84DC4CE7754693D42E29C22A6549F2248982D693C59899BC5E59BD0
          6BF16D22293F16293D3A71D3B322B5FA82D4F25B122DF9FB8229A527138ECB40
          C0BAF63FFAFBA73085722EB5FAA6D49E3849EFE1EFD8C99C5E2F89D4E40BAA86
          5E6AF859C67CA39522FF5AB78608BE25515FDB2BE1D79F0E28F9977E16648EAB
          0D8B944060829DA9E47A4CE4764FE03E1DCF6D2752C68CE3F68FE574968CC96F
          93C8517911393A1FA246719EA63242FA8D14F9FF0D25A7915288E2FC64FA704A
          7E18255FCAF0E19459123194F32591C3B8DE44FF1D3198C307517A9F41D840CE
          8F840EA0F05B3290C23CF01D8EF3362206E53021FD186C0CE0B207707A0597D3
          8FEBA8D39F018889B03E9C771F8ABD2A054EDB2F3722FA0A3929F96F53ECDF32
          13D6E31D33A1DDB96CCA7E780F2E8B8475E7FC4C845B10F6150382A710DC35A7
          09E9CE8DA02FADF8221782BB709805415FE4D4FA7F9E0B219F32A0F834F75309
          FA98D37C42B9A5D4078BDC9BE45D6AE955ADBDA4F67C2AB5FC7ACDBE94E4A302
          99F077C84702C7FF98D3AA7971DE0C00823B739ACE0CA8DEE7F02C70FE24B813
          C7B5A423FB99E172DA3330A1F86745EB17D241FBAD49BE161004B6734080A4FB
          F077405B7B42296FEBA4F06F43316F5DD04C409B42F06FC9FEC48F522EF8362F
          6042BA1DE1DDAC9019C9E9573497DA7A2DA7DF8DD3B8352F480A2B5C9B1725C5
          48094ABE500AD79A16C735CAFDEDF76BC0FD8B0670EDD60CB77A49AB401FC26F
          F240F84E1B89C0F99310B26A1662B62E47F2BECDB87F721F1E5E3C4AA1BF41A1
          77219EFFB3966FFE4ED8EC6960F0F745FEF40C041E5ED0BE1E7C6F1F83819F81
          94D5A0A931BA9F8987615390EE3F0EE99E83907EEB13A45F6B83E48B4D9170BE
          3EE2CFD642C299EA48382D6942A5117BB430E28E3A3110B047C2E1FC483C9C17
          49877229920FBD8DD4436F108AE8C1ECE45545AA893B075E41EA7EE165A4EC7B
          89B22F50BC29FC99D2FF6CE1D749D945C17E0AC914FF6709BF2EFBC21D8ABC48
          BD5EDA42643FF537C8BEF054E1B720D1BAD94D5DEE4DB29F6538FBE935FD99B2
          9FD94A4F2AE55EE31DFEA6E8ABF6F7B536F8D547B756E542DCCA9C36C88DB815
          79483E6287B8E594D0E526E117D1B7907D49E9F92DC22F822FA22F249B4AF3CB
          B9F30B28E2E5055E79917721E74F6217D8217A21030C96B1AAB51E797957643F
          9384D90C2248BC45196F16FE2226B92F9C55F44DC42944F8A5269FDB602A9F25
          FC92CF6FC624FC51947C41E5F09BA178CB70CABFA4F54820103595A22DFCC069
          88E4F5EBF9FA5998422937A30703EC2F92FF2DD77112459BA54E1C7F4B3F25EB
          22F516A5161868921F3991024C540DBF127E4DECA3F95BC6CD2AF899A5361EB7
          7F1CC71BCBF5B06634E76141EC681E3312332A5F16A244F29F8204035263FF2C
          A4863F7438C573584E53B7A4F5508229FB5163EC29FE1476123A94C24E2C7F4B
          8D7DC410060D8318789088810C1E2CD0FB5B0ED344DEC4C09C08EFFF3ABBB36B
          4877FF3709C5BCEFDB2407C9A508ED4379B7452F9D1C26385D9FB710D13B93F0
          5E9C672FCE9B98FBF7947E1C576AF24D926F0BA9C50F21A15DB95F28F6219478
          417E2B2C87771328C5ECD609F9D21A6DFAE02E120870D914FF708A7FF8E7DCE7
          967CC6FDFB39F994EBF139039A4FB9CF256587C22EE21E4A8917823ECA6F8242
          6DC9870EAA94141D19AE5279CCA29F8BE45035FD4AF83B49CA0EA1F80775E23C
          3B5948BDB5F07760F0D191B467F021A89A7C4E470229F0D684747054A57FEBFC
          4AFA45F245F6FDF8DB8F81804F5B0778B77364E908AF364EDA4BBA6D0A2ABCDB
          168177EBC2A428BC5A155178B6280A8F96455916875BCBE27021B75A15C7CDD6
          C571BD0DC55D68570257DA95C2C50EA570FDA3CAB8F16975AD29CE2EF570AB5B
          63B8F46C01D7DEADE0D2A71D6EF7FF002EFD3F86F7E81EBCCE7D8D07EBE702BB
          D700277602578F036E9701EF6B9479DED3E59B0251C647FDFE08367B1A18FCF3
          F0011E7B018FDCB527030F6E01F72F3118380AA4EE6230B0058FA3562223640E
          D2FCA620D5732452DDFA23F55617245C6E8798B30DD453818433559170B23C62
          8F9744C2B1A2483842813A9817B1FB7323665F0EC41DC881C483391910E440D2
          C1B790B8F73524ED6730B03F5B16F94FDE47A956D2FF22D2773F890403A9BB35
          924912C55E4864FF244EA74F2FC2AFCB7DF2369614F65496822EF022F7692C85
          F49F5F604928F4D23F75AB04012FB21F83119622FAC21D2929F36628F4EA035B
          EC56A2CFE122FB9AF053D02DB0147F413EAE25526F8D7C6957900F6D25E8484A
          CFBA57D407B7CC79FB947DFDA55DA9D9D7784793FDD56F207ECD6BEAA35C8AD5
          6F91B711C76171A68F70996BF729FC5A0DBF56CBAF901C7E4ABEE4F04BFEBE06
          A5D924FA9AE053C27516F2981395D2B3506AF729FE0B1D91B4C05195822EF9B6
          90263945F6A554CCE3B2E651E4AD88B568A5474A69A127660E995DC89CC66396
          FC190C4A2D91FED3390F917D96CF4AE9915C7E4BA2A651DC0569A1E7092408D0
          4AD58A8F2EFB5329DCE66E4AF80F146D4ABE2551DF711C33F94DB07B32C57B32
          875B21B5FE522AA99F4429FFC6D19CB3AF973A4AEEBF66A0612A95CC4FE0F416
          A57AA95764DFB25438A93C7C6B22C73920622CD78FD2ADC1F5B5A8D9D7B125FA
          82AAF9FF0DC21F3E9222C9C041D27C2C91741FBD9420C026A6B41F91FE7049DF
          114CB5FA96E26F29FA910372672162C0DB59081B4069EF4F8117FA51AC155C16
          91149E600BE47758EF9C14F877CC88EC9B91DF448280CC804023BC670E840814
          FE901E9CF713E44370776EFB575C164B11795DE87542BB0AF915615F6AA54EC8
          97DCA716045B11D485F325A19F71DB3E63C0A04A0D25FA94FC1012FA19C7FF4C
          6AF2F323F0138AFCA7F608FEB480CADF0FA0D0AB1C7E967A6EBE8ED4DE67A209
          7ED0476F2B023F7C0BFEEFBF0EBF4E6FAA949D604A794847278488F4772CA06A
          EEC33A1540786747847674A0B473991D643C6E4BBBBC086CC7F56C67A7C65112
          DF9AEB4202DB70BD28EE3AF25BD5E853F295E013FFB6147F4E1BD8DE1E01ED1D
          E0C579BB7770803B0307B7F605583AC1AD5D41C5EDB685E0DAAE386E53DE5DDB
          968473EB12B8D992B42AC9E115E0FE7E35387F5803B73EAD03972F1BC0B97B23
          DCECD5426BA37F48275C1FFE31FC7E1A8880F96311BEEA7BC46C9DCB7BD70AA4
          1FDF0C5CDC0BDC3A49A1BF0A784A0DBD1B10C8FBB3CD7BB7C19F85CD9E0606FF
          3A1EF933089026446F02771908A41D2707180CFC029A23103E138F8227E1A1DF
          18A4BBF747F2AD1E48BEF13952AE7546E2E556883DDB1891A7EA22EA446D441D
          7F17D1C7AA20E6080383232511B39F32B5DB0EB1BB299C7B7221717F2E060039
          91BCFF6D24EE6640B03BBB99C45DAF289276BC8C7849D7D94501DEF5224BCAF4
          6EF9AD91B893B24CD197DA7D917DBD565F4FF5D18380B41D2F29EE6CA7CC9B6A
          F855BA8E1275917E4DF675E1BFC3FEBADC6B5FD0B501C7516CE67A6DE2FA3C0B
          8ABDB9F6DE0A49DFD1A43F53F855CDBE48BF9EBB2FC26F967EEEABD56F2A44FA
          F58F6E6935FC7A2D7FE6D776B388BE95EC272CD310E157B26F25FCAA451E536D
          BEB5EC9B859F68293D5A6DBFAD941E6B543BFC6644F629E74F917DC15AF8A5D4
          5FD2D5DBDED76AF5B36216FBA710AD645F937E4BA2A7519A0591FA5F41E43EC6
          94DB9F09A755693D1CFE9D7473DC2CC2AFCBBE0993F0EB826F5DFE9AF08BE4C7
          7C9D49F4042EDB0651E3B96C2B74F18F10B9B722729C1D859FEB2752AF33361F
          25DF12F613B97F8AECFF56E117B47C7EDB64157DCAA9CEB09C26E1A7F8FF66E1
          CF2AFD11FD73911C66C20670BE26E10F919A7D0BE90FE99BDB2CFD7A0EBFD4F2
          EB62AFE4BE8F8EF417380FF35300D293F332959AEC6715FE2CB5FB5F715C0ABF
          A0C93EFB49ADBE82FD49D897D688EC7378170652163C110098843F58093DFB7D
          CA6508A6976F833ED5C87C195790741D0AF6C75AADBD0400D2ADA0F4AB9A7C8B
          1776833FD6F2F645F8A5665F08F998EBF621B7EB23EEDF0F180874E27C3A3B98
          D27A0A9891DF3AF23BB433FB77E26F0603411DB82C22D2AEBDC85B48BDC41BD8
          C1C9D48A4F41F8B477D2E858083E9D0BC3F7FD62F021DE9D8BC2A343210ABB13
          6EB573C4F50E4570A97D115CED5412B73EA90097CFABE1E6675570E38BEA70EE
          561BD7BBD5C58DEE0D71A36753DCEADB0AAE833AC067CC67089BDC1351D30621
          76C104C42D9F82D40D33716FC7623C3EB81638BD0390AFF23A9F02BCAE0001BC
          A786F0DE1AE9CB5BAD8D7BAFC17F0D9B3D0D0C0C2CB8EFC340C013B8EF0664B8
          3020B8C660E03239C380E0201E25FC8CBB116B9112B00809DED311E7F60DE26E
          8E44DCB5FE48BDD91B49173F41ECF1968839DC0031876A21EE4075C4EC298F88
          5D4510C14020624F6E44EDCDA388664010BB2727E276E744C2EE7728FFEF2069
          D75B48D9F906EEEC7A137777BD810CC5EBB8BBF335A46E7F19C90C0EAC49DA4E
          71DEF622122C48643F354CC6D9998DF37C05C9BFBC687A2A9099F2A39E086C15
          180C6C7E813020207736BF4C5E45DA966C665228EE7728ED4FC27991B4752CD7
          3290D0A1C8EBA4AE7901F2E12D417D7557475EE65D236879FC991FE07A1529AB
          B393D71592C39FBC22179297E735915F215FD0D5855EC3E1A9647E6557FFD2AE
          E068FAE09693C6C242268A98D1445FCAACC4CF2FAC318F4101899B9F95588BF6
          F633259FC102A55EA390396F5F30E7F34BFBFBA676F8CD79FA4AFA0BD82466A6
          C333899E41399F6EAFD27A54B39C26E27EB2D7C8F222AEC06116E82FE34AEB3C
          1AD22D1450F9FA7153B86E93D9CD52754BDEBE19AD051F415AE911D4CBB9AAD4
          645F2FF5D41D29B5941E8B5A7D12F7359765412C25DE1631E3ED6C338ED24FB9
          D7891E97DF4CA6E0F37F6922D61225FB76081FC36959EA448C92FC7C0D5DE86D
          113182018209793957881AF6249143F3D84489BED54BB9BAF0870F92DC7E0B54
          2EBE26FD6606EAC29F95F07E0C2488A4F4E8DD928F1FDE87BF4D44AA9232DF3B
          8F7A89D716324C08E945C115D15750D44D79FB962FE7EA8477CF24EC2B2EB39B
          465857062324E2CBAC3CD99FEBF4E53B08EFC2E99E81A4F2847D4E01FF9CD2FC
          B923423E33F139C59A847DA6A1A7F1847DC4E3F58994DC1E8A7AE80739382CAF
          6AA2D3E7533BF87CE200DF8FED157E1FB1FCD00E7E1F48CE3EE7F911E749423F
          60B708BD49DCA576DFFFFD3CF0FE20277C3FC803BF0FF3C29FCB1154739D9DF3
          C0B31387BF9F8FA26E074F8EEFC500C1F7032E8BF3F2EA640FF7B679E1DE3E3F
          25DE4ED5D4BB3100707DBF30DC3E2A0EF74F4AE3F667E528F11570EB8BCAB8FE
          79155CA3D05FEF5A03CE3DEAC2B54F13B8F6EF805B03DE87C7882F1034A51F42
          7F1A81C069C311307B0C42964C42C2F68548DCB702778E6FC2DD0B3BF1E0C641
          3C763B09F89C0782AE12DE0F43786F3464FE6F81CD9E060606CF896A49E83683
          81EB0C042E30103805A41C02ED1A8859CB8BE27C3CF2FF090FBDBF4586DB68A4
          5C1B88F88B5D117DA6036989A8D32D1079A229228FD547D4E15A883CF82EA2F7
          576600501651BB8A237A7B4144FD4211FB8502FB0BC5765B7E0A7C5E06032C77
          E641FCF65C24872261670E24EE90F26D24EC7883FD5E47DCB66C88FDE565C493
          B89F5F222F2A12D89D48B14F6229F29FBCF50555FB2FB5F7A95B5E42AA949B58
          92948D2F138A37915248DDC0E11B192C10917F417D3197DCA1B8A7AD63A040D1
          4FA7E06761350387D59C4E849FE32A2CE43F59097FA6F4EBF9FC496BB29B91DA
          FDE4157990B22C3FB137A37F5C4B845E2F85F8E5365035FC822EFB9AF09B3FB2
          A5B7BF6FAAED17F157DDA697759F2AFC26E97FA6F0CFE534EAA5DD4CE157EDF3
          53F2AD11D1D7D1DADA979A7C2929BD36889D41F97D0622FBFF3BE1B740B5CC63
          8926FB3AFA0BBB4AFC257FDF42F6B55A7D2EEB0F08BFAAE9FF55E1CF947E4BE1
          97FE59855FFBADBD842BC2CF92321F2EB5F92C55ADBE654974E18F1AC6E529C1
          D7CAE8A116E5903C84E3589592CAA3D2796CA4F4D8167EC142F84998BC786B85
          2EF922F622FA11FDDE4154DF7728F96F23AA772622FD4AF82D5AEFD14B5DF6C3
          7AB114C1B720A2878692FAEE4FD6ECEBE2FF54E1EFFAB6B90CEBF63642893E5C
          10E1D7C92AFA5CA60925FB5FE445C0A7F9881D023F7540E067947022693B7AED
          7EF8E70E4AEC8588CF798C25B7FF63AEDBC75CD6E77911F805C5BE8B03FCBF10
          0AC08FE3FB7F5A00011F3B21F09382F07BDF110124E8FD8208EA5C182142A7A2
          0AE927C1813703092F06159E1FE585C747F9E1FEB183C6A79477060C2E9F14C2
          AD4F0AE3CA878EB8FE7111B876A5C8772B8B5B5D4AC1A56B05B87C55052EDDAB
          E3668F7771B3572DDCE85B1FCE839AC265581BC4CEE98FC8D903113A7B0882E6
          0C47D0823188583E09C99B66E0EEF625787C700B1E1DD90E9CE3BDEAE6392D67
          DEFD0AE07B0B087507825D29F3FFDE566DFE69D8EC696060F067E10B3CF2001E
          BA106951880141C6253CBE73068F928E01B1FB81A8DD7814FE33EE05AD45BAF7
          2224DF9E8EA45BDF20E9FA48245F1D80A48BDD107FE603C49DE005FC7063441F
          AA8BA803351073E05D44EEAD8AC8DD9510B1AB22030306073B4B236A4731446D
          73520142FC0E06083BF222818140E2B63791F8F36B48FE391B790589BF906D12
          0CBCA68282841DAFF17776060114EBAD94FB5F28F72C05F9C096C62B48227AA9
          6060A0B7C52F587E7C2B653DCB750C0A28FD82654DBFCDDA7DA25AEAA1ECABE6
          39058E2B39FDF16BB2A936F813D6725D0549E9599943ABE5A7F8EB685FD6D5D2
          78F4525279CC2FEC5A42D1D75FD47D32875F28A4B1486B8E53527B54B39C0B29
          F41639FC36F3F79F99D2C365A89A7D6999C7122E437F51D782275BE9D172F5E3
          67085CAE1571D3B9AC2C705A0BE4ABBAC2AFB6D23395FD9E8239A5676A7E1B29
          3D0E2A852733A5A7800592DAC36126E18FB3C537DC0669A98762AF23729F8949
          FC2567DFDCD6BE1322BF76B489D62CA72D9CA07DAC2B2B92C71F3EB680B9F9CD
          081B489A8F26F9947005855D7E8FCA634AE9A1988F90D49DDCAA8C1A615D92E1
          0C1046502455EB3B9C9FA98C1A6A510EE53C87701CAB52177EA9E997D67534B8
          3CE129293D59645F5AEEE94FB11D901FA1FC6DC694B32F2FEB6A2DEEE4A4F0E7
          54821FD55B47137E95B263127BE98E6019D12B17227B6A44F5E4743D7220BABB
          891E6F23A6BB4644F77794EC4BDBFB92B39F8926FE92D2A3B7C6232FE70A615D
          05117BEDB7BCB02BEDF36792476B9F5F7F7157D277F4549E2E766682BFB05704
          75C9AFF2F903BFC86726E8F34C82BFC84F81CF09BF4F7220E0B35C0ADF8FDF81
          CF476FAB7EBEC44F8613FFCFF2B0CC0B7F060AF261AEC04F1DE1FF9123023F2A
          440AC3FF83C2F0EB5C04BE947DC1A77351787F443E2902CF4F8AC1FD93A294FB
          6270FEBC246E7F5509EE7D6AE056EF1A70195417CEC31AC1795473784DEA8C90
          D95D11B5B80FC216F587E7ACFEF09E3F1201CBBE46D8BAA988D93A1BC9FB9623
          E3E4563CBCB0077039ADB537EFC37B8F3FE55DB5396FD4C6FF5BB1D9D3C0C0E0
          7FC07D3FE0AE3B70E70690721E483E0E24EC05E27ED69E12842F028267E391FF
          5464787F830CCFF148BE3104A9D70721F5DA00A45CEB8DE48B5F22E1D487883A
          DC0A91FB1B207ADF7B88D9571DB1BB2B22665729C4EE2C8A986D94BD5F1C11F3
          33C5656B7E846DE54D7A6B5E446FCF87985FF2207A6B0EC46E7D0749DB586E66
          40B039BB227E0B0382CD0C0E58266DA1706FCD8E180A7F0C0301BD8CDDF40AE2
          37BD445E418288FF060604EB1904AC67E0A0BEB0FBB249FE5F367D784BF2F629
          FAAAB4CEE13789BE49F663D7BEA6443F6E9D08FF9BEA255D55CBBF529AE8D490
          002061859EC32FF9FB3AB6A53F769926FBD6480B3D99ADF4081465D34BBC529A
          9BE5B490FD2784DF86F45B0ABF9EC2F3C7845F13FC44AB32619A48BE9345A989
          BE9442FC4F99C2AF7F84CB52F8F5567A94D8FF68127C5369167E699947BDA8AB
          89BE1600707A0BC98FFE8EE312EB2FECAA615338BE297DE749B8FFA5C51E4ABF
          8E65EDBE7A49D724FB11DF649622F7E11335C9B72C45EEF58F65993F9AF50785
          5F50C23F46443F135DF8A3479AA4DE4AF4A359460FD78689EC878F70501FD912
          C26D10368C72AF37C36909653F72706E9293929FE399D26F4BF805B3F0B37CBA
          F073BD9F21FC4AF67F45F8ADA55FCA08A20BBF35FA4BBB3ADA87B7B43C7E1DBD
          5FA065D98DF24ED10FEC4A79D73FC0F5A58309CAF7974E0AF9926E401747047C
          4939FF32AF2AFDBBE4831F83015F4ABE2F83016F225FE5F536E1D1D549E1CEF9
          B87529A04A8FCF1CE0F5B93DBCBE702405E1FE5941DCFEBC106E7F511CAE5D4A
          C1FDAB8A70EF5105EEBDDE857BEF5AF0E8531BEE7DEBC1634003780E6A02B781
          CDE039A4257C46B687F798CEF01AFF117C277F89A0997D29F42311B56A226236
          7D8F845D73917C6429EE9FDB043853E43D8F90139478C991E7FD2258526BDC80
          302FA3251B83A762B3A78181C15F095EC0E52BC48F78317FC08BFA3D67209D17
          F93BD2CAD05920ED24BB191C241F02E277E271E4463C085A860CDF394873FB0E
          692E1318430C47D2E5BE883FF325A28F7F8888431D1810B440FCC1C688DD571B
          717B6B227E5F0D06059510F14B4906004510FD4B21446DB147F416CACB164ACA
          965C88DEFC0EFBBDC3F22D966F20FAE7D7385E360ECBCE40E1554A7F364DFE37
          BE8AB88D14F68DD910BFE16524AE7F55497FD2BA5795F42753E2E5CBBA896BB5
          5AFBC435DA177475B4967728F8AB335182BFE64D25FBAA5C2DC2AFBDCCABB7E2
          A35EE25D21BC43722261796E1352DB9F0FD639FD595EDAB5206EB18639B5C784
          E4F4AB141F5DF2D5CBBA7A7A0FE57C3E659A24CE2B6C9304117A4B544A4F562C
          73F875247F5F477F5957CBE5E77ACEE236985279F432CE94BAA39AE03435CBA9
          955A0090F9B12D49EFE1B8561FDE92A637B5E637AD4B8E67F1B55D117C21F67B
          BD2C84180ABE104DB18F99C2DF247A327F2B0A67216A1265DD263CF748E4B705
          CD88D067524861F9F2AEEAFE5AFBD09675292FE8AA8F7159944294B4D4A35ED2
          B586426DFDD2AE0D44F8C3556A4F267A4A8F7A69575277AC527934F9E76F123A
          D20E21A3EC103C32BF22443ECC65817CA04BBEBC2B5FDC1544FE75249547643F
          7A30057C10FF97947EC5408AB682CB3161F9A26E267A4A8F9499E93D22F90A0A
          BD4AE9B1A8E1D711E98F34D5EE87F6E6FA2944FCF365060026F4FC7DCBB41EC9
          E117D9B7467D6DD7F4C55DF5B5DDEE5252DEBFA2C8137FF6537C955FFD16C1D7
          0201AD3BA42BFB5BC87E40570722624FC9571452F877294C0AC2F7730793DC3B
          C0BB8B13BC38CCB36B5178742B06B7AF4AE37A971270E9591E2E7DABE066EF2A
          B8DAAB0AAEF77E1737FBD78273FFDA70EB5B1BDEFDEBC17B6023780F6D02CFE1
          CDE136AA15DCC67680CBD7EFC36F761FF82E188080E5A310B8EE6B846CFD0EE1
          BB6620F6D07CC41F5DA1E5C55F3E80C73778FD763905B85F007CAF01A1B729EE
          7E40A4D1B6BCC19F87CD9E0606067F531EF3062181C17D5706060C0AD2A4C521
          0605A9A68020710F10B71D88D9CA9BC93ADE5816007E3F019E93F1D8751CD22E
          0F40EC892E883CF43EA20EB547F4C1568839D4946523441DAC87C87DEF219C81
          41F8DE6AA42A6F5EE510B1A33422B69742F8B61208DB5A0CA15B0B236CB313C2
          3639206223C56423456703A5630303860D39C83B8859CFA061DDDB885D9B93E4
          46DC9AACC4AE9636F535A47D7D8DB791B8FA1D335AAB3CD20CA7D614E793ADF4
          6835FBBAE8CBCBBC5A7EBFA31949E1B155C3AF0BFF13E26F12FE78A9CD571446
          ECC22266E48BBA71F32D91DC7DBD247333F3F7B3E6F0EBA5083EE76F45DC6CAE
          9389AC2FE8DADB46F2F4676AD29F8926FD8226F9264CB9FC4AFE7FB257C4FE68
          47C1B753651628FE3A22FCB1DFEB68D2AFC4FF3B0603D2C63E853F6E0A831512
          3B99C30453FBFA3A4AEE276B2DF264C124FE91DF3A9A91D67932E17093E86BB9
          FD1A961FDDB2446B83FF49E4A5DDE8B1DC566B9EC8E17F12192EB26F89AD9776
          95EC9BE1708B5235C9498247E655D86A9E536B9D87E312BD1D7E416BA187226E
          AAE10F1FACD5F04B2EBFD4F05BE6F3870DE434B63049BE257ACB3C99ADF4705E
          7D39AC4F6E2BB8CE7DF220A80FD75FCFE3B720A88F9D22B037255CE8C56E12D0
          9B122EF46490A3043F97893C085450D8893FA5DFBF871DFC7A50CABB53CA7B14
          5078F5243D28E7C45BA77B411385E1D99DD2FE5511B877A7B4772F4E4A2A79BF
          DD5D280B17E2FC5559DC62E9D6AF0A6EF7AF02F781EFC26DC87B701F560F6E23
          1BE1F69896701EDB1A5EDF7F82E0B9BD10BE642802170E82DFFC21085A321AE1
          6B262272ED24A46CF909777F998D877B1602875702273700177F016EEC056E1F
          06FCCF03C1BC068751E2236E02D12EBCFEBAF13AEC09A404F0926DE31A6E60F0
          1FC2664F0303837F09190C0ED279034ABFC5A08037A5E48BBC199D06E28F91FD
          440204DEC0A237E371C46A3C0C5982F4C07948F39D8D74EF19B873630AD2AF7E
          CBB8623C522E8C44C2E901883EDA0D91073F46D8FEF6083FD08A01424384EEAE
          8D90DDD510B2AB1282779545D0F6E208D95A14D19B4A22766369246C2C85F80D
          2511BFBE1862D61446CC2A0ADD0A8AE74A0AF70AADCDFC8415F991B4321F9257
          6965E2AA7C885D43F15A931751ABF3B39B424A6238BE201FD74A58E988C41505
          916422799913298894A5FCBDA410E29651D2971543F452AE0B89B5208EFD6316
          715D4CC42EA6A4EB39FD2496C42C29822812B9B8B0996812B5A890060302BD8C
          5CC09244CC2F8848124D24B5277E0EB791222F65D23C2745E25C4724F0B75EEA
          C4CFE6BE3011378B523ACB8E5074AD90DAFF28D55A8F053328DC2A1D48435EFA
          15F18F9E46E93511F513A727529BAFBAA7B2BFA9B65F83226F42A5F24CCD8FE8
          1FF2AA520202ED378598C4484EFFF7EC47A2BF637F610AE767425AE9899B9C1F
          F1936C61AF88FD86F335113391F3FD3AAF19F5FB29A26F4BEE2D89184F21274F
          88FE6F406AF655939C445ED80D23A1A3F36B8C64B7D4DAEB35F4A3EC29FE168C
          2CC020404BE391523EB61536329799D011391561C3590EA3C473B810393C9388
          61147B22C21F32240F61D0200CE5320753A287D8B3B447F0E002081C684FA4D4
          F01F540001831D1541831C543A8F59FE0770DD0772DDD92FB83FC5BC7F7E8D7E
          F6F0EFAFE3A008E8EF8480019C17A53F80F21FD83BB7A95BC80F3FE2DBD70EBE
          FD1DE1D5C71E9E7D0AC0A77F6185479F4270EF4D39EFCBF5E845B9EF954B897E
          40AF3CF067A0E0DF8BD3F6A6E0F77280672F47B8F772827BCF829CA6083CFB97
          82D7A032F01A580E6E032BC0757035DC1EFA1E6E0FAF03B71175E13AA21E5C46
          3480EBE826B83DAE195CC7B7C4ED096DE0F64D07B84DEA0CB7C91FC27DCA4770
          FBEE23B888CCAF1C8E900DE311B5750AE2764E43D2FEB9483DB61477CF6E40C6
          A59F01574ABBE7498A3BAF8BC152F3EE4C7977A5BCF39A1945698FF10662FD78
          9D34D2680CFEFAD8EC69606060908587BCB13D90A6496F03190C0EEEDE04D278
          034CBCCC9B1D6F8671E779E363A0107D8437C3DD40386F9661EBF13868291E05
          CCC6035F79EFE05B64788E459AFB70A4BA0C42EA8DBE4839D31D69A7BBE1CEA9
          AE483DF139920E7F8CF87D1D11BDAB0D22B737E74DB805E2763445ECB64688DD
          DA00B15BEA3248A885E8F53510B1FE5D846DAA8E908D0C24887487B20C5E5311
          41ABCA23646579042D2D83E0A5A510B6B434C2979446C4B25288E2EFE865A515
          210B4B20745169525211B6B814224C4472FCE825652C288598C52515D18B4A20
          6251518E57CC4C387F872F2CA2085B50581129C3182C442D2CAAC93F895E5444
          114322E71642F41C8D98B91471851362E650C68974EBBFB5DA7D4A3089994991
          26EA235C44E45E31938112B16E773F66060314795997E8F9FAD2EE7EAC69B894
          0ACBE11639FDD2AD5EF4FD89810F89F991E349AE3FA53F92721F45D11744F423
          BFCB83C8299471117D1D1BC22F88F0DB4686715B27713BBFA5ECDB207A2203BC
          6FB99FD47B005C47D58C27F7876AC6532B554A8F7C89D7563981EB606AA75FBE
          B82B2DF648A95AEB192B693D0C24C650D2C7727C8B5290E1FA38AAED7E8BBCFE
          F0D1947913C1C3F329F4949C2CB0BFB4E0A35AF1B1282D091BA6116185C8BEFA
          FA2EE713342C3F0287529C29FC41431D8823028750F08738B15F4152C8441104
          581034ACB02910D08202BF810EF0A3C4FBB2DB77A0137C88EFA0C2F01E54149E
          838AC0636051B8B1FBF6804C6498F7E0C294F04294F0CC71DC061683CBC0E270
          1E5002D7FB95C0B5FE25716D60595C1D500697FB97C5F5C115717B6475788CA8
          0CAF1195E03DA20ABC475783F7985AF01E5F1BDE13EAC36B4243787FD30C9E93
          5BC2E7BBF6F09FFE01C2E67545E4A21EFC0FF741C4D2FE8858351291EB27206E
          CB2424EF988AD4BD33917178211E9E5C86C7675703973601D7782DBAB11370D9
          03B81D003C0E025E1479EFA314F82BBC5EDDA0BC53E263DC790DE3352ECE87D7
          35A3F6DDE09F87CD9E060606067F1CD3BB071228DC9340C1998182A419F1269B
          CA2021F92C3909A49890568BE20FE371F45E3C0ADB8607C19B91EEBD0A699ECB
          70C77D11925DE721E9D64C24DC988EB82B3F20EED264449D198DE8D3C310756A
          08A24F0E41E4D17E08D9F71502777D8EC01D9F2078E78708D9DE1921DB3A22F8
          E7B608D9D20AC19B9A21686353846E6884A8F50D11BBAE3E62D6D541D49AF728
          103511BEFC5D842EAD8A902555180058B0A412C216553413BEB01C221796CD42
          F44206061644CD63E030AF38C5BEA42AA3E66622FD22383C7C7E59442C284738
          3E899CCF6964D81C061573193098889CC37276618D390511C532667611C4CD2A
          F604F1333562A7173113378DA549D875A2A61542C4742744FE54F009227E7442
          F854478D1FF8DB9AEF19A8FCC840666A118574474BF70F9CEF0F0C087E2C8288
          EF9C149193AD2964C2D6B0AC8453DCC328F042C4242E978453F0432716502FE4
          864FA4787FCDE15F53B8D54BB99965F87807844EB0B3590AE60F6D8D95977439
          DD184E3786C329EB6163388CBFE5E55D29D51778399E4ED438AE9B8CAB5279F2
          41CBDDD7F2F7F5B6F6B5E63A052E8364A9ED2722FD2123B41776F5322BF242AF
          258E94FC0226B4714286E545D090DC081A9C17C143B41AFE80C17614783BF80F
          7684DF20CA3C1191F7A6D45BE235C8C904859DE2EE3DA4187C469486EFA872F0
          1B5B011E23CBC17D6405B88DAE0CF7D155E13EB61A3CC7D784E7845AF0FABA0E
          5C29E78A89F5E0F66D03B84F6E02F7EF9BC1E3FB96709FDA86B487DB8F9DE03E
          ED43DC9EFE315CA67F0467969EF3BE84DFF2FE08DFF20DC27EF91E513BA72176
          DF6C241D5DCAE07F15D2CF6DC4DD8B5B71FFDA2EDCBFB90F8F9C8F50D24F692F
          A9065F07426EB1BC49783D096377840B10C96B4CB41BC59DD79B786F20C18FD7
          14A3E6DDC040C7664F03030383FF39F779B37EC09BF67DDEBC33DC8174DED0D3
          1934A4F2469F728D37F3CBE41290788E9C211482D8E340F83E8AC00E20E8673C
          F25F8F47BEABF1D07B191EB82F4486CB6CA4DF9C863BD7A732EE988434060C69
          A74722EDC450A41C1D848483FD10B3B717A2767543C48E2F11F6F3E7E453846E
          FD04615B3E46E8E68F10B2E903046F7C1F611B3A21627D3B060D6D11B9AE0D22
          D6B644C49A16085FDDDC445344AE22AB1B33906884B0150D10B6AC3E83893A8A
          9065F510BCBC310297355204AD68C8DF0D11C4FE818B6BC36FC1BB0AFF05D535
          E65523551401732B22704E4504CF2A87D059651136B31CB12CCB227C060309FE
          D6899A9149E474062824625619842BB4E9649AB0E965CC84FC544A113AAD8C22
          FC278DB01F4B2B427ED0089D9AD93FE4879208F9AE04427FC8248CBFB330A594
          22744A7104FF0A41938B21705271047CAB953AC1DF1647C824CEDF8210E967C1
          B386A9E1DF68847DCDE113B95EA632F86BCE9F044D2886A0F1256C23C3C61621
          851038A63029A8CA80D185147E63C8C842F0C942610B8AC2675409788F2A45CA
          3C85B20AAF9165149EC3CBC27D4459780C2B03B7E1A5707B7809B80E2B0AE7A1
          C5707B4449788FAB00FF89D5E0F74D0D85FFA4DAA40E0226D745C0773CAFBEE3
          F9F57D2304FFD018413F3683FF4F2DE133AD35FCA6B787FF2C06C5F33E6230FB
          1922967743E4CA1E3C677B227C651F9ED703789E0F46ECA6E188FB791412B78D
          47FC8E89B87B643AD28ECD42C68979B87F66211E5F580E5C5D0DDCD800DCDC0C
          DCFA0570DD05B8EFA7B01F043C89C701C097C17DC805FE5729EB91FC6F477950
          D47D8038A366DDC0E03F85CD9E06060606FF18322811777D81344FE00E838614
          4A46328386E4EB0C18AE9882868B400205249EC1432C838728060F912781088A
          49F8513C0E3D8C4741FBF120602F32FC7620DD671B32BCB620DD6539329C1731
          8858C020621E92AFCC46C2C5694838FF13E2CF4F45CCC9C9883EF10DA28E4F44
          E4B1F188383216E187C720ECD04845C2C96F107B6C02620E8F43ECD1B148E038
          F12C630E0C43C49E01F0DED005BEEB3F87CFFA4FE0B3F66378AFF9105EAB3F80
          D7AA4EF059D50E41AB5B2364657384AE688190E5CD10BC4C688AA0A54D104282
          973456042D6E80E0450D10B4B03E021750FC4C042D60E031BF0E45AF3682E6BE
          C720A2962260F67B1A33D94D02677198057AFFA0D99C6E762D84CE790F61736B
          3100618032AD127CA79657F8FD584111309522FA43790B2AB25F25F87F57EE29
          707CE23785F330E13BB91C7C26955565E0F75510FC53754A6B4D0410FFA9945B
          0BFC7E60B0447CBFAFAEF0F9AEDA13F811DF2955157E93D83D99FD4CA58ECFA4
          AA84F398CC7911BF299CB709DFEFDE83EF0F75E1ADA8079FA9F5E0FB63834CA6
          3564D9083EC4F7A7C6F09BD604FED39B2B0266B480DF8CD6F099D1115E333BC3
          7BD6FB1AB33F30F1217CE67C04EFB99F5AF139BCE691399FC163EE17B8C5DF37
          F9FBD682AEF058DE17411B46226ADB3788D9F51D62777F8FA44333917C781692
          8FCEC39D130C78CF2CC5FD0B2BF0E8F26A3CBAB21E0F9D77E0BECB1E3CBC7D00
          8F3D0F033E3CDF0378FE07F1BF10C2803A94C80BA7FA4BA7510CB8E5C553A949
          8FA5A84B1A4C9C17E1FF4BD5A81BC26E60F057C5664F03030303835F218D9293
          4ED949A3F4DCA100A5BA3298A00C25DF6000C16022F12A05489E4430A890771D
          2C830A9DD8B30C2C185C849FA0501DD7828C48A9FDA48005ECC223DF1D78ECF3
          0B1E33B878E4B5118FDCD7E3C1ED35B8EFBA9AA2B60C19D7E622E3EA4CDCBB32
          031997A723FDE24F48BBF023EE9CFD4E917C6A12924E4D44D289AF91787C8229
          A0188738061EF1874723EE00838EFD1AF1FB46206EEF70C4EE19A688D9CD72D7
          30C4ED1E6E93D85D431531BB06216ED760C4EE1C80C85FFA2078535704AEFD1C
          016B3EC964F5C75959F5298248E0CA8F14412BACCB4F5872BA651F2160C5C7EA
          B794F25BFA87AFED8AE84DBD91B093EB47E2B7737D760C359771DBB8FEDB8720
          E6E72188FA65D01365F4D6C18AA82D8314FA6F9D989F87713CCE7BDB08CE6704
          E73B92CB1985C49D0CCA768F41F2EEF14824F17B262261EF3748DC3799FB700A
          520E7E8FE4433F20E5F054241FF909E9276729EE9E9A8DBB67E6E3DEB985B87F
          7E111E5C588C071797E3F10D1ED31B9B4CB5E15B00E7ADC06DA915DF0EB8ED00
          3CF7015EC47B3F65FC0039A4E14B39F73B02F89FC0637F9E37013C8782796E45
          F07C8B65401BC773329EA8141791730FFEE6B99AE0CDF393E76D8A91EA6260F0
          6FC3664F0303030383BF10772968E93EA6A71414B8147952C100238D027787FD
          53D95F48A1D82553F492382C91C147928944677293D2C760248EC18810CB4024
          9E8268491C83149D18FED68995F1498C8968F613E229973A099C770C039B4806
          3161145021E2B446B8043536086380634928C70D237A1922E39D6137913294F3
          0E67A014C9E049AD9BBE5E5CB694D1D22DEBF62B65D45390E10AEE2B218AF315
          F4DF52BB1DC36D8DE1FE8D25D1DCAF31D28FC7439A5B14D14EE03190661713A5
          E6DBF2378F5312653BD94F13EE54722780C7D0A815373030F8CF63B3A7818181
          81818181818181C13F039B3D0D0C0C0C0C0C0C0C0C0C0CFE19D8EC6960606060
          606060606060F0CFC0664F03030303030303030303837F06367B1A1818181818
          1818181818FC33B0D9D3C0C0C0C0C0C0C0C0C0C0E09F81CD9E06060606060606
          06060606FF0C6CF63430303030303030303030F86760B3A78181818181818181
          8181C13F039B3D0D0C0C0C0C0C0C0C0C0C0CFE19D8EC69606060606060606060
          60F0CFC0664F03030303030303030303837F06367B1A18181818181818181818
          FC33B0D9D3C0C0C0C0C0C0C0C0C0C0E09F81CD9E0606CF8BA7A727DCDDDDE1E6
          E6060F0F0F787B7BB3B7ED710DFE3BF8FBFBABE321C7453F36C67131F86F23E7
          9C5C13F47351AE15D6E3FC53F0F6F4829BEB6DB8DFE6B6125F6F1FF6B63DEEBF
          152F2F2F751EF8F8F8C0C7CB5BED2729ADC7B3C4D3DD035E1E9E0AE9B61EFE67
          20E7A9F5F552AEA1D6E3FDD5C9B27F89744B3FEBF10CFE7DD8EC6960F03CF8FA
          FAA25FBF7E68D6AC99A269D3A668D2A409BA76EDCAC1B6A731F8CF2217F83E7D
          FAA0458B1668DEBCB93A2ED2DDBF7FFF7F9DF48B603E4B320302028C40E83F84
          5C03E45A20D704FDFA20D70AB966588FFB7744E4FEF0FE03983F7B0E860E1C84
          0F3A7642CBA6CD146D5AB444BB56AD31A85F7F2C9A371F07F6EC85EBCD5B9CCC
          F6BCFE0DC8711F346890BA26356EDC188D1B36428B66CD3198FBCECFE7C97322
          D03F00FDFAF445A3060DD1B2790B85744B3F19663DFEEF45FEFF726D946BA49C
          A3B27ED22DD7D0BF932C3FB17F89744BBF7FCA7FCEE0F763B3A781C1F3201744
          B9A9E7CF9707450A174441A702702C608F56AD5AC1D5D595A3D89EEE9FCAA143
          87B060C10276DA1EFEDF406E6022598E0E3C16260AD83BA03945446A5BADC7FF
          2772F4E861F4E9D51B6DDBB646678AD8F4E93FE1FAD56B1C94398ED4807DF6D9
          67EAA6D8B367CF2CC30CFE18F2DF6FDDB2953AF70A3A3AA148A1C2C89F379FBA
          56FCDD6B1C5D6E3963E9E22568DFBA0D1AD4A98D6A952AA35CA992285AB0109C
          ECED5090DB5CA880030A73BB2B952B8B77AB54468DAA55181074C0C2D9B3E17A
          FD3A67637BDEFF64A4D6BC69E32670B0B347A1828EDC3FBC36D9E547B3264D55
          4DBFF5F8F2C444C62FE45410051CECD4354CBAA59F0CB31EFFF722D744B936CA
          FC2DAF99720DFD3B550658EF5FD957D22DFD6498F5F806FF2E6CF63430781EA4
          96AB79335E940BD8F166978F37BBFC8A16CD9BFEA31FDF5B73FCD8118C1C310C
          0DEAD7C5271F7F083FDFFFDD8DC2EDB60B5AB668C6E3C00B3FC5434A1191362D
          9AE3B6AB3347B13DDD3F8533278EA349E3FA285FBA141CECF3A264D122A852B9
          3C5A366D8299337EC495CB1771F5CA057C3765122A57AA80C2859CD08E814180
          DFDFEF11FE5F15773757B46AD6549D7B05ED28C144044FAE0BEEEEB7398AEDE9
          FEEA1C39B01F6D9A3543DD1A3550AA48111471E47FCC9EC8754FB691D7414D64
          F3A2B003FF7BBC261675A248E6CF8392450AA226CFB7B64D1B63F7B6AD9C9DED
          65FC53916B8F5C83D439C1FD25FB4CF697F4737576E12859C7F7707357E7905C
          BBE4DEA29576EA1CF2F813CF2199578B268DB5E348B4F5B357F7B53F7339FF69
          F4FF9C9C7F0EF9729BB7E3DF72DD377836367B1A183C0F4A2E295222FC052957
          851C34E96FD1BC31A426CC7AFC7F1AD72E5DC4C8A143544D9FC8A33CDD68C61B
          BA5C7CADC7FD6FA10BBF7E43553731CAC8BFE1C21FECEF87DEDDBBA24A85B228
          57AA386AD7A8867AEFD540C3BAEFA14ECDEA78B74A450665B5D1A8615D542E5F
          0695CA9546A58AE53166F4484E6E7B9E06CF8F8BF34D251F72EE1575E03928E7
          220558FE1B727E5A8FFF572724C01F9BD6AC41C3DAFC9F972A8D827929A0947A
          D92E917E117B917A4DF8ED957039E4CDA5863BD9E5A1F4CB7EC88FFCEFBC894A
          258AA161AD1A98337B26676D7B79FF44DC5D34E1977DA2F61BF759E102F9D1B6
          3985DFE5C974276F770F25E2B24F651FCB7E95FB8C9C439E1E7F5E8DB5BFB797
          5A2FA73C7951D4DE01250A3BA980AD75F366FFD3EBF8F3E2EDEE86260DEAAB7D
          2B41A6BE9F65DB64DF5B8F6FF0EFC2664F0383E7E159C22F2F59598FFF4F2234
          30009F74EE4C712C8712450AA340FE7CAA949A215B37B0FF16FF66E1971AB9F7
          3BB455E763554AFFA2B9B370F5E2391C3F7C0093278EE73E68AA828092450BA1
          68C102AA6CDFAE0D4E9D3CCEC96DCFD3E0F991E3D0B2692375FEE9C22FE761D3
          268DFE96C2FFF3A68D68D6A0014A142A840279B5DAFB22050AA8B274F162A855
          BD1A1AD5ABAB84AB79E306EA3C6B54AF36FB5741B992C5544050AC803D2597FB
          217F5E94E27957BF5E1D2C58308FB3B7BDCC7F1ACF2BFC42CF6E5DD1A67913B4
          E2B924E7536B7677FFEACF7D3FCCCDF9168F5923142FE08842F9F2AB404DEE61
          B2AE7FA773D5CBED36DAB66CA102163DD8140CE137106CF63430781E6E3F43F8
          25DDC77AFC7F121EAE2EEAF1BE88BE3C3AD5CB0E6D5AFF4F6F14FF66E117BA7F
          F9B912AE3EDDBBC2D39522F1E83E5213E3101F1D816B97CE63CE8C9FD0B35B17
          B46BD51C03FAF4C4B1A3873999ED7919FC3EA4B6B1753353ED2C2557D586F33C
          FCBBA54908A78F1F43E3FAF550A6583114737232CBBE74D7AC56155F7EF629E6
          CF9E8553C78E42E451E4EAF6ADEB3872602FD6AC588A2E9F7C881A552AA24C91
          422859D0510540B23FE49DA7A64D1B63DFBE3D5C8CED65FF93B025FC72BF7896
          F00BAE37AEAAFFB1077161B7F5F03F8AD4F0CB3DAC889DBDAAE1977356EE6152
          C3FF77BA5ECAFD48024EF53444AEFBA6FD6C08BF8160B3A781C1F3F02CE1B795
          97F93C8404FBC3CBF3367CBC3D9524F87AFE792F9C3ADFBA014F0F57B8BB39E3
          D6CDAB7071BE8EE0A0E76BF9412EA21F76E8A06EFE2233C50B168443BEBCEA31
          B4088FF5F8BF86A40D04F9F9AA696F5CBFFABBC5E8CF127E790F411E69CBCD58
          D6C5CFCB53AD9FF5787F14B9E1FA78B8436AA86439FE7E7FBC3943CFDBCE08F4
          F144447000622342E1E3EE0AE76B9771FBE6355CB97016E74E1DC7CDAB97B8CC
          3F2F30F3F5F152A90672E315F1FB3DE7C0B390F9CBF19374995B37AFABEEA0C0
          FFDD7B077E5EDEEAE549C9B50EB2FAEFC8FE979A59915B117E95EE425196F3F2
          F79CD7724EE8E788E76DD7FFDA3B32B2DC3E3DBAAB5A7CA7FC5A5A9294250B17
          46C3BAF5540B3D3EBFF22453CEEF59D37E4283F7DE53D70AFBDCB955B0202FA2
          962F57065F7CFEE99F72CEFFA7902799B20DBE9E6E3CA75DB9FF9DF9FBF9AFC5
          BF57F8FF0C0203FCD47F53AE67729DB51C26FF53592F49D3921A7E4987D185FF
          792A6EFEACEBF7B3907B60A02FAF97DEEEFC99759887B3335A376D8A62050BA0
          40BEDCE6FDFC7B855FAE37B2BFE43AE3EDF5EF68ECE19F8CCD9E0606CF8326FC
          8D6C0AFFD372F8037CBC298FEEEA22243771EBE1DE5E6ED8B4712D860E198076
          6D5BAA5AC14E1DDB63C490C1D8BE758B122AEB697E0D7F7F5F9C397D123F7C3F
          05DF4C9CA0D238641D5BB56CAACA4E1DDB62C8E08158B4703E4E9F3AC1496CCF
          4790564644728EECDB87772B5552422D22208FFA45ACA59665DFAE9D4A90454E
          7EAD3DEE8B674F61F9E20518D0A7B77A3A20371AB948B76DD30A9F7DFA31468F
          1A81756B572BC9B39ED6167F54F8E5A5D65933A773FF0FC2871F7446E3460D54
          2A86ACDB179F7C8C09634663D5B2A5EAA6663DED6F456E265B376EC0D42993F1
          55972FD0AE554B1528B56FDD0ABDBB7FA58ED1A68DEB95DC5A4FFB5B919AC175
          2B9761E49081E8D4B615DAB668AA5203242D60D4B0C158BF7A85AAF1B79EEE79
          10513B72F820664CFF095F76F99CE75373EDD8B56C812103FA63F6F4697FE809
          C2D1C3473077CE2C0C1AD81F1DDAB755F9CB6A19AD5BE2A3CE9DD47F62CE8CE9
          B875ED2AE4FD05EBE9FF6CA479BF33A74E63F2B793D0AF576F75AE776EDF8EEB
          D7174B972C5001B48CE7CAC04A5E4E953416917E117E390F9FF7854B69CEF287
          C993D0EBAB6EE8D896FF599E23B2BCC1FDFB61E6F419387CF01047B33DED9F81
          9C83EFBD5B5DA5EA15757484439E3C285DB4A892F7AD1B37C1DFF7B7ED7311E6
          2D1BD6A3519D3AA850AA94F905D4A2450AA15AD5CA58BB661547B33DADA446CA
          F546E44BA4552A40ACC7791AD2CA4CE67710182C793E79BD7D1A721D5CBA6411
          860E1CA0F679B346F515ED5BB740B72F3EC59811C3B171ED1A38FFC6E6466D09
          FFAFA5F40812A47BB8DCE4FDE226E4BCB21EFE2C0E1DDCAF5ECEEFD1F54BF59F
          94F74AE4DC59B9748959E66FDFBAA9CEE3924E0595F0E7CDF1964AF79375FD2D
          E7EA9F7DFDB6C5F1A3C7F0DDB7DFA0EBE79FA994C5B62D9BA9FFDF8A65CB55E5
          828CE376F3A64A3B936BBE750EFF6FADE8F1E17579DFDEDDF8E9C71FD0A7774F
          ED9AD3A8A13AFEFD7AF5C44FDF7F8763870E7254DBD31BFC75B1D9D3C0E07978
          96F0DBFA488A5C50FAF7EEA56E1C1FF0C2D5A8EE7BBC887D621E6FF3FA35F8A0
          633B54AB541E15CA9444A96285619F37170A5018AA57AEA05EC66CC78BDD9E1D
          DBCDD3FC1A972E9E478FEEDD50B7CE7BA859A33AE75994EBEBA0E62BEB2D14E1
          05B26CC9626AB992EA3174603F5CBD728993679D9788EA80FE7DD1BA550B34AD
          5F5FBDC0E7982F9FB9D64FA4BF5C8912A85FAB967AF2218232B8FF0004D96801
          466A827E9CF22D5A346EA01EF94BAEAF5CA8E5E534D98772D391EDAF50BEB46A
          65A67DBB5658B17C3182029F5DCBFE7B855F44420222B9F9494E72C5B2A5D47E
          9117D8645D8A177652C871A95BEB5DD5B28D0881F57C7E8D6DBF6C45EF5E3D54
          8E73B58AE5543E73F1428EDA4D8AEB5BA24841F5326DDD3A35F17EE7F658BFEE
          E932640BE7EB57306FD674B4E771ACCEE35951CE232E43F2A8259542C4AD5A85
          0AA851B5123AB56B8D59D3A652969FBF86F5E2857314EE812A4FBB2AB7A37CE9
          12EAD8C93E936D90DF724EC9767E3D76947AAA603D8FA721C1A9DCDC9B366CA0
          9A75AC58B68C4A019197C29D1C79EEDA69AD96883C562E5B561D5B11B08B67CF
          7072DBF3FCA3C8D384AF278C532D5155285F96E7422114E371931654CA962941
          71ADC8C0B90D7ED9B21EA74F1C4653FEB70B737F8BF4CBBE97F35082F7DFF222
          E48533679560B46AD20455CB9757E934727E486EB2D45ECABE2D57B6B40A80C6
          8E19F5AB41FAEF4182B95E3DBBAB7D2FE97ABAA4CBFA8C1FF9FB5EF2FE76C278
          D56A945C7F04792228B5FC122CDAAA18907EFDFBF653CD46CABE93ED957CF36E
          5DBB3C31AE35DDBEECAA9A6454D3705AA17FBF3EBFFA7444E47BFAB41F55602C
          FF91B2258A9AD344A494E320FDAA5428CFEB65452585CB962EE6A4B6E7A7F3BC
          C21F1210A8CE01F91FCBD322591FB9368B885A8F6B8D5C5B470F1FA6C4585EDE
          2F53BC88BABE4A7EBB74D7AC56595DBFB66EDD8CF3A74FA9461724875FA45F3D
          8DE2768AB83F4BF8FF53D76F4BA4667DD2D71378BDADA9AEC972EF928044E65B
          B16C39D524AC34F72A81D79573E7540DBFFC4754806DDACFBF55F84F9D3C8A11
          C307A371FD3A6A9FC9354CEEBB322F69614A8E79655E97E5FE2BF7C70B674E73
          32DBF332F8EB61B3A781C1F3F02CE1B795C32F354C722195F1E5C2243710A979
          3DBC7F0FE6CF9E41D9ACAB8449C45244535ABB900B8F8C2F62A12EA294B726BC
          28EDDBB5FB89F95B73FEFC5955235AA67449559B66973FAFBA796B375C4DF665
          19326F59A694B2FE125874ECD00E67CF9CE26C32E7271760A9F12EE2E4A81ECD
          4BCEA7A4F2E4CF99533DA69747F6FAA37FBD59B4D6CD5BC0DD25ABE448FAD0E8
          A143F11E65512EA822BCB22F4448E58621EB21DBAF4ADE140B3AF1865BA8006A
          BFF72E664C9F9A655ED6FC1EE117D91F3E6C086F4C15B98F653FD8A9E5CBFED1
          D747906EE927C38A152A88F76AD5504F03ACE7F73416CC9F8B268D1B52844BA8
          47CFB2BD22702284B2AE4ACA895A06B7BB486147346C5007B3674D4370C8AFA7
          AF5CBE74011DDAB454C74FF6A7DCE0651972AEC9F2A49F0468B24F645BE4984B
          2B3EFD7A75574F80ACE7F734766CFF45BD9C29C18F9C9F72CEE6CBF58E69BF38
          227FEE1C2AA09461B20C7939F8C34EEDF1F3A6F59CDCF63C754E9E38A66A0745
          A6E438D8E715012960967D694654D241E4BCD3D343E47C9336DF3BB56B8BFFC4
          8D58245102DD1AEF5653DFDA50EB631201D98FF21F2A52B8000A15B4478BA60D
          F0CD84D1A82BE7761EFE2FB8DE726C651D453A7FADD6F4E74D9B79AEB644C5D2
          A5557026E7AEFA4F711E2254B25C1540F03F5CA27851942E5542C9DB86F56B39
          B9ED79FE1ECE9D3DCD73AF9E3ACFA5BD78D966F96FB46CDC18D72F3F5919F05B
          90F3536A9A655EB2FE727D90632CFFD7D327B35E6B04BD2D7AF98681FE9D1399
          46E621B5FED6E3EBC81756CDDF41E03432AD7C2B459ED43D2B3D4382B109E3C7
          AA96ABF460CE2CE83CCEB2FFE5FF24C87929FB46F6499DDAB53077F61CCEC2F6
          7C85E7157ECFDB6EEA5E21CB92F1E5BA2CFF2FD957CF6A575E9E000F1F3C4805
          E1F2FF93E9E57C11E45A23E78FFC5FE57ED0B0617D4C9EF8B5127E879CB914EA
          A5578E279535CF0A4EFF53D76F1D394EC3860E56FF6B0912E53C917B973A06FC
          3F14C8CFFF4341697C80E764D3269838668C7AE22CC3057D9FC93E77FD15E1DF
          B07EB57A9A5EA2786175DCF57BA34CAF077AFA3E94FFBC88BF9C83F232BBF5BC
          0CFE9AD8EC6960F03C3C4BF86D7D4C451E2B6B6D2B6B170FB990BC5BB902BE1D
          3F4689975CA0E502E9E44811E7FCECED7873E7FC44F4E50226D2262902524BD3
          A95D7BDCB612694B7C2929AD5AB540C50AE5942CE9B56ABA58AA8B19972FEB2E
          EB231779CB0B5D8532A5550D93658D98DC00A4763F7FEE5C9AD4F3462C422262
          A2CB8908A50C930BB15D9EDCEA8B9BD65FD99C3777366A56A962BE38EB372559
          37D94ED5CA82693D64DDD4FE62B7C8A3D418CB8B8496F3B344D6515227643E6A
          7EBF41F8972C5EA83E0E24B5B6B22C59B6DC14ED286C52CA7E929BA5045B7283
          D3870B2271870F1DE06C9E9CAF25CB972D514F58E486A2B68BDB2CC75F6E96B2
          9E6ABEEC2FF3969A253907E45C2855B2286AD5AC86B5EB567236B6E72D488DBB
          AC8BD4AACBF922FB53E627FB57E62DC7459EC0C8CD53BD606DDADFB26D122048
          9AD7F56B57382BDBF3D7D9BD6B876A614596A3CB8820F39365C9B609FAB925CB
          96F35644426A034F1E79FA2371F9CF7CD8A9A30A88E4FC91F35564534AA9D597
          0FEAC8FFA250412DD014E197E3ABDE23E138F2ED013967256DCE7ADEBF17C97F
          1E3C68807AD220CBD025553FBF645B653B9D1CF9BB90034A152FA4C1E35A42CE
          117B6DDFC87F426A9B9F2551BB77EE42C3BADCB7C58BABED52DBC6E98B33D091
          FD28FB5B3F0765FF480DB9C8B39CB7F2E4418225EB79FE5ED6AE5CA1D2797439
          97E320C7456A5CFF48FAD4A4AF27A24C89E2A66326FBCF1EB56BBCABD209ADC7
          D5BF7322D22EFB5CDFEF720DB5757DD59161720D90EB9E2001A26C8388E1B352
          22E7CF9BA3FEA31254CABA297935FD4FE5180A227C7A3F915A497792F3522A42
          8E1C797A8A95A49E3CAFF0ABA65D4DE3EBFF2BD9AE6709BF3C41962713EABFC8
          65E8D718B9A6CA6F1504B0947D52BA7449757CE5C369C5243892C0CAF4BF55FB
          F829E7EA8C69D3FFD0F5FBE489239CCD93F3D591A76922FBF2F447CE6D39D7E5
          9A25E7A09C2F72DE8BF0CB47DE24F092A750D282943C5D966DD5AFA5B25C11F3
          6709FFA17DBB55B3C5725D968A09B9E6CBBACB7E906BBECC4FCD8BDB28D73169
          654AB6539E3648A0F4AC7B91C15F079B3D0D0C9E873F24FCF9F2A074E182EA06
          2E022FEDA28BA855AF5649B593DEBA5533346D22290D15958CCB4546DD78389D
          5C5C6B56AB8E2D9B363FB10C9DC522B1BC79C9855D6AF6E54229174F79F4DAAC
          613DF588582EBED2A2CB7BEF56553702416A673559735037E235AB334553F230
          E5C626F31181919B84E4F5CACD5BD0BB65985C9CE542DDB46123C80B8EFA3CE4
          8BAFF2885E5DC879B3B0E705561E97D6A9510D0D6AD7548FAFE5B1A9AC93DC20
          447E45AC651FCB0D566E66921BAECFCF1AB9498924C8455ADD807E45F825175F
          DF2659673936F2C858F6BB1C5B49BF6AD1A4216A737D64FFCB3C2DC5565A2AB1
          252B969C3F7746AD93C8BB0A1EB84D22C0322F49BB692ECBA00CCBE36459AEDC
          78446A25E0939A31A9E9EFD4B91D7CFD6CE72F4BAEB248A9D44CCABE92F552DB
          CEB242E912A8258FF05BB450B576B2BE928E20E79DDCC4E498CB4D4E6EAEF2DE
          82F5BC2D91A7279D3B75508220F3961BA2DC04859A3C2EF519B4CA3E13243D4C
          8E9FDC7C65BFC93E2B5FAAB86ABD26C8CFB6902F5FBA4C89B5889D049572CECA
          0BA352CB57AF6E6D55432BFF2DF996806C83A4F4C8F195E326E22235AE552B56
          50EF3F58CFFBF7B270C13CF52447CE0F5DF6A55B52D8E45C94A7728D1BD5E3FA
          D562705D1A450ADAA34451271493F384FBC852F8E51C785A0DFFCDEB37F0E987
          1F29D997F355FE4B223122FBFA7F43CE91A65C9EEC6B114D7D7DA45B8E9F046D
          7F2457DA92EF277DABF6BB2E59825C0F562F5FC6C1B6A7F92DAC58B254A567E8
          8228B5B572CCA67C339183B38EFB74E1B77D7DD5F93DC22F01B3A4E788ECCBF5
          527F5A25B5D8B2CFE549ACFC4F2B952DA5CE635D02E5B8CABCAB57ABF2CCEBC0
          7F43F865F922AF721F51E2CEF1E5FF27418A9C4372BD97FFA6FC7FAA56AD8C02
          DC37127C894CCBB55C50D370BB64D95E36DE79B875C3196D5BB751FF81DF7BFD
          960F005ACFD712D90E3DF0927593E32E4F9545B2A562465A8D6AC97B48AB66CD
          51BD7225756ECA87E0A452437F9A29DB21C7E759153DD2EA91DCFF4AF3FE2BD7
          65B90ECA3197DF72CDD4B7A7619D5AEAFA2FD76CF93FCA7CE5BC95FF87A41449
          7A93F5BC0DFE5AD8EC6960F03CFC11E12F2C79C8793591979B9F5C1C254D4252
          442495E6E68D6B902FD84EFB618A2681BC68CB78922220B50E654A94C48471E3
          9F682144A76F9F5EAA76BF00D749900B9A8882BCC4295FBA945CEF90005FD56A
          8BBC7425B9B152AB2F322735262239F2F878F2A46F38BBCCF9F6E9D55B5D68DF
          AB564D0997D4B44ACDB120DD52CB2A3774B9D0CA0DB677CF5E080A0834CF63FE
          FCF9A851FD5D7593149910A1931CCD9FBE9FAC5AC09017D364DDE47D06C94115
          F9961B98A48CC836487EFBA07E7DCDF3B34684EA79845F6E2EB56ABEABD5EA15
          7454D228353792DBAEAF8B9BF30D6C5AB79AC14B3D75B3970BBE1CEFC24E76EA
          E6306440DF67BE4C387EDC1855B32EE786DC2065BDA4865C1ED9CB0B742E37AE
          AB9640E44366F288BDF67B3533D35778BCF3F23CA95EBD2A963E2557585E8A93
          741307CAA5EC2349A7917D2637DD3E3DBA61E72F5B94E8DCB872197B76ECC4C0
          BE7D54A0518C4185DC8C55004269946060C9A2A7E723CBCBB9329E1C37FD862A
          EF0888C4CF9EFE23AE5FBE001F8FDB6ABFC94BC1F579C3947C73158498044F82
          02495FB39EB720B5F3E54B96544F8BF4549D2A0C84E55D81BD7B76C0F9D635C8
          4BEDD2AA94E4ED4A00231220E7ACDCF8651F88B4495A86F5BC7F0F123CCA0D5D
          84426445972ED907728EFCF8DD14FE7FCEAB75BA7CE91CE6CE99A10269D95E11
          7DA90DD4855FCE43F93F3D4DF87F9CFABDDA16FD2959094727542A590A8DEBD6
          C5E2B97371EDE239D54A8C9C8F2B972EE2F26BA9942A591F397E52D329DFC4D8
          B8611D67F7E4FC9F0749B99397305560C7FFA91E58C83B15F2B55DEBF19F87E3
          870FA9F9C8B923522AE224D2292FAB5BB78225C22FD71009E664BF08B23FE57C
          7BA6F09B9EF289ECEBEBFE6BC23F77EE6C25C1328D5C07E4FF274F4DE6CD9AA9
          5E0AD7AF03F25F12112C5DAC901276D90EF9CF952A591CFDFAF6E6AC9E9CB760
          167E9E07F2DFF9B3855FF69534EE20C22AEBE49097F2CAFFB7C8AF08AB34C77B
          E1CC4925A7925A357BF64C3468504FED7B09AEE57C93144D09106439D29080AD
          F59A3583FBA972953F74FD1ED0FFE9FB495A0E931773E57E28FF23F9DFC9F4FA
          7579DA0FDFE3F2F973B875E326CE9D39AB5EDA97FEEA3D175E37E49CD22B6664
          3FC835F6694F2AE6729F487A8E8CAB3FA990E045AE510BE7CCC4CD2B17550B67
          37785D5BC17BA4A4D29696EDE1B8724C64DF4ABEFFB245CFAEF031F8DF63B3A7
          81C1F3A009BFED66397F4DF84B483E6A3EEDEB946578919117A956AF7AB2F64C
          647070FF3EEA434A228B7A0DBFC8C1975F74819F8D26EDBCBC3C546D9FDCB424
          7F52C90AA7910BFFF143B66FD872237EBF437B8C1A36140BE7CE512D6748C061
          3D9E8F97B74A253A71E430EAD5ACA9445F4FE99147AD72F197615E6E143F1B37
          8C091326A051A3467897022B122CE34F1C37D6E68BA31BD7AE52B9A872F1977D
          2C3530B2AFE431ADE4F75A8F2F3CAFF04B2B1252732CC191E4444B1AC3F8D1A3
          101AF864DAC28E9F37AB142C7503E6F1961BAA5CFC3FEADCC1666D98204DA04A
          2EB4C899DCF0EC72BFA39EE8D4AFFD1E0EEFDFC7519E9C465AD6902044D6A75A
          B52AA853E73DB46CD91C5F7F3D9E83B38E2B2957F2311E799154D25E6419727E
          499A8EBC2C2B026E3D8D3061CC489E5365D4131D25E4524BC673EAFD4E9D6DEE
          5B692145F6AB047422507ACD9E9C5387F7D97E9FE4F2F9333CBEEF6A35683C16
          F972BEADA6119990FF82E5B8D26295DC9CF597BFE5BD1011FEC69202F0943420
          4961E9F2E92718317CA86ACD67F5AA153871FC28073D39EEEF61EF9E5DEAFCD4
          9EFE68C22F022301EDDA95AB20FF05CBF103837CB16CE9422D45803220FF55FD
          C35B720ECAFB34B6845F520EE4FCD49BBF54FF27CA97C8FEA923B6D31F4E1E3D
          A49623FF07F96F8880498DA31CA35F7B31F5D790FC69791F424FA590E32DC8F1
          71BEFE7C2DC55823ADC248A026151EAAB694DB2B1505D20A9175AB65FF4DE19F
          387182FA8FC95332795A2241F7A46F273E517B2B9524DBB76EC27BD52B73FD39
          7FFED7E4FF23FB4AAEB9D28A99E5F83A22FCB2FF32855F44FEE9CD723E5BF89F
          14583957E57C9071E59A54BC903C7963D0C2E044026C5BD7B3254B16A9F35B02
          5839DF54D39CB23C9E4FB2AF6CADD7B831E3D1B821AFDFD5AAFFEEEBB73CBD7E
          DA7E92EF37C857C1655BD57DD5B4DDF5DEAB45B15EC8519E9C46D2CFEABCFBAE
          3A8F64FD2568D1855F3DA9E0BDC87A1AE927E7915C8BE549A5EC33A95493A768
          07F7EC7C627CE1CC89A36AB8FCB725A890E548858634B421D779EBF10DFE3AD8
          EC6960F03CFC11E1970BBE76D1CFAF2E1AD282C5D3DAA3FE79EB667531978B98
          6AEACF7483917C7A917BEBF1A59FBCC827C22FB5234A08B81C691566F5E285AA
          9937EB699E17B981492B22F2A8556A7A04E97EDA8D42C7C7C707070E1CC0FCF9
          7355936D5DBFFCE2A9E38BAC4ACB142ACD88DB208F54F3BCF3A692A3A7BDB4A7
          DFEC657B7F8BF007F8F9E3D08183AAC51D7971575A2679DAA7EBA5F64A9EE8C8
          7CE57817653025377C4931789AF0AF5FB746D53C4B2DAC3A6E5C2FA9B596DAE1
          A7356B2837C3AFBEFA0A83070FC6B469D3B06EDD3A1C3B663B5774EFCE1DEA66
          A8494701B51CB9A9CA7E931A77EBF175E47176DB164DD4D322B981490DB18891
          E4E7CB4BB9D6E36FD9BC516D879C77224F52032F4F78BEFF26EB13206B16CD9B
          AB5EC095E3208FDD255545F2D40F1ECC1A788A58C931D285BF74A1C2AAD651F6
          D5EA658B9FF9CD0069FDCABADF9F817C504A5AC7927D2BF220C75AFE43D2B461
          E0538E9DFC87A5294749A59269E4FF2AE7A288EDD3847FDBF62D4A72E47F2AE3
          495A9CB486F3DDC427D35C2C593C6FB67A52A3E74CCB931DD9B7D22CAEF5B8CF
          8334A72B522EB2ACDEF73049F3D3E4E979902759D2D4A1044222FCB24FE5FF24
          4F18ADE55ABD80AF0B3FC75372FD1B855FD655D65B5F775986344BAB3E466763
          1AA9353F78F020162E5C88418306E1D34F3FB6796D15E43AD0B4411DAE8B26C8
          723D97FF84BCA3F1B47CF1FFB4F0CF993D53B59825E79C3C3970CC9F1BE54A16
          C5E8E14310E063FBE9A35416C9B92A29558EB929C9F222AC9CEBDC1EF92F06F8
          DB6E51479A835D306FFE1FB87EF33C7ACAF71BE6CE9CA69E68CBB6EA0D4AC8F5
          6CE48821080CB07D7F14E4A9A53CA11679B7ACE197F3C7D639BB73EB5634AAF5
          1EEC72E5D20249FEE7A4C5AF09A3463D31AE25F2C4479E84CA31917D65C76D93
          4A8D7D7BFFD87FCEE03F8BCD9E0606CFC31F117EB918E9370BB9D9CBCB90D6E3
          EB480EB85C54D405D03C9D9DBAC178D890D3C0407FF578596A7D65FE52EB2B17
          27B9E036AF5F17FD7A7E85250BE6E3D0BEBDEA26FB7B3E282552D0BE654B55AB
          2F376441BAA58DF4A73D427D5EA48DE7DA35AA29E1920BB8888D6C83D4F07B3D
          45F87F6FB39CBF05A9B196C04B6A7BE5662FF22EC74372FC9F2642D294A38872
          7E69C586322E2F724ABEEB9EDD7FCE0D62C68F53D50D5B3FCE524AEDFECC9F7E
          E060DBD3E84CFB7E9229B5478242ED11BDE4CE4AF3A4D6E34ADBD4B21D7A7027
          522EED5E1FDCFDECD6A2F42FB5CA0BB692932E422B37CC8556F9CEF2E11E79E1
          50527AD4879972995A81624022B5FCBDBB7755CD8D9E3E754C7D90EE6932F667
          326ED448F56446445A4F1590B4386953DE7A5C4B56AE58A6D2A94450AD85DFD6
          7F435A2E91277C6A39140F19579E9E1DDAF3ECAFD09E3BC97DCB7DA35F4724E0
          93D4A6A50B1770B0ED697E0B520B2E722A01BC5C67449AE5FC10297F5A0DF96F
          45845F5AFAD13F4AA6577A4810F0440DFF7F51F89F87F3E74E69FB9DFF673927
          D43599FB4764DCE529F2FB644A8F5C9F7E6F4A4FD67348D23AC78D1AAE2A8E9C
          E4BD1FCE57EE47F5EBD450A98896E35A23B5E372CEC89776A5694E6D5BB4F4AD
          67B568F45B78FAF5BBD9532B6C860DEA0F691259AE65B2BD32ADDC1F376F7A76
          AA9A6C87A4F6C8FACB3151FB8CE78BEC435BD7E69FA64C419DAAD5D4D334FDBA
          24DF97387DF4D94F08A5353369954996A3A7D94AB3A492166B3DAEC15F079B3D
          0D0C9E873F54C3CF8B925C30449EA456EE592DBD48ADA02C47D5AE9A2E647213
          13B1B54E8DD059BE6C1105AD8A0A124424D44D462E84F9B5BC6BA97595541669
          2652DAF25EBA7809E40327BFF50BC17211152990967864BD24DF3C5FDEDCCFCC
          53FE35A4F65F6ACAA54940B980CB67FBE5253979EC2ADBAC6FBBDC8CE486683D
          BD20374F112B19F7CF107E91870BE7CFAA5CFB6E5F7C4E992EAF6E46DA0B995A
          EDA4D4F04B00643D6D404080FA0682348B2A522DC22FD3C94BD3D7AE5E7E62FC
          E7455AA3919A2DC9C3951BA9DC8424B0ABC7E0F0C4335AC3D1B978E604EAF266
          2AB562723E0965CB94521F61B37CFA20B5D6D2D49FA4F388544AC023025FBB7A
          75ECDFB9135EAEAE2A7014E4C365F28444906D14E1576903BCA94A9A8E08ADD4
          C48D1D3BDA3C7F1D7921B446E5CA4A3E4488F4A759722CA5964F6AFEE4857661
          DCB83158B66229F6EEDF835B7FC2132B6B64DFCA47D1F4564DE438CB31AC57AB
          3A2E9D7B76D39FF2313279015BCE554DEC4CE9052D296BBC66588EEBE72FDFB6
          907CF9E2EA3A22DB2BD3C9BEDDF5F3CFEABD0B1161F95F5EBD7A95FF7777787B
          7BAA7CF2FDBBB6A963ADCE2DCE5FCE4B394612A8582EE379917359A45CFE3B72
          4E482DBFC8BFFCDF7FEF7F5B473E20D59201B2EC173DE549F68FCCFBD7845FD2
          808AF27A291F35FB6F0BBF48F6A95327B07AF54A7CD9E553F5A4A730F7791147
          EDDA2FFB5EAEFBB66ADF055DF855F0A4AE1D7F9EF0CB8715BB7FF9B94A9D9134
          1E996FD1420E6850B7264E1D7BF687EF4E1E3DA2FD3F1D39AD83F6955AF98FCB
          B29F374DE5B75FBFEBD96CB65AD2A5BEFCF42395276F973787DA06D9AFF22ED0
          B9B3CF6E3658D248E53E2A4185FCD7D4F922C7DC86F007FA33401A31423DD1D0
          91F766EAD6A80179622A6967329E5CCFE425783DF07176BE897DFBF6A8744BF5
          AE03F795A4280A63470E4368C8F37DADDEE0BF87CD9E0606CF837E43B2147EB9
          A8A956246C5CF8E56629C34420E482A42E4C9451B9D93DEDB1A820C3D472E406
          CC696419D2F284A4F43CAD46493E9225B9929293AAD68FD3E8370F416EA2D236
          B5E4890B92532F17CC8E6DDBA92F0AFE9AF8CB0D570F42F45A5FE9967EB6B6DD
          1601017EEA833BDBB7FDAC028E31A347AAA716F2B29CB4082239E5D29A8C4A59
          30ADB7EC376971E669C22F5FA795FDA9B691DBFDBCC22FEB23B5EF2B962F357F
          644C5A8891B419C9B19697C7645FAAE360AAE19317356D1D3FF9CAA73CF190FD
          22DB20290C22FC223C2E2E7FACA65408F4F5514F3B442244A465DFC8B6CA39A6
          DFB49E857CC5535AA1D064517B4223819BBCF86A99C72F373CF90AB09ECBAEC4
          D4D151358327B9B32287AD9B3655FB5DF6B394721EC8973725DF5DD274241F5F
          726C25A54702941E3DBE82BF555EB108DF471D3BAA5A7ED9AF221F7263D59B32
          15A4E5A292258AA068D1C2EAFD0679F1B04387769834E91BDCFA13F368E533FE
          B22DF25F955693E4FD0325A6CD1AA9AF9E5A8F6F899C672A2586D38AA4CA7432
          1F117EEBFFABA787AB6A035C9621FB56520444FAA5352D797950DFAF12C4B6E6
          B9D4B2654B346B261FB56BA83EDC272F91CBD323794F42827BC9C7962725D29C
          A8E5729E07119D0EAD5AA9E326E7AEA47BA91A6C6E93BC53643DFEF320014CF3
          46F595F04AA305F22E936CAF9C5FD6697196C2AFF6E31F107E597F49C7F3F80D
          C22FD725B956EFE6754052FD060EECAF52249B72B9952A5540E952BC0E508A0B
          CBFFC6549B2EC7575AF47A5A4024D7074BE1D7AF4F92DE625BF8B56D305FF74C
          483FEBEBABFC3FE51A24725CA2B023FF37B950C02E375AB768AC5E28B71CD71A
          796223F3941A6EB956CAFF4E9623D7BD5F6BBFFE8F5CBF6D1D3F09623BB669A9
          D641645FB6412AAB242DC8D5E5D9FF6D392FD5B9C2EB8C1C1BF5DFE37C64DBAC
          8F895CDBE4FC2E578C81485E8E27A94CF60EAA852C698C428E935CD3E45D23F9
          EF49A598BC1B23C1963466211538F2E451AE4FB26D12AC4BE308FE7EFF99D442
          833F8ECD9E0606CF83F986C40BB75CFC7FABF0CB0D426E787AED96DC889E25C9
          329D9E3BAE4F63973F37DAB66BF9CC8BF2E5CB17D1BC7973F54129B94889D0C9
          C55C0500D2D49DE4D0F2B75C18E5C22A174AC9B396DA2BC9CF5F34670E442AAD
          E72B480D8D7C20A8A86341DE28240D81373296AD9B367FAA8CEB48AB3D3B7EDE
          AABE3F2017644957123114699147B8B24EAA56556E3E2C05A9C1161992FD26EB
          F6B46578B8CB3169A48E834A1BB0D385BFE553BF5B10E0EF8DFDFBF660DCD891
          EAA34FF5EBBD87AA552AA078B1422856B420F7931DA44D7C69ED48DA8157EF45
          70FEB22E522A91B071A397B413B901AA741955BB4FF1A03CB5910F003DE5A5E3
          E7416ED6224AD2CA86D4C04A4D6CF1C245949879DBF8D2B32DE4FC5512C27594
          567EA485125967CB9A681140B901AA260825E8A41CA86DC99F172539BEEC07A9
          AD55B2C06325C190A0DF786598889D8CEF982797BAB18A50F8FB3FF931B15327
          8FABD646A499433947D58B97F2823B91F5D34B2DC8CE3C3724D75E8EC3C2053C
          679F91EBFB5B916D96FDA807D8B26D52B6E532BC6E3F5B84A4051139DFE4BC53
          12C5604C8E8D3CFD92A78296E38AE4CA9336096A64FEB28F64DFCA3E2B59C449
          6D9FBCEC28C1809C8B12A4AB8F19998E99C8B0CC5BFEDBF25B3E462441BBCBAD
          E77F9AA5A3DA411F3450BD9429FF4139DF653F481ACB91FDCF4E33FA35E48381
          52A3ACED57ED49A70893E4925B072922C24A7A65BB4CE75B7196ED285FF2EE8D
          E5B896C8FF5C3EF827D72305A7977D244193E5796D8D7C0576DB2F9B3161FC68
          2599EA3AC06BA1B4C0A33FC51464FFCBB112D957C74CBAF9DF90FFD2D3DEFF91
          205044521F5F4784DF56458459F879FE2838AE26FC4FDE5BE4DA2301A048A8A4
          F468F7A17C4AF8FFBFBDF3FCCFAA5AF6F87D7FCF3DF7D0A58422044209A17708
          2184D005546C484D048214A58BB460E080801445A4371141409A70A406A41791
          720810108FE7FE1DEBCE77765678B29FFD3CC94340397CD68BDF27C9CEDA6DED
          B5667E336B66D6CFD72E1569EB07E39CFB305619A7DC8BB1455FB151A4BFBD05
          31F0A591DFD77D7BB300DE99702DC6043A8E31C2D8C398A17CB2BF7D28D00790
          731C4F36148DB9919E2A84DF173E84B38555D678912DB5645CB092883189015A
          8FEF2BB21AE78C3A1CD85746AE439F3086ACF1C83D34B4518EB1B11B0661A4D5
          1D873F1F81071D1C6201CA03E16509BF4DE2422807857840462311FEA0F6166A
          28481B4BF855F955AF62BA8940BF7A357AD58CFCFC7C939D9DAD9E662A4F5065
          84A55FAD4D2D640DAF206482F0223C854ADCE4D92072D41E66A31DFF35011E9A
          B4942E2210E51DAA543375AA5637B5ABC4497FA44525FC28E3591F4D37A91D3B
          6A62238A006268853BA11BEC49C0322ECA1632800240F8F213418C528895F0F7
          EE164CF8F3EFDF3153267FA0B5D4EB27D42924F75ADD487E366C50D734A81FAF
          BB44B2457CF3668D4DD9BFFEB75EDF2AE16E69C184FFF69D5B4AE66C4801CF5E
          5388599FAE6986BAEBFEF6B102C24F789357239E9D506BC8F764FC454E6A0E05
          4BDD78B194344A5F41A4F989B20FF53AD2CE8678400A2037BC0FDEBBAAE5CA78
          612805841FE58982670CA138F9A9DF5794A92A7251AC65FFF217D35D0859A47A
          E228CE050B72C4581532D1BEAD8619590315C24B7F724D8C07BE314A9A7B3286
          89F7A53A11A525FDD78D0536C9D2861459E2D24B8815A5FAFCED43917FEFBE7E
          038F707A7D06398844F8F1202A41923ED5987F21B6E47A54556F3FFD0999F792
          7231F419A310106BE859E2CF38A854AEBCE9D229D9DC29A1C11709F366CFD2F2
          BC9036E403DF8EFC85ED9BD7CBBF83CF2909962C5CA4B5D4757ECABB217F30D6
          C811F1B785085BC24F7B1D4B023C29A920D4000024EB49444154FC572F475E69
          C019114AF8914F91FADF02B9F1D1F4C91A0693D8205EF75388ABE285EA608C51
          A2948DC7C863A1963C2B307EC2CFB34672DC84127EDE839FC80EF5F0DF0C5F31
          0A22FC2088F0238B314E193F8C159E8BA45D56A3F2F3A2CB0142D7B80FC41643
          5EE7B68C2595010186082B5FD3264DD412954F2CBFBB8A9113208BD5F810D9CD
          B578175D19909F107E56ACFDED43E111FEF442C78725FC6942F809830B6D7BE3
          C60D5DD9AC2BCF5B43E412A139CCB9062FD75499C27322CF98FBCC5D75705413
          1D27F38BBF997B5C5B49BFCC57E426AB6E84DA85DEC7E1F941E041078758F067
          117E15EC288B9EC1553F828030DDF5CD76F3C99C99EA0D4AE9DC4997274990F2
          623FBDDD50792E4819E4068147984F50D51608A50AD8AAD44BAF666A5612A55C
          B1B212FE68DEE5C9132769922989990874482371D2280748F788E1837563968D
          1BD6986F776C13C2D75A04B810478897BC375E2CBC334F83F053AA8E2A1624B9
          AA8755AECF4F6AE493744972D9A88C61667EF66CB369DD575A83DBEE886C1570
          71849F527DEAA194E7E779F0F0F7162554D25C8968802C524A15E5633D4FFC44
          F9E365F6B7F7E3E6D5ABFA7D3907328DF7922DF7D5BB17E2A9E477CA262AF112
          A050C9DDD01ADCAD5AE92A43AFB4344DEA4C4F495162C392397F6328A42677D2
          046F123359CE1FD0B78FEECF60AF1F09EC6D405DF9D9B33ED62575561E300020
          A2C405334E2110181390044805EFC27D82C66C2CC0C8A16FD5B090F167E7438F
          9464F3CB95E83B12B38706EF0E3960FC41A20A09E7ADA29E4DBE2121548C23C6
          13849FF74990B9D8454813C62D73FF955EDD75DE12FED33D3D55FB18630DB2C6
          EF7C738C3FEE31F6FDAC22F778126CDDB841BDB61822CC3FE62AF1D81F4F9D64
          FEEFB7C8C6D4CE6FBFD1BD3BC863F0FF8F90AD912386ABB79CFEC41BCD7B535D
          86F3FCED995378CD2DE1D79C0EF9E6107E7FBC7F28904DF40BFD5E430C60256D
          CC0B312083083FC6E1D48913F439AA5715195E8D90BDF2A6417C2D95036CAE06
          C9A506FCFAAF569B7DBB776AEE845DD1550829E73B445A412824FC18803226AC
          EC785A849FF9A932529E09FD422C7F5AE70EC5863031CE49BE27AC053909B1B5
          7DE50F9163E5E7E369533DF92DF3E249E537E39470C7D06B037454DF1E8F5741
          D0739CC79E1341614FA1A05C2C734EBFB9F4975D01C3E1E2F7BC2397E977FA0A
          998CA300924FEE001B6E6160105AC47C635E61F82353D099FCCD77B160BEE14C
          1B3932D33CAB6A610EA547E0410787585058275A045338E10F27A44ADCE57F78
          8EFC843F96901EEE812246F1475A428E063648217482BAE5D9B36698114306E9
          723D1E9BFA42F8B8070A194188578B7295FE6B4028F16212D243384FF50A4296
          ABC409B1EB1991F0EFF96EB769DFBA8D906AAFBA010A0F654112D7E64D8F77F4
          B5B872F9BC26C2B1D32CDE4D3C8D902F96DB9F06E1DFBF679726826A750B791E
          3CF7184028F8AD1BD7999B3F5F2952D28EBF513E3C87554AD1087FFEC3FB66E4
          7B19A64EED5AAA5020A5788ED8B933688F033F482EF31F0B0521108442102B0B
          898288A3E8523A7630FF381C3D590F5091826A309C0B216587512A3BBD3F6674
          110F39F719953142433C2CE1E73E28534A4092DC0701A30FF08C33966F5CBBAA
          5E398EB31C0FB160ACDEFEE57ACCC9D3DC9F38656AEC935B81F7F99D81AF9AFE
          3DD24D52BD780D178278A8674E9E0B4384310B41F15FABA4A072159B419190C7
          58D5F124E423550C8E53C524421E3DFC83E9DCAE9D124D8894121019839083DB
          B78ABE3B35F3A9A8453884F5F263C8746AD5DCFCB87FAF21CF821022881BA554
          A95074F3C635ED470812FDCC4A0F0411408C4A13BF6F7136F79412339BB4CCD8
          85E4618050ADCADF1EE0E1C478D17CA0E48E860DE7783EFBFF9DDBBFD60A4DE4
          19F09E95CAFE553DC0CCD7F3E77E2A6C67C17881C459C24FFF933743480FEFEF
          6F6F7136F7B4E9D6B9B3E78DAD50D1FB0E420435E135809053210DAF3DC63EB1
          E310FEC4843AA653DB9666F3FA3561ED29778B11164AF8F9BE18B38C7F7F7B60
          093FF2C8127EE085F4948EF01347CFFC64DCD3AF107E564FD823E3E4D1E85567
          D8E781B14A851EC6AA358E82C29388D5A7A20FF70992DFF7EF1595FB91E537FB
          70841B6CAC3664882E62F5445707653E33E670B214F71EB9C78FE978254708A3
          05390020E8FEFE422EBF9739CCD4AB5343DF8367C37841B6FF2073CE6E1E48AE
          8E9557C81FCA94F2933C31E419F38EF1443FFD1155C31C9E1C81071D1C628125
          FC782E74D9BD4001144BF845C814127E51445CA378C2EF252459C2CF52338236
          DA7916BF15431C213717CE9C3213C68CD2301E427B501C0841C8F9AB03FA8525
          59715F1412CF8402AB4D0945511A2CD7862AF9508C1B3B46150684913EA31FF0
          A07DBD6D93FC3BBCFDC54B67954C135E53B142192FCC4694061E9892107EDE21
          12E1A70C245E3D969F11F82C45E34DE279766EDF5AD82E143F5FBEA09E569EDD
          2A60940ADEE720C20F3E9937D7346C90A0CBC236F69D3EDEBA25F89D01243963
          E810DD5198FADA5F6FDB628EFE78247093B59C4FD8A48BD2775E6807B1DCF4F1
          D2450BC3DAFAB164C102ADF76EE3517997264989E6CB55E11BDC64CF9DADEF61
          63EA2B96AF603A76EC684E1E8F5E3DE359E0B707F9E6DFBFE6EBEEB313C78DD1
          B2786C04C6F7606C316659594139FBCF8D05EC7A4C5FD2AF1003482F612D9BD7
          856F90178ACDEBD7E933E9FC16F26EC70A063AE3D3DF9EBE65D5826F00A965DC
          26B76E69CE8951EE6FFB470172933162985654624C110A68E7C99C8FA7071A53
          3BBEF95A5705780FC614CE0288F786D5ABCD91FDFB75B547374712026B574E98
          7FCC43FFB500640AC2CFB8A44F14D29F3DBB748E9A94FEE30F87D490A5EA8C26
          6522A3445E224B6EDD0C27E413C68F550FB5257EAC14B56DD1547724F7B70510
          414BF891E3BA2A2A64D923FCD13DFC96F0730E638263410630F2CD0B0B2B3010
          0A887F10E1073973E7E818629CD24FF42DAB10F4BDBF6D28BE5CBEDCB469D6CC
          2BC929731A59C98A21FAC6BF81DB0713C619AA94D1A634F21BC397B01A7F7BC0
          BE1EC824E68E3A48E45EE47C5025CDDF36146B567DA18515786F350CA56F3148
          788F20236FCEEC191AA289CCA71000AB109D93DB9B13C78B77C438FCE721F0A0
          83432C784CF83D42104AF883AA1084127EDA219839B7A4849FB67A0EE78A0283
          D806114D6288D94C6ADB96AD66E567CBCCB44993CDA037DF30C45FFADB86E25C
          EE09F50A21305568CABDF0FE1263EC17D0845B688CB3107D146B2D96844561F4
          EA926A1E06ECA2A895247AA48778A22167E5D59B1EA902C3A9DC63A66D9B16A6
          52C5B2EA25226F81F3D4D08942F85132B67F23117EC0BDED2E90BA398CF429C7
          22556161174896FD8B7AF8A3137E762CC6E3A9845A9E8310143C58908C48319F
          DBB76C1645DA424BA782664D933499188FA9BFED8E6FB69AD6AD9A2929E359E8
          5FC816D57BAE5D8A1C7A72FDD22533A0474F2FB4AABC17174FF51C4ACE91C0EC
          6FCF6A1089B4AC02E8866E2FBF6C929292CCCC6236878A05B9274F99CD9B3668
          3C3749A3847F14576D885AF4C41333FF3424ADC0F061F93DD695043F20EE541B
          D1F15A40A4F8765999C3D5BBEE6F0FF0F052BEB571DD3A1E110C21FC783BA9CA
          E33F87550BE2DA9528CB1884E8749031335788F5EF0FA3EF9111E9399E06304A
          5B366DA2E38A79C7FC204E9BF86C42ADFC79128BE6E7E80ED2EA01967330BC1A
          272498E689895A6E3541C60CDE578D1797776405917D2D0E47D8A999500C9221
          21A03AD7E41BD0A7542FC280F0B7B7989F3DD7B46828A4516413213D107EBE1D
          72C1BFC282DCF52A6955D5F723E484B6ACC2DDB81A9C28CA0ED9906962E54309
          3F616DFFBC1E2CC7F11407117ECA724622FC1440B0ED2DE1F7F297C2EFB16DD3
          465D3DB1B1F28015DB319999E65E845C19BCD4A3860F37F56BD7D6BEE21D704A
          F0EDD037A16134C837AA6E51D481EF571AF9DD252539D0C30FBEDE28EFD1B4A9
          127EFA88E7A11AD8D89123D5A3EE6F0FF0B08F183258573AED5CB3C02915741E
          7286B2D5E4C4D87C2DF2B366CD9C1ED6D60F8C619C0EFEE30ECF2F020F3A38C4
          8270C2EF79159E25E1B7828CFBB01C1CB4B43DFF931CD3B7771FD3AA454B218C
          4D44F1D654853B212B2B62C2E1BF1F3DD0DAED24D0716DBC5D9E12ACEA9569BC
          5BD4DBC3B226318E4A688404928C4AC93C629C831425E5E12813CA7521662856
          48364996C4C4FADB5FFFF9B21932F86D8DA74711F34C10732A3DF4ED195CD60D
          9494F0D36F2803C81C8A02C20B509A7B767E5BD8CE026285D7BD49A386F22C8F
          97D8F93D1AE1A7867FBF57FA68C297F5E0A28C896DDDBB27FCBDEFDEFAC50C7D
          E74D0D25C1FBA4CBE0028C86A00DB1080718D09FEB634851D9A5BA7AB99A2536
          D02A1AB77F0E0E31983975AA49AA5B4F4B2F422428BD48622221481873FEF667
          CEE49A7EFDFA9A1A35E2CC4BF2CDAB48BFC655AD6652923B9B1DDBC3E3AF2DF6
          EEDE6306BDFD8EF970C2076641CE7C6DCB7E0FFE76F3B3E709F9EBA89BE7F00D
          F056DA9AF2D1E2B58F1E3AA435EBF90E7C4BBE2163F6B557FB47FC2625C5B9B3
          6794E4703DAE6F8D299E8FDD7F9933A1ED7F7B946FBE58BE548D4292DE991B4A
          0699E73256D2BA760E24FC3F9D3E635EEFDF4FC7087204320C3064B66FDE60C8
          35F19F03A8193E6CE8600D5F5AF8F7F9E6ABD5AB343426D28EDDB182902CC643
          E3C4869AB30181A70F784E2AB3ACFE7CB9183E8FDF871AF79BD6AED672A16CE8
          A6EF52C14B88A41FE813E2F095C831A645D6105268CFF7838203C3870DD19038
          E6BFC682CBDC219760EA071F4893F07330CA21A18426721FEE6D650172C1BFC2
          02192407A5FCDFFE47DECFDB759A154E56E1F67D172E0700728072A83C8B25A6
          C819F2B9F26E04CBA5D2127E108DF05F3CFB93E69C2057E977E40C72801C9BAF
          56AE34BF3FF8B5C839F9797774233B0C176B48D9847BF5C2774D3184E4D8F6F4
          1BBA8BBEA18F4A27BF7B187613F79F032E9F3D6BFAF5ECA98621EFAB469BFCEC
          D2A143E06A05ABD378F789BD674CF1CEC0CA67568383F218D82F845540562BBD
          CA4BD2BF323EC911C2B9E16F6FB177CF7766E0EBAF9A8FA64CD655540C07C263
          D9ECD2DFD6E1F941E0410787581089F047DF782B9CF04318A3117ECEF3137E4A
          F511CB1EE4B567DBF316CD9A9BAA222CE3F0C00BE187D8356DD8D07C3836CBEC
          DDB5430D05920BB92FC26FCB86B5BA591031EC087CC83E0A36A15EBC99333BDC
          8B4BB261FF3E3D55F8A3D4E3E5D9A896D224A1AE59BE78A1C6405EBE74CEDCBA
          ED2933628F21FC284AC22F10CE2825FE267672F7B7DBCDF52B1775432188F0E8
          CCE11A5F8F12E639501AF6DD8B2BCB1944F8FD65398917EDDFA7B7C6A54366B4
          6F057827D919967863BCB58038753C4878DB217C904AFB2CC5117E4028138682
          25FC8C11422320FD6BBFFCDC5C3A77C6E409D13F7AF8A0199F3552C34150A8AA
          B8E41DA8D14E4C34C683FFDA60C5F225AA78B92EF5E231A800A41F0FDE81DDBB
          D5CB45AD6A8C1936D16ADBA4A96EB643DF10B7CB7BB1741E943C693165CA24D3
          AC591353B520AC8772742FD7ACA5AB02D973E61A76A1A4DC1E63EAC2B9F366F9
          B2A5A6939078C650821817182D8CCB57FAF4359F2D592A977C7CED2F64CC766A
          D75EBF05049BBEC2102384006F3FEF70E3CA1573FFF66D73E7975FCCB58B3266
          D7AFD16A4F94F9E4DB4146391FAF74D06AC89380BEE2DB598390FB3066D82D79
          E9C2F9E66CEE09F51AB3FBEA82F9D91AE2A0E509854041F835AC87792EDFA66B
          6A7218E1B4804024356C50382F2093187DEC549A3377963976E4908E1156CA18
          072B962E51E3889291F42FA49C3142C2F58AE59FC925C3EFF12460B5A753C7F6
          6A0C5215C81A3F84F8108E33ECDDB7CDB64DEBCD71793EF20D8EC918DEB17593
          E99DDE5513AB2D2126CF828A4EE4B0D02F2448A67749D63C19FF3D433169E207
          1A4AC63C400ED037C81CF67F983B6386B972E1BCE688B0D91335F3593180646A
          BFCB7D8095CDC805BFC105F16535CCEE83C09CE3FA3C3BFB65ECDABEB5D08141
          29CA511999BA1A63C384ECFB414C7BA67431776F061BA796F0435E9F05E10713
          C78FD339CF18023C1FAB2A29EDDB9B85F372CCB953A765FEDC3157CE5DD00464
          62E37957DAF13C80BE42D6429443C39FEEDDBD6DFAF5EEA1DF8D3E2A8DFC4697
          DDBC19595E4E1A374E75152B0976051903C07B8F79E6C2E9D3BAF277EE74AE61
          55A97DEB563AC7C8E3E1FABC8FBD174EB14889CB93277DA8AB9690FDCA324E58
          B9240C0DD29F3D6BA61279E43F394AC8CE258BC5406ADB469D11C826C2FDD899
          1C87D8329175FEEB3B3C3F083CE8E0100BA8758DB70272827081A421DC50EC41
          65F128A1A9D5014438A1382D81A0FA48B4327A543420F988B6D68389D180873D
          48F8B34B6AEF9EBD4C8384FAF23CB48F53E149FC2CBBECE29DA3EA004495784A
          C21FA8BC40329DF5A421FCF07810CE1329C194645F4809825F49BF28753C6BD4
          F147990C7CBDBF59BE628934F5DA53DF9AFBAB52E1B90408749694892325DE17
          4064D87CC92EFF6BF29D1053DA136B0AC93B733278B753969753BB745285C437
          E13C968521FCFE5295902C62942D89E13BF23BA49F901AAACBB00AC0EF789BBD
          FEF14AB271DDAA152A68280DA14A786943AF1D8ADCDC5CED6BFA14EF28FD0BB9
          4888AF695A364B345D92DB09414A35291DDAA802A53FD55811C5453BAA084D99
          3C512E157C7D923451A21046CA1C6A458C82F1C8B23EDE4A363B82C0601890A4
          5C37AEBAA95AB69C1A828C0B88351538FCD70E05553BD87C283EBEB696A2C328
          A4CFB81FB1DB291DDBA9B1C40A4C4AC70EBA5A449810EFCB0A0263963EA48D3F
          F6FF57C66C772114D2F7A1FD4C7FD1F7C464931F0241A21210B1DD18605C9F6F
          405BCE63CC1232407850E8F59F14E44E909CCC7300E620F76325052F36EFCC9C
          26FE9712AEACB468FF571242246410AF2961168C791C0118BEFE7B00C212986B
          B696397DC55CE4F7A48609DA9F8C459E05624F98576DCA08CAF5F55BC8BCE327
          EF0E51F15FBF34804853D1CB7A43E903BEA91D5F7857098121AE9D71C6CA045E
          780818E358C7B23C9BAE040AB1A24F208E73664C8B98EF63B165F346D35C8CCC
          C2392AF7A52FB97613E9179C1454D34AEED4CE24356EA08608F295FB711F8D4D
          97F98F0C216937C830C7A181FCB3729CEF0511E61B635830DE48088558361299
          CA38C0B8646ED29673904D3D3AA798B32783139A6F8AAEE82AFF57C28F812D04
          1EA301E74524C29F9E922A6457FABB62E5C7EF20CF12C939849C665EF07C5C9B
          738075F6909C8B11D1B91D733349FB14194B581F7298187EDAB25246B866E873
          B16AF4C99CD926A97EFD42595C2AF97D26B2BC3CF1E351BD8E5D7D043C23C60B
          FA03A307E3890A63C82DDE973181238971C5EFCC1DC6013A3252882646187A10
          92CFEA55B9FFFDABDE937E218F80F034F24EE80B9E993EC3B9608D7F9C24383D
          988FECC2ECBFBEC3F383C0830E0EB1803AE290140424821FC586A021263468E3
          1BB6E646E9A0CC39C72A31E2B3AF5F0F6F6FC1FF68634910E742045876250ED3
          DF1E1C3F7ACC746CDFC134AC9720F7ABE2095C510224A579844208AB1012BB94
          8902E3DA9E31E27970F1C82E5DF2A95C2EFCFA207BEE4C25A3EA891665AE441E
          65CBF5ABBD64121B259869D3279947BF792109C78F1D51AF1EDE67BC36C4D702
          7E8774A2202C91E6771409A148289906B55E3655CAC8B38BA284FCEDDFB357AF
          E907DE567634B55E1EDE1985C1062CFE18FE63470EABE2A05F11DE5EBF7A3F39
          0620AAF40B3FF1EA10CE01292596152584A24011508128F4DA7EAC5CB14C1503
          EDF9FEF4112500A9D8C44F5B3F5BBD6D05A01DE4BC77AFF44052100A42392025
          B6E2901A3BF213F0BBBD26DF9731CAB3C7D7A8A184004361CCC8F74A54D566C7
          8EED4A4CF1882AB192F700846AD99521AE0F18474A8A2087F2CD698F0796B017
          FF7501D55550E2F411A4D27E03FDBD605C4020F8A690333B876C5BFEC63BB7EC
          B3C746E6D3C0AA2F56EAAA01C482FBAA4122FD6AE7BB92F338E691D717F40D86
          30C6AF86B4D0FF72BC6F1F99E7BF44F668532D068282D1A61E51B9BE857D5FE6
          2BA41B72CF1C65EE720CE201D927C9DB7FDDA7812F3E5FA17D8BB7BD5CD9BFC9
          FB78A123D6DB6BFB43C798BC2FE07F80E3D688B51E778C050CD11953A71876DF
          F5DFCF026396387EFA9CD51BAEA37343EE69E788E7A0906F21DF807E63ACE1A1
          A7AE3AF20259C23861F52368DF92C33F1C54E2C73B41F2B98725F296ACF23FC6
          25FB5DF093150F8C0B08A8CE2DB90F6127FBBFDB13767DC08A2F49B85C8F314C
          3231CF85111744E0A9748693A272B90AA65EF55A3A572B972BA7F2CA5F3D2714
          AB562C57E35B896B81ECE3F90132B6769C1886E53DFDC33B4160390E11E77998
          63BC1F4E28569643AFFDE33F0EABE3896B97567EEFDD1B2CBF2D567EB65443F5
          B80EF7E3DD791F0C31883DF3BD62D9323A2ED05D1880189F8C2BBE1B6382B1C0
          8A7AB4D2A46C00A9BB028B3C07BC87ED2FFA8EFB735FFE4656F2539F43E5F84B
          BAABF0B39A730E4F0F81071D1C6201CB92086526BF554428660851DE3FC3E3A0
          D9561FC2EF29262F8C02658D8110A96A01D08D42A48D2A763987731166DD843C
          470B2539B8FF80B449350DEAD65392AA5E2911849014F586C6793B7756145202
          81202193A54DBC8590D3450B1798870F2357F8D9B37B977A96791E0425021261
          8807D41A1263C78E91A68FCF6149D696814351A000501AAA044598A210B916C2
          97FAD02B162F36D3274E342D1B25EA39D5CA95372D1A37363973C3E3D901B902
          5443B164C40A6BFA2168775B0C1A966579E75022C5F35BCF29C7D9FC89EF8A70
          9F3675B27A96796F140F211F84B4F8AFEDC7FC9C794A9AE2EB14ACA4BC8427B1
          8A1840D584C050EB5C14993C378020123241FF9ECE3D29A7075F3314A74E1ED7
          7ADCAC4878E404428401E7917088248A906B93A89B58AFBEF46513215DD3CCBF
          1E168DF18D061291499CA674612D215A9400C458B1BB7CF27B9D1A5461C1B38D
          373CCE34AA575B5730FE3E6F7658EC7B28BE1583829C07ADF52DEFC05882D0F3
          BB25F68C63FE662ED8EF45680B7D3B4FC645B45D589F149F64CF5303BA667536
          B72AEB7D2399839071629949FAAB29EF0CD924A9957013C80EE30FE20339D195
          BC3B91F3110031C1BC3F63849D9DF97EBCAB1D6B00B2C67B335719A790F0F6ED
          DA9879D973E412C1D77D1A3870E0806E9846880FF284EF01F80EF6D9784EEBFD
          E43BF17F9E17F03F08941229198378635961C32BBD70C1DFCDC5F3C1C47FEBD6
          AD3AF79883F437C625A40F72C7B8E66F640DF31422CE0A52CEECD9DAFFCC7D3C
          C3B6FFFF19812C23EB3A7610B924DF8F7049E609E1283C3FE7561339554BE425
          A1695C87550F36EC430E20F3294FDCA04E5DF369CE02B95CF8F5913DDDBAA649
          1FB03220E346FA0060A4131EE96F8F87BF4F8F9E429E313AE2542E42A4B5A465
          94F04F8C76DE85F03CFA9FEFC03B602CA95C1639CB37E078DD7899931D3B882C
          9DA3B1FE8CD54A65CAE8F743DFE0A0F25F9F101AFAB5B4F23B284CD48F05F33E
          D16FA906B67C67749E3A33301C652CD590EBF15EFC1F43840D1DA9B6847CA33D
          C0080EEADF5060A4A525A7A83C7CA9AC8C25F92EB6BFF9A97FCB7B5A2307E38B
          7146DF457388393C3F083CE8E0100B6EDCB865BA0A9154EF5B814708E5ACF5B6
          6F8687E890A844F847154A788A108638A0B4516691AA1600FE471BDA720EE7A2
          8C082588E6ED0194899BF5D10C8D3DC4F38317040FE44B22B8E2446012664268
          0031C04D9B34D6DD78211C2400FAAF1504482C0A9B6A1C854A5D48727C9D974D
          0751A083070F0A4B685A3C7FBE2E95B66DDEDC348EAFABCA413D29722EF19178
          79498C3B7DE2B821296BFBA64DAA6454512178E3E27407C5CB97C3BD75972E9F
          530F3F4A01528612E3B920FCF7EE852733A2208935C7FB07718234902448BF10
          1B8D52A44F285188878B730833A03F213878FE51388C8333B9C131F6A1387470
          BFF46F2F25858D1BD62D24CB1067883F1E434224D2523A994913C69A9FAF458F
          71F6839864141FA16678AE20665E088247FA193790AC76AD5A6B88C1C6B5EB02
          0DA1E270E2C7C3666C56A656756ADD22493D6C756A5553CF76E58A65940C374C
          A8AD31C56D5B3535A3338699C307A37BF52C7E3A936B884766832E1BB6C3EA0A
          24C59247FA9E6384B6F07D88A3DDB8217C2F87A789756BD69AF4B46E7A3F5DE5
          29081FC1B34FC50FCAFC115E7268DF1E937BD40B4B800441A0304ABAC81CBE73
          377AA52CF0C3A103266B74A61AAE842C84926B0DD790798281C373903FF15EE6
          08C3B8F25FE759E05EDE5DB374F112259E8C2FBE0F73966FF3D8B8F4C83FA112
          AC8C101AC1787CADDF2BFA3BFFB32177B4476692EBB16C69E4DC039C0B106DE2
          C521751ABAA1E75716D9555FC701A13FE3B2461B6AB213E74DF80BA48DF1C20A
          083B37E785ECABE107C63CB1EB245D27CA3CF456A72AEAF86B9AD8D8B46CDEC2
          8C1E394A4BE492D04C852CC27C20D6EC4502E967F7F12B97C2E5126199C80848
          2AA41F1986DEC0B1126404B21AD95D0C043CF25C1BEF32F7D1F8F76256FB00F2
          9BD503561F6DFE10FDCC3761DED057AC1AEFDDB5D39C3A765457279095B461AC
          A26F22ED4ABCFAF395A596DFC8DBF3E7CFCAE5C2AF1F0A4A04F3DDF9E63840EC
          37C7686ADCA0A1DE8B71F5DD8E6FF47E7C3FDA20EFD0B3F46F71841F9CCF3D63
          86BD3B582B2DB1B29058AF9ECE5D9E19C2CF33A3E39AD44B30C96DDB9AACF732
          35B7CB7F1D87E71381071D1C62C1C3878FCCF8B1E354F911BF4AB80AF17E2860
          7F5B40A51B36D9210E17A3004186D065A3232A52F8DB5BF03FDAD09673389738
          F5CC8CA125AE354EACECC6B56B7467D9A183DE323DD2BB9B9EDD7BA8D7898A3E
          A346666A1518365789B5BAC9EE5DDF998FA74D370307BCAAA13390227652CDC9
          C931274E04D76927E18A65DBE1830669D21C4BEA2CDD936CC93384B6256C898D
          6558CEEEDAA993F6F75B6FBC69366EDC58A41D78F0F0AE193EEC5D3586580141
          80A3F8C688A28ED6C7244242FCA97882B2B3FDCC2EAF789D43DBD23F28347D66
          BEBD5CFFCD816F98AD9BB714691709C471B3B1D7CC8F269BEE699D750318C21D
          084360CBF7A9F28D0EEDFB5E95A5FFDC92823009764B1D3FEE7D35E0EC3BBD31
          F0351D4B9BD76F3079BE9C8658C1463BFF3874D07CBEF23325E8246543E8D801
          9A7E193F2ECB2C5BFCA990D1EFCDEFBF46DF0B220884295131833131440C47C6
          072B647C17DE89BAE0D4B0DFB57347B15BEF3F0DB0111A49C924EFB147022175
          CC778C0DAAD910EE64C9C523312E499826669A508E542182191919FABF928031
          B27FDF6EF52052C2950A2C78310921C4F3CB77C593BB7FDFDEB07AE97F04284D
          78E4F0214D10E659904DBA13A97C1FC85CFF7E7D75C75FE6D481FDDF6BE223DF
          93EF45581CAB1E10293CB4244193CC8D1CF1DF27147CE32D1BD6EB6673C802E6
          1D2B5A23860FD5BE3872E407DD1C89B6BFDD7F60468FC8D4EA5CACC242B64BD2
          FF24FF5216167983C1C99C61DC4D9934D9ECDBFBBD61932BDB36EFEE2DF3F65B
          6F78CF929A66FAA4F73083DF7AD76C58172E977036646565A9DC45E6F2EC007D
          10B4BF06C81CF19E1A107C732B232955EB6F1709572E5F3484620D1DF2AE19D0
          FF15D53B78BC994F9B366C2C7480B04F4BE69061222BD3653CA76BE5ADF7B38A
          AECCFA515AF9CDF8D8BA757391769170E9D205B376CD2A9963C3D5082617A69F
          E82CCA4DAFFD6A4DE1AEE5CC3DDED5EA5790357AA4795030268A03B96F870F1C
          344B17C99C93318621C137C2A8A05A1709FCCB162D52D95C5C896B87E70B8107
          1D1C620589A0D42BA67420B1822402F9DB8402828E606233107EE7DC929015DA
          D0967338F7417E9EA17282BF5D71B025FE882905789282C28F62054997F7E43A
          5C13C1E9FF7F2410A3CBBB510AF27E31C445776C95BEC3EB7DE74EE467FED7EF
          0F4D7EDE6D4DD6CABB71432BD444AAEA130AEA8A439E5835A19FA37D17C838DF
          9C2A0E7CF36849D791F0CDB68DE6F5017D347997D508721B301C31CAA2C535C7
          02DE89BE250C809032421A1EC9317FBBD282BE625F01FA8F7B94C4AB160BF826
          8C7FBC9B185CDCC75F07FE8F063B56F32CD18CEE5BD7D825F7A6C15878F00446
          8F851D6B1869CCB3D2EC22FC2C60C718E03B455A79E4381BC9B12A487D75BCCD
          78D033868F88BACA190A36CD63258BFEA0FFA38D03FA9FB9FFE8E1AF265FCEF3
          FF3F1A546EC8F31657E69477BF218620DF25EF6664B904C146DE92DFC5B33396
          8B9379F7EF88DC976BE3B08936CEA2C1EE546DBF51240383E7E75E1835D19C23
          A17852F9EDFF5F7140A6E3CCC97F90A7D5835895CCCF0BBE9FD595E8C948EF5A
          12A81EB82DB24C0C16C69BFFFF0EFF39083CE8E0E0E0F04761C3DA55E6DDB706
          EA4A044BD684DB407E08832004E2D2C5C775B01D1C5E245C3A77D6640C1EACB1
          E654756193407F1B07070787A781C0830E0E0E0E7F14A841CE2AC4D58BE7CCAC
          8FA69AE6498D344E9B78DB26498966E28713A459F0B90E0EFFE9787037CFACFF
          6AB559302FDB901BE0FFBF838383C3D340E041070707873F036C2A45AD674D00
          AFE4554AA252C69F119FEDE0E0E0E0E0F0A220F0A0838383C39F81A3870E69C2
          AB2DC148B9C5D75F1BE008BF838383838343291078D0C1C1C1E15983A43D1202
          1FDCF1120F298B373A33434BE651E693B2A0D43A5FBB66B5340FBE8683838383
          838343F1083CE8E0E0E0F0AC31E8ED77B4DC5B6A72272DB5483D73EA65374AA8
          67DAB66965BAA5A5EAC63EFEF31C1C1C1C1C1C1C6243E04107070787678DE143
          87697D6D6A4953239CDD4B7BF5E869268C1B6FBEFC6295B97A39F6B2750E0E0E
          0E0E0E0EE1083CE8E0E0E0F0ACF1F0E14373EBC64DADCFCE1E0817CE79E53763
          D9BFC0C1C1C1C1C1C1A178041E747070707070707070707078311078D0C1C1C1
          C1C1C1C1C1C1C1E1C540E0410707070707070707070787170381071D1C1C1C1C
          1C1C1C1C1C1C5E0C041E747070707070707070707078311078D0C1C1C1C1C1C1
          C1C1C1C1E1C540E041070707070707070707078717038107FF0CDCBB7BC7F8E1
          6FE3E0E0E0E0E0E0E0E0E0E0101B020F3A38383838383838383838BC0830FFF5
          FF81B8762AAA6A87940000000049454E44AE426082}
        Stretch = True
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 453
      Width = 718
      Height = 260
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        687.916666666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object lbl1: TQRLabel
        Left = 8
        Top = 8
        Width = 161
        Height = 20
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          21.166666666666670000
          425.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total dos Servi'#231'os em R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lbl2: TQRLabel
        Left = 8
        Top = 32
        Width = 165
        Height = 20
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          84.666666666666670000
          436.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total dos Materiais em R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lbl3: TQRLabel
        Left = 8
        Top = 64
        Width = 114
        Height = 20
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          169.333333333333300000
          301.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total geral em R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 8
        Top = 48
        Width = 297
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          127.000000000000000000
          785.812500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 360
        Top = 48
        Width = 329
        Height = 17
        Size.Values = (
          44.979166666666670000
          952.500000000000000000
          127.000000000000000000
          870.479166666666800000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText9: TQRDBText
        Left = 210
        Top = 5
        Width = 96
        Height = 20
        Size.Values = (
          52.916666666666660000
          555.625000000000000000
          13.229166666666670000
          254.000000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblOS
        DataField = 'VALORCOBRADOSERVICOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 205
        Top = 30
        Width = 101
        Height = 20
        Size.Values = (
          52.916666666666660000
          542.395833333333400000
          79.375000000000000000
          267.229166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblOS
        DataField = 'VALORCOBRADOMATERIAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 205
        Top = 65
        Width = 101
        Height = 20
        Size.Values = (
          52.916666666666660000
          542.395833333333400000
          171.979166666666700000
          267.229166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblOS
        DataField = 'VALORCOBRADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBRichText1: TQRDBRichText
        Left = 8
        Top = 91
        Width = 701
        Height = 146
        Size.Values = (
          386.291666666666700000
          21.166666666666670000
          240.770833333333300000
          1854.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HiresExport = False
        DataField = 'OBS'
      end
      object lblResponsavel: TQRLabel
        Left = 362
        Top = 69
        Width = 314
        Height = 20
        Size.Values = (
          52.916666666666660000
          957.791666666666800000
          182.562500000000000000
          830.791666666666800000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 341
      Width = 718
      Height = 21
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 12
        Top = 2
        Width = 537
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          5.291666666666667000
          1420.812500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 555
        Top = 2
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          1468.437500000000000000
          5.291666666666667000
          256.645833333333400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Quantidade'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 362
      Width = 718
      Height = 27
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        71.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'tblServicos.AMBIENTE'
      Master = qrpOS
      ReprintOnNewPage = False
      object QRDBText4: TQRDBText
        Left = 17
        Top = 3
        Width = 157
        Height = 23
        Size.Values = (
          60.854166666666670000
          44.979166666666670000
          7.937500000000000000
          415.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = tblServicos
        DataField = 'NOMEDOAMBIENTE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 389
      Width = 718
      Height = 21
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'tblServicos.PRODUTO'
      FooterBand = QRBand1
      Master = qrpOS
      ReprintOnNewPage = False
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 430
      Width = 718
      Height = 23
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRDBText8: TQRDBText
        Left = 12
        Top = 3
        Width = 537
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          7.937500000000000000
          1420.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tblServicos
        DataField = 'NOMEDOPRODUTO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 564
        Top = 3
        Width = 80
        Height = 15
        Size.Values = (
          39.687500000000000000
          1492.250000000000000000
          7.937500000000000000
          211.666666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(tblServicos.QUANTIDADE)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  object dtsLocais: TDataSource
    DataSet = tblLocais
    Left = 403
    Top = 294
  end
  object tblLocais: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'Select * from locais')
    ParamCheck = True
    UniDirectional = False
    Left = 403
    Top = 278
  end
  object dlgFigura: TSavePictureDialog
    DefaultExt = '*.jpg'
    Filter = 'Figuras JPEG|*.jpg'
    Title = 'Salvar como'
    Left = 358
    Top = 283
  end
  object qryProximaOS: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT MAX(OS) AS OS FROM OS')
    Left = 324
    Top = 285
  end
  object tblEstoque: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ESTOQUE'
      'where'
      '  ESTOQUE = :OLD_ESTOQUE')
    InsertSQL.Strings = (
      'insert into ESTOQUE'
      '  (ESTOQUE, TIPODOCUMENTO, TIPO, PRECO, TOTAL, DOCUMENTO, DATA, '
      'QUANTIDADE, '
      '   PRODUTO, ID_LOCAL)'
      'values'
      '  (:ESTOQUE, :TIPODOCUMENTO, :TIPO, :PRECO, :TOTAL, :DOCUMENTO, '
      ':DATA, '
      '   :QUANTIDADE, :PRODUTO, :ID_LOCAL)')
    RefreshSQL.Strings = (
      'Select '
      '  PRECO,'
      '  TOTAL,'
      '  ESTOQUE,'
      '  PRODUTO,'
      '  DOCUMENTO,'
      '  FORNECEDOR,'
      '  ID_LOCAL,'
      '  QUANTIDADE,'
      '  DATA,'
      '  TIPO,'
      '  TIPODOCUMENTO'
      'from ESTOQUE '
      'where'
      '  ESTOQUE = :ESTOQUE')
    SelectSQL.Strings = (
      'SELECT * FROM ESTOQUE')
    ModifySQL.Strings = (
      'update ESTOQUE'
      'set'
      '  ESTOQUE = :ESTOQUE,'
      '  TIPODOCUMENTO = :TIPODOCUMENTO,'
      '  TIPO = :TIPO,'
      '  PRECO = :PRECO,'
      '  TOTAL = :TOTAL,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  DATA = :DATA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRODUTO = :PRODUTO,'
      '  ID_LOCAL = :ID_LOCAL'
      'where'
      '  ESTOQUE = :OLD_ESTOQUE')
    ParamCheck = True
    UniDirectional = False
    Left = 29
    Top = 285
    object tblEstoqueESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = '"ESTOQUE"."ESTOQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tblEstoqueTIPODOCUMENTO: TIBStringField
      FieldName = 'TIPODOCUMENTO'
      Origin = '"ESTOQUE"."TIPODOCUMENTO"'
      FixedChar = True
      Size = 1
    end
    object tblEstoqueTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"ESTOQUE"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object tblEstoquePRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = '"ESTOQUE"."PRECO"'
      Precision = 18
      Size = 3
    end
    object tblEstoqueTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"ESTOQUE"."TOTAL"'
      Precision = 18
      Size = 2
    end
    object tblEstoqueDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Origin = '"ESTOQUE"."DOCUMENTO"'
    end
    object tblEstoqueDATA: TDateField
      FieldName = 'DATA'
      Origin = '"ESTOQUE"."DATA"'
    end
    object tblEstoqueQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"ESTOQUE"."QUANTIDADE"'
    end
    object tblEstoquePRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = '"ESTOQUE"."PRODUTO"'
    end
    object tblEstoqueID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Origin = 'ESTOQUE.ID_LOCAL'
    end
  end
  object dlgServico: TwwRecordViewDialog
    ControlType.Strings = (
      'PRODUTO;CustomEdit;edtProduto;F'
      'NOMEDOPRODUTO;CustomEdit;edtNomeDoProduto;F'
      'NOMEDOAMBIENTE;CustomEdit;edtAmbiente;F')
    DataSource = dtsServicos
    BorderStyle = bsToolWindow
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    Options = [rvoHideNavigator, rvoUseCustomControls, rvoShortenEditBox, rvoModalForm, rvoEnterToTab, rvoConfirmCancel, rvoCloseIsCancel, rvoMaximizeMemoWidth, rvoUseDateTimePicker]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    OnBeforeCreateControl = dlgServicoBeforeCreateControl
    Caption = 'Servi'#231'os'
    Selected.Strings = (
      'PRODUTO'#9'20'#9'Produto'#9'F'
      'NOMEDOPRODUTO'#9'48'#9'Descri'#231#227'o'#9#9
      'QUANTIDADE'#9'5'#9'Qtde'#9#9
      'PRECO'#9'10'#9'Pre'#231'o'#9#9
      'TOTAL'#9'10'#9'Total'#9'T'
      'NOMEDOAMBIENTE'#9'30'#9'Ambiente'#9#9)
    NavigatorFlat = True
    Left = 443
    Top = 277
  end
  object dtsFuncionarios: TDataSource
    DataSet = tblFuncionarios
    Left = 154
    Top = 280
  end
  object dtsServicos: TDataSource
    DataSet = tblServicos
    Left = 219
    Top = 280
  end
  object tblServicos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    AfterEdit = tblServicosAfterEdit
    AfterInsert = tblServicosAfterEdit
    AfterPost = tblServicosAfterPost
    BeforeDelete = tblServicosBeforeEdit
    BeforeEdit = tblServicosBeforeEdit
    BeforeInsert = tblServicosBeforeEdit
    BeforePost = tblServicosBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SERVICOS'
      'where'
      '  SERVICO = :OLD_SERVICO')
    InsertSQL.Strings = (
      'insert into SERVICOS'
      
        '  (AMBIENTE, ARQUITETO, CLIENTE, DATA, DATAPAGAMENTO, FUNCIONARI' +
        'O, '
      'HORACHEGADA, '
      '   HORASAIDA, OS, PRECO, PRODUTO, QUANTIDADE, SERVICO, TOTAL, '
      'ID_LOCAL)'
      'values'
      '  (:AMBIENTE, :ARQUITETO, :CLIENTE, :DATA, :DATAPAGAMENTO, '
      ':FUNCIONARIO, '
      
        '   :HORACHEGADA, :HORASAIDA, :OS, :PRECO, :PRODUTO, :QUANTIDADE,' +
        ' '
      ':SERVICO, '
      '   :TOTAL, :ID_LOCAL)')
    RefreshSQL.Strings = (
      'Select '
      '  SERVICO,'
      '  CLIENTE,'
      '  ARQUITETO,'
      '  DATA,'
      '  HORACHEGADA,'
      '  HORASAIDA,'
      '  QUANTIDADE,'
      '  PRODUTO,'
      '  DATAPAGAMENTO,'
      '  PRECO,'
      '  TOTAL,'
      '  FUNCIONARIO1,'
      '  AMBIENTE1,'
      '  AMBIENTE,'
      '  FUNCIONARIO,'
      '  OS,'
      '  ID_LOCAL'
      'from SERVICOS '
      'where'
      '  SERVICO = :SERVICO')
    SelectSQL.Strings = (
      'SELECT'
      ''
      
        'AMBIENTE, ARQUITETO, CLIENTE, DATA, DATAPAGAMENTO, FUNCIONARIO, ' +
        'HORACHEGADA, HORASAIDA, OS, PRECO, PRODUTO, QUANTIDADE, SERVICO,' +
        ' TOTAL, ID_LOCAL,'
      'A.DESCRICAO AS NOMEAMB'
      ''
      'FROM SERVICOS '
      ''
      ''
      'LEFT JOIN AMBIENTES A ON ( A.CODIGO = SERVICOS.AMBIENTE )'
      ''
      'WHERE OS = :OS '
      ''
      'ORDER '
      'BY A.DESCRICAO, AMBIENTE, PRODUTO')
    ModifySQL.Strings = (
      'update SERVICOS'
      'set'
      '  AMBIENTE = :AMBIENTE,'
      '  ARQUITETO = :ARQUITETO,'
      '  CLIENTE = :CLIENTE,'
      '  DATA = :DATA,'
      '  DATAPAGAMENTO = :DATAPAGAMENTO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  HORACHEGADA = :HORACHEGADA,'
      '  HORASAIDA = :HORASAIDA,'
      '  OS = :OS,'
      '  PRECO = :PRECO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SERVICO = :SERVICO,'
      '  TOTAL = :TOTAL,'
      '  ID_LOCAL = :ID_LOCAL'
      'where'
      '  SERVICO = :OLD_SERVICO')
    ParamCheck = True
    UniDirectional = False
    Left = 219
    Top = 270
    object tblServicosPRODUTO: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 6
      FieldName = 'PRODUTO'
      Origin = 'SERVICOS.PRODUTO'
      OnValidate = tblServicosPRODUTOValidate
    end
    object tblServicosNOMEDOPRODUTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 37
      FieldKind = fkLookup
      FieldName = 'NOMEDOPRODUTO'
      LookupDataSet = tblProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'PRODUTO'
      Size = 40
      Lookup = True
    end
    object tblServicosQUANTIDADE: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 5
      FieldName = 'QUANTIDADE'
      Origin = 'SERVICOS.QUANTIDADE'
      Required = True
      DisplayFormat = '#####0'
      EditFormat = '#####0'
    end
    object tblServicosPRECO: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 8
      FieldName = 'PRECO'
      Origin = 'SERVICOS.PRECO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblServicosTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 8
      FieldName = 'TOTAL'
      Origin = 'SERVICOS.TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblServicosNOMEDOAMBIENTE: TStringField
      DisplayLabel = 'Ambiente'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'NOMEDOAMBIENTE'
      LookupDataSet = tblAmbientes
      LookupKeyFields = 'AMBIENTE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'AMBIENTE'
      Size = 30
      Lookup = True
    end
    object tblServicosNOMEDOLOCAL: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'NOMEDOLOCAL'
      LookupDataSet = tblLocais
      LookupKeyFields = 'ID_LOCAL'
      LookupResultField = 'NOME'
      KeyFields = 'ID_LOCAL'
      Size = 30
      Lookup = True
    end
    object tblServicosID_LOCAL: TIntegerField
      DisplayLabel = 'Local'
      DisplayWidth = 30
      FieldName = 'ID_LOCAL'
      Origin = 'SERVICOS.ID_LOCAL'
      Visible = False
    end
    object tblServicosAMBIENTE: TIntegerField
      DisplayLabel = 'Ambiente'
      DisplayWidth = 5
      FieldName = 'AMBIENTE'
      Origin = 'SERVICOS.AMBIENTE'
      Required = True
      Visible = False
    end
    object tblServicosSERVICO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERVICO'
      Origin = 'SERVICOS.SERVICO'
      Visible = False
    end
    object tblServicosCLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLIENTE'
      Origin = 'SERVICOS.CLIENTE'
      Visible = False
    end
    object tblServicosARQUITETO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ARQUITETO'
      Origin = 'SERVICOS.ARQUITETO'
      Visible = False
    end
    object tblServicosHORACHEGADA: TTimeField
      DisplayWidth = 10
      FieldName = 'HORACHEGADA'
      Origin = 'SERVICOS.HORACHEGADA'
      Visible = False
    end
    object tblServicosHORASAIDA: TTimeField
      DisplayWidth = 10
      FieldName = 'HORASAIDA'
      Origin = 'SERVICOS.HORASAIDA'
      Visible = False
    end
    object tblServicosDATAPAGAMENTO: TDateField
      DisplayWidth = 10
      FieldName = 'DATAPAGAMENTO'
      Origin = 'SERVICOS.DATAPAGAMENTO'
      Visible = False
    end
    object tblServicosFUNCIONARIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FUNCIONARIO'
      Origin = 'SERVICOS.FUNCIONARIO'
      Visible = False
    end
    object tblServicosOS: TIntegerField
      DisplayWidth = 10
      FieldName = 'OS'
      Origin = 'SERVICOS.OS'
      Visible = False
    end
    object tblServicosDATA: TDateField
      DefaultExpression = '0'
      FieldName = 'DATA'
      Origin = 'SERVICOS.DATA'
      Visible = False
    end
    object tblServicosTIPOPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPOPRODUTO'
      LookupDataSet = tblProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TIPO'
      KeyFields = 'PRODUTO'
      Visible = False
      Size = 1
      Lookup = True
    end
  end
  object dtsOS: TDataSource
    DataSet = tblOS
    Left = 184
    Top = 280
  end
  object tblOS: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    AfterDelete = tblOSAfterDelete
    AfterInsert = tblOSAfterInsert
    AfterPost = tblOSAfterPost
    AfterScroll = tblOSAfterScroll
    BeforeDelete = tblOSBeforeDelete
    BeforeEdit = tblOSBeforeEdit
    BeforeOpen = tblOSBeforeOpen
    BeforePost = tblOSBeforePost
    OnCalcFields = tblOSCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from OS'
      'where'
      '  OS = :OLD_OS')
    InsertSQL.Strings = (
      'insert into OS'
      
        '  (OS, CLIENTE, DATA, FUNCIONARIO, CHEGADA, SAIDA, VALOR, ARQUIT' +
        'ETO, '
      'VALORCOBRADO, '
      '   OBS, RESPONSAVEL, VALORMATERIAIS, VALORSERVICOS, '
      'VALORCOBRADOMATERIAIS, '
      '   VALORCOBRADOSERVICOS, DATADEPAGAMENTO, RECIBO, '
      'DATA_CONFIRMACAO)'
      'values'
      
        '  (:OS, :CLIENTE, :DATA, :FUNCIONARIO, :CHEGADA, :SAIDA, :VALOR,' +
        ' '
      ':ARQUITETO, '
      '   :VALORCOBRADO, :OBS, :RESPONSAVEL, :VALORMATERIAIS, '
      ':VALORSERVICOS, '
      '   :VALORCOBRADOMATERIAIS, :VALORCOBRADOSERVICOS, '
      ':DATADEPAGAMENTO, :RECIBO, '
      '   :DATA_CONFIRMACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  OS,'
      '  CLIENTE,'
      '  DATA,'
      '  FUNCIONARIO,'
      '  CHEGADA,'
      '  SAIDA,'
      '  VALOR,'
      '  ARQUITETO,'
      '  VALORCOBRADO,'
      '  OBS,'
      '  RESPONSAVEL,'
      '  VALORMATERIAIS,'
      '  VALORSERVICOS,'
      '  VALORCOBRADOMATERIAIS,'
      '  VALORCOBRADOSERVICOS,'
      '  DATADEPAGAMENTO,'
      '  RECIBO,'
      '  DATA_CONFIRMACAO'
      'from OS '
      'where'
      '  OS = :OS')
    SelectSQL.Strings = (
      'SELECT * FROM OS where os = :os'
      '')
    ModifySQL.Strings = (
      'update OS'
      'set'
      '  OS = :OS,'
      '  CLIENTE = :CLIENTE,'
      '  DATA = :DATA,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  CHEGADA = :CHEGADA,'
      '  SAIDA = :SAIDA,'
      '  VALOR = :VALOR,'
      '  ARQUITETO = :ARQUITETO,'
      '  VALORCOBRADO = :VALORCOBRADO,'
      '  OBS = :OBS,'
      '  RESPONSAVEL = :RESPONSAVEL,'
      '  VALORMATERIAIS = :VALORMATERIAIS,'
      '  VALORSERVICOS = :VALORSERVICOS,'
      '  VALORCOBRADOMATERIAIS = :VALORCOBRADOMATERIAIS,'
      '  VALORCOBRADOSERVICOS = :VALORCOBRADOSERVICOS,'
      '  DATADEPAGAMENTO = :DATADEPAGAMENTO,'
      '  RECIBO = :RECIBO,'
      '  DATA_CONFIRMACAO = :DATA_CONFIRMACAO'
      'where'
      '  OS = :OLD_OS')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'OS'
    GeneratorField.Generator = 'GEN_OS_ID'
    DataSource = dtsOsPesquisa
    Left = 184
    Top = 270
    object tblOSOS: TIntegerField
      FieldName = 'OS'
      Origin = 'OS.OS'
      Required = True
    end
    object tblOSCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'OS.CLIENTE'
    end
    object tblOSDATA: TDateField
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object tblOSFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'OS.FUNCIONARIO'
    end
    object tblOSVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'OS.VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblOSARQUITETO: TIntegerField
      FieldName = 'ARQUITETO'
      Origin = 'OS.ARQUITETO'
    end
    object tblOSCHEGADA: TTimeField
      FieldName = 'CHEGADA'
      Origin = 'OS.CHEGADA'
      DisplayFormat = 't'
      EditMask = '!##:##;1;_'
    end
    object tblOSSAIDA: TTimeField
      FieldName = 'SAIDA'
      Origin = 'OS.SAIDA'
      DisplayFormat = 't'
      EditMask = '!##:##;1;_'
    end
    object tblOSVALORCOBRADO: TIBBCDField
      FieldName = 'VALORCOBRADO'
      Origin = 'OS.VALORCOBRADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblOSOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'OS.OBS'
      Size = 8
    end
    object tblOSRESPONSAVEL: TIBStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'OS.RESPONSAVEL'
      Size = 50
    end
    object tblOSVALORMATERIAIS: TIBBCDField
      FieldName = 'VALORMATERIAIS'
      Origin = 'OS.VALORMATERIAIS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblOSVALORSERVICOS: TIBBCDField
      FieldName = 'VALORSERVICOS'
      Origin = 'OS.VALORSERVICOS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblOSVALORCOBRADOMATERIAIS: TIBBCDField
      FieldName = 'VALORCOBRADOMATERIAIS'
      Origin = 'OS.VALORCOBRADOMATERIAIS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblOSVALORCOBRADOSERVICOS: TIBBCDField
      FieldName = 'VALORCOBRADOSERVICOS'
      Origin = 'OS.VALORCOBRADOSERVICOS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblOSDATADEPAGAMENTO: TDateField
      FieldName = 'DATADEPAGAMENTO'
      Origin = 'OS.DATADEPAGAMENTO'
    end
    object tblOSRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = '"OS"."RECIBO"'
    end
    object tblOSDATA_CONFIRMACAO: TDateField
      FieldName = 'DATA_CONFIRMACAO'
      Origin = 'OS.DATA_CONFIRMACAO'
    end
    object tblOSTOTALDEHORAS: TStringField
      FieldKind = fkCalculated
      FieldName = 'TOTALDEHORAS'
      Size = 5
      Calculated = True
    end
  end
  object trnOS: TIBTransaction
    DefaultDatabase = frmPrincipal.idbInstalLux
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 34
    Top = 249
  end
  object tblFuncionarios: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM FUNCIONARIOS '
      'WHERE ( INATIVO <> '#39'S'#39' OR INATIVO IS NULL )'
      'ORDER BY NOME')
    ParamCheck = True
    UniDirectional = False
    Left = 151
    Top = 269
    object tblFuncionariosNOME: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'FUNCIONARIOS.NOME'
      Size = 50
    end
    object tblFuncionariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'FUNCIONARIOS.CODIGO'
      Required = True
      Visible = False
    end
    object tblFuncionariosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'FUNCIONARIOS.QUANTIDADE'
    end
  end
  object tblAmbientes: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
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
      'SELECT '
      'AMBCLI.AMBIENTE, AMBCLI.CLIENTE, AMBIENTES.DESCRICAO'
      'FROM AMB_CLIENTES AMBCLI'
      ''
      'INNER JOIN AMBIENTES ON ( AMBCLI.AMBIENTE = AMBIENTES.CODIGO )'
      ''
      ''
      'WHERE'
      'AMBCLI.CLIENTE = :CODIGO'
      ''
      'ORDER BY DESCRICAO')
    ModifySQL.Strings = (
      'update AMBIENTES'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    DataSource = dtsclientes
    Left = 95
    Top = 285
    object tblAmbientesDESCRICAO: TIBStringField
      DisplayWidth = 40
      FieldName = 'DESCRICAO'
      Origin = '"AMBIENTES"."DESCRICAO"'
      Size = 40
    end
    object tblAmbientesAMBIENTE: TSmallintField
      FieldName = 'AMBIENTE'
      Origin = '"AMB_CLIENTES"."AMBIENTE"'
      Visible = False
    end
    object tblAmbientesCLIENTE: TSmallintField
      FieldName = 'CLIENTE'
      Origin = '"AMB_CLIENTES"."CLIENTE"'
      Visible = False
    end
  end
  object tblProdutos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      'CODIGO, NOME, PRECO, SALDO, TIPO, UNIDADE, BARRAS'
      ''
      'FROM'
      'PRODUTOS'
      ''
      'WHERE INATIVO <> '#39'S'#39
      ''
      'ORDER BY TIPO DESC ,NOME')
    ParamCheck = True
    UniDirectional = False
    Left = 61
    Top = 284
    object tblProdutosNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Required = True
      Size = 50
    end
    object tblProdutosBARRAS: TIBStringField
      DisplayLabel = 'C'#243'digo de Barras'
      DisplayWidth = 20
      FieldName = 'BARRAS'
      Origin = 'PRODUTOS.BARRAS'
      Visible = False
    end
    object tblProdutosPRECO: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 19
      FieldName = 'PRECO'
      Origin = 'PRODUTOS.PRECO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object tblProdutosSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'SALDO'
      Origin = 'PRODUTOS.SALDO'
      Visible = False
    end
    object tblProdutosTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 1
      FieldName = 'TIPO'
      Origin = 'PRODUTOS.TIPO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tblProdutosUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Origin = 'PRODUTOS.UNIDADE'
      Visible = False
      Size = 3
    end
    object tblProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PRODUTOS.CODIGO'
      Visible = False
    end
  end
  object tblArquitetos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT '
      'CODIGO, NOME, EMAIL, TELEFONE'
      ''
      'FROM ARQUITETOS'
      ''
      ''
      'WHERE CODIGO = :ARQUITETO')
    ParamCheck = True
    UniDirectional = False
    DataSource = dtsclientes
    Left = 254
    Top = 269
    object tblArquitetosNOME: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'ARQUITETOS.NOME'
      Required = True
      Size = 50
    end
    object tblArquitetosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ARQUITETOS.CODIGO'
      Required = True
      Visible = False
    end
    object tblArquitetosEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"ARQUITETOS"."EMAIL"'
      Size = 50
    end
    object tblArquitetosTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"ARQUITETOS"."TELEFONE"'
      Size = 50
    end
  end
  object dtsArquitetos: TDataSource
    DataSet = tblArquitetos
    Left = 254
    Top = 277
  end
  object dtsclientes: TDataSource
    DataSet = tblClientes
    Left = 287
    Top = 290
  end
  object tblClientes: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT '
      'CODIGO, FANTASIA , ARQUITETO, TELEFONE, NOME,EMAIL'
      ''
      'FROM '
      'CLIENTES '
      ''
      'WHERE ( INATIVO = '#39'N'#39' OR INATIVO IS NULL )'
      ''
      'ORDER BY '
      'FANTASIA')
    ParamCheck = True
    UniDirectional = False
    Left = 287
    Top = 269
    object tblClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CLIENTES.CODIGO'
      Visible = False
    end
    object tblClientesARQUITETO: TIntegerField
      FieldName = 'ARQUITETO'
      Origin = 'CLIENTES.ARQUITETO'
      Visible = False
    end
    object tblClientesTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CLIENTES.TELEFONE'
      Visible = False
    end
    object tblClientesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CLIENTES.NOME'
      Required = True
      Visible = False
      Size = 60
    end
    object tblClientesFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = 'CLIENTES.FANTASIA'
      Size = 50
    end
    object tblClientesEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
  end
  object qryOsPesquisa: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'O.DATA, O.OS, O.VALOR, '
      'C.NOME AS NOMEDOCLIENTE,'
      'A.NOME AS NOMEDOARQUITETO'
      ''
      'FROM OS O'
      ''
      'LEFT JOIN CLIENTES C ON  ( C.CODIGO = O.CLIENTE )'
      'LEFT JOIN ARQUITETOS A ON ( A.CODIGO = O.ARQUITETO )'
      ''
      'WHERE'
      ''
      'O.OS BETWEEN  :OINICIAL AND :OFINAL'
      'AND'
      'O.DATA BETWEEN :INICIO AND :FINAL'
      'AND'
      'COALESCE( O.CLIENTE , 0 )  BETWEEN :CINICIAL AND :CFINAL'
      'AND'
      'COALESCE( O.ARQUITETO ,0) BETWEEN :AINICIAL AND :AFINAL'
      ''
      ''
      'ORDER BY O.DATA DESC'
      '')
    Left = 543
    Top = 270
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AFINAL'
        ParamType = ptUnknown
      end>
    object qryOsPesquisaOS: TIntegerField
      DisplayWidth = 12
      FieldName = 'OS'
      Origin = '"OS"."OS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOsPesquisaDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 13
      FieldName = 'DATA'
      Origin = '"OS"."DATA"'
    end
    object qryOsPesquisaVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 22
      FieldName = 'VALOR'
      Origin = '"OS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object qryOsPesquisaNOMEDOCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 32
      FieldName = 'NOMEDOCLIENTE'
      Origin = '"CLIENTES"."NOME"'
      Size = 60
    end
    object qryOsPesquisaNOMEDOARQUITETO: TIBStringField
      DisplayLabel = 'Arquiteto'
      DisplayWidth = 45
      FieldName = 'NOMEDOARQUITETO'
      Origin = '"ARQUITETOS"."NOME"'
      Size = 60
    end
  end
  object qryArquitetosPesquisa: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'CODIGO, NOME, CIDADE'
      ''
      'FROM '
      'ARQUITETOS '
      ''
      'ORDER BY NOME')
    Left = 578
    Top = 270
    object qryArquitetosPesquisaNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'NOME'
      Origin = '"ARQUITETOS"."NOME"'
      Required = True
      Size = 60
    end
    object qryArquitetosPesquisaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Origin = '"ARQUITETOS"."CIDADE"'
      Required = True
      Size = 40
    end
    object qryArquitetosPesquisaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = '"ARQUITETOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qryClientesPesquisa: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      'CODIGO, NOME, CIDADE'
      ''
      'FROM CLIENTES'
      ''
      'ORDER BY NOME')
    Left = 608
    Top = 270
    object qryClientesPesquisaNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'NOME'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 60
    end
    object qryClientesPesquisaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 30
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
    Left = 613
    Top = 300
  end
  object dtsArquitetosPesquisa: TDataSource
    DataSet = qryArquitetosPesquisa
    Left = 578
    Top = 300
  end
  object dtsOsPesquisa: TDataSource
    DataSet = qryOsPesquisa
    Left = 543
    Top = 300
  end
  object qryItensPesquisa: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = trnOS
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dtsOsPesquisa
    ParamCheck = True
    SQL.Strings = (
      'SELECT'
      ''
      
        'S.QUANTIDADE, S.PRECO, S.PRODUTO, S.SERVICO, S.TOTAL, S.ID_LOCAL' +
        ','
      'L.NOME AS NOMEDOLOCAL,'
      'P.NOME AS NOMEDOPRODUTO,'
      'A.DESCRICAO AS NOMEDOAMBIENTE'
      ''
      'FROM SERVICOS S'
      ''
      ''
      'LEFT JOIN AMBIENTES A ON ( A.CODIGO = S.AMBIENTE )'
      'LEFT JOIN LOCAIS L ON ( L.ID_LOCAL = S.ID_LOCAL )'
      'LEFT JOIN PRODUTOS P ON ( P.CODIGO = S.PRODUTO )'
      ''
      'WHERE OS = :OS '
      ''
      'ORDER '
      'BY A.DESCRICAO, S.AMBIENTE')
    Left = 648
    Top = 270
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OS'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryItensPesquisaNOMEDOPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 33
      FieldName = 'NOMEDOPRODUTO'
      Origin = '"PRODUTOS"."NOME"'
      Size = 60
    end
    object qryItensPesquisaQUANTIDADE: TIntegerField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'QUANTIDADE'
      Origin = '"SERVICOS"."QUANTIDADE"'
    end
    object qryItensPesquisaPRECO: TIBBCDField
      DisplayLabel = 'Produtos'
      DisplayWidth = 12
      FieldName = 'PRECO'
      Origin = '"SERVICOS"."PRECO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryItensPesquisaTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 12
      FieldName = 'TOTAL'
      Origin = '"SERVICOS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryItensPesquisaNOMEDOAMBIENTE: TIBStringField
      DisplayLabel = 'Ambiente'
      DisplayWidth = 29
      FieldName = 'NOMEDOAMBIENTE'
      Origin = '"AMBIENTES"."DESCRICAO"'
      Size = 40
    end
    object qryItensPesquisaNOMEDOLOCAL: TIBStringField
      DisplayLabel = 'Local'
      DisplayWidth = 26
      FieldName = 'NOMEDOLOCAL'
      Origin = '"LOCAIS"."NOME"'
      Size = 50
    end
    object qryItensPesquisaSERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'os'
      DisplayWidth = 12
      FieldName = 'SERVICO'
      Origin = '"SERVICOS"."SERVICO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qryItensPesquisaPRODUTO: TIntegerField
      DisplayLabel = 'Produt'
      DisplayWidth = 10
      FieldName = 'PRODUTO'
      Origin = '"SERVICOS"."PRODUTO"'
      Visible = False
    end
    object qryItensPesquisaID_LOCAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_LOCAL'
      Origin = '"SERVICOS"."ID_LOCAL"'
      Visible = False
    end
  end
  object dtsItensPesquisa: TDataSource
    DataSet = qryItensPesquisa
    Left = 653
    Top = 300
  end
end
