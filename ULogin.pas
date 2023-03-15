unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UniProvider, MySQLUniProvider, Data.DB, DBAccess,
  Uni, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;
  username, password: string;

implementation

{$R *.dfm}

uses UMainMenu, UFunctionLogin, UDataModule;

procedure TFormLogin.BitBtn1Click(Sender: TObject);
begin
  username:= Trim(Edit1.Text);
  password:= getmd5(Edit2.Text);

  with DataModule2.QTemp do
  begin
    SQL.Clear;
    SQL.Add('select * from tuser where user='+QuotedStr(username));
    SQL.Add('and password='+QuotedStr(password));
    Open;
  end;

  if DataModule2.QTemp.RecordCount > 0 then
  begin
    HakAkses:= DataModule2.QTemp.FieldByName('hak_akses').AsString;
    PIC:= DataModule2.QTemp.FieldByName('user').AsString;
    UserId:= DataModule2.QTemp.FieldByName('id').AsString;
    FormMainMenu.Show;
    FormLogin.Close;
  end
  else
  begin
    MessageDlg('User/Password Salah', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0);
    Edit1.Clear;
    Edit2.Clear;
    Edit1.SetFocus;
  end;
end;

end.
