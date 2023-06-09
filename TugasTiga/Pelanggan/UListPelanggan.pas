unit UListPelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFListPelanggan = class(TForm)
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
    QPelanggan: TFDQuery;
    DataSource1: TDataSource;
    QPelangganid: TIntegerField;
    QPelanggannama: TStringField;
    QPelangganalamat: TMemoField;
    QPelangganno_telepon: TStringField;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListPelanggan: TFListPelanggan;

implementation

{$R *.dfm}

uses UAddPelanggan, UDataModule, UEditPelanggan;

procedure TFListPelanggan.BitBtn1Click(Sender: TObject);
begin
  FListPelanggan.Close;
end;

procedure TFListPelanggan.BitBtn2Click(Sender: TObject);
begin
  if QPelanggan.Active then
    QPelanggan.Refresh
  else
    QPelanggan.Open;
end;

procedure TFListPelanggan.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('Apakah yakin menghapus data tersebut?',
  'konfirmasi', MB_YESNO or MB_ICONINFORMATION) = idyes then
  begin
  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text:= 'DELETE FROM tugas_tiga.pelanggan '+
      'WHERE pelanggan.id='+QuotedStr(IntToStr(QPelangganid.AsInteger));
    Execute;
  end;
  BitBtn2.Click;
  end;
end;

procedure TFListPelanggan.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TFEditPelanggan, FEditPelanggan);
  FEditPelanggan.Edit1.Text:= QPelanggannama.AsString;
  FEditPelanggan.Memo1.Text:= QPelangganalamat.AsString;
  FEditPelanggan.Edit2.Text:= QPelangganno_telepon.AsString;
  FEditPelanggan.Label5.Caption:= QPelangganid.AsString;
  FEditPelanggan.ShowModal;
  FEditPelanggan.Free;
end;

procedure TFListPelanggan.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(TFAddPelanggan, FAddPelanggan);
  FAddPelanggan.Memo1.Clear;
  FAddPelanggan.ShowModal;
  FAddPelanggan.Free;
end;

end.
