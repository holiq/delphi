unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UDashboard;

procedure TFormLogin.BitBtn1Click(Sender: TObject);
begin
  if (Edit1.Text = '081213141516') AND (Edit2.Text = 'password') then
  begin
    FormLogin.Hide;
    Form2.Show;
    Form2.Label1.Caption:= 'Selamat datang kembali Holiq';
  end
  else
  begin
    ShowMessage('Invalid Username or Password')
  end;
end;

end.
