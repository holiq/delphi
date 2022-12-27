unit UCheckout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Memo2: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses UOrder, UCart;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  Form5.Memo1.Lines:= Form4.Memo1.Lines;
  if combobox3.ItemIndex = 0 then
  begin
    Form5.Memo1.Lines.Delete(Form5.Memo1.Lines.Count-1);
    Form5.Memo1.Lines.Add('Voucher: Diskon Rp. 10.000,00');
    Form5.Memo1.Lines.Add('Total Harga: '+Format('RP. %n', [Form3.HTotal-10000]));
  end
  else if ComboBox3.ItemIndex = 1 then
  begin
    Form5.Memo1.Lines.Delete(Memo1.Lines.Count-1);
    Form5.Memo1.Lines.Add('Voucher: Diskon 15%');
    Form5.Memo1.Lines.Add('Total Harga: '+Format('RP. %n', [Form3.HTotal-(Form3.HTotal/100*15)]));
  end;
  Form5.Memo2.Clear;
  Form5.Memo2.Lines.Add(Form4.ComboBox4.Items[Form4.ComboBox4.ItemIndex]);
  Form5.Label3.Caption:= 'Metode Pembayaran: '+Form4.ComboBox1.Items[Form4.ComboBox1.ItemIndex];
  Form5.Label7.Caption:= 'kode pembayaran: BL22188FX22TKS';
  Form5.Label4.Caption:= 'Metode Pengiriman: '+Form4.ComboBox2.Items[Form4.ComboBox2.ItemIndex];
  Form5.Show;
  Form4.Hide;
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
  ComboBox4.Items.Add(Memo2.Lines.GetText);
  Memo2.Clear;
end;

procedure TForm4.ComboBox3Change(Sender: TObject);
begin
//  if combobox3.ItemIndex = 0 then
//  begin
//    Memo1.Lines.Delete(Memo1.Lines.Count-1);
//    Memo1.Lines.Add('Voucher: Diskon Rp. 10.000,00');
//    Memo1.Lines.Add('Total Harga: '+Format('RP. %n', [])
//  end;
end;

end.
