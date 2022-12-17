object Form1: TForm1
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
    Left = 144
    Top = 56
    Width = 123
    Height = 23
    Caption = 'Ecommerce'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 152
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 72
    Top = 112
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Edit1: TEdit
    Left = 144
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 146
    Top = 149
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
