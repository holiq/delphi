object FormOrder: TFormOrder
  Left = 0
  Top = 0
  Caption = 'FormOrder'
  ClientHeight = 433
  ClientWidth = 685
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
    Left = 296
    Top = 24
    Width = 190
    Height = 12
    Caption = 'Pesanan Sukses Dibuat'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 208
    Top = 56
    Width = 334
    Height = 13
    Caption = 
      'Terimakasih telah memesan di toko kami dan berikut detail pesana' +
      'nmu'
  end
  object Label3: TLabel
    Left = 48
    Top = 128
    Width = 75
    Height = 13
    Caption = 'Daftar Pesanan'
  end
  object Label4: TLabel
    Left = 392
    Top = 137
    Width = 80
    Height = 13
    Caption = 'Alamat Penerima'
  end
  object Label5: TLabel
    Left = 392
    Top = 280
    Width = 95
    Height = 13
    Caption = 'DummyPembayaran'
  end
  object Label6: TLabel
    Left = 392
    Top = 320
    Width = 119
    Height = 13
    Caption = 'DummyKodePembayaran'
  end
  object Label7: TLabel
    Left = 392
    Top = 352
    Width = 87
    Height = 13
    Caption = 'DummyPengiriman'
  end
  object Memo1: TMemo
    Left = 48
    Top = 160
    Width = 279
    Height = 173
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 384
    Top = 156
    Width = 279
    Height = 118
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 602
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
