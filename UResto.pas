unit UResto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    RadioButton1: TRadioButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RadioButton2: TRadioButton;
    Edit2: TEdit;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    Label10: TLabel;
    Edit4: TEdit;
    Label11: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label12: TLabel;
    Edit5: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label13: TLabel;
    Edit6: TEdit;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Label14: TLabel;
    Edit7: TEdit;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MenuPadang, MenuBetawi: TArray<string>;
  Harga, HargaTeh, HargaJeruk, HargaAir,
  TotalTeh, TotalJeruk, TotalAir,
  HargaPorsi, TotalHarga: Currency;

implementation

{$R *.dfm}

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  ComboBox1.Clear;
  MenuPadang:= ['Kepala Kakap','Rendang','Sate Padang'];
  ComboBox1.Items.AddStrings(MenuPadang);
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  ComboBox1.Clear;
  MenuBetawi:= ['Kerak Telor','Soto Betawi','Nasi Ulam'];
  ComboBox1.Items.AddStrings(MenuBetawi);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Edit3.Text:= CurrToStr(StrToCurr(Edit3.Text)+1);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  if StrToInt(Edit3.Text) > 1 then
  begin
    Edit3.Text:= CurrToStr(StrToCurr(Edit3.Text)-1);
  end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  Edit5.Text:= CurrToStr(StrToCurr(Edit5.Text)+1);
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  if StrToInt(Edit5.Text) > 1 then
  begin
    Edit5.Text:= CurrToStr(StrToCurr(Edit5.Text)-1);
  end;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  Edit6.Text:= CurrToStr(StrToCurr(Edit6.Text)+1);
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  if StrToInt(Edit6.Text) > 1 then
  begin
    Edit6.Text:= CurrToStr(StrToCurr(Edit6.Text)-1);
  end;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  Edit7.Text:= CurrToStr(StrToCurr(Edit7.Text)+1);
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  if StrToInt(Edit7.Text) > 1 then
  begin
    Edit7.Text:= CurrToStr(StrToCurr(Edit7.Text)-1);
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    Edit5.Text:= IntToStr(1);
  end
  else
  begin
    Edit5.Text:= IntToStr(0);
  end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
  begin
    Edit6.Text:= IntToStr(1);
  end
  else
  begin
    Edit6.Text:= IntToStr(0);
  end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked then
  begin
    Edit7.Text:= IntToStr(1);
  end
  else
  begin
    Edit7.Text:= IntToStr(0);
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then
  begin
    if RadioButton1.Checked = true then
    begin
      Harga:= 50000;
    end
    else if RadioButton2.Checked = true then
    begin
      Harga:= 40000;
    end;
  end
  else if ComboBox1.ItemIndex = 1 then
  begin
    if RadioButton1.Checked = true then
    begin
      Harga:= 20000;
    end
    else if RadioButton2.Checked = true then
    begin
      Harga:= 20000;
    end;
  end
  else if ComboBox1.ItemIndex = 2 then
  begin
    if RadioButton1.Checked = true then
    begin
      Harga:= 25000;
    end
    else if RadioButton2.Checked = true then
    begin
      Harga:= 25000;
    end;
  end;

  Edit1.Text:= Format('Rp. %n', [Harga]);
  Edit3.Text:= IntToStr(1);
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  HargaPorsi:= Harga*StrToCurr(Edit3.Text);
  Edit4.Text:= Format('Rp. %n', [HargaPorsi]);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    HargaTeh:= 3000*StrToCurr(Edit5.Text);
  end;

  if CheckBox2.Checked then
  begin
    HargaJeruk:= 3000*StrToCurr(Edit6.Text);
  end;

  if CheckBox3.Checked then
  begin
    HargaAir:= 1000*StrToCurr(Edit7.Text);
  end;

  TotalHarga:= HargaPorsi+HargaJeruk+HargaTeh+HargaAir;

  Edit2.Text:= Format('Rp. %n', [TotalHarga]);
end;

end.
