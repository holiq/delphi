object FListBarang: TFListBarang
  Left = 0
  Top = 0
  Caption = 'FListBarang'
  ClientHeight = 330
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 708
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
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 235
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Refresh'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 157
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 79
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Edit'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Tambah'
      TabOrder = 4
      OnClick = BitBtn5Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 708
    Height = 289
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
        FieldName = 'nama_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stok_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_barang'
        Visible = True
      end>
  end
  object QBarang: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM barang')
    Left = 192
    Top = 160
    object QBarangid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QBarangnama_barang: TStringField
      FieldName = 'nama_barang'
      Origin = 'nama_barang'
      Required = True
      Size = 255
    end
    object QBarangstok_barang: TStringField
      FieldName = 'stok_barang'
      Origin = 'stok_barang'
      Required = True
      Size = 255
    end
    object QBarangharga_barang: TStringField
      FieldName = 'harga_barang'
      Origin = 'harga_barang'
      Required = True
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = QBarang
    Left = 296
    Top = 160
  end
end
