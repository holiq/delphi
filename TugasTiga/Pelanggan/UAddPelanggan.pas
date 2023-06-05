unit UAddPelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFAddPelanggan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddPelanggan: TFAddPelanggan;

implementation

{$R *.dfm}

uses UDataModule, UListPelanggan;

procedure TFAddPelanggan.BitBtn1Click(Sender: TObject);
begin
  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text:= 'INSERT INTO tugas_tiga.pelanggan '+
    '(nama, alamat, no_telepon) VALUES ('+
      QuotedStr(Edit1.Text)+','+QuotedStr(Memo1.Text)+','+
      QuotedStr(Edit2.Text)+
    ')';
    Execute;
  end;
  FListPelanggan.BitBtn2.Click;
  FAddPelanggan.Close;
end;

end.
