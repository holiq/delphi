object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Resto'
  ClientHeight = 378
  ClientWidth = 581
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
    Left = 100
    Top = 55
    Width = 30
    Height = 13
    Caption = 'Pilihan'
  end
  object Label2: TLabel
    Left = 100
    Top = 97
    Width = 26
    Height = 13
    Caption = 'Menu'
  end
  object Label3: TLabel
    Left = 100
    Top = 138
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object Label4: TLabel
    Left = 100
    Top = 173
    Width = 42
    Height = 13
    Caption = 'Minuman'
  end
  object Label5: TLabel
    Left = 100
    Top = 313
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label6: TLabel
    Left = 205
    Top = 198
    Width = 60
    Height = 13
    Caption = 'Rp. 3000,00'
  end
  object Label7: TLabel
    Left = 203
    Top = 222
    Width = 60
    Height = 13
    Caption = 'Rp. 3000,00'
  end
  object Label8: TLabel
    Left = 203
    Top = 241
    Width = 60
    Height = 13
    Caption = 'Rp. 1000,00'
  end
  object Label9: TLabel
    Left = 127
    Top = 23
    Width = 152
    Height = 20
    Caption = 'Simple Menu Resto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 321
    Top = 100
    Width = 23
    Height = 13
    Caption = 'Porsi'
  end
  object Label11: TLabel
    Left = 320
    Top = 138
    Width = 56
    Height = 13
    Caption = 'Total Harga'
  end
  object RadioButton1: TRadioButton
    Left = 100
    Top = 74
    Width = 115
    Height = 17
    Caption = 'Masakan Padang'
    TabOrder = 0
    OnClick = RadioButton1Click
  end
  object ComboBox1: TComboBox
    Left = 140
    Top = 97
    Width = 147
    Height = 21
    TabOrder = 1
    OnChange = ComboBox1Change
  end
  object Edit1: TEdit
    Left = 137
    Top = 135
    Width = 123
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 140
    Top = 263
    Width = 77
    Height = 25
    Caption = 'Hitung'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object CheckBox1: TCheckBox
    Left = 100
    Top = 194
    Width = 99
    Height = 17
    Caption = 'ES Teh Manis'
    TabOrder = 4
  end
  object RadioButton2: TRadioButton
    Left = 212
    Top = 74
    Width = 115
    Height = 17
    Caption = 'Masakan Betawi'
    TabOrder = 5
    OnClick = RadioButton2Click
  end
  object Edit2: TEdit
    Left = 137
    Top = 310
    Width = 123
    Height = 21
    TabOrder = 6
  end
  object CheckBox2: TCheckBox
    Left = 100
    Top = 217
    Width = 99
    Height = 17
    Caption = 'ES Jeruk'
    TabOrder = 7
  end
  object CheckBox3: TCheckBox
    Left = 100
    Top = 240
    Width = 99
    Height = 17
    Caption = 'Air Putih'
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 382
    Top = 94
    Width = 60
    Height = 21
    TabOrder = 9
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 382
    Top = 135
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object BitBtn2: TBitBtn
    Left = 448
    Top = 92
    Width = 26
    Height = 25
    Caption = '+'
    TabOrder = 11
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 480
    Top = 92
    Width = 23
    Height = 25
    Caption = '-'
    TabOrder = 12
    OnClick = BitBtn3Click
  end
end
