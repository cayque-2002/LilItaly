unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Unit7, Unit3, Unit4, Unit5, Unit6,
  Vcl.DBGrids, Vcl.DBCtrls, Data.DBXFirebird, Datasnap.DBClient, SimpleDS,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, DBXCommon,
  Vcl.Buttons, Vcl.Styles, Data.FmtBcd, System.UITypes;

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
    btnIniciarPedido: TButton;
    BitBtn1: TBitBtn;
    gridItens: TDBGrid;
    btnRemoverItem: TButton;
    btnFinalizar: TButton;
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
    totalVenda: TPanel;
    procedure BtnCliClick(Sender: TObject);
    procedure TBtnCadCliClick(Sender: TObject);
    procedure btnIniciarPedidoClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscaProdutoClick(Sender: TObject);
    procedure btnAddProdutoClick(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
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
var valor_total: Currency;
begin

  pedido := idPedido.Text;
  produto := cmbProdutos.KeyValue;
  quantidade := txtQtd.Text;
  observacao := txtObsProduto.Text;

  if produto = Null then
  begin
    Exit();
  end;

  if (Length(txtValorUnit.Text) = 0) or (txtValorUnit.Text = '0.00') then
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

  dtMod.getProdutosCarrinho.DataSet.ParamByName('PAR_PEDIDO_ID').Clear;
  dtMod.getProdutosCarrinho.DataSet.ParamByName('PAR_PEDIDO_ID').AsInteger := StrToInt(pedido);
  dtMod.getProdutosCarrinho.Execute;

  dtMod.getProdutosCarrinho.Active:= False;
    dtMod.getProdutosCarrinho.Active:= True;

  cmbProdutos.KeyValue := Null;
  txtValorUnit.Text := '0.00';
  txtValorUnit.Enabled := False;
  txtQtd.Text := '1';
  txtObsProduto.Clear;

  dtMod.getTotalPedido.Active := True;
  valor_total := StrToCurr(BcdToStr(dtMod.getTotalPedidoTOTAL.Value));
  dtMod.getTotalPedido.Active := False;
  Self.totalVenda.Caption := 'Valor Total R$' + CurrToStr(valor_total);

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



procedure TFrmVenda.btnRemoverItemClick(Sender: TObject);
var idRemover: Integer;
var valor_total : Extended;
begin

  if gridItens.DataSource.DataSet.Fields.Fields[0].Value = Null then
  begin
    Exit();
  end;

  idRemover := gridItens.DataSource.DataSet.Fields.Fields[0].Value;

  case MessageDlg('Remover item do pedido?', mtConfirmation, [mbOK, mbCancel], 0) of
  mrOk:
    begin
       dtMod.deleteProdutoPedido.DataSet.ParamByName('PAR_ITEM').AsInteger := idRemover;
       dtMod.deleteProdutoPedido.Execute;

       dtMod.getProdutosCarrinho.Active := False;
       dtMod.getProdutosCarrinho.Active := True;

       dtMod.getTotalPedido.Active := True;
        valor_total := StrToCurr(BcdToStr(dtMod.getTotalPedidoTOTAL.Value));
        dtMod.getTotalPedido.Active := False;
        Self.totalVenda.Caption := 'Valor Total R$' + CurrToStr(valor_total);

    end;
end;

end;

procedure TFrmVenda.btnFinalizarClick(Sender: TObject);
var id: Integer;
begin
  id := StrToInt(idPedido.Text);

  if gridItens.DataSource.DataSet.RecordCount = 0 then
  begin
    ShowMessage('Nenhum produto adicionado ao pedido');
    Exit();
  end;

  case MessageDlg('Deseja finalizar o pedido?', mtConfirmation, [mbOK, mbCancel], 0) of
  mrOk:
    begin
      dtMod.updateStatusPedido.DataSet.ParamByName('PAR_STATUS').AsInteger := 2;
      dtMod.updateStatusPedido.DataSet.ParamByName('PAR_PEDIDO_ID').AsInteger := id;
      dtMod.updateStatusPedido.Execute;

      idPedido.Clear;
      txtQtd.Text := '1';
      txtValorUnit.Text := '0.00';
      txtObsProduto.Clear;
      totalVenda.Caption := 'Valor Total R$0,00';

//      dtMod.getProdutosCarrinho.DataSet.ParamByName('PAR_PEDIDO_ID').Clear;

//      dtMod.getProdutosCarrinho.Active := False;

      dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_PEDIDO').Clear;
      dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_PRODUTO').Clear;
      dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_VALOR').Clear;
      dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_QTD').Clear;
      dtMod.insertProdutoCarrinho.DataSet.ParamByName('PAR_OBS').Clear;

      ShowMessage('Pedido Finalizado');

      cmbVendedor.KeyValue := Null;
      cmbCliente.KeyValue := Null;
      EdtEndereco.Clear;

      self.Height := 330;
    end;

  end;

end;

procedure TFrmVenda.btnIniciarPedidoClick(Sender: TObject);
var vendedor: Integer;
var endereco: String;

begin

  if cmbVendedor.KeyValue = null then
  begin
    ShowMessage('Vendedor n?o selecionado');
    cmbVendedor.SetFocus;
    Exit();
  end;

  if cmbCliente.KeyValue = null then
  begin
    ShowMessage('Cliente n?o selecionado');
    EdtEndereco.SetFocus;
    Exit();
  end;

  vendedor := cmbVendedor.KeyValue;
  endereco := EdtEndereco.Text;

  if endereco.Length = 0 then
  begin
    ShowMessage('Endere?o n?o digitado');
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

  dtMod.getTotalPedido.DataSet.ParamByName('PAR_PEDIDO_ID').Clear;
  dtMod.getTotalPedido.DataSet.ParamByName('PAR_PEDIDO_ID').AsInteger := StrToInt(dtMod.getUltimoPedidoID.Text);

  dtMod.getProdutosCarrinho.DataSet.ParamByName('PAR_PEDIDO_ID').Clear;
  dtMod.getProdutosCarrinho.DataSet.ParamByName('PAR_PEDIDO_ID').AsInteger := StrToInt(dtMod.getUltimoPedidoID.Text);
  dtMod.getProdutosCarrinho.Execute;

  dtmod.getProdutosCarrinho.Active := False;
  dtMod.getProdutosCarrinho.Active := True;


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




procedure TFrmVenda.ToolButton1Click(Sender: TObject);
begin
FRMCadProd.Show;
end;

procedure TFrmVenda.ToolButton2Click(Sender: TObject);
begin
  dtMod.getClientes.Active := False;
  dtMod.getClientes.Active := True;
  FRMCadCliente.Show;
end;


procedure TFrmVenda.ToolButton3Click(Sender: TObject);
begin
FRMPedidosPendentes.Show;
end;

end.
