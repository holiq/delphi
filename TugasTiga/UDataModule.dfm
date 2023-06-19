object DataModule1: TDataModule1
  Height = 513
  Width = 927
  PixelsPerInch = 144
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=tugas_tiga'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 168
    Top = 96
  end
  object QTemp: TFDQuery
    Connection = FDConnection1
    Left = 324
    Top = 180
  end
end
