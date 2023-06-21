unit UAddSupplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFAddSupplier = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Label5: TLabel;
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
  FAddSupplier: TFAddSupplier;

implementation

{$R *.dfm}

uses UDataModule, UListSupplier, UFunction;

procedure TFAddSupplier.BitBtn1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    ValidateMsg := 'kode supplier'
  else if Edit2.Text = '' then
    ValidateMsg := 'nama supplier'
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
    SQL.Clear;
    SQL.Text := 'INSERT INTO tugas_tiga.supplier ' +
      '(kode_supplier, nama, alamat, no_telepon) VALUES (' +
      QuotedStr(Edit1.Text) + ',' + QuotedStr(Edit2.Text) + ',' +
      QuotedStr(Memo1.Text) + ',' + QuotedStr(Edit3.Text) + ')';
    Execute;
  end;
  FListSupplier.BitBtn2.Click;
  FAddSupplier.Close;
end;

procedure TFAddSupplier.BitBtn2Click(Sender: TObject);
begin
  FAddSupplier.Close;
end;

end.
