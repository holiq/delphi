object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 326
  ClientWidth = 708
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
    Width = 150
    Height = 19
    Caption = 'Checkout Pesanan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 43
    Width = 75
    Height = 13
    Caption = 'Daftar Pesanan'
  end
  object Label3: TLabel
    Left = 327
    Top = 93
    Width = 99
    Height = 13
    Caption = 'Metode Pembayaran'
  end
  object Label4: TLabel
    Left = 327
    Top = 146
    Width = 150
    Height = 13
    Caption = 'Metode Pengiriman Free Ongkir'
  end
  object Label5: TLabel
    Left = 327
    Top = 43
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label6: TLabel
    Left = 327
    Top = 198
    Width = 60
    Height = 13
    Caption = 'Pilih Voucher'
  end
  object Label7: TLabel
    Left = 495
    Top = 39
    Width = 58
    Height = 13
    Caption = 'Alamat Baru'
  end
  object Memo1: TMemo
    Left = 32
    Top = 62
    Width = 265
    Height = 109
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 327
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Credit'
      'Gerai'
      'Internet Banking'
      'Cicilan'
      'COD')
  end
  object ComboBox2: TComboBox
    Left = 327
    Top = 165
    Width = 145
    Height = 21
    TabOrder = 1
    Items.Strings = (
      'Reguler'
      'Sameday'
      'Nextday'
      'Cargo')
  end
  object Memo2: TMemo
    Left = 495
    Top = 62
    Width = 153
    Height = 59
    Lines.Strings = (
      'Memo2')
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 608
    Top = 293
    Width = 92
    Height = 25
    Caption = 'Close'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 608
    Top = 262
    Width = 92
    Height = 25
    Caption = 'Pesan Sekarang'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object ComboBox3: TComboBox
    Left = 327
    Top = 217
    Width = 145
    Height = 21
    TabOrder = 6
    OnChange = ComboBox3Change
    Items.Strings = (
      'Diskon Rp. 10.000,00'
      'Diskon 15%')
  end
  object ComboBox4: TComboBox
    Left = 327
    Top = 62
    Width = 145
    Height = 21
    TabOrder = 7
    Items.Strings = (
      'Cukanggalih, Curug, Tangerang')
  end
  object BitBtn3: TBitBtn
    Left = 560
    Top = 127
    Width = 88
    Height = 25
    Caption = 'Tambah Alamat'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
end
