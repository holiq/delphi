program Auth;

uses
  Vcl.Forms,
  UAuth in 'UAuth.pas' {Form1},
  UDashboard in 'UDashboard.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
