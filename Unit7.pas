unit Unit7;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXFirebird,
  Datasnap.DBClient, SimpleDS, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule7 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    LOGIN: TSimpleDataSet;
    ListaUsuarios: TDataSource;
    getClientes: TSimpleDataSet;
    srcClientes: TDataSource;
    getPizzas: TSimpleDataSet;
    srcPizzas: TDataSource;
    getBebidas: TSimpleDataSet;
    srcBebidas: TDataSource;
    INSERTPED: TSimpleDataSet;
    getPed: TSimpleDataSet;
    getPedID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule7: TDataModule7;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
end.
