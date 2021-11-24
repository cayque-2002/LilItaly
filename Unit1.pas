unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Unit2, Unit7;

type
  TFRMLogin = class(TForm)
    LbLogin: TLabel;
    LbTitulo: TLabel;
    BtnLogin: TButton;
    BtnSair: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMLogin: TFRMLogin;

implementation

{$R *.dfm}

procedure TFRMLogin.BtnLoginClick(Sender: TObject);
begin

  Application.CreateForm(TfrmVenda, FrmVenda);
  FrmVenda.ShowModal;

end;

end.
