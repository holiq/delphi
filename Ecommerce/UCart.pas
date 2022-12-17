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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  HBaju, HCelana, HBiskuit, HNanas: Currency;

implementation

{$R *.dfm}

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
  if CheckBox1.Checked then
  begin
    HBaju:= 130000*StrToCurr(Edit1.Text);
  end;
  if CheckBox2.Checked then
  begin
    HCelana:= 90000*StrToCurr(Edit2.Text);
  end;
  if CheckBox3.Checked then
  begin
    HBiskuit:= 9000*StrToCurr(Edit3.Text);
  end;
  if CheckBox4.Checked then
  begin
    HNanas:= 18000*StrToCurr(Edit4.Text);
  end;

  Edit5.Text:= Format('RP. %n', [HBaju+HCelana+HBiskuit+HNanas]);
end;

end.
