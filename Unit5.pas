unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFRMCadBebes = class(TForm)
    LbTituloCadBebes: TLabel;
    LbNomeBebida: TLabel;
    EdtNomeBebida: TEdit;
    LbDescricaoBebida: TLabel;
    EdtDescricaoBebida: TEdit;
    LbValorPizza: TLabel;
    EdtValorBebida: TEdit;
    BtnRegistrarBebida: TButton;
    BtnLimparCadBebida: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadBebes: TFRMCadBebes;

implementation

{$R *.dfm}

end.
