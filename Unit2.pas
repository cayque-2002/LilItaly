unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Unit7, Unit3, Unit4, Unit5, Unit6,
  Vcl.DBGrids, Vcl.DBCtrls, Data.DBXFirebird, Datasnap.DBClient, SimpleDS,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

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
    CBoxPizza: TDBLookupComboBox;
    CBoxBebida: TDBLookupComboBox;
    LbLogin: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ToolBar1: TToolBar;
    TBtnCadCli: TToolButton;
    TBtnCadPizza: TToolButton;
    TBtnCadBebes: TToolButton;
    Image1: TImage;
    Image2: TImage;
    EDTIDPED: TEdit;
    procedure BtnCliClick(Sender: TObject);
    procedure BtnPizzaClick(Sender: TObject);
    procedure BtnBebidaClick(Sender: TObject);
    procedure TBtnCadCliClick(Sender: TObject);
    procedure TBtnCadPizzaClick(Sender: TObject);
    procedure TBtnCadBebesClick(Sender: TObject);
    procedure CBoxPizzaClick(Sender: TObject);
    procedure CBoxBebidaClick(Sender: TObject);
    procedure BtnRegPedClick(Sender: TObject);
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

procedure TFrmVenda.BtnRegPedClick(Sender: TObject);
begin
  DataModule7.INSERTPED.Active := True;
  EDTIDPED.text := DataModule7.getPedID;
end;

procedure TFrmVenda.CBoxBebidaClick(Sender: TObject);
begin
 image2.Picture := nil;
   if CBoxBebida.Text = 'Coca Lata' then
      image2.Picture.LoadFromFile('C:\Users\cayqu\OneDrive\�rea de Trabalho\Little Italy Pizzaria\coca-lata.bmp');
   if CBoxBebida.Text = 'Guarana' then
      image2.Picture.LoadFromFile('C:\Users\cayqu\OneDrive\�rea de Trabalho\Little Italy Pizzaria\guarana-lata.bmp');
end;


procedure TFrmVenda.CBoxPizzaClick(Sender: TObject);
begin
    Image1.Picture := nil;
   if CBoxPizza.Text = 'Mussarela' then
      Image1.Picture.LoadFromFile('C:\Users\cayqu\OneDrive\�rea de Trabalho\Little Italy Pizzaria\pizza-mussarela.bmp');
   if CBoxPizza.Text = 'Calabresa' then
      Image1.Picture.LoadFromFile('C:\Users\cayqu\OneDrive\�rea de Trabalho\Little Italy Pizzaria\pizza-calabresa.bmp');
end;

procedure TFrmVenda.TBtnCadCliClick(Sender: TObject);
begin
Application.CreateForm(TFRMCadCliente, FRMCadCliente);
  FRMCadCliente.ShowModal;
end;

procedure TFrmVenda.TBtnCadPizzaClick(Sender: TObject);
begin
Application.CreateForm(TFRMCadPizza, FRMCadPizza);
  FRMCadPizza.ShowModal;
end;

procedure TFrmVenda.TBtnCadBebesClick(Sender: TObject);
begin
Application.CreateForm(TFRMCadBebes, FRMCadBebes);
  FRMCadBebes.ShowModal;
end;

end.
