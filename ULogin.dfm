object FormLogin: TFormLogin
  Left = 0
  Top = 0
  Caption = 'FormLogin'
  ClientHeight = 456
  ClientWidth = 700
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
    Left = 167
    Top = 128
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 167
    Top = 184
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Edit1: TEdit
    Left = 239
    Top = 125
    Width = 173
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 239
    Top = 181
    Width = 173
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 239
    Top = 224
    Width = 79
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 333
    Top = 224
    Width = 79
    Height = 25
    Caption = 'Clear'
    TabOrder = 3
  end
end
