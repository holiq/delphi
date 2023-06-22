object FListBarang: TFListBarang
  Left = 0
  Top = 0
  Caption = 'FListBarang'
  ClientHeight = 344
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 698
    object Splitter1: TSplitter
      Left = 79
      Top = 1
      Height = 39
      ExplicitLeft = 72
      ExplicitTop = 8
      ExplicitHeight = 100
    end
    object Splitter2: TSplitter
      Left = 157
      Top = 1
      Height = 39
      ExplicitLeft = 148
      ExplicitTop = 0
    end
    object Splitter3: TSplitter
      Left = 235
      Top = 1
      Height = 39
      ExplicitLeft = 232
      ExplicitTop = 32
      ExplicitHeight = 100
    end
    object Splitter5: TSplitter
      Left = 1
      Top = 1
      Height = 39
      ExplicitTop = 2
    end
    object BitBtn2: TBitBtn
      Left = 238
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Refresh'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 160
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Hapus'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 82
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Edit'
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 4
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Tambah'
      TabOrder = 3
      OnClick = BitBtn5Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 82
    Width = 708
    Height = 262
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_barang'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deskripsi'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'satuan'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stok_awal'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stok_minimal'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_barang'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'is_active'
        Width = 50
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 708
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 698
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 26
      Height = 33
      Align = alLeft
      Caption = 'Cari: '
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object Edit1: TEdit
      Left = 36
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object QBarang: TFDQuery
    SQL.Strings = (
      'SELECT * FROM barang'
      '&WHERE ')
    Left = 192
    Top = 160
    MacroData = <
      item
        Value = Null
        Name = 'WHERE'
        DataType = mdIdentifier
      end>
    object QBarangid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    end
    object QBarangdeskripsi: TMemoField
      FieldName = 'deskripsi'
      Origin = 'deskripsi'
      Required = True
      BlobType = ftMemo
    end
    object QBarangsatuan: TStringField
      FieldName = 'satuan'
      Origin = 'satuan'
      Required = True
    end
    object QBarangstok_awal: TIntegerField
      FieldName = 'stok_awal'
      Origin = 'stok_awal'
      Required = True
    end
    object QBarangstok_minimal: TIntegerField
      FieldName = 'stok_minimal'
      Origin = 'stok_minimal'
      Required = True
    end
    object QBarangharga_barang: TSingleField
      FieldName = 'harga_barang'
      Origin = 'harga_barang'
      Required = True
    end
    object QBarangis_active: TShortintField
      FieldName = 'is_active'
      Origin = 'is_active'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = QBarang
    Left = 296
    Top = 160
  end
end
