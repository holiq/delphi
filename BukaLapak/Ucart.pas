unit Ucart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormCart = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label5: TLabel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    var
      HAbon,HTv, HKopi, HEarphone, HTotal: Currency;
    { Public declarations }
  end;

var
  FormCart: TFormCart;

implementation

{$R *.dfm}

uses Ucheckout;

procedure TFormCart.BitBtn10Click(Sender: TObject);
begin
  FormCheckOut.Memo2.Clear;
  FormCheckOut.Show;
  FormCart.Hide;
end;

procedure TFormCart.BitBtn11Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormCart.BitBtn1Click(Sender: TObject);
begin
  Edit1.Text:= IntToStr(StrToInt(Edit1.Text)+1);
end;

procedure TFormCart.BitBtn2Click(Sender: TObject);
begin
  Edit3.Text:= IntToStr(StrToInt(Edit3.Text)+1);
end;

procedure TFormCart.BitBtn3Click(Sender: TObject);
begin
  Edit4.Text:= IntToStr(StrToInt(Edit4.Text)+1);
end;

procedure TFormCart.BitBtn4Click(Sender: TObject);
begin
  Edit5.Text:= IntToStr(StrToInt(Edit5.Text)+1);
end;

procedure TFormCart.BitBtn5Click(Sender: TObject);
begin
  if StrToInt(Edit1.Text) > 1 then
  begin
    Edit1.Text:= IntToStr(StrToInt(Edit1.Text)-1);
  end;
end;

procedure TFormCart.BitBtn6Click(Sender: TObject);
begin
  if StrToInt(Edit3.Text) > 1 then
  begin
    Edit3.Text:= IntToStr(StrToInt(Edit3.Text)-1);
  end;
end;

procedure TFormCart.BitBtn7Click(Sender: TObject);
begin
  if StrToInt(Edit4.Text) > 1 then
  begin
    Edit4.Text:= IntToStr(StrToInt(Edit4.Text)-1);
  end;
end;

procedure TFormCart.BitBtn8Click(Sender: TObject);
begin
  if StrToInt(Edit5.Text) > 1 then
  begin
    Edit5.Text:= IntToStr(StrToInt(Edit5.Text)-1);
  end;
end;

procedure TFormCart.BitBtn9Click(Sender: TObject);
begin
   FormCheckOut.Memo1.Clear;
  if CheckBox1.Checked then
  begin
    HAbon:= 130000*StrToCurr(Edit1.Text);
    FormCheckOut.Memo1.Lines.Add('Abon Sapi 1kg: Rp. 130.000,00 x '+Edit1.Text+' = '+Format('RP. %n', [HAbon]));
  end;
  if CheckBox2.Checked then
  begin
    HKopi:= 90000*StrToCurr(Edit3.Text);
    FormCheckOut.Memo1.Lines.Add('Kopi Hitam 1kg: Rp. 90.000,00 x '+Edit2.Text+' = '+Format('RP. %n', [HKopi]));
  end;
  if CheckBox3.Checked then
  begin
    HTv:= 9000000*StrToCurr(Edit4.Text);
    FormCheckOut.Memo1.Lines.Add('TV 50inch: Rp. 9.000.000,00 x '+Edit3.Text+' = '+Format('RP. %n', [HTv]));
  end;
  if CheckBox4.Checked then
  begin
    HEarphone:= 18000*StrToCurr(Edit5.Text);
    FormCheckOut.Memo1.Lines.Add('EarPhone: Rp. 18.000,00 x '+Edit4.Text+' = '+Format('RP. %n', [HEarphone]));
  end;

  HTotal:= HAbon+HKopi+HTv+HEarphone;
  FormCheckOut.Memo1.Lines.Add('Total Harga: '+Format('RP. %n', [HTotal]));
  Edit2.Text:= Format('RP. %n', [HTotal]);
end;

end.
