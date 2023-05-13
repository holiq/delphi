unit UAddEditBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormAddEditBarang = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditKodeBarang: TEdit;
    EditNamaBarang: TEdit;
    EditDeskripsi: TEdit;
    EditStokAwal: TEdit;
    EditStokMinimal: TEdit;
    EditHargaJual: TEdit;
    ComboBoxStuan: TComboBox;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddEditBarang: TFormAddEditBarang;

implementation

{$R *.dfm}

end.
