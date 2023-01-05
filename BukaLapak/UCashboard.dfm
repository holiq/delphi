object FormDashboard: TFormDashboard
  Left = 0
  Top = 0
  Caption = 'FormDashboard'
  ClientHeight = 290
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 216
    Top = 24
    Width = 3
    Height = 13
  end
  object Label1: TLabel
    Left = 200
    Top = 24
    Width = 161
    Height = 23
    Caption = 'DummyWelcome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 476
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Keranjang'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 476
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
end
