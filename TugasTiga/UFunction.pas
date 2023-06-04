unit UFunction;

interface
  uses SysUtils,Variants,Forms,Windows,Controls, StdCtrls, ComCtrls,
    Messages,Classes,Dialogs,Graphics, IdHashMessageDigest, idHash,
    DateUtils, UDataModule;

function getmd5(SourceString: string): string;

var
  username,	password: string;

implementation

(* function read html5*)
function getmd5(SourceString: string): string;
  var
    md5: TIdHashMessageDigest5;
begin
  result := '';
  md5 := TIdHashMessageDigest5.Create;
  try
    result := AnsiLowerCase(md5.HashStringAsHex(SourceString));
  finally
    FreeAndNil(md5);
  end;
end;
end.

