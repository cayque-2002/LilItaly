program Project1;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {FrmVenda},
  Unit3 in 'Unit3.pas' {FRMCadCliente},
  Unit4 in 'Unit4.pas' {FRMCadProd},
  Unit6 in 'Unit6.pas' {it},
  Unit7 in 'Unit7.pas' {dtMod: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TFrmVenda, FrmVenda);
  Application.CreateForm(TFRMCadCliente, FRMCadCliente);
  Application.CreateForm(TFRMCadProd, FRMCadProd);
  Application.CreateForm(Tit, it);
  Application.CreateForm(TdtMod, dtMod);
  Application.Run;
end.
