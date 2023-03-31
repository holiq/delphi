object FormMainMenu: TFormMainMenu
  Left = 0
  Top = 0
  Caption = 'FormMainMenu'
  ClientHeight = 334
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object File1: TMenuItem
      Caption = 'File'
    end
    object File2: TMenuItem
      Caption = 'Exit'
      OnClick = File2Click
    end
  end
end
