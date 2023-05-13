object FormBarang: TFormBarang
  Left = 0
  Top = 0
  Caption = 'FormBarang'
  ClientHeight = 311
  ClientWidth = 720
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
    Width = 720
    Height = 41
    Align = alTop
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 73
      Top = 1
      Height = 39
      ExplicitLeft = 70
    end
    object Splitter2: TSplitter
      Left = 151
      Top = 1
      Height = 39
      ExplicitLeft = 154
      ExplicitTop = 0
    end
    object Splitter3: TSplitter
      Left = 229
      Top = 1
      Height = 39
      ExplicitLeft = 232
      ExplicitTop = 0
    end
    object btnAdd: TBitBtn
      Left = 1
      Top = 1
      Width = 72
      Height = 39
      Align = alLeft
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnEdit: TBitBtn
      Left = 76
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Edit'
      TabOrder = 1
      OnClick = btnEditClick
    end
    object btnDelete: TBitBtn
      Left = 154
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = btnDeleteClick
    end
    object btnRefresh: TBitBtn
      Left = 232
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Refresh'
      TabOrder = 3
      OnClick = btnRefreshClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 720
    Height = 24
    Align = alTop
    TabOrder = 1
    object Splitter4: TSplitter
      Left = 41
      Top = 1
      Height = 22
      ExplicitLeft = 16
      ExplicitTop = 16
      ExplicitHeight = 100
    end
    object EditSearch: TEdit
      Left = 44
      Top = 1
      Width = 203
      Height = 22
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 21
    end
    object btnSearch: TBitBtn
      Left = 1
      Top = 1
      Width = 40
      Height = 22
      Align = alLeft
      Caption = 'Cari'
      TabOrder = 1
      OnClick = btnSearchClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 720
    Height = 246
    Align = alClient
    DataSource = DataSourceBarang
    TabOrder = 2
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
        FieldName = 'kode_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deskripsi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'satuan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stokawal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stokmin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hargajual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'flg_aktif'
        Visible = True
      end>
  end
  object QBarang: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM tbarang'
      '&WHERE'
      '&ORDERBY')
    Left = 216
    Top = 136
    MacroData = <
      item
        Value = Null
        Name = 'WHERE'
        DataType = mdIdentifier
      end
      item
        Value = Null
        Name = 'ORDERBY'
        DataType = mdIdentifier
      end>
    object QBarangid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QBarangkode_barang: TStringField
      FieldName = 'kode_barang'
      Origin = 'kode_barang'
      Required = True
    end
    object QBarangnama_barang: TStringField
      FieldName = 'nama_barang'
      Origin = 'nama_barang'
      Required = True
      Size = 100
    end
    object QBarangdeskripsi: TStringField
      FieldName = 'deskripsi'
      Origin = 'deskripsi'
      Required = True
      Size = 250
    end
    object QBarangsatuan: TStringField
      FieldName = 'satuan'
      Origin = 'satuan'
      Required = True
      Size = 10
    end
    object QBarangstokawal: TSingleField
      FieldName = 'stokawal'
      Origin = 'stokawal'
      Required = True
    end
    object QBarangstokmin: TSingleField
      FieldName = 'stokmin'
      Origin = 'stokmin'
      Required = True
    end
    object QBaranghargajual: TSingleField
      FieldName = 'hargajual'
      Origin = 'hargajual'
      Required = True
    end
    object QBarangflg_aktif: TSmallintField
      FieldName = 'flg_aktif'
      Origin = 'flg_aktif'
      Required = True
    end
  end
  object DataSourceBarang: TDataSource
    DataSet = QBarang
    Left = 456
    Top = 200
  end
end
