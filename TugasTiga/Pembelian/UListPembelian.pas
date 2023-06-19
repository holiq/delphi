unit UListPembelian;

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
  TFListPembelian = class(TForm)
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
    QPembelian: TFDQuery;
    DataSource1: TDataSource;
    QPembelianid: TFDAutoIncField;
    QPembeliankode_pembelian: TStringField;
    QPembeliantanggal_pembelian: TDateField;
    QPembeliankode_supplier: TStringField;
    QPembelianno_bukti: TStringField;
    QPembeliannama: TStringField;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListPembelian: TFListPembelian;

implementation

{$R *.dfm}

uses UAddPembelian, UEditPembelian, UDataModule, UFunction;

procedure TFListPembelian.BitBtn2Click(Sender: TObject);
begin
  if QPembelian.Active then
    QPembelian.Refresh
  else
    QPembelian.Open;
end;

procedure TFListPembelian.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('Apakah yakin menghapus data tersebut?',
    'konfirmasi', MB_YESNO or MB_ICONINFORMATION) = idyes then
  begin
    // Master
    with DataModule1.QTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'DELETE FROM pembelian_master ' + 'WHERE kode_pembelian=' +
        QuotedStr(QPembeliankode_pembelian.AsString);
      Execute;
    end;

    // Detail
    with DataModule1.QTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'DELETE FROM pembelian_detail ' + 'WHERE kode_pembelian=' +
        QuotedStr(QPembeliankode_pembelian.AsString);
      Execute;
    end;
    BitBtn2.Click;
  end;
end;

procedure TFListPembelian.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TFEditPembelian, FEditPembelian);

  FEditPembelian.Edit1.Text := QPembeliankode_pembelian.AsString;
  FEditPembelian.DateTimePicker1.DateTime :=
    QPembeliantanggal_pembelian.AsDateTime;
  FEditPembelian.ComboBox1.Text := QPembeliannama.AsString;
  FEditPembelian.Edit2.Text := QPembeliankode_supplier.AsString;
  FEditPembelian.Edit3.Text := QPembelianno_bukti.AsString;

  with DataModule1.QTemp do
  begin
    SQL.Clear;
    SQL.Text :=
      'select pembelian_detail.*, barang.nama_barang, barang.satuan from pembelian_detail'
      + ' INNER JOIN barang ON barang.kode_barang=pembelian_detail.kode_barang'
      + ' WHERE pembelian_detail.kode_pembelian=' +
      QuotedStr(QPembeliankode_pembelian.AsString);
    Open;
    try
      while not DataModule1.QTemp.Eof do
      begin
        with FEditPembelian do
        begin
          ClientDataSet1.Insert;
          ClientDataSet1kode_barang.Text := FieldByName('kode_barang').AsString;
          ClientDataSet1nama_barang.Text := FieldByName('nama_barang').AsString;
          ClientDataSet1satuan.Text := FieldByName('satuan').AsString;
          ClientDataSet1harga_beli.AsFloat := FieldByName('harga_beli').AsFloat;
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

  FEditPembelian.ShowModal;
  FEditPembelian.Free;
end;

procedure TFListPembelian.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(TFAddPembelian, FAddPembelian);
  FAddPembelian.Edit1.Text := AutoCode('kode_pembelian',
    'pembelian_master', 'PO');
  FAddPembelian.ShowModal;
  FAddPembelian.Free;
end;

end.
