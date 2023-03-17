program ArrayTwoDimension;

uses
  Vcl.Forms,
  UArrayTD in 'UArrayTD.pas' {ArrayTD};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TArrayTD, ArrayTD);
  Application.Run;
end.
