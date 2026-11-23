unit NfceMenuFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Mask, ACBrEAD, ACBrBase, ACBrPAF, ACBrPAFRegistros, Vcl.Buttons, PngBitBtn,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TFormNfceMenuFiscal = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    MaskEdit2: TMaskEdit;
    Label16: TLabel;
    MaskEdit1: TMaskEdit;
    Label17: TLabel;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    Label9: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    TabSheet4: TTabSheet;
    ACBrPAF1: TACBrPAF;
    ACBrEAD1: TACBrEAD;
    Label18: TLabel;
    Label19: TLabel;
    PngBitBtn1: TPngBitBtn;
    Label20: TLabel;
    Label21: TLabel;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    MaskEdit3: TMaskEdit;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Memo2: TMemo;
    Label22: TLabel;
    Label23: TLabel;
    Memo3: TMemo;
    PngBitBtn4: TPngBitBtn;
    Label24: TLabel;
    Label25: TLabel;
    TabSheet5: TTabSheet;
    PngBitBtn5: TPngBitBtn;
    Memo4: TMemo;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    TBProdutos: TClientDataSet;
    DSProdutos: TDataSource;
    DBGrid1: TDBGrid;
    PngBitBtn6: TPngBitBtn;
    PngBitBtn7: TPngBitBtn;
    PngBitBtn8: TPngBitBtn;
    TBProdutosPRO_CEST: TStringField;
    TBProdutosPRO_CLASSFISCAL: TStringField;
    TBProdutosPRO_CODIGO: TIntegerField;
    TBProdutosPRO_CODIGOBARRAS: TStringField;
    TBProdutosPRO_ESTOQUEATUAL: TFMTBCDField;
    TBProdutosPRO_NOME: TStringField;
    TBProdutosPRO_UNIDADE: TStringField;
    Label32: TLabel;
    MaskEdit4: TMaskEdit;
    ComboBox2: TComboBox;
    Label33: TLabel;
    MaskEdit5: TMaskEdit;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure PngBitBtn7Click(Sender: TObject);
    procedure PngBitBtn8Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfceMenuFiscal: TFormNfceMenuFiscal;
  PastaArquivos: String;

implementation
uses DataMod, Funcoes1,
  ACBrPAF_A, ACBrPAF_D, ACBrPAF_E, ACBrPaf_H, ACBrPAF_J, ACBrPAF_P,
  ACBrPAF_R, ACBrPAF_S, ACBrPAF_T, ACBrPAF_V, ACBrPAF_W, ACBrPaf_Z, ProdutosLoc;

{$R *.dfm}

procedure TFormNfceMenuFiscal.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0: MaskEdit4.EditMask:='999\.999\.999\-99;1;_';
    1: MaskEdit4.EditMask:='AA\.AAA\.AAA\/AAAA-99;1;_';
  end;
end;

procedure TFormNfceMenuFiscal.FormCreate(Sender: TObject);
var D,M,A: Word;
begin
  DecodeDate(Date,A,M,D);
  PageControl1.ActivePageIndex:=0;
  Label15.Caption:=FileVersion(Application.ExeName);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
  MaskEdit3.Text:=A.ToString;
  MaskEdit5.Text:=DateToStr(Date);
  ComboBox1.ItemIndex:=M-1; //mes atual.
  ComboBox2.ItemIndex:=0; //cpf
  RadioButton1.Checked:=True;
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;
  Memo4.Lines.Clear;
  PastaArquivos:=ExtractFilePath(Application.ExeName)+'RegistrosPAF';
  ForceDirectories(PastaArquivos);
  Label19.Caption:=PastaArquivos;
  Label22.Caption:=PastaArquivos;
  Label25.Caption:=PastaArquivos;
  Label27.Caption:=PastaArquivos;
  TBProdutos.EmptyDataSet;
end;

procedure TFormNfceMenuFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfceMenuFiscal.PngBitBtn1Click(Sender: TObject);
var
  NovoRegistroA2: TRegistroA2;
  NovoRegistroD2: TRegistroD2;
  NovoRegistroD3: TRegistroD3;
  NovoRegistroD4: TRegistroD4;
  NovoRegistroE2: TRegistroE2;
  NovoRegistroP2: TRegistroP2;
  NovoRegistroS2: TRegistroS2;
  NovoRegistroS3: TRegistroS3;
  NovoRegistroJ1: TRegistroJ1;
begin
  // Sempre altere o layout antes de preencher os registros. Isso porque
  // ao alterar o layout, todos registros já lançados são apagados automaticamente.
  ACBrPAF1.Layout := lpPAFNFCe;

  {$REGION 'Registro U1 - IDENTIFICAÇÃO DO ESTABELECIMENTO USUÁRIO DO PAF-NFC-e'}
  ACBrPAF1.PAF_U.RegistroU1.CNPJ             := LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  ACBrPAF1.PAF_U.RegistroU1.IE               := DM.TBEmpresaEMP_IE.Value;
  ACBrPAF1.PAF_U.RegistroU1.IM               := DM.TBEmpresaEMP_IM.Value;
  ACBrPAF1.PAF_U.RegistroU1.RAZAOSOCIAL      := DM.TBEmpresaEMP_NOME.Value;
  ACBrPAF1.PAF_U.RegistroU1.InclusaoExclusao := True;
  {$ENDREGION}

  {$REGION 'Registro A2 - TOTAL DIÁRIO DE MEIOS DE PAGAMENTO'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select NFC_DTEMISSAO, CPG_MEIOPAGAMENTO, sum(NCP_VALOR) as TOTAL from NFCE '+
    'left join NFCEPAGAMENTOS on NFC_CODIGO=NCP_NFCE '+
    'left join CONDICOES on NCP_CONDICAO=CPG_CODIGO '+
    'where NFC_STATUS=:status and NFC_DTEMISSAO between :datainicial and :datafinal '+
    'group by NFC_DTEMISSAO, CPG_MEIOPAGAMENTO '+
    'having sum(NCP_VALOR) > 0 '+
    'order by NFC_DTEMISSAO desc'
  );
  DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  DM.QYAux.ParamByName('status').AsString:='F';
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    NovoRegistroA2               :=ACBrPAF1.PAF_A.RegistroA2.New;
    NovoRegistroA2.DT            :=DM.QYAux.FieldByName('NFC_DTEMISSAO').AsDateTime;
    NovoRegistroA2.MEIO_PGTO     :=DM.QYAux.FieldByName('CPG_MEIOPAGAMENTO').AsString;
    NovoRegistroA2.TIPO_DOC      :='1'; // 1-NFC-e 2-NF-e 3-Operação não tributável, identificando o CPF ou CNPJ do cliente.
    NovoRegistroA2.VL            :=DM.QYAux.FieldByName('TOTAL').AsExtended;
    NovoRegistroA2.CNPJ          :=''; // Só é preciso informar para o tipo de documento "3"
    NovoRegistroA2.NUMDOCUMENTO  :=''; // Só é preciso informar para o tipo de documento "3"
    NovoRegistroA2.RegistroValido:=True;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  {$ENDREGION}

  {$REGION 'Registro P2 - RELAÇÃO DE MERCADORIAS E SERVIÇOS'}
  ACBrPAF1.PAF_P.RegistroP1.CNPJ:=ACBrPAF1.PAF_U.RegistroU1.CNPJ;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select NCI_PRODUTO, PRO_CEST, PRO_CLASSFISCAL, PRO_EXCECAO, PRO_NOME, PRO_PRECOVENDA, PRO_PRODUCAO, PRO_TRIBUTO, PRO_UNIDADE from NFCEITENS '+
    'left join PRODUTOS on NCI_PRODUTO=PRO_CODIGO '+
    'left join NFCE on NCI_NOTA=NFC_CODIGO '+
    'where NFC_STATUS=:status and NFC_DTEMISSAO between :datainicial and :datafinal '+
    'group by NCI_PRODUTO, PRO_CEST, PRO_CLASSFISCAL, PRO_EXCECAO, PRO_NOME, PRO_PRECOVENDA, PRO_PRODUCAO, PRO_TRIBUTO, PRO_UNIDADE '+
    'order by NCI_PRODUTO'
  );
  DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  DM.QYAux.ParamByName('status').AsString:='F';
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    NovoRegistroP2               :=ACBrPAF1.PAF_P.RegistroP2.New;
    NovoRegistroP2.COD_MERC_SERV :=DM.QYAux.FieldByName('NCI_PRODUTO').AsString;
    NovoRegistroP2.DESC_MERC_SERV:=DM.QYAux.FieldByName('PRO_NOME').AsString;
    NovoRegistroP2.UN_MED        :=DM.QYAux.FieldByName('PRO_UNIDADE').AsString;
    NovoRegistroP2.IAT           :='A';
    NovoRegistroP2.IPPT          :=DM.QYAux.FieldByName('PRO_PRODUCAO').AsString;
    NovoRegistroP2.ST            :=DM.QYAux.FieldByName('PRO_TRIBUTO').AsString;
    NovoRegistroP2.ALIQ          :=0;
    if (DM.QYAux.FieldByName('PRO_TRIBUTO').AsString='T') or (DM.QYAux.FieldByName('PRO_TRIBUTO').AsString='S') then
    NovoRegistroP2.ALIQ          :=DM.QYAux.FieldByName('PRO_ALIQICMS').AsExtended;
    NovoRegistroP2.VL_UNIT       :=DM.QYAux.FieldByName('PRO_PRECOVENDA').AsExtended;
    NovoRegistroP2.RegistroValido:=True;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  {$ENDREGION}

  {$REGION 'Registro E2 - RELAÇÃO DAS MERCADORIAS EM ESTOQUE'}
  //estoque total.
  if RadioButton1.Checked then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'select PRO_CEST, PRO_CLASSFISCAL, PRO_CODIGO, PRO_ESTOQUEATUAL, PRO_NOME, PRO_UNIDADE from PRODUTOS '+
      'where PRO_ESTOQUEATUAL>0 and PRO_TIPOITEM=:tipo and PRO_STATUS=:status order by PRO_CODIGO '
    );
    DM.QYAux.ParamByName('tipo').AsString:='00 - MERCADORIA PARA REVENDA';
    DM.QYAux.ParamByName('status').AsString:='A';
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      NovoRegistroE2               :=ACBrPAF1.PAF_E.RegistroE2.New;
      NovoRegistroE2.COD_MERC      :=DM.QYAux.FieldByName('PRO_CODIGO').AsString;
      NovoRegistroE2.CEST          :=DM.QYAux.FieldByName('PRO_CEST').AsString;
      NovoRegistroE2.NCM           :=DM.QYAux.FieldByName('PRO_CLASSFISCAL').AsString;
      NovoRegistroE2.DESC_MERC     :=DM.QYAux.FieldByName('PRO_NOME').AsString;
      NovoRegistroE2.UN_MED        :=DM.QYAux.FieldByName('PRO_UNIDADE').AsString;
      NovoRegistroE2.QTDE_EST      :=DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsExtended;
      NovoRegistroE2.DATAEMISSAO   :=Date;
      NovoRegistroE2.DATAESTOQUE   :=Date;
      NovoRegistroE2.RegistroValido:=True;
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
  end else
  //estoque parcial
  if RadioButton2.Checked then
  begin
    TBProdutos.First;
    while not TBProdutos.Eof do
    begin
      NovoRegistroE2               :=ACBrPAF1.PAF_E.RegistroE2.New;
      NovoRegistroE2.COD_MERC      :=TBProdutosPRO_CODIGO.Value.ToString;
      NovoRegistroE2.CEST          :=TBProdutosPRO_CEST.Value;
      NovoRegistroE2.NCM           :=TBProdutosPRO_CLASSFISCAL.Value;
      NovoRegistroE2.DESC_MERC     :=TBProdutosPRO_NOME.Value;
      NovoRegistroE2.UN_MED        :=TBProdutosPRO_UNIDADE.Value;
      NovoRegistroE2.QTDE_EST      :=TBProdutosPRO_ESTOQUEATUAL.AsExtended;
      NovoRegistroE2.DATAEMISSAO   :=Date;
      NovoRegistroE2.DATAESTOQUE   :=Date;
      NovoRegistroE2.RegistroValido:=True;
      TBProdutos.Next;
    end;
    TBProdutos.Close;
  end;
  {$ENDREGION}

  {$REGION 'Registro D2 - RELAÇÃO DOS DAV EMITIDOS'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select VED_CODIGO, VED_DTEMISSAO, VED_VALORTOTAL, VED_CNPJ, VED_CPF, VED_NOME, CLI_TIPOPESSOA from VENDAS '+
    'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
    'where VED_DAV=:dav and VED_NFCE>0 and VED_DTEMISSAO between :datainicial and :datafinal '+
    'order by VED_CODIGO'
  );
  DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  DM.QYAux.ParamByName('dav').AsString:='S';
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    NovoRegistroD2               :=ACBrPAF1.PAF_D.RegistroD2.New;
    NovoRegistroD2.NUM_DAV       :=DM.QYAux.FieldByName('VED_CODIGO').AsString;
    NovoRegistroD2.DT_DAV        :=DM.QYAux.FieldByName('VED_DTEMISSAO').AsDateTime;
    NovoRegistroD2.TIT_DAV       :='Pedido';
    NovoRegistroD2.VLT_DAV       :=DM.QYAux.FieldByName('VED_VALORTOTAL').AsExtended;
    NovoRegistroD2.NOME_CLIENTE  :=DM.QYAux.FieldByName('VED_NOME').AsString;
    if DM.QYAux.FieldByName('CLI_TIPOPESSOA').AsString='J' then
    NovoRegistroD2.CPF_CNPJ      :=DM.QYAux.FieldByName('VED_CNPJ').AsString else
    NovoRegistroD2.CPF_CNPJ      :=DM.QYAux.FieldByName('VED_CPF').AsString;
    NovoRegistroD2.RegistroValido:=True; // diz quando o registro foi modificado no banco

    {$REGION 'Registro D3 - DETALHE DO DOCUMENTO AUXILIAR DE VENDA – DAV'}
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add(
      'select VEI_DESCRICAO, VEI_DESCVALOR, VEI_PRODUTO, VEI_QUANTIDADE, VEI_SEQUENCIA, '+
      'VEI_UNIDADE, VEI_VALORTOTAL, VEI_VALORUNIT, PRO_TRIBUTO from VENDASITENS '+
      'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
      'where VEI_VENDA=:venda order by VEI_SEQUENCIA'
    );
    DM.QYAux2.ParamByName('venda').AsInteger:=DM.QYAux.FieldByName('VED_CODIGO').AsInteger;
    DM.QYAux2.Open;
    DM.QYAux2.First;
    while not DM.QYAux2.Eof do
    begin
      NovoRegistroD3                :=NovoRegistroD2.RegistroD3.New;
      NovoRegistroD3.DT_INCLUSAO    :=DM.QYAux.FieldByName('VED_DTEMISSAO').AsDateTime;
      NovoRegistroD3.NUM_ITEM       :=DM.QYAux2.FieldByName('VEI_SEQUENCIA').AsInteger;
      NovoRegistroD3.COD_ITEM       :=DM.QYAux2.FieldByName('VEI_PRODUTO').AsString;
      NovoRegistroD3.DESC_ITEM      :=DM.QYAux2.FieldByName('VEI_DESCRICAO').AsString;
      NovoRegistroD3.QTDE_ITEM      :=DM.QYAux2.FieldByName('VEI_QUANTIDADE').AsExtended;
      NovoRegistroD3.UNI_ITEM       :=DM.QYAux2.FieldByName('VEI_UNIDADE').AsString;
      NovoRegistroD3.VL_UNIT        :=DM.QYAux2.FieldByName('VEI_VALORUNIT').AsExtended;
      NovoRegistroD3.VL_DESCTO      :=DM.QYAux2.FieldByName('VEI_DESCVALOR').AsExtended;
      NovoRegistroD3.VL_ACRES       :=0.00;
      NovoRegistroD3.VL_TOTAL       :=DM.QYAux2.FieldByName('VEI_VALORTOTAL').AsExtended;
      NovoRegistroD3.SIT_TRIB       :=DM.QYAux2.FieldByName('PRO_TRIBUTO').AsString; //'T'; // T, S, I, N, F
      NovoRegistroD3.ALIQ           :=0; // SOMENTE QUANDO T E S
      if (DM.QYAux2.FieldByName('PRO_TRIBUTO').AsString='T') or (DM.QYAux2.FieldByName('PRO_TRIBUTO').AsString='S') then
      NovoRegistroD3.ALIQ           :=DM.QYAux2.FieldByName('VEI_ALIQICMS').AsExtended;
      NovoRegistroD3.IND_CANC       :='N';
      NovoRegistroD3.DEC_QTDE_ITEM  :=8;
      NovoRegistroD3.DEC_VL_UNIT    :=8;
      NovoRegistroD3.RegistroValido :=True;
      DM.QYAux2.Next;
    end;
    DM.QYAux2.Close;
    {$ENDREGION}

    {$REGION 'Registro D4 - LOG DE ALTERAÇÃO DE ITENS DO DAV'}
    //D4 - Log alterações DAV
    //begin
      NovoRegistroD4               :=NovoRegistroD2.RegistroD4.New;
      //NovoRegistroD4.NUM_DAV       :=IntToStr(I * QualquerNumero);
      //NovoRegistroD4.DT_ALT        :=Now;
      //NovoRegistroD4.COD_ITEM      :='10';
      //NovoRegistroD4.DESC_ITEM     :='descricao do item';
      //NovoRegistroD4.QTDE_ITEM     :=10.00;
      //NovoRegistroD4.UNI_ITEM      :='UN';
      //NovoRegistroD4.VL_UNIT       :=1.00;
      //NovoRegistroD4.VL_DESCTO     :=0.00;
      //NovoRegistroD4.VL_ACRES      :=0.00;
      //NovoRegistroD4.VL_TOTAL      :=10.00;
      //NovoRegistroD4.SIT_TRIB      :='T'; // T, S, I, N, F
      //NovoRegistroD4.ALIQ          :=7.00; // SOMENTE QUANDO T E S
      //NovoRegistroD4.IND_CANC      :='N';
      //NovoRegistroD4.DEC_QTDE_ITEM :=2;
      //NovoRegistroD4.DEC_VL_UNIT   :=2;
      //NovoRegistroD4.TIP_ALT       :='I';
      NovoRegistroD4.RegistroValido:=False; //true
    //end;
    {$ENDREGION}
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  {$ENDREGION}

  {$REGION 'Registro S2 - MESA/CONTA DE CLIENTE ABERTAS'}
  //begin
    //NovoRegistroS2         :=ACBrPAF1.PAF_S.RegistroS2.New;
    //NovoRegistroS2.CNPJ    :=ACBrPAF1.PAF_U.RegistroU1.CNPJ;
    //NovoRegistroS2.DT_ABER :=Now;
    //NovoRegistroS2.NUM_MESA:=IntToStr(i);
    //NovoRegistroS2.VL_TOT  :=12.5 * i;
    //"Nº do Conferencia de Mesa" abaixo "COO_CM" - Deve ser informado apenas quando houver registro destes dados.
    ////NovoRegistroS2.COO_CM     := IntToStr(i);

    {$REGION 'Registro S3 - ITENS DA MESA/CONTA DE CLIENTE ABERTAS'}
    //for j := 1 to 2 do
    //begin
    //  NovoRegistroS3 := NovoRegistroS2.RegistroS3.New;
    //  NovoRegistroS3.COD_ITEM  := IntToStr(j);
    //  NovoRegistroS3.DESC_ITEM := 'descricao do item';
    //  NovoRegistroS3.QTDE_ITEM := 1;
    //  NovoRegistroS3.UNI_ITEM  := 'UN';
    //  NovoRegistroS3.VL_UNIT   := 2;
    //end;
    {$ENDREGION}

  //end;
  {$ENDREGION}

  {$REGION 'Registro J1 - NFC-e EMITIDA PELO PAF-NFC-e'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select NFC_ACREVALOR, NFC_CHAVEACESSO, NFC_CNPJ, NFC_CODIGO, NFC_CPF, NFC_DESCVALOR, NFC_DTEMISSAO, '+
    'NFC_SERIE, NFC_TOTALPRODUTOS, NFC_VALORTOTAL, CLI_TIPOPESSOA from NFCE '+
    'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
    'where NFC_STATUS=''F'' and NFC_DTEMISSAO between :datainicial and :datafinal '+
    'order by NFC_DTEMISSAO, NFC_FORMAPAGTO'
  );
  DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    NovoRegistroJ1                :=ACBrPAF1.PAF_J.RegistroJ1.New;
    NovoRegistroJ1.CNPJ           :=ACBrPAF1.PAF_U.RegistroU1.CNPJ;
    NovoRegistroJ1.DATA_EMISSAO   :=DM.QYAux.FieldByName('NFC_DTEMISSAO').AsDateTime;
    NovoRegistroJ1.SUBTOTAL       :=DM.QYAux.FieldByName('NFC_TOTALPRODUTOS').AsExtended;
    NovoRegistroJ1.DESC_SUBTOTAL  :=DM.QYAux.FieldByName('NFC_DESCVALOR').AsExtended;
    NovoRegistroJ1.INDICADOR_DESC :='V';
    NovoRegistroJ1.ACRES_SUBTOTAL :=DM.QYAux.FieldByName('NFC_ACREVALOR').AsExtended;
    NovoRegistroJ1.INDICADOR_ACRES:='V';
    NovoRegistroJ1.VALOR_LIQUIDO  :=DM.QYAux.FieldByName('NFC_VALORTOTAL').AsExtended;
    NovoRegistroJ1.TIPOEMISSAO    :='1';
    NovoRegistroJ1.CHAVE_NF       :=DM.QYAux.FieldByName('NFC_CHAVEACESSO').AsString;
    NovoRegistroJ1.NUMERO_NOTA    :=DM.QYAux.FieldByName('NFC_CODIGO').AsString;
    NovoRegistroJ1.SERIE_NOTA     :=DM.QYAux.FieldByName('NFC_SERIE').AsString;
    if (DM.QYAux.FieldByName('CLI_TIPOPESSOA').AsString='F') then
    NovoRegistroJ1.CPFCNPJ_CLIENTE:=DM.QYAux.FieldByName('NFC_CPF').AsString else
    NovoRegistroJ1.CPFCNPJ_CLIENTE:=DM.QYAux.FieldByName('NFC_CNPJ').AsString;

    {$REGION 'Registro J2 - DETALHES DA NFC-e EMITIDAS EM CONTINGÊNCIA PELO PAF-NFC-e'}
    //Registros J2 são gerados apenas para NFC-e que forem emitidas em Contingência. Não é o caso desse exemplo.
    {for j := 1 to 2 do
    begin
      NovoRegistroJ2 := NovoRegistroJ1.RegistroJ2.New;

      NovoRegistroJ2.DATA_EMISSAO            := Date;
      NovoRegistroJ2.NUMERO_ITEM             := IntToStr(j);
      NovoRegistroJ2.COD_ITEM                := IntToStr(j);
      NovoRegistroJ2.DESC_ITEM               := 'descricao do item';
      NovoRegistroJ2.QTDE_ITEM               := 1;
      NovoRegistroJ2.UNI_ITEM                := 'UN';
      NovoRegistroJ2.VL_UNIT                 := 2;
      NovoRegistroJ2.DESCONTO_ITEM           := 2;
      NovoRegistroJ2.ACRESCIMO_ITEM          := 2;
      NovoRegistroJ2.VALOR_LIQUIDO           := 2;
      NovoRegistroJ2.TOTALIZADOR_PARCIAL     := 2;
      NovoRegistroJ2.CASAS_DECIMAIS_QTDE     := 2;
      NovoRegistroJ2.CASAS_DECIMAIS_VAL_UNIT := 2;
      NovoRegistroJ2.NUMERO_NOTA             := 2;
      NovoRegistroJ2.SERIE_NOTA              := 2;
      NovoRegistroJ2.CHAVE_NF                := GerarDados('I', 44);;
    end;}
    {$ENDREGION}

    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  {$ENDREGION}

  ACBrPAF1.SaveToFile_RegistrosPAF(PastaArquivos+'\RegistrosPAFNFCe.txt');
  if FileExists(PastaArquivos+'\RegistrosPAFNFCe.txt') then
  Memo1.Lines.LoadFromFile(PastaArquivos+'\RegistrosPAFNFCe.txt');
end;

procedure TFormNfceMenuFiscal.PngBitBtn2Click(Sender: TObject);
var S: String;
  F: TextFile;
begin
  S:='CNPJ: '+DM.TBEmpresaEMP_NOSSOCNPJ.Value;
  S:=S+#13#10+'Razão Social: '+DM.TBEmpresaEMP_NOSSONOME.Value;
  S:=S+#13#10+'Endereço: '+DM.TBEmpresaEMP_NOSSOENDERECO.Value+', '+
  DM.TBEmpresaEMP_NOSSONUMERO.Value+' '+DM.TBEmpresaEMP_NOSSOBAIRRO.Value+' - '+DM.TBEmpresaEMP_NOSSOCIDADE.Value+' - '+DM.TBEmpresaEMP_NOSSOESTADO.Value+' CEP: '+DM.TBEmpresaEMP_NOSSOCEP.Value;
  S:=S+#13#10+'Telefone: '+DM.TBEmpresaEMP_NOSSOFONE1.Value;
  S:=S+#13#10+'Contato: ROGERIO PETT';
  S:=S+#13#10+'Nome comercial: FIRENET';
  S:=S+#13#10+'Versão: '+FileVersion(Application.ExeName);
  S:=S+#13#10+'Banco de dados interno';
  S:=S+#13#10+'PAF-NFC-e Local';

  AssignFile(F,PastaArquivos+'\Identificacao.txt');
  Rewrite(F);
  Write(F,S);
  CloseFile(F);
  MessageDlg('Arquivo Identificacao.txt gerado com o conteúdo abaixo'+#13#10#13#10+S,mtInformation,[mbOk],0);
end;

procedure TFormNfceMenuFiscal.PngBitBtn3Click(Sender: TObject);
var LRegistroZ4: TRegistroZ4;
  Where: String;
begin
  // Sempre altere o layout antes de preencher os registros. Isso porque
  // ao alterar o layout, todos registros já lançados são apagados automaticamente.
  ACBrPAF1.Layout := lpPAFNFCe;

  {$REGION 'Registro Z1 - IDENTIFICAÇÃO DO USUÁRIO DO PAF-NFC-e'}
  ACBrPAF1.PAF_Z.RegistroZ1.CNPJ       :=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  ACBrPAF1.PAF_Z.RegistroZ1.IE         :=DM.TBEmpresaEMP_IE.Value;
  ACBrPAF1.PAF_Z.RegistroZ1.IM         :=DM.TBEmpresaEMP_IM.Value;
  ACBrPAF1.PAF_Z.RegistroZ1.RAZAOSOCIAL:=DM.TBEmpresaEMP_NOME.Value;
  {$ENDREGION}

  {$REGION 'Registro Z2 - IDENTIFICAÇÃO DA EMPRESA DESENVOLVEDORA DO PAF-NFC-e'}
  ACBrPAF1.PAF_Z.RegistroZ2.CNPJ       :=LimparFormatacao(DM.TBEmpresaEMP_NOSSOCNPJ.Value);
  ACBrPAF1.PAF_Z.RegistroZ2.IE         :=DM.TBEmpresaEMP_NOSSOIE.Value;
  ACBrPAF1.PAF_Z.RegistroZ2.IM         :=DM.TBEmpresaEMP_NOSSOIM.Value;
  ACBrPAF1.PAF_Z.RegistroZ2.RAZAOSOCIAL:=DM.TBEmpresaEMP_NOSSONOME.Value;
  {$ENDREGION}

  {$REGION 'Registro Z3 - IDENTIFICAÇÃO DO PAF-NFC-e'}
  ACBrPAF1.PAF_Z.RegistroZ3.NOME       :='FIRENET';
  ACBrPAF1.PAF_Z.RegistroZ3.VERSAO     :=FileVersion(Application.ExeName);
  {$ENDREGION}

  {$REGION 'Registro Z4 - Totalização de vendas a CPF/CNPJ'}
  Where:='';
  if (ComboBox2.Text='CNPJ') and (SoNumeros(MaskEdit4.Text)<>'') then
  Where:=' and NFC_CNPJ='+MaskEdit4.Text;
  if (ComboBox2.Text='CPF') and (SoNumeros(MaskEdit4.Text)<>'') then
  Where:=' and NFC_CPF='+MaskEdit4.Text;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select NFC_CLIENTE, NFC_CNPJ, NFC_CPF, CLI_TIPOPESSOA, sum(NFC_VALORTOTAL) as VALORTOTAL from NFCE '+
    'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
    'where NFC_STATUS=:status and NFC_CLIENTE<>1 and extract(YEAR from NFC_DTEMISSAO)=:ano and extract(MONTH from NFC_DTEMISSAO)=:mes '+Where+' '+
    'group by NFC_CLIENTE, NFC_CNPJ, NFC_CPF, CLI_TIPOPESSOA '+
    'order by NFC_CLIENTE'
  );
  DM.QYAux.ParamByName('ano').AsInteger:=StrToInt(MaskEdit3.Text);
  DM.QYAux.ParamByName('mes').AsInteger:=ComboBox1.ItemIndex+1;
  DM.QYAux.ParamByName('status').AsString:='F';
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select min(NFC_DTEMISSAO) as DATAINI, max(NFC_DTEMISSAO) as DATAFIM from NFCE where NFC_CLIENTE=:cliente');
    DM.QYAux2.ParamByName('cliente').AsInteger:=DM.QYAux.FieldByName('NFC_CLIENTE').AsInteger;
    DM.QYAux2.Open;

    LRegistroZ4                :=ACBrPAF1.PAF_Z.RegistroZ4.New;
    if DM.QYAux.FieldByName('CLI_TIPOPESSOA').AsString='J' then
    LRegistroZ4.CPF_CNPJ       :=LimparFormatacao(DM.QYAux.FieldByName('NFC_CNPJ').AsString) else
    LRegistroZ4.CPF_CNPJ       :=LimparFormatacao(DM.QYAux.FieldByName('NFC_CPF').AsString);
    LRegistroZ4.VL_TOTAL_MENSAL:=DM.QYAux.FieldByName('VALORTOTAL').AsExtended;
    LRegistroZ4.DATA_INI       :=DM.QYAux2.FieldByName('DATAINI').AsDateTime;
    LRegistroZ4.DATA_FIM       :=DM.QYAux2.FieldByName('DATAFIM').AsDateTime;

    DM.QYAux2.Close;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  {$ENDREGION}

  ACBrPAF1.SaveToFile_Z(PastaArquivos+'\RegistrosPAFNFCeZ.txt');
  if FileExists(PastaArquivos+'\RegistrosPAFNFCeZ.txt') then
  Memo2.Lines.LoadFromFile(PastaArquivos+'\RegistrosPAFNFCeZ.txt');
end;

procedure TFormNfceMenuFiscal.PngBitBtn4Click(Sender: TObject);
var
  i: Integer;
  LRegistroW4: TRegistroW4;
begin
  // Sempre altere o layout antes de preencher os registros. Isso porque
  // ao alterar o layout, todos registros já lançados são apagados automaticamente.
  ACBrPAF1.Layout := lpPAFNFCe;

  {$REGION 'Registro W1 - IDENTIFICAÇÃO DO USUÁRIO DO PAF-NFC-e'}
  ACBrPAF1.PAF_W.RegistroW1.CNPJ       :=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  ACBrPAF1.PAF_W.RegistroW1.IE         :=DM.TBEmpresaEMP_IE.Value;
  ACBrPAF1.PAF_W.RegistroW1.IM         :=DM.TBEmpresaEMP_IM.Value;
  ACBrPAF1.PAF_W.RegistroW1.RAZAOSOCIAL:=DM.TBEmpresaEMP_NOME.Value;
  {$ENDREGION}

  {$REGION 'Registro W2 - IDENTIFICAÇÃO DA EMPRESA DESENVOLVEDORA DO PAF-NFC-e'}
  ACBrPAF1.PAF_W.RegistroW2.CNPJ       :=LimparFormatacao(DM.TBEmpresaEMP_NOSSOCNPJ.Value);
  ACBrPAF1.PAF_W.RegistroW2.IE         :=DM.TBEmpresaEMP_NOSSOIE.Value;
  ACBrPAF1.PAF_W.RegistroW2.IM         :=DM.TBEmpresaEMP_NOSSOIM.Value;
  ACBrPAF1.PAF_W.RegistroW2.RAZAOSOCIAL:=DM.TBEmpresaEMP_NOSSONOME.Value;
  {$ENDREGION}

  {$REGION 'Registro W3 - IDENTIFICAÇÃO DO PAF-NFC-e'}
  ACBrPAF1.PAF_W.RegistroW3.NOME       :='FIRENET';
  ACBrPAF1.PAF_W.RegistroW3.VERSAO     :=FileVersion(Application.ExeName);
  {$ENDREGION}

  {$REGION 'Registro W4 - Identificação da RE'}
  {for i:=  0 to 5 do
  begin
    LRegistroW4               :=ACBrPAF1.PAF_W.RegistroW4.New;
    LRegistroW4.ORIGEMDARE    :='A'; //mobile, internet e outros.
    LRegistroW4.STATUSDARE    :='F'; //(R)ecebida, (A)tendida, (D)enegada
    LRegistroW4.CRE           :='123';
    LRegistroW4.DAV           :='123';
    LRegistroW4.PREVENDA      :='123';
    LRegistroW4.VALORTOTALDARE:=4.50;
  end;}
  {$ENDREGION}

  ACBrPAF1.SaveToFile_RegistrosPAF(PastaArquivos+'\RegistrosPAFNFCeW.txt');
  if FileExists(PastaArquivos+'\RegistrosPAFNFCeW.txt') then
  Memo3.Lines.LoadFromFile(PastaArquivos+'\RegistrosPAFNFCeW.txt');
end;

procedure TFormNfceMenuFiscal.PngBitBtn5Click(Sender: TObject);
var
  i: Integer;
  LRegistroV2: TRegistroV2;
  LRegistroV3: TRegistroV3;
begin
  // Sempre altere o layout antes de preencher os registros. Isso porque
  // ao alterar o layout, todos registros já lançados são apagados automaticamente.
  ACBrPAF1.Layout := lpPAFNFCe;

  {$REGION 'Registro V1 - IDENTIFICAÇÃO DO ESTABELECIMENTO USUÁRIO DO PAF-NFC-e'}
  ACBrPAF1.PAF_V.RegistroV1.CNPJ       :=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  ACBrPAF1.PAF_V.RegistroV1.IE         :=DM.TBEmpresaEMP_IE.Value;
  ACBrPAF1.PAF_V.RegistroV1.IM         :=DM.TBEmpresaEMP_IM.Value;
  ACBrPAF1.PAF_V.RegistroV1.RAZAOSOCIAL:=DM.TBEmpresaEMP_NOME.Value;
  {$ENDREGION}
  
  {$REGION 'Registro V2 - RELAÇÃO DOS DAV NÃO ENCERRADOS'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from VENDAS where VED_DAV=''S'' and VED_NFCE is null');
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do  
  begin
    LRegistroV2     :=ACBrPAF1.PAF_V.RegistrosV2.New;
    LRegistroV2.DATA:=DM.QYAux.FieldByName('VED_DTEMISSAO').AsDateTime;
    LRegistroV2.DAV :=DM.QYAux.FieldByName('VED_CODIGO').AsInteger;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;  
  {$ENDREGION}

  {$REGION 'Registro V3 - RELAÇÃO DOS DAV SEM DOCUMENTO FISCAL'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from VENDAS where VED_DAV=''S'' and VED_NFCE is null');
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do  
  begin
    LRegistroV3    :=ACBrPAF1.PAF_V.RegistrosV3.New;
    LRegistroV3.DAV:=DM.QYAux.FieldByName('VED_CODIGO').AsInteger;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  {$ENDREGION}

  //V4
  ACBrPAF1.PAF_V.RegistroV4.DATA:=now;

  ACBrPAF1.SaveToFile_V(PastaArquivos+'\RegistrosPAFNFCeV.txt');
  if FileExists(PastaArquivos+'\RegistrosPAFNFCeV.txt') then
  Memo4.Lines.LoadFromFile(PastaArquivos+'\RegistrosPAFNFCeV.txt');
end;

procedure TFormNfceMenuFiscal.PngBitBtn6Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if FormProdutosLoc.QYProdutosPRO_TIPOITEM.Value<>'00 - MERCADORIA PARA REVENDA' then
    begin
      MessageDlg('O produto selecionado não é para revenda.',mtError,[mbOk],0);
    end else
    if not TBProdutos.Locate('PRO_CODIGO',FormProdutosLoc.QYProdutosPRO_CODIGO.Value,[]) then
    begin
      TBProdutos.Insert;
      TBProdutosPRO_CEST.Value:=FormProdutosLoc.QYProdutosPRO_CEST.Value;
      TBProdutosPRO_CLASSFISCAL.Value:=FormProdutosLoc.QYProdutosPRO_CLASSFISCAL.Value;
      TBProdutosPRO_CODIGO.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      TBProdutosPRO_NOME.Value:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
      TBProdutosPRO_UNIDADE.Value:=FormProdutosLoc.QYProdutosPRO_UNIDADE.Value;
      TBProdutosPRO_ESTOQUEATUAL.Value:=FormProdutosLoc.QYProdutosPRO_ESTOQUEATUAL.Value;
      TBProdutos.Post;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormNfceMenuFiscal.PngBitBtn7Click(Sender: TObject);
begin
  if not TBProdutos.IsEmpty then
  TBProdutos.Delete;
end;

procedure TFormNfceMenuFiscal.PngBitBtn8Click(Sender: TObject);
begin
  TBProdutos.EmptyDataSet;
end;

end.
