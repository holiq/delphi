program ArrayDate;

uses
  Vcl.Forms,
  UArrayDate in 'UArrayDate.pas' {FormArrayDate};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormArrayDate, FormArrayDate);
  Application.Run;
end.
