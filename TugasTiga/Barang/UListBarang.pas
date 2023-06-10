unit UListBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFListBarang = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    DBGrid1: TDBGrid;
    QBarang: TFDQuery;
    DataSource1: TDataSource;
    Splitter5: TSplitter;
    QBarangid: TFDAutoIncField;
    QBarangkode_barang: TStringField;
    QBarangnama_barang: TStringField;
    QBarangdeskripsi: TMemoField;
    QBarangsatuan: TStringField;
    QBarangstok_awal: TStringField;
    QBarangstok_minimal: TStringField;
    QBarangharga_barang: TStringField;
    QBarangis_active: TShortintField;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListBarang: TFListBarang;

implementation

{$R *.dfm}

uses UDataModule, UAddBarang, UEditBarang, UFunction;

procedure TFListBarang.BitBtn1Click(Sender: TObject);
begin
  FListBarang.Close;
end;

procedure TFListBarang.BitBtn2Click(Sender: TObject);
begin
  if QBarang.Active then
    QBarang.Refresh
  else
    QBarang.Open;
end;

procedure TFListBarang.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('Apakah yakin menghapus data tersebut?',
  'konfirmasi', MB_YESNO or MB_ICONINFORMATION) = idyes then
  begin
    with DataModule1.QTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text:= 'DELETE FROM tugas_tiga.barang '+
        'WHERE barang.id='+QuotedStr(IntToStr(QBarangid.AsInteger));
      Execute;
    end;
  BitBtn2.Click;
  end;
end;

procedure TFListBarang.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TFEditBarang, FEditBarang);
  FEditBarang.Edit1.Text:= QBarangkode_barang.AsString;
  FEditBarang.Edit2.Text:= QBarangnama_barang.AsString;
  FEditBarang.Edit3.Text:= QBarangdeskripsi.AsString;
  FEditBarang.ComboBox1.Text:= QBarangsatuan.AsString;
  FEditBarang.Edit4.Text:= QBarangstok_awal.AsString;
  FEditBarang.Edit5.Text:= QBarangstok_minimal.AsString;
  FEditBarang.Edit6.Text:= QBarangharga_barang.AsString;
  if QBarangis_active.AsInteger=1 then
  begin
    FEditBarang.CheckBox1.Checked:= true;
  end;

  FEditBarang.Label5.Caption:= QBarangid.AsString;
  FEditBarang.ShowModal;
  FEditBarang.Free;
end;

procedure TFListBarang.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(TFAddBarang, FAddBarang);
  FAddBarang.Edit1.Text:= AutoCode('kode_barang', 'barang', 'BR');
  FAddBarang.ShowModal;
  FAddBarang.Free;
end;

procedure TFListBarang.Edit1Change(Sender: TObject);
begin
  QBarang.MacroByName('WHERE').Value:= ' WHERE kode_barang LIKE '+
    QuotedStr('%'+Edit1.Text+'%')+' OR nama_barang LIKE '+
    QuotedStr('%'+Edit1.Text+'%')+' OR deskripsi LIKE '+
    QuotedStr('%'+Edit1.Text+'%');
  QBarang.Open;
  while not QBarang.Eof do
  begin
    QBarang.Refresh;
    QBarang.Next;
  end;
end;

end.
