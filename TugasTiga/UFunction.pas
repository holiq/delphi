﻿unit UFunction;

interface

uses SysUtils, Variants, Forms, Windows, Controls, StdCtrls, ComCtrls,
  Messages, Classes, Dialogs, Graphics, IdHashMessageDigest, idHash,
  DateUtils, UDataModule, System.UITypes;

function getmd5(SourceString: string): string;
function AutoCode(Column, TableName, Prefix: string): string;
procedure Validation(Msg: string);

var
  username, password, code, ValidateMsg: string;
  sort, isActive: Integer;

implementation

procedure Validation(Msg: string);
begin
  Messagedlg(Msg + ' tidak boleh kosong', mtWarning, [Mbok], 0);
end;

function AutoCode(Column, TableName, Prefix: string): string;
begin
  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select ' + Column + ' from ' + TableName + ' ';
    Open;
  end;

  if DataModule1.QTemp.RecordCount = 0 then
    sort := 1
  else if DataModule1.QTemp.RecordCount > 0 then
  begin
    with DataModule1.QTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select max(right(' + Column + ',4)) as kode from ' +
        TableName + ' ';
      Open;
    end;

    sort := DataModule1.QTemp.FieldByName('kode').AsInteger + 1;
  end;

  code := IntToStr(sort);
  code := Prefix + Copy('000' + code, length('000' + code) - 4, 5);
  Result := code;
end;

(* function read html5 *)
function getmd5(SourceString: string): string;
var
  md5: TIdHashMessageDigest5;
begin
  Result := '';
  md5 := TIdHashMessageDigest5.Create;
  try
    Result := AnsiLowerCase(md5.HashStringAsHex(SourceString));
  finally
    FreeAndNil(md5);
  end;
end;

end.
