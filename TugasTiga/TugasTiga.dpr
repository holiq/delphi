program TugasTiga;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FormLogin},
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule},
  UFunction in 'UFunction.pas',
  UMainMenu in 'UMainMenu.pas' {FMainMenu},
  UListBarang in 'Barang\UListBarang.pas' {FListBarang},
  UAddBarang in 'Barang\UAddBarang.pas' {FAddBarang},
  UEditBarang in 'Barang\UEditBarang.pas' {FEditBarang},
  UListPelanggan in 'Pelanggan\UListPelanggan.pas' {FListPelanggan},
  UAddPelanggan in 'Pelanggan\UAddPelanggan.pas' {FAddPelanggan},
  UEditPelanggan in 'Pelanggan\UEditPelanggan.pas' {FEditPelanggan},
  UListSupplier in 'Supplier\UListSupplier.pas' {FListSupplier},
  UAddSupplier in 'Supplier\UAddSupplier.pas' {FAddSupplier},
  UEditSupplier in 'Supplier\UEditSupplier.pas' {FEditSupplier},
  UListPembelian in 'Pembelian\UListPembelian.pas' {FListPembelian},
  UAddPembelian in 'Pembelian\UAddPembelian.pas' {FAddPembelian},
  UEditPembelian in 'Pembelian\UEditPembelian.pas' {FEditPembelian},
  UListPenjualan in 'Penjualan\UListPenjualan.pas' {FListPenjualan},
  UAddPenjualan in 'Penjualan\UAddPenjualan.pas' {FAddPenjualan},
  UEditPenjualan in 'Penjualan\UEditPenjualan.pas' {FEditPenjualan},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TugasTiga POS';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.Run;

end.
