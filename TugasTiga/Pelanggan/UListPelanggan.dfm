object FListPelanggan: TFListPelanggan
  Left = 0
  Top = 0
  Caption = 'FListPelanggan'
  ClientHeight = 388
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 41
    Align = alTop
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 76
      Top = 1
      Height = 39
      ExplicitLeft = 72
      ExplicitTop = 8
      ExplicitHeight = 100
    end
    object Splitter2: TSplitter
      Left = 154
      Top = 1
      Height = 39
      ExplicitLeft = 148
      ExplicitTop = 0
    end
    object Splitter3: TSplitter
      Left = 232
      Top = 1
      Height = 39
      ExplicitTop = 32
      ExplicitHeight = 100
    end
    object Splitter4: TSplitter
      Left = 310
      Top = 1
      Height = 39
      ExplicitLeft = 301
      ExplicitTop = 0
    end
    object BitBtn1: TBitBtn
      Left = 313
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Exit'
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 235
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Refresh'
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 157
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Hapus'
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 79
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Edit'
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Tambah'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 800
    Height = 347
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_telepon'
        Visible = True
      end>
  end
  object QPelanggan: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM pelanggan')
    Left = 264
    Top = 125
    object QPelangganid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object QPelanggannama: TStringField
      FieldName = 'nama'
      Origin = 'nama'
      Required = True
      Size = 255
    end
    object QPelangganalamat: TMemoField
      FieldName = 'alamat'
      Origin = 'alamat'
      Required = True
      BlobType = ftMemo
    end
    object QPelangganno_telepon: TStringField
      FieldName = 'no_telepon'
      Origin = 'no_telepon'
      Required = True
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = QPelanggan
    Left = 368
    Top = 125
  end
end
