object FListPembelian: TFListPembelian
  Left = 0
  Top = 0
  Caption = 'FListPembelian'
  ClientHeight = 406
  ClientWidth = 770
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
    Width = 770
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 760
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
    Width = 770
    Height = 324
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_pembelian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_pembelian'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_supplier'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_bukti'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 770
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 760
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 27
      Height = 33
      Align = alLeft
      Caption = 'Cari: '
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object Edit1: TEdit
      Left = 36
      Top = 11
      Width = 121
      Height = 23
      TabOrder = 0
    end
  end
  object QPembelian: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'SELECT pembelian_master.*, supplier.nama FROM pembelian_master I' +
        'NNER JOIN supplier ON supplier.kode_supplier=pembelian_master.ko' +
        'de_supplier'
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
    object QPembelianid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPembeliankode_pembelian: TStringField
      FieldName = 'kode_pembelian'
      Origin = 'kode_pembelian'
      Required = True
    end
    object QPembeliantanggal_pembelian: TDateField
      DisplayWidth = 15
      FieldName = 'tanggal_pembelian'
      Origin = 'tanggal_pembelian'
      Required = True
    end
    object QPembeliankode_supplier: TStringField
      FieldName = 'kode_supplier'
      Origin = 'kode_supplier'
      Required = True
    end
    object QPembelianno_bukti: TStringField
      FieldName = 'no_bukti'
      Origin = 'no_bukti'
      Required = True
    end
    object QPembeliannama: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'nama'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = QPembelian
    Left = 368
    Top = 125
  end
end
