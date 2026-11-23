unit ProdutosImportar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, Vcl.Menus, Datasnap.DBClient, System.ImageList, Vcl.ImgList,
  PngImageList, ACBrBase, ACBrDFe, ACBrNFe, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.StdCtrls, pcnConversao, pcnConversaoNFe;

type
  TFormProdutosImportar = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Label17: TLabel;
    Label15: TLabel;
    ACBrNFe1: TACBrNFe;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AbrirXML1: TMenuItem;
    CadastrarProdutoSelecionado1: TMenuItem;
    CadastrarTodosOsProdutos1: TMenuItem;
    N4: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    FileOpenDialog1: TFileOpenDialog;
    TBNF: TClientDataSet;
    DSNF: TDataSource;
    TBNFItens: TClientDataSet;
    DSNFItens: TDataSource;
    PopupMenu1: TPopupMenu;
    InformarOProdutoLocal1: TMenuItem;
    CadastrarProdutoSelecionado2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton6: TPngSpeedButton;
    AbrirXML1Button: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    Bevel1: TBevel;
    CadastrarProdutoSelecionado1Button: TPngSpeedButton;
    CadastrarTodosOsProdutos1Button: TPngSpeedButton;
    TBNFItensNFI_CEST: TStringField;
    TBNFItensNFI_CLASSFISCAL: TStringField;
    TBNFItensNFI_CODIGO: TStringField;
    TBNFItensNFI_CODIGOBARRAS: TStringField;
    TBNFItensNFI_CODIGOLOCAL: TIntegerField;
    TBNFItensNFI_CSTCOFINS: TIntegerField;
    TBNFItensNFI_CSTICMS: TIntegerField;
    TBNFItensNFI_CSTIPI: TIntegerField;
    TBNFItensNFI_CSTPIS: TIntegerField;
    TBNFItensNFI_EXCECAO: TIntegerField;
    TBNFItensNFI_FAMILIA: TIntegerField;
    TBNFItensNFI_FCI: TStringField;
    TBNFItensNFI_GRUPO: TIntegerField;
    TBNFItensNFI_MARCA: TIntegerField;
    TBNFItensNFI_MODICMS: TStringField;
    TBNFItensNFI_MODICMSST: TStringField;
    TBNFItensNFI_NOME: TStringField;
    TBNFItensNFI_ORIGEM: TStringField;
    TBNFItensNFI_PESO: TFloatField;
    TBNFItensNFI_SEQUENCIA: TIntegerField;
    TBNFItensNFI_UNIDADE: TStringField;
    TBNFItensNFI_VALORUNIT: TFloatField;
    TBNFItensFAM_DESCRICAO: TStringField;
    TBNFItensGRU_DESCRICAO: TStringField;
    TBNFItensMAR_DESCRICAO: TStringField;
    AlterarFamilia1Button: TPngSpeedButton;
    AlterarGrupo1Button: TPngSpeedButton;
    AlterarMarca1Button: TPngSpeedButton;
    CadastroDeFamilias1Button: TPngSpeedButton;
    CadastroDeGrupos1Button: TPngSpeedButton;
    CadastroDeMarcas1Button: TPngSpeedButton;
    CadastroDeFamilias1: TMenuItem;
    CadastroDeGrupos1: TMenuItem;
    CadastroDeMarcas1: TMenuItem;
    N2: TMenuItem;
    AlterarFamilia1: TMenuItem;
    AlterarGrupo1: TMenuItem;
    AlterarMarca1: TMenuItem;
    AlterarDescricao1: TMenuItem;
    AlterarFamilia2: TMenuItem;
    AlterarGrupo2: TMenuItem;
    AlterarMarca2: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure InformarOProdutoLocal1Click(Sender: TObject);
    procedure CadastrarProdutoSelecionado2Click(Sender: TObject);
    procedure AbrirXML1Click(Sender: TObject);
    procedure CadastrarProdutoSelecionado1Click(Sender: TObject);
    procedure CadastrarTodosOsProdutos1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CadastroDeFamilias1Click(Sender: TObject);
    procedure CadastroDeGrupos1Click(Sender: TObject);
    procedure CadastroDeMarcas1Click(Sender: TObject);
    procedure AlterarFamilia1Click(Sender: TObject);
    procedure AlterarGrupo1Click(Sender: TObject);
    procedure AlterarMarca1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CadastrarProduto;
  public
    { Public declarations }
  end;

var
  FormProdutosImportar: TFormProdutosImportar;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2, Clientes, Fornecedores,
  ProdutosLoc, Familias, Grupos, Marcas, FamiliasLoc, GruposLoc, MarcasLoc;
{$R *.dfm}

procedure TFormProdutosImportar.CadastrarProdutoSelecionado1Click(Sender: TObject);
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(TBNFItensNFI_CODIGOLOCAL.Value>0,'Este produto já está cadastrado e tem o código '+TBNFItensNFI_CODIGOLOCAL.Value.ToString);

  if MessageDlg('Deseja cadastrar o produto selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.TBProdutos.DisableControls;
    //mesmo com código local=0 tenta localizar novamente o produto nos códigos dos fornecedores.
    //pode ser que o usuário tenha cadastrado um dos produtos individualmente e o XML contém mais de um produto igual.
    Label10.Caption:='Cadastrando Produto: '+TBNFItensNFI_NOME.Value+'...';
    Application.ProcessMessages;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
    DM.QYAux.ParamByName('fornecedor').AsInteger:=StrToInt(Label7.Caption); //DM.TBFornecedoresFOR_CODIGO.Value;
    DM.QYAux.ParamByName('produto_fornecedor').AsString:=TBNFItensNFI_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.FetchAll;
    if DM.QYAux.RecordCount=0 then
    CadastrarProduto else
    begin
      //só chega aqui se o código local é zero. (if acima).
      TBNFItens.Edit;
      TBNFItensNFI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
      TBNFItens.Post;
    end;
    DM.QYAux.Close;
    Screen.Cursor:=crDefault;
    Label10.Caption:='';
    DM.TBProdutos.EnableControls;
    MessageDlg('Cadastro do produto efetuado.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutosImportar.CadastrarProdutoSelecionado2Click(Sender: TObject);
begin
  AbortIf(TBNFItensNFI_CODIGOLOCAL.Value>0,'Este produto já está cadastrado e tem o código '+TBNFItensNFI_CODIGOLOCAL.Value.ToString);

  if MessageDlg('Deseja cadastrar o produto selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    //mesmo com código local=0 tenta localizar novamente o produto nos códigos dos fornecedores.
    //pode ser que o usuário tenha cadastrado um dos produtos individualmente e o XML contém mais de um produto igual.
    Label10.Caption:='Cadastrando Produto: '+TBNFItensNFI_NOME.Value+'...';
    Application.ProcessMessages;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
    DM.QYAux.ParamByName('fornecedor').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value; //o código do cliente nao é o mesmo do fornecedor.
    DM.QYAux.ParamByName('produto_fornecedor').AsString:=TBNFItensNFI_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.FetchAll;
    if DM.QYAux.RecordCount=0 then
    CadastrarProduto else
    begin
      //só chega aqui se o código local é zero. (if acima).
      TBNFItens.Edit;
      TBNFItensNFI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
      TBNFItens.Post;
    end;
    DM.QYAux.Close;
    Screen.Cursor:=crDefault;
    Label10.Caption:='';
    MessageDlg('Cadastro do produto efetuado.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutosImportar.CadastrarTodosOsProdutos1Click(Sender: TObject);
var BM: TBookmark;
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');

  if MessageDlg('Deseja cadastrar todos os produtos faltantes no SISTEMA?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.TBProdutos.DisableControls;
    TBNFItens.First;
    TBNFItens.DisableControls;
    while not TBNFItens.Eof do
    begin
      if TBNFItensNFI_CODIGOLOCAL.Value=0 then
      begin
        //mesmo com código local=0 tenta localizar novamente o produto nos códigos dos fornecedores.
        //pode ser que o usuário tenha cadastrado um dos produtos individualmente e o XML contém mais de um produto igual.
        Label10.Caption:='Cadastrando Produto: '+TBNFItensNFI_NOME.Value+'...';
        Application.ProcessMessages;
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
        DM.QYAux.ParamByName('fornecedor').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value; //o código do cliente nao é o mesmo do fornecedor.
        DM.QYAux.ParamByName('produto_fornecedor').AsString:=TBNFItensNFI_CODIGO.Value;
        DM.QYAux.Open;
        DM.QYAux.FetchAll;
        if DM.QYAux.RecordCount=0 then
        CadastrarProduto else
        begin
          //só chega aqui se o código local é zero. (if acima).
          TBNFItens.Edit;
          TBNFItensNFI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
          TBNFItens.Post;
        end;
        DM.QYAux.Close;
      end;
      TBNFItens.Next;
    end;
    TBNFItens.EnableControls;
    Screen.Cursor:=crDefault;
    Label10.Caption:='';
    DM.TBProdutos.EnableControls;
    MessageDlg('Produtos Cadastrados!',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutosImportar.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormProdutosImportar.CadastroDeFamilias1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFamilias, FormFamilias);
  FormFamilias.ShowModal;
  FormFamilias.Free;
  FormFamilias:=nil;
end;

procedure TFormProdutosImportar.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormProdutosImportar.CadastroDeGrupos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormGrupos, FormGrupos);
  FormGrupos.ShowModal;
  FormGrupos.Free;
  FormGrupos:=nil;
end;

procedure TFormProdutosImportar.CadastroDeMarcas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarcas, FormMarcas);
  FormMarcas.ShowModal;
  FormMarcas.Free;
  FormMarcas:=nil;
end;

procedure TFormProdutosImportar.DBGrid1DblClick(Sender: TObject);
var NomeProduto: String;
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');

  NomeProduto:=InputBox('Alterar Descrição.','Digite a descrição do Produto',TBNFItensNFI_NOME.Value);
  AbortIf(NomeProduto='','Descrição inválida.');

  if NomeProduto<>TBNFItensNFI_NOME.Value then
  begin
    TBNFItens.Edit;
    TBNFItensNFI_NOME.Value:=UpperCase(Copy(NomeProduto,1,100));
    TBNFItens.Post;

    if TBNFItensNFI_CODIGOLOCAL.Value>0 then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=TBNFItensNFI_CODIGOLOCAL.Value;
      DM.TBProdutos.Open;
      DM.TBProdutos.Edit;
      DM.TBProdutosPRO_NOME.Value:=UpperCase(Copy(NomeProduto,1,100));
      DM.TBProdutos.Post;
    end;
  end;
end;

procedure TFormProdutosImportar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //$8f8fff = vermelho.
  //$7edf71 = verde
  if Column.Field=TBNFItensNFI_CODIGOLOCAL then
  begin
    if TBNFItensNFI_CODIGOLOCAL.Value=0 then
    DBGrid1.Canvas.Brush.Color:=$8f8fff else
    DBGrid1.Canvas.Brush.Color:=$7edf71;

    //DBGrid1.Canvas.Font.Color:=clRed else
    //DBGrid1.Canvas.Font.Color:=clBlack;

    //DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
  end;

  //DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
end;

procedure TFormProdutosImportar.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosImportar.FormCreate(Sender: TObject);
begin
  Label1.Caption:='';
  Label2.Caption:='';
  Label4.Caption:='';
  Label6.Caption:='';
  Label7.Caption:='';
  Label8.Caption:='';
  Label10.Caption:='';
  FileOpenDialog1.DefaultFolder:=DM.TBParametrosPAR_REPOSITORIONFE.Value;
  AbrirXML1.Click;
end;

procedure TFormProdutosImportar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosImportar.InformarOProdutoLocal1Click(Sender: TObject);
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(TBNFItensNFI_CODIGOLOCAL.Value<>0,'Já foi encontrado um produto associado a este item.');

  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if MessageDlg('Associar o código do fornecedor ('+TBNFItensNFI_CODIGO.Value+') ao produto '+FormProdutosLoc.QYProdutosPRO_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      //localiza o produto.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;

      //associa o codigo do XML ao cadastro do produto local.
      if not DM.TBProdutosCodigos.Locate('PCO_FORNECEDOR;PCO_CODIGOFORNECEDOR',VarArrayOf([DM.TBFornecedoresFOR_CODIGO.Value,TBNFItensNFI_CODIGO.Value]),[]) then
      begin
        DM.TBProdutosCodigos.Insert;
        DM.TBProdutosCodigosPCO_FORNECEDOR.Value:=DM.TBFornecedoresFOR_CODIGO.Value;
        DM.TBProdutosCodigosPCO_CODIGOFORNECEDOR.Value:=TBNFItensNFI_CODIGO.Value;
        DM.TBProdutosCodigos.Post;
      end;

    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormProdutosImportar.AbrirXML1Click(Sender: TObject);
var I: Integer;
  S: String;
begin
  if FileOpenDialog1.Execute then
  begin
    TBNFItens.EmptyDataSet;
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(FileOpenDialog1.FileName);
    Label4.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    Insert('.',S,3); Insert('.',S,7); Insert('/',S,11); Insert('-',S,16);
    Label6.Caption:=S;

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

    {$REGION 'Checagem do emitente na tabela de clientes'}
    //tenta localizar o emitente da NFe no cadastro de clientes.
    //se nao encontra, cadastra... se encontra, então localiza ele na tabela de clientes.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select first(1) CLI_CODIGO, CLI_NOME, CLI_CNPJ from CLIENTES where CLI_CNPJ=:cnpj or CLI_NOME=:nome');
    DM.QYAux.ParamByName('cnpj').AsString:=Label6.Caption;
    DM.QYAux.ParamByName('nome').AsString:=Label4.Caption;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('CLI_NOME').AsString='' then
    begin
      S:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
      Insert('-',S,6);
      DM.TBClientes.Insert;
      DM.TBClientesCLI_BAIRRO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
      DM.TBClientesCLI_CEP.Value:=S; //ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP;
      DM.TBClientesCLI_CIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
      DM.TBClientesCLI_CIDADECODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
      DM.TBClientesCLI_CNPJ.Value:=Label6.Caption;
      DM.TBClientesCLI_COMPLEMENTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
      DM.TBClientesCLI_ENDERECO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
      DM.TBClientesCLI_ESTADO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
      DM.TBClientesCLI_ESTADOCODIGO.Value:=GetUFCode(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF);
      //DM.TBClientesCLI_FONE1.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
      DM.TBClientesCLI_IE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IM<>'' then
      DM.TBClientesCLI_IM.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IM);
      DM.TBClientesCLI_NOME.Value:=Label4.Caption;
      DM.TBClientesCLI_NUMERO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
      DM.TBClientesCLI_PAIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais;
      DM.TBClientesCLI_PAISCODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais;
      DM.TBClientes.Post;
      MessageDlg('O emitente deste XML foi cadastrado como Cliente.',mtInformation,[mbOk],0);
    end else
    begin
      DM.TBClientes.Close;
      DM.TBClientes.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CLI_CODIGO').AsInteger;
      DM.TBClientes.Open;
    end;
    Label1.Caption:=DM.TBClientesCLI_CODIGO.Value.ToString;
    Label2.Caption:=DM.TBClientesCLI_NOME.Value;
    DM.QYAux.Close;
    {$ENDREGION}

    {$REGION 'Checagem do emitente na tabela de fornecedores'}
    //tenta localizar o emitente da NFe no cadastro de fornecedores. Os produtos se referenciam ao fornecedor.
    //se nao encontra, cadastra... se encontra, então localiza ele na tabela de fornecedores.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select first(1) FOR_CODIGO, FOR_NOME, FOR_CNPJ from FORNECEDORES where FOR_CNPJ=:cnpj or FOR_NOME=:nome');
    DM.QYAux.ParamByName('cnpj').AsString:=Label6.Caption;
    DM.QYAux.ParamByName('nome').AsString:=Label4.Caption;
    DM.QYAux.Open;
    if DM.QYAux.FieldByName('FOR_NOME').AsString='' then
    begin
      S:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
      Insert('-',S,6);
      DM.TBFornecedores.Insert;
      DM.TBFornecedoresFOR_BAIRRO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
      DM.TBFornecedoresFOR_CEP.Value:=S; //ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP;
      DM.TBFornecedoresFOR_CIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
      DM.TBFornecedoresFOR_CIDADECODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
      DM.TBFornecedoresFOR_CNPJ.Value:=Label6.Caption;
      DM.TBFornecedoresFOR_COMPLEMENTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
      DM.TBFornecedoresFOR_ENDERECO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
      DM.TBFornecedoresFOR_ESTADO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
      DM.TBFornecedoresFOR_ESTADOCODIGO.Value:=GetUFCode(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF);
      //DM.TBFornecedoresFOR_FONE1.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
      DM.TBFornecedoresFOR_IE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
      //if ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IM<>'' then
      //nao tem. DM.TBFornecedoresFOR_IM.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IM);
      DM.TBFornecedoresFOR_NOME.Value:=Label4.Caption;
      DM.TBFornecedoresFOR_NUMERO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
      DM.TBFornecedoresFOR_PAIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais;
      DM.TBFornecedoresFOR_PAISCODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais;
      DM.TBFornecedores.Post;
      MessageDlg('O emitente deste XML foi cadastrado como Fornecedor.',mtInformation,[mbOk],0);
    end else
    begin
      DM.TBFornecedores.Close;
      DM.TBFornecedores.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('FOR_CODIGO').AsInteger;
      DM.TBFornecedores.Open;
    end;
    Label7.Caption:=DM.TBFornecedoresFOR_CODIGO.Value.ToString;
    Label8.Caption:=DM.TBFornecedoresFOR_NOME.Value;
    DM.QYAux.Close;
    {$ENDREGION}

    //lista os produtos.
    for I:=0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count-1 do
    begin
      TBNFItens.Insert;
      TBNFItensNFI_CEST.Value        :=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.CEST;
      TBNFItensNFI_CLASSFISCAL.Value :=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.NCM;
      TBNFItensNFI_CODIGO.Value      :=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cProd;
      TBNFItensNFI_CODIGOBARRAS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cEan;
      TBNFItensNFI_CODIGOLOCAL.Value :=0; //tenta localizar este código na tabela local... ver mais abaixo.
      //tenta localizar algum código do produto.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
      DM.QYAux.ParamByName('fornecedor').AsInteger:=DM.TBFornecedoresFOR_CODIGO.Value; //o código do cliente nao é o mesmo do fornecedor.
      DM.QYAux.ParamByName('produto_fornecedor').AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.cProd;
      DM.QYAux.Open;
      DM.QYAux.FetchAll;
      if DM.QYAux.RecordCount=1 then
      TBNFItensNFI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
      DM.QYAux.Close;

      //ja deixa o produto no registro certo.
      if TBNFItensNFI_CODIGOLOCAL.Value>0 then
      begin
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=TBNFItensNFI_CODIGOLOCAL.Value;
        DM.TBProdutos.Open;
      end;
      //...

      if CSTCOFINSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.CST)='' then
      TBNFItensNFI_CSTCOFINS.Value:=0 else
      TBNFItensNFI_CSTCOFINS.Value:=StrToInt(CSTCOFINSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.CST));

      if CSTICMSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.CST)='' then
      TBNFItensNFI_CSTICMS.Value:=0 else
      TBNFItensNFI_CSTICMS.Value:=StrToInt(CSTICMSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.CST));

      if CSTIPIToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.CST)='' then
      TBNFItensNFI_CSTIPI.Value:=0 else
      TBNFItensNFI_CSTIPI.Value:=StrToInt(CSTIPIToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.CST));

      if CSTPISToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.CST)='' then
      TBNFItensNFI_CSTPIS.Value:=0;
      TBNFItensNFI_CSTPIS.Value:=StrToInt(CSTPISToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.CST));

      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.EXTIPI<>'' then
      TBNFItensNFI_EXCECAO.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.EXTIPI);

      if TBNFItensNFI_CODIGOLOCAL.Value>0 then
      begin
        TBNFItensNFI_FAMILIA.Value:=DM.TBProdutosPRO_FAMILIA.Value;
        TBNFItensFAM_DESCRICAO.Value:=DM.TBProdutosFAM_DESCRICAO.Value;
        TBNFItensNFI_GRUPO.Value:=DM.TBProdutosPRO_GRUPO.Value;
        TBNFItensGRU_DESCRICAO.Value:=DM.TBProdutosGRU_DESCRICAO.Value;
        TBNFItensNFI_MARCA.Value:=DM.TBProdutosPRO_MARCA.Value;
        TBNFItensMAR_DESCRICAO.Value:=DM.TBProdutosMAR_DESCRICAO.Value;
      end else
      begin
        TBNFItensNFI_FAMILIA.Value:=DM.TBParametrosPAR_PROFAMILIA.Value;
        TBNFItensFAM_DESCRICAO.Value:=DM.TBFamiliasFAM_DESCRICAO.Value;
        TBNFItensNFI_GRUPO.Value:=DM.TBParametrosPAR_PROGRUPO.Value;
        TBNFItensGRU_DESCRICAO.Value:=DM.TBGruposGRU_DESCRICAO.Value;
        TBNFItensNFI_MARCA.Value:=DM.TBParametrosPAR_PROMARCA.Value;
        TBNFItensMAR_DESCRICAO.Value:=DM2.TBMarcasMAR_DESCRICAO.Value;
      end;

      TBNFItensNFI_FCI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.nFCI;

      if modBCToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBC)<>'' then
      begin
        case StrToInt(modBCToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBC)) of
          0: TBNFItensNFI_MODICMS.Value:='0 - MARGEM VALOR AGREGADO (%)';
          1: TBNFItensNFI_MODICMS.Value:='1 - PAUTA (VALOR)';
          2: TBNFItensNFI_MODICMS.Value:='2 - PRECO TABELADO MAXIMO (VALOR)';
          3: TBNFItensNFI_MODICMS.Value:='3 - VALOR DA OPERACAO';
        end;
      end else
      TBNFItensNFI_MODICMS.Value:='0 - MARGEM VALOR AGREGADO (%)'; //padrão.

      if modBCSTToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBCST)<>'' then
      begin
        case StrToInt(modBCSTToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBCST)) of
          0: TBNFItensNFI_MODICMSST.Value:='0 - PRECO TABELADO OU MAXIMO SUGERIDO';
          1: TBNFItensNFI_MODICMSST.Value:='1 - LISTA NEGATIVA (VALOR)';
          2: TBNFItensNFI_MODICMSST.Value:='2 - LISTA POSITIVA (VALOR)';
          3: TBNFItensNFI_MODICMSST.Value:='3 - LISTA NEUTRA (VALOR)';
          4: TBNFItensNFI_MODICMSST.Value:='4 - MARGEM VALOR AGREGADO (%)';
          5: TBNFItensNFI_MODICMSST.Value:='5 - PAUTA (VALOR)';
          6: TBNFItensNFI_MODICMSST.Value:='6 - VALOR DA OPERACAO';
        end;
      end else
      TBNFItensNFI_MODICMSST.Value:='0 - PRECO TABELADO OU MAXIMO SUGERIDO';

      TBNFItensNFI_NOME.Value:=UpperCase(Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.xProd,1,100));

      if OrigToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.orig)<>'' then
      begin
        case StrToInt(OrigToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.orig)) of
          0: TBNFItensNFI_ORIGEM.Value:='0 - NACIONAL';
          1: TBNFItensNFI_ORIGEM.Value:='1 - ESTRANGEIRA - IMPORTACAO DIRETA';
          2: TBNFItensNFI_ORIGEM.Value:='2 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO';
          3: TBNFItensNFI_ORIGEM.Value:='3 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 40% E INFERIOR OU IGUAL A 70%';
          4: TBNFItensNFI_ORIGEM.Value:='4 - NACIONAL - EM CONFORMIDADE COM PROCESSOS PRODUTIVOS BASICOS';
          5: TBNFItensNFI_ORIGEM.Value:='5 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO INFERIOR OU IGUAL A 40%';
          6: TBNFItensNFI_ORIGEM.Value:='6 - ESTRANGEIRA - IMPORTACAO DIRETA SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL';
          7: TBNFItensNFI_ORIGEM.Value:='7 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL';
          8: TBNFItensNFI_ORIGEM.Value:='8 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 70%';
        end;
      end else
      TBNFItensNFI_ORIGEM.Value:='0 - NACIONAL';

      TBNFItensNFI_SEQUENCIA.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.nItem;

      {$REGION 'verifica se existe a unidade cadastrada.'}
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select count(*) as QTDE from UNIDADES where UNI_CODIGO=:codigo');
      DM.QYAux.ParamByName('codigo').AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;
      DM.QYAux.Open;
      if DM.QYAux.FieldByName('QTDE').AsInteger=0 then
      begin
        DM2.TBUnidades.Insert;
        DM2.TBUnidadesUNI_CODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;
        DM2.TBUnidadesUNI_DESCRICAO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;
        DM2.TBUnidades.Post;
      end;
      DM.QYAux.Close;
      {$ENDREGION}
      TBNFItensNFI_UNIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;

      TBNFItensNFI_VALORUNIT.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vUnCom;

      TBNFItens.Post;
    end;
    DM.TBProdutos.EnableControls;
  end;
end;

procedure TFormProdutosImportar.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosImportar.AlterarFamilia1Click(Sender: TObject);
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');

  Application.CreateForm(TFormFamiliasLoc, FormFamiliasLoc);
  FormFamiliasLoc.ShowModal;
  if FamiliasLoc.Procurar then
  begin
    TBNFItens.Edit;
    TBNFItensNFI_FAMILIA.Value:=FormFamiliasLoc.QYFamiliasFAM_CODIGO.Value;
    TBNFItensFAM_DESCRICAO.Value:=FormFamiliasLoc.QYFamiliasFAM_DESCRICAO.Value;
    TBNFItens.Post;

    if TBNFItensNFI_CODIGOLOCAL.Value>0 then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=TBNFItensNFI_CODIGOLOCAL.Value;
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

procedure TFormProdutosImportar.AlterarGrupo1Click(Sender: TObject);
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');

  Application.CreateForm(TFormGruposLoc, FormGruposLoc);
  FormGruposLoc.ShowModal;
  if GruposLoc.Procurar then
  begin
    TBNFItens.Edit;
    TBNFItensNFI_GRUPO.Value:=FormGruposLoc.QYGruposGRU_CODIGO.Value;
    TBNFItensGRU_DESCRICAO.Value:=FormGruposLoc.QYGruposGRU_DESCRICAO.Value;
    TBNFItens.Post;

    if TBNFItensNFI_CODIGOLOCAL.Value>0 then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=TBNFItensNFI_CODIGOLOCAL.Value;
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

procedure TFormProdutosImportar.AlterarMarca1Click(Sender: TObject);
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');

  Application.CreateForm(TFormMarcasLoc, FormMarcasLoc);
  FormMarcasLoc.ShowModal;
  if MarcasLoc.Procurar then
  begin
    TBNFItens.Edit;
    TBNFItensNFI_MARCA.Value:=FormMarcasLoc.QYMarcasMAR_CODIGO.Value;
    TBNFItensMAR_DESCRICAO.Value:=FormMarcasLoc.QYMarcasMAR_DESCRICAO.Value;
    TBNFItens.Post;

    if TBNFItensNFI_CODIGOLOCAL.Value>0 then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=TBNFItensNFI_CODIGOLOCAL.Value;
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

procedure TFormProdutosImportar.CadastrarProduto;
begin
  DM.TBProdutos.Insert;
  DM.TBProdutosPRO_ALIQCOFINS.Value:=0;
  DM.TBProdutosPRO_ALIQCOFINSST.Value:=0;
  DM.TBProdutosPRO_ALIQICMS.Value:=0;
  DM.TBProdutosPRO_ALIQICMSADICST.Value:=0;
  DM.TBProdutosPRO_ALIQICMSST.Value:=0;
  DM.TBProdutosPRO_ALIQICMSRED.Value:=0;
  DM.TBProdutosPRO_ALIQIPI.Value:=0;
  DM.TBProdutosPRO_ALIQISS.Value:=0;
  DM.TBProdutosPRO_ALIQPIS.Value:=0;
  DM.TBProdutosPRO_ALIQPISST.Value:=0;
  DM.TBProdutosPRO_ALIQOUTROS.Value:=0;
  DM.TBProdutosPRO_ATUALIZAR.Value:='S';
  DM.TBProdutosPRO_ATUALIZATABELA.Value:='S';
  DM.TBProdutosPRO_CEST.Value:=TBNFItensNFI_CEST.Value;
  DM.TBProdutosPRO_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
  DM.TBProdutosPRO_CFOPFORA.Value:=DM.TBParametrosPAR_CFOPFORAPADRAO.Value;
  DM.TBProdutosPRO_CLASSFISCAL.Value:=TBNFItensNFI_CLASSFISCAL.Value; // IntToStr(DM.TBParametrosPAR_CLASSFISCALPADRAO.Value);
  //DM.TBProdutosPRO_CODIGO.Value:= //X.
  if TBNFItensNFI_CODIGOBARRAS.Value<>'SEM GTIN' then
  DM.TBProdutosPRO_CODIGOBARRAS.Value:=TBNFItensNFI_CODIGOBARRAS.Value;
  DM.TBProdutosPRO_CODIGOFAB.Value:=TBNFItensNFI_CODIGO.Value;
  DM.TBProdutosPRO_COMISSAO.Value:=0;
  DM.TBProdutosPRO_COMPOEBASEICMS.Value:='N';
  DM.TBProdutosPRO_COMPOEBASEICMSST.Value:='N';
  DM.TBProdutosPRO_COMPOSTO.Value:='N';
  DM.TBProdutosPRO_CONVERSAO.Value:=1;
  DM.TBProdutosPRO_CSTCOFINS.Value:=TBNFItensNFI_CSTCOFINS.Value; // DM.TBParametrosPAR_CSTCOFINSPADRAO.Value;
  DM.TBProdutosPRO_CSTICMS.Value:=TBNFItensNFI_CSTICMS.Value; //DM.TBParametrosPAR_CSTICMSPADRAO.Value;
  DM.TBProdutosPRO_CSTIPI.Value:=TBNFItensNFI_CSTIPI.Value; // DM.TBParametrosPAR_CSTIPIPADRAO.Value;
  DM.TBProdutosPRO_CSTPIS.Value:=TBNFItensNFI_CSTPIS.Value; // DM.TBParametrosPAR_CSTPISPADRAO.Value;
  DM.TBProdutosPRO_DESCMAX.Value:=DM.TBParametrosPAR_DESCMAXPADRAO.Value;
  DM.TBProdutosPRO_DTCADASTRO.Value:=DM.ServerDate;
  DM.TBProdutosPRO_ESTOQUEMIN.Value:=0;
  DM.TBProdutosPRO_ESTOQUEMAX.Value:=0;
  DM.TBProdutosPRO_ESTOQUEATUAL.Value:=0; //quantidade inicial.
  DM.TBProdutosPRO_EXCECAO.Value:=TBNFItensNFI_EXCECAO.Value; // 0;
  DM.TBProdutosPRO_FAMILIA.Value:=TBNFItensNFI_FAMILIA.Value; //DM.TBParametrosPAR_PROFAMILIA.Value;
  DM.TBProdutosPRO_FORNECEDOR.Value:=StrToInt(Label7.Caption); // DM.TBParametrosPAR_PROFORNECEDOR.Value;
  DM.TBProdutosPRO_GENERO.Value:=96;
  DM.TBProdutosPRO_GRUPO.Value:=TBNFItensNFI_GRUPO.Value; //DM.TBParametrosPAR_PROGRUPO.Value;
  DM.TBProdutosPRO_INCENTIVOISS.Value:='N';
  DM.TBProdutosPRO_INDICADORISS.Value:='2 - NAO INCIDENCIA';
  DM.TBProdutosPRO_INTERNET.Value:='S';
  DM.TBProdutosPRO_MARCA.Value:=TBNFItensNFI_MARCA.Value; //DM.TBParametrosPAR_PROMARCA.Value;
  DM.TBProdutosPRO_MARGEM.Value:=DM.TBParametrosPAR_MARGEMPADRAO.Value;
  DM.TBProdutosPRO_MARGEM1.Value:=DM.TBTabPrecoTAB_MARGEM1.Value;
  DM.TBProdutosPRO_MARGEM2.Value:=DM.TBTabPrecoTAB_MARGEM2.Value;
  DM.TBProdutosPRO_MARGEM3.Value:=DM.TBTabPrecoTAB_MARGEM3.Value;
  DM.TBProdutosPRO_MARGEM4.Value:=DM.TBTabPrecoTAB_MARGEM4.Value;
  DM.TBProdutosPRO_MARGEM5.Value:=DM.TBTabPrecoTAB_MARGEM5.Value;
  DM.TBProdutosPRO_MARGEM6.Value:=DM.TBTabPrecoTAB_MARGEM6.Value;
  DM.TBProdutosPRO_MARKUP.Value:=1;
  DM.TBProdutosPRO_MARKUPCODIGO.Value:=0;
  DM.TBProdutosPRO_MODICMS.Value:=TBNFItensNFI_MODICMS.Value;  //'0 - MARGEM VALOR AGREGADO (%)';
  DM.TBProdutosPRO_MODICMSST.Value:=TBNFItensNFI_MODICMSST.Value; // '0 - PRECO TABELADO OU MAXIMO SUGERIDO';
  DM.TBProdutosPRO_NOME.Value:=TBNFItensNFI_NOME.Value;
  DM.TBProdutosPRO_OFERTA.Value:='N';
  DM.TBProdutosPRO_ORIGEM.Value:=TBNFItensNFI_ORIGEM.Value; // '0 - NACIONAL';
  DM.TBProdutosPRO_PESAVEL.Value:='N';
  DM.TBProdutosPRO_PESO.Value:=TBNFItensNFI_PESO.Value; //0;
  DM.TBProdutosPRO_PRECOCUSTO.Value:=TBNFItensNFI_VALORUNIT.Value; //custo = valor unitário. 0;
  DM.TBProdutosPRO_PRECOCUSTOCOMP.Value:=0;
  DM.TBProdutosPRO_PRECOVENDA.Value:=0;
  DM.TBProdutosPRO_PRODUCAO.Value:='T';
  DM.TBProdutosPRO_PRODUTOREAL.Value:=0;
  DM.TBProdutosPRO_STATUS.Value:='A';
  DM.TBProdutosPRO_SUBSTITUICAOTRIB.Value:='N';
  DM.TBProdutosPRO_TABPRECO1.Value:=DM.TBTabPrecoTAB_DESCRICAO1.Value;
  DM.TBProdutosPRO_TABPRECO2.Value:=DM.TBTabPrecoTAB_DESCRICAO2.Value;
  DM.TBProdutosPRO_TABPRECO3.Value:=DM.TBTabPrecoTAB_DESCRICAO3.Value;
  DM.TBProdutosPRO_TABPRECO4.Value:=DM.TBTabPrecoTAB_DESCRICAO4.Value;
  DM.TBProdutosPRO_TABPRECO5.Value:=DM.TBTabPrecoTAB_DESCRICAO5.Value;
  DM.TBProdutosPRO_TABPRECO6.Value:=DM.TBTabPrecoTAB_DESCRICAO6.Value;
  DM.TBProdutosPRO_TIPO.Value:='P';
  DM.TBProdutosPRO_TIPOITEM.Value:='00 - MERCADORIA PARA REVENDA';
  DM.TBProdutosPRO_TROCA.Value:='N';
  DM.TBProdutosPRO_TRIBUTO.Value:='II';
  DM.TBProdutosPRO_UNIDADE.Value:=TBNFItensNFI_UNIDADE.Value; //DM.TBParametrosPAR_PROUNIDADE.Value;
  DM.TBProdutos.Post;

  //cadastra a associação do código do fornecedor com o produto local.
  DM.TBProdutosCodigos.Insert;
  DM.TBProdutosCodigosPCO_FORNECEDOR.Value:=StrToInt(Label7.Caption); //DM.TBFornecedoresFOR_CODIGO.Value;
  DM.TBProdutosCodigosPCO_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
  DM.TBProdutosCodigosPCO_CODIGOFORNECEDOR.Value:=TBNFItensNFI_CODIGO.Value;
  DM.TBProdutosCodigos.Post;

  TBNFItens.Edit;
  TBNFItensNFI_CODIGOLOCAL.Value:=DM.TBProdutosPRO_CODIGO.Value;
  TBNFItens.Post;
end;

initialization
  RegisterClass(TFormProdutosImportar);

finalization
  UnRegisterClass(TFormProdutosImportar);

end.
