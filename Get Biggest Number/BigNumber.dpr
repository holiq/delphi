program BigNumber;

uses
  Vcl.Forms,
  UBigNumber in 'UBigNumber.pas' {FormBigNumber};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormBigNumber, FormBigNumber);
  Application.Run;
end.
