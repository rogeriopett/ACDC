unit Producao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls, Mask,
  DB, Grids, DBGrids, ComCtrls, ImgList, PngImageList, PngSpeedButton, PngBitBtn,
  System.ImageList, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProducao = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Bevel1: TBevel;
    Localizar1Button: TPngSpeedButton;
    DBText2: TDBText;
    DBText3: TDBText;
    Bevel2: TBevel;
    CadastroDeClientes1Button: TPngSpeedButton;
    EstornarOrdemDeProducao1Button: TPngSpeedButton;
    CadastroDeProdutos1Button: TPngSpeedButton;
    BaixarOrdemDeProducao1Button: TPngSpeedButton;
    Bevel3: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N3: TMenuItem;
    EstornarOrdemDeProducao1: TMenuItem;
    BaixarOrdemDeProducao1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText6: TDBText;
    DBText1: TDBText;
    IncluirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    N2: TMenuItem;
    OrdensDeProducaoPorCliente1: TMenuItem;
    OrdensDeProducaoPorClienteComItens1: TMenuItem;
    OrdemDeProducao1: TMenuItem;
    DisponibilidadeDeEstoqueAnalitico1: TMenuItem;
    DisponibilidadeDeEstoqueSintetico1: TMenuItem;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBText4: TDBText;
    N6: TMenuItem;
    BaixarMateriaPrima1: TMenuItem;
    EstornarMateriaPrima1: TMenuItem;
    EstornarMateriaPrima1Button: TPngSpeedButton;
    BaixarMateriaPrima1Button: TPngSpeedButton;
    Bevel5: TBevel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    EliminarItem1Button: TPngBitBtn;
    IncluirItem1Button: TPngBitBtn;
    DBMemo1: TDBMemo;
    PngImageList1: TPngImageList;
    PlanoDeProducaoModelo021: TMenuItem;
    PopupMenu1: TPopupMenu;
    ExcluirItem1: TMenuItem;
    MarcarItemParaBaixa1: TMenuItem;
    N7: TMenuItem;
    InformarLotesUtilizadosNaComposicaoDosItens1: TMenuItem;
    InformarLotesUtilizadosNaComposicaoDosItens1Button: TPngSpeedButton;
    Bevel6: TBevel;
    CriarLoteParaOsItensProduzidos1: TMenuItem;
    CriarLoteParaOsItensProduzidos1Button: TPngSpeedButton;
    RecriarLoteParaOsItensProduzidos1: TMenuItem;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    InutilizarOrdemDeProducao1Button: TPngSpeedButton;
    InutilizarOrdemDeProducao1: TMenuItem;
    PlanoDeProducaoModelo011: TMenuItem;
    N8: TMenuItem;
    DuplicarOrdemDeProducao1: TMenuItem;
    DSProducao: TDataSource;
    DSProducaoItens: TDataSource;
    DuplicarOrdemDeProducao1Button: TPngSpeedButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    ChecarEstoque1: TMenuItem;
    ChecarEstoque1Button: TPngSpeedButton;
    QYProducao: TFDQuery;
    TRProducao: TFDTransaction;
    QYProducaoItens: TFDQuery;
    TRProducaoItens: TFDTransaction;
    TRProducaoItensComp: TFDTransaction;
    QYProducaoItensComp: TFDQuery;
    QYProducaoPRD_CODIGO: TIntegerField;
    QYProducaoPRD_CLIENTE: TIntegerField;
    QYProducaoPRD_DTCADASTRO: TDateField;
    QYProducaoPRD_DATABAIXA: TDateField;
    QYProducaoPRD_STATUS: TStringField;
    QYProducaoPRD_USUARIO: TStringField;
    QYProducaoPRD_DTATUALIZACAO: TDateField;
    QYProducaoPRD_DTPREVISAO: TDateField;
    QYProducaoPRD_LOTECRIADO: TStringField;
    QYProducaoPRD_MPBAIXADA: TStringField;
    QYProducaoPRD_NOTACLIENTE: TIntegerField;
    QYProducaoPRD_OBSERVACOES: TMemoField;
    QYProducaoCLI_NOME: TStringField;
    QYProducaoCLI_ENDERECO: TStringField;
    QYProducaoCLI_NUMERO: TStringField;
    QYProducaoCLI_BAIRRO: TStringField;
    QYProducaoCLI_CIDADE: TStringField;
    QYProducaoCLI_ESTADO: TStringField;
    QYProducaoCLI_CEP: TStringField;
    QYProducaoCLI_FONE1: TStringField;
    QYProducaoItensPDI_CODIGO: TIntegerField;
    QYProducaoItensPDI_PRODUCAO: TIntegerField;
    QYProducaoItensPDI_PRODUTO: TIntegerField;
    QYProducaoItensPDI_QUANTIDADE: TFMTBCDField;
    QYProducaoItensPDI_ALMOXARIFADO: TIntegerField;
    QYProducaoItensPRO_NOME: TStringField;
    QYProducaoItensPRO_UNIDADE: TStringField;
    QYProducaoItensCompPDC_CODIGO: TIntegerField;
    QYProducaoItensCompPDC_PRODUCAOITEM: TIntegerField;
    QYProducaoItensCompPDC_PRODUTO: TIntegerField;
    QYProducaoItensCompPDC_QUANTIDADE: TFMTBCDField;
    QYProducaoItensCompPDC_COMPOSTO: TStringField;
    QYProducaoItensCompPDC_BAIXAR: TStringField;
    QYProducaoItensCompPDC_LOTE: TStringField;
    QYProducaoItensCompPRO_NOME: TStringField;
    QYProducaoItensCompPRO_UNIDADE: TStringField;
    UPProducao: TFDUpdateSQL;
    UPProducaoItens: TFDUpdateSQL;
    UPProducaoItensComp: TFDUpdateSQL;
    AlterarCor1: TMenuItem;
    AlterarCor1Button: TPngBitBtn;
    ExcluirItem1Button: TPngBitBtn;
    MarcarItemParaBaixa1Button: TPngBitBtn;
    Cadastros1: TMenuItem;
    Lotes1: TMenuItem;
    QYProducaoItensCompPDC_COR: TStringField;
    QYProducaoItensCompPDC_ORDEM: TIntegerField;
    QYProducaoItensCompPDC_QUANTIDADEUNITARIA: TFMTBCDField;
    Disponibilidadedeestoquesintticocompreviso1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure BaixarOrdemDeProducao1Click(Sender: TObject);
    procedure EstornarOrdemDeProducao1Click(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IncluirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure OrdensDeProducaoPorCliente1Click(Sender: TObject);
    procedure OrdensDeProducaoPorClienteComItens1Click(Sender: TObject);
    procedure OrdemDeProducao1Click(Sender: TObject);
    procedure DisponibilidadeDeEstoqueAnalitico1Click(Sender: TObject);
    procedure DisponibilidadeDeEstoqueSintetico1Click(Sender: TObject);
    procedure BaixarMateriaPrima1Click(Sender: TObject);
    procedure EstornarMateriaPrima1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PlanoDeProducaoModelo021Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure ExcluirItem1Click(Sender: TObject);
    procedure MarcarItemParaBaixa1Click(Sender: TObject);
    procedure InformarLotesUtilizadosNaComposicaoDosItens1Click(Sender: TObject);
    procedure CriarLoteParaOsItensProduzidos1Click(Sender: TObject);
    procedure RecriarLoteParaOsItensProduzidos1Click(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure InutilizarOrdemDeProducao1Click(Sender: TObject);
    procedure PlanoDeProducaoModelo011Click(Sender: TObject);
    procedure DuplicarOrdemDeProducao1Click(Sender: TObject);
    procedure ChecarEstoque1Click(Sender: TObject);
    procedure AlterarCor1Click(Sender: TObject);
    procedure Disponibilidadedeestoquesintticocompreviso1Click(Sender: TObject);
  private
    { Private declarations }
    function ChecarEstoque: Boolean;
  public
    { Public declarations }
  end;

var
  FormProducao: TFormProducao;

implementation
uses DataMod, Clientes, Produtos, Funcoes1, ClientesLoc, Main,
  ProducaoItens, ProducaoLoc, ProducaoBaixar, ProducaoRel, ProdutosCompVer,
  ProdutosCompTree, ProducaoLotes, InputDate, DataModSearch, ProducaoChecarEstoque;
{$R *.dfm}

procedure TFormProducao.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBProducao.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProducao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormProducao.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormProducao.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormProducao.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProducaoLoc, FormProducaoLoc);
  FormProducaoLoc.ShowModal;
  if ProducaoLoc.Procurar then
  begin
    DM.TBProducao.Close;
    DM.TBProducao.ParamByName('codigo').AsInteger:=FormProducaoLoc.QYProducaoPRD_CODIGO.Value;
    DM.TBProducao.Open;

    DM.TBProducaoItens.Close;
    DM.TBProducaoItens.Open;
  end;
  FormProducaoLoc.Free;
  FormProducaoLoc:=nil;
end;

procedure TFormProducao.MarcarItemParaBaixa1Click(Sender: TObject);
begin
  if DM.TBProducaoItensComp.IsEmpty then Exit;
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Ordem de produção já baixada.');
  AbortIf(DM.TBProducaoPRD_MPBAIXADA.Value='S','A matéria prima desta ordem de produção já foi baixada.');

  DM.TBProducaoItensComp.Edit;
  if DM.TBProducaoItensCompPDC_BAIXAR.Value='S' then
  DM.TBProducaoItensCompPDC_BAIXAR.Value:='N' else
  DM.TBProducaoItensCompPDC_BAIXAR.Value:='S';
  DM.TBProducaoItensComp.Post;
end;

procedure TFormProducao.RecriarLoteParaOsItensProduzidos1Click(Sender: TObject);
var Fabricacao, Validade: String;
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='A','Não é possível criar lotes para uma ordem de produção em aberto.');

  if MessageDlg('Recriar lotes para os itens produzidos?'+#13#13+'Esta opção pode gerar lotes em duplicidade com os já gerados.',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Fabricacao:='';
    Validade:='';
    Application.CreateForm(TFormInputDate, FormInputDate);

    FormInputDate.Caption:='Informe a Data de Fabricação';
    FormInputDate.Label1.Caption:='Dt. Fabricação';
    FormInputDate.ShowModal;
    if InputDate.Retorno then Fabricacao:=FormInputDate.MaskEdit1.Text;

    FormInputDate.Caption:='Informe a Data de Validade';
    FormInputDate.Label1.Caption:='Dt. Validade';
    FormInputDate.ShowModal;
    if InputDate.Retorno then Validade:=FormInputDate.MaskEdit1.Text;

    FormInputDate.Free;
    FormInputDate:=nil;

    if Fabricacao=Validade then
    begin
      if MessageDlg('As datas de fabricação e validade são iguais. Deseja continuar?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
      Exit;
    end;

    if (Fabricacao<>'') and (Validade<>'') then
    begin
      DM.TBProducaoItens.First;
      while not DM.TBProducaoItens.Eof do
      begin
        DM.TBLotes.Insert;
        DM.TBLotesLOT_LOTE.Value:='OP'+IntToStr(DM.TBProducaoPRD_CODIGO.Value);
        DM.TBLotesLOT_PROPRIO.Value:='S';
        DM.TBLotesLOT_PRODUTO.Value:=DM.TBProducaoItensPDI_PRODUTO.Value;
        DM.TBLotesLOT_QUANTIDADE.Value:=DM.TBProducaoItensPDI_QUANTIDADE.Value;
        DM.TBLotesLOT_FABRICACAO.Value:=StrToDate(Fabricacao);
        DM.TBLotesLOT_VALIDADE.Value:=StrToDate(Validade);
        DM.TBLotes.Post;
        DM.TBProducaoItens.Next;
      end;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update PRODUCAO set PRD_LOTECRIADO=''S'' where PRD_CODIGO=:codigo');
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProducaoPRD_CODIGO.Value;
      DM.QYAux.ExecSQL;

      DM.TBProducao.Close;
      DM.TBProducao.Open;
      MessageDlg('Lotes criados!',mtInformation,[mbOk],0);
    end else
    MessageDlg('Criação de lotes cancelada.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProducao.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormProducaoRel, FormProducaoRel);
  FormProducaoRel.ShowModal;
  FormProducaoRel.Free;
  FormProducaoRel:=nil;
end;

procedure TFormProducao.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

function TFormProducao.ChecarEstoque: Boolean;
begin
  Result:=True;
  Screen.Cursor:=crHourGlass;
  Application.ProcessMessages;
  Application.CreateForm(TFormProducaoChecarEstoque, FormProducaoChecarEstoque);
  FormProducaoChecarEstoque.TBProdutos.EmptyDataSet;
  FormProducaoChecarEstoque.TBProdutos.Open;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select PDC_PRODUTO, PRO_NOME, sum(PDC_QUANTIDADE) as QTDE from PRODUCAOITENSCOMP '+
    'left join PRODUCAOITENS on PDC_PRODUCAOITEM=PDI_CODIGO '+
    'left join PRODUTOS on PDC_PRODUTO=PRO_CODIGO '+
    'where PDC_BAIXAR=''S'' and PDI_PRODUCAO=:producao '+
    'group by PDC_PRODUTO, PRO_NOME '+
    'order by PRO_NOME');
  DM.QYAux.ParamByName('producao').AsInteger:=DM.TBProducaoPRD_CODIGO.Value;
  DM.QYAux.Open;
  while not DM.QYAux.Eof do
  begin
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select PRO_ESTOQUEATUAL from PRODUTOS where PRO_CODIGO=:codigo');
    DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('PDC_PRODUTO').AsInteger;
    DM.QYAux2.Open;
    if (DM.QYAux2.FieldByName('PRO_ESTOQUEATUAL').AsExtended <= 0) or (DM.QYAux2.FieldByName('PRO_ESTOQUEATUAL').AsExtended < DM.QYAux.FieldByName('QTDE').AsExtended) then
    begin
       FormProducaoChecarEstoque.TBProdutos.Insert;
       FormProducaoChecarEstoque.TBProdutosPRO_CODIGO.Value:=DM.QYAux.FieldByName('PDC_PRODUTO').AsInteger;
       FormProducaoChecarEstoque.TBProdutosPRO_NOME.Value:=DM.QYAux.FieldByName('PRO_NOME').AsString;
       FormProducaoChecarEstoque.TBProdutosPRO_ESTOQUEATUAL.Value:=DM.QYAux2.FieldByName('PRO_ESTOQUEATUAL').AsExtended;
       FormProducaoChecarEstoque.TBProdutosPDC_QUANTIDADE.Value:=DM.QYAux.FieldByName('QTDE').AsExtended;
       FormProducaoChecarEstoque.TBProdutosFALTA.Value:=DM.QYAux.FieldByName('QTDE').AsExtended - DM.QYAux2.FieldByName('PRO_ESTOQUEATUAL').AsExtended;
       FormProducaoChecarEstoque.TBProdutos.Post;
    end;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  DM.QYAux2.Close;
  Screen.Cursor:=crDefault;

  if not FormProducaoChecarEstoque.TBProdutos.IsEmpty then
  begin
    Result:=False;
    FormProducaoChecarEstoque.ShowModal;
  end;
  FormProducaoChecarEstoque.Free;
  FormProducaoChecarEstoque:=nil;
end;

procedure TFormProducao.ChecarEstoque1Click(Sender: TObject);
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Ordem de produção já baixada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='I','Ordem de produção inutilizada.');
  AbortIf(DM.TBProducaoItens.IsEmpty,'Ordem de produção sem itens para baixar.');
  AbortIf(DM.TBProducaoPRD_MPBAIXADA.Value='S','Matéria prima já baixada nesta Ordem de Produção.');

  if ChecarEstoque then
  MessageDlg('Checagem de Estoque OK.',mtInformation,[mbOk],0);
end;

procedure TFormProducao.BaixarOrdemDeProducao1Click(Sender: TObject);
var ChecagemEstoque: WideString;
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Ordem de produção já baixada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='I','Ordem de produção inutilizada.');
  AbortIf(DM.TBProducaoItens.IsEmpty,'Ordem de produção sem itens para baixar.');

  if DM.TBProducaoPRD_MPBAIXADA.Value='N' then
  begin
    ChecarEstoque;
  end;

  if MessageDlg('Deseja baixar ordem de produção número '+IntToStr(DM.TBProducaoPRD_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    ProducaoBaixar.SomenteMateriaPrima:=False; //nao, baixar tudo.
    ProducaoBaixar.EfetuarBaixa:=True; //sim, baixar tudo.
    Application.ProcessMessages;
    Application.CreateForm(TFormProducaoBaixar, FormProducaoBaixar);
    FormProducaoBaixar.ShowModal;
    FormProducaoBaixar.Free;
    FormProducaoBaixar:=nil;
  end;
end;

procedure TFormProducao.EstornarOrdemDeProducao1Click(Sender: TObject);
var Codigo: Integer;
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='A','Ordem de produção não baixada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='I','Ordem de produção inutilizada.');

  if MessageDlg('Deseja cancelar a baixa da ordem de produção número '+IntToStr(DM.TBProducaoPRD_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    ProducaoBaixar.SomenteMateriaPrima:=False; //nao, cancelar tudo.
    ProducaoBaixar.EfetuarBaixa:=False; //nao, cancelar tudo.
    Application.CreateForm(TFormProducaoBaixar, FormProducaoBaixar);
    FormProducaoBaixar.ShowModal;
    FormProducaoBaixar.Free;
    FormProducaoBaixar:=nil;

    Codigo:=DM.TBProducaoPRD_CODIGO.Value;
    DM.TBProducao.Close;
    DM.TBProducao.ParamByName('codigo').AsInteger:=Codigo;
    DM.TBProducao.Open;
  end;
end;

procedure TFormProducao.CriarLoteParaOsItensProduzidos1Click(Sender: TObject);
var Validade, Fabricacao: String;
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='A','Não é possível criar lotes para uma ordem de produção em aberto.');
  AbortIf(DM.TBProducaoPRD_LOTECRIADO.Value='S','Já foram criados os lotes desta ordem de produção.');

  if MessageDlg('Criar lotes para os itens produzidos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Fabricacao:='';
    Validade:='';
    Application.CreateForm(TFormInputDate, FormInputDate);

    FormInputDate.Caption:='Informe a Data de Fabricação';
    FormInputDate.Label1.Caption:='Dt. Fabricação';
    FormInputDate.ShowModal;
    if InputDate.Retorno then Fabricacao:=FormInputDate.MaskEdit1.Text;

    FormInputDate.Caption:='Informe a Data de Validade';
    FormInputDate.Label1.Caption:='Dt. Validade';
    FormInputDate.ShowModal;
    if InputDate.Retorno then Validade:=FormInputDate.MaskEdit1.Text;

    FormInputDate.Free;
    FormInputDate:=nil;

    if Fabricacao=Validade then
    begin
      if MessageDlg('As datas de fabricação e validade são iguais. Deseja continuar?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
      Exit;
    end;

    if (Fabricacao<>'') and (Validade<>'') then
    begin
      DM.TBProducaoItens.First;
      while not DM.TBProducaoItens.Eof do
      begin
        DM.TBLotes.Insert;
        DM.TBLotesLOT_LOTE.Value:='OP'+IntToStr(DM.TBProducaoPRD_CODIGO.Value);
        DM.TBLotesLOT_PROPRIO.Value:='S';
        DM.TBLotesLOT_PRODUTO.Value:=DM.TBProducaoItensPDI_PRODUTO.Value;
        DM.TBLotesLOT_QUANTIDADE.Value:=DM.TBProducaoItensPDI_QUANTIDADE.Value;
        DM.TBLotesLOT_FABRICACAO.Value:=StrToDate(Fabricacao);
        DM.TBLotesLOT_VALIDADE.Value:=StrToDate(Validade);
        DM.TBLotes.Post;
        DM.TBProducaoItens.Next;
      end;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update PRODUCAO set PRD_LOTECRIADO=''S'' where PRD_CODIGO=:codigo');
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProducaoPRD_CODIGO.Value;
      DM.QYAux.ExecSQL;

      DM.TBProducao.Close;
      DM.TBProducao.Open;
      MessageDlg('Lotes criados!',mtInformation,[mbOk],0);
    end else
    MessageDlg('Criação de lotes cancelada.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProducao.DBEdit17Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProducao.DBEdit17Exit(Sender: TObject);
begin
  if (DM.TBProducao.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBProducaoPRD_CLIENTE.Clear;
    DM.TBProducaoCLI_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBProducao.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM.TBProducaoPRD_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM.TBProducaoCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      DM.TBProducaoPRD_CLIENTE.Clear;
      DM.TBProducaoCLI_NOME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormProducao.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormProducao.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProducao.SpeedButton3Click(Sender: TObject);
begin
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Não é possível alterar uma ordem de produção baixada.');

  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM.TBProducao.Edit;
    DM.TBProducaoPRD_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBProducaoCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormProducao.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProducao);
end;

procedure TFormProducao.IncluirItem1Click(Sender: TObject);
begin
  if DM.TBProducao.State in [dsInsert, dsEdit] then
  Exit;
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Ordem de produção já baixada.');
  AbortIf(DM.TBProducaoPRD_MPBAIXADA.Value='S','A matéria prima já foi baixada.');

  DM.TBProducaoItens.Insert;
  Application.CreateForm(TFormProducaoItens, FormProducaoItens);
  FormProducaoItens.ShowModal;
  FormProducaoItens.Free;
  FormProducaoItens:=nil;
end;

procedure TFormProducao.InformarLotesUtilizadosNaComposicaoDosItens1Click(Sender: TObject);
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Não é possivel informar os lotes para uma ordem de produção já baixada.');

  Application.CreateForm(TFormProducaoLotes, FormProducaoLotes);
  FormProducaoLotes.ShowModal;
  FormProducaoLotes.Free;
  FormProducaoLotes:=nil;
end;

procedure TFormProducao.InutilizarOrdemDeProducao1Click(Sender: TObject);
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='I','Ordem de produção já inutilizada.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Ordem de produção já baixada.');
  AbortIf(DM.TBProducaoPRD_MPBAIXADA.Value='S','A matéria prima desta ordem de produção já foi baixada.');

  if MessageDlg('Deseja inutilizar a ordem de produção número '+IntToStr(DM.TBProducaoPRD_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBProducao.Edit;
    DM.TBProducaoPRD_STATUS.Value:='I';
    DM.TBProducao.Post;
  end;
end;

procedure TFormProducao.EliminarItem1Click(Sender: TObject);
begin
  AbortIf(DM.TBProducaoItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Ordem de produção já baixada.');
  AbortIf(DM.TBProducaoPRD_MPBAIXADA.Value='S','A matéria prima desta ordem de produção já foi baixada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM.TBProducaoItens.Delete;
end;

procedure TFormProducao.ExcluirItem1Click(Sender: TObject);
begin
  if DM.TBProducaoItensComp.IsEmpty then Exit;
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Ordem de produção já baixada.');
  AbortIf(DM.TBProducaoPRD_MPBAIXADA.Value='S','A matéria prima desta ordem de produção já foi baixada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM.TBProducaoItensComp.Delete;
end;

procedure TFormProducao.OrdemDeProducao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProducaoRel, FormProducaoRel);
  FormProducaoRel.ComboBox2.Enabled:=False;
  FormProducaoRel.ComboBox2.ItemIndex:=0;
  FormProducaoRel.ComboBox2Change(Self);
  FormProducaoRel.ShowModal;
  FormProducaoRel.Free;
  FormProducaoRel:=nil;
end;

procedure TFormProducao.OrdensDeProducaoPorCliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProducaoRel, FormProducaoRel);
  FormProducaoRel.ComboBox2.Enabled:=False;
  FormProducaoRel.ComboBox2.ItemIndex:=1;
  FormProducaoRel.ComboBox2Change(Self);
  FormProducaoRel.ShowModal;
  FormProducaoRel.Free;
  FormProducaoRel:=nil;
end;

procedure TFormProducao.OrdensDeProducaoPorClienteComItens1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProducaoRel, FormProducaoRel);
  FormProducaoRel.ComboBox2.Enabled:=False;
  FormProducaoRel.ComboBox2.ItemIndex:=2;
  FormProducaoRel.ComboBox2Change(Self);
  FormProducaoRel.ShowModal;
  FormProducaoRel.Free;
  FormProducaoRel:=nil;
end;

procedure TFormProducao.DisponibilidadeDeEstoqueAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProducaoRel, FormProducaoRel);
  FormProducaoRel.ComboBox2.Enabled:=False;
  FormProducaoRel.ComboBox2.ItemIndex:=3;
  FormProducaoRel.ComboBox2Change(Self);
  FormProducaoRel.ShowModal;
  FormProducaoRel.Free;
  FormProducaoRel:=nil;
end;

procedure TFormProducao.DisponibilidadeDeEstoqueSintetico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProducaoRel, FormProducaoRel);
  FormProducaoRel.ComboBox2.Enabled:=False;
  FormProducaoRel.ComboBox2.ItemIndex:=4;
  FormProducaoRel.ComboBox2Change(Self);
  FormProducaoRel.ShowModal;
  FormProducaoRel.Free;
  FormProducaoRel:=nil;
end;

procedure TFormProducao.Disponibilidadedeestoquesintticocompreviso1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProducaoRel, FormProducaoRel);
  FormProducaoRel.ComboBox2.Enabled:=False;
  FormProducaoRel.ComboBox2.ItemIndex:=8;
  FormProducaoRel.ComboBox2Change(Self);
  FormProducaoRel.ShowModal;
  FormProducaoRel.Free;
  FormProducaoRel:=nil;
end;

procedure TFormProducao.DuplicarOrdemDeProducao1Click(Sender: TObject);
var NovoCodigo, NovoCodigoItem: Integer;
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');

  if MessageDlg('Duplicar ordem de produção?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    QYProducao.Open;
    QYProducaoItens.Open;
    QYProducaoItensComp.Open;

    //CAPA.
    QYProducao.Insert;
    {$REGION 'CAPA DA PRODUCAO'}
    //QYProducaoPRD_CODIGO.Value
    QYProducaoPRD_CLIENTE.Value:=DM.TBProducaoPRD_CLIENTE.Value;
    //QYProducaoPRD_DATABAIXA.Value:=DM.TBProducaoPRD_DATABAIXA.Value;
    QYProducaoPRD_DTATUALIZACAO.Value:=DM.ServerDate;
    QYProducaoPRD_DTCADASTRO.Value:=DM.ServerDate;
    QYProducaoPRD_DTPREVISAO.Value:=DM.ServerDate+DM.TBParametrosPAR_PRODUCAODTPREVISAO.Value;
    QYProducaoPRD_LOTECRIADO.Value:='N'; //DM.TBProducaoPRD_LOTECRIADO.Value;
    QYProducaoPRD_MPBAIXADA.Value:='N'; //DM.TBProducaoPRD_MPBAIXADA.Value;
    //QYProducaoPRD_NOTACLIENTE.Value:=DM.TBProducaoPRD_NOTACLIENTE.Value;
    QYProducaoPRD_OBSERVACOES.Value:=DM.TBProducaoPRD_OBSERVACOES.Value;
    QYProducaoPRD_STATUS.Value:='A';
    QYProducaoPRD_USUARIO.Value:=DM.UsuarioLogin;
    {$ENDREGION}
    QYProducao.Post;
    NovoCodigo:=QYProducaoPRD_CODIGO.Value;

    //ITENS.
    DM.TBProducaoItens.First;
    DM.TBProducaoItens.DisableControls;
    while not DM.TBProducaoItens.Eof do
    begin
      QYProducaoItens.Insert;
      {$REGION 'ITENS DA ORDEM DE PRODUCAO'}
      //QYProducaoItensPDI_CODIGO.Value
      QYProducaoItensPDI_ALMOXARIFADO.Value:=DM.TBProducaoItensPDI_ALMOXARIFADO.Value;
      QYProducaoItensPDI_PRODUCAO.Value:=NovoCodigo;
      QYProducaoItensPDI_PRODUTO.Value:=DM.TBProducaoItensPDI_PRODUTO.Value;
      QYProducaoItensPDI_QUANTIDADE.Value:=DM.TBProducaoItensPDI_QUANTIDADE.Value;
      {$ENDREGION}
      QYProducaoItens.Post;
      NovoCodigoItem:=QYProducaoItensPDI_CODIGO.Value;

      //ITENS COMPOSICAO.
      //fecha e abre novamente para que a tabela abra no registro pai correto.
      //os registros filhos nao sao atualizados quando está com DisableControls na tabela pai.
      DM.TBProducaoItensComp.Close;
      DM.TBProducaoItensComp.Open;
      DM.TBProducaoItensComp.First;
      DM.TBProducaoItensComp.DisableControls;
      while not DM.TBProducaoItensComp.Eof do
      begin
        QYProducaoItensComp.Insert;
        QYProducaoItensCompPDC_BAIXAR.Value:=DM.TBProducaoItensCompPDC_BAIXAR.Value;
        //QYProducaoItensCompPDC_CODIGO.Value
        QYProducaoItensCompPDC_COMPOSTO.Value:=DM.TBProducaoItensCompPDC_COMPOSTO.Value;
        QYProducaoItensCompPDC_COR.Value:=DM.TBProducaoItensCompPDC_COR.Value;
        QYProducaoItensCompPDC_LOTE.Value:=DM.TBProducaoItensCompPDC_LOTE.Value;
        QYProducaoItensCompPDC_ORDEM.Value:=DM.TBProducaoItensCompPDC_ORDEM.Value;
        QYProducaoItensCompPDC_PRODUCAOITEM.Value:=NovoCodigoItem; //DM.TBProducaoItensCompPDC_PRODUCAOITEM.Value;
        QYProducaoItensCompPDC_PRODUTO.Value:=DM.TBProducaoItensCompPDC_PRODUTO.Value;
        QYProducaoItensCompPDC_QUANTIDADE.Value:=DM.TBProducaoItensCompPDC_QUANTIDADE.Value;
        QYProducaoItensCompPDC_QUANTIDADEUNITARIA.Value:=DM.TBProducaoItensCompPDC_QUANTIDADEUNITARIA.Value;
        QYProducaoItensComp.Post;
        DM.TBProducaoItensComp.Next;
      end;
      DM.TBProducaoItensComp.EnableControls;

      DM.TBProducaoItens.Next;
    end;
    DM.TBProducaoItens.EnableControls;

    //...
    QYProducao.Close;
    QYProducaoItens.Close;
    QYProducaoItensComp.Close;

    DM.TBProducaoItensComp.Close;
    DM.TBProducaoItens.Close;
    DM.TBProducao.Close;
    DM.TBProducao.ParamByName('codigo').AsInteger:=NovoCodigo;
    DM.TBProducao.Open;
    DM.TBProducaoItens.Open;
    DM.TBProducaoItensComp.Open;
    Screen.Cursor:=crDefault;
    MessageDlg('Ordem de produção duplicada com sucesso! Código: '+IntToStr(NovoCodigo),mtInformation,[mbOk],0);
  end;
end;

procedure TFormProducao.PlanoDeProducaoModelo011Click(Sender: TObject);
begin
  Application.CreateForm(TFormProducaoRel, FormProducaoRel);
  FormProducaoRel.ComboBox2.Enabled:=False;
  FormProducaoRel.ComboBox2.ItemIndex:=5;
  FormProducaoRel.ComboBox2Change(Self);
  FormProducaoRel.ShowModal;
  FormProducaoRel.Free;
  FormProducaoRel:=nil;
end;

procedure TFormProducao.PlanoDeProducaoModelo021Click(Sender: TObject);
begin
  Application.CreateForm(TFormProducaoRel, FormProducaoRel);
  FormProducaoRel.ComboBox2.Enabled:=False;
  FormProducaoRel.ComboBox2.ItemIndex:=6;
  FormProducaoRel.ComboBox2Change(Self);
  FormProducaoRel.ShowModal;
  FormProducaoRel.Free;
  FormProducaoRel:=nil;
end;

procedure TFormProducao.AlterarCor1Click(Sender: TObject);
var S: String;
begin
  AbortIf(DM.TBProducaoItensComp.IsEmpty,'Nenhum item selecionado.');

  S:=InputBox('Alterar Cor','Digite a cor desejada.',DM.TBProducaoItensCompPDC_COR.Value);
  if S<>'' then
  begin
    DM.TBProducaoItensComp.Edit;
    DM.TBProducaoItensCompPDC_COR.Value:=UpperCase(Copy(S,1,20));
    DM.TBProducaoItensComp.Post;
  end;
end;

procedure TFormProducao.BaixarMateriaPrima1Click(Sender: TObject);
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoItens.IsEmpty,'Ordem de produção sem itens para baixar.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Ordem de produção já baixada.');
  AbortIf(DM.TBProducaoPRD_MPBAIXADA.Value='S','A matéria prima desta ordem de produção já foi baixada.');

  ChecarEstoque;
  if MessageDlg('Realizar a baixa da matéria prima?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    ProducaoBaixar.SomenteMateriaPrima:=True; //sim, somente a materia prima.
    ProducaoBaixar.EfetuarBaixa:=True; //sim, baixar a materia prima.
    Application.CreateForm(TFormProducaoBaixar, FormProducaoBaixar);
    FormProducaoBaixar.ShowModal;
    FormProducaoBaixar.Free;
    FormProducaoBaixar:=nil;
  end;
end;

procedure TFormProducao.EstornarMateriaPrima1Click(Sender: TObject);
begin
  AbortIf(DM.TBProducao.IsEmpty,'Nenhuma ordem de produção selecionada.');
  AbortIf(DM.TBProducaoItens.IsEmpty,'Ordem de produção sem itens para estornar.');
  AbortIf(DM.TBProducaoPRD_STATUS.Value='B','Ordem de produção já baixada.');
  AbortIf(DM.TBProducaoPRD_MPBAIXADA.Value='N','A matéria prima desta ordem de produção ainda não foi baixada.');

  if MessageDlg('Realizar o estorno da matéria prima?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    ProducaoBaixar.SomenteMateriaPrima:=True; //sim, somente a materia prima.
    ProducaoBaixar.EfetuarBaixa:=False; //nao, cancelar a baixa da materia prima.
    Application.CreateForm(TFormProducaoBaixar, FormProducaoBaixar);
    FormProducaoBaixar.ShowModal;
    FormProducaoBaixar.Free;
    FormProducaoBaixar:=nil;
  end;
end;

procedure TFormProducao.DBGrid1DblClick(Sender: TObject);
begin
  if not DM.TBProducaoItens.IsEmpty then
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBProducaoItensPDI_PRODUTO.Value;
    DM.TBProdutos.Open;
    Application.CreateForm(TFormProdutosCompTree, FormProdutosCompTree);
    FormProdutosCompTree.ShowModal;
    FormProdutosCompTree.Free;
    FormProdutosCompTree:=nil;
  end;
end;

procedure TFormProducao.DBGrid2DblClick(Sender: TObject);
begin
  if not DM.TBProducaoItensComp.IsEmpty then
  begin
    if DM.TBProducaoItensCompPDC_COMPOSTO.Value='S' then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBProducaoItensCompPDC_PRODUTO.Value;
      DM.TBProdutos.Open;
      Application.CreateForm(TFormProdutosCompTree, FormProdutosCompTree);
      FormProdutosCompTree.ShowModal;
      FormProdutosCompTree.Free;
      FormProdutosCompTree:=nil;
    end;

    if DM.TBProducaoItensCompPDC_COMPOSTO.Value='N' then
    AlterarCor1.Click;
  end;
end;

initialization
  RegisterClass(TFormProducao);

finalization
  UnRegisterClass(TFormProducao);

end.
