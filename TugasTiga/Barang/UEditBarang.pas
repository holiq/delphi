unit UEditBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFEditBarang = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditBarang: TFEditBarang;

implementation

{$R *.dfm}

uses UListBarang, UDataModule, UFunction;

procedure TFEditBarang.BitBtn1Click(Sender: TObject);
begin
  if Edit2.Text = '' then
    ValidateMsg := 'nama barang'
  else if Edit3.Text = '' then
    ValidateMsg := 'deskripsi'
  else if Edit3.Text = '' then
    ValidateMsg := 'stok awal'
  else if Edit3.Text = '' then
    ValidateMsg := 'harga minimal'
  else if Edit3.Text = '' then
    ValidateMsg := 'harga barang'
  else
    ValidateMsg := '';

  if ValidateMsg <> '' then
  begin
    Validation(ValidateMsg);
    Exit;
  end;

  if CheckBox1.Checked then
    isActive := 1
  else
    isActive := 0;

  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;;
    SQL.Text := 'UPDATE tugas_tiga.barang SET ' + 'kode_barang=' +
      QuotedStr(Edit1.Text) + ', ' + 'nama_barang=' + QuotedStr(Edit2.Text) +
      ', ' + 'deskripsi=' + QuotedStr(Edit3.Text) + ', ' + 'satuan=' +
      QuotedStr(ComboBox1.Text) + ', ' + 'stok_awal=' + QuotedStr(Edit4.Text) +
      ', ' + 'stok_minimal=' + QuotedStr(Edit5.Text) + ', ' + 'harga_barang=' +
      QuotedStr(Edit6.Text) + ', ' + 'is_active=' + IntToStr(isActive) + ' ' +
      'WHERE barang.id=' + QuotedStr(Label5.Caption);
    Execute;
  end;
  FListBarang.BitBtn2.Click;
  FEditBarang.Close;
end;

procedure TFEditBarang.BitBtn2Click(Sender: TObject);
begin
  FEditBarang.Close;
end;

end.
