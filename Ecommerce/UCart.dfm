object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Keranjang'
  ClientHeight = 318
  ClientWidth = 701
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
    Left = 190
    Top = 57
    Width = 76
    Height = 13
    Caption = 'Rp. 130.000,00'
  end
  object Label2: TLabel
    Left = 190
    Top = 104
    Width = 70
    Height = 13
    Caption = 'Rp. 90.000,00'
  end
  object Label3: TLabel
    Left = 190
    Top = 144
    Width = 64
    Height = 13
    Caption = 'Rp. 9.000,00'
  end
  object Label4: TLabel
    Left = 190
    Top = 185
    Width = 70
    Height = 13
    Caption = 'Rp. 18.000,00'
  end
  object Label5: TLabel
    Left = 56
    Top = 262
    Width = 56
    Height = 13
    Caption = 'Total Harga'
  end
  object CheckBox1: TCheckBox
    Left = 56
    Top = 56
    Width = 97
    Height = 17
    Caption = 'Baju Kemeja'
    TabOrder = 0
  end
  object CheckBox2: TCheckBox
    Left = 56
    Top = 103
    Width = 97
    Height = 17
    Caption = 'Celana Hitam'
    TabOrder = 1
  end
  object CheckBox3: TCheckBox
    Left = 56
    Top = 143
    Width = 97
    Height = 17
    Caption = 'Biskuit Coklat'
    TabOrder = 2
  end
  object CheckBox4: TCheckBox
    Left = 56
    Top = 184
    Width = 97
    Height = 17
    Caption = 'Nanas Muda'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 294
    Top = 54
    Width = 40
    Height = 21
    ReadOnly = True
    TabOrder = 4
    Text = '1'
  end
  object BitBtn1: TBitBtn
    Left = 341
    Top = 52
    Width = 35
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 381
    Top = 52
    Width = 35
    Height = 25
    Caption = '+'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object Edit2: TEdit
    Left = 294
    Top = 101
    Width = 40
    Height = 21
    ReadOnly = True
    TabOrder = 7
    Text = '1'
  end
  object BitBtn3: TBitBtn
    Left = 341
    Top = 99
    Width = 35
    Height = 25
    Caption = '-'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 382
    Top = 99
    Width = 35
    Height = 25
    Caption = '+'
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object Edit3: TEdit
    Left = 294
    Top = 141
    Width = 40
    Height = 21
    ReadOnly = True
    TabOrder = 10
    Text = '1'
  end
  object BitBtn5: TBitBtn
    Left = 340
    Top = 139
    Width = 35
    Height = 25
    Caption = '-'
    TabOrder = 11
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 381
    Top = 139
    Width = 35
    Height = 25
    Caption = '+'
    TabOrder = 12
    OnClick = BitBtn6Click
  end
  object Edit4: TEdit
    Left = 294
    Top = 182
    Width = 40
    Height = 21
    ReadOnly = True
    TabOrder = 13
    Text = '1'
  end
  object BitBtn7: TBitBtn
    Left = 340
    Top = 180
    Width = 35
    Height = 25
    Caption = '-'
    TabOrder = 14
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 381
    Top = 180
    Width = 35
    Height = 25
    Caption = '+'
    TabOrder = 15
    OnClick = BitBtn8Click
  end
  object Edit5: TEdit
    Left = 190
    Top = 259
    Width = 121
    Height = 21
    TabOrder = 16
  end
  object BitBtn9: TBitBtn
    Left = 618
    Top = 285
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 17
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 190
    Top = 219
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 18
    OnClick = BitBtn10Click
  end
  object BitBtn11: TBitBtn
    Left = 618
    Top = 254
    Width = 75
    Height = 25
    Caption = 'Bayar'
    TabOrder = 19
    OnClick = BitBtn11Click
  end
end
