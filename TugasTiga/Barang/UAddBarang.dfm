object FAddBarang: TFAddBarang
  Left = 0
  Top = 0
  Caption = 'FAddBarang'
  ClientHeight = 512
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Label1: TLabel
    Left = 251
    Top = 32
    Width = 135
    Height = 23
    Caption = 'Tambah Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 258
    Top = 77
    Width = 61
    Height = 13
    Caption = 'Kode Barang'
  end
  object Label3: TLabel
    Left = 258
    Top = 125
    Width = 64
    Height = 13
    Caption = 'Nama Barang'
  end
  object Label4: TLabel
    Left = 258
    Top = 176
    Width = 42
    Height = 13
    Caption = 'Deskripsi'
  end
  object Label5: TLabel
    Left = 258
    Top = 270
    Width = 47
    Height = 13
    Caption = 'Stok Awal'
  end
  object Label6: TLabel
    Left = 258
    Top = 318
    Width = 64
    Height = 13
    Caption = 'Stok Mininmal'
  end
  object Label7: TLabel
    Left = 258
    Top = 369
    Width = 66
    Height = 13
    Caption = 'Harga Barang'
  end
  object Label8: TLabel
    Left = 258
    Top = 224
    Width = 34
    Height = 13
    Caption = 'Satuan'
  end
  object Edit1: TEdit
    Left = 258
    Top = 96
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 258
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 258
    Top = 195
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 241
    Top = 454
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Edit4: TEdit
    Left = 258
    Top = 289
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 258
    Top = 337
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 258
    Top = 388
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 258
    Top = 243
    Width = 145
    Height = 21
    TabOrder = 7
    Items.Strings = (
      'pcs'
      'satuan'
      'kg')
  end
  object CheckBox1: TCheckBox
    Left = 258
    Top = 415
    Width = 97
    Height = 17
    Caption = 'Aktif?'
    TabOrder = 8
  end
  object BitBtn2: TBitBtn
    Left = 331
    Top = 454
    Width = 75
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 9
    OnClick = BitBtn2Click
  end
end
