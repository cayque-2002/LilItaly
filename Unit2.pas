unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Unit7, Unit3, Unit4, Unit5, Unit6,
  Vcl.DBGrids, Vcl.DBCtrls, Data.DBXFirebird, Datasnap.DBClient, SimpleDS,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, DBXCommon,
  Vcl.Buttons, Vcl.Styles, Data.FmtBcd;

type
  TFrmVenda = class(TForm)
    LbTituloVenda: TLabel;
    LbVenda: TLabel;
    LbCliente: TLabel;
    EdtEndereco: TEdit;
    LbEndereco: TLabel;
    cmbCliente: TDBLookupComboBox;
    LbLogin: TLabel;
    cmbVendedor: TDBLookupComboBox;
    idPedido: TEdit;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Button1: TButton;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    btnAlterarItem: TButton;
    btnRemoverItem: TButton;
    btnFinalizar: TButton;
    idItem: TEdit;
    cmbxItensPedido: TGroupBox;
    btnBuscaProduto: TBitBtn;
    txtQtd: TEdit;
    cmbProdutos: TDBLookupComboBox;
    txtValorUnit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnAddProduto: TBitBtn;
    txtObsProduto: TEdit;
    Label4: TLabel;
    procedure BtnCliClick(Sender: TObject);
    procedure BtnPizzaClick(Sender: TObject);
    procedure BtnBebidaClick(Sender: TObject);
    procedure TBtnCadCliClick(Sender: TObject);
    procedure TBtnCadPizzaClick(Sender: TObject);
    procedure TBtnCadBebesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscaProdutoClick(Sender: TObject);
    procedure btnAddProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}


procedure TFrmVenda.BitBtn1Click(Sender: TObject);
begin
  if cmbCliente.KeyValue = null then
  begin
    Exit();
  end;

  dtMod.getCliente.DataSet.ParamByName('PAR_ID').AsInteger := cmbCliente.KeyValue;
  dtMod.getCliente.Execute;

  dtMod.getCliente.Active := False;
  dtMod.getCliente.Active := True;
  self.EdtEndereco.Text := dtMod.getClientesENDERECO.Value;
end;

procedure TFrmVenda.btnAddProdutoClick(Sender: TObject);
var produto : String;
var valor : Extended;
var quantidade : String;
var pedido : String;
var observacao: String;
begin

  pedido := idPedido.Text;
  produto := cmbProdutos.KeyValue;
  quantidade := txtQtd.Text;
  observacao := txtObsProduto.Text;

  if produto = null then
  begin
    Exit();
  end;

  if Length(txtValorUnit.Text) = 0 then
  begin
    ShowMessage('Digite o valor do item');
    Exit();
  end;

  if Length(quantidade) = 0 then
  begin
    ShowMessage('Digite a quantidade');
    Exit();
  end;

  valor := StrToFloat(txtValorUnit.Text);

  dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_PEDIDO').AsInteger := StrToInt(pedido);
  dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_PRODUTO').AsInteger := StrToInt(produto);
  dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_VALOR').AsFloat := valor;
  dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_QTD').AsInteger := StrToInt(quantidade);
  dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_OBS').AsString := observacao;

  dtMod.insertProdutoCarrinho.Execute;

  dtMod.getProdutosCarrinho.DataSet.ParamByName('PAR_PEDIDO_ID').AsInteger := StrToInt(pedido);
  dtMod.getProdutosCarrinho.Execute;

  dtMod.getProdutosCarrinho.Active := False;
  dtMod.getProdutosCarrinho.Active := True;

  ShowMessage('Produto Adicionado');

end;

procedure TFrmVenda.BtnBebidaClick(Sender: TObject);
begin
  Application.CreateForm(TFRMCadBebes, FRMCadBebes);
  FRMCadBebes.ShowModal;
end;

procedure TFrmVenda.btnBuscaProdutoClick(Sender: TObject);
begin
  if cmbProdutos.KeyValue = null then
  begin
    Exit();
  end;

  dtMod.getProduto.DataSet.ParamByName('PAR_ID').AsInteger := cmbProdutos.KeyValue;
  dtMod.getProduto.Execute;

  dtMod.getProduto.Active := False;
  dtMod.getProduto.Active := True;
  txtValorUnit.Text := BcdToStr(dtMod.getProdutoVALOR.Value);
  txtValorUnit.Enabled := True;
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


procedure TFrmVenda.Button1Click(Sender: TObject);
var cliente: Integer;
var vendedor: Integer;
var endereco: String;

begin

  if cmbVendedor.KeyValue = null then
  begin
    ShowMessage('Vendedor n�o selecionado');
    cmbVendedor.SetFocus;
    Exit();
  end;

  if cmbCliente.KeyValue = null then
  begin
    ShowMessage('Cliente n�o selecionado');
    EdtEndereco.SetFocus;
    Exit();
  end;

  vendedor := cmbVendedor.KeyValue;
  cliente := cmbCliente.KeyValue;
  endereco := EdtEndereco.Text;

  if endereco.Length = 0 then
  begin
    ShowMessage('Endere�o n�o digitado');
    EdtEndereco.SetFocus;
    Exit();
  end;

  dtMod.InsertPedido.DataSet.ParamByName('PAR_CLIENTE').AsString := IntToStr(cmbCliente.KeyValue);
  dtMod.InsertPedido.DataSet.ParamByName('PAR_VENDEDOR').AsString := IntToStr(cmbVendedor.KeyValue);
  dtMod.InsertPedido.DataSet.ParamByName('PAR_ENDERECO').AsString := endereco;
  dtMod.InsertPedido.Execute;

  dtMod.getUltimoPedido.Active := False;
  ShowMessage('Pedido Iniciado');
  dtMod.getUltimoPedido.Active := True;
  idPedido.Text := dtMod.getUltimoPedidoID.Text;
  dtMod.getProdutos.Active := True;
  cmbxItensPedido.Visible := True;

  self.Height := 680;

end;

procedure TFrmVenda.FormShow(Sender: TObject);
begin
  self.Height := 330;
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


procedure TFrmVenda.ToolButton2Click(Sender: TObject);
begin
  dtMod.getClientes.Active := False;
  dtMod.getClientes.Active := True;
  FRMCadCliente.Show;
end;

procedure TFrmVenda.TBtnCadBebesClick(Sender: TObject);
begin
Application.CreateForm(TFRMCadBebes, FRMCadBebes);
  FRMCadBebes.Show;
end;

end.
