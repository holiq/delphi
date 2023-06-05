unit UMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    Barang1: TMenuItem;
    Pelanggan1: TMenuItem;
    Suppplier1: TMenuItem;
    Exit1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Barang1Click(Sender: TObject);
    procedure Pelanggan1Click(Sender: TObject);
    procedure Suppplier1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainMenu: TFMainMenu;

implementation

{$R *.dfm}

uses ULogin, UListBarang, UListPelanggan, UListSupplier;

procedure TFMainMenu.Barang1Click(Sender: TObject);
begin
  Application.CreateForm(TFListBarang, FListBarang);
  FListBarang.ShowModal;
  FListBarang.Free;
end;

procedure TFMainMenu.Pelanggan1Click(Sender: TObject);
begin
  Application.CreateForm(TFListPelanggan, FListPelanggan);
  FListPelanggan.ShowModal;
  FListPelanggan.Free;
end;

procedure TFMainMenu.Suppplier1Click(Sender: TObject);
begin
  Application.CreateForm(TFListSupplier, FListSupplier);
  FListSupplier.Show;
end;

procedure TFMainMenu.FormShow(Sender: TObject);
begin
  Application.CreateForm(TFormLogin, FormLogin);
  FormLogin.Show;
end;

procedure TFMainMenu.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
