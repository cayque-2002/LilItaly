unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs, Unit7, Vcl.imaging.pngimage,
  Data.DB, Vcl.Imaging.jpeg, frxExportCSV, frxClass, frxExportPDF, frxDBSet;

type
  TFRMCadProd = class(TForm)
    LbTituloCadPizza: TLabel;
    LbNomePizza: TLabel;
    EdtNomeProd: TEdit;
    LbDescricaoPizza: TLabel;
    EdtDescricaoProd: TEdit;
    LbValorPizza: TLabel;
    EdtValorProd: TEdit;
    BtnLimparCadPizza: TButton;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    BtnRegistrarProd: TButton;
    BtnRelPizza: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    procedure Image1Click(Sender: TObject);
    procedure BtnRegistrarProdClick(Sender: TObject);
    procedure BtnLimparCadPizzaClick(Sender: TObject);
    procedure BtnRelPizzaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadProd: TFRMCadProd;

implementation

{$R *.dfm}



procedure TFRMCadProd.BtnLimparCadPizzaClick(Sender: TObject);
begin
EdtNomeProd.Clear;
EdtDescricaoProd.Clear;
EdtValorProd.Clear;
end;

procedure TFRMCadProd.BtnRegistrarProdClick(Sender: TObject);

var nome: String;
var descricao: String;
var valor: Extended;

begin

  nome := edtNomeprod.Text;
  descricao := EdtDescricaoProd.Text;

  if nome.Length = 0 then
  begin
    ShowMessage('Nome não digitado');
    Exit();
  end;

  if (Length(Edtvalorprod.Text) = 0) or (Edtvalorprod.Text = '0.00') then
  begin
    ShowMessage('insira um valor');
    Exit();
  end;


  valor := StrToFloat(edtvalorprod.Text);
    dtMod.InsertProdutos.Close;
    dtMod.InsertProdutos.DataSet.ParamByName('par_nomeprod').AsString := nome;
    dtMod.InsertProdutos.DataSet.ParamByName('par_descr').AsString := descricao;
    dtMod.InsertProdutos.DataSet.ParamByName('par_valor').AsFloat := valor;
    dtMod.InsertProdutos.DataSet.ParamByName('par_foto').LoadFromFile(OpenPictureDialog1.FileName,ftBlob);
    dtMod.InsertProdutos.Execute;




    ShowMessage('Produto cadastrada!');

    dtmod.getProdutos.Active := False;
    dtMod.getProdutos.Active := True;


end;




procedure TFRMCadProd.BtnRelPizzaClick(Sender: TObject);
begin
    frxReport1.prepareReport();
    frxReport1.ShowPreparedReport
end;

procedure TFRMCadProd.Image1Click(Sender: TObject);
begin
  if (OpenPictureDialog1.Execute=False) Then
      exit;
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

end.
