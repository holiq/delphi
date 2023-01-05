unit UAritProcedure;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormAritProcedure = class(TForm)
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
    procedure HitungAritmatika (A1,A2, Operator :String);
  public
    { Public declarations }
  end;

var
  FormAritProcedure: TFormAritProcedure;
  A1,A2: string;
  Ar:String;

implementation

{$R *.dfm}

procedure TFormAritProcedure.HitungAritmatika (A1,A2, Operator :String);
begin
  if Operator='+' then
  Edit3.Text:=FloatToStr(StrToIntDef(A1, 0)+StrToIntDef(A2, 0))
  else
  if Operator='-' then
  Edit3.Text:=FloatToStr(StrToIntDef(A1, 0)-StrToIntDef(A2, 0))
  else
  if Operator='*' then
  Edit3.Text:=FloatToStr(StrToIntDef(A1, 0)*StrToIntDef(A2, 0))
  else
  if Operator='/' then
  Edit3.Text:=FloatToStr(StrToIntDef(A1, 0)/StrToIntDef(A2, 0))
end;

procedure TFormAritProcedure.Button1Click(Sender: TObject);
begin
  HitungAritmatika(Edit1.Text, Edit2.Text, '+');
end;

procedure TFormAritProcedure.Button2Click(Sender: TObject);
begin
  HitungAritmatika(Edit1.Text, Edit2.Text, '-');
end;

procedure TFormAritProcedure.Button3Click(Sender: TObject);
begin
  HitungAritmatika(Edit1.Text, Edit2.Text, '*');
end;

procedure TFormAritProcedure.Button4Click(Sender: TObject);
begin
  HitungAritmatika(Edit1.Text, Edit2.Text, '/');
end;

end.
