program Ecommerce;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FormLogin},
  UDashboard in 'UDashboard.pas' {Form2},
  UCart in 'UCart.pas' {Form3},
  UCheckout in 'UCheckout.pas' {Form4},
  UOrder in 'UOrder.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
