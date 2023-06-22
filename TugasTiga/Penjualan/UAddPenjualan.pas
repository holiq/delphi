unit UAddPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.Menus,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,
  System.UITypes;

type
  TFAddPenjualan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    INSERTPopup: TMenuItem;
    EDITPopup: TMenuItem;
    DELETEPopup: TMenuItem;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1kode_barang: TStringField;
    ClientDataSet1nama_barang: TStringField;
    ClientDataSet1satuan: TStringField;
    ClientDataSet1harga_jual: TFloatField;
    ClientDataSet1quantity: TFloatField;
    ClientDataSet1sub_total: TFloatField;
    procedure INSERTPopupClick(Sender: TObject);
    procedure EDITPopupClick(Sender: TObject);
    procedure DELETEPopupClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure Edit5Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddPenjualan: TFAddPenjualan;

implementation

{$R *.dfm}

uses UDataModule, UListPenjualan, UFunction;

procedure TFAddPenjualan.BitBtn1Click(Sender: TObject);
begin
  FAddPenjualan.Close;
end;

procedure TFAddPenjualan.BitBtn2Click(Sender: TObject);
begin
  if ComboBox1.Text = '' then
    ValidateMsg := 'nama pelanggan'
  else if Edit3.Text = '' then
    ValidateMsg := 'no bukti/kwitansi'
  else if Edit5.Text = '' then
    ValidateMsg := 'jumlah bayar'
  else if Edit6.Text = '' then
    ValidateMsg := 'jumlah kembalian'
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
    SQL.Text := 'INSERT INTO penjualan_master' +
      '(kode_penjualan, tanggal_penjualan, kode_pelanggan,no_bukti, total_harga, jumlah_bayar, jumlah_kembali) VALUES('
      + QuotedStr(Edit1.Text) + ',' +
      QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) + ',' +
      QuotedStr(Edit2.Text) + ',' + QuotedStr(Edit3.Text) + ',' +
      QuotedStr(Edit4.Text) + ',' + QuotedStr(Edit5.Text) + ',' +
      QuotedStr(Edit6.Text) + ')';
    Execute;
  end;

  // Detail
  ClientDataSet1.First;
  while not ClientDataSet1.Eof do
  begin
    with DataModule1.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'INSERT INTO penjualan_detail(kode_penjualan, kode_barang, quantity, harga_jual, sub_total) VALUES('
        + QuotedStr(Edit1.Text) + ',' +
        QuotedStr(ClientDataSet1kode_barang.Text) + ',' +
        FloatToStr(ClientDataSet1quantity.Value) + ',' +
        FloatToStr(ClientDataSet1harga_jual.Value) + ',' +
        FloatToStr(ClientDataSet1sub_total.Value) + ')';
      Execute;
      ClientDataSet1.Next;
    end;
  end;

  FListPenjualan.BitBtn2.Click;
  FAddPenjualan.Close;
end;

procedure TFAddPenjualan.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  Edit4.Clear;
  while not ClientDataSet1.Eof do
  begin
    Edit4.Text := FloatToStr(StrToFloatDef(Edit4.Text, 0) -
      ClientDataSet1sub_total.Value);
    ClientDataSet1.Next;
  end;
end;

procedure TFAddPenjualan.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  Edit4.Clear;
  while not ClientDataSet1.Eof do
  begin
    Edit4.Text := FloatToStr(StrToFloatDef(Edit4.Text, 0) +
      ClientDataSet1sub_total.Value);
    ClientDataSet1.Next;
  end;
end;

procedure TFAddPenjualan.ComboBox1Change(Sender: TObject);
begin
  with DataModule1.Qtemp do
  begin
    SQL.Clear;
    SQL.Text := 'SELECT kode_pelanggan FROM pelanggan where nama=' +
      QuotedStr(ComboBox1.Text);
    Open;
    try
      while not DataModule1.Qtemp.Eof do
      begin
        Edit2.Text := DataModule1.Qtemp.FieldByName('kode_pelanggan').AsString;
        Next;
      end;
    finally
      Close;
    end;
  end;
end;

procedure TFAddPenjualan.DBGrid1ColExit(Sender: TObject);
begin
  if (ClientDataSet1.State in [dsInsert, dsEdit]) and
    (ClientDataSet1kode_barang.Text <> '') then
  begin
    with DataModule1.Qtemp do
    begin
      SQL.Clear;
      SQL.Text :=
        'SELECT nama_barang, harga_barang, satuan FROM barang WHERE kode_barang='
        + QuotedStr(ClientDataSet1kode_barang.Text);
      Open;

      if RecordCount = 0 then
      Begin
        Messagedlg('Kode Barang Tidak ditemukan', mtWarning, [Mbok], 0);
        Exit;
      End;

      ClientDataSet1nama_barang.Text := FieldByName('nama_barang').AsString;
      ClientDataSet1satuan.Text := FieldByName('satuan').AsString;
      ClientDataSet1harga_jual.Text := FieldByName('harga_barang').AsString;
    end;

    if (ClientDataSet1quantity.Value <> 0) or
      (ClientDataSet1harga_jual.Value <> 0) then
      ClientDataSet1sub_total.Value := ClientDataSet1quantity.Value *
        ClientDataSet1harga_jual.Value;

    ClientDataSet1.Post;
  end;
end;

procedure TFAddPenjualan.DELETEPopupClick(Sender: TObject);
begin
  if ClientDataSet1.RecordCount > 0 then
    ClientDataSet1.Delete;
end;

procedure TFAddPenjualan.Edit5Change(Sender: TObject);
begin
  Edit6.Text := FloatToStr(StrToFloatDef(Edit5.Text, 0) -
    StrToFloat(Edit4.Text));
end;

procedure TFAddPenjualan.EDITPopupClick(Sender: TObject);
begin
  ClientDataSet1.Edit;
end;

procedure TFAddPenjualan.INSERTPopupClick(Sender: TObject);
begin
  ClientDataSet1.Insert;
end;

procedure TFAddPenjualan.FormCreate(Sender: TObject);
begin
  with DataModule1.Qtemp do
  begin
    SQL.Clear;
    SQL.Text := 'SELECT nama FROM pelanggan';
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

end.
