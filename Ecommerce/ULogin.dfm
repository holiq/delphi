object FormLogin: TFormLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 358
  ClientWidth = 710
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
    Left = 261
    Top = 56
    Width = 118
    Height = 23
    Caption = 'BukaLapak'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 189
    Top = 152
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 164
    Top = 112
    Width = 71
    Height = 13
    Caption = 'No Handphone'
  end
  object Edit1: TEdit
    Left = 261
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 263
    Top = 149
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 261
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 177
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Google'
    TabOrder = 3
  end
  object BitBtn3: TBitBtn
    Left = 337
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Facebook'
    TabOrder = 4
  end
end
