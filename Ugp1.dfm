object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 430
  ClientWidth = 722
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
    Left = 256
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label2: TLabel
    Left = 256
    Top = 83
    Width = 39
    Height = 13
    Caption = 'Jabatan'
  end
  object Label3: TLabel
    Left = 256
    Top = 120
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label4: TLabel
    Left = 256
    Top = 211
    Width = 49
    Height = 13
    Caption = 'Gaji Pokok'
  end
  object Label5: TLabel
    Left = 256
    Top = 267
    Width = 51
    Height = 13
    Caption = 'Tunjangan'
  end
  object Label6: TLabel
    Left = 256
    Top = 310
    Width = 45
    Height = 13
    Caption = 'Total Gaji'
  end
  object Label7: TLabel
    Left = 296
    Top = 8
    Width = 185
    Height = 19
    Caption = 'Menghitung Gaji Karyawan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 328
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 328
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 328
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 328
    Top = 307
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 328
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 4
    OnChange = ComboBox1Change
    Items.Strings = (
      'Direksi'
      'Manager'
      'Supervisor'
      'Staff')
  end
  object BitBtn1: TBitBtn
    Left = 488
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object RadioButton1: TRadioButton
    Left = 232
    Top = 144
    Width = 113
    Height = 17
    Caption = 'Trainning'
    TabOrder = 6
    OnClick = RadioButton1Click
  end
  object BitBtn2: TBitBtn
    Left = 584
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object RadioButton2: TRadioButton
    Left = 368
    Top = 144
    Width = 113
    Height = 17
    Caption = 'Kontrak'
    TabOrder = 8
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 504
    Top = 144
    Width = 113
    Height = 17
    Caption = 'Tetap'
    TabOrder = 9
    OnClick = RadioButton3Click
  end
end
