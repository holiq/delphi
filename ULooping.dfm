object FormLooping: TFormLooping
  Left = 0
  Top = 0
  Caption = 'FormLooping'
  ClientHeight = 365
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 224
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Mulai'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object ListBox1: TListBox
    Left = 32
    Top = 24
    Width = 169
    Height = 241
    ItemHeight = 13
    TabOrder = 1
  end
end
