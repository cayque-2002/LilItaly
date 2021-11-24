unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls;

type
  TFRMCadCliente = class(TForm)
    LbTituloCadCliente: TLabel;
    LbNome: TLabel;
    EdtNomeCli: TEdit;
    LbCPFCli: TLabel;
    EdtEmailCli: TEdit;
    LbEmailCli: TLabel;
    LbTelCli: TLabel;
    EdtTipoLogr: TEdit;
    LbCadTipoLogr: TLabel;
    EdtLogr: TEdit;
    LbLogr: TLabel;
    EdtNumero: TEdit;
    LbNumero: TLabel;
    EdtComplemento: TEdit;
    LbComplemento: TLabel;
    MEdtCPFCli: TMaskEdit;
    MEdtTel: TMaskEdit;
    LbCadEnderecoCli: TLabel;
    EdtBairro: TEdit;
    LbBairro: TLabel;
    EdtCidade: TEdit;
    LbCidade: TLabel;
    BtnCadCli: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadCliente: TFRMCadCliente;

implementation

{$R *.dfm}

end.
