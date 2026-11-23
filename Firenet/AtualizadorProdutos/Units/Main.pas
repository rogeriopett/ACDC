unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBDatabase, DB, IBQuery, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, XPMan, PngBitBtn, CheckLst;

type
  TFormMain = class(TForm)
    ProgressBar1: TProgressBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn3: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    Label5: TLabel;
    Bevel1: TBevel;
    XPManifest1: TXPManifest;
    BitBtn5: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    CheckListBox1: TCheckListBox;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
  private
    { Private declarations }
    procedure MontarSQLInsert(var SQL: WideString);
    procedure MontarSQLUpdate(var SQL: WideString);
    procedure PassarValoresCampos;
    procedure GravarCamposSelecionados();
    function RetornarValor(Secao, Chave: String): Boolean;
  public
    { Public declarations }
    procedure Variaveis(Acao: String);
    procedure AtualizarCheckListBox();
  end;

var
  FormMain: TFormMain;
  DB_ORIGEM, SV_ORIGEM, TP_ORIGEM, DB_DESTINO, SV_DESTINO, TP_DESTINO: String;
  Cancelar: Boolean;
  CamposAtualizar: Word;

implementation
uses Funcoes1, IniFiles, DataMod, Config;

{$R *.dfm}

procedure TFormMain.GravarCamposSelecionados();
var F: TIniFile;
  I: Integer;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Parametros.ini');
  for I:=0 to CheckListBox1.Count-1 do
  begin
    F.WriteBool('CAMPOS_PRODUTOS',CheckListBox1.Items[I],CheckListBox1.Checked[I]);
  end;
  F.Destroy;
end;

function TFormMain.RetornarValor(Secao, Chave: String): Boolean;
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Parametros.ini');
  Result:=F.ReadBool(Secao,Chave,True);
  F.Destroy;
end;

procedure TFormMain.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.DBOrigem.Connected:=False;
  DM.DBDestino.Connected:=False;

  Variaveis('SAVE');
  GravarCamposSelecionados();
  Application.Terminate;
end;

procedure TFormMain.MontarSQLInsert(var SQL: WideString);
var I: Integer;
begin
  SQL:='insert into PRODUTOS (';
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    //quando é produto novo, vai todos os campos. if CheckListBox1.Checked[I] then
    SQL:=SQL+CheckListBox1.Items[I]+', ';
  end;
  Delete(SQL,Length(SQL)-1,2); //retira a ultima virgula e espaço.
  SQL:=SQL+') values (';
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    //quando é produto novo, vai todos os campos. if CheckListBox1.Checked[I] then
    SQL:=SQL+':'+CheckListBox1.Items[I]+', ';
  end;
  Delete(SQL,Length(SQL)-1,2); //retira a ultima virgura e espaço.
  SQL:=SQL+');';

{       'PRO_CODIGO, PRO_FAMILIA, PRO_GRUPO, PRO_MARCA, PRO_ALIQCOFINS, PRO_ALIQCOFINSST, '+
       'PRO_ALIQICMS, PRO_ALIQICMSADICST, PRO_ALIQICMSRED, PRO_ALIQICMSST, PRO_ALIQIPI, '+
       'PRO_ALIQISS, PRO_ALIQOUTROS, PRO_ALIQPIS, PRO_ALIQPISST, PRO_ATUALIZATABELA, '+
       'PRO_CLASSFISCAL, PRO_CODIGOBARRAS, PRO_CODIGOFAB, PRO_COMISSAO, PRO_COMPOEBASEICMS, PRO_COMPOSTO, '+
       'PRO_CORSABOR, PRO_CSTCOFINS, PRO_CSTICMS, PRO_CSTIPI, PRO_CSTISS, PRO_CSTPIS, '+
       'PRO_DESCRICAO, PRO_DTATUALIZACAO, PRO_DTCADASTRO, ';}
//  if CheckBox3.Checked then SQL:=SQL+'  PRO_DTULTCOMPRA, ';
//  if CheckBox4.Checked then SQL:=SQL+'  PRO_DTULTVENDA, ';
//  if CheckBox5.Checked then SQL:=SQL+'  PRO_ESTOQUEATUAL, ';
//  if CheckBox2.Checked then SQL:=SQL+'  PRO_ESTOQUEMAX, ';
//  if CheckBox1.Checked then SQL:=SQL+'  PRO_ESTOQUEMIN, ';
{  SQL:=SQL+'PRO_INTERNET, PRO_LOCALIZACAO, PRO_MARGEM, PRO_MARGEM1, '+
       'PRO_MARGEM2, PRO_MARGEM3, PRO_MARGEM4, PRO_MARGEM5, PRO_MARGEM6, PRO_MODICMS, '+
       'PRO_MODICMSST, PRO_NOME, PRO_OBSERVACOES, PRO_OFERTA, PRO_ORIGEM, PRO_PALAVRASCHAVE, PRO_PESO, '+
       'PRO_PRECO1, PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, '+
       'PRO_PRECOCUSTO, PRO_PRECOCUSTOMEDIO, PRO_PRECOCUSTOULT, PRO_PRECOVENDA, '+
       'PRO_PRECOVENDAMEDIO, PRO_PRECOVENDAULT, PRO_REGISTROMS, PRO_STATUS, '+
       'PRO_TABPRECO1, PRO_TABPRECO2, PRO_TABPRECO3, PRO_TABPRECO4, PRO_TABPRECO5, '+
       'PRO_TABPRECO6, PRO_TAMANHO, PRO_TIPO, '+
       'PRO_UNIDADE, PRO_USUARIO) '+
       'values ('+
       ':PRO_CODIGO, :PRO_FAMILIA, :PRO_GRUPO, :PRO_MARCA, :PRO_ALIQCOFINS, :PRO_ALIQCOFINSST, '+
       ':PRO_ALIQICMS, :PRO_ALIQICMSADICST, :PRO_ALIQICMSRED, :PRO_ALIQICMSST, :PRO_ALIQIPI, '+
       ':PRO_ALIQISS, :PRO_ALIQOUTROS, :PRO_ALIQPIS, :PRO_ALIQPISST, :PRO_ATUALIZATABELA, '+
       ':PRO_CLASSFISCAL, :PRO_CODIGOBARRAS, :PRO_CODIGOFAB, :PRO_COMISSAO, :PRO_COMPOEBASEICMS, :PRO_COMPOSTO, '+
       ':PRO_CORSABOR, :PRO_CSTCOFINS, :PRO_CSTICMS, :PRO_CSTIPI, :PRO_CSTISS, :PRO_CSTPIS, '+
       ':PRO_DESCRICAO, :PRO_DTATUALIZACAO, :PRO_DTCADASTRO, ';   }
//  if CheckBox3.Checked then SQL:=SQL+':PRO_DTULTCOMPRA, ';
//  if CheckBox4.Checked then SQL:=SQL+':PRO_DTULTVENDA, ';
//  if CheckBox5.Checked then SQL:=SQL+':PRO_ESTOQUEATUAL, ';
//  if CheckBox2.Checked then SQL:=SQL+':PRO_ESTOQUEMAX, ';
//  if CheckBox1.Checked then SQL:=SQL+':PRO_ESTOQUEMIN, ';
{  SQL:=SQL+':PRO_INTERNET, :PRO_LOCALIZACAO, :PRO_MARGEM, :PRO_MARGEM1, '+
       ':PRO_MARGEM2, :PRO_MARGEM3, :PRO_MARGEM4, :PRO_MARGEM5, :PRO_MARGEM6, :PRO_MODICMS, '+
       ':PRO_MODICMSST, :PRO_NOME, :PRO_OBSERVACOES, :PRO_OFERTA, :PRO_ORIGEM, :PRO_PALAVRASCHAVE, :PRO_PESO, '+
       ':PRO_PRECO1, :PRO_PRECO2, :PRO_PRECO3, :PRO_PRECO4, :PRO_PRECO5, :PRO_PRECO6, '+
       ':PRO_PRECOCUSTO, :PRO_PRECOCUSTOMEDIO, :PRO_PRECOCUSTOULT, :PRO_PRECOVENDA, '+
       ':PRO_PRECOVENDAMEDIO, :PRO_PRECOVENDAULT, :PRO_REGISTROMS, :PRO_STATUS, '+
       ':PRO_TABPRECO1, :PRO_TABPRECO2, :PRO_TABPRECO3, :PRO_TABPRECO4, :PRO_TABPRECO5, '+
       ':PRO_TABPRECO6, :PRO_TAMANHO, :PRO_TIPO, '+
       ':PRO_UNIDADE, :PRO_USUARIO);';  }
end;

procedure TFormMain.MontarSQLUpdate(var SQL: WideString);
var I: Integer;
begin
  SQL:='update PRODUTOS set ';
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    if CheckListBox1.Checked[I] then
    SQL:=SQL+CheckListBox1.Items[I]+'=:'+CheckListBox1.Items[I]+', ';
  end;
  Delete(SQL,Length(SQL)-1,2); //elimina a ultima virgula e espaço.
  SQL:=SQL+' where PRO_CODIGO=:PRO_CODIGO'
end;

procedure TFormMain.PassarValoresCampos;
begin
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQCOFINS')]         then DM.QYDProdutos.ParamByName('PRO_ALIQCOFINS').AsFloat:=DM.QYOProdutosPRO_ALIQCOFINS.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQCOFINSST')]       then DM.QYDProdutos.ParamByName('PRO_ALIQCOFINSST').AsFloat:=DM.QYOProdutosPRO_ALIQCOFINSST.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQICMS')]           then DM.QYDProdutos.ParamByName('PRO_ALIQICMS').AsFloat:=DM.QYOProdutosPRO_ALIQICMS.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQICMSADICST')]     then DM.QYDProdutos.ParamByName('PRO_ALIQICMSADICST').AsFloat:=DM.QYOProdutosPRO_ALIQICMSADICST.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQICMSRED')]        then DM.QYDProdutos.ParamByName('PRO_ALIQICMSRED').AsFloat:=DM.QYOProdutosPRO_ALIQICMSRED.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQICMSST')]         then DM.QYDProdutos.ParamByName('PRO_ALIQICMSST').AsFloat:=DM.QYOProdutosPRO_ALIQICMSST.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQIPI')]            then DM.QYDProdutos.ParamByName('PRO_ALIQIPI').AsFloat:=DM.QYOProdutosPRO_ALIQIPI.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQISS')]            then DM.QYDProdutos.ParamByName('PRO_ALIQISS').AsFloat:=DM.QYOProdutosPRO_ALIQISS.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQOUTROS')]         then DM.QYDProdutos.ParamByName('PRO_ALIQOUTROS').AsFloat:=DM.QYOProdutosPRO_ALIQOUTROS.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQPIS')]            then DM.QYDProdutos.ParamByName('PRO_ALIQPIS').AsFloat:=DM.QYOProdutosPRO_ALIQPIS.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ALIQPISST')]          then DM.QYDProdutos.ParamByName('PRO_ALIQPISST').AsFloat:=DM.QYOProdutosPRO_ALIQPISST.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ATUALIZAR')]          then DM.QYDProdutos.ParamByName('PRO_ATUALIZAR').AsString:=DM.QYOProdutosPRO_ATUALIZAR.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ATUALIZATABELA')]     then DM.QYDProdutos.ParamByName('PRO_ATUALIZATABELA').AsString:=DM.QYOProdutosPRO_ATUALIZATABELA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CEST')]               then DM.QYDProdutos.ParamByName('PRO_CEST').AsString:=DM.QYOProdutosPRO_CEST.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CFOP')]               then DM.QYDProdutos.ParamByName('PRO_CFOP').AsInteger:=DM.QYOProdutosPRO_CFOP.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CFOPFORA')]           then DM.QYDProdutos.ParamByName('PRO_CFOPFORA').AsInteger:=DM.QYOProdutosPRO_CFOP.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CLASSFISCAL')]        then DM.QYDProdutos.ParamByName('PRO_CLASSFISCAL').AsString:=DM.QYOProdutosPRO_CLASSFISCAL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CODIGO')]             then DM.QYDProdutos.ParamByName('PRO_CODIGO').AsInteger:=DM.QYOProdutosPRO_CODIGO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CODIGOBARRAS')]       then DM.QYDProdutos.ParamByName('PRO_CODIGOBARRAS').AsString:=DM.QYOProdutosPRO_CODIGOBARRAS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CODIGOFAB')]          then DM.QYDProdutos.ParamByName('PRO_CODIGOFAB').AsString:=DM.QYOProdutosPRO_CODIGOFAB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_COMISSAO')]           then DM.QYDProdutos.ParamByName('PRO_COMISSAO').AsFloat:=DM.QYOProdutosPRO_COMISSAO.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_COMPOEBASEICMS')]     then DM.QYDProdutos.ParamByName('PRO_COMPOEBASEICMS').AsString:=DM.QYOProdutosPRO_COMPOEBASEICMS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_COMPOEBASEICMSST')]   then DM.QYDProdutos.ParamByName('PRO_COMPOEBASEICMSST').AsString:=DM.QYOProdutosPRO_COMPOEBASEICMSST.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_COMPOSTO')]           then DM.QYDProdutos.ParamByName('PRO_COMPOSTO').AsString:=DM.QYOProdutosPRO_COMPOSTO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CONVERSAO')]          then DM.QYDProdutos.ParamByName('PRO_CONVERSAO').AsFloat:=DM.QYOProdutosPRO_CONVERSAO.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CORSABOR')]           then DM.QYDProdutos.ParamByName('PRO_CORSABOR').AsString:=DM.QYOProdutosPRO_CORSABOR.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CSTCOFINS')]          then DM.QYDProdutos.ParamByName('PRO_CSTCOFINS').AsInteger:=DM.QYOProdutosPRO_CSTCOFINS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CSTICMS')]            then DM.QYDProdutos.ParamByName('PRO_CSTICMS').AsInteger:=DM.QYOProdutosPRO_CSTICMS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CSTIPI')]             then DM.QYDProdutos.ParamByName('PRO_CSTIPI').AsInteger:=DM.QYOProdutosPRO_CSTIPI.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_CSTPIS')]             then DM.QYDProdutos.ParamByName('PRO_CSTPIS').AsInteger:=DM.QYOProdutosPRO_CSTPIS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_DESCMAX')]            then DM.QYDProdutos.ParamByName('PRO_DESCMAX').AsFloat:=DM.QYOProdutosPRO_DESCMAX.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_DESCRICAO')]          then DM.QYDProdutos.ParamByName('PRO_DESCRICAO').AsAnsiString:=DM.QYOProdutosPRO_DESCRICAO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_DTATUALIZACAO')]      then DM.QYDProdutos.ParamByName('PRO_DTATUALIZACAO').AsDate:=DM.QYOProdutosPRO_DTATUALIZACAO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_DTCADASTRO')]         then DM.QYDProdutos.ParamByName('PRO_DTCADASTRO').AsDate:=DM.QYOProdutosPRO_DTCADASTRO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_DTULTCOMPRA')]        then DM.QYDProdutos.ParamByName('PRO_DTULTCOMPRA').AsDate:=DM.QYOProdutosPRO_DTULTCOMPRA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_DTULTVENDA')]         then DM.QYDProdutos.ParamByName('PRO_DTULTVENDA').AsDate:=DM.QYOProdutosPRO_DTULTVENDA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ECFICMS')]            then DM.QYDProdutos.ParamByName('PRO_ECFICMS').AsString:=DM.QYOProdutosPRO_ECFICMS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ESTOQUEATUAL')]       then DM.QYDProdutos.ParamByName('PRO_ESTOQUEATUAL').AsFloat:=DM.QYOProdutosPRO_ESTOQUEATUAL.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ESTOQUEMAX')]         then DM.QYDProdutos.ParamByName('PRO_ESTOQUEMAX').AsFloat:=DM.QYOProdutosPRO_ESTOQUEMAX.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ESTOQUEMIN')]         then DM.QYDProdutos.ParamByName('PRO_ESTOQUEMIN').AsFloat:=DM.QYOProdutosPRO_ESTOQUEMIN.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_EXCECAO')]            then DM.QYDProdutos.ParamByName('PRO_EXCECAO').AsFloat:=DM.QYOProdutosPRO_EXCECAO.AsInteger;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_FAMILIA')]            then DM.QYDProdutos.ParamByName('PRO_FAMILIA').AsInteger:=DM.QYOProdutosPRO_FAMILIA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_FCI')]                then DM.QYDProdutos.ParamByName('PRO_FCI').AsString:=DM.QYOProdutosPRO_FCI.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_FORNECEDOR')]         then DM.QYDProdutos.ParamByName('PRO_FORNECEDOR').AsInteger:=DM.QYOProdutosPRO_FORNECEDOR.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_GENERO')]             then DM.QYDProdutos.ParamByName('PRO_GENERO').AsInteger:=DM.QYOProdutosPRO_GENERO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_GRUPO')]              then DM.QYDProdutos.ParamByName('PRO_GRUPO').AsInteger:=DM.QYOProdutosPRO_GRUPO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_INCENTIVOISS')]       then DM.QYDProdutos.ParamByName('PRO_INCENTIVOISS').AsString:=DM.QYOProdutosPRO_INCENTIVOISS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_INDICADORISS')]       then DM.QYDProdutos.ParamByName('PRO_INDICADORISS').AsString:=DM.QYOProdutosPRO_INDICADORISS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_INTERNET')]           then DM.QYDProdutos.ParamByName('PRO_INTERNET').AsString:=DM.QYOProdutosPRO_INTERNET.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_LOCALIZACAO')]        then DM.QYDProdutos.ParamByName('PRO_LOCALIZACAO').AsString:=DM.QYOProdutosPRO_LOCALIZACAO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARCA')]              then DM.QYDProdutos.ParamByName('PRO_MARCA').AsInteger:=DM.QYOProdutosPRO_MARCA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARGEM')]             then DM.QYDProdutos.ParamByName('PRO_MARGEM').AsFloat:=DM.QYOProdutosPRO_MARGEM.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARGEM1')]            then DM.QYDProdutos.ParamByName('PRO_MARGEM1').AsFloat:=DM.QYOProdutosPRO_MARGEM1.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARGEM2')]            then DM.QYDProdutos.ParamByName('PRO_MARGEM2').AsFloat:=DM.QYOProdutosPRO_MARGEM2.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARGEM3')]            then DM.QYDProdutos.ParamByName('PRO_MARGEM3').AsFloat:=DM.QYOProdutosPRO_MARGEM3.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARGEM4')]            then DM.QYDProdutos.ParamByName('PRO_MARGEM4').AsFloat:=DM.QYOProdutosPRO_MARGEM4.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARGEM5')]            then DM.QYDProdutos.ParamByName('PRO_MARGEM5').AsFloat:=DM.QYOProdutosPRO_MARGEM5.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARGEM6')]            then DM.QYDProdutos.ParamByName('PRO_MARGEM6').AsFloat:=DM.QYOProdutosPRO_MARGEM6.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARKUP')]             then DM.QYDProdutos.ParamByName('PRO_MARKUP').AsFloat:=DM.QYOProdutosPRO_MARKUP.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MARKUPCODIGO')]       then DM.QYDProdutos.ParamByName('PRO_MARKUPCODIGO').AsFloat:=DM.QYOProdutosPRO_MARKUPCODIGO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MODICMS')]            then DM.QYDProdutos.ParamByName('PRO_MODICMS').AsString:=DM.QYOProdutosPRO_MODICMS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_MODICMSST')]          then DM.QYDProdutos.ParamByName('PRO_MODICMSST').AsString:=DM.QYOProdutosPRO_MODICMSST.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_NOME')]               then DM.QYDProdutos.ParamByName('PRO_NOME').AsString:=DM.QYOProdutosPRO_NOME.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_OBSERVACOES')]        then DM.QYDProdutos.ParamByName('PRO_OBSERVACOES').AsString:=DM.QYOProdutosPRO_OBSERVACOES.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_OFERTA')]             then DM.QYDProdutos.ParamByName('PRO_OFERTA').AsString:=DM.QYOProdutosPRO_OFERTA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_ORIGEM')]             then DM.QYDProdutos.ParamByName('PRO_ORIGEM').AsString:=DM.QYOProdutosPRO_ORIGEM.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PALAVRASCHAVE')]      then DM.QYDProdutos.ParamByName('PRO_PALAVRASCHAVE').AsString:=DM.QYOProdutosPRO_PALAVRASCHAVE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PESAVEL')]            then DM.QYDProdutos.ParamByName('PRO_PESAVEL').AsString:=DM.QYOProdutosPRO_PESAVEL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PESO')]               then DM.QYDProdutos.ParamByName('PRO_PESO').AsFloat:=DM.QYOProdutosPRO_PESO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECO1')]             then DM.QYDProdutos.ParamByName('PRO_PRECO1').AsFloat:=DM.QYOProdutosPRO_PRECO1.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECO2')]             then DM.QYDProdutos.ParamByName('PRO_PRECO2').AsFloat:=DM.QYOProdutosPRO_PRECO2.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECO3')]             then DM.QYDProdutos.ParamByName('PRO_PRECO3').AsFloat:=DM.QYOProdutosPRO_PRECO3.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECO4')]             then DM.QYDProdutos.ParamByName('PRO_PRECO4').AsFloat:=DM.QYOProdutosPRO_PRECO4.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECO5')]             then DM.QYDProdutos.ParamByName('PRO_PRECO5').AsFloat:=DM.QYOProdutosPRO_PRECO5.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECO6')]             then DM.QYDProdutos.ParamByName('PRO_PRECO6').AsFloat:=DM.QYOProdutosPRO_PRECO6.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECOCUSTO')]         then DM.QYDProdutos.ParamByName('PRO_PRECOCUSTO').AsFloat:=DM.QYOProdutosPRO_PRECOCUSTO.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECOCUSTOCOMP')]     then DM.QYDProdutos.ParamByName('PRO_PRECOCUSTOCOMP').AsFloat:=DM.QYOProdutosPRO_PRECOCUSTOCOMP.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECOCUSTOMEDIO')]    then DM.QYDProdutos.ParamByName('PRO_PRECOCUSTOMEDIO').AsFloat:=DM.QYOProdutosPRO_PRECOCUSTOMEDIO.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECOCUSTOULT')]      then DM.QYDProdutos.ParamByName('PRO_PRECOCUSTOULT').AsFloat:=DM.QYOProdutosPRO_PRECOCUSTOULT.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECOVENDA')]         then DM.QYDProdutos.ParamByName('PRO_PRECOVENDA').AsFloat:=DM.QYOProdutosPRO_PRECOVENDA.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECOVENDAMEDIO')]    then DM.QYDProdutos.ParamByName('PRO_PRECOVENDAMEDIO').AsFloat:=DM.QYOProdutosPRO_PRECOVENDAMEDIO.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRECOVENDAULT')]      then DM.QYDProdutos.ParamByName('PRO_PRECOVENDAULT').AsFloat:=DM.QYOProdutosPRO_PRECOVENDAULT.AsExtended;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRODUCAO')]           then DM.QYDProdutos.ParamByName('PRO_PRODUCAO').AsString:=DM.QYOProdutosPRO_PRODUCAO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_PRODUTOREAL')]        then DM.QYDProdutos.ParamByName('PRO_PRODUTOREAL').AsFloat:=DM.QYOProdutosPRO_PRODUTOREAL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_REGISTROMS')]         then DM.QYDProdutos.ParamByName('PRO_REGISTROMS').AsString:=DM.QYOProdutosPRO_REGISTROMS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_STATUS')]             then DM.QYDProdutos.ParamByName('PRO_STATUS').AsString:=DM.QYOProdutosPRO_STATUS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_SUBSTITUICAOTRIB')]   then DM.QYDProdutos.ParamByName('PRO_SUBSTITUICAOTRIB').AsString:=DM.QYOProdutosPRO_SUBSTITUICAOTRIB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TABPRECO1')]          then DM.QYDProdutos.ParamByName('PRO_TABPRECO1').AsString:=DM.QYOProdutosPRO_TABPRECO1.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TABPRECO2')]          then DM.QYDProdutos.ParamByName('PRO_TABPRECO2').AsString:=DM.QYOProdutosPRO_TABPRECO2.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TABPRECO3')]          then DM.QYDProdutos.ParamByName('PRO_TABPRECO3').AsString:=DM.QYOProdutosPRO_TABPRECO3.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TABPRECO4')]          then DM.QYDProdutos.ParamByName('PRO_TABPRECO4').AsString:=DM.QYOProdutosPRO_TABPRECO4.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TABPRECO5')]          then DM.QYDProdutos.ParamByName('PRO_TABPRECO5').AsString:=DM.QYOProdutosPRO_TABPRECO5.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TABPRECO6')]          then DM.QYDProdutos.ParamByName('PRO_TABPRECO6').AsString:=DM.QYOProdutosPRO_TABPRECO6.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TAMANHO')]            then DM.QYDProdutos.ParamByName('PRO_TAMANHO').AsString:=DM.QYOProdutosPRO_TAMANHO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TIPO')]               then DM.QYDProdutos.ParamByName('PRO_TIPO').AsString:=DM.QYOProdutosPRO_TIPO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TIPOISS')]            then DM.QYDProdutos.ParamByName('PRO_TIPOISS').AsString:=DM.QYOProdutosPRO_TIPOISS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TIPOITEM')]           then DM.QYDProdutos.ParamByName('PRO_TIPOITEM').AsString:=DM.QYOProdutosPRO_TIPOITEM.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TOTALIZADORPARCIAL')] then DM.QYDProdutos.ParamByName('PRO_TOTALIZADORPARCIAL').AsString:=DM.QYOProdutosPRO_TOTALIZADORPARCIAL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_TRIBUTO')]            then DM.QYDProdutos.ParamByName('PRO_TRIBUTO').AsString:=DM.QYOProdutosPRO_TRIBUTO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_UNIDADE')]            then DM.QYDProdutos.ParamByName('PRO_UNIDADE').AsString:=DM.QYOProdutosPRO_UNIDADE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('PRO_USUARIO')]            then DM.QYDProdutos.ParamByName('PRO_USUARIO').AsString:=DM.QYOProdutosPRO_USUARIO.Value;
end;

procedure TFormMain.PngBitBtn1Click(Sender: TObject);
var I: Integer;
begin
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    CheckListBox1.Checked[I]:=True;
  end;
end;

procedure TFormMain.PngBitBtn2Click(Sender: TObject);
var I: Integer;
begin
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    CheckListBox1.Checked[I]:=not CheckListBox1.Checked[I];
  end;
end;

procedure TFormMain.PngBitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(TFormConfig, FormConfig);
  FormConfig.ShowModal;
  FormConfig.Free;
  FormConfig:=nil;

  Label6.Caption:=SV_ORIGEM;
  Label7.Caption:=DB_ORIGEM;
  Label12.Caption:=TP_ORIGEM;

  Label8.Caption:=SV_DESTINO;
  Label9.Caption:=DB_DESTINO;
  Label13.Caption:=TP_DESTINO;

  DM.DBOrigem.Connected:=False;
  DM.DBDestino.Connected:=False;

  if TP_ORIGEM='Remoto' then
  DM.DBOrigem.DatabaseName:=SV_ORIGEM+':'+DB_ORIGEM else
  DM.DBOrigem.DatabaseName:=DB_ORIGEM;

  if TP_DESTINO='Remoto' then
  DM.DBDestino.DatabaseName:=SV_DESTINO+':'+DB_DESTINO else
  DM.DBDestino.DatabaseName:=DB_DESTINO;

  try
    DM.DBOrigem.Connected:=True;
    DM.DBDestino.Connected:=True;
    except on Exception do
    begin
      MessageDlg('Não foi possível abrir as bases de dados.'+#13+#10+'Verifique as configurações em "Configurar".',mtError,[mbOK],0);
      CheckListBox1.Items.Clear;
      Exit;
    end;
  end;

  AtualizarCheckListBox;
end;

procedure TFormMain.BitBtn3Click(Sender: TObject);
var Novos, Velhos: Integer;
  SQL: WideString;
begin
  if (not DM.DBOrigem.Connected) or (not DM.DBDestino.Connected) then
  begin
    MessageDlg('Bases de dados não abertas.'+#13+#10+'Verifique as configurações em "Configurar".',mtError,[mbOK],0);
    Exit;
  end;
  if MessageDlg('Atualizar tabela de produtos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if TP_ORIGEM='Remoto' then
    DM.DBOrigem.DatabaseName:=SV_ORIGEM+':'+DB_ORIGEM else
    DM.DBOrigem.DatabaseName:=DB_ORIGEM;
    DM.DBOrigem.Connected:=True;

    if TP_DESTINO='Remoto' then
    DM.DBDestino.DatabaseName:=SV_DESTINO+':'+DB_DESTINO else
    DM.DBDestino.DatabaseName:=DB_DESTINO;
    DM.DBDestino.Connected:=True;

    DM.QYOVersao.Open;
    DM.QYDVersao.Open;
    if DM.QYOVersaoVER_VERSAOBASE.Value<>DM.QYDVersaoVER_VERSAOBASE.Value then
    begin
      MessageDlg('As versões das bases de dados são diferentes.'+#13#10+#13#10+
                 'Versão base origem: '+DM.QYOVersaoVER_VERSAOBASE.Value+#13#10+
                 'Versão base destino: '+DM.QYDVersaoVER_VERSAOBASE.Value,mtError,[mbOk],0);
      Exit;
    end;

    DM.QYOAlmoxarifados.Open;
    DM.TBDProdutosQtde.Open;

    DM.QYOProdutos.Open;
    DM.QYOProdutos.DisableControls;
    DM.QYOProdutos.FetchAll;
    DM.TBDProdutos.Open;

    DM.QYDFamilias.Open;
    DM.QYDGrupos.Open;
    DM.QYDMarcas.Open;
    DM.QYDFornecedores.Open;
    DM.QYDUnidades.Open;

    ProgressBar1.Max:=DM.QYOProdutos.RecordCount;
    ProgressBar1.Position:=0;
    ProgressBar1.Visible:=True;
    Novos:=0;
    Velhos:=0;
    BitBtn3.Enabled:=False;
    BitBtn4.Enabled:=False;
    BitBtn5.Enabled:=True;
    PngBitBtn1.Enabled:=False;
    PngBitBtn2.Enabled:=False;
    PngBitBtn3.Enabled:=False;
    Cancelar:=False;
    DM.QYOProdutos.Open;
    DM.QYOProdutos.First;
    while not DM.QYOProdutos.Eof do
    begin
      if Cancelar then
      begin
        Cancelar:=False;
        BitBtn3.Enabled:=True;
        BitBtn4.Enabled:=True;
        BitBtn5.Enabled:=False;
        PngBitBtn1.Enabled:=True;
        PngBitBtn2.Enabled:=True;
        PngBitBtn3.Enabled:=True;
        MessageDlg('O processo de atualização foi cancelado!',mtInformation,[mbOk],0);
        ProgressBar1.Position:=0;
        Label5.Caption:='';
        Break; //sai do while.
      end;
      ProgressBar1.StepIt;
      Label5.Caption:='Atualizando produto: '+IntToStr(ProgressBar1.Position)+' de '+IntToStr(ProgressBar1.Max)+' - Código Produto: '+IntToStr(DM.QYOProdutosPRO_CODIGO.Value);
      Application.ProcessMessages;

      //verificações das tabelas auxiliares.
      {$REGION 'verifica se familia existe na base destino.'}
      if not DM.QYDFamilias.Locate('FAM_CODIGO',DM.QYOProdutosPRO_FAMILIA.Value,[]) then
      begin
        MessageDlg('A família do produto '+IntToStr(DM.QYOProdutosPRO_CODIGO.Value)+'-'+DM.QYOProdutosPRO_NOME.Value+' não foi encontrada na base de dados destino.'+#13#10+
                   'Verifique se a família com o código '+IntToStr(DM.QYOProdutosPRO_FAMILIA.Value)+' está cadastrada.' ,mtError,[mbOk],0);
        BitBtn3.Enabled:=True;
        BitBtn4.Enabled:=True;
        BitBtn5.Enabled:=False;
        PngBitBtn1.Enabled:=True;
        PngBitBtn2.Enabled:=True;
        PngBitBtn3.Enabled:=True;
        Cancelar:=False;
        Exit;
      end;
      {$ENDREGION}
      {$REGION 'verifica se grupo existe na base destino.'}
      if not DM.QYDGrupos.Locate('GRU_CODIGO',DM.QYOProdutosPRO_GRUPO.Value,[]) then
      begin
        MessageDlg('O grupo do produto '+IntToStr(DM.QYOProdutosPRO_CODIGO.Value)+'-'+DM.QYOProdutosPRO_NOME.Value+' não foi encontrado na base de dados destino.'+#13#10+
                   'Verifique se o grupo com o código '+IntToStr(DM.QYOProdutosPRO_GRUPO.Value)+' está cadastrado.' ,mtError,[mbOk],0);
        BitBtn3.Enabled:=True;
        BitBtn4.Enabled:=True;
        BitBtn5.Enabled:=False;
        PngBitBtn1.Enabled:=True;
        PngBitBtn2.Enabled:=True;
        PngBitBtn3.Enabled:=True;
        Cancelar:=False;
        Exit;
      end;
      {$ENDREGION}
      {$REGION 'verifica se unidade de medida existe na base destino.'}
      if not DM.QYDUnidades.Locate('UNI_CODIGO',DM.QYOProdutosPRO_UNIDADE.Value,[]) then
      begin
        MessageDlg('A unidade de medida do produto '+IntToStr(DM.QYOProdutosPRO_CODIGO.Value)+'-'+DM.QYOProdutosPRO_NOME.Value+' não foi encontrada na base de dados destino.'+#13#10+
                   'Verifique se a unidade de medida com o código "'+DM.QYOProdutosPRO_UNIDADE.Value+'" está cadastrada.' ,mtError,[mbOk],0);
        BitBtn3.Enabled:=True;
        BitBtn4.Enabled:=True;
        BitBtn5.Enabled:=False;
        PngBitBtn1.Enabled:=True;
        PngBitBtn2.Enabled:=True;
        PngBitBtn3.Enabled:=True;
        Cancelar:=False;
        Exit;
      end;
      {$ENDREGION}
      {$REGION 'verifica se marca existe na base destino.'}
      if not DM.QYDMarcas.Locate('MAR_CODIGO',DM.QYOProdutosPRO_MARCA.Value,[]) then
      begin
        MessageDlg('A marca do produto '+IntToStr(DM.QYOProdutosPRO_CODIGO.Value)+'-'+DM.QYOProdutosPRO_NOME.Value+' não foi encontrada na base de dados destino.'+#13#10+
                   'Verifique se a marca com o código '+IntToStr(DM.QYOProdutosPRO_MARCA.Value)+' está cadastrada.' ,mtError,[mbOk],0);
        BitBtn3.Enabled:=True;
        BitBtn4.Enabled:=True;
        BitBtn5.Enabled:=False;
        PngBitBtn1.Enabled:=True;
        PngBitBtn2.Enabled:=True;
        PngBitBtn3.Enabled:=True;
        Cancelar:=False;
        Exit;
      end;
      {$ENDREGION}
      {$REGION 'verifica se fornecedor existe na base destino.'}
      if not DM.QYDFornecedores.Locate('FOR_CODIGO',DM.QYOProdutosPRO_FORNECEDOR.Value,[]) then
      begin
        MessageDlg('O fornecedor do produto '+IntToStr(DM.QYOProdutosPRO_CODIGO.Value)+'-'+DM.QYOProdutosPRO_NOME.Value+' não foi encontrado na base de dados destino.'+#13#10+
                   'Verifique se o fornecedor com o código '+IntToStr(DM.QYOProdutosPRO_FORNECEDOR.Value)+' está cadastrado.' ,mtError,[mbOk],0);
        BitBtn3.Enabled:=True;
        BitBtn4.Enabled:=True;
        BitBtn5.Enabled:=False;
        PngBitBtn1.Enabled:=True;
        PngBitBtn2.Enabled:=True;
        PngBitBtn3.Enabled:=True;
        Cancelar:=False;
        Exit;
      end;
      {$ENDREGION}

      //se nao achou o produto na base de destino, inclui.
      if not DM.TBDProdutos.Locate('PRO_CODIGO',DM.QYOProdutosPRO_CODIGO.Value,[]) then
      begin
        MontarSQLInsert(SQL);
        DM.QYDProdutos.SQL.Clear;
        DM.QYDProdutos.SQL.Add(SQL);
        PassarValoresCampos;
        DM.QYDProdutos.ExecSQL;
        DM.TRQDProdutos.Commit;
        //Incrementa o generator GEN_PRODUTOS.
        DM.QYDProdutos.SQL.Clear;
        DM.QYDProdutos.SQL.Add('select gen_id(GEN_PRODUTOS,1) from RDB$DATABASE');
        DM.QYDProdutos.Open;
        DM.TRQDProdutos.Commit;
        //...
        //cadastra os almoxarifados conforme o cadastro de almoxarifados DA base de destino.
        DM.QYOAlmoxarifados.First;
        while not DM.QYOAlmoxarifados.Eof do
        begin
          DM.TBDProdutosQtde.Insert;
          DM.TBDProdutosQtdePRQ_ALMOXARIFADO.Value:=DM.QYOAlmoxarifadosALM_CODIGO.Value;
          DM.TBDProdutosQtdePRQ_PRODUTO.Value:=DM.QYOProdutosPRO_CODIGO.Value;
          DM.TBDProdutosQtdePRQ_QUANTIDADE.Value:=0;
          DM.TBDProdutosQtde.Post;
          DM.TRDProdutosQtde.Commit;
          DM.TBDProdutosQtde.Open;
          DM.QYOAlmoxarifados.Next;
        end;
        Inc(Novos);
      end else
      begin
        MontarSQLUpdate(SQL);
        DM.QYDProdutos.SQL.Clear;
        DM.QYDProdutos.SQL.Add(SQL);
        PassarValoresCampos;
        DM.QYDProdutos.ExecSQL;
        DM.TRQDProdutos.Commit;
        Inc(Velhos);
      end;
      DM.QYOProdutos.Next;
    end;
    DM.TRDProdutos.Commit;
    DM.QYOProdutos.Close;
    BitBtn3.Enabled:=True;
    BitBtn4.Enabled:=True;
    BitBtn5.Enabled:=False;
    PngBitBtn1.Enabled:=True;
    PngBitBtn2.Enabled:=True;
    PngBitBtn3.Enabled:=True;
    Cancelar:=False;
    MessageDlg(IntToStr(ProgressBar1.Position)+' produtos foram processados.'+#13#13+IntToStr(Novos)+' produtos novos.'+#13+IntToStr(Velhos)+' produtos atualizados.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMain.AtualizarCheckListBox();
var I: Word;
begin
  CheckListBox1.Items.Clear;
  DM.QYOCampos.Open;
  I:=0;
  CamposAtualizar:=0;
  while not DM.QYOCampos.Eof  do
  begin
    Inc(I);
    CheckListBox1.Items.Add(Trim(DM.QYOCampos.FieldByName('RDB$FIELD_NAME').AsString));
    if RetornarValor('CAMPOS_PRODUTOS',DM.QYOCampos.FieldByName('RDB$FIELD_NAME').AsString) then
    begin
      CheckListBox1.Checked[CheckListBox1.Count-1]:=True;
      Inc(CamposAtualizar);
    end;
    DM.QYOCampos.Next;
  end;
  DM.QYOCampos.Close;
  Label15.Caption:='Quantidade de campos: '+IntToStr(I);
  Label16.Caption:='Campos a atualizar: '+IntToStr(CamposAtualizar);
end;

procedure TFormMain.FormCreate(Sender: TObject);
var S: String;
begin
  Cancelar:=False;
  CamposAtualizar:=0;
  Label5.Caption:='';
  ProgressBar1.Visible:=False;
  S:=FileVersion(Application.ExeName);
  FormMain.Caption:=Application.Title+' - Versão: '+S;

  Variaveis('LOAD');

  Label6.Caption:=SV_ORIGEM;
  Label7.Caption:=DB_ORIGEM;
  Label12.Caption:=TP_ORIGEM;

  Label8.Caption:=SV_DESTINO;
  Label9.Caption:=DB_DESTINO;
  Label13.Caption:=TP_ORIGEM;

  if TP_ORIGEM='Remoto' then
  DM.DBOrigem.DatabaseName:=SV_ORIGEM+':'+DB_ORIGEM else
  DM.DBOrigem.DatabaseName:=DB_ORIGEM;

  if TP_DESTINO='Remoto' then
  DM.DBDestino.DatabaseName:=SV_DESTINO+':'+DB_DESTINO else
  DM.DBDestino.DatabaseName:=DB_DESTINO;

  try
    DM.DBOrigem.Connected:=True;
    DM.DBDestino.Connected:=True;
    except on Exception do
    begin
      MessageDlg('Não foi possível abrir as bases de dados.'+#13+#10+'Verifique as configurações em "Configurar".',mtError,[mbOK],0);
      Exit;
    end;
  end;

  AtualizarCheckListBox;
end;

procedure TFormMain.Variaveis(Acao: String);
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Parametros.ini');
  if UpperCase(Acao)='SAVE' then
  begin
    F.WriteString('BASES','DB_ORIGEM',DB_ORIGEM);
    F.WriteString('BASES','SV_ORIGEM',SV_ORIGEM);
    F.WriteString('BASES','TP_ORIGEM',TP_ORIGEM);
    F.WriteString('BASES','DB_DESTINO',DB_DESTINO);
    F.WriteString('BASES','SV_DESTINO',SV_DESTINO);
    F.WriteString('BASES','TP_DESTINO',TP_DESTINO);
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    DB_ORIGEM:=F.ReadString('BASES','DB_ORIGEM',DB_ORIGEM);
    SV_ORIGEM:=F.ReadString('BASES','SV_ORIGEM',SV_ORIGEM);
    TP_ORIGEM:=F.ReadString('BASES','TP_ORIGEM',TP_ORIGEM);
    DB_DESTINO:=F.ReadString('BASES','DB_DESTINO',DB_DESTINO);
    SV_DESTINO:=F.ReadString('BASES','SV_DESTINO',SV_DESTINO);
    TP_DESTINO:=F.ReadString('BASES','TP_DESTINO',TP_DESTINO);
  end;
  F.Free;
end;

procedure TFormMain.BitBtn5Click(Sender: TObject);
begin
  Cancelar:=True;
end;

procedure TFormMain.CheckListBox1ClickCheck(Sender: TObject);
begin
  if CheckListBox1.ItemIndex>=0 then
  begin
    if CheckListBox1.Checked[CheckListBox1.ItemIndex] then
    Inc(CamposAtualizar) else
    Dec(CamposAtualizar);
    Label16.Caption:='Campos a atualizar: '+IntToStr(CamposAtualizar);
  end;
end;

end.
