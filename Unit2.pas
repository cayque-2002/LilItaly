unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Unit7, Unit3, Unit4, Unit5, Unit6,
  Vcl.DBGrids, Vcl.DBCtrls, Data.DBXFirebird, Datasnap.DBClient, SimpleDS;

type
  TFrmVenda = class(TForm)
    LbTituloVenda: TLabel;
    LbVenda: TLabel;
    LbCliente: TLabel;
    EdtEndereco: TEdit;
    LbEndereco: TLabel;
    LbPedido: TLabel;
    LbPizza: TLabel;
    Edit1: TEdit;
    DescricaoPizza: TLabel;
    EdtValorPizza: TEdit;
    LbValor: TLabel;
    DBGrid1: TDBGrid;
    BtnCli: TButton;
    Label1: TLabel;
    EdtValorBebida: TEdit;
    Label2: TLabel;
    BtnPizza: TButton;
    BtnBebida: TButton;
    Button1: TButton;
    BtnRegPed: TButton;
    cmbCliente: TDBLookupComboBox;
    cmbPizza: TDBLookupComboBox;
    CBoxBebida: TDBLookupComboBox;
    procedure CBoxBebidaMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure BtnCliClick(Sender: TObject);
    procedure BtnPizzaClick(Sender: TObject);
    procedure BtnBebidaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

procedure TFrmVenda.BtnBebidaClick(Sender: TObject);
begin
  Application.CreateForm(TFRMCadBebes, FRMCadBebes);
  FRMCadBebes.ShowModal;
end;

procedure TFrmVenda.BtnCliClick(Sender: TObject);
begin
  Application.CreateForm(TFRMCadCliente, FRMCadCliente);
  FRMCadCliente.ShowModal;
end;

procedure TFrmVenda.BtnPizzaClick(Sender: TObject);
begin
  Application.CreateForm(TFRMCadPizza, FRMCadPizza);
  FRMCadPizza.ShowModal;
end;

procedure TFrmVenda.CBoxBebidaMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
    ShowMessage('safada');
end;

end.
