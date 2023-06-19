object FListPenjualan: TFListPenjualan
  Left = 0
  Top = 0
  Caption = 'FListPenjualan'
  ClientHeight = 387
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 820
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 823
    object Splitter1: TSplitter
      Left = 1
      Top = 1
      Height = 39
      ExplicitTop = -4
    end
    object Splitter2: TSplitter
      Left = 79
      Top = 1
      Height = 39
      ExplicitLeft = 76
      ExplicitTop = -4
    end
    object Splitter3: TSplitter
      Left = 157
      Top = 1
      Height = 39
      ExplicitLeft = 148
      ExplicitTop = -4
    end
    object Splitter4: TSplitter
      Left = 235
      Top = 1
      Height = 39
      ExplicitLeft = 226
      ExplicitTop = -4
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
    Width = 820
    Height = 305
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
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
        FieldName = 'kode_penjualan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_penjualan'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_pelanggan'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_bukti'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_harga'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_bayar'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_kembali'
        Width = 90
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 820
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 823
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 27
      Height = 15
      Align = alLeft
      Caption = 'Cari: '
      Layout = tlCenter
    end
    object Edit1: TEdit
      Left = 36
      Top = 11
      Width = 121
      Height = 23
      TabOrder = 0
    end
  end
  object QPenjualan: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'SELECT penjualan_master.*, pelanggan.nama FROM penjualan_master ' +
        'INNER JOIN pelanggan ON pelanggan.kode_pelanggan=penjualan_maste' +
        'r.kode_pelanggan'
      '&WHERE'
      '&ORDERBY')
    Left = 264
    Top = 125
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
    object QPenjualanid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPenjualankode_penjualan: TStringField
      FieldName = 'kode_penjualan'
      Origin = 'kode_penjualan'
      Required = True
    end
    object QPenjualantanggal_penjualan: TDateTimeField
      FieldName = 'tanggal_penjualan'
      Origin = 'tanggal_penjualan'
      Required = True
    end
    object QPenjualankode_pelanggan: TStringField
      FieldName = 'kode_pelanggan'
      Origin = 'kode_pelanggan'
      Required = True
    end
    object QPenjualanno_bukti: TStringField
      FieldName = 'no_bukti'
      Origin = 'no_bukti'
      Required = True
    end
    object QPenjualantotal_harga: TSingleField
      FieldName = 'total_harga'
      Origin = 'total_harga'
      Required = True
    end
    object QPenjualanjumlah_bayar: TSingleField
      FieldName = 'jumlah_bayar'
      Origin = 'jumlah_bayar'
      Required = True
    end
    object QPenjualanjumlah_kembali: TSingleField
      FieldName = 'jumlah_kembali'
      Origin = 'jumlah_kembali'
      Required = True
    end
    object QPenjualannama: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nama'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = QPenjualan
    Left = 368
    Top = 125
  end
end
