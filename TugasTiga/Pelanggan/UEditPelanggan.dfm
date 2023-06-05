object FEditPelanggan: TFEditPelanggan
  Left = 0
  Top = 0
  Caption = 'FEditPelanggan'
  ClientHeight = 430
  ClientWidth = 711
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
    Left = 232
    Top = 24
    Width = 126
    Height = 23
    Caption = 'Edit Pelanggan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 232
    Top = 59
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 232
    Top = 112
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label4: TLabel
    Left = 232
    Top = 236
    Width = 54
    Height = 13
    Caption = 'No Telepon'
  end
  object Label5: TLabel
    Left = 372
    Top = 24
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
    Left = 232
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 232
    Top = 255
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 232
    Top = 131
    Width = 185
    Height = 91
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 278
    Top = 307
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
