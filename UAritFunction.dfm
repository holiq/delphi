object FormAritFunction: TFormAritFunction
  Left = 0
  Top = 0
  Caption = 'FormAritFunction'
  ClientHeight = 325
  ClientWidth = 712
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
    Left = 144
    Top = 48
    Width = 39
    Height = 13
    Caption = 'Angka 1'
  end
  object Label2: TLabel
    Left = 144
    Top = 75
    Width = 39
    Height = 13
    Caption = 'Angka 2'
  end
  object Label3: TLabel
    Left = 144
    Top = 112
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object Edit1: TEdit
    Left = 200
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 200
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 200
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 64
    Top = 160
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 193
    Top = 160
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 304
    Top = 160
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 424
    Top = 160
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 6
    OnClick = Button4Click
  end
end
