unit ProdutosExportar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.ComCtrls, System.UITypes, Vcl.Mask, Vcl.CheckLst;

type
  TFormProdutosExportar = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    FileSaveDialog1: TFileSaveDialog;
    ProgressBar1: TProgressBar;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn4: TPngBitBtn;
    Label1: TLabel;
    PngBitBtn1: TPngBitBtn;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    CheckBox16: TCheckBox;
    CheckListBox2: TCheckListBox;
    Label3: TLabel;
    CheckListBox1: TCheckListBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosExportar: TFormProdutosExportar;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormProdutosExportar.BitBtn1Click(Sender: TObject);
var F: TextFile;
  S, Estoque, Where: String;
  EstoqueE: Extended;
begin
  AbortIf(MaskEdit1.Text='  /  /    ','Informe a Data Base.');

  FileSaveDialog1.FileTypes.Clear;
  with FileSaveDialog1.FileTypes.Add do
  begin
    DisplayName:='Arquivo Texto CSV (*.csv)';
    FileMask:='*.csv';
  end;

  if FileSaveDialog1.Execute then
  begin
    Screen.Cursor:=crHourGlass;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(*) as QTDE from PRODUTOS');
    DM.QYAux.Open;
    ProgressBar1.Max:=DM.QYAux.FieldByName('QTDE').AsInteger;
    ProgressBar1.Position:=0;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    Where:='';
    if CheckListBox2.Checked[0] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('00 - MERCADORIA PARA REVENDA');
    if CheckListBox2.Checked[1] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('01 - MATERIA-PRIMA');
    if CheckListBox2.Checked[2] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('02 - EMBALAGEM');
    if CheckListBox2.Checked[3] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('03 - PRODUTO EM PROCESSO');
    if CheckListBox2.Checked[4] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('04 - PRODUTO ACABADO');
    if CheckListBox2.Checked[5] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('05 - SUBPRODUTO');
    if CheckListBox2.Checked[6] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('06 - PRODUTO INTERMEDIARIO');
    if CheckListBox2.Checked[7] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('07 - MATERIAL DE USO E CONSUMO');
    if CheckListBox2.Checked[8] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('08 - ATIVO IMOBILIZADO');
    if CheckListBox2.Checked[9] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('09 - SERVICOS');
    if CheckListBox2.Checked[10] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('10 - OUTROS INSUMOS');
    if CheckListBox2.Checked[11] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('99 - OUTROS');
    if Where<>'' then
    begin
      Delete(Where,1,4); //elimina o primeiro ' OR '
      Where:=' and ('+Where+') ';
    end;

    DM.QYAux.SQL.Add(
      'select * from PRODUTOS '+
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'where PRO_DTCADASTRO<=:database '+Where+' order by PRO_CODIGO'
    );
    DM.QYAux.ParamByName('database').AsDate:=StrToDate(MaskEdit1.Text,FS);
    DM.QYAux.Open;
    AssignFile(F,FileSaveDialog1.FileName);
    Rewrite(F);
    S:='';
    if CheckListBox1.Checked[0] then S:=S+';BENEFICIO';
    if CheckListBox1.Checked[1] then S:=S+';CEST';
    if CheckListBox1.Checked[2] then S:=S+';CLASSIFICACAO FISCAL;EXCECAO';
    if CheckListBox1.Checked[3] then S:=S+';CODIGO';
    if CheckListBox1.Checked[4] then S:=S+';CODIGO BARRAS';
    if CheckListBox1.Checked[5] then S:=S+';COMPOE BASE ICMS';
    if CheckListBox1.Checked[6] then S:=S+';COMPOE BASE ICMS ST';
    if CheckListBox1.Checked[7] then S:=S+';COMPOSTO';
    if CheckListBox1.Checked[8] then S:=S+';CST COFINS';
    if CheckListBox1.Checked[9] then S:=S+';CST ICMS';
    if CheckListBox1.Checked[10] then S:=S+';CST IPI';
    if CheckListBox1.Checked[11] then S:=S+';CST PIS';
    if CheckListBox1.Checked[12] then S:=S+';ENQUADRAMENTO IPI';
    if CheckListBox1.Checked[13] then S:=S+';ESTOQUE ATUAL';
    if CheckListBox1.Checked[14] then S:=S+';ESTOQUE MINIMO';
    if CheckListBox1.Checked[15] then S:=S+';ESTOQUE MAXIMO';
    if CheckListBox1.Checked[16] then S:=S+';FAMILIA';
    if CheckListBox1.Checked[17] then S:=S+';FCI';
    if CheckListBox1.Checked[18] then S:=S+';GRUPO';
    if CheckListBox1.Checked[19] then S:=S+';INCENTIVO FISCAL';
    if CheckListBox1.Checked[20] then S:=S+';INDICADOR ISS';
    if CheckListBox1.Checked[21] then S:=S+';MARGEM (%)';
    if CheckListBox1.Checked[22] then S:=S+';MODALIDADE ICMS';
    if CheckListBox1.Checked[23] then S:=S+';MODALIDADE ICMS ST';
    if CheckListBox1.Checked[24] then S:=S+';NOME';
    if CheckListBox1.Checked[25] then S:=S+';ORIGEM';
    if CheckListBox1.Checked[26] then S:=S+';PRECO DE CUSTO';
    if CheckListBox1.Checked[27] then S:=S+';PRECO DE VENDA';
    if CheckListBox1.Checked[28] then S:=S+';STATUS';
    if CheckListBox1.Checked[29] then S:=S+';TIPO (P OU S)';
    if CheckListBox1.Checked[30] then S:=S+';TIPO PRODUTO';
    if CheckListBox1.Checked[31] then S:=S+';TIPO SERVICO';
    if CheckListBox1.Checked[32] then S:=S+';TOTAL CUSTO';
    if CheckListBox1.Checked[33] then S:=S+';TOTAL VENDA';
    if CheckListBox1.Checked[34] then S:=S+';UNIDADE';
    Delete(S,1,1); //retira primeiro ponto e vírgula.
    WriteLn(F,S);
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      ProgressBar1.StepIt;
      S:='';
      Estoque:='';
      EstoqueE:=0;
      if (CheckListBox1.Checked[13]) then //campo estoque atual
      begin
        Estoque:=DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsString;
        EstoqueE:=DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsExtended;
      end;

      //if MaskEdit1.Text<>'  /  /    ' then
      //begin
        DM.QYAux2.Close;
        DM.QYAux2.SQL.Clear;
        DM.QYAux2.SQL.Add('select first(1) EST_ESTOQUEPOSTERIOR from ESTOQUE where EST_PRODUTO=:produto and EST_DATA <= :data order by EST_CODIGO desc');
        DM.QYAux2.ParamByName('produto').AsInteger:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
        DM.QYAux2.ParamByName('data').AsDate:=StrToDate(MaskEdit1.Text);
        DM.QYAux2.Open;
        DM.QYAux2.FetchAll;
        if DM.QYAux2.RecordCount=1 then
        begin
          Estoque:=DM.QYAux2.FieldByName('EST_ESTOQUEPOSTERIOR').AsString;
          EstoqueE:=DM.QYAux2.FieldByName('EST_ESTOQUEPOSTERIOR').AsExtended;
        end;
        DM.QYAux2.Close;
      //end;

      //se nao é pra incluir os produtos com estoque zerado ou negativo
      if (CheckBox16.Checked) and (EstoqueE<=0) then
      begin
        DM.QYAux.Next;
        Continue;
      end;

      if CheckListBox1.Checked[0] then S:=S+';'+DM.QYAux.FieldByName('PRO_BENEFICIO').AsString;
      if CheckListBox1.Checked[1] then S:=S+';'+DM.QYAux.FieldByName('PRO_CEST').AsString;
      if CheckListBox1.Checked[2] then S:=S+';'+DM.QYAux.FieldByName('PRO_CLASSFISCAL').AsString+';'+DM.QYAux.FieldByName('PRO_EXCECAO').AsString;
      if CheckListBox1.Checked[3] then S:=S+';'+DM.QYAux.FieldByName('PRO_CODIGO').AsString;
      if CheckListBox1.Checked[4] then S:=S+';'+DM.QYAux.FieldByName('PRO_CODIGOBARRAS').AsString;
      if CheckListBox1.Checked[5] then S:=S+';'+DM.QYAux.FieldByName('PRO_COMPOEBASEICMS').AsString;
      if CheckListBox1.Checked[6] then S:=S+';'+DM.QYAux.FieldByName('PRO_COMPOEBASEICMSST').AsString;
      if CheckListBox1.Checked[7] then S:=S+';'+DM.QYAux.FieldByName('PRO_COMPOSTO').AsString;
      if CheckListBox1.Checked[8] then S:=S+';'+DM.QYAux.FieldByName('PRO_CSTCOFINS').AsString;
      if CheckListBox1.Checked[9] then S:=S+';'+DM.QYAux.FieldByName('PRO_CSTICMS').AsString;
      if CheckListBox1.Checked[10] then S:=S+';'+DM.QYAux.FieldByName('PRO_CSTIPI').AsString;
      if CheckListBox1.Checked[11] then S:=S+';'+DM.QYAux.FieldByName('PRO_CSTPIS').AsString;
      if CheckListBox1.Checked[12] then S:=S+';'+DM.QYAux.FieldByName('PRO_ENQUADRAMENTOIPI').AsString;
      if CheckListBox1.Checked[13] then S:=S+';'+Estoque; //DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsString;
      if CheckListBox1.Checked[14] then S:=S+';'+DM.QYAux.FieldByName('PRO_ESTOQUEMIN').AsString;
      if CheckListBox1.Checked[15] then S:=S+';'+DM.QYAux.FieldByName('PRO_ESTOQUEMAX').AsString;
      if CheckListBox1.Checked[16] then S:=S+';'+DM.QYAux.FieldByName('FAM_DESCRICAO').AsString;
      if CheckListBox1.Checked[17] then S:=S+';'+DM.QYAux.FieldByName('PRO_FCI').AsString;
      if CheckListBox1.Checked[18] then S:=S+';'+DM.QYAux.FieldByName('GRU_DESCRICAO').AsString;
      if CheckListBox1.Checked[19] then S:=S+';'+DM.QYAux.FieldByName('PRO_INCENTIVOISS').AsString;
      if CheckListBox1.Checked[20] then S:=S+';'+DM.QYAux.FieldByName('PRO_INDICADORISS').AsString;
      if CheckListBox1.Checked[21] then S:=S+';'+DM.QYAux.FieldByName('PRO_MARGEM').AsString;
      if CheckListBox1.Checked[22] then S:=S+';'+DM.QYAux.FieldByName('PRO_MODICMS').AsString;
      if CheckListBox1.Checked[23] then S:=S+';'+DM.QYAux.FieldByName('PRO_MODICMSST').AsString;
      if CheckListBox1.Checked[24] then S:=S+';'+DM.QYAux.FieldByName('PRO_NOME').AsString;
      if CheckListBox1.Checked[25] then S:=S+';'+DM.QYAux.FieldByName('PRO_ORIGEM').AsString;
      if CheckListBox1.Checked[26] then S:=S+';'+DM.QYAux.FieldByName('PRO_PRECOCUSTO').AsString;
      if CheckListBox1.Checked[27] then S:=S+';'+DM.QYAux.FieldByName('PRO_PRECOVENDA').AsString;
      if CheckListBox1.Checked[28] then S:=S+';'+DM.QYAux.FieldByName('PRO_STATUS').AsString;
      if CheckListBox1.Checked[29] then S:=S+';'+DM.QYAux.FieldByName('PRO_TIPO').AsString;
      if CheckListBox1.Checked[30] then S:=S+';'+DM.QYAux.FieldByName('PRO_TIPOITEM').AsString;
      if CheckListBox1.Checked[31] then S:=S+';'+DM.QYAux.FieldByName('PRO_TIPOISS').AsString;
      if CheckListBox1.Checked[32] then S:=S+';'+FloatToStr(EstoqueE * DM.QYAux.FieldByName('PRO_PRECOCUSTO').AsExtended);
      if CheckListBox1.Checked[33] then S:=S+';'+FloatToStr(EstoqueE * DM.QYAux.FieldByName('PRO_PRECOVENDA').AsExtended);
      if CheckListBox1.Checked[34] then S:=S+';'+DM.QYAux.FieldByName('PRO_UNIDADE').AsString;
      Delete(S,1,1); //retira primeiro ponto e vírgula.
      WriteLn(F,S);
      DM.QYAux.Next;
    end;
    CloseFile(F);
    Screen.Cursor:=crDefault;
    MessageDlg('Arquivo gerado com sucesso.',mtInformation,[mbOk],0);
    ProgressBar1.Position:=0;
  end;
end;

procedure TFormProdutosExportar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosExportar.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosExportar.FormCreate(Sender: TObject);
begin
  CheckListBox1.Checked[2]:=True;
  CheckListBox1.Checked[3]:=True;
  CheckListBox1.Checked[4]:=True;
  CheckListBox1.Checked[22]:=True;

  CheckListBox2.Checked[0]:=True;
  CheckListBox2.Checked[1]:=True;
  CheckListBox2.Checked[2]:=True;
  CheckListBox2.Checked[3]:=True;
  CheckListBox2.Checked[4]:=True;
  CheckListBox2.Checked[5]:=True;
  CheckListBox2.Checked[6]:=True;
  CheckListBox2.Checked[7]:=True;
  CheckListBox2.Checked[8]:=True;
  CheckListBox2.Checked[9]:=True;
  CheckListBox2.Checked[10]:=True;
  CheckListBox2.Checked[11]:=True;
end;

procedure TFormProdutosExportar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosExportar.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    MaskEdit1.Clear;
  end;
end;

procedure TFormProdutosExportar.PngBitBtn1Click(Sender: TObject);
var F: TextFile;
  S, Estoque, Where: String;
  EstoqueE: Extended;
begin
  AbortIf(MaskEdit1.Text='  /  /    ','Informe a Data Base.');

  FileSaveDialog1.FileTypes.Clear;
  with FileSaveDialog1.FileTypes.Add do
  begin
    DisplayName:='Arquivo Excel (*.xls)';
    FileMask:='*.xls';
  end;

  if FileSaveDialog1.Execute then
  begin
    Screen.Cursor:=crHourGlass;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(*) as QTDE from PRODUTOS');
    DM.QYAux.Open;
    ProgressBar1.Max:=DM.QYAux.FieldByName('QTDE').AsInteger;
    ProgressBar1.Position:=0;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    Where:='';
    if CheckListBox1.Checked[0] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('00 - MERCADORIA PARA REVENDA');
    if CheckListBox1.Checked[1] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('01 - MATERIA-PRIMA');
    if CheckListBox1.Checked[2] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('02 - EMBALAGEM');
    if CheckListBox1.Checked[3] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('03 - PRODUTO EM PROCESSO');
    if CheckListBox1.Checked[4] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('04 - PRODUTO ACABADO');
    if CheckListBox1.Checked[5] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('05 - SUBPRODUTO');
    if CheckListBox1.Checked[6] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('06 - PRODUTO INTERMEDIARIO');
    if CheckListBox1.Checked[7] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('07 - MATERIAL DE USO E CONSUMO');
    if CheckListBox1.Checked[8] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('08 - ATIVO IMOBILIZADO');
    if CheckListBox1.Checked[9] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('09 - SERVICOS');
    if CheckListBox1.Checked[10] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('10 - OUTROS INSUMOS');
    if CheckListBox1.Checked[11] then Where:=Where+' or PRO_TIPOITEM='+QuotedStr('99 - OUTROS');
    if Where<>'' then
    begin
      Delete(Where,1,4);
      Where:=' and ('+Where+') ';
    end;

    DM.QYAux.SQL.Add(
      'select * from PRODUTOS '+
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'where PRO_DTCADASTRO<=:database '+Where+' order by PRO_CODIGO'
    );
    DM.QYAux.ParamByName('database').AsDate:=StrToDate(MaskEdit1.Text,FS);

    DM.QYAux.Open;
    AssignFile(F,FileSaveDialog1.FileName);
    Rewrite(F);
    WriteLn(F,'<html><body><table>');
    S:='<tr>';
    if CheckListBox1.Checked[0] then S:=S+'<td>BENEFICIO</td>';
    if CheckListBox1.Checked[1] then S:=S+'<td>CEST</td>';
    if CheckListBox1.Checked[2] then S:=S+'<td>CLASSIFICACAO FISCAL;EXCECAO</td>';
    if CheckListBox1.Checked[3] then S:=S+'<td>CODIGO</td>';
    if CheckListBox1.Checked[4] then S:=S+'<td>CODIGO BARRAS</td>';
    if CheckListBox1.Checked[5] then S:=S+'<td>COMPOE BASE ICMS</td>';
    if CheckListBox1.Checked[6] then S:=S+'<td>COMPOE BASE ICMS ST</td>';
    if CheckListBox1.Checked[7] then S:=S+'<td>COMPOSTO</td>';
    if CheckListBox1.Checked[8] then S:=S+'<td>CST COFINS</td>';
    if CheckListBox1.Checked[9] then S:=S+'<td>CST ICMS</td>';
    if CheckListBox1.Checked[10] then S:=S+'<td>CST IPI</td>';
    if CheckListBox1.Checked[11] then S:=S+'<td>CST PIS</td>';
    if CheckListBox1.Checked[12] then S:=S+'<td>ENQUADRAMENTO IPI</td>';
    if CheckListBox1.Checked[13] then S:=S+'<td>ESTOQUE ATUAL</td>';
    if CheckListBox1.Checked[14] then S:=S+'<td>ESTOQUE MINIMO</td>';
    if CheckListBox1.Checked[15] then S:=S+'<td>ESTOQUE MAXIMO</td>';
    if CheckListBox1.Checked[16] then S:=S+'<td>FAMILIA</td>';
    if CheckListBox1.Checked[17] then S:=S+'<td>FCI</td>';
    if CheckListBox1.Checked[18] then S:=S+'<td>GRUPO</td>';
    if CheckListBox1.Checked[19] then S:=S+'<td>INCENTIVO FISCAL</td>';
    if CheckListBox1.Checked[20] then S:=S+'<td>INDICADOR ISS</td>';
    if CheckListBox1.Checked[21] then S:=S+'<td>MARGEM (%)</td>';
    if CheckListBox1.Checked[22] then S:=S+'<td>MODALIDADE ICMS</td>';
    if CheckListBox1.Checked[23] then S:=S+'<td>MODALIDADE ICMS ST</td>';
    if CheckListBox1.Checked[24] then S:=S+'<td>NOME</td>';
    if CheckListBox1.Checked[25] then S:=S+'<td>ORIGEM</td>';
    if CheckListBox1.Checked[26] then S:=S+'<td>PRECO DE CUSTO</td>';
    if CheckListBox1.Checked[27] then S:=S+'<td>PRECO DE VENDA</td>';
    if CheckListBox1.Checked[28] then S:=S+'<td>STATUS</td>';
    if CheckListBox1.Checked[29] then S:=S+'<td>TIPO (P OU S)</td>';
    if CheckListBox1.Checked[30] then S:=S+'<td>TIPO PRODUTO</td>';
    if CheckListBox1.Checked[31] then S:=S+'<td>TIPO SERVICO</td>';
    if CheckListBox1.Checked[32] then S:=S+'<td>TOTAL CUSTO</td>';
    if CheckListBox1.Checked[33] then S:=S+'<td>TOTAL VENDA</td>';
    if CheckListBox1.Checked[34] then S:=S+'<td>UNIDADE</td>';
    S:=S+'</tr>';
    WriteLn(F,S);
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      ProgressBar1.StepIt;
      S:='<tr>';
      Estoque:='';
      EstoqueE:=0;
      if (CheckListBox1.Checked[13]) then
      begin
        Estoque:=DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsString;
        EstoqueE:=DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsExtended;
      end;

      //if MaskEdit1.Text<>'  /  /    ' then
      //begin
        DM.QYAux2.Close;
        DM.QYAux2.SQL.Clear;
        DM.QYAux2.SQL.Add('select first(1) EST_ESTOQUEPOSTERIOR from ESTOQUE where EST_PRODUTO=:produto and EST_DATA <= :data order by EST_CODIGO desc');
        DM.QYAux2.ParamByName('produto').AsInteger:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
        DM.QYAux2.ParamByName('data').AsDate:=StrToDate(MaskEdit1.Text);
        DM.QYAux2.Open;
        DM.QYAux2.FetchAll;
        if DM.QYAux2.RecordCount=1 then
        begin
          Estoque:=DM.QYAux2.FieldByName('EST_ESTOQUEPOSTERIOR').AsString;
          EstoqueE:=DM.QYAux2.FieldByName('EST_ESTOQUEPOSTERIOR').AsExtended;
        end;
        DM.QYAux2.Close;
      //end;

      //se nao é pra incluir os produtos com estoque zerado ou negativo
      if (CheckBox16.Checked) and (EstoqueE<=0) then
      begin
        DM.QYAux.Next;
        Continue;
      end;

      if CheckListBox1.Checked[0] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_BENEFICIO').AsString+'</td>';
      if CheckListBox1.Checked[1] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_CEST').AsString+'</td>';
      if CheckListBox1.Checked[2] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_CLASSFISCAL').AsString+'</td><td>'+DM.QYAux.FieldByName('PRO_EXCECAO').AsString+'</td>';
      if CheckListBox1.Checked[3] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_CODIGO').AsString+'</td>';
      if CheckListBox1.Checked[4] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_CODIGOBARRAS').AsString+'</td>';
      if CheckListBox1.Checked[5] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_COMPOEBASEICMS').AsString+'</td>';
      if CheckListBox1.Checked[6] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_COMPOEBASEICMSST').AsString+'</td>';
      if CheckListBox1.Checked[7] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_COMPOSTO').AsString+'</td>';
      if CheckListBox1.Checked[8] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_CSTCOFINS').AsString+'</td>';
      if CheckListBox1.Checked[9] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_CSTICMS').AsString+'</td>';
      if CheckListBox1.Checked[10] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_CSTIPI').AsString+'</td>';
      if CheckListBox1.Checked[11] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_CSTPIS').AsString+'</td>';
      if CheckListBox1.Checked[12] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_ENQUADRAMENTOIPI').AsString+'</td>';
      if CheckListBox1.Checked[13] then S:=S+'<td>'+Estoque+'</td>'; //DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsString;
      if CheckListBox1.Checked[14] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_ESTOQUEMIN').AsString+'</td>';
      if CheckListBox1.Checked[15] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_ESTOQUEMAX').AsString+'</td>';
      if CheckListBox1.Checked[16] then S:=S+'<td>'+DM.QYAux.FieldByName('FAM_DESCRICAO').AsString+'</td>';
      if CheckListBox1.Checked[17] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_FCI').AsString+'</td>';
      if CheckListBox1.Checked[18] then S:=S+'<td>'+DM.QYAux.FieldByName('GRU_DESCRICAO').AsString+'</td>';
      if CheckListBox1.Checked[19] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_INCENTIVOISS').AsString+'</td>';
      if CheckListBox1.Checked[20] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_INDICADORISS').AsString+'</td>';
      if CheckListBox1.Checked[21] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_MARGEM').AsString+'</td>';
      if CheckListBox1.Checked[22] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_MODICMS').AsString+'</td>';
      if CheckListBox1.Checked[23] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_MODICMSST').AsString+'</td>';
      if CheckListBox1.Checked[24] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_NOME').AsString+'</td>';
      if CheckListBox1.Checked[25] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_ORIGEM').AsString+'</td>';
      if CheckListBox1.Checked[26] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_PRECOCUSTO').AsString+'</td>';
      if CheckListBox1.Checked[27] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_PRECOVENDA').AsString+'</td>';
      if CheckListBox1.Checked[28] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_STATUS').AsString+'</td>';
      if CheckListBox1.Checked[29] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_TIPO').AsString+'</td>';
      if CheckListBox1.Checked[30] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_TIPOITEM').AsString+'</td>';
      if CheckListBox1.Checked[31] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_TIPOISS').AsString+'</td>';
      if CheckListBox1.Checked[32] then S:=S+'<td>'+FloatToStr(EstoqueE * DM.QYAux.FieldByName('PRO_PRECOCUSTO').AsExtended)+'</td>';
      if CheckListBox1.Checked[33] then S:=S+'<td>'+FloatToStr(EstoqueE * DM.QYAux.FieldByName('PRO_PRECOVENDA').AsExtended)+'</td>';
      if CheckListBox1.Checked[34] then S:=S+'<td>'+DM.QYAux.FieldByName('PRO_UNIDADE').AsString+'</td>';
      S:=S+'</tr>';
      WriteLn(F,S);
      DM.QYAux.Next;
    end;
    WriteLn(F,'</table></body></html>');
    CloseFile(F);
    Screen.Cursor:=crDefault;
    MessageDlg('Arquivo gerado com sucesso.',mtInformation,[mbOk],0);
    ProgressBar1.Position:=0;
  end;
end;

procedure TFormProdutosExportar.PngBitBtn4Click(Sender: TObject);
var I: Word;
begin
  for I:=0 to Pred(CheckListBox1.Items.Count) do
  CheckListBox1.Checked[I]:=True;
end;

procedure TFormProdutosExportar.PngBitBtn5Click(Sender: TObject);
var I: Word;
begin
  for I:=0 to Pred(CheckListBox1.Items.Count) do
  CheckListBox1.Checked[I]:=not CheckListBox1.Checked[I];
end;

end.
