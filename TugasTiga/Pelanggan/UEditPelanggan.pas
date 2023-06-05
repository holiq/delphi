unit UEditPelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFEditPelanggan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditPelanggan: TFEditPelanggan;

implementation

{$R *.dfm}

uses UDataModule, UListPelanggan;

procedure TFEditPelanggan.BitBtn1Click(Sender: TObject);
begin
  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;;
    SQL.Text:= 'UPDATE tugas_tiga.pelanggan SET '+
      'nama='+QuotedStr(Edit1.Text)+', '+
      'alamat='+QuotedStr(Memo1.Text)+', '+
      'no_telepon='+QuotedStr(Edit2.Text)+' '+
      'WHERE pelanggan.id='+QuotedStr(Label5.Caption);
    Execute;
  end;
  FListPelanggan.BitBtn2.Click;
  FEditPelanggan.Close;
end;

end.
