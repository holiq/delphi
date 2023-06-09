unit UListSupplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFListSupplier = class(TForm)
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
    QSupplier: TFDQuery;
    DataSource1: TDataSource;
    QSupplierid: TFDAutoIncField;
    QSupplierkode_supplier: TStringField;
    QSuppliernama: TStringField;
    QSupplieralamat: TMemoField;
    QSupplierno_telepon: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListSupplier: TFListSupplier;

implementation

{$R *.dfm}

uses UAddSupplier, UEditSupplier, UDataModule;

procedure TFListSupplier.BitBtn1Click(Sender: TObject);
begin
  FListSupplier.Close;
end;

procedure TFListSupplier.BitBtn2Click(Sender: TObject);
begin
  if QSupplier.Active then
    QSupplier.Refresh
  else
    QSupplier.Open;
end;

procedure TFListSupplier.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('Apakah yakin menghapus data tersebut?',
  'konfirmasi', MB_YESNO or MB_ICONINFORMATION) = idyes then
  begin
  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text:= 'DELETE FROM tugas_tiga.supplier '+
      'WHERE supplier.id='+QuotedStr(IntToStr(QSupplierid.AsInteger));
    Execute;
  end;
  BitBtn2.Click;
  end;
end;

procedure TFListSupplier.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TFEditSupplier, FEditSupplier);
  FEditSupplier.Edit1.Text:= QSuppliernama.AsString;
  FEditSupplier.Memo1.Text:= QSupplieralamat.AsString;
  FEditSupplier.Edit2.Text:= QSupplierno_telepon.AsString;
  FEditSupplier.Label5.Caption:= QSupplierid.AsString;
  FEditSupplier.ShowModal;
  FEditSupplier.Free;
end;

procedure TFListSupplier.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(TFAddSupplier, FAddSupplier);
  FAddSupplier.Memo1.Clear;
  FAddSupplier.ShowModal;
  FAddSupplier.Free;
end;

procedure TFListSupplier.Edit1Change(Sender: TObject);
begin
  QSupplier.MacroByName('WHERE').Value:= ' WHERE users.kode_barang LIKE '+
    QuotedStr('%'+Edit1.Text+'%')+' OR nama_barang LIKE '+
    QuotedStr('%'+Edit1.Text+'%')+' OR deskripsi LIKE '+
    QuotedStr('%'+Edit1.Text+'%');
  QSupplier.Open;
  while not QSupplier.Eof do
  begin
    QSupplier.Refresh;
    QSupplier.Next;
  end;
end;

end.
