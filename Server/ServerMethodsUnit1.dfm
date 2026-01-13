object ServerMethods1: TServerMethods1
  OnCreate = DataModuleCreate
  Height = 275
  Width = 749
  object fdInstallux: TFDConnection
    Params.Strings = (
      'CharacterSet=NONE'
      'SQLDialect=1'
      
        'Database=C:\KoutoSoft\Sistemas\Delphi XE6\INSTALLUX\INSTALLUX.GD' +
        'B'
      'ConnectionDef=Installux'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 122
    Top = 35
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 62
    Top = 144
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'gds32.dll'
    Left = 442
    Top = 38
  end
  object qryAux: TFDQuery
    Connection = fdInstallux
    Transaction = FDTransaction1
    Left = 217
    Top = 143
  end
  object FDTransaction1: TFDTransaction
    Connection = fdInstallux
    Left = 210
    Top = 31
  end
  object qryIncServico: TFDQuery
    Connection = fdInstallux
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'SERVICOS_SERVICO_GEN'
    UpdateOptions.UpdateTableName = 'SERVICOS'
    UpdateOptions.KeyFields = 'SERVICO'
    UpdateOptions.AutoIncFields = 'SERVICO'
    SQL.Strings = (
      'SELECT * FROM SERVICOS WHERE SERVICO=0')
    Left = 362
    Top = 148
  end
  object FDQuery2: TFDQuery
    Connection = fdInstallux
    Transaction = FDTransaction1
    Left = 677
    Top = 108
  end
  object FDQuery3: TFDQuery
    Connection = fdInstallux
    Transaction = FDTransaction1
    Left = 622
    Top = 108
  end
  object qryProduto: TFDQuery
    Connection = fdInstallux
    Transaction = FDTransaction1
    SQL.Strings = (
      'SELECT CODIGO, PRECO FROM PRODUTOS WHERE CODIGO = :CODIGO')
    Left = 437
    Top = 148
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryIncFicha: TFDQuery
    Connection = fdInstallux
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvLockPoint, uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_OS_ID'
    UpdateOptions.UpdateTableName = 'OS'
    UpdateOptions.KeyFields = 'OS'
    UpdateOptions.AutoIncFields = 'OS'
    SQL.Strings = (
      'SELECT * FROM OS WHERE OS = 0')
    Left = 282
    Top = 148
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 336
    Top = 32
  end
end
