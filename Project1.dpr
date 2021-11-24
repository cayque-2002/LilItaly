program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FRMLogin},
  Unit2 in 'Unit2.pas' {FrmVenda},
  Unit3 in 'Unit3.pas' {FRMCadCliente},
  Unit4 in 'Unit4.pas' {FRMCadPizza},
  Unit5 in 'Unit5.pas' {FRMCadBebes},
  Unit6 in 'Unit6.pas' {FRMPedidosPendentes},
  Unit7 in 'Unit7.pas' {DataModule7: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMLogin, FRMLogin);
  Application.CreateForm(TFrmVenda, FrmVenda);
  Application.CreateForm(TFRMCadCliente, FRMCadCliente);
  Application.CreateForm(TFRMCadPizza, FRMCadPizza);
  Application.CreateForm(TFRMCadBebes, FRMCadBebes);
  Application.CreateForm(TFRMPedidosPendentes, FRMPedidosPendentes);
  Application.CreateForm(TDataModule7, DataModule7);
  Application.Run;
end.
