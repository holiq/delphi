object FormCheckOut: TFormCheckOut
  Left = 0
  Top = 0
  Caption = 'FormCheckOut'
  ClientHeight = 384
  ClientWidth = 637
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
    Top = 16
    Width = 174
    Height = 23
    Caption = 'Checkout Pesanan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 75
    Height = 13
    Caption = 'Daftar Pesanan'
  end
  object Label3: TLabel
    Left = 288
    Top = 32
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label4: TLabel
    Left = 288
    Top = 72
    Width = 102
    Height = 13
    Caption = 'Metode  Pembayaran'
  end
  object Label5: TLabel
    Left = 288
    Top = 128
    Width = 91
    Height = 13
    Caption = 'Metode Pengiriman'
  end
  object Label6: TLabel
    Left = 288
    Top = 192
    Width = 33
    Height = 13
    Caption = 'Vocher'
  end
  object Label7: TLabel
    Left = 456
    Top = 32
    Width = 58
    Height = 13
    Caption = 'Alamat Baru'
  end
  object Memo1: TMemo
    Left = 32
    Top = 75
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 288
    Top = 51
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object ComboBox2: TComboBox
    Left = 288
    Top = 91
    Width = 145
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'E-Wallet'
      'Transfer Bank'
      'Alfamaret'
      'Indomaret')
  end
  object ComboBox3: TComboBox
    Left = 288
    Top = 147
    Width = 145
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'JNE'
      'JNT'
      'POS')
  end
  object ComboBox4: TComboBox
    Left = 288
    Top = 211
    Width = 145
    Height = 21
    TabOrder = 4
    Items.Strings = (
      'Diskon Rp. 10.000,00'
      'Diskon 15%')
  end
  object BitBtn1: TBitBtn
    Left = 554
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Pesan sekarang'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 554
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object Memo2: TMemo
    Left = 444
    Top = 51
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
  object BitBtn3: TBitBtn
    Left = 496
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Tambah Alamat'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
end
