object FormBigNumber: TFormBigNumber
  Left = 0
  Top = 0
  Caption = 'FormBigNumber'
  ClientHeight = 361
  ClientWidth = 679
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
    Left = 37
    Top = 42
    Width = 156
    Height = 24
    Caption = 'Masukan 10 angka acak dengan spasi untuk pemisah'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 37
    Top = 136
    Width = 179
    Height = 26
    Caption = 'Dapatkan bilangan terbesar diantara dua bilangan'
    WordWrap = True
  end
  object Label3: TLabel
    Left = 333
    Top = 42
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object Edit1: TEdit
    Left = 37
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 37
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 37
    Top = 195
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 231
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 222
    Top = 166
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object ListBox1: TListBox
    Left = 333
    Top = 70
    Width = 316
    Height = 121
    Style = lbOwnerDrawFixed
    TabOrder = 5
  end
end
