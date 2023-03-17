object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 384
  Width = 514
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 208
    Top = 32
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'posku'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    Left = 104
    Top = 88
  end
  object QTemp: TUniQuery
    Connection = UniConnection1
    Left = 280
    Top = 112
  end
end
