object FormPenggabungan: TFormPenggabungan
  Left = 0
  Top = 0
  Caption = 'FormPenggabungan'
  ClientHeight = 469
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Height = 469
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 281
      Caption = 'LIST PROJEK'
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 0
        Top = 175
        Width = 194
        Height = 25
        Align = alTop
        Caption = 'E-COMMERS (UTAMA, LOGIN)'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 0
        Top = 150
        Width = 194
        Height = 25
        Align = alTop
        Caption = 'GAJI KARYAWAN (PERCABANGAN)'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 0
        Top = 125
        Width = 194
        Height = 25
        Align = alTop
        Caption = 'RUMUS BANGUN RUANG'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 0
        Top = 100
        Width = 194
        Height = 25
        Align = alTop
        Caption = 'ARITMATIKA (FUNCTION)'
        TabOrder = 3
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 0
        Top = 75
        Width = 194
        Height = 25
        Align = alTop
        Caption = 'ARITMATIKA (PROCEDURE)'
        TabOrder = 4
        OnClick = BitBtn5Click
      end
      object BitBtn6: TBitBtn
        Left = 0
        Top = 50
        Width = 194
        Height = 25
        Align = alTop
        Caption = 'RESTORAN'
        TabOrder = 5
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 0
        Top = 25
        Width = 194
        Height = 25
        Align = alTop
        Caption = 'PERULANGAN'
        TabOrder = 6
        OnClick = BitBtn7Click
      end
      object BitBtn9: TBitBtn
        Left = 0
        Top = 0
        Width = 194
        Height = 25
        Align = alTop
        Caption = 'MIN-MAX (ARRAY)'
        TabOrder = 7
        OnClick = BitBtn9Click
      end
    end
  end
  object BitBtn8: TBitBtn
    Left = 200
    Top = 0
    Width = 209
    Height = 25
    Align = alCustom
    Caption = 'Buka PDF'
    TabOrder = 1
    OnClick = BitBtn8Click
  end
  object WebBrowser1: TWebBrowser
    Left = 206
    Top = 31
    Width = 410
    Height = 438
    TabOrder = 2
    ControlData = {
      4C000000602A0000452D00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object BitBtn10: TBitBtn
    Left = 408
    Top = 0
    Width = 216
    Height = 25
    Caption = 'Buka di Browser'
    TabOrder = 3
    OnClick = BitBtn10Click
  end
end
