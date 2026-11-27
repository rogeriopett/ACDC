//Atualizacoes:
//2026.11.26 - tela do DRE gerencial: filtros de vendas (período, produto, grupo, família, marca, fornecedor) e de despesas (despesa, agrupador), percentuais de ICMS/PIS/COFINS, custo fixo, IRPJ e CSLL, e o cálculo mostrado na grade.
//2026.11.26 - botão Imprimir (FormDreFast.frxReport1 com a grade do DRE e os filtros usados no cálculo).
unit Dre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient, PngBitBtn, PngSpeedButton, System.UITypes;

type
  TFormDre = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    LabelCampo1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    LabelCampo2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    LabelCampo3: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    SpeedButton3: TPngSpeedButton;
    LabelCampo4: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    SpeedButton4: TPngSpeedButton;
    LabelCampo5: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    SpeedButton5: TPngSpeedButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    ComboBox1: TComboBox;
    LabelCampo6: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    SpeedButton6: TPngSpeedButton;
    LabelCampo7: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    SpeedButton7: TPngSpeedButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    CDSDre: TClientDataSet;
    DSDre: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure EditCodigoEnter(Sender: TObject);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EditPorcentagemKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure Edit13Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    ReceitaBruta: Extended;
    Filtros: String; //filtros usados no último cálculo, para a impressão.
    function Porcentagem(Edit: TEdit): Extended;
    procedure AdicionarLinha(const Descricao, Tipo: String; Valor: Extended);
    procedure AdicionarMargem(const Descricao: String; Percentual: Extended);
  public
    { Public declarations }
  end;

var
  FormDre: TFormDre;

implementation
uses System.StrUtils, frxClass, DataMod, Funcoes1, FuncoesFirenet, DreFast;

{$R *.dfm}

//tipos das linhas da grade (campo TIPO):
//T = total (negrito, fundo cinza), L = linha do demonstrativo, G = agrupador (negrito),
//D = detalhe (despesa ou composição do financeiro), M = margem (só o percentual).

procedure TFormDre.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=1; //data de pagamento.
  CDSDre.CreateDataSet;
  TFloatField(CDSDre.FieldByName('VALOR')).DisplayFormat:='#,##0.00';
  TFloatField(CDSDre.FieldByName('PERCENTUAL')).DisplayFormat:='#,##0.00';
end;

procedure TFormDre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDre.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDre.BitBtn3Click(Sender: TObject);
var Memo: TfrxMemoView;
begin
  if CDSDre.IsEmpty then
  begin
    MessageDlg('Calcule o DRE antes de imprimir.',mtInformation,[mbOk],0);
    Exit;
  end;
  CDSDre.DisableControls;
  Application.CreateForm(TFormDreFast, FormDreFast);
  try
    //o relatório usa a própria grade do DRE.
    FormDreFast.frxDBDataset1.DataSet:=CDSDre;
    FormDreFast.frxReport1.Variables['TITULO']:=QuotedStr('DRE - Demonstrativo do Resultado do Exercício');
    FormDreFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormDreFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormDreFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
    FormDreFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
    Memo:=FormDreFast.frxReport1.FindObject('MemoFiltros') as TfrxMemoView;
    if Memo<>nil then
    begin
      Memo.AllowExpressions:=False;
      Memo.Text:=Filtros;
    end;
    FormDreFast.frxReport1.ShowReport;
  finally
    FormDreFast.Free;
    FormDreFast:=nil;
    CDSDre.First;
    CDSDre.EnableControls;
  end;
end;

procedure TFormDre.ComboBox1Change(Sender: TObject);
begin
  //sem despesas do contas a pagar, os filtros de despesa e agrupador não se aplicam.
  Edit11.Enabled:=ComboBox1.ItemIndex>0;
  SpeedButton6.Enabled:=Edit11.Enabled;
  Edit13.Enabled:=Edit11.Enabled;
  SpeedButton7.Enabled:=Edit11.Enabled;
  CheckBox1.Enabled:=Edit11.Enabled;
end;

{$REGION 'campos de código e descrição'}
procedure TFormDre.EditCodigoEnter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormDre.EditCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var Botao: TComponent;
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  begin
    //o Tag do edit é o número do botão localizar da mesma linha.
    Botao:=FindComponent('SpeedButton'+IntToStr((Sender as TEdit).Tag));
    if Botao<>nil then TPngSpeedButton(Botao).Click;
  end;
end;

procedure TFormDre.EditCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDre.Edit1Exit(Sender: TObject);
begin
  LocProdutosExit(Edit1,Edit2);
end;

procedure TFormDre.Edit3Exit(Sender: TObject);
begin
  LocGruposExit(Edit3,Edit4);
end;

procedure TFormDre.Edit5Exit(Sender: TObject);
begin
  LocFamiliasExit(Edit5,Edit6);
end;

procedure TFormDre.Edit7Exit(Sender: TObject);
begin
  LocMarcasExit(Edit7,Edit8);
end;

procedure TFormDre.Edit9Exit(Sender: TObject);
begin
  LocFornecedoresExit(Edit9,Edit10,nil);
end;

procedure TFormDre.Edit11Exit(Sender: TObject);
begin
  LocDespesasExit(Edit11,Edit12);
end;

procedure TFormDre.Edit13Exit(Sender: TObject);
begin
  LocAgrupadoresExit(Edit13,Edit14);
end;

procedure TFormDre.SpeedButton1Click(Sender: TObject);
begin
  LocProdutosBotao(Edit1,Edit2);
end;

procedure TFormDre.SpeedButton2Click(Sender: TObject);
begin
  LocGruposBotao(Edit3,Edit4);
end;

procedure TFormDre.SpeedButton3Click(Sender: TObject);
begin
  LocFamiliasBotao(Edit5,Edit6);
end;

procedure TFormDre.SpeedButton4Click(Sender: TObject);
begin
  LocMarcasBotao(Edit7,Edit8);
end;

procedure TFormDre.SpeedButton5Click(Sender: TObject);
begin
  LocFornecedoresBotao(Edit9,Edit10,nil);
end;

procedure TFormDre.SpeedButton6Click(Sender: TObject);
begin
  LocDespesasBotao(Edit11,Edit12);
end;

procedure TFormDre.SpeedButton7Click(Sender: TObject);
begin
  LocAgrupadoresBotao(Edit13,Edit14);
end;
{$ENDREGION}

{$REGION 'percentuais'}
procedure TFormDre.EditPorcentagemKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',',','.',#8,#13]) then Key:=#0;
end;

function TFormDre.Porcentagem(Edit: TEdit): Extended;
var S: String;
begin
  //aceita vírgula ou ponto como separador decimal.
  S:=Trim(Edit.Text);
  S:=StringReplace(S,'.',FS.DecimalSeparator,[rfReplaceAll]);
  S:=StringReplace(S,',',FS.DecimalSeparator,[rfReplaceAll]);
  Result:=StrToFloatDef(S,0,FS);
end;
{$ENDREGION}

{$REGION 'grade do resultado'}
procedure TFormDre.AdicionarLinha(const Descricao, Tipo: String; Valor: Extended);
begin
  CDSDre.Append;
  CDSDre.FieldByName('DESCRICAO').AsString:=Descricao;
  CDSDre.FieldByName('TIPO').AsString:=Tipo;
  CDSDre.FieldByName('VALOR').AsFloat:=Decimais(Valor,2);
  if ReceitaBruta<>0 then
  CDSDre.FieldByName('PERCENTUAL').AsFloat:=Decimais((Valor*100)/ReceitaBruta,2);
  CDSDre.Post;
end;

procedure TFormDre.AdicionarMargem(const Descricao: String; Percentual: Extended);
begin
  CDSDre.Append;
  CDSDre.FieldByName('DESCRICAO').AsString:=Descricao;
  CDSDre.FieldByName('TIPO').AsString:='M';
  CDSDre.FieldByName('PERCENTUAL').AsFloat:=Decimais(Percentual,2);
  CDSDre.Post;
end;

procedure TFormDre.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Tipo: String;
begin
  Tipo:=CDSDre.FieldByName('TIPO').AsString;
  if (Tipo='T') or (Tipo='G') then
  DBGrid1.Canvas.Font.Style:=[fsBold];
  if (Tipo='T') and (not (gdSelected in State)) then
  DBGrid1.Canvas.Brush.Color:=clBtnFace;
  if Tipo='M' then
  DBGrid1.Canvas.Font.Style:=[fsItalic];
  //resultado negativo em vermelho.
  if (Column.FieldName='VALOR') and (Tipo='T') and (CDSDre.FieldByName('VALOR').AsFloat<0) and (not (gdSelected in State)) then
  DBGrid1.Canvas.Font.Color:=clRed;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;
{$ENDREGION}

procedure TFormDre.BitBtn1Click(Sender: TObject);
var DataInicial, DataFinal: TDateTime;
  FiltroVendas, FiltroPagar: String;
  Devolucao, Base, ICMS, PIS, COFINS, ISS, CMV, ReceitaLiquida, LucroBruto, CustoFixo,
  Despesas, ResultadoOperacional, JurosPagos, DescontosObtidos, JurosRecebidos, DescontosConcedidos,
  DespesasFinanceiras, ReceitasFinanceiras, ResultadoAntesIR, IRPJ, CSLL, LucroLiquido, Subtotal: Extended;
  Agrupador: Integer;
  LinhaAgrupador: TBookmark;
begin
  {$REGION 'validações'}
  if not TryStrToDate(MaskEdit1.Text,DataInicial,FS) then
  begin
    MessageDlg('Data inicial inválida.',mtInformation,[mbOk],0);
    MaskEdit1.SetFocus;
    Exit;
  end;
  if not TryStrToDate(MaskEdit2.Text,DataFinal,FS) then
  begin
    MessageDlg('Data final inválida.',mtInformation,[mbOk],0);
    MaskEdit2.SetFocus;
    Exit;
  end;
  if DataInicial>DataFinal then
  begin
    MessageDlg('A data inicial não pode ser maior que a data final.',mtInformation,[mbOk],0);
    MaskEdit1.SetFocus;
    Exit;
  end;
  {$ENDREGION}

  Screen.Cursor:=crHourGlass;
  CDSDre.DisableControls;
  try
    CDSDre.EmptyDataSet;

    {$REGION 'filtros usados (impressão)'}
    Filtros:='Período: '+MaskEdit1.Text+' a '+MaskEdit2.Text;
    if Edit2.Text<>'' then Filtros:=Filtros+'   Produto: '+Edit1.Text+' - '+Edit2.Text;
    if Edit4.Text<>'' then Filtros:=Filtros+'   Grupo: '+Edit3.Text+' - '+Edit4.Text;
    if Edit6.Text<>'' then Filtros:=Filtros+'   Família: '+Edit5.Text+' - '+Edit6.Text;
    if Edit8.Text<>'' then Filtros:=Filtros+'   Marca: '+Edit7.Text+' - '+Edit8.Text;
    if Edit10.Text<>'' then Filtros:=Filtros+'   Fornecedor: '+Edit9.Text+' - '+Edit10.Text;
    Filtros:=Filtros+sLineBreak+'Despesas do contas a pagar: '+ComboBox1.Text;
    if ComboBox1.ItemIndex>0 then
    begin
      if Edit12.Text<>'' then Filtros:=Filtros+'   Despesa: '+Edit11.Text+' - '+Edit12.Text;
      if Edit14.Text<>'' then Filtros:=Filtros+'   Agrupador: '+Edit13.Text+' - '+Edit14.Text;
      if CheckBox1.Checked then Filtros:=Filtros+'   (sem as contas geradas pelas compras)';
    end;
    if CheckBox2.Checked then
    Filtros:=Filtros+sLineBreak+'Inclui juros, multas e descontos das contas pagas e recebidas no período.';
    {$ENDREGION}

    {$REGION 'vendas e devoluções de clientes'}
    //vendas: finalizadas, de saída e sem natureza de devolução (a devolução ao fornecedor não é receita).
    //devoluções: finalizadas, de entrada e com natureza de devolução. diminuem a receita, os impostos e o CMV.
    //os itens seguem o CalcularTotaisVenda: só os que compõem o total. VEI_VALORTOTAL já tem o desconto.
    FiltroVendas:='';
    if Edit2.Text<>'' then FiltroVendas:=FiltroVendas+' and VEI_PRODUTO=:produto';
    if Edit4.Text<>'' then FiltroVendas:=FiltroVendas+' and PRO_GRUPO=:grupo';
    if Edit6.Text<>'' then FiltroVendas:=FiltroVendas+' and PRO_FAMILIA=:familia';
    if Edit8.Text<>'' then FiltroVendas:=FiltroVendas+' and PRO_MARCA=:marca';
    if Edit10.Text<>'' then FiltroVendas:=FiltroVendas+' and PRO_FORNECEDOR=:fornecedor';
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'select '+
      'coalesce(sum(iif(VED_ENTRADASAIDA=''S'',VEI_VALORTOTAL,0)),0) as RECEITA, '+
      'coalesce(sum(iif(VED_ENTRADASAIDA=''E'',VEI_VALORTOTAL,0)),0) as DEVOLUCAO, '+
      'coalesce(sum(iif(VED_ENTRADASAIDA=''S'',1,-1)*coalesce(VEI_VALORICMS,0)),0) as ICMS, '+
      'coalesce(sum(iif(VED_ENTRADASAIDA=''S'',1,-1)*coalesce(VEI_VALORPIS,0)),0) as PIS, '+
      'coalesce(sum(iif(VED_ENTRADASAIDA=''S'',1,-1)*coalesce(VEI_VALORCOFINS,0)),0) as COFINS, '+
      'coalesce(sum(iif(VED_ENTRADASAIDA=''S'',1,-1)*coalesce(VEI_VALORISS,0)),0) as ISS, '+
      'coalesce(sum(iif(VED_ENTRADASAIDA=''S'',1,-1)*coalesce(VEI_PRECOCUSTOTOTAL,0)),0) as CMV '+
      'from VENDASITENS '+
      'inner join VENDAS on VED_CODIGO=VEI_VENDA '+
      'left join NATUREZAS on NAT_CODIGO=VED_CFOP '+
      'left join PRODUTOS on PRO_CODIGO=VEI_PRODUTO '+
      'where VED_STATUS=''F'' '+
      'and VED_DTEMISSAO between :datainicial and :datafinal '+
      'and coalesce(VEI_COMPOETOTAL,''S'')=''S'' '+
      'and ((VED_ENTRADASAIDA=''S'' and coalesce(NAT_DEVOLUCAO,''N'')<>''S'') or '+
      '(VED_ENTRADASAIDA=''E'' and NAT_DEVOLUCAO=''S''))'+FiltroVendas);
    DM.QYAux.ParamByName('datainicial').AsDate:=DataInicial;
    DM.QYAux.ParamByName('datafinal').AsDate:=DataFinal;
    if Edit2.Text<>'' then DM.QYAux.ParamByName('produto').AsInteger:=StrToInt(Edit1.Text);
    if Edit4.Text<>'' then DM.QYAux.ParamByName('grupo').AsInteger:=StrToInt(Edit3.Text);
    if Edit6.Text<>'' then DM.QYAux.ParamByName('familia').AsInteger:=StrToInt(Edit5.Text);
    if Edit8.Text<>'' then DM.QYAux.ParamByName('marca').AsInteger:=StrToInt(Edit7.Text);
    if Edit10.Text<>'' then DM.QYAux.ParamByName('fornecedor').AsInteger:=StrToInt(Edit9.Text);
    DM.QYAux.Open;
    ReceitaBruta:=DM.QYAux.FieldByName('RECEITA').AsExtended;
    Devolucao   :=DM.QYAux.FieldByName('DEVOLUCAO').AsExtended;
    ICMS        :=DM.QYAux.FieldByName('ICMS').AsExtended;
    PIS         :=DM.QYAux.FieldByName('PIS').AsExtended;
    COFINS      :=DM.QYAux.FieldByName('COFINS').AsExtended;
    ISS         :=DM.QYAux.FieldByName('ISS').AsExtended;
    CMV         :=DM.QYAux.FieldByName('CMV').AsExtended;
    DM.QYAux.Close;

    //base dos percentuais: vendas menos devoluções.
    Base:=ReceitaBruta-Devolucao;
    //percentual informado substitui o valor calculado nas vendas.
    if Trim(Edit15.Text)<>'' then ICMS:=Decimais((Base*Porcentagem(Edit15))/100,2);
    if Trim(Edit16.Text)<>'' then PIS:=Decimais((Base*Porcentagem(Edit16))/100,2);
    if Trim(Edit17.Text)<>'' then COFINS:=Decimais((Base*Porcentagem(Edit17))/100,2);
    {$ENDREGION}

    {$REGION 'despesas do contas a pagar'}
    //o valor da despesa é o PAG_VALOR (a parcela). juros, multa e desconto ficam no resultado financeiro.
    Despesas:=0;
    FiltroPagar:='';
    if Edit12.Text<>'' then FiltroPagar:=FiltroPagar+' and PAG_DESPESA=:despesa';
    if Edit14.Text<>'' then FiltroPagar:=FiltroPagar+' and DES_AGRUPADOR=:agrupador';
    DM.QYAux2.Close;
    if ComboBox1.ItemIndex>0 then
    begin
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add(
        'select coalesce(AGR_CODIGO,0) as AGRUPADOR, coalesce(AGR_DESCRICAO,''SEM AGRUPADOR'') as AGRUPADORDESC, '+
        'PAG_DESPESA as DESPESA, coalesce(DES_DESCRICAO,''SEM DESPESA'') as DESPESADESC, '+
        'coalesce(sum(PAG_VALOR),0) as VALOR '+
        'from PAGAR '+
        'left join DESPESAS on DES_CODIGO=PAG_DESPESA '+
        'left join AGRUPADORES on AGR_CODIGO=DES_AGRUPADOR ');
      case ComboBox1.ItemIndex of
        1: DM.QYAux2.SQL.Add('where PAG_STATUS=''B'' and PAG_DTPAGAMENTO between :datainicial and :datafinal');
        2: DM.QYAux2.SQL.Add('where PAG_STATUS<>''C'' and PAG_DTVENCIMENTO between :datainicial and :datafinal');
        3: DM.QYAux2.SQL.Add('where PAG_STATUS<>''C'' and PAG_DTEMISSAO between :datainicial and :datafinal');
      end;
      DM.QYAux2.SQL.Add(FiltroPagar);
      //as compras geram o contas a pagar com esta descrição (ComprasFinalizar.GerarPagar).
      if CheckBox1.Checked then
      DM.QYAux2.SQL.Add('and coalesce(PAG_DESCRICAO,'''')<>''LANCAMENTO AUTOMATICO COMPRAS''');
      DM.QYAux2.SQL.Add(
        'group by 1, 2, 3, 4 '+
        'order by 2, 1, 4');
      DM.QYAux2.ParamByName('datainicial').AsDate:=DataInicial;
      DM.QYAux2.ParamByName('datafinal').AsDate:=DataFinal;
      if Edit12.Text<>'' then DM.QYAux2.ParamByName('despesa').AsInteger:=StrToInt(Edit11.Text);
      if Edit14.Text<>'' then DM.QYAux2.ParamByName('agrupador').AsInteger:=StrToInt(Edit13.Text);
      DM.QYAux2.Open;
      while not DM.QYAux2.Eof do
      begin
        Despesas:=Despesas+DM.QYAux2.FieldByName('VALOR').AsExtended;
        DM.QYAux2.Next;
      end;
    end;
    {$ENDREGION}

    {$REGION 'resultado financeiro'}
    //contas baixadas no período: juros e multas pagos e descontos concedidos são despesas financeiras;
    //juros, multas e acréscimos recebidos e descontos obtidos são receitas financeiras.
    JurosPagos:=0;
    DescontosObtidos:=0;
    JurosRecebidos:=0;
    DescontosConcedidos:=0;
    if CheckBox2.Checked then
    begin
      DM.QYAux3.Close;
      DM.QYAux3.SQL.Clear;
      DM.QYAux3.SQL.Add(
        'select coalesce(sum(coalesce(PAG_JUROSPAGO,0)+coalesce(PAG_MULTAPAGO,0)),0) as JUROS, '+
        'coalesce(sum(PAG_DESCVALOR),0) as DESCONTOS '+
        'from PAGAR '+
        'left join DESPESAS on DES_CODIGO=PAG_DESPESA '+
        'where PAG_STATUS=''B'' and PAG_DTPAGAMENTO between :datainicial and :datafinal'+FiltroPagar);
      DM.QYAux3.ParamByName('datainicial').AsDate:=DataInicial;
      DM.QYAux3.ParamByName('datafinal').AsDate:=DataFinal;
      if Edit12.Text<>'' then DM.QYAux3.ParamByName('despesa').AsInteger:=StrToInt(Edit11.Text);
      if Edit14.Text<>'' then DM.QYAux3.ParamByName('agrupador').AsInteger:=StrToInt(Edit13.Text);
      DM.QYAux3.Open;
      JurosPagos      :=DM.QYAux3.FieldByName('JUROS').AsExtended;
      DescontosObtidos:=DM.QYAux3.FieldByName('DESCONTOS').AsExtended;
      DM.QYAux3.Close;

      DM.QYAux4.Close;
      DM.QYAux4.SQL.Clear;
      DM.QYAux4.SQL.Add(
        'select coalesce(sum(coalesce(REE_JUROSPAGO,0)+coalesce(REE_MULTAPAGO,0)+coalesce(REE_ACRESCIMOVALOR,0)),0) as JUROS, '+
        'coalesce(sum(REE_DESCVALOR),0) as DESCONTOS '+
        'from RECEBER '+
        'where REE_STATUS=''B'' and REE_DTPAGAMENTO between :datainicial and :datafinal');
      DM.QYAux4.ParamByName('datainicial').AsDate:=DataInicial;
      DM.QYAux4.ParamByName('datafinal').AsDate:=DataFinal;
      DM.QYAux4.Open;
      JurosRecebidos     :=DM.QYAux4.FieldByName('JUROS').AsExtended;
      DescontosConcedidos:=DM.QYAux4.FieldByName('DESCONTOS').AsExtended;
      DM.QYAux4.Close;
    end;
    DespesasFinanceiras:=JurosPagos+DescontosConcedidos;
    ReceitasFinanceiras:=JurosRecebidos+DescontosObtidos;
    {$ENDREGION}

    {$REGION 'cálculo do DRE'}
    ReceitaLiquida      :=ReceitaBruta-Devolucao-ICMS-PIS-COFINS-ISS;
    LucroBruto          :=ReceitaLiquida-CMV;
    CustoFixo           :=Decimais((Base*Porcentagem(Edit18))/100,2);
    ResultadoOperacional:=LucroBruto-CustoFixo-Despesas;
    ResultadoAntesIR    :=ResultadoOperacional-DespesasFinanceiras+ReceitasFinanceiras;
    IRPJ                :=Decimais((Base*Porcentagem(Edit19))/100,2);
    CSLL                :=Decimais((Base*Porcentagem(Edit20))/100,2);
    LucroLiquido        :=ResultadoAntesIR-IRPJ-CSLL;
    {$ENDREGION}

    {$REGION 'grade'}
    AdicionarLinha('RECEITA BRUTA DE VENDAS','T',ReceitaBruta);
    AdicionarLinha('(-) Devoluções de vendas','L',Devolucao);
    AdicionarLinha('(-) ICMS'+IfThen(Trim(Edit15.Text)<>'',' ('+Edit15.Text+'%)',''),'L',ICMS);
    AdicionarLinha('(-) PIS'+IfThen(Trim(Edit16.Text)<>'',' ('+Edit16.Text+'%)',''),'L',PIS);
    AdicionarLinha('(-) COFINS'+IfThen(Trim(Edit17.Text)<>'',' ('+Edit17.Text+'%)',''),'L',COFINS);
    if ISS<>0 then
    AdicionarLinha('(-) ISS','L',ISS);
    AdicionarLinha('(=) RECEITA LÍQUIDA','T',ReceitaLiquida);
    AdicionarLinha('(-) Custo das mercadorias vendidas (CMV)','L',CMV);
    AdicionarLinha('(=) LUCRO BRUTO','T',LucroBruto);
    if ReceitaLiquida<>0 then
    AdicionarMargem('      Margem bruta sobre a receita líquida',(LucroBruto*100)/ReceitaLiquida);
    AdicionarLinha('(-) Custo fixo rateado'+IfThen(Trim(Edit18.Text)<>'',' ('+Edit18.Text+'%)',''),'L',CustoFixo);
    if ComboBox1.ItemIndex>0 then
    begin
      AdicionarLinha('(-) Despesas ('+LowerCase(ComboBox1.Text)+')','L',Despesas);
      //agrupadores com o subtotal e as despesas de cada um.
      Agrupador:=-1;
      Subtotal:=0;
      LinhaAgrupador:=nil;
      DM.QYAux2.First;
      while not DM.QYAux2.Eof do
      begin
        if DM.QYAux2.FieldByName('AGRUPADOR').AsInteger<>Agrupador then
        begin
          if LinhaAgrupador<>nil then
          begin
            CDSDre.GotoBookmark(LinhaAgrupador);
            CDSDre.Edit;
            CDSDre.FieldByName('VALOR').AsFloat:=Decimais(Subtotal,2);
            if ReceitaBruta<>0 then
            CDSDre.FieldByName('PERCENTUAL').AsFloat:=Decimais((Subtotal*100)/ReceitaBruta,2);
            CDSDre.Post;
            CDSDre.FreeBookmark(LinhaAgrupador);
            CDSDre.Last;
          end;
          Agrupador:=DM.QYAux2.FieldByName('AGRUPADOR').AsInteger;
          Subtotal:=0;
          AdicionarLinha('      '+DM.QYAux2.FieldByName('AGRUPADORDESC').AsString,'G',0);
          LinhaAgrupador:=CDSDre.GetBookmark;
        end;
        AdicionarLinha('            '+DM.QYAux2.FieldByName('DESPESADESC').AsString,'D',DM.QYAux2.FieldByName('VALOR').AsExtended);
        Subtotal:=Subtotal+DM.QYAux2.FieldByName('VALOR').AsExtended;
        DM.QYAux2.Next;
      end;
      if LinhaAgrupador<>nil then
      begin
        CDSDre.GotoBookmark(LinhaAgrupador);
        CDSDre.Edit;
        CDSDre.FieldByName('VALOR').AsFloat:=Decimais(Subtotal,2);
        if ReceitaBruta<>0 then
        CDSDre.FieldByName('PERCENTUAL').AsFloat:=Decimais((Subtotal*100)/ReceitaBruta,2);
        CDSDre.Post;
        CDSDre.FreeBookmark(LinhaAgrupador);
        CDSDre.Last;
      end;
      DM.QYAux2.Close;
    end;
    AdicionarLinha('(=) RESULTADO OPERACIONAL','T',ResultadoOperacional);
    if CheckBox2.Checked then
    begin
      AdicionarLinha('(-) Despesas financeiras','L',DespesasFinanceiras);
      AdicionarLinha('      Juros e multas pagos','D',JurosPagos);
      AdicionarLinha('      Descontos concedidos','D',DescontosConcedidos);
      AdicionarLinha('(+) Receitas financeiras','L',ReceitasFinanceiras);
      AdicionarLinha('      Juros, multas e acréscimos recebidos','D',JurosRecebidos);
      AdicionarLinha('      Descontos obtidos','D',DescontosObtidos);
    end;
    AdicionarLinha('(=) RESULTADO ANTES DO IRPJ E DA CSLL','T',ResultadoAntesIR);
    AdicionarLinha('(-) IRPJ'+IfThen(Trim(Edit19.Text)<>'',' ('+Edit19.Text+'%)',''),'L',IRPJ);
    AdicionarLinha('(-) CSLL'+IfThen(Trim(Edit20.Text)<>'',' ('+Edit20.Text+'%)',''),'L',CSLL);
    AdicionarLinha('(=) LUCRO LÍQUIDO','T',LucroLiquido);
    if ReceitaBruta<>0 then
    AdicionarMargem('      Margem líquida sobre a receita bruta',(LucroLiquido*100)/ReceitaBruta);
    CDSDre.First;
    {$ENDREGION}
  finally
    CDSDre.EnableControls;
    Screen.Cursor:=crDefault;
  end;
end;

end.
