unit ULooping;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormLooping = class(TForm)
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLooping: TFormLooping;

implementation

{$R *.dfm}

procedure TFormLooping.BitBtn1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 10 do
  ListBox1.Items.Add('Selamat datang!');
end;

end.
