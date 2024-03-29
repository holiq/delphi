﻿unit UEditSupplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFEditSupplier = class(TForm)
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditSupplier: TFEditSupplier;

implementation

{$R *.dfm}

uses UDataModule, UListSupplier, UFunction;

procedure TFEditSupplier.BitBtn1Click(Sender: TObject);
begin
  if Edit2.Text = '' then
    ValidateMsg := 'nama supplier'
  else if Memo1.Text = '' then
    ValidateMsg := 'alamat supplier'
  else if Edit3.Text = '' then
    ValidateMsg := 'no telepon supplier'
  else
    ValidateMsg := '';

  if ValidateMsg <> '' then
  begin
    Validation(ValidateMsg);
    Exit;
  end;

  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;;
    SQL.Text := 'UPDATE tugas_tiga.supplier SET ' +
      'kode_supplier=' + QuotedStr(Edit1.Text) + ', ' +
      'nama=' + QuotedStr(Edit2.Text) + ', ' +
      'alamat=' + QuotedStr(Memo1.Text) + ', ' +
      'no_telepon=' + QuotedStr(Edit3.Text) + ' ' +
      'WHERE supplier.id=' + QuotedStr(Label5.Caption);
    Execute;
  end;
  FListSupplier.BitBtn2.Click;
  FEditSupplier.Close;
end;

procedure TFEditSupplier.BitBtn2Click(Sender: TObject);
begin
  FEditSupplier.Close;
end;

end.
