unit UEditBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFEditBarang = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditBarang: TFEditBarang;

implementation

{$R *.dfm}

uses UListBarang, UDataModule;

procedure TFEditBarang.BitBtn1Click(Sender: TObject);
begin
  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;;
    SQL.Text:= 'UPDATE tugas_tiga.barang SET '+
      'nama_barang='+QuotedStr(Edit1.Text)+', '+
      'stok_barang='+QuotedStr(Edit2.Text)+', '+
      'harga_barang='+QuotedStr(Edit3.Text)+' '+
      'WHERE barang.id='+QuotedStr(Label5.Caption);
    Execute;
  end;
  FListBarang.BitBtn2.Click;
  FEditBarang.Close;
end;

end.
