unit UMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    procedure File2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses ULogin;

procedure TForm2.File2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  Application.CreateForm(TFormLogin, FormLogin);
  FormLogin.Show;
end;

end.
