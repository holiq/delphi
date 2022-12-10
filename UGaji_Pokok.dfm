object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 364
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
    Left = 312
    Top = 8
    Width = 217
    Height = 12
    Caption = 'Menghitung Gaji Karyawan'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 51
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 136
    Top = 96
    Width = 39
    Height = 13
    Caption = 'Jabatan'
  end
  object Label4: TLabel
    Left = 136
    Top = 174
    Width = 49
    Height = 13
    Caption = 'Gaji Pokok'
  end
  object Label5: TLabel
    Left = 136
    Top = 213
    Width = 51
    Height = 13
    Caption = 'Tunjangan'
  end
  object Label6: TLabel
    Left = 136
    Top = 259
    Width = 51
    Height = 14
    Caption = 'Total Gaji'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 136
    Top = 115
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit1: TEdit
    Left = 232
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 232
    Top = 171
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 232
    Top = 213
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 232
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 232
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 4
    OnChange = ComboBox1Change
    Items.Strings = (
      'Direksi'
      'Manager'
      'Supervisor'
      'Staf')
  end
  object RadioButton1: TRadioButton
    Left = 137
    Top = 134
    Width = 113
    Height = 17
    Caption = 'Trainning'
    TabOrder = 5
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 232
    Top = 134
    Width = 113
    Height = 17
    Caption = 'Kontrak'
    TabOrder = 6
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 327
    Top = 134
    Width = 50
    Height = 17
    Caption = 'Tetap'
    TabOrder = 7
    OnClick = RadioButton3Click
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 608
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 9
    OnClick = BitBtn2Click
  end
end
