object FAddPelanggan: TFAddPelanggan
  Left = 0
  Top = 0
  Caption = 'FAddPelanggan'
  ClientHeight = 412
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 24
    Width = 163
    Height = 23
    Caption = 'Tambah Pelanggan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 258
    Top = 63
    Width = 77
    Height = 13
    Caption = 'Kode Pelanggan'
  end
  object Label3: TLabel
    Left = 258
    Top = 164
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label4: TLabel
    Left = 258
    Top = 114
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label5: TLabel
    Left = 258
    Top = 288
    Width = 54
    Height = 13
    Caption = 'No Telepon'
  end
  object Edit1: TEdit
    Left = 258
    Top = 82
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 258
    Top = 133
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 258
    Top = 183
    Width = 185
    Height = 91
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 269
    Top = 354
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Edit3: TEdit
    Left = 258
    Top = 307
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 357
    Top = 354
    Width = 75
    Height = 25
    Caption = 'CANCEL'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
end
