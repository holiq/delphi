object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 386
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 72
    Top = 72
    Width = 177
    Height = 201
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Array'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 312
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Array 2'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
