object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Dashboard'
  ClientHeight = 332
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Yu Gothic'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object Label1: TLabel
    Left = 280
    Top = 48
    Width = 152
    Height = 25
    Caption = 'DummyWelcome'
  end
  object BitBtn1: TBitBtn
    Left = 638
    Top = 299
    Width = 75
    Height = 25
    Caption = 'Close'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 638
    Top = 259
    Width = 75
    Height = 25
    Caption = 'Keranjang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
end
