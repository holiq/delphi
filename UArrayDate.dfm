object FormArrayDate: TFormArrayDate
  Left = 0
  Top = 0
  Caption = 'FormArrayDate'
  ClientHeight = 220
  ClientWidth = 473
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
    Left = 72
    Top = 56
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label2: TLabel
    Left = 72
    Top = 93
    Width = 26
    Height = 13
    Caption = 'Bulan'
  end
  object Label3: TLabel
    Left = 72
    Top = 136
    Width = 30
    Height = 13
    Caption = 'Tahun'
  end
  object Label4: TLabel
    Left = 192
    Top = 176
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object SpinEdit1: TSpinEdit
    Left = 133
    Top = 53
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 133
    Top = 90
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object SpinEdit3: TSpinEdit
    Left = 133
    Top = 133
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object BitBtn1: TBitBtn
    Left = 272
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
