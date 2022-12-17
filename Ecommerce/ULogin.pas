unit ULogin;

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
    BitBtn1: TBitBtn;
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
  if (Edit1.Text = 'holiq') AND (Edit2.Text = 'password') then
  begin
    Form1.Hide;
    Form2.Show;
    Form2.Label1.Caption:= 'Welcome '+Form1.Edit1.Text;
  end
  else
  begin
    ShowMessage('Invalid Username or Password')
  end;
end;

end.
