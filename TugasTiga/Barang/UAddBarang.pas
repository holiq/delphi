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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
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
  FAddBarang: TFAddBarang;

implementation

{$R *.dfm}

uses UDataModule, UListBarang, UFunction;

procedure TFAddBarang.BitBtn1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    isActive:= 1
  else
    isActive:= 0;

  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text:= 'INSERT INTO tugas_tiga.barang '+
    '(kode_barang, nama_barang, deskripsi, satuan, stok_awal, stok_minimal,	harga_barang,	is_active) VALUES ('+
      QuotedStr(Edit1.Text)+','+QuotedStr(Edit2.Text)+','+QuotedStr(Edit3.Text)+','+QuotedStr(ComboBox1.Text)+','+QuotedStr(Edit4.Text)+','+QuotedStr(Edit5.Text)+','+QuotedStr(Edit6.Text)+','+IntToStr(isActive)+
    ')';
    Execute;
  end;
  FListBarang.BitBtn2.Click;
  FAddBarang.Close;
end;

procedure TFAddBarang.BitBtn2Click(Sender: TObject);
begin
  FAddBarang.Close;
end;

end.
