unit UCashboard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormDashboard = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDashboard: TFormDashboard;

implementation

{$R *.dfm}

uses Ucart;

procedure TFormDashboard.BitBtn1Click(Sender: TObject);
begin
  FormCart.Show;
  FormDashboard.Hide;
end;

procedure TFormDashboard.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
