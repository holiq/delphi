unit UMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFormMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Exit1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainMenu: TFormMainMenu;

implementation

{$R *.dfm}

uses ULogin;

procedure TFormMainMenu.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMainMenu.FormShow(Sender: TObject);
begin
  Application.CreateForm(TFormLogin, FormLogin);
  FormLogin.Show;
end;

end.
