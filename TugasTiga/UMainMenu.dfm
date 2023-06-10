object FMainMenu: TFMainMenu
  Left = 0
  Top = 0
  Caption = 'FMainMenu'
  ClientHeight = 466
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 24
    Top = 56
    object Barang1: TMenuItem
      Caption = 'Barang'
      OnClick = Barang1Click
    end
    object Pelanggan1: TMenuItem
      Caption = 'Pelanggan'
      OnClick = Pelanggan1Click
    end
    object Suppplier1: TMenuItem
      Caption = 'Suppplier'
      OnClick = Suppplier1Click
    end
    object Pembelian1: TMenuItem
      Caption = 'Pembelian'
      OnClick = Pembelian1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
end
