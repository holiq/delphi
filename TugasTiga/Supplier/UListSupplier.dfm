object FListSupplier: TFListSupplier
  Left = 0
  Top = 0
  Caption = 'FListSupplier'
  ClientHeight = 364
  ClientWidth = 711
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
    Width = 711
    Height = 41
    Align = alTop
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 1
      Height = 39
      ExplicitLeft = 72
      ExplicitTop = 8
      ExplicitHeight = 100
    end
    object Splitter2: TSplitter
      Left = 79
      Top = 1
      Height = 39
      ExplicitLeft = 148
      ExplicitTop = 0
    end
    object Splitter3: TSplitter
      Left = 157
      Top = 1
      Height = 39
      ExplicitLeft = 232
      ExplicitTop = 32
      ExplicitHeight = 100
    end
    object Splitter4: TSplitter
      Left = 235
      Top = 1
      Height = 39
      ExplicitLeft = 226
      ExplicitTop = 2
    end
    object Splitter5: TSplitter
      Left = 313
      Top = 1
      Height = 39
      ExplicitLeft = 301
      ExplicitTop = 2
    end
    object BitBtn1: TBitBtn
      Left = 316
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Exit'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 160
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Refresh'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 82
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 4
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Edit'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 238
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
    Width = 711
    Height = 323
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
  object QSupplier: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM supplier')
    Left = 264
    Top = 125
    object QSupplierid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
