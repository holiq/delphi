object FEditBarang: TFEditBarang
  Left = 0
  Top = 0
  Caption = 'FEditBarang'
  ClientHeight = 337
  ClientWidth = 800
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
    Left = 242
    Top = 32
    Width = 98
    Height = 23
    Caption = 'Edit Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 77
    Width = 64
    Height = 13
    Caption = 'Nama Barang'
  end
  object Label3: TLabel
    Left = 256
    Top = 125
    Width = 58
    Height = 13
    Caption = 'Stok Barang'
  end
  object Label4: TLabel
    Left = 256
    Top = 176
    Width = 66
    Height = 13
    Caption = 'Harga Barang'
  end
  object Label5: TLabel
    Left = 366
    Top = 32
    Width = 20
    Height = 23
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 256
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 256
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 256
    Top = 195
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 302
    Top = 232
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
