unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TUHome = class(TForm)
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
  UHome: TUHome;

implementation

{$R *.dfm}

uses UCashboard;

procedure TUHome.BitBtn1Click(Sender: TObject);
begin
  if (Edit1.Text= '081213141516') AND (Edit2.Text= 'password') then
  begin
    UHome.Hide;
    FormDashboard.Show;
    FormDashboard.Label1.Caption:= 'Selamat datang kembali!';
  end
  else
  begin
    ShowMessage('Nomor HP atau Password salah!');
  end;
end;

end.
