object UHome: TUHome
  Left = 0
  Top = 0
  Caption = 'UHome'
  ClientHeight = 377
  ClientWidth = 632
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
    Left = 256
    Top = 56
    Width = 101
    Height = 19
    Caption = 'BUKALAPAK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 96
    Width = 32
    Height = 13
    Caption = 'NO.HP'
  end
  object Label3: TLabel
    Left = 144
    Top = 144
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object Edit1: TEdit
    Left = 224
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 224
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 192
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 256
    Width = 75
    Height = 25
    Caption = 'GOOGLE'
    TabOrder = 3
  end
  object BitBtn3: TBitBtn
    Left = 288
    Top = 256
    Width = 75
    Height = 25
    Caption = 'FACEBOOK'
    TabOrder = 4
  end
end
