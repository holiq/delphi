unit UFunction;

interface
  uses SysUtils,Variants,Forms,Windows,Controls, StdCtrls, ComCtrls,
    Messages,Classes,Dialogs,Graphics, IdHashMessageDigest, idHash,
    DateUtils, UDataModule;

function getmd5(SourceString: string): string;
function AutoCode(Column, TableName, Prefix: string): string;

var
  username,	password, kode: string;
  sort, isActive: Integer;

implementation

function AutoCode(Column, TableName, Prefix: string): string;
begin
  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='select '+Column+' from '+TableName+' ';
    Open;
  end;

  if DataModule1.QTemp.RecordCount = 0 then sort :=1 else
  if DataModule1.QTemp.RecordCount > 0 then
  begin
    with DataModule1.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select max(right('+Column+',4)) as kode from '+TableName+' ';
      Open;
    end;

    sort:=DataModule1.Qtemp.FieldByName('kode').AsInteger +1;
  end;

  kode:= IntToStr(sort);
  kode:= Prefix+Copy('000'+kode,length('000'+kode)-4,5);
  Result:= kode;
end;

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

