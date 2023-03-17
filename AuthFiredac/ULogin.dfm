object FormLogin: TFormLogin
  Left = 0
  Top = 0
  Caption = 'FormLogin'
  ClientHeight = 407
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 40
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 48
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Edit1: TEdit
    Left = 104
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 150
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
