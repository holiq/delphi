object FormBangunRuang: TFormBangunRuang
  Left = 0
  Top = 0
  Caption = 'FormBangunRuang'
  ClientHeight = 426
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 56
    Top = 24
    Width = 151
    Height = 16
    Caption = 'LUAS PERSEGI PANJANG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 328
    Top = 24
    Width = 137
    Height = 16
    Caption = 'LUAS JAJAR GENJANG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 579
    Top = 26
    Width = 104
    Height = 16
    Caption = 'VOLUME TABUNG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 195
    Top = 226
    Width = 110
    Height = 16
    Caption = 'VOLUME KERUCUT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 504
    Top = 226
    Width = 110
    Height = 16
    Caption = 'LUAS LINGKARAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 46
    Top = 56
    Width = 185
    Height = 145
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 18
      Width = 46
      Height = 13
      Caption = 'PANJANG'
    end
    object Label2: TLabel
      Left = 1
      Top = 37
      Width = 31
      Height = 13
      Caption = 'LEBAR'
    end
    object Label3: TLabel
      Left = 1
      Top = 96
      Width = 29
      Height = 13
      Caption = 'HASIL'
    end
    object Edit1: TEdit
      Left = 53
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 53
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 53
      Top = 93
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 64
      Top = 62
      Width = 75
      Height = 25
      Caption = 'HITUNG'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 304
    Top = 56
    Width = 185
    Height = 145
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 25
      Height = 13
      Caption = 'ALAS'
    end
    object Label5: TLabel
      Left = 16
      Top = 40
      Width = 35
      Height = 13
      Caption = 'TINGGI'
    end
    object Label6: TLabel
      Left = 16
      Top = 104
      Width = 29
      Height = 13
      Caption = 'HASIL'
    end
    object Edit4: TEdit
      Left = 53
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 53
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 51
      Top = 101
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 64
      Top = 62
      Width = 75
      Height = 25
      Caption = 'HITUNG'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel
    Left = 526
    Top = 48
    Width = 185
    Height = 145
    TabOrder = 2
    object Label7: TLabel
      Left = -3
      Top = 18
      Width = 50
      Height = 13
      Caption = 'JARI-JARI'
    end
    object Label8: TLabel
      Left = 12
      Top = 40
      Width = 35
      Height = 13
      Caption = 'TINGGI'
    end
    object Label9: TLabel
      Left = 16
      Top = 104
      Width = 29
      Height = 13
      Caption = 'HASIL'
    end
    object Edit7: TEdit
      Left = 53
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit8: TEdit
      Left = 53
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit9: TEdit
      Left = 53
      Top = 93
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 64
      Top = 62
      Width = 75
      Height = 25
      Caption = 'HITUNG'
      TabOrder = 3
      OnClick = BitBtn3Click
    end
  end
  object Panel4: TPanel
    Left = 164
    Top = 248
    Width = 185
    Height = 145
    TabOrder = 3
    object Label10: TLabel
      Left = -2
      Top = 18
      Width = 49
      Height = 13
      Caption = 'JARI JARI'
    end
    object Label11: TLabel
      Left = 0
      Top = 48
      Width = 35
      Height = 13
      Caption = 'TINGGI'
    end
    object Label12: TLabel
      Left = 16
      Top = 104
      Width = 29
      Height = 13
      Caption = 'HASIL'
    end
    object Edit10: TEdit
      Left = 53
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit11: TEdit
      Left = 57
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit12: TEdit
      Left = 51
      Top = 101
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 64
      Top = 62
      Width = 75
      Height = 25
      Caption = 'HITUNG'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
  end
  object Panel5: TPanel
    Left = 456
    Top = 248
    Width = 185
    Height = 145
    TabOrder = 4
    object Label13: TLabel
      Left = -2
      Top = 16
      Width = 49
      Height = 13
      Caption = 'JARI JARI'
    end
    object Label14: TLabel
      Left = 16
      Top = 96
      Width = 29
      Height = 13
      Caption = 'HASIL'
    end
    object Edit13: TEdit
      Left = 53
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit14: TEdit
      Left = 53
      Top = 93
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      Left = 64
      Top = 54
      Width = 75
      Height = 25
      Caption = 'HITUNG'
      TabOrder = 2
      OnClick = BitBtn5Click
    end
  end
end
