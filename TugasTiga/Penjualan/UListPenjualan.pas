unit UListPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFListPenjualan = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    QPenjualan: TFDQuery;
    DataSource1: TDataSource;
    QPenjualanid: TFDAutoIncField;
    QPenjualankode_penjualan: TStringField;
    QPenjualantanggal_penjualan: TDateTimeField;
    QPenjualankode_pelanggan: TStringField;
    QPenjualanno_bukti: TStringField;
    QPenjualantotal_harga: TSingleField;
    QPenjualanjumlah_bayar: TSingleField;
    QPenjualanjumlah_kembali: TSingleField;
    QPenjualannama: TStringField;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListPenjualan: TFListPenjualan;

implementation

{$R *.dfm}

uses UFunction, UAddPenjualan, UDataModule, UEditPenjualan;

procedure TFListPenjualan.BitBtn2Click(Sender: TObject);
begin
  if QPenjualan.Active then
    QPenjualan.Refresh
  else
    QPenjualan.Open;
end;

procedure TFListPenjualan.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('Apakah yakin menghapus data tersebut?',
    'konfirmasi', MB_YESNO or MB_ICONINFORMATION) = idyes then
  begin
    // Master
    with DataModule1.QTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'DELETE FROM penjualan_master ' + 'WHERE kode_penjualan=' +
        QuotedStr(QPenjualankode_penjualan.AsString);
      Execute;
    end;

    // Detail
    with DataModule1.QTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'DELETE FROM penjualan_detail ' + 'WHERE kode_penjualan=' +
        QuotedStr(QPenjualankode_penjualan.AsString);
      Execute;
    end;
    BitBtn2.Click;
  end;
end;

procedure TFListPenjualan.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TFEditPenjualan, FEditPenjualan);
  FEditPenjualan.Edit1.Text := QPenjualankode_penjualan.AsString;
  FEditPenjualan.DateTimePicker1.DateTime :=
    QPenjualantanggal_penjualan.AsDateTime;
  FEditPenjualan.ComboBox1.Text := QPenjualannama.AsString;
  FEditPenjualan.Edit2.Text := QPenjualankode_pelanggan.AsString;
  FEditPenjualan.Edit3.Text := QPenjualanno_bukti.AsString;
  FEditPenjualan.Edit4.Text := QPenjualantotal_harga.AsString;
  FEditPenjualan.Edit5.Text := QPenjualanjumlah_bayar.AsString;
  FEditPenjualan.Edit6.Text := QPenjualanjumlah_kembali.AsString;

  with DataModule1.QTemp do
  begin
    SQL.Clear;
    SQL.Text :=
      'select penjualan_detail.*, barang.nama_barang, barang.satuan from penjualan_detail'
      + ' INNER JOIN barang ON barang.kode_barang=penjualan_detail.kode_barang'
      + ' WHERE penjualan_detail.kode_penjualan=' +
      QuotedStr(QPenjualankode_penjualan.AsString);
    Open;
    try
      while not DataModule1.QTemp.Eof do
      begin
        with FEditPenjualan do
        begin
          ClientDataSet1.Insert;
          ClientDataSet1kode_barang.Text := FieldByName('kode_barang').AsString;
          ClientDataSet1nama_barang.Text := FieldByName('nama_barang').AsString;
          ClientDataSet1satuan.Text := FieldByName('satuan').AsString;
          ClientDataSet1harga_jual.AsFloat := FieldByName('harga_jual').AsFloat;
          ClientDataSet1quantity.AsFloat := FieldByName('quantity').AsFloat;
          ClientDataSet1sub_total.AsFloat := FieldByName('sub_total').AsFloat;
          ClientDataSet1.Post;
        end;
        Next;
      end;
    finally
      Close;
    end;
  end;

  FEditPenjualan.ShowModal;
  FEditPenjualan.Free;
end;

procedure TFListPenjualan.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(TFAddPenjualan, FAddPenjualan);
  FAddPenjualan.Edit1.Text := AutoCode('kode_penjualan',
    'penjualan_master', 'PJ');
  FAddPenjualan.ShowModal;
  FAddPenjualan.Free;
end;

end.
