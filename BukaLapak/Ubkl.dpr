program Ubkl;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {UHome},
  UCashboard in 'UCashboard.pas' {FormDashboard},
  Ucart in 'Ucart.pas' {FormCart},
  Uorder in 'Uorder.pas' {FormOrder},
  Ucheckout in 'Ucheckout.pas' {FormCheckOut};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUHome, UHome);
  Application.CreateForm(TFormDashboard, FormDashboard);
  Application.CreateForm(TFormCart, FormCart);
  Application.CreateForm(TFormOrder, FormOrder);
  Application.CreateForm(TFormCheckOut, FormCheckOut);
  Application.Run;
end.
