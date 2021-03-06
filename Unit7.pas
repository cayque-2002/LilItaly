unit Unit7;

interface

uses
  System.SysUtils, System.Classes,Dialogs, Data.DB, Data.SqlExpr, Data.DBXFirebird,
  Datasnap.DBClient, SimpleDS, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.FMTBcd, Datasnap.Provider;

type
  TdtMod = class(TDataModule)
    SQLConnection1: TSQLConnection;
    getVendedores: TSimpleDataSet;
    ListaUsuarios: TDataSource;
    getClientes: TSimpleDataSet;
    srcClientes: TDataSource;
    InsertPedido: TSimpleDataSet;
    getUltimoPedido: TSimpleDataSet;
    getUltimoPedidoID: TIntegerField;
    getClientesID: TIntegerField;
    getClientesNOME: TStringField;
    getClientesTELEFONE: TStringField;
    getClientesDOCUMENTO: TStringField;
    InsertCliente: TSimpleDataSet;
    UpdateCliente: TSimpleDataSet;
    IntegerField2: TIntegerField;
    getClientesENDERECO: TStringField;
    getCliente: TSimpleDataSet;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    getProdutos: TSimpleDataSet;
    srcProdutos: TDataSource;
    getProdutosID: TIntegerField;
    getProdutosNOME: TStringField;
    getProdutosVALOR: TFMTBCDField;
    getProduto: TSimpleDataSet;
    getProdutoID: TIntegerField;
    getProdutoNOME: TStringField;
    getProdutoVALOR: TFMTBCDField;
    getProdutosCarrinho: TSimpleDataSet;
    srcProdutosPedido: TDataSource;
    insertProdutoCarrinho: TSimpleDataSet;
    getTotalPedido: TSimpleDataSet;
    getTotalPedidoTOTAL: TFMTBCDField;
    deleteProdutoPedido: TSimpleDataSet;
    FMTBCDField1: TFMTBCDField;
    updateStatusPedido: TSimpleDataSet;
    InsertProdutos: TSimpleDataSet;
    Pedidos: TDataSource;
    getPedidosPend: TSimpleDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtMod: TdtMod;

implementation



{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
