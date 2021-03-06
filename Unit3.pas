unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons,
  Unit7,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Datasnap.DBClient,
  Datasnap.Provider;

type
  TFRMCadCliente = class(TForm)
    LbTituloCadCliente: TLabel;
    LbNome: TLabel;
    txtNome: TEdit;
    LbCPFCli: TLabel;
    LbTelCli: TLabel;
    txtDocumento: TMaskEdit;
    txtTelefone: TMaskEdit;
    gridClientes: TDBGrid;
    idEdit: TEdit;
    btnAlterar: TButton;
    btnCadastrar: TButton;
    Label1: TLabel;
    txtEndereco: TEdit;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadCliente: TFRMCadCliente;

implementation

{$R *.dfm}

procedure TFRMCadCliente.btnCadastrarClick(Sender: TObject);
var id : Integer;
var nome: String;
var telefone: String;
var documento: String;
var endereco: String;
var tipo: String;
begin

  nome := txtNome.Text;
  telefone := txtTelefone.Text;
  documento := txtDocumento.Text;
  endereco := txtEndereco.Text;

  if nome.Length = 0 then
  begin
    ShowMessage('Nome n?o digitado');
    Exit();
  end;

  if telefone.Length <> 14 then
  begin
    ShowMessage('Numero de telefone invalido');
    Exit();
  end;

  if documento.Length <> 14 then
  begin
    ShowMessage('Documento inv?lido');
    Exit();
  end;

  if endereco.Length = 0 then
  begin
    ShowMessage('Endere?o n?o digitado');
    Exit();
  end;

  tipo := btnCadastrar.Caption;

  if tipo = 'Cadastrar' then
  begin
    dtMod.InsertCliente.DataSet.ParamByName('PAR_NOME').AsString := nome;
    dtMod.InsertCliente.DataSet.ParamByName('PAR_DOCTO').AsString := documento;
    dtMod.InsertCliente.DataSet.ParamByName('PAR_TELEFONE').AsString := telefone;
    dtMod.InsertCliente.DataSet.ParamByName('PAR_ENDERECO').AsString := endereco;
    dtMod.InsertCliente.Execute;

    ShowMessage('Cliente cadastrado!');
    dtMod.getClientes.Active := False;
    dtMod.getClientes.Active := True;
  end
  else
  begin

    id := StrToInt(idEdit.Text);
  
    dtMod.UpdateCliente.DataSet.ParamByName('PAR_ID').AsInteger := id;
    dtMod.UpdateCliente.DataSet.ParamByName('PAR_NOME').AsString := nome;
    dtMod.UpdateCliente.DataSet.ParamByName('PAR_DOCTO').AsString := documento;
    dtMod.UpdateCliente.DataSet.ParamByName('PAR_TELEFONE').AsString := telefone;
    dtMod.UpdateCliente.DataSet.ParamByName('PAR_ENDERECO').AsString := endereco;
    dtMod.UpdateCliente.Execute;

    ShowMessage('Cliente atualizado!');
    dtMod.getClientes.Active := False;
    dtMod.getClientes.Active := True;
    
  end;

  btnCadastrar.Caption := 'Cadastrar';
  btnAlterar.Caption := 'Alterar';
  idEdit.Text := '';
  txtNome.Text := '';
  txtTelefone.Text := '';
  txtDocumento.Text := '';
  txtEndereco.Text := '';

end;

procedure TFRMCadCliente.FormShow(Sender: TObject);
begin

  dtMod.getClientes.Active := False;
  dtMod.getClientes.Active := True;

  btnCadastrar.Caption := 'Cadastrar';
  btnAlterar.Caption := 'Alterar';
  idEdit.Text := '';
  txtNome.Text := '';
  txtTelefone.Text := '';
  txtDocumento.Text := '';
  txtEndereco.Text := '';
end;

procedure TFRMCadCliente.btnAlterarClick(Sender: TObject);
begin

  if btnAlterar.Caption = 'Limpar' then
  begin
    btnCadastrar.Caption := 'Cadastrar';
    btnAlterar.Caption := 'Alterar';
    idEdit.Text := '';
    txtNome.Text := '';
    txtTelefone.Text := '';
    txtDocumento.Text := '';
    txtEndereco.Text := '';
    Exit();
  end;

  if gridClientes.DataSource.DataSet.Fields.Fields[0].Value = Null then
  begin
    Exit();
  end;

  btnCadastrar.Caption := 'Finalizar Altera??o';
  self.idEdit.Text := gridClientes.DataSource.DataSet.Fields.Fields[0].Value;
  txtNome.Text := gridClientes.DataSource.DataSet.Fields.Fields[1].Value;
  txtTelefone.Text := gridClientes.DataSource.DataSet.Fields.Fields[2].Value;
  txtDocumento.Text := gridClientes.DataSource.DataSet.Fields.Fields[3].Value;
  txtEndereco.Text := gridClientes.DataSource.DataSet.Fields.Fields[4].Value;
  btnAlterar.Caption := 'Limpar';
  
end;

end.
