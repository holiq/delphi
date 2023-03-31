unit UBigNumber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  System.StrUtils;

type
  TFormBigNumber = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ListBox1: TListBox;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure getBiggestNumber(Numbers: string);
    function getBiggerNumber(number1, number2: string): string;
  public
    { Public declarations }
  end;

var
  FormBigNumber: TFormBigNumber;
  numbers: string;
  splitNumbers: TArray<string>;
  i, max: Integer;

implementation

{$R *.dfm}

procedure TFormBigNumber.BitBtn1Click(Sender: TObject);
begin
  getBiggestNumber(Edit1.Text);
end;

procedure TFormBigNumber.BitBtn2Click(Sender: TObject);
begin
  ListBox1.Clear;
  ListBox1.Items.Add('Angka terbesar diantara '+
    Edit2.Text +' dan '+ Edit3.Text +' adalah '+
    getBiggerNumber(Edit2.Text, Edit3.Text)
  );
end;

procedure TFormBigNumber.getBiggestNumber(numbers: string);
begin
  splitNumbers:= numbers.Split([' ']);

  max:= StrToInt(splitNumbers[0]);
  for i := 1 to Length(splitNumbers) - 1 do
  begin
    if StrToInt(splitNumbers[i]) > max then
      max:= StrToInt(splitNumbers[i]);
  end;

  ListBox1.Clear;
  ListBox1.Items.Add('Angka terbersar diantara ['+numbers+'] adalah '+IntToStr(max));
end;

function TFormBigNumber.getBiggerNumber(number1: string; number2: string): string;
begin
  if StrToInt(number1) > StrToInt(number2) then
  begin
    result:= number1;
  end
  else
  begin
    result:= number2;
  end;
end;

end.
