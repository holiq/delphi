unit UAddPembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, System.UITypes;

type
  TFAddPembelian = class(TForm)
    PopupMenu1: TPopupMenu;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    INSERTPopup: TMenuItem;
    EDITPopup: TMenuItem;
    DELETEPopup: TMenuItem;
    ClientDataSet1kode_barang: TStringField;
    ClientDataSet1nama_barang: TStringField;
    ClientDataSet1satuan: TStringField;
    ClientDataSet1harga_beli: TFloatField;
    ClientDataSet1quantity: TFloatField;
    ClientDataSet1sub_total: TFloatField;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure INSERTPopupClick(Sender: TObject);
    procedure EDITPopupClick(Sender: TObject);
    procedure DELETEPopupClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddPembelian: TFAddPembelian;

implementation

{$R *.dfm}

uses UDataModule, UListPembelian, UFunction;

procedure TFAddPembelian.BitBtn1Click(Sender: TObject);
begin
  FAddPembelian.Close;
end;

procedure TFAddPembelian.BitBtn2Click(Sender: TObject);
begin
  if ComboBox1.Text = '' then
    ValidateMsg := 'nama supplier'
  else if Edit3.Text = '' then
    ValidateMsg := 'no bukti/kwitansi'
  else if ClientDataSet1.RecordCount = 0 then
    ValidateMsg := 'data barang'
  else
    ValidateMsg := '';

  if ValidateMsg <> '' then
  begin
    Validation(ValidateMsg);
    Exit;
  end;

  // Master
  with DataModule1.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO pembelian_master(kode_pembelian, tanggal_pembelian, kode_supplier,no_bukti) VALUES('
      + QuotedStr(Edit1.Text) + ',' +
      QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) + ',' +
      QuotedStr(Edit2.Text) + ',' + QuotedStr(Edit3.Text) + ')';
    Execute;
  end;

  // Detail
  while not ClientDataSet1.Eof do
  begin
    with DataModule1.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'INSERT INTO pembelian_detail(kode_pembelian, kode_barang, quantity, harga_beli, sub_total) VALUES('
        + QuotedStr(Edit1.Text) + ',' +
        QuotedStr(ClientDataSet1kode_barang.Text) + ',' +
        FloatToStr(ClientDataSet1quantity.Value) + ',' +
        FloatToStr(ClientDataSet1harga_beli.Value) + ',' +
        FloatToStr(ClientDataSet1sub_total.Value) + ')';
      Execute;
      ClientDataSet1.Next;
    end;
  end;

  FListPembelian.BitBtn2.Click;
  FAddPembelian.Close;
end;

procedure TFAddPembelian.ComboBox1Change(Sender: TObject);
begin
  with DataModule1.Qtemp do
  begin
    SQL.Clear;
    SQL.Text := 'SELECT kode_supplier FROM supplier where nama=' +
      QuotedStr(ComboBox1.Text);
    Open;
    try
      while not DataModule1.Qtemp.Eof do
      begin
        Edit2.Text := DataModule1.Qtemp.FieldByName('kode_supplier').AsString;
        Next;
      end;
    finally
      Close;
    end;
  end;
end;

procedure TFAddPembelian.FormCreate(Sender: TObject);
begin
  with DataModule1.Qtemp do
  begin
    SQL.Clear;
    SQL.Text := 'SELECT nama FROM supplier';
    Open;
    try
      while not DataModule1.Qtemp.Eof do
      begin
        ComboBox1.Items.Add(DataModule1.Qtemp.FieldByName('nama').AsString);
        Next;
      end;
    finally
      Close;
    end;
  end;
end;

procedure TFAddPembelian.INSERTPopupClick(Sender: TObject);
begin
  ClientDataSet1.Insert;
end;

procedure TFAddPembelian.EDITPopupClick(Sender: TObject);
begin
  ClientDataSet1.Edit;
end;

procedure TFAddPembelian.DELETEPopupClick(Sender: TObject);
begin
  if ClientDataSet1.RecordCount > 0 then
    ClientDataSet1.Delete;
end;

procedure TFAddPembelian.DBGrid1ColExit(Sender: TObject);
begin
  if (ClientDataSet1.State in [dsInsert, dsEdit]) and
    (ClientDataSet1kode_barang.Text <> '') then
  begin
    with DataModule1.Qtemp do
    begin
      SQL.Clear;
      SQL.Text := 'SELECT nama_barang, satuan FROM barang WHERE kode_barang=' +
        QuotedStr(ClientDataSet1kode_barang.Text);
      Open;

      if RecordCount = 0 then
      Begin
        Messagedlg('Kode Barang Tidak ditemukan', mtWarning, [Mbok], 0);
        Exit;
      End;

      ClientDataSet1nama_barang.Text := FieldByName('nama_barang').AsString;
      ClientDataSet1satuan.Text := FieldByName('satuan').AsString;
    end;

    if (ClientDataSet1quantity.Value <> 0) or
      (ClientDataSet1harga_beli.Value <> 0) then
      ClientDataSet1sub_total.Value := ClientDataSet1quantity.Value *
        ClientDataSet1harga_beli.Value;

    ClientDataSet1.Post;
  end;
end;

end.
