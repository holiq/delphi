object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 367
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
    Left = 152
    Top = 64
    Width = 39
    Height = 13
    Caption = 'Angjka1'
  end
  object Label2: TLabel
    Left = 152
    Top = 104
    Width = 36
    Height = 13
    Caption = 'Angka2'
  end
  object Label3: TLabel
    Left = 152
    Top = 144
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object Edit1: TEdit
    Left = 240
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 240
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 240
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 192
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 192
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 264
    Top = 192
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 384
    Top = 192
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 6
    OnClick = BitBtn4Click
  end
end
