unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids, Unit7,
  Vcl.DBGrids, frxClass, frxDBSet, frxExportCSV, frxExportPDF;

type
  TFRMPedidosPendentes = class(TForm)
    LbTituloCadBebes: TLabel;
    DBGPedidosPend: TDBGrid;
    BtnEntregaPed: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    BtnRelPP: TButton;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    procedure BtnEntregaPedClick(Sender: TObject);
    procedure BtnRelPPClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMPedidosPendentes: TFRMPedidosPendentes;

implementation

{$R *.dfm}

procedure TFRMPedidosPendentes.BtnEntregaPedClick(Sender: TObject);
var idEntregar: Integer;
begin
  if DBGPedidosPend.DataSource.DataSet.Fields.Fields[0].Value = Null then
  begin
    Exit();
  end;

  idEntregar := DBGPedidosPend.DataSource.DataSet.Fields.Fields[0].Value;

  case MessageDlg('Pedido foi entregue?', mtConfirmation, [mbOK, mbCancel], 0) of
  mrOk:
    begin
       dtMod.updateStatusPedido.DataSet.ParamByName('PAR_STATUS').AsInteger := 1;
      dtMod.updateStatusPedido.DataSet.ParamByName('PAR_PEDIDO_ID').AsInteger := idEntregar;
      dtMod.updateStatusPedido.Execute;

       dtMod.getPedidosPend.Active := False;
       dtMod.getPedidosPend.Active := True;
    end;

end;
end;
procedure TFRMPedidosPendentes.BtnRelPPClick(Sender: TObject);
begin
    frxReport1.prepareReport();
    frxReport1.ShowPreparedReport
end;
procedure TFRMPedidosPendentes.FormActivate(Sender: TObject);
begin
       dtMod.getPedidosPend.Active := False;
       dtMod.getPedidosPend.Active := True;
end;

end.
