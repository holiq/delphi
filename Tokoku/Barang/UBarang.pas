unit UBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBarang = class(TForm)
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    btnRefresh: TBitBtn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Panel2: TPanel;
    EditSearch: TEdit;
    Splitter4: TSplitter;
    btnSearch: TBitBtn;
    DBGrid1: TDBGrid;
    QBarang: TFDQuery;
    DataSourceBarang: TDataSource;
    QBarangid: TFDAutoIncField;
    QBarangkode_barang: TStringField;
    QBarangnama_barang: TStringField;
    QBarangdeskripsi: TStringField;
    QBarangsatuan: TStringField;
    QBarangstokawal: TSingleField;
    QBarangstokmin: TSingleField;
    QBaranghargajual: TSingleField;
    QBarangflg_aktif: TSmallintField;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBarang: TFormBarang;

implementation

{$R *.dfm}

uses UDataModule, UAddEditBarang, UFunctionLogin;

procedure TFormBarang.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TFormAddEditBarang, FormAddEditBarang);
  status_simpan := 1;
  Cflg_aktif := 0;
  FormAddEditBarang.EditKodeBarang.Text := Autokode('kode_barang','tbarang','BR');
  FormAddEditBarang.ShowModal;
  FormAddEditBarang.Free;
end;

procedure TFormBarang.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('Apakah anda yakin ingin menghapus data yang dipilih',
  'konfirmasi',
  MB_YESNO or MB_ICONINFORMATION)=idyes then
  begin
    with DataModule1.QTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='DELETE FROM tokoku.tbarang '+
         ' WHERE kode_barang= '+QuotedStr(QBarangkode_barang.AsString);
      Execute;
    end;
    btnRefreshClick(Sender);
  end;
end;

procedure TFormBarang.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFormAddEditBarang, FormAddEditBarang);
  status_simpan := 2;
  FormAddEditBarang.EditKodeBarang.Text := QBarangkode_barang.AsString;
  FormAddEditBarang.EditNamaBarang.Text := QBarangnama_barang.AsString;
  FormAddEditBarang.EditDeskripsi.Text := QBarangdeskripsi.AsString;
  FormAddEditBarang.EditStokAwal.Text := FloatToStr(QBarangstokawal.AsFloat);
  FormAddEditBarang.EditStokMinimal.Text := FloatToStr(QBarangstokmin.AsFloat);
  FormAddEditBarang.EditHargaJual.Text := FloatToStr(QBaranghargajual.AsFloat);
  Cflg_aktif := QBarangflg_aktif.AsInteger;
  FormAddEditBarang.ShowModal;
  FormAddEditBarang.Free;
end;

procedure TFormBarang.btnRefreshClick(Sender: TObject);
begin
  if QBarang.Active then
  begin
    QBarang.Refresh;
  end
  else
  begin
    QBarang.Open;
  end;
end;

procedure TFormBarang.btnSearchClick(Sender: TObject);
begin
  EditSearch.Clear;
  QBarang.MacroByName('WHERE').Value:='';
  if QBarang.Active then
    QBarang.Refresh
  else
    QBarang.Open;
end;

end.
