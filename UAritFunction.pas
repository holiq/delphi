unit UAritFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormAritFunction = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    function HitungAritmatika (A1,A2, Operator :String): string;
  public
    { Public declarations }
  end;

var
  FormAritFunction: TFormAritFunction;
  A1,A2: string;
  Ar:String;

implementation

{$R *.dfm}

function TFormAritFunction.HitungAritmatika (A1,A2, Operator :String): string;
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

procedure TFormAritFunction.Button1Click(Sender: TObject);
begin
  Edit3.Text:= HitungAritmatika(Edit1.Text, Edit2.Text, '+');
end;

procedure TFormAritFunction.Button2Click(Sender: TObject);
begin
  Edit3.Text:= HitungAritmatika(Edit1.Text, Edit2.Text, '-');
end;

procedure TFormAritFunction.Button3Click(Sender: TObject);
begin
  Edit3.Text:= HitungAritmatika(Edit1.Text, Edit2.Text, '*');
end;

procedure TFormAritFunction.Button4Click(Sender: TObject);
begin
  Edit3.Text:= HitungAritmatika(Edit1.Text, Edit2.Text, '/');
end;

end.
