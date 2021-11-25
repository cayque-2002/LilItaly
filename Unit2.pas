unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Unit7, Unit3, Unit4, Unit5, Unit6,
  Vcl.DBGrids, Vcl.DBCtrls, Data.DBXFirebird, Datasnap.DBClient, SimpleDS,
  Vcl.ComCtrls, Vcl.ToolWin;

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
    Label1: TLabel;
    EdtValorBebida: TEdit;
    Label2: TLabel;
    Button1: TButton;
    BtnRegPed: TButton;
    cmbCliente: TDBLookupComboBox;
    cmbPizza: TDBLookupComboBox;
    CBoxBebida: TDBLookupComboBox;
    LbLogin: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure CBoxBebidaMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure BtnCliClick(Sender: TObject);
    procedure BtnPizzaClick(Sender: TObject);
    procedure BtnBebidaClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
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

procedure TFrmVenda.ToolButton1Click(Sender: TObject);
begin
Application.CreateForm(TFRMCadCliente, FRMCadCliente);
  FRMCadCliente.ShowModal;
end;

procedure TFrmVenda.ToolButton2Click(Sender: TObject);
begin
Application.CreateForm(TFRMCadPizza, FRMCadPizza);
  FRMCadPizza.ShowModal;
end;

procedure TFrmVenda.ToolButton3Click(Sender: TObject);
begin
Application.CreateForm(TFRMCadBebes, FRMCadBebes);
  FRMCadBebes.ShowModal;
end;

end.
