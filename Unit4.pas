unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFRMCadPizza = class(TForm)
    LbTituloCadPizza: TLabel;
    LbNomePizza: TLabel;
    EdtNomePizza: TEdit;
    LbDescricaoPizza: TLabel;
    EdtDescricaoPizza: TEdit;
    LbValorPizza: TLabel;
    EdtValorPizza: TEdit;
    BtnRegistrarPizza: TButton;
    BtnLimparCadPizza: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadPizza: TFRMCadPizza;

implementation

{$R *.dfm}

end.
