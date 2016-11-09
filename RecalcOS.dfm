object frmRecalcOS: TfrmRecalcOS
  Left = 63
  Top = 131
  BorderStyle = bsToolWindow
  Caption = 'Recalcula OS'
  ClientHeight = 78
  ClientWidth = 185
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
  object DBText1: TDBText
    Left = 10
    Top = 50
    Width = 65
    Height = 17
    DataField = 'OS'
    DataSource = dtsOS
  end
  object BitBtn1: TBitBtn
    Left = 10
    Top = 20
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = BitBtn1Click
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
    Left = 95
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = BitBtn2Click
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
  object tblServicos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
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
      '   HORASAIDA, OS, PRECO, PRODUTO, QUANTIDADE, SERVICO, TOTAL)'
      'values'
      '  (:AMBIENTE, :ARQUITETO, :CLIENTE, :DATA, :DATAPAGAMENTO, '
      ':FUNCIONARIO, '
      
        '   :HORACHEGADA, :HORASAIDA, :OS, :PRECO, :PRODUTO, :QUANTIDADE,' +
        ' '
      ':SERVICO, '
      '   :TOTAL)')
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
      '  SERVICO = :SERVICO')
    SelectSQL.Strings = (
      'select '
      
        'AMBIENTE, ARQUITETO, CLIENTE, DATA, DATAPAGAMENTO, FUNCIONARIO, ' +
        'HORACHEGADA, HORASAIDA, OS, PRECO, PRODUTO, QUANTIDADE, SERVICO,' +
        ' TOTAL'
      ''
      'from'
      'SERVICOS'
      ''
      ''
      'where'
      'OS is null or OS = 0'
      ''
      ''
      'order by'
      'DATA, CLIENTE')
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
      '  TOTAL = :TOTAL'
      'where'
      '  SERVICO = :OLD_SERVICO')
    Left = 185
    Top = 15
    object tblServicosAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
      Origin = 'SERVICOS.AMBIENTE'
    end
    object tblServicosARQUITETO: TIntegerField
      FieldName = 'ARQUITETO'
      Origin = 'SERVICOS.ARQUITETO'
    end
    object tblServicosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'SERVICOS.CLIENTE'
    end
    object tblServicosDATA: TDateField
      FieldName = 'DATA'
      Origin = 'SERVICOS.DATA'
    end
    object tblServicosDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'SERVICOS.DATAPAGAMENTO'
    end
    object tblServicosFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'SERVICOS.FUNCIONARIO'
    end
    object tblServicosHORACHEGADA: TTimeField
      FieldName = 'HORACHEGADA'
      Origin = 'SERVICOS.HORACHEGADA'
    end
    object tblServicosHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = 'SERVICOS.HORASAIDA'
    end
    object tblServicosOS: TIntegerField
      FieldName = 'OS'
      Origin = 'SERVICOS.OS'
    end
    object tblServicosPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = 'SERVICOS.PRECO'
      Precision = 9
      Size = 2
    end
    object tblServicosPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'SERVICOS.PRODUTO'
    end
    object tblServicosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'SERVICOS.QUANTIDADE'
    end
    object tblServicosSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOS.SERVICO'
      Required = True
    end
    object tblServicosTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'SERVICOS.TOTAL'
      Precision = 9
      Size = 2
    end
    object tblServicosTIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPO'
      LookupDataSet = tblProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TIPO'
      KeyFields = 'PRODUTO'
      Size = 1
      Lookup = True
    end
  end
  object dtsServicos: TDataSource
    DataSet = tblServicos
    Left = 205
    Top = 15
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 240
    Top = 15
  end
  object tblOS: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
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
      '   VALORCOBRADOSERVICOS, DATADEPAGAMENTO)'
      'values'
      
        '  (:OS, :CLIENTE, :DATA, :FUNCIONARIO, :CHEGADA, :SAIDA, :VALOR,' +
        ' '
      ':ARQUITETO, '
      '   :VALORCOBRADO, :OBS, :RESPONSAVEL, :VALORMATERIAIS, '
      ':VALORSERVICOS, '
      '   :VALORCOBRADOMATERIAIS, :VALORCOBRADOSERVICOS, '
      ':DATADEPAGAMENTO)')
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
      '  DATADEPAGAMENTO'
      'from OS '
      'where'
      '  OS = :OS')
    SelectSQL.Strings = (
      'SELECT *'
      'FROM OS')
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
      '  DATADEPAGAMENTO = :DATADEPAGAMENTO'
      'where'
      '  OS = :OLD_OS')
    GeneratorField.Field = 'OS'
    GeneratorField.Generator = 'GEN_OS_ID'
    Left = 285
    Top = 15
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
    object tblOSCHEGADA: TTimeField
      FieldName = 'CHEGADA'
      Origin = 'OS.CHEGADA'
    end
    object tblOSSAIDA: TTimeField
      FieldName = 'SAIDA'
      Origin = 'OS.SAIDA'
    end
    object tblOSVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'OS.VALOR'
      Precision = 9
      Size = 2
    end
    object tblOSARQUITETO: TIntegerField
      FieldName = 'ARQUITETO'
      Origin = 'OS.ARQUITETO'
    end
    object tblOSVALORCOBRADO: TIBBCDField
      FieldName = 'VALORCOBRADO'
      Origin = 'OS.VALORCOBRADO'
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
      Precision = 9
      Size = 2
    end
    object tblOSVALORSERVICOS: TIBBCDField
      FieldName = 'VALORSERVICOS'
      Origin = 'OS.VALORSERVICOS'
      Precision = 9
      Size = 2
    end
    object tblOSVALORCOBRADOMATERIAIS: TIBBCDField
      FieldName = 'VALORCOBRADOMATERIAIS'
      Origin = 'OS.VALORCOBRADOMATERIAIS'
      Precision = 9
      Size = 2
    end
    object tblOSVALORCOBRADOSERVICOS: TIBBCDField
      FieldName = 'VALORCOBRADOSERVICOS'
      Origin = 'OS.VALORCOBRADOSERVICOS'
      Precision = 9
      Size = 2
    end
    object tblOSDATADEPAGAMENTO: TDateField
      FieldName = 'DATADEPAGAMENTO'
      Origin = 'OS.DATADEPAGAMENTO'
    end
  end
  object dtsOS: TDataSource
    DataSet = tblOS
    Left = 310
    Top = 15
  end
  object tblProdutos: TIBDataSet
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select '
      'codigo, tipo'
      ''
      'from produtos'
      ''
      'order by codigo')
    Active = True
    Left = 350
    Top = 15
  end
  object dtsProdutos: TDataSource
    DataSet = tblProdutos
    Left = 380
    Top = 15
  end
end
