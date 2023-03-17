unit UArrayTD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Samples.Spin;

type
  TArrayTD = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ArrayTD: TArrayTD;

implementation

{$R *.dfm}

procedure TArrayTD.BitBtn1Click(Sender: TObject);
var
  Data: array of array of integer;
  Baris, Kolom: Word;
begin
  SetLength(
    Data,
    StrToInt(SpinEdit1.Text),
    StrToInt(SpinEdit2.Text)
  );

  for Baris := 0 to StrToInt(SpinEdit1.Text)-1 do
  for Kolom := 0 to StrToInt(SpinEdit2.Text)-1 do
  Data[Baris, Kolom]:= Baris+Kolom;

  ListBox1.Clear;

  for Baris := 0 to StrToInt(SpinEdit1.Text)-1 do
  for Kolom := 0 to StrToInt(SpinEdit2.Text)-1 do

  ListBox1.Items.Add(
    '['+IntToStr(Baris)+','+
    IntToStr(Kolom)+'] = '+
    IntToStr(Data[Baris, Kolom])
  );
end;

end.
