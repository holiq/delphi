unit UAritFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    function HitungAritmatika (A1,A2, Operator :String): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  A1,A2: string;
  Ar:String;

implementation

{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Edit3.Text:= HitungAritmatika(Edit1.Text, Edit2.Text, '-');
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Edit3.Text:= HitungAritmatika(Edit1.Text, Edit2.Text, '*');
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  Edit3.Text:= HitungAritmatika(Edit1.Text, Edit2.Text, '/');
end;

Function Tform1.HitungAritmatika (A1,A2, Operator :String): string;
begin
  if Operator='+' then
  result:=FloatToStr(StrToIntDef(A1, 0)+StrToIntDef(A2, 0))
  else
  if Operator='-' then
  result:=FloatToStr(StrToIntDef(A1, 0)-StrToIntDef(A2, 0))
  else
  if Operator='*' then
  result:=FloatToStr(StrToIntDef(A1, 0)*StrToIntDef(A2, 0))
  else
  if Operator='/' then
  result:=FloatToStr(StrToIntDef(A1, 0)/StrToIntDef(A2, 0))
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Edit3.Text:= HitungAritmatika(Edit1.Text, Edit2.Text, '+');
end;

end.
