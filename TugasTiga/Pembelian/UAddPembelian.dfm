object FAddPembelian: TFAddPembelian
  Left = 0
  Top = 0
  Caption = 'FAddPembelian'
  ClientHeight = 512
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 86
    Height = 15
    Caption = 'Kode Pembelian'
  end
  object Label2: TLabel
    Left = 56
    Top = 54
    Width = 100
    Height = 15
    Caption = 'Tanggal Pembelian'
  end
  object Label3: TLabel
    Left = 56
    Top = 94
    Width = 78
    Height = 15
    Caption = 'Nama Supplier'
  end
  object Label4: TLabel
    Left = 56
    Top = 133
    Width = 70
    Height = 15
    Caption = 'Kode Suppier'
  end
  object Label5: TLabel
    Left = 56
    Top = 173
    Width = 95
    Height = 15
    Caption = 'No Bukti/Kwitansi'
  end
  object Panel1: TPanel
    Left = 0
    Top = 471
    Width = 703
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 453
    ExplicitWidth = 693
    object Splitter1: TSplitter
      Left = 621
      Top = 1
      Height = 39
      Align = alRight
      ExplicitLeft = 816
    end
    object Splitter2: TSplitter
      Left = 699
      Top = 1
      Height = 39
      Align = alRight
      ExplicitLeft = 817
    end
    object BitBtn1: TBitBtn
      Left = 624
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'CANCEL'
      TabOrder = 0
      OnClick = BitBtn1Click
      ExplicitLeft = 614
    end
    object BitBtn2: TBitBtn
      Left = 546
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'SAVE'
      TabOrder = 1
      OnClick = BitBtn2Click
      ExplicitLeft = 536
    end
  end
  object Edit1: TEdit
    Left = 185
    Top = 8
    Width = 121
    Height = 23
    ReadOnly = True
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 185
    Top = 125
    Width = 121
    Height = 23
    ReadOnly = True
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 185
    Top = 165
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 185
    Top = 46
    Width = 186
    Height = 23
    Date = 45087.000000000000000000
    Time = 0.416437592590227700
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 185
    Top = 86
    Width = 145
    Height = 23
    TabOrder = 5
    OnChange = ComboBox1Change
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 202
    Width = 703
    Height = 269
    Align = alBottom
    DataSource = DataSource1
    PopupMenu = PopupMenu1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColExit = DBGrid1ColExit
    Columns = <
      item
        Expanded = False
        FieldName = 'kode_barang'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'satuan'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantity'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_beli'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sub_total'
        Width = 150
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 192
    Top = 312
    object INSERTPopup: TMenuItem
      Caption = 'INSERT'
      OnClick = INSERTPopupClick
    end
    object EDITPopup: TMenuItem
      Caption = 'EDIT'
      OnClick = EDITPopupClick
    end
    object DELETEPopup: TMenuItem
      Caption = 'DELETE'
      OnClick = DELETEPopupClick
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 512
    Top = 296
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      AB0000009619E0BD010000001800000006000000000003000000AB000B6B6F64
      655F626172616E6701004900000001000557494454480200020014000B6E616D
      615F626172616E67020049000000010005574944544802000200FF0006736174
      75616E01004900000001000557494454480200020014000A68617267615F6265
      6C690800040000000000087175616E746974790800040000000000097375625F
      746F74616C08000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'kode_barang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nama_barang'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'satuan'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'harga_beli'
        DataType = ftFloat
      end
      item
        Name = 'quantity'
        DataType = ftFloat
      end
      item
        Name = 'sub_total'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 352
    Top = 312
    object ClientDataSet1kode_barang: TStringField
      FieldName = 'kode_barang'
    end
    object ClientDataSet1nama_barang: TStringField
      FieldName = 'nama_barang'
      Size = 255
    end
    object ClientDataSet1satuan: TStringField
      FieldName = 'satuan'
    end
    object ClientDataSet1harga_beli: TFloatField
      FieldName = 'harga_beli'
    end
    object ClientDataSet1quantity: TFloatField
      FieldName = 'quantity'
    end
    object ClientDataSet1sub_total: TFloatField
      FieldName = 'sub_total'
    end
  end
end
