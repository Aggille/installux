object frmHistoricoArq: TfrmHistoricoArq
  Left = 34
  Top = 115
  BorderStyle = bsToolWindow
  Caption = 'Hist'#243'rico do arquiteto'
  ClientHeight = 407
  ClientWidth = 867
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 265
    Top = 360
    Width = 162
    Height = 13
    Caption = 'TOTAL DESTE ARQUITETO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 440
    Top = 360
    Width = 153
    Height = 13
    Caption = 'Total de horas trabalhadas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblHoras: TLabel
    Left = 545
    Top = 380
    Width = 47
    Height = 13
    Caption = 'lblHoras'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 135
    Top = 360
    Width = 108
    Height = 13
    Caption = 'Total dos materiais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 5
    Top = 360
    Width = 105
    Height = 13
    Caption = 'Total dos servi'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grdOS: TwwDBGrid
    Left = 0
    Top = 0
    Width = 867
    Height = 208
    DisableThemes = False
    ControlType.Strings = (
      'expande;CustomEdit;wwExpandButton1;F'
      'QTITENS;CustomEdit;wwExpandButton1;F'
      'Botao;URL-Link')
    Selected.Strings = (
      'OS'#9'6'#9'O.S.'#9'F'
      'RECIBO'#9'10'#9'Recibo'#9'F'
      'DATA'#9'10'#9'Data'#9'F'#9'Datas'
      'PAGAMENTO'#9'10'#9'Pagamento'#9'F'#9'Datas'
      'CHEGADA'#9'8'#9'Chegada'#9'F'#9'Horas'
      'SAIDA'#9'8'#9'Sa'#237'da'#9'F'#9'Horas'
      'QUANTIDADE'#9'5'#9'Qtde.'#9'F'#9'Horas'
      'horas'#9'8'#9'Total de horas'#9'F'#9'Horas'
      'VALORCOBRADO'#9'15'#9'Valor'#9'F'
      'NOMEDOCLIENTE'#9'30'#9'Cliente'#9'F'
      'NOMEDOFUNCIONARIO'#9'40'#9'Funcion'#225'rio'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dtsOS
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnDblClick = grdOSDblClick
    PaintOptions.AlternatingRowColor = 16776176
  end
  object grdServicos: TwwDBGrid
    Left = 0
    Top = 208
    Width = 867
    Height = 146
    DisableThemes = False
    ControlType.Strings = (
      'ARQUITETO;CustomEdit;edtProduto;F'
      'PRODUTO;CustomEdit;edtProduto;F'
      'AMBIENTE;CustomEdit;edtambiente;F'
      'FUNCIONARIO;CustomEdit;edtFuncionarios;F')
    Selected.Strings = (
      'PRODUTO'#9'50'#9'Produto'#9'F'
      'QUANTIDADE'#9'10'#9'Quantidade'#9'F'#9
      'PRECO'#9'11'#9'Pre'#231'o Unit'#225'rio'#9'F'#9'Valores'
      'TOTAL'#9'10'#9'Pre'#231'o Total'#9'F'#9'Valores'
      'AMBIENTE'#9'30'#9'Ambiente'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    Ctl3D = False
    DataSource = dtsServicos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnDblClick = grdServicosDblClick
    PaintOptions.AlternatingRowColor = clInfoBk
  end
  object btnSair: TBitBtn
    Left = 786
    Top = 365
    Width = 75
    Height = 25
    Caption = 'Sair'
    ModalResult = 1
    TabOrder = 2
    OnClick = btnSairClick
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
  end
  object DBEdit1: TDBEdit
    Left = 270
    Top = 375
    Width = 121
    Height = 21
    TabStop = False
    Color = 16776176
    DataField = 'TOTAL'
    DataSource = dtsValor
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 135
    Top = 375
    Width = 121
    Height = 21
    TabStop = False
    Color = 16776176
    DataField = 'VALORMATERIAIS'
    DataSource = dtsValor
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 5
    Top = 375
    Width = 121
    Height = 21
    TabStop = False
    Color = 16776176
    DataField = 'VALORSERVICOS'
    DataSource = dtsValor
    ReadOnly = True
    TabOrder = 5
  end
  object tblServicos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = frmServicosCliente.trnServicos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      'S.PRECO, S.TOTAL, S.QUANTIDADE,'
      'A.DESCRICAO AS AMBIENTE,'
      'P.NOME AS PRODUTO'
      ''
      'FROM '
      'SERVICOS S'
      ''
      'INNER JOIN PRODUTOS P ON ( S.PRODUTO = P.CODIGO )'
      'LEFT JOIN AMBIENTES A ON ( S.AMBIENTE = A.CODIGO )'
      ''
      'WHERE'
      'S.OS = :OS'
      ''
      'ORDER BY AMBIENTE')
    DataSource = dtsOS
    Left = 120
    object tblServicosPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 37
      FieldName = 'PRODUTO'
      Origin = 'PRODUTOS.NOME'
      Required = True
      Size = 50
    end
    object tblServicosQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QUANTIDADE'
      Origin = 'SERVICOS.QUANTIDADE'
    end
    object tblServicosPRECO: TIBBCDField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      DisplayWidth = 11
      FieldName = 'PRECO'
      Origin = 'SERVICOS.PRECO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblServicosTOTAL: TIBBCDField
      DisplayLabel = 'Pre'#231'o Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Origin = 'SERVICOS.TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblServicosAMBIENTE: TIBStringField
      DisplayLabel = 'Ambiente'
      DisplayWidth = 24
      FieldName = 'AMBIENTE'
      Origin = 'AMBIENTES.DESCRICAO'
      Size = 40
    end
  end
  object dtsServicos: TDataSource
    DataSet = tblServicos
    Left = 133
  end
  object qryValor: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = frmServicosCliente.trnServicos
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = frmArquitetos.dtsArquitetos
    SQL.Strings = (
      
        'SELECT sum( ValorCobrado ) as total , sum( ValorCobradoServicos ' +
        ') as ValorServicos, sum( ValorCobradoMateriais ) as ValorMateria' +
        'is '
      ''
      'FROM OS'
      ''
      'INNER JOIN CLIENTES ON ( OS.CLIENTE = CLIENTES.CODIGO )'
      ''
      ''
      ''
      ''
      'WHERE '
      'CLIENTES.ARQUITETO = :CODIGO'
      ''
      ''
      '')
    Left = 163
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryValorTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object qryValorVALORSERVICOS: TIBBCDField
      FieldName = 'VALORSERVICOS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qryValorVALORMATERIAIS: TIBBCDField
      FieldName = 'VALORMATERIAIS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dtsValor: TDataSource
    DataSet = qryValor
    Left = 176
  end
  object tblOS: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = frmServicosCliente.trnServicos
    AfterOpen = tblOSAfterOpen
    OnCalcFields = tblOSCalcFields
    BufferChunks = 1000
    CachedUpdates = False
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
      '  AMBIENTE,'
      '  FUNCIONARIO,'
      '  OS'
      'from SERVICOS '
      'where'
      '  OS = :OS')
    SelectSQL.Strings = (
      'SELECT DISTINCT'
      
        'O.CHEGADA, O.CLIENTE, O.DATA,O.DATADEPAGAMENTO, O.FUNCIONARIO, O' +
        '.OS, O.SAIDA, O.VALORCOBRADO, O.RECIBO,'
      'C.NOME AS NOMEDOCLIENTE,'
      'F.NOME AS NOMEDOFUNCIONARIO,F.QUANTIDADE,'
      'R.PAGAMENTO,'
      ''
      '('
      'SELECT COUNT(*) FROM SERVICOS WHERE SERVICOS.OS = O.OS'
      ') AS QTITENS'
      ''
      ''
      ''
      'FROM OS O'
      ''
      'INNER JOIN CLIENTES C ON ( O.CLIENTE = C.CODIGO ) '
      'LEFT JOIN RECIBOS R ON ( O.RECIBO = R.ID )'
      'LEFT JOIN FUNCIONARIOS F ON ( O.FUNCIONARIO = F.CODIGO )'
      ''
      'WHERE C.ARQUITETO= :CODIGO'
      ''
      'ORDER BY O.DATA DESC')
    ModifySQL.Strings = (
      'update OS'
      'set'
      '  DATADEPAGAMENTO = :DATADEPAGAMENTO'
      'where'
      '  OS = :OLD_OS')
    Left = 210
    object tblOSOS: TIntegerField
      DisplayLabel = 'O.S.'
      DisplayWidth = 10
      FieldName = 'OS'
      Origin = 'OS.OS'
      Required = True
    end
    object tblOSDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 15
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object tblOSCHEGADA: TTimeField
      DisplayLabel = 'Chegada'
      DisplayWidth = 15
      FieldName = 'CHEGADA'
      Origin = 'OS.CHEGADA'
      DisplayFormat = 't'
      EditMask = '!90:00;1;_'
    end
    object tblOSSAIDA: TTimeField
      DisplayLabel = 'Saida'
      DisplayWidth = 15
      FieldName = 'SAIDA'
      Origin = 'OS.SAIDA'
      DisplayFormat = 't'
      EditMask = '!90:00;1;_'
    end
    object tblOShoras: TTimeField
      DisplayLabel = 'Total de horas'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'horas'
      DisplayFormat = 't'
      EditMask = '!90:00;1;_'
      Calculated = True
    end
    object tblOSDATADEPAGAMENTO: TDateField
      DisplayLabel = 'Pagamento'
      DisplayWidth = 20
      FieldName = 'DATADEPAGAMENTO'
      Origin = 'OS.DATADEPAGAMENTO'
    end
    object tblOSVALORCOBRADO: TIBBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'VALORCOBRADO'
      Origin = 'OS.VALORCOBRADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblOSNOMEDOFUNCIONARIO: TIBStringField
      DisplayLabel = 'Funcionario'
      DisplayWidth = 30
      FieldName = 'NOMEDOFUNCIONARIO'
      Origin = 'FUNCIONARIOS.NOME'
      Size = 50
    end
    object tblOSQTITENS: TIntegerField
      DisplayLabel = 'Qt. Itens'
      DisplayWidth = 10
      FieldName = 'QTITENS'
    end
    object tblOSNOMEDOCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 30
      FieldName = 'NOMEDOCLIENTE'
      Origin = 'CLIENTES.NOME'
      Required = True
      Visible = False
      Size = 50
    end
    object tblOSCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'OS.CLIENTE'
      Visible = False
    end
    object tblOSFUNCIONARIO: TIntegerField
      DisplayLabel = 'Funcionario'
      FieldName = 'FUNCIONARIO'
      Origin = 'OS.FUNCIONARIO'
      Visible = False
    end
    object tblOSBotao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Botao'
      Size = 8
      Calculated = True
    end
    object tblOSQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"FUNCIONARIOS"."QUANTIDADE"'
    end
    object tblOSPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"RECIBOS"."PAGAMENTO"'
    end
    object tblOSRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = '"OS"."RECIBO"'
    end
  end
  object dtsOS: TDataSource
    DataSet = tblOS
    Left = 225
  end
  object tblFicha: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = frmServicosCliente.trnServicos
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT'
      
        'O.DATA, O.VALORCOBRADOMATERIAIS, O.VALORCOBRADOSERVICOS,O.OBS, O' +
        '.RESPONSAVEL,'
      'C.NOME AS NOMEDOCLIENTE,C.TELEFONE,'
      'S.PRECO, S.TOTAL, S.QUANTIDADE,S.AMBIENTE,S.OS,'
      'A.DESCRICAO AS NOMEDOAMBIENTE,'
      'P.NOME AS PRODUTO,'
      'AR.NOME AS NOMEDOARQUITETO'
      ''
      'FROM '
      'SERVICOS S'
      ''
      'INNER JOIN OS O '#9#9'ON ( S.OS = O.OS )'
      'INNER JOIN CLIENTES C'#9'ON ( O.CLIENTE = C.CODIGO )'
      'INNER JOIN PRODUTOS P '#9'ON ( S.PRODUTO = P.CODIGO )'
      'LEFT JOIN AMBIENTES A '#9'ON ( S.AMBIENTE = A.CODIGO )'
      'LEFT JOIN ARQUITETOS AR ON ( C.ARQUITETO = AR.CODIGO )'
      ''
      'WHERE '
      'O.ARQUITETO= :CODIGO'
      ''
      ''
      'ORDER BY A.DESCRICAO, PRODUTO')
    Left = 275
    object IBStringField1: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 37
      FieldName = 'PRODUTO'
      Origin = 'PRODUTOS.NOME'
      Required = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QUANTIDADE'
      Origin = 'SERVICOS.QUANTIDADE'
    end
    object IBBCDField1: TIBBCDField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      DisplayWidth = 11
      FieldName = 'PRECO'
      Origin = 'SERVICOS.PRECO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      DisplayLabel = 'Pre'#231'o Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Origin = 'SERVICOS.TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object tblFichaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'OS.DATA'
    end
    object tblFichaVALORCOBRADOMATERIAIS: TIBBCDField
      FieldName = 'VALORCOBRADOMATERIAIS'
      Origin = 'OS.VALORCOBRADOMATERIAIS'
      Precision = 9
      Size = 2
    end
    object tblFichaVALORCOBRADOSERVICOS: TIBBCDField
      FieldName = 'VALORCOBRADOSERVICOS'
      Origin = 'OS.VALORCOBRADOSERVICOS'
      Precision = 9
      Size = 2
    end
    object tblFichaOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'OS.OBS'
      Size = 8
    end
    object tblFichaRESPONSAVEL: TIBStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'OS.RESPONSAVEL'
      Size = 50
    end
    object tblFichaNOMEDOCLIENTE: TIBStringField
      FieldName = 'NOMEDOCLIENTE'
      Origin = 'CLIENTES.NOME'
      Required = True
      Size = 50
    end
    object tblFichaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CLIENTES.TELEFONE'
    end
    object tblFichaNOMEDOARQUITETO: TIBStringField
      FieldName = 'NOMEDOARQUITETO'
      Origin = 'ARQUITETOS.NOME'
      Size = 50
    end
    object tblFichaAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
      Origin = 'SERVICOS.AMBIENTE'
    end
    object tblFichaNOMEDOAMBIENTE: TIBStringField
      FieldName = 'NOMEDOAMBIENTE'
      Origin = 'AMBIENTES.DESCRICAO'
      Size = 40
    end
    object tblFichaOS: TIntegerField
      FieldName = 'OS'
      Origin = 'SERVICOS.OS'
    end
  end
  object dtsficha: TDataSource
    DataSet = tblFicha
    Left = 288
  end
end
