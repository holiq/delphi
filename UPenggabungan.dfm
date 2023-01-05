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
        ExplicitTop = 150
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
        ExplicitTop = 125
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
        ExplicitTop = 100
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
        ExplicitTop = 75
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
        ExplicitTop = 50
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
        ExplicitTop = 25
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
        ExplicitTop = 0
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
        ExplicitTop = 8
      end
    end
  end
  object BitBtn8: TBitBtn
    Left = 216
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Buka PDF'
    TabOrder = 1
    OnClick = BitBtn8Click
  end
  object OpenDialog1: TOpenDialog
    FileName = 
      'C:\Users\Holiq Ibrahim\Documents\Embarcadero\Studio\Projects\pdf' +
      '\UAS.pdf'
    Left = 304
    Top = 8
  end
end
