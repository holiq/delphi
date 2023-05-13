unit UMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFormMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    procedure File2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure File1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainMenu: TFormMainMenu;

implementation

{$R *.dfm}

uses ULogin, UBarang;

procedure TFormMainMenu.File1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBarang, FormBarang);
  FormBarang.Show;
end;

procedure TFormMainMenu.File2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMainMenu.FormShow(Sender: TObject);
begin
  Application.CreateForm(TFormLogin, FormLogin);
  FormLogin.Show;
end;

end.
