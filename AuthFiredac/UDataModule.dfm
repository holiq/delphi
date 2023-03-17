object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 323
  Width = 502
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=tokoku'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 104
  end
  object QTemp: TFDQuery
    Connection = FDConnection1
    Left = 296
    Top = 152
  end
end
