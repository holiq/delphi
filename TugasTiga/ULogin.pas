unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  System.UITypes;

type
  TFormLogin = class(TForm)
    Login: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UDataModule, UFunction, UMainMenu;

procedure TFormLogin.BitBtn1Click(Sender: TObject);
var
  I: Integer;

begin
  if Edit1.Text = '' then
    ValidateMsg := 'username'
  else if Edit2.Text = '' then
    ValidateMsg := 'password'
  else
    ValidateMsg := '';

  if ValidateMsg <> '' then
  begin
    Validation(ValidateMsg);
    Exit;
  end;

  username := Trim(Edit1.Text);
  password := getmd5(Edit2.Text);

  with DataModule1.QTemp do
  begin
    SQL.Clear;
    SQL.Add('select * from users where username=' + QuotedStr(username));
    SQL.Add('and password=' + QuotedStr(password));
    Open;
  end;

  if DataModule1.QTemp.RecordCount > 0 then
  begin;
    for I := 0 to FMainMenu.MainMenu1.Items.Count - 1 do
      begin
        FMainMenu.MainMenu1.Items[I].Visible := true;
      end;
    FormLogin.Close;
  end
  else
  begin
    MessageDlg('Username/Password Salah', TMsgDlgType.mtWarning,
      [TMsgDlgBtn.mbOK], 0);
    Edit1.Clear;
    Edit2.Clear;
    Edit1.SetFocus;
  end;
end;

procedure TFormLogin.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
