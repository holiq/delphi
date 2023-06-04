unit UAddBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFAddBarang = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddBarang: TFAddBarang;

implementation

{$R *.dfm}

uses UDataModule, UListBarang;

procedure TFAddBarang.BitBtn1Click(Sender: TObject);
begin
  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text:= 'INSERT INTO tugas_tiga.barang '+
    '(nama_barang, stok_barang, harga_barang) VALUES ('+
      QuotedStr(Edit1.Text)+','+QuotedStr(Edit2.Text)+','+QuotedStr(Edit3.Text)+
    ')';
    Execute;
  end;
  FListBarang.BitBtn2.Click;
  FAddBarang.Close;
end;

end.
