object ArrayTD: TArrayTD
  Left = 0
  Top = 0
  Caption = 'ArrayTD'
  ClientHeight = 423
  ClientWidth = 717
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
    Left = 32
    Top = 32
    Width = 23
    Height = 13
    Caption = 'Baris'
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 27
    Height = 13
    Caption = 'kolom'
  end
  object SpinEdit1: TSpinEdit
    Left = 104
    Top = 29
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 104
    Top = 61
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object BitBtn1: TBitBtn
    Left = 256
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object ListBox1: TListBox
    Left = 32
    Top = 136
    Width = 299
    Height = 137
    ItemHeight = 13
    TabOrder = 3
  end
end
