unit UEditPembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TFEditPembelian = class(TForm)
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
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    INSERTPopup: TMenuItem;
    EDITPopup: TMenuItem;
    DELETEPopup: TMenuItem;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1kode_barang: TStringField;
    ClientDataSet1nama_barang: TStringField;
    ClientDataSet1satuan: TStringField;
    ClientDataSet1harga_beli: TFloatField;
    ClientDataSet1quantity: TFloatField;
    ClientDataSet1sub_total: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure INSERTPopupClick(Sender: TObject);
    procedure EDITPopupClick(Sender: TObject);
    procedure DELETEPopupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditPembelian: TFEditPembelian;

implementation

{$R *.dfm}

uses UDataModule, UListPembelian;

procedure TFEditPembelian.BitBtn1Click(Sender: TObject);
begin
  FEditPembelian.Close;
end;

procedure TFEditPembelian.BitBtn2Click(Sender: TObject);
begin
  // Master
  with DataModule1.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='UPDATE pembelian_master SET '+
      'tanggal_pembelian='+QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime))+','+
      'kode_supplier='+QuotedStr(Edit2.Text)+','+
      'no_bukti='+QuotedStr(Edit3.Text)+' '+
      'WHERE kode_pembelian='+QuotedStr(Edit1.Text);
    Execute;
  end;

  //Detail
  //Delete exists data
  with DataModule1.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='DELETE FROM pembelian_detail WHERE kode_pembelian='+
      QuotedStr(Edit1.Text);
    Execute;
  end;
  //Store new data
  ClientDataSet1.First;
  while not ClientDataSet1.Eof do
  begin
    with DataModule1.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO pembelian_detail(kode_pembelian, kode_barang, quantity, harga_beli, sub_total) VALUES('+
          QuotedStr(Edit1.Text)+','+
          QuotedStr(ClientDataSet1kode_barang.Text)+','+
          FloatToStr(ClientDataSet1quantity.Value)+','+
          FloatToStr(ClientDataSet1harga_beli.Value)+','+
          FloatToStr(ClientDataSet1sub_total.Value)+
      ')';
      Execute;
      ClientDataSet1.Next;
    end;
  end;

  FListPembelian.BitBtn2.Click;
  FEditPembelian.Close;
end;

procedure TFEditPembelian.DBGrid1ColExit(Sender: TObject);
begin
  if (ClientDataSet1.State in [dsInsert, dsEdit]) and (ClientDataSet1kode_barang.Text<>'') then
  begin
    with DataModule1.Qtemp do
    begin
       SQL.Clear;
       sql.Text:= 'SELECT nama_barang, satuan FROM barang WHERE kode_barang='+QuotedStr(ClientDataSet1kode_barang.Text);
       Open;

       if RecordCount=0 then
       Begin
         Messagedlg('Kode Barang Tidak ditemukan', mtWarning,[Mbok], 0);
         Exit;
       End;

       ClientDataSet1nama_barang.Text:= FieldByName('nama_barang').AsString;
       ClientDataSet1satuan.Text:= FieldByName('satuan').AsString;
    end;

    if (ClientDataSet1quantity.Value<>0) or (ClientDataSet1harga_beli.Value<>0) then
      ClientDataSet1sub_total.Value:= ClientDataSet1quantity.Value * ClientDataSet1harga_beli.Value;

    ClientDataSet1.Post;
  end;
end;

procedure TFEditPembelian.DELETEPopupClick(Sender: TObject);
begin
  if ClientDataSet1.RecordCount > 0 then
    ClientDataSet1.Delete;
end;

procedure TFEditPembelian.EDITPopupClick(Sender: TObject);
begin
  ClientDataSet1.Edit;
end;

procedure TFEditPembelian.INSERTPopupClick(Sender: TObject);
begin
  ClientDataSet1.Insert;
end;

end.
