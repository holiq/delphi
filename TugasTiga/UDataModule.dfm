object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 342
  Width = 618
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=tugas_tiga'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 64
  end
  object QTemp: TFDQuery
    Connection = FDConnection1
    Left = 216
    Top = 120
  end
end
