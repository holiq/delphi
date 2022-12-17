program Ecommerce;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {Form1},
  UDashboard in 'UDashboard.pas' {Form2},
  UCart in 'UCart.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
