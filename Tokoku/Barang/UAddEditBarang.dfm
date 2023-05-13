object FormAddEditBarang: TFormAddEditBarang
  Left = 0
  Top = 0
  Caption = 'FormAddEditBarang'
  ClientHeight = 402
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
    Left = 56
    Top = 24
    Width = 61
    Height = 13
    Caption = 'Kode Barang'
  end
  object Label2: TLabel
    Left = 56
    Top = 53
    Width = 64
    Height = 13
    Caption = 'Nama Barang'
  end
  object Label3: TLabel
    Left = 56
    Top = 84
    Width = 42
    Height = 13
    Caption = 'Deskripsi'
  end
  object Label4: TLabel
    Left = 56
    Top = 115
    Width = 34
    Height = 13
    Caption = 'Satuan'
  end
  object Label5: TLabel
    Left = 56
    Top = 142
    Width = 47
    Height = 13
    Caption = 'Stok Awal'
  end
  object Label6: TLabel
    Left = 56
    Top = 173
    Width = 58
    Height = 13
    Caption = 'Stok Minimal'
  end
  object Label7: TLabel
    Left = 56
    Top = 204
    Width = 51
    Height = 13
    Caption = 'Harga Jual'
  end
  object EditKodeBarang: TEdit
    Left = 159
    Top = 21
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object EditNamaBarang: TEdit
    Left = 159
    Top = 50
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object EditDeskripsi: TEdit
    Left = 159
    Top = 81
    Width = 201
    Height = 21
    TabOrder = 2
  end
  object EditStokAwal: TEdit
    Left = 159
    Top = 139
    Width = 201
    Height = 21
    TabOrder = 3
  end
  object EditStokMinimal: TEdit
    Left = 159
    Top = 170
    Width = 201
    Height = 21
    TabOrder = 4
  end
  object EditHargaJual: TEdit
    Left = 159
    Top = 201
    Width = 201
    Height = 21
    TabOrder = 5
  end
  object ComboBoxStuan: TComboBox
    Left = 159
    Top = 112
    Width = 201
    Height = 21
    TabOrder = 6
    Items.Strings = (
      'pcs'
      'kg')
  end
  object CheckBox1: TCheckBox
    Left = 159
    Top = 240
    Width = 97
    Height = 17
    Caption = 'Is Active?'
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 0
    Top = 361
    Width = 708
    Height = 41
    Align = alBottom
    TabOrder = 8
    object BitBtn1: TBitBtn
      Left = 557
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'Save'
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 632
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'Cancel'
      TabOrder = 1
    end
  end
end
