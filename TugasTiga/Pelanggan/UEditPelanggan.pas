unit UEditPelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFEditPelanggan = class(TForm)
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditPelanggan: TFEditPelanggan;

implementation

{$R *.dfm}

uses UDataModule, UListPelanggan, UFunction;

procedure TFEditPelanggan.BitBtn1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    ValidateMsg := 'kode pelanggan'
  else if Edit2.Text = '' then
    ValidateMsg := 'nama pelanggan'
  else if Edit3.Text = '' then
    ValidateMsg := 'no telepon pelanggan'
  else
    ValidateMsg := '';

  if ValidateMsg <> '' then
  begin
    Validation(ValidateMsg);
    Exit;
  end;

  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;;
    SQL.Text := 'UPDATE tugas_tiga.pelanggan SET ' + 'kode_pelanggan=' +
      QuotedStr(Edit1.Text) + ', ' + 'nama=' + QuotedStr(Edit2.Text) + ', ' +
      'alamat=' + QuotedStr(Memo1.Text) + ', ' + 'no_telepon=' +
      QuotedStr(Edit3.Text) + ' ' + 'WHERE pelanggan.id=' +
      QuotedStr(Label5.Caption);
    Execute;
  end;
  FListPelanggan.BitBtn2.Click;
  FEditPelanggan.Close;
end;

procedure TFEditPelanggan.BitBtn2Click(Sender: TObject);
begin
  FEditPelanggan.Close;
end;

end.
