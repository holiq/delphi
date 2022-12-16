unit UAuth;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDashboard;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if (Edit1.Text = 'Admin') and (Edit2.Text = 'Admin') then
  begin
    Form1.Hide;
    Form2.Show;
    Form2.Label1.Caption:= 'Current User is '+ Form1.Edit1.Text;
  end
  else
  begin
    ShowMessage('Invalid Username or Password');
    Edit1.Clear;
    Edit2.Clear;
  end;

end;

end.
