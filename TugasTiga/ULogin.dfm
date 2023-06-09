object FormLogin: TFormLogin
  Left = 0
  Top = 0
  Caption = 'FormLogin'
  ClientHeight = 327
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Login: TLabel
    Left = 312
    Top = 47
    Width = 45
    Height = 23
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 272
    Top = 92
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 272
    Top = 156
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Edit2: TEdit
    Left = 272
    Top = 175
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 272
    Top = 111
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 255
    Top = 231
    Width = 74
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 336
    Top = 231
    Width = 74
    Height = 25
    Caption = 'EXIT'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
