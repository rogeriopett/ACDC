unit Duimp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FuncoesDuimp, Vcl.Buttons,
  PngSpeedButton, Vcl.ExtCtrls, Vcl.Menus, System.ImageList, Vcl.ImgList,
  PngImageList, Datasnap.DBClient;

type
  TFormDuimp = class(TForm)
    DataSourceDuimp: TDataSource;
    DBGrid1: TDBGrid;
    DataSourceItens: TDataSource;
    DataSourceTributos: TDataSource;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    AbrirXML1Button: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    Bevel1: TBevel;
    CadastrarProdutoSelecionado1Button: TPngSpeedButton;
    CadastrarTodosOsProdutos1Button: TPngSpeedButton;
    AlterarFamilia1Button: TPngSpeedButton;
    AlterarGrupo1Button: TPngSpeedButton;
    AlterarMarca1Button: TPngSpeedButton;
    CadastroDeFamilias1Button: TPngSpeedButton;
    CadastroDeGrupos1Button: TPngSpeedButton;
    CadastroDeMarcas1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AbrirXML1: TMenuItem;
    CadastrarProdutoSelecionado1: TMenuItem;
    CadastrarTodosOsProdutos1: TMenuItem;
    N2: TMenuItem;
    AlterarFamilia1: TMenuItem;
    AlterarGrupo1: TMenuItem;
    AlterarMarca1: TMenuItem;
    N4: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    CadastroDeFamilias1: TMenuItem;
    CadastroDeGrupos1: TMenuItem;
    CadastroDeMarcas1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    FileOpenDialog1: TFileOpenDialog;
    Label10: TLabel;
    N3: TMenuItem;
    AtualizarPedidoConformeXML1: TMenuItem;
    AtualizarPedidoConformeXML1Button: TPngSpeedButton;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    Panel5: TPanel;
    Label17: TLabel;
    Label15: TLabel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    TBDuimpItens: TClientDataSet;
    DSDuimpItens: TDataSource;
    TBDuimpItensDUI_CEST: TStringField;
    TBDuimpItensDUI_CLASSFISCAL: TStringField;
    TBDuimpItensDUI_CODIGO: TStringField;
    TBDuimpItensDUI_CODIGOBARRAS: TStringField;
    TBDuimpItensDUI_CODIGOLOCAL: TIntegerField;
    TBDuimpItensDUI_CSTCOFINS: TIntegerField;
    TBDuimpItensDUI_CSTICMS: TIntegerField;
    TBDuimpItensDUI_CSTIPI: TIntegerField;
    TBDuimpItensDUI_CSTPIS: TIntegerField;
    TBDuimpItensDUI_EXCECAO: TIntegerField;
    TBDuimpItensDUI_FAMILIA: TIntegerField;
    TBDuimpItensDUI_FCI: TStringField;
    TBDuimpItensDUI_GRUPO: TIntegerField;
    TBDuimpItensDUI_MARCA: TIntegerField;
    TBDuimpItensDUI_MODICMS: TStringField;
    TBDuimpItensDUI_MODICMSST: TStringField;
    TBDuimpItensDUI_NOME: TStringField;
    TBDuimpItensDUI_ORIGEM: TStringField;
    TBDuimpItensDUI_PESO: TFloatField;
    TBDuimpItensDUI_QUANTIDADE: TFloatField;
    TBDuimpItensDUI_SEQUENCIA: TIntegerField;
    TBDuimpItensDUI_UNIDADE: TStringField;
    TBDuimpItensDUI_VALORTOTAL: TFloatField;
    TBDuimpItensDUI_VALORUNIT: TFloatField;
    TBDuimpItensFAM_DESCRICAO: TStringField;
    TBDuimpItensGRU_DESCRICAO: TStringField;
    TBDuimpItensMAR_DESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AbrirXML1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure CadastroDeFamilias1Click(Sender: TObject);
    procedure CadastroDeGrupos1Click(Sender: TObject);
    procedure CadastroDeMarcas1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure AtualizarPedidoConformeXML1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    DUIMPImporter: TDUIMPImporter;
  public
    { Public declarations }
  end;

var
  FormDuimp: TFormDuimp;

implementation
uses DataMod, Clientes, Fornecedores, Familias, Grupos, Marcas, Funcoes1,
  FamiliasLoc, GruposLoc, MarcasLoc, ProdutosLoc, DataMod2;
{$R *.dfm}

procedure TFormDuimp.AbrirXML1Click(Sender: TObject);
begin
  if FileOpenDialog1.Execute then
  begin
    DUIMPImporter:=TDUIMPImporter.Create;
    try
      // Carrega o arquivo XML exportado do Siscomex
      DUIMPImporter.LoadFromXMLFile(FileOpenDialog1.FileName);

      // Associa os DataSets a DBGrids ou consome diretamente
      DataSourceDuimp.DataSet   :=DUIMPImporter.MemTableDuimp;
      DataSourceItens.DataSet   :=DUIMPImporter.MemTableItens;
      DataSourceTributos.DataSet:=DUIMPImporter.MemTableTributos;

//      ShowMessage(Format('Importação concluída. DUIMP %s com %d item(ns).',
//        [DUIMPImporter.MemTableDuimp.FieldByName('NumeroDuimp').AsString,
//         DUIMPImporter.MemTableItens.RecordCount]));

      {$REGION 'Checagem do emitente na tabela de clientes'}
      //tenta localizar o emitente da DUIMP no cadastro de clientes.
      //se nao encontra, cadastra... se encontra, então localiza ele na tabela de clientes.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select first(1) CLI_CODIGO, CLI_NOME, CLI_CNPJ from CLIENTES where CLI_CNPJ=:cnpj or CLI_NOME=:nome');
      DM.QYAux.ParamByName('cnpj').AsString:=DUIMPImporter.MemTableDuimp.FieldByName('CNPJImportador').AsString;
      DM.QYAux.ParamByName('nome').AsString:=DUIMPImporter.MemTableDuimp.FieldByName('NomeImportador').AsString;
      DM.QYAux.Open;
      if DM.QYAux.FieldByName('CLI_NOME').AsString='' then
      begin
        DM.TBClientes.Insert;
        DM.TBClientesCLI_CNPJ.Value:=DUIMPImporter.MemTableDuimp.FieldByName('CNPJImportador').AsString;
        DM.TBClientesCLI_NOME.Value:=DUIMPImporter.MemTableDuimp.FieldByName('NomeImportador').AsString;
        DM.TBClientes.Post;
        MessageDlg('O emitente deste XML foi cadastrado como Cliente.',mtInformation,[mbOk],0);
      end else
      begin
        DM.TBClientes.Close;
        DM.TBClientes.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CLI_CODIGO').AsInteger;
        DM.TBClientes.Open;
      end;
      DM.QYAux.Close;
      {$ENDREGION}

      {$REGION 'Checagem do emitente na tabela de fornecedores'}
      //tenta localizar o emitente da NFe no cadastro de fornecedores. Os produtos se referenciam ao fornecedor.
      //se nao encontra, cadastra... se encontra, então localiza ele na tabela de fornecedores.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select first(1) FOR_CODIGO, FOR_NOME, FOR_CNPJ from FORNECEDORES where FOR_CNPJ=:cnpj or FOR_NOME=:nome');
      DM.QYAux.ParamByName('cnpj').AsString:=DUIMPImporter.MemTableDuimp.FieldByName('CNPJImportador').AsString;
      DM.QYAux.ParamByName('nome').AsString:=DUIMPImporter.MemTableDuimp.FieldByName('NomeImportador').AsString;
      DM.QYAux.Open;
      if DM.QYAux.FieldByName('FOR_NOME').AsString='' then
      begin
        DM.TBFornecedores.Insert;
        DM.TBFornecedoresFOR_CNPJ.Value:=DUIMPImporter.MemTableDuimp.FieldByName('CNPJImportador').AsString;
        DM.TBFornecedoresFOR_NOME.Value:=DUIMPImporter.MemTableDuimp.FieldByName('NomeImportador').AsString;
        DM.TBFornecedores.Post;
        MessageDlg('O emitente deste XML foi cadastrado como Fornecedor.',mtInformation,[mbOk],0);
      end else
      begin
        DM.TBFornecedores.Close;
        DM.TBFornecedores.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('FOR_CODIGO').AsInteger;
        DM.TBFornecedores.Open;
      end;
      DM.QYAux.Close;
      {$ENDREGION}

      DM.TBProdutos.DisableControls;

      DM.TBFamilias.Close;
      DM.TBFamilias.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_PROFAMILIA.Value;
      DM.TBFamilias.Open;
      DM.TBGrupos.Close;
      DM.TBGrupos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_PROGRUPO.Value;
      DM.TBGrupos.Open;
      DM2.TBMarcas.Close;
      DM2.TBMarcas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_PROMARCA.Value;
      DM2.TBMarcas.Open;

      TBDuimpItens.EmptyDataSet;
      DUIMPImporter.MemTableItens.First;
      while not DUIMPImporter.MemTableItens.Eof do
      begin
        TBDuimpItens.Insert;
        TBDuimpItensDUI_CODIGOLOCAL.Value:=0;

        //tenta localizar algum código do produto.
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
        DM.QYAux.ParamByName('fornecedor').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value; //o código do cliente nao é o mesmo do fornecedor.
        DM.QYAux.ParamByName('produto_fornecedor').AsString:=DUIMPImporter.MemTableItens.FieldByName('CodigoProduto').AsString;
        DM.QYAux.Open;
        DM.QYAux.FetchAll;
        if DM.QYAux.RecordCount=1 then
        TBDuimpItensDUI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
        DM.QYAux.Close;

        //ja deixa o produto no registro certo.
        if TBDuimpItensDUI_CODIGOLOCAL.Value>0 then
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=TBDuimpItensDUI_CODIGOLOCAL.Value;
          DM.TBProdutos.Open;
        end;
        //...

        {$REGION 'verifica se existe a unidade cadastrada.'}
//        DM.QYAux.Close;
//        DM.QYAux.SQL.Clear;
//        DM.QYAux.SQL.Add('select count(*) as QTDE from UNIDADES where UNI_CODIGO=:codigo');
//        DM.QYAux.ParamByName('codigo').AsString:=DUIMPImporter.MemTableItens.FieldByName('UnidadeComercial').AsString;
//        DM.QYAux.Open;
//        if DM.QYAux.FieldByName('QTDE').AsInteger=0 then
//        begin
//          DM2.TBUnidades.Insert;
//          DM2.TBUnidadesUNI_CODIGO.Value:=Copy(DUIMPImporter.MemTableItens.FieldByName('UnidadeComercial').AsString,1,3);
//          DM2.TBUnidadesUNI_DESCRICAO.Value:=DUIMPImporter.MemTableItens.FieldByName('UnidadeComercial').AsString;
//          DM2.TBUnidades.Post;
//        end;
//        DM.QYAux.Close;
        {$ENDREGION}

        //        Add('NumeroDuimp', ftString, 20);
        //        Add('NumeroItem', ftInteger);
        //        Add('CodigoProduto', ftString, 30);
        //        Add('NCM', ftString, 10);
        //        Add('Denominacao', ftString, 255);
        //        Add('QtdeComercial', ftFloat);
        //        Add('UnidadeComercial', ftString, 20);
        //        Add('ValorUnitarioMoeda', ftFloat);
        //        Add('VMLE_Real', ftFloat);
        //        Add('FabricanteNome', ftString, 150);
        //00 - MERCADORIA PARA REVENDA


        //TBDuimpItensDUI_CEST
        TBDuimpItensDUI_CLASSFISCAL.Value:=DUIMPImporter.MemTableItens.FieldByName('NCM').AsString;
        TBDuimpItensDUI_CODIGO.Value     :=DUIMPImporter.MemTableItens.FieldByName('CodigoProduto').AsString;
        //TBDuimpItensDUI_CODIGOBARRAS     :=
        //TBDuimpItensDUI_CODIGOLOCAL      :=
        TBDuimpItensDUI_CSTCOFINS.Value  :=DM.TBParametrosPAR_CSTCOFINSPADRAO.Value;
        TBDuimpItensDUI_CSTICMS.Value    :=DM.TBParametrosPAR_CSTICMSPADRAO.Value;
        TBDuimpItensDUI_CSTIPI.Value     :=DM.TBParametrosPAR_CSTIPIPADRAO.Value;
        TBDuimpItensDUI_CSTPIS.Value     :=DM.TBParametrosPAR_CSTPISPADRAO.Value;
        TBDuimpItensDUI_EXCECAO.Value    :=0;
        TBDuimpItensDUI_FAMILIA.Value    :=DM.TBParametrosPAR_PROFAMILIA.Value;
        //TBDuimpItensDUI_FCI
        TBDuimpItensDUI_GRUPO.Value      :=DM.TBParametrosPAR_PROGRUPO.Value;
        TBDuimpItensDUI_MARCA.Value      :=DM.TBParametrosPAR_PROMARCA.Value;
        TBDuimpItensDUI_MODICMS.Value    :='0 - MARGEM VALOR AGREGADO (%)';
        TBDuimpItensDUI_MODICMSST.Value  :='0 - PRECO TABELADO OU MAXIMO SUGERIDO';
        TBDuimpItensDUI_NOME.Value       :=DUIMPImporter.MemTableItens.FieldByName('Denominacao').AsString;
        TBDuimpItensDUI_ORIGEM.Value     :='0 - NACIONAL';
        TBDuimpItensDUI_PESO.Value       :=0;
        TBDuimpItensDUI_QUANTIDADE.Value :=DUIMPImporter.MemTableItens.FieldByName('QtdeComercial').AsFloat;
        TBDuimpItensDUI_SEQUENCIA.Value  :=DUIMPImporter.MemTableItens.FieldByName('NumeroItem').AsInteger;
        TBDuimpItensDUI_UNIDADE.Value    :='UND'; //Copy(DUIMPImporter.MemTableItens.FieldByName('UnidadeComercial').AsString,1,3);
        TBDuimpItensDUI_VALORTOTAL.Value :=DUIMPImporter.MemTableItens.FieldByName('VMLE_Real').AsFloat;
        TBDuimpItensDUI_VALORUNIT.Value  :=DUIMPImporter.MemTableItens.FieldByName('ValorUnitarioMoeda').AsFloat;

        TBDuimpItensFAM_DESCRICAO.Value  :=DM.TBFamiliasFAM_DESCRICAO.Value;
        TBDuimpItensGRU_DESCRICAO.Value  :=DM.TBGruposGRU_DESCRICAO.Value;
        TBDuimpItensMAR_DESCRICAO.Value  :=DM2.TBMarcasMAR_DESCRICAO.Value;

        TBDuimpItens.Post;
        DUIMPImporter.MemTableItens.Next;
      end;

    finally
      DM.TBProdutos.EnableControls;
//      DUIMPImporter.Free;
    end;
  end;
end;

procedure TFormDuimp.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormDuimp.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormDuimp.CadastroDeFamilias1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFamilias, FormFamilias);
  FormFamilias.ShowModal;
  FormFamilias.Free;
  FormFamilias:=nil;
end;

procedure TFormDuimp.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormDuimp.CadastroDeGrupos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormGrupos, FormGrupos);
  FormGrupos.ShowModal;
  FormGrupos.Free;
  FormGrupos:=nil;
end;

procedure TFormDuimp.CadastroDeMarcas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarcas, FormMarcas);
  FormMarcas.ShowModal;
  FormMarcas.Free;
  FormMarcas:=nil;
end;

procedure TFormDuimp.DBGrid4DblClick(Sender: TObject);
var NomeProduto: String;
begin
  AbortIf(TBDuimpItens.IsEmpty,'Nenhum produto selecionado.');

  NomeProduto:=InputBox('Alterar Descrição.','Digite a descrição do Produto',TBDuimpItensDUI_NOME.Value);
  AbortIf(NomeProduto='','Descrição inválida.');

  if NomeProduto<>TBDuimpItensDUI_NOME.Value then
  begin
    TBDuimpItens.Edit;
    TBDuimpItensDUI_NOME.Value:=UpperCase(Copy(NomeProduto,1,100));
    TBDuimpItens.Post;

    if TBDuimpItensDUI_CODIGOLOCAL.Value>0 then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=TBDuimpItensDUI_CODIGOLOCAL.Value;
      DM.TBProdutos.Open;
      DM.TBProdutos.Edit;
      DM.TBProdutosPRO_NOME.Value:=UpperCase(Copy(NomeProduto,1,100));
      DM.TBProdutos.Post;
    end;
  end;
end;

procedure TFormDuimp.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //$8f8fff = vermelho.
  //$7edf71 = verde
  if Column.Field=TBDuimpItensDUI_CODIGOLOCAL then
  begin
    if TBDuimpItensDUI_CODIGOLOCAL.Value=0 then
    DBGrid4.Canvas.Brush.Color:=$8f8fff else
    DBGrid4.Canvas.Brush.Color:=$7edf71;

    //DBGrid4.Canvas.Font.Color:=clRed else
    //DBGrid4.Canvas.Font.Color:=clBlack;

    //DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    DBGrid4.Canvas.FillRect(Rect);
    DBGrid4.DefaultDrawDataCell(Rect,Column.Field,State);
  end;

  //DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
end;

procedure TFormDuimp.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDuimp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(DUIMPImporter) then
  FreeAndNil(DUIMPImporter);
  //DUIMPImporter.Free;
end;

procedure TFormDuimp.FormCreate(Sender: TObject);
begin
  Label10.Caption:='';
  FileOpenDialog1.DefaultFolder:=DM.TBParametrosPAR_REPOSITORIONFE.Value;
  AbrirXML1.Click;
end;

procedure TFormDuimp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDuimp.MenuItem1Click(Sender: TObject);
begin
  AbortIf(TBDuimpItens.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(TBDuimpItensDUI_CODIGOLOCAL.AsInteger<>0,'Já foi encontrado um produto associado a este item.');

  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if MessageDlg('Associar o código do fornecedor ('+TBDuimpItensDUI_CODIGO.AsString+') ao produto '+FormProdutosLoc.QYProdutosPRO_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      //localiza o produto.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;

      //associa o codigo do XML ao cadastro do produto local.
      if not DM.TBProdutosCodigos.Locate('PCO_FORNECEDOR;PCO_CODIGOFORNECEDOR',VarArrayOf([DM.TBFornecedoresFOR_CODIGO.Value,TBDuimpItensDUI_CODIGO.AsString]),[]) then
      begin
        DM.TBProdutosCodigos.Insert;
        DM.TBProdutosCodigosPCO_FORNECEDOR.Value:=DM.TBFornecedoresFOR_CODIGO.Value;
        DM.TBProdutosCodigosPCO_CODIGOFORNECEDOR.Value:=TBDuimpItensDUI_CODIGO.AsString;
        DM.TBProdutosCodigos.Post;
      end;

      TBDuimpItens.Edit;
      TBDuimpItensDUI_CODIGOLOCAL.Value:=DM.TBProdutosPRO_CODIGO.Value;
      TBDuimpItens.Post;

    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormDuimp.MenuItem3Click(Sender: TObject);
var NomeProduto: String;
begin
  AbortIf(TBDuimpItens.IsEmpty,'Nenhum produto selecionado.');

  NomeProduto:=InputBox('Alterar Descrição.','Digite a descrição do Produto',TBDuimpItensDUI_NOME.Value);
  AbortIf(NomeProduto='','Descrição inválida.');

  if NomeProduto<>TBDuimpItensDUI_NOME.Value then
  begin
    TBDuimpItens.Edit;
    TBDuimpItensDUI_NOME.Value:=UpperCase(Copy(NomeProduto,1,100));
    TBDuimpItens.Post;

    if TBDuimpItensDUI_CODIGOLOCAL.Value>0 then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=TBDuimpItensDUI_CODIGOLOCAL.Value;
      DM.TBProdutos.Open;
      DM.TBProdutos.Edit;
      DM.TBProdutosPRO_NOME.Value:=UpperCase(Copy(NomeProduto,1,100));
      DM.TBProdutos.Post;
    end;
  end;
end;

procedure TFormDuimp.MenuItem4Click(Sender: TObject);
begin
  AbortIf(TBDuimpItens.IsEmpty,'Nenhum produto selecionado.');

  Application.CreateForm(TFormFamiliasLoc, FormFamiliasLoc);
  FormFamiliasLoc.ShowModal;
  if FamiliasLoc.Procurar then
  begin
    TBDuimpItens.Edit;
    TBDuimpItensDUI_FAMILIA.Value:=FormFamiliasLoc.QYFamiliasFAM_CODIGO.Value;
    TBDuimpItensFAM_DESCRICAO.Value:=FormFamiliasLoc.QYFamiliasFAM_DESCRICAO.Value;
    TBDuimpItens.Post;

    if TBDuimpItensDUI_CODIGOLOCAL.Value > 0 then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=TBDuimpItensDUI_CODIGOLOCAL.Value;
      DM.TBProdutos.Open;
      DM.TBProdutos.Edit;
      DM.TBProdutosPRO_FAMILIA.Value:=FormFamiliasLoc.QYFamiliasFAM_CODIGO.Value;
      DM.TBProdutosFAM_DESCRICAO.Value:=FormFamiliasLoc.QYFamiliasFAM_DESCRICAO.Value;
      DM.TBProdutos.Post;
    end;
  end;
  FormFamiliasLoc.Free;
  FormFamiliasLoc:=nil;
end;

procedure TFormDuimp.MenuItem5Click(Sender: TObject);
begin
  AbortIf(TBDuimpItens.IsEmpty,'Nenhum produto selecionado.');

  Application.CreateForm(TFormGruposLoc, FormGruposLoc);
  FormGruposLoc.ShowModal;
  if GruposLoc.Procurar then
  begin
    TBDuimpItens.Edit;
    TBDuimpItensDUI_GRUPO.Value:=FormGruposLoc.QYGruposGRU_CODIGO.Value;
    TBDuimpItensGRU_DESCRICAO.Value:=FormGruposLoc.QYGruposGRU_DESCRICAO.Value;
    TBDuimpItens.Post;

    if TBDuimpItensDUI_CODIGOLOCAL.Value > 0 then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=TBDuimpItensDUI_CODIGOLOCAL.Value;
      DM.TBProdutos.Open;
      DM.TBProdutos.Edit;
      DM.TBProdutosPRO_GRUPO.Value:=FormGruposLoc.QYGruposGRU_CODIGO.Value;
      DM.TBProdutosGRU_DESCRICAO.Value:=FormGruposLoc.QYGruposGRU_DESCRICAO.Value;
      DM.TBProdutos.Post;
    end;
  end;
  FormGruposLoc.Free;
  FormGruposLoc:=nil;
end;

procedure TFormDuimp.MenuItem6Click(Sender: TObject);
begin
  AbortIf(TBDuimpItens.IsEmpty,'Nenhum produto selecionado.');

  Application.CreateForm(TFormMarcasLoc, FormMarcasLoc);
  FormMarcasLoc.ShowModal;
  if MarcasLoc.Procurar then
  begin
    TBDuimpItens.Edit;
    TBDuimpItensDUI_MARCA.Value:=FormMarcasLoc.QYMarcasMAR_CODIGO.Value;
    TBDuimpItensMAR_DESCRICAO.Value:=FormMarcasLoc.QYMarcasMAR_DESCRICAO.Value;
    TBDuimpItens.Post;

    if TBDuimpItensDUI_CODIGOLOCAL.Value > 0 then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=TBDuimpItensDUI_CODIGOLOCAL.Value;
      DM.TBProdutos.Open;
      DM.TBProdutos.Edit;
      DM.TBProdutosPRO_MARCA.Value:=FormMarcasLoc.QYMarcasMAR_CODIGO.Value;
      DM.TBProdutosMAR_DESCRICAO.Value:=FormMarcasLoc.QYMarcasMAR_DESCRICAO.Value;
      DM.TBProdutos.Post;
    end;
  end;
  FormMarcasLoc.Free;
  FormMarcasLoc:=nil;
end;

procedure TFormDuimp.AtualizarPedidoConformeXML1Click(Sender: TObject);
var LocalZero: Boolean;
  S: String;
begin
  AbortIf(TBDuimpItens.IsEmpty,'Nenhum dado disponível para atualizar.');

  if MessageDlg('Atualizar o pedido conforme o XML?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    LocalZero:=False;
    TBDuimpItens.First;
    while not TBDuimpItens.Eof do
    begin
      //alterado para o if abaixo. if (TBNFItensNFI_CODIGOLOCAL.Value<>0) and (TBNFItensNFI_TEMNOPEDIDO.Value='N') then
      if (TBDuimpItensDUI_CODIGOLOCAL.Value<>0) then
      begin
        //localiza o item.
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=TBDuimpItensDUI_CODIGOLOCAL.Value;
        DM.TBProdutos.Open;

        //insere o novo item.
        DM.TBComprasItens.Insert;
        {$REGION 'Preenche campos'}
        DM.TBComprasItensCOI_ALIQCOFINS.Value     :=DM.TBProdutosPRO_ALIQCOFINS.Value;
        DM.TBComprasItensCOI_ALIQCOFINSST.Value   :=DM.TBProdutosPRO_ALIQCOFINSST.Value;
        DM.TBComprasItensCOI_ALIQICMS.Value       :=DM.TBProdutosPRO_ALIQICMS.Value;
        DM.TBComprasItensCOI_ALIQICMSADICST.Value :=DM.TBProdutosPRO_ALIQICMSADICST.Value;
        DM.TBComprasItensCOI_ALIQICMSRED.Value    :=DM.TBProdutosPRO_ALIQICMSRED.Value;
        DM.TBComprasItensCOI_ALIQICMSST.Value     :=DM.TBProdutosPRO_ALIQICMSST.Value;
        DM.TBComprasItensCOI_ALIQIPI.Value        :=DM.TBProdutosPRO_ALIQIPI.Value;
        DM.TBComprasItensCOI_ALIQISS.Value        :=DM.TBProdutosPRO_ALIQISS.Value;
        DM.TBComprasItensCOI_ALIQPIS.Value        :=DM.TBProdutosPRO_ALIQPIS.Value;
        DM.TBComprasItensCOI_ALIQPISST.Value      :=DM.TBProdutosPRO_ALIQPISST.Value;
        DM.TBComprasItensCOI_ALMOXARIFADO.Value   :=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
        DM.TBComprasItensCOI_BASECOFINS.Value     :=0;
        DM.TBComprasItensCOI_BASECOFINSST.Value   :=0;
        DM.TBComprasItensCOI_BASEICMS.Value       :=0;
        DM.TBComprasItensCOI_BASEICMSRED.Value    :=0;
        DM.TBComprasItensCOI_BASEICMSST.Value     :=0;
        DM.TBComprasItensCOI_BASEIPI.Value        :=0;
        DM.TBComprasItensCOI_BASEISS.Value        :=0;
        DM.TBComprasItensCOI_BASEPIS.Value        :=0;
        DM.TBComprasItensCOI_BASEPISST.Value      :=0;
        DM.TBComprasItensCOI_CFOP.Value           :=DM.TBComprasCOM_CFOP.Value;
        DM.TBComprasItensCOI_CLASSFISCAL.Value    :=TBDuimpItensDUI_CLASSFISCAL.Value;
        //DM.TBComprasItensCOI_CODIGO.Value:= //AUTOMATICO.
        DM.TBComprasItensCOI_CODIGOBARRAS.Value   :=DM.TBProdutosPRO_CODIGOBARRAS.Value;
        DM.TBComprasItensCOI_COMPLEMENTO.Value    :='';
        DM.TBComprasItensCOI_COMPOEBASEICMS.Value :=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
        //DM.TBComprasItensCOI_COMPOEBASEICMSST.Value:= //??DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
        DM.TBComprasItensCOI_CONVERSAO.Value      :=DM.TBProdutosPRO_CONVERSAO.Value;
        //DM.TBComprasItensCOI_COMPRA.Value:= //ASSOCIADO NO AFTER INSERT.
        DM.TBComprasItensCOI_CSTCOFINS.Value      :=DM.TBProdutosPRO_CSTCOFINS.Value;
        DM.TBComprasItensCOI_CSTICMS.Value        :=DM.TBProdutosPRO_CSTICMS.Value;
        DM.TBComprasItensCOI_CSTIPI.Value         :=DM.TBProdutosPRO_CSTIPI.Value;
        DM.TBComprasItensCOI_CSTPIS.Value         :=DM.TBProdutosPRO_CSTPIS.Value;
        DM.TBComprasItensCOI_DESCPORC.Value       :=0;
        DM.TBComprasItensCOI_DESCRICAO.Value      :=DM.TBProdutosPRO_NOME.Value;
        DM.TBComprasItensCOI_DESCVALOR.Value      :=0;
        DM.TBComprasItensCOI_FCI.Value            :=DM.TBProdutosPRO_FCI.Value;
        DM.TBComprasItensCOI_INFOADICIONAL.Value  :='';
        DM.TBComprasItensCOI_MODICMS.Value        :=DM.TBProdutosPRO_MODICMS.Value;
        DM.TBComprasItensCOI_MODICMSST.Value      :=DM.TBProdutosPRO_MODICMSST.Value;
        DM.TBComprasItensCOI_ORIGEM.Value         :=DM.TBProdutosPRO_ORIGEM.Value;
        DM.TBComprasItensCOI_PESO.Value           :=DM.TBProdutosPRO_PESO.Value;
        DM.TBComprasItensCOI_PESOTOTAL.Value      :=0;
        DM.TBComprasItensCOI_PRODUTO.Value        :=DM.TBProdutosPRO_CODIGO.Value; //TBNFItensNFI_CODIGOLOCAL.Value;
        DM.TBComprasItensCOI_PRODUTOREAL.Value    :=DM.TBProdutosPRO_PRODUTOREAL.Value;
        DM.TBComprasItensCOI_QUANTIDADE.Value     :=TBDuimpItensDUI_QUANTIDADE.Value;
        DM.TBComprasItensCOI_TIPO.Value           :=DM.TBProdutosPRO_TIPO.Value;
        DM.TBComprasItensCOI_TIPOISS.Value        :=DM.TBProdutosPRO_TIPOISS.Value;
        DM.TBComprasItensCOI_UNIDADE.Value        :=DM.TBProdutosPRO_UNIDADE.Value; //tras do produto. 27/01/2020. TBNFItensNFI_UNIDADE.Value;
        DM.TBComprasItensCOI_VALORACESSORIAS.Value:=0;
        DM.TBComprasItensCOI_VALORCOFINS.Value    :=0;
        DM.TBComprasItensCOI_VALORCOFINSST.Value  :=0;
        DM.TBComprasItensCOI_VALORFRETE.Value     :=0;
        DM.TBComprasItensCOI_VALORICMS.Value      :=0;
        DM.TBComprasItensCOI_VALORICMSST.Value    :=0;
        DM.TBComprasItensCOI_VALORIPI.Value       :=0;
        DM.TBComprasItensCOI_VALORISS.Value       :=0;
        DM.TBComprasItensCOI_VALORPIS.Value       :=0;
        DM.TBComprasItensCOI_VALORPISST.Value     :=0;
        DM.TBComprasItensCOI_VALORSEGURO.Value    :=0;
        DM.TBComprasItensCOI_VALORTOTAL.Value     :=0;
        DM.TBComprasItensCOI_VALORTOTALBRUTO.Value:=0;
        DM.TBComprasItensCOI_VALORTRIBUTOS.Value  :=0;
        DM.TBComprasItensCOI_VALORUNIT.Value      :=TBDuimpItensDUI_VALORUNIT.Value;
        {$ENDREGION}
        DM.TBComprasItens.Post;

        //atualiza o campo "tem no pedido".
        //Codigo:=TBNFItensNFI_CODIGO.Value;
//        TBDuimpItens.Edit;
//        TBDuimpItensDUI_TEMNOPEDIDO.Value:='S';
//        TBDuimpItens.Post;
        //TBNFItens.Locate('NFI_CODIGO',Codigo,[]);
      end;

      //codigo local igual a zero, não processa, pois não sabemos qual o produto relacionado.
      if TBDuimpItensDUI_CODIGOLOCAL.Value=0 then
      LocalZero:=True;
      //...
      TBDuimpItens.Next;
    end;

    if LocalZero then
    MessageDlg('Atualização feita com sucesso, mas existem produtos no XML que não foram encontrados no cadastro de produtos.'+#13#10+'Verifique os itens com "Produto Local" igual a zero.',mtWarning,[mbOk],0) else
    MessageDlg('Atualização feita com sucesso.',mtWarning,[mbOk],0);
  end;
end;

end.
