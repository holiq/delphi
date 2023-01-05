object FormCart: TFormCart
  Left = 0
  Top = 0
  Caption = 'FormCart'
  ClientHeight = 417
  ClientWidth = 670
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
    Left = 264
    Top = 65
    Width = 73
    Height = 13
    Caption = 'Rp.130.000.00'
  end
  object Label2: TLabel
    Left = 264
    Top = 129
    Width = 67
    Height = 13
    Caption = 'Rp.90.000.00'
  end
  object Label3: TLabel
    Left = 264
    Top = 185
    Width = 83
    Height = 13
    Caption = 'Rp.9.000.000.00'
  end
  object Label4: TLabel
    Left = 264
    Top = 241
    Width = 67
    Height = 13
    Caption = 'Rp.18.000.00'
  end
  object Label5: TLabel
    Left = 192
    Top = 313
    Width = 56
    Height = 13
    Caption = 'Total Harga'
  end
  object CheckBox1: TCheckBox
    Left = 104
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Abon Sapi 1 kg'
    TabOrder = 0
  end
  object CheckBox2: TCheckBox
    Left = 104
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Kopi HItam 1kg'
    TabOrder = 1
  end
  object CheckBox3: TCheckBox
    Left = 104
    Top = 184
    Width = 97
    Height = 17
    Caption = 'Tv 50 inchi'
    TabOrder = 2
  end
  object CheckBox4: TCheckBox
    Left = 104
    Top = 240
    Width = 97
    Height = 17
    Caption = 'earphone'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 392
    Top = 62
    Width = 41
    Height = 21
    TabOrder = 4
    Text = '1'
  end
  object Edit2: TEdit
    Left = 248
    Top = 310
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 392
    Top = 126
    Width = 41
    Height = 21
    TabOrder = 6
    Text = '1'
  end
  object Edit4: TEdit
    Left = 392
    Top = 182
    Width = 41
    Height = 21
    TabOrder = 7
    Text = '1'
  end
  object Edit5: TEdit
    Left = 392
    Top = 233
    Width = 41
    Height = 21
    TabOrder = 8
    Text = '1'
  end
  object BitBtn1: TBitBtn
    Left = 353
    Top = 60
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 353
    Top = 124
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 353
    Top = 180
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 11
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 353
    Top = 231
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 12
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 439
    Top = 60
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 13
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 439
    Top = 124
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 14
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 439
    Top = 180
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 15
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 439
    Top = 231
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 16
    OnClick = BitBtn8Click
  end
  object BitBtn9: TBitBtn
    Left = 264
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 17
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 568
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Bayar'
    TabOrder = 18
    OnClick = BitBtn10Click
  end
  object BitBtn11: TBitBtn
    Left = 568
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 19
    OnClick = BitBtn11Click
  end
end
