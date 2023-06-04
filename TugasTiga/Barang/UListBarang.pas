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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    DBGrid1: TDBGrid;
    QBarang: TFDQuery;
    DataSource1: TDataSource;
    QBarangid: TFDAutoIncField;
    QBarangnama_barang: TStringField;
    QBarangstok_barang: TStringField;
    QBarangharga_barang: TStringField;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListBarang: TFListBarang;

implementation

{$R *.dfm}

uses UDataModule, UAddBarang, UEditBarang;

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

procedure TFListBarang.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TFEditBarang, FEditBarang);
  FEditBarang.Edit1.Text:= QBarangnama_barang.AsString;
  FEditBarang.Edit2.Text:= QBarangstok_barang.AsString;
  FEditBarang.Edit3.Text:= QBarangharga_barang.AsString;
  FEditBarang.Label5.Caption:= QBarangid.AsString;
  FEditBarang.ShowModal;
  FEditBarang.Free;
end;

procedure TFListBarang.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(TFAddBarang, FAddBarang);
  FAddBarang.ShowModal;
  FAddBarang.Free;
end;

end.
