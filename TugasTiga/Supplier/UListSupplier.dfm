object FListSupplier: TFListSupplier
  Left = 0
  Top = 0
  Caption = 'FListSupplier'
  ClientHeight = 326
  ClientWidth = 688
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
    Width = 688
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 678
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
    Width = 688
    Height = 244
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
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_supplier'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_telepon'
        Width = 100
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 688
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 678
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
  object QSupplier: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM supplier'
      '&WHERE')
    Left = 264
    Top = 125
    MacroData = <
      item
        Value = Null
        Name = 'WHERE'
        DataType = mdIdentifier
      end>
    object QSupplierid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QSupplierkode_supplier: TStringField
      FieldName = 'kode_supplier'
      Origin = 'kode_supplier'
      Required = True
      Size = 255
    end
    object QSuppliernama: TStringField
      FieldName = 'nama'
      Origin = 'nama'
      Required = True
      Size = 255
    end
    object QSupplieralamat: TMemoField
      FieldName = 'alamat'
      Origin = 'alamat'
      Required = True
      BlobType = ftMemo
    end
    object QSupplierno_telepon: TStringField
      FieldName = 'no_telepon'
      Origin = 'no_telepon'
      Required = True
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = QSupplier
    Left = 368
    Top = 125
  end
end
