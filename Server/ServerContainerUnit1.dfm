object ServerContainer1: TServerContainer1
  OldCreateOrder = False
  Height = 89
  Width = 182
  object DSServer1: TDSServer
    Left = 24
    Top = 11
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 88
    Top = 11
  end
end
