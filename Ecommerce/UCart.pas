unit UCart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Edit3: TEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Edit4: TEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Edit5: TEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      HBaju, HCelana, HBiskuit, HNanas, HTotal: Currency;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses UCheckout;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  if StrToInt(Edit1.Text) > 1 then
  begin
    Edit1.Text:= IntToStr(StrToInt(Edit1.Text)-1);
  end;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  Edit1.Text:= IntToStr(StrToInt(Edit1.Text)+1);
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
  if StrToInt(Edit2.Text) > 1 then
  begin
    Edit2.Text:= IntToStr(StrToInt(Edit2.Text)-1);
  end;
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
  Edit2.Text:= IntToStr(StrToInt(Edit2.Text)+1);
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
begin
  if StrToInt(Edit3.Text) > 1 then
  begin
    Edit3.Text:= IntToStr(StrToInt(Edit3.Text)-1);
  end;
end;

procedure TForm3.BitBtn6Click(Sender: TObject);
begin
  Edit3.Text:= IntToStr(StrToInt(Edit3.Text)+1);
end;

procedure TForm3.BitBtn7Click(Sender: TObject);
begin
  if StrToInt(Edit4.Text) > 1 then
  begin
    Edit4.Text:= IntToStr(StrToInt(Edit4.Text)-1);
  end;
end;

procedure TForm3.BitBtn8Click(Sender: TObject);
begin
  Edit4.Text:= IntToStr(StrToInt(Edit4.Text)+1);
end;

procedure TForm3.BitBtn9Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm3.BitBtn10Click(Sender: TObject);
begin
  Form4.Memo1.Clear;
  if CheckBox1.Checked then
  begin
    HBaju:= 130000*StrToCurr(Edit1.Text);
    Form4.Memo1.Lines.Add('Abon Sapi 1kg: Rp. 130.000,00 x '+Edit1.Text+' = '+Format('RP. %n', [HBaju]));
  end;
  if CheckBox2.Checked then
  begin
    HCelana:= 90000*StrToCurr(Edit2.Text);
    Form4.Memo1.Lines.Add('Kopi Hitam 1kg: Rp. 90.000,00 x '+Edit2.Text+' = '+Format('RP. %n', [HCelana]));
  end;
  if CheckBox3.Checked then
  begin
    HBiskuit:= 9000000*StrToCurr(Edit3.Text);
    Form4.Memo1.Lines.Add('TV 50inch: Rp. 9.000.000,00 x '+Edit3.Text+' = '+Format('RP. %n', [HBiskuit]));
  end;
  if CheckBox4.Checked then
  begin
    HNanas:= 18000*StrToCurr(Edit4.Text);
    Form4.Memo1.Lines.Add('EarPhone: Rp. 18.000,00 x '+Edit4.Text+' = '+Format('RP. %n', [HNanas]));
  end;

  HTotal:= HBaju+HCelana+HBiskuit+HNanas;
  Form4.Memo1.Lines.Add('Total Harga: '+Format('RP. %n', [HTotal]));
  Edit5.Text:= Format('RP. %n', [HTotal]);
end;

procedure TForm3.BitBtn11Click(Sender: TObject);
begin
  Form4.Memo2.Clear;
  Form4.Show;
  form3.Hide;
end;

end.
