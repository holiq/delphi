unit UMinMax;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
  const A: array[0..6] of Integer=(77, 9, 89, 33, 5, 99, 21);
  var i, posisimax, posisimin: Byte;
      Jumlah, Maks, Min: Integer;
begin
    Maks:= A[0];
    Min:= A[0];
    posisimax:= 0;
    posisimin:= 0;

    for i := 2 to 6 do
    begin
      if A[i] > Maks then
      begin
        Maks:= A[i];
        posisimax:= i;
      end;
      if A[i] < Min then
      begin
        Min:= A[i];
        posisimin:= i;
      end;
    end;

    Memo1.Clear;
    Memo1.Lines.Add('Maksimal = '+IntToStr(Maks));
    Memo1.Lines.Add('Posisi Maks = '+IntToStr(posisimax));
    Memo1.Lines.Add('Minimal = '+IntToStr(Min));
    Memo1.Lines.Add('Posisi Min = '+IntToStr(posisimin));
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
  const B: array[0..8] of Integer=(99, 22, 75, 8, 91, 32, 76, 45, 29);
  var i, posisimax, posisimin: Byte;
      Jumlah, Maks, Min: Integer;
begin
    Maks:= B[0];
    Min:= B[0];
    posisimax:= 0;
    posisimin:= 0;

    for i := 2 to 8 do
    begin
      if B[i] > Maks then
      begin
        Maks:= B[i];
        posisimax:= i;
      end;
      if B[i] < Min then
      begin
        Min:= B[i];
        posisimin:= i;
      end;
    end;

    Memo1.Clear;
    Memo1.Lines.Add('Maksimal = '+IntToStr(Maks));
    Memo1.Lines.Add('Posisi Maks = '+IntToStr(posisimax));
    Memo1.Lines.Add('Minimal = '+IntToStr(Min));
    Memo1.Lines.Add('Posisi Min = '+IntToStr(posisimin));
end;

end.
