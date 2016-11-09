object frmSelOrcto: TfrmSelOrcto
  Left = 173
  Top = 119
  BorderStyle = bsToolWindow
  Caption = #218'ltimos or'#231'amentos deste cliente'
  ClientHeight = 338
  ClientWidth = 688
  Color = 16776176
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 0
    Top = 0
    Width = 688
    Height = 31
    Align = alTop
    DataField = 'NOME'
    DataSource = frmOS.dtsclientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 0
    Top = 31
    Width = 688
    Height = 60
    Align = alTop
    Caption = 
      'Esses s'#227'o os '#250'ltimos 100 servi'#231'os or'#231'ados para esse cliente. Par' +
      'a adicionar o servi'#231'o '#224' OS atual, basta dar 2 cliques sobre o se' +
      'rvi'#231'o desejado. Quanso estiver encerrado, clique em OK.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 91
    Width = 688
    Height = 215
    DisableThemes = False
    Selected.Strings = (
      'EMISSAO'#9'10'#9'Data'
      'QUANTIDADE'#9'7'#9'Qtde'
      'NOMEDOPRODUTO'#9'50'#9'Produto'
      'NOMEDOLOCAL'#9'40'#9'Local')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dtsOrcto
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    PaintOptions.AlternatingRowColor = 16250871
  end
  object BitBtn1: TBitBtn
    Left = 600
    Top = 312
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
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
  object qryOrcto: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = frmOS.trnOS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT FIRST 50'
      ''
      'I.DATASERVICO, I.LOCAL, I.PRODUTO, I.QUANTIDADE,'
      'P.NOME AS NOMEDOPRODUTO, I.PRECOUNITARIO,'
      'A.DESCRICAO AS NOMEDOLOCAL,'
      'O.EMISSAO'
      ''
      ''
      'FROM ITEMSDEORCAMENTOS I'
      ''
      'INNER JOIN PRODUTOS P ON ( P.CODIGO = I.PRODUTO )'
      'INNER JOIN AMBIENTES A ON ( A.CODIGO = I.LOCAL )'
      'INNER JOIN ORCAMENTOS O ON (O.NUMERO = I.ORCAMENTO )'
      ''
      'WHERE O.CLIENTE = :CLIENTE'
      ''
      'ORDER BY O.EMISSAO DESC')
    Left = 96
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end>
    object qryOrctoEMISSAO: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'EMISSAO'
      Origin = 'ORCAMENTOS.EMISSAO'
    end
    object qryOrctoQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qtde'
      DisplayWidth = 7
      FieldName = 'QUANTIDADE'
      Origin = 'ITEMSDEORCAMENTOS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qryOrctoNOMEDOPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 50
      FieldName = 'NOMEDOPRODUTO'
      Origin = 'PRODUTOS.NOME'
      Required = True
      Size = 60
    end
    object qryOrctoNOMEDOLOCAL: TIBStringField
      DisplayLabel = 'Local'
      DisplayWidth = 40
      FieldName = 'NOMEDOLOCAL'
      Origin = 'AMBIENTES.DESCRICAO'
      Size = 40
    end
    object qryOrctoDATASERVICO: TDateField
      DisplayWidth = 10
      FieldName = 'DATASERVICO'
      Origin = 'ITEMSDEORCAMENTOS.DATASERVICO'
      Visible = False
    end
    object qryOrctoLOCAL: TIntegerField
      DisplayLabel = 'Local'
      DisplayWidth = 10
      FieldName = 'LOCAL'
      Origin = 'ITEMSDEORCAMENTOS.LOCAL'
      Visible = False
    end
    object qryOrctoPRODUTO: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 10
      FieldName = 'PRODUTO'
      Origin = 'ITEMSDEORCAMENTOS.PRODUTO'
      Visible = False
    end
    object qryOrctoPRECOUNITARIO: TIBBCDField
      FieldName = 'PRECOUNITARIO'
      Origin = 'ITEMSDEORCAMENTOS.PRECOUNITARIO'
      Precision = 18
      Size = 2
    end
  end
  object dtsOrcto: TDataSource
    DataSet = qryOrcto
    Left = 128
    Top = 104
  end
end
