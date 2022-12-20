object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Order'
  ClientHeight = 286
  ClientWidth = 714
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
    Left = 240
    Top = 16
    Width = 189
    Height = 19
    Caption = 'Pesanan Sukses Dibuat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 57
    Top = 88
    Width = 75
    Height = 13
    Caption = 'Daftar Pesanan'
  end
  object Label3: TLabel
    Left = 381
    Top = 202
    Width = 95
    Height = 13
    Caption = 'DummyPembayaran'
  end
  object Label4: TLabel
    Left = 381
    Top = 225
    Width = 87
    Height = 13
    Caption = 'DummyPengiriman'
  end
  object Label5: TLabel
    Left = 381
    Top = 88
    Width = 80
    Height = 13
    Caption = 'Alamat Penerima'
  end
  object Label6: TLabel
    Left = 168
    Top = 48
    Width = 338
    Height = 13
    Caption = 
      'Terimakasih telah memesan di toko kami, dan berikut detail pesan' +
      'anmu'
  end
  object Memo1: TMemo
    Left = 57
    Top = 107
    Width = 296
    Height = 133
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 381
    Top = 107
    Width = 158
    Height = 85
    Lines.Strings = (
      'Memo2')
    ReadOnly = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 631
    Top = 253
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
