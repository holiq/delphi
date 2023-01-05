unit Ucheckout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormCheckOut = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Memo2: TMemo;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheckOut: TFormCheckOut;

implementation

{$R *.dfm}

uses Ucart, Uorder;

procedure TFormCheckOut.BitBtn1Click(Sender: TObject);
begin
  FormOrder.Memo1.Lines:= FormCheckOut.Memo1.Lines;
  if combobox4.ItemIndex = 0 then
  begin
    FormOrder.Memo1.Lines.Delete(FormOrder.Memo1.Lines.Count-1);
    FormOrder.Memo1.Lines.Add('Voucher: Diskon Rp. 10.000,00');
    FormOrder.Memo1.Lines.Add('Total Harga: '+Format('RP. %n', [FormCart.HTotal-10000]));
  end
  else if ComboBox4.ItemIndex = 1 then
  begin
    FormOrder.Memo1.Lines.Delete(Memo1.Lines.Count-1);
    FormOrder.Memo1.Lines.Add('Voucher: Diskon 15%');
    FormOrder.Memo1.Lines.Add('Total Harga: '+Format('RP. %n', [FormCart.HTotal-(FormCart.HTotal/100*15)]));
  end;
  FormOrder.Memo2.Clear;
  FormOrder.Memo2.Lines.Add(FormCheckOut.ComboBox1.Items[FormCheckOut.ComboBox1.ItemIndex]);
  FormOrder.Label5.Caption:= 'Metode Pembayaran: '+FormCheckOut.ComboBox2.Items[FormCheckOut.ComboBox2.ItemIndex];
  FormOrder.Label6.Caption:= 'kode pembayaran: BL22188FX22TKS';
  FormOrder.Label7.Caption:= 'Metode Pengiriman: '+FormCheckOut.ComboBox3.Items[FormCheckOut.ComboBox3.ItemIndex];
  FormOrder.Show;
  FormCheckOut.Hide;
end;

procedure TFormCheckOut.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormCheckOut.BitBtn3Click(Sender: TObject);
begin
  ComboBox1.Items.Add(Memo2.Lines.GetText);
  Memo2.clear;
end;

end.
