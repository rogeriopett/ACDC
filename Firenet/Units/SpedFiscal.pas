unit SpedFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Menus, Buttons, PngSpeedButton, DBSBtn, ExtCtrls,
  ExtDlgs, ACBrSpedFiscal, DB, ComCtrls, ImgList, PngImageList, System.ImageList,
  System.UITypes, ACBrBase, Vcl.CheckLst, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormSpedFiscal = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton2: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    GerarArquivo1: TMenuItem;
    SaveTextFileDialog1: TSaveTextFileDialog;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    PngImageList1: TPngImageList;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    ComboBox3: TComboBox;
    Label6: TLabel;
    ComboBox4: TComboBox;
    Label7: TLabel;
    ComboBox5: TComboBox;
    MaskEdit3: TMaskEdit;
    CheckListBox1: TCheckListBox;
    Label8: TLabel;
    QY2: TFDQuery;
    QY: TFDQuery;
    TR: TFDTransaction;
    TR2: TFDTransaction;
    procedure Fechar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Ajuda2Click(Sender: TObject);
    procedure GerarArquivo1Click(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure GerarBloco0;
    procedure GerarBlocoB;
    procedure GerarBlocoC;
    procedure GerarBlocoD;
    procedure GerarBlocoE;
    procedure GerarBlocoG;
    procedure GerarBlocoH;
    procedure GerarBlocoK;
    procedure GerarBloco1;
    procedure GerarBloco9;
  public
    { Public declarations }
  end;

var
  FormSpedFiscal: TFormSpedFiscal;
  E110_VL_TOT_DEBITOS: Currency;

implementation
uses DataMod, ACBrEFDBlocos, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormSpedFiscal.GerarBloco0;
var S: AnsiString;
begin
  with ACBrSpedFiscal1.Bloco_0 do
  begin
    {$REGION 'REGISTRO 0000 - 0 - Abertura do arquivo digital.'}
    with Registro0000New do
    begin
      if ComboBox2.Text='112' then COD_VER:=vlVersao112;
      if ComboBox2.Text='113' then COD_VER:=vlVersao113; //alterar em 2020.
      if ComboBox2.Text='114' then COD_VER:=vlVersao114;
      if ComboBox2.Text='115' then COD_VER:=vlVersao115;
      if ComboBox2.Text='116' then COD_VER:=vlVersao116;
      case ComboBox1.ItemIndex of
        0: COD_FIN:=raOriginal;
        1: COD_FIN:=raSubstituto;
      end;
      NOME       :=DM.TBEmpresaEMP_NOME.Value;
      CNPJ       :=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
      CPF        :='';
      UF         :=DM.TBEmpresaEMP_ESTADO.Value;
      IE         :=LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
      COD_MUN    :=DM.TBEmpresaEMP_CIDADECODIGO.Value;
      IM         :=DM.TBEmpresaEMP_IM.Value;
      SUFRAMA    :='';
      case ComboBox3.ItemIndex of
        0: IND_PERFIL :=pfPerfilA; //A,B,C.
        1: IND_PERFIL :=pfPerfilB; //A,B,C.
        2: IND_PERFIL :=pfPerfilC; //A,B,C.
      end;
      case ComboBox4.ItemIndex of
        0: IND_ATIV:=atIndustrial; //0=industrial 1=Outros;
        1: IND_ATIV:=atOutros; //0=industrial 1=Outros;
      end;
    end;
    {$ENDREGION}

    {$REGION 'REGISTRO 0001 - 1 - Abertura do bloco zero.'}
    with Registro0001New do
    begin
      IND_MOV:=imComDados;

      //REGISTRO 0002 - 2 - nao tem.

      {$REGION 'REGISTRO 0005 - 2 - Dados complementares da Empresa.'}
      with Registro0005New do
      begin
        FANTASIA:=DM.TBEmpresaEMP_NOMEFANTASIA.Value;
        CEP     :=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
        ENDERECO:=DM.TBEmpresaEMP_ENDERECO.Value;
        NUM     :=DM.TBEmpresaEMP_NUMERO.Value;
        COMPL   :='';
        BAIRRO  :=DM.TBEmpresaEMP_BAIRRO.Value;
        S:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
        FONE    :=Copy(S,2,Length(S));
        FAX     :='';
        EMAIL   :=DM.TBEmpresaEMP_EMAIL.Value;
      end;
      {$ENDREGION}

      {$REGION 'REGISTRO 0015 - 2 - Dados do contribuinte substituto.'}
      DM.TBAliquotas.First;
      while not DM.TBAliquotas.Eof do
      begin
        if DM.TBAliquotasALI_IEST.Value<>'' then
        begin
          with Registro0015New do
          begin
            UF_ST:=DM.TBAliquotasALI_ESTADO.Value;
            IE_ST:=LimparFormatacao(DM.TBAliquotasALI_IEST.Value);
          end;
        end;
        DM.TBAliquotas.Next;
      end;
      {$ENDREGION}

      {$REGION 'REGISTRO 0100 - 2 - Dados do contador.'}
      QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add('select * from FORNECEDORES where FOR_CODIGO=:codigo');
      QY.ParamByName('codigo').AsInteger:=DM.TBEmpresaEMP_CONTABILIDADE.Value;
      QY.Open;
      with Registro0100New do
      begin
        NOME    :=QY.FieldByName('FOR_NOME').AsString;
        CPF     :=LimparFormatacao(QY.FieldByName('FOR_CPF').AsString);
        CRC     :=QY.FieldByName('FOR_REGPROFISSIONAL').AsString;
        CNPJ    :=LimparFormatacao(QY.FieldByName('FOR_CNPJ').AsString);
        CEP     :=LimparFormatacao(QY.FieldByName('FOR_CEP').AsString);
        ENDERECO:=QY.FieldByName('FOR_ENDERECO').AsString;
        NUM     :=QY.FieldByName('FOR_NUMERO').AsString;
        COMPL   :=QY.FieldByName('FOR_COMPLEMENTO').AsString;
        BAIRRO  :=QY.FieldByName('FOR_BAIRRO').AsString;
        S:=LimparFormatacao(QY.FieldByName('FOR_FONE1').AsString);
        FONE    :=Copy(S,2,Length(S));
        FAX     :='';
        EMAIL   :=QY.FieldByName('FOR_EMAIL').AsString;
        COD_MUN :=QY.FieldByName('FOR_CIDADECODIGO').AsInteger;
      end;
      {$ENDREGION}

      {$REGION 'REGISTRO 0150 - 2 - Dados dos participantes. CLIENTES'}
      QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add('select NFE_CLIENTE, CLI_BAIRRO, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, CLI_CPF, '+
                 'CLI_ENDERECO, CLI_IE, CLI_NOME, CLI_NUMERO, CLI_PAISCODIGO, CLI_SUFRAMA, CLI_TIPOPESSOA from NFE '+
                 'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
                 'where NFE_DTEMISSAO between :datainicial and :datafinal and NFE_STATUS=''F'' '+
                 'group by NFE_CLIENTE, CLI_BAIRRO, CLI_CIDADECODIGO, CLI_CNPJ, CLI_COMPLEMENTO, CLI_CPF, '+
                 'CLI_ENDERECO, CLI_IE, CLI_NOME, CLI_NUMERO, CLI_PAISCODIGO, CLI_SUFRAMA, CLI_TIPOPESSOA '+
                 'order by CLI_NOME');
                 //se nfe cancelada ou inutilizada, nao informa o participante.
      QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
      QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      QY.Open;
      QY.First;
      while not QY.Eof do
      begin
        with Registro0150New do
        begin
          COD_PART :=QY.FieldByName('NFE_CLIENTE').AsString;
          NOME     :=Trim(QY.FieldByName('CLI_NOME').AsString);
          COD_PAIS :=QY.FieldByName('CLI_PAISCODIGO').AsString;
          if QY.FieldByName('CLI_TIPOPESSOA').AsString='J' then
          begin
            CNPJ   :=LimparFormatacao(QY.FieldByName('CLI_CNPJ').AsString);
            CPF    :='';
          end else
          begin
            CNPJ   :='';
            CPF    :=LimparFormatacao(QY.FieldByName('CLI_CPF').AsString);
          end;
          IE       :=SoNumeros(QY.FieldByName('CLI_IE').AsString);
          COD_MUN  :=QY.FieldByName('CLI_CIDADECODIGO').AsInteger;
          SUFRAMA  :=Trim(QY.FieldByName('CLI_SUFRAMA').AsString);
          ENDERECO :=Trim(QY.FieldByName('CLI_ENDERECO').AsString);
          NUM      :=Trim(QY.FieldByName('CLI_NUMERO').AsString);
          COMPL    :=Trim(QY.FieldByName('CLI_COMPLEMENTO').AsString);
          BAIRRO   :=Trim(QY.FieldByName('CLI_BAIRRO').AsString);
          QY.Next;

          //REGISTRO 175 - 3 - Alterações dos dados de cada cliente.
          //for int0175 := 1 to 5 do
          //begin
          //  with Registro0175New do
          //  begin
          //    DT_ALT   := Date + int0175;
          //    NR_CAMPO := IntToStr(int0175);
          //   CONT_ANT := 'CAMPO ANTERIOR ' + IntToStr(int0175);
          //  end;
          //end;
        end;
      end;
      {$ENDREGION}

      {$REGION 'REGISTRO 0150 - 2 - Dados dos participantes. FORNECEDORES'}
      QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add(
        'select COM_FORNECEDOR, FOR_BAIRRO, FOR_CIDADECODIGO, FOR_CNPJ, FOR_COMPLEMENTO, FOR_CPF, '+
        'FOR_ENDERECO, FOR_IE, FOR_NOME, FOR_NUMERO, FOR_PAISCODIGO, FOR_TIPOPESSOA from COMPRAS '+
        'left join FORNECEDORES on COM_FORNECEDOR=FOR_CODIGO '+
        'where COM_STATUS=''F'' and COM_NOTANUMERO is not null and COM_CHAVEACESSO is not null and COM_DTENTRADA between :datainicial and :datafinal '+
        'group by COM_FORNECEDOR, FOR_BAIRRO, FOR_CIDADECODIGO, FOR_CNPJ, FOR_COMPLEMENTO, FOR_CPF, '+
        'FOR_ENDERECO, FOR_IE, FOR_NOME, FOR_NUMERO, FOR_PAISCODIGO, FOR_TIPOPESSOA '+
        'order by FOR_NOME');
                 //se nfe cancelada ou inutilizada, nao informa o participante.
      QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
      QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      QY.Open;
      QY.First;
      while not QY.Eof do
      begin
        with Registro0150New do
        begin
          COD_PART :='F'+QY.FieldByName('COM_FORNECEDOR').AsString; //F na frente pra diferenciar do código do cliente.
          NOME     :=Trim(QY.FieldByName('FOR_NOME').AsString);
          COD_PAIS :=QY.FieldByName('FOR_PAISCODIGO').AsString;
          if QY.FieldByName('FOR_TIPOPESSOA').AsString='J' then
          begin
            CNPJ   :=LimparFormatacao(QY.FieldByName('FOR_CNPJ').AsString);
            CPF    :='';
          end else
          begin
            CNPJ   :='';
            CPF    :=LimparFormatacao(QY.FieldByName('FOR_CPF').AsString);
          end;
          IE       :=SoNumeros(QY.FieldByName('FOR_IE').AsString);
          COD_MUN  :=QY.FieldByName('FOR_CIDADECODIGO').AsInteger;
          SUFRAMA  :='';
          ENDERECO :=Copy(Trim(QY.FieldByName('FOR_ENDERECO').AsString),1,60);
          NUM      :=Trim(QY.FieldByName('FOR_NUMERO').AsString);
          COMPL    :=Trim(QY.FieldByName('FOR_COMPLEMENTO').AsString);
          BAIRRO   :=Trim(QY.FieldByName('FOR_BAIRRO').AsString);
          QY.Next;

          //REGISTRO 175 - 3 - Alterações dos dados de cada cliente.
          //for int0175 := 1 to 5 do
          //begin
          //  with Registro0175New do
          //  begin
          //    DT_ALT   := Date + int0175;
          //    NR_CAMPO := IntToStr(int0175);
          //   CONT_ANT := 'CAMPO ANTERIOR ' + IntToStr(int0175);
          //  end;
          //end;
        end;
      end;
      {$ENDREGION}

      {$REGION 'REGISTRO 0150 - 2 - Dados dos participantes. BANCOS'}
      QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add(
        'select CON_CODIGO, CON_CNPJ, BAN_NOME, sum(NFE_TOTALSERVICOS) as TOTALSERVICOS, sum(NFE_VALORTOTAL) as VALORTOTAL from NFE '+
        'left join CONDICOES on NFE_CONDICAO=CPG_CODIGO '+
        'left join CONTAS on CPG_CONTA=CON_CODIGO '+
        'left join BANCOS on CON_BANCO=BAN_CODIGO '+
        'where (NFE_DTEMISSAO between :datainicial and :datafinal) and NFE_STATUS=''F'' and CON_CODIGO<>:contapadraolocal '+
        'group by CON_CNPJ, CON_CODIGO, BAN_NOME '+
        'order by CON_CNPJ, CON_CODIGO, BAN_NOME');
      QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
      QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      QY.ParamByName('contapadraolocal').AsInteger:=DM.TBParametrosPAR_CONTALOCALPADRAO.Value;
      QY.Open;
      QY.First;
      while not QY.Eof do
      begin
        with Registro0150New do
        begin
          COD_PART :='B'+QY.FieldByName('CON_CODIGO').AsString; //B na frente pra diferenciar do código do cliente e do fornecedor.
          NOME     :=Trim(QY.FieldByName('BAN_NOME').AsString);
          COD_PAIS :='1058'; //brasil QY.FieldByName('FOR_PAISCODIGO').AsString;
          //if QY.FieldByName('FOR_TIPOPESSOA').AsString='J' then
          //begin
            CNPJ   :=LimparFormatacao(QY.FieldByName('CON_CNPJ').AsString);
            CPF    :='';
          //end else
          //begin
          //  CNPJ   :='';
          //  CPF    :=LimparFormatacao(QY.FieldByName('FOR_CPF').AsString);
          //end;
          IE       :=''; //SoNumeros(QY.FieldByName('FOR_IE').AsString);
          COD_MUN  :=4209806; //jaragua do sulQY.FieldByName('FOR_CIDADECODIGO').AsInteger;
          SUFRAMA  :='';
          ENDERECO :='NAO INFORMADO'; //Copy(Trim(QY.FieldByName('FOR_ENDERECO').AsString),1,60);
          NUM      :='SN'; //Trim(QY.FieldByName('FOR_NUMERO').AsString);
          COMPL    :='SEM COMPLEMENTO'; //Trim(QY.FieldByName('FOR_COMPLEMENTO').AsString);
          BAIRRO   :='NAO INFORMADO'; //Trim(QY.FieldByName('FOR_BAIRRO').AsString);
          QY.Next;

          //REGISTRO 175 - 3 - Alterações dos dados de cada cliente.
          //for int0175 := 1 to 5 do
          //begin
          //  with Registro0175New do
          //  begin
          //    DT_ALT   := Date + int0175;
          //    NR_CAMPO := IntToStr(int0175);
          //   CONT_ANT := 'CAMPO ANTERIOR ' + IntToStr(int0175);
          //  end;
          //end;
        end;
      end;
      {$ENDREGION}

      {$REGION 'REGISTRO 0190 - 2 - Unidades de medida.'}
      if CheckBox1.Checked then //se inclui inventário, então deve pegar todas as unidades.
      begin
        {$REGION 'TODAS AS UNIDADES'}
        QY.Close;
        QY.SQL.Clear;
        QY.SQL.Add('select PRO_UNIDADE, UNI_DESCRICAO from PRODUTOS '+
                   'left join UNIDADES on UNI_CODIGO=PRO_UNIDADE '+
                   'group by PRO_UNIDADE, UNI_DESCRICAO '+
                   'order by PRO_UNIDADE');
        QY.Open;
        QY.First;
        while not QY.Eof do
        begin
          with Registro0190New do
          begin
            UNID :=QY.FieldByName('PRO_UNIDADE').AsString;
            DESCR:=QY.FieldByName('UNI_DESCRICAO').AsString;
          end;
          QY.Next;
        end;
        {$ENDREGION}
      end else //senão informa só as unidades relativas aos itens que foram utilizados no período.
      begin
        {$REGION 'UNIDADES UTILIZADAS NO PERIODO'}
        QY.Close;
        QY.SQL.Clear;
        QY.SQL.Add('select NFI_UNIDADE, UNI_DESCRICAO from NFEITENS '+
                   'left join NFE on NFI_NOTA=NFE_CODIGO '+
                   'left join UNIDADES on NFI_UNIDADE=UNI_CODIGO '+
                   'where NFE_DTEMISSAO between :datainicial and :datafinal '+
                   'group by NFI_UNIDADE, UNI_DESCRICAO order by NFI_UNIDADE');
        QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
        QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
        QY.Open;
        QY.First;
        while not QY.Eof do
        begin
          with Registro0190New do
          begin
            UNID :=QY.FieldByName('NFI_UNIDADE').AsString;
            DESCR:=QY.FieldByName('UNI_DESCRICAO').AsString;
          end;
          QY.Next;
        end;

        //faz também a pesquisa com base na movimentação do estoque.
        QY.Close;
        QY.SQL.Clear;
        QY.SQL.Add('select PRO_UNIDADE, UNI_DESCRICAO from ESTOQUE '+
                   'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO '+
                   'left join UNIDADES on PRO_UNIDADE=UNI_CODIGO '+
                   'where EST_DATA between :datainicial and :datafinal and  '+
                   '(PRO_TIPOITEM=''00 - MERCADORIA PARA REVENDA'' or '+
                   ' PRO_TIPOITEM=''01 - MATERIA-PRIMA'' or '+
                   ' PRO_TIPOITEM=''02 - EMBALAGEM'' or '+
                   ' PRO_TIPOITEM=''03 - PRODUTO EM PROCESSO'' or '+
                   ' PRO_TIPOITEM=''04 - PRODUTO ACABADO'' or '+
                   ' PRO_TIPOITEM=''05 - SUBPRODUTO'' or '+
                   ' PRO_TIPOITEM=''06 - PRODUTO INTERMEDIARIO'' or '+
                   ' PRO_TIPOITEM=''10 - OUTROS INSUMOS'') '+
                   'group by PRO_UNIDADE, UNI_DESCRICAO order by PRO_UNIDADE');
        QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
        QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
        QY.Open;
        QY.First;
        while not QY.Eof do
        begin
          if not Registro0190.LocalizaRegistro(QY.FieldByName('PRO_UNIDADE').AsString) then
          begin
            with Registro0190New do
            begin
              UNID :=QY.FieldByName('PRO_UNIDADE').AsString;
              DESCR:=QY.FieldByName('UNI_DESCRICAO').AsString;
            end;
          end;
          QY.Next;
        end;
        QY.Close;
        {$ENDREGION}
      end;
      {$ENDREGION}

      {$REGION 'REGISTRO 0200 - 2 - Identificação dos itens.'}
      {$REGION 'Seleciona produtos nas notas ou no cadastro principal.'}
      QY.Close;
      QY.SQL.Clear;
      if CheckBox1.Checked then //inclui inventário?
      QY.SQL.Add('select PRO_ALIQICMS, PRO_CEST, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARRAS, PRO_GENERO, PRO_NOME, '+
                 'PRO_TIPOITEM, PRO_UNIDADE from PRODUTOS where PRO_TIPO=''P'' order by PRO_CODIGO') else
      begin
        QY.SQL.Add('select PRO_ALIQICMS, PRO_CEST, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARRAS, PRO_GENERO, PRO_NOME, '+
                   'PRO_TIPOITEM, PRO_UNIDADE from NFEITENS '+
                   'left join PRODUTOS on NFI_PRODUTO=PRO_CODIGO '+
                   'left join NFE on NFI_NOTA=NFE_CODIGO '+
                   'where NFE_DTEMISSAO between :datainicial and :datafinal and NFE_STATUS<>''A'' '+
                   'group by PRO_ALIQICMS, PRO_CEST, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARRAS, PRO_GENERO, PRO_NOME, '+
                   'PRO_TIPOITEM, PRO_UNIDADE '+
                   'order by PRO_CODIGO');
        QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
        QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      end;
      QY.Open;
      QY.First;
      while not QY.Eof do
      begin
        with Registro0200New do
        begin
          COD_ITEM:=QY.FieldByName('PRO_CODIGO').AsString;
          DESCR_ITEM:=Trim(QY.FieldByName('PRO_NOME').AsString);
          {$REGION 'demais campos'}
          COD_BARRA:=Trim(QY.FieldByName('PRO_CODIGOBARRAS').AsString);
          COD_ANT_ITEM:='';
          UNID_INV:=Trim(QY.FieldByName('PRO_UNIDADE').AsString);
          S:=Copy(QY.FieldByName('PRO_TIPOITEM').AsString,1,2);
          if S='00' then TIPO_ITEM:=tiMercadoriaRevenda else
          if S='01' then TIPO_ITEM:=tiMateriaPrima else         // 01 – Matéria-Prima;
          if S='02' then TIPO_ITEM:=tiEmbalagem else            // 02 – Embalagem;
          if S='03' then TIPO_ITEM:=tiProdutoProcesso else      // 03 – Produto em Processo;
          if S='04' then TIPO_ITEM:=tiProdutoAcabado else       // 04 – Produto Acabado;
          if S='05' then TIPO_ITEM:=tiSubproduto else           // 05 – Subproduto;
          if S='06' then TIPO_ITEM:=tiProdutoIntermediario else // 06 – Produto Intermediário;
          if S='07' then TIPO_ITEM:=tiMaterialConsumo else      // 07 – Material de Uso e Consumo;
          if S='08' then TIPO_ITEM:=tiAtivoImobilizado else     // 08 – Ativo Imobilizado;
          if S='09' then TIPO_ITEM:=tiServicos else             // 09 – Serviços;
          if S='10' then TIPO_ITEM:=tiOutrosInsumos else        // 10 – Outros Insumos;
          if S='99' then TIPO_ITEM:=tiOutras;                   // 99 – Outras
          COD_NCM:=QY.FieldByName('PRO_CLASSFISCAL').AsString;
          EX_IPI:='';
          COD_GEN:=QY.FieldByName('PRO_GENERO').AsString;
          COD_LST:='';
          ALIQ_ICMS:=QY.FieldByName('PRO_ALIQICMS').AsFloat;
          CEST:=QY.FieldByName('PRO_CEST').AsString;
          {$ENDREGION}
        end;
        QY.Next;
      end;
      QY.Close;
      {$ENDREGION}

      //faz o mesmo sql do bloco K pois pode ter havido notas de compras que ainda nao geraram notas de venda e para inclui o produto no bloco K, é necessário identificar ele aqui.
      {$REGION 'Seleciona produtos na movimentacao de estoque'}
      QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add('select EST_PRODUTO, PRO_NOME, PRO_CODIGOBARRAS, PRO_UNIDADE, PRO_CLASSFISCAL, PRO_GENERO, PRO_ALIQICMS, PRO_CEST, PRO_TIPOITEM '+
                 'from ESTOQUE left join PRODUTOS on EST_PRODUTO=PRO_CODIGO '+
                 'where EST_DATA between :datainicial and :datafinal and  '+
                 '(PRO_TIPOITEM=''00 - MERCADORIA PARA REVENDA'' or '+
                 ' PRO_TIPOITEM=''01 - MATERIA-PRIMA'' or '+
                 ' PRO_TIPOITEM=''02 - EMBALAGEM'' or '+
                 ' PRO_TIPOITEM=''03 - PRODUTO EM PROCESSO'' or '+
                 ' PRO_TIPOITEM=''04 - PRODUTO ACABADO'' or '+
                 ' PRO_TIPOITEM=''05 - SUBPRODUTO'' or '+
                 ' PRO_TIPOITEM=''06 - PRODUTO INTERMEDIARIO'' or '+
                 ' PRO_TIPOITEM=''10 - OUTROS INSUMOS'') '+
                 'group by EST_PRODUTO, PRO_NOME, PRO_CODIGOBARRAS, PRO_UNIDADE, PRO_CLASSFISCAL, PRO_GENERO, PRO_ALIQICMS, PRO_CEST, PRO_TIPOITEM order by EST_PRODUTO');
      QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
      QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      QY.Open;
      while not QY.Eof do
      begin
        if not (Registro0200.LocalizaRegistro(QY.FieldByName('EST_PRODUTO').AsString)) then
        begin
          with Registro0200New do
          begin
            COD_ITEM:=QY.FieldByName('EST_PRODUTO').AsString;
            DESCR_ITEM:=Trim(QY.FieldByName('PRO_NOME').AsString);
            {$REGION 'demais campos'}
            COD_BARRA:=Trim(QY.FieldByName('PRO_CODIGOBARRAS').AsString);
            COD_ANT_ITEM:='';
            UNID_INV:=Trim(QY.FieldByName('PRO_UNIDADE').AsString);
            S:=Copy(QY.FieldByName('PRO_TIPOITEM').AsString,1,2);
            if S='00' then TIPO_ITEM:=tiMercadoriaRevenda else
            if S='01' then TIPO_ITEM:=tiMateriaPrima else         // 01 – Matéria-Prima;
            if S='02' then TIPO_ITEM:=tiEmbalagem else            // 02 – Embalagem;
            if S='03' then TIPO_ITEM:=tiProdutoProcesso else      // 03 – Produto em Processo;
            if S='04' then TIPO_ITEM:=tiProdutoAcabado else       // 04 – Produto Acabado;
            if S='05' then TIPO_ITEM:=tiSubproduto else           // 05 – Subproduto;
            if S='06' then TIPO_ITEM:=tiProdutoIntermediario else // 06 – Produto Intermediário;
            if S='07' then TIPO_ITEM:=tiMaterialConsumo else      // 07 – Material de Uso e Consumo;
            if S='08' then TIPO_ITEM:=tiAtivoImobilizado else     // 08 – Ativo Imobilizado;
            if S='09' then TIPO_ITEM:=tiServicos else             // 09 – Serviços;
            if S='10' then TIPO_ITEM:=tiOutrosInsumos else        // 10 – Outros Insumos;
            if S='99' then TIPO_ITEM:=tiOutras;                   // 99 – Outras
            COD_NCM:=QY.FieldByName('PRO_CLASSFISCAL').AsString;
            EX_IPI:='';
            COD_GEN:=QY.FieldByName('PRO_GENERO').AsString;
            COD_LST:='';
            ALIQ_ICMS:=QY.FieldByName('PRO_ALIQICMS').AsFloat;
            CEST:=QY.FieldByName('PRO_CEST').AsString;
            {$ENDREGION}
          end;
        end;
        QY.Next;
      end;
      QY.Close;
      {$ENDREGION}

      //inclui os itens que estao no controle de compras.
      {$REGION 'Seleciona produtos em compras'}
      QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add('select COI_PRODUTO, PRO_NOME, PRO_CODIGOBARRAS, PRO_UNIDADE, PRO_CLASSFISCAL, PRO_GENERO, PRO_ALIQICMS, PRO_CEST, PRO_TIPOITEM '+
                 'from COMPRASITENS left join PRODUTOS on COI_PRODUTO=PRO_CODIGO left join COMPRAS on COI_COMPRA=COM_CODIGO '+
                 'where COM_STATUS=''F'' and COM_NOTANUMERO is not null and COM_CHAVEACESSO is not null and COM_DTENTRADA between :datainicial and :datafinal '+ //and  '+
                 //'(PRO_TIPOITEM=''00 - MERCADORIA PARA REVENDA'' or '+
                 //' PRO_TIPOITEM=''01 - MATERIA-PRIMA'' or '+
                 //' PRO_TIPOITEM=''02 - EMBALAGEM'' or '+
                 //' PRO_TIPOITEM=''03 - PRODUTO EM PROCESSO'' or '+
                 //' PRO_TIPOITEM=''04 - PRODUTO ACABADO'' or '+
                 //' PRO_TIPOITEM=''05 - SUBPRODUTO'' or '+
                 //' PRO_TIPOITEM=''06 - PRODUTO INTERMEDIARIO'' or '+
                 //' PRO_TIPOITEM=''10 - OUTROS INSUMOS'') '+
                 'group by COI_PRODUTO, PRO_NOME, PRO_CODIGOBARRAS, PRO_UNIDADE, PRO_CLASSFISCAL, PRO_GENERO, PRO_ALIQICMS, PRO_CEST, PRO_TIPOITEM order by COI_PRODUTO');
      QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
      QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      QY.Open;
      while not QY.Eof do
      begin
        if not (Registro0200.LocalizaRegistro(QY.FieldByName('COI_PRODUTO').AsString)) then
        begin
          with Registro0200New do
          begin
            COD_ITEM:=QY.FieldByName('COI_PRODUTO').AsString;
            DESCR_ITEM:=Trim(QY.FieldByName('PRO_NOME').AsString);
            {$REGION 'demais campos'}
            COD_BARRA:=Trim(QY.FieldByName('PRO_CODIGOBARRAS').AsString);
            COD_ANT_ITEM:='';
            UNID_INV:=Trim(QY.FieldByName('PRO_UNIDADE').AsString);
            S:=Copy(QY.FieldByName('PRO_TIPOITEM').AsString,1,2);
            if S='00' then TIPO_ITEM:=tiMercadoriaRevenda else
            if S='01' then TIPO_ITEM:=tiMateriaPrima else         // 01 – Matéria-Prima;
            if S='02' then TIPO_ITEM:=tiEmbalagem else            // 02 – Embalagem;
            if S='03' then TIPO_ITEM:=tiProdutoProcesso else      // 03 – Produto em Processo;
            if S='04' then TIPO_ITEM:=tiProdutoAcabado else       // 04 – Produto Acabado;
            if S='05' then TIPO_ITEM:=tiSubproduto else           // 05 – Subproduto;
            if S='06' then TIPO_ITEM:=tiProdutoIntermediario else // 06 – Produto Intermediário;
            if S='07' then TIPO_ITEM:=tiMaterialConsumo else      // 07 – Material de Uso e Consumo;
            if S='08' then TIPO_ITEM:=tiAtivoImobilizado else     // 08 – Ativo Imobilizado;
            if S='09' then TIPO_ITEM:=tiServicos else             // 09 – Serviços;
            if S='10' then TIPO_ITEM:=tiOutrosInsumos else        // 10 – Outros Insumos;
            if S='99' then TIPO_ITEM:=tiOutras;                   // 99 – Outras
            COD_NCM:=QY.FieldByName('PRO_CLASSFISCAL').AsString;
            EX_IPI:='';
            COD_GEN:=QY.FieldByName('PRO_GENERO').AsString;
            COD_LST:='';
            ALIQ_ICMS:=QY.FieldByName('PRO_ALIQICMS').AsFloat;
            CEST:=QY.FieldByName('PRO_CEST').AsString;
            {$ENDREGION}
          end;
        end;
        QY.Next;
      end;
      QY.Close;
      {$ENDREGION}


      {$ENDREGION}

      //REGISTRO 0205 - 3 - Alterações dos itens.
      //REGISTRO 0206 - 3 - Codigo de produto conforme tabela ANP - Ag. Nac. de Petróleo (Combustíveis).
      //REGISTRO 0210 - 3 - Consumo específico padronizado.
      //REGISTRO 0220 - 3 - Fatores de conversão de unidades.
      //REGISTRO 0300 - 2 - Cadastro de bens ou componentes do ativo imobilizado.
      //REGISTRO 0305 - 3 - Informação sobre a utilização do bem.
      //REGISTRO 0400 - 2 - Natureza de operação/prestação.
      //REGISTRO 0450 - 2 - Informação complementar do documento fiscal.
      //REGISTRO 0460 - 2 - Observações do lançamento fiscal.
      //REGISTRO 0500 - 2 - Plano de contas contábeis.
      //REGISTRO 0600 - 2 - Centros de custos.
    end;
    {$ENDREGION}

    {$REGION 'REGISTRO 0002 - 1 - CLASSIFICAÇÃO DO ESTABELECIMENTO'}
    if ComboBox4.Text='0 - INDUSTRIAL' then
    with Registro0002New do
    begin
      CLAS_ESTAB_IND:=Copy(ComboBox5.Text,1,2);
    end;
    {$ENDREGION}

    //REGISTRO 0990 - 1 - Encerramento bloco zero. (efetuado pelo comando WriteBloco_0;).
  end;
  ACBrSPEDFiscal1.WriteBloco_0;
end;

procedure TFormSpedFiscal.GerarBlocoB;
begin
  //b001
  //B020
  //B025
  //B030
  //B035
  //B350
  //B420
  //B440
  //B460
  //B470
  //B500
  //B510
  //B990
end;

procedure TFormSpedFiscal.GerarBlocoC;
var BNotas, ContadorNotas, NumItem: Integer;
begin
  BNotas:=1000;
  with ACBrSpedFiscal1.Bloco_C do
  begin
    {$REGION 'REGISTRO C001 - 1 - Abertura do bloco C.'}
    with RegistroC001New do
    begin
      IND_MOV:=imComDados;

      //######################################################################//
      //NOTAS DE VENDAS                                                       //
      //######################################################################//
      {$REGION 'REGISTRO C100 - 2 - Notas Fiscais códigos 01, 1B, 04, 55. (VENDAS)'}
      QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add('select * from NFE where NFE_STATUS<>''A'' and NFE_DTEMISSAO between :datainicial and :datafinal order by NFE_CODIGO');
      QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
      QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      QY.Open;
      QY.FetchAll;
      QY.First;
      ContadorNotas:=0;
      while not QY.Eof do
      begin
        ContadorNotas:=ContadorNotas+1;
        with RegistroC100New do
        begin
          {$REGION 'CONTEUDO C100'}
          if QY.FieldByName('NFE_STATUS').AsString='C' then
          begin
            if QY.FieldByName('NFE_ENTRADASAIDA').AsString='S' then
            IND_OPER      :=tpSaidaPrestacao else
            IND_OPER      :=tpEntradaAquisicao;
            IND_EMIT      :=edEmissaoPropria;
            COD_MOD       :=QY.FieldByName('NFE_MODELO').AsString;
            COD_SIT       :=sdCancelado;
            SER           :=AlignText(QY.FieldByName('NFE_SERIE').AsString,'0',3,taRight);
            NUM_DOC       :=QY.FieldByName('NFE_CODIGO').AsString;
            CHV_NFE       :=QY.FieldByName('NFE_CHAVEACESSO').AsString;
          end else

          if QY.FieldByName('NFE_STATUS').AsString='I' then
          begin
            if QY.FieldByName('NFE_ENTRADASAIDA').AsString='S' then
            IND_OPER      :=tpSaidaPrestacao else
            IND_OPER      :=tpEntradaAquisicao;
            IND_EMIT      :=edEmissaoPropria;
            COD_MOD       :=QY.FieldByName('NFE_MODELO').AsString;
            COD_SIT       :=sdDoctoNumInutilizada;
            SER           :=AlignText(QY.FieldByName('NFE_SERIE').AsString,'0',3,taRight);
            NUM_DOC       :=QY.FieldByName('NFE_CODIGO').AsString;
            //CHV_NFE       :=QY.FieldByName('NFE_CHAVEACESSO').AsString;
          end else

          if QY.FieldByName('NFE_STATUS').AsString='F' then
          begin
            COD_SIT       :=sdRegular;
            COD_PART      :=QY.FieldByName('NFE_CLIENTE').AsString;
            IND_EMIT      :=edEmissaoPropria; //0=emissao propria. 1=emissao terceiros.
            if QY.FieldByName('NFE_ENTRADASAIDA').AsString='S' then
            IND_OPER      :=tpSaidaPrestacao else
            IND_OPER      :=tpEntradaAquisicao;
            COD_MOD       :=QY.FieldByName('NFE_MODELO').AsString;
            SER           :=AlignText(QY.FieldByName('NFE_SERIE').AsString,'0',3,taRight);
            NUM_DOC       :=QY.FieldByName('NFE_CODIGO').AsString;
            CHV_NFE       :=QY.FieldByName('NFE_CHAVEACESSO').AsString;
            DT_DOC        :=QY.FieldByName('NFE_DTEMISSAO').AsDateTime;
            DT_E_S        :=QY.FieldByName('NFE_DTEMISSAO').AsDateTime;
            VL_DOC        :=Decimais(QY.FieldByName('NFE_VALORTOTAL').AsFloat,2); //itens ou NFE_VALORTOTAL ?
            IND_PGTO      :=tpVista;
            VL_DESC       :=Decimais(QY.FieldByName('NFE_DESCVALOR').AsFloat,2);
            VL_ABAT_NT    :=0;
            VL_MERC       :=Decimais(QY.FieldByName('NFE_TOTALITENS').AsFloat,2);
            if QY.FieldByName('NFE_FRETE').AsString='0 - EMITENTE' then
            IND_FRT       :=tfPorContaEmitente else
            if QY.FieldByName('NFE_FRETE').AsString='1 - DEST/REM' then
            IND_FRT       :=tfPorContaDestinatario else
            if QY.FieldByName('NFE_FRETE').AsString='2 - TERCEIROS' then
            IND_FRT       :=tfPorContaTerceiros else
            if QY.FieldByName('NFE_FRETE').AsString='0 - SEM FRETE' then
            IND_FRT       :=tfSemCobrancaFrete;
            VL_SEG        :=Decimais(QY.FieldByName('NFE_VALORSEGURO').AsFloat,2);
            VL_OUT_DA     :=Decimais(QY.FieldByName('NFE_VALORDESPACES').AsFloat,2);
            VL_BC_ICMS    :=Decimais(QY.FieldByName('NFE_BASEICMS').AsFloat,2);
            VL_ICMS       :=Decimais(QY.FieldByName('NFE_TOTALICMS').AsFloat,2);
            VL_BC_ICMS_ST :=Decimais(QY.FieldByName('NFE_BASEICMSST').AsFloat,2);
            VL_ICMS_ST    :=Decimais(QY.FieldByName('NFE_TOTALICMSST').AsFloat,2);
            VL_IPI        :=Decimais(QY.FieldByName('NFE_TOTALIPI').AsFloat,2);
            VL_PIS        :=Decimais(QY.FieldByName('NFE_TOTALPIS').AsFloat,2);
            VL_COFINS     :=Decimais(QY.FieldByName('NFE_TOTALCOFINS').AsFloat,2);
            VL_PIS_ST     :=Decimais(QY.FieldByName('NFE_TOTALPISST').AsFloat,2);
            VL_COFINS_ST  :=Decimais(QY.FieldByName('NFE_TOTALCOFINSST').AsFloat,2);
          end;
          {$ENDREGION 'CONTEUDO C100'}
          {$REGION 'REGISTROS C105 - C165 NAO UTILIZADOS'}
          //REGISTRO C105 - 3 - Operações com ICMS ST recolhido para UF diversa do destinatario do documento fiscal (55)
          //REGISTRO C110 - 3 - Informações complementares da NF.
            //REGISTRO C111 - 4 - Processo referenciado.
            //REGISTRO C112 - 4 - Documento de arrecadação referenciado.
            //REGISTRO C113 - 4 - Documento fiscal referenciado.
            //REGISTRO C114 - 4 - Cupom Fiscal referenciado.
            //REGISTRO C115 - 4 - Local da coleta e/ou entrega.
            //REGISTRO C116 - 4 - Cupom Fiscal Eletronico referenciado.
          //REGISTRO C120 - 3 - Operações de importação (codigo 01).
          //REGISTRO C130 - 3 - ISSQN, IRRF e previdencia social.
          //REGISTRO C140 - 3 - Fatura (codigo 01).
            //REGISTRO C141 - 4 - Vencimento da Fatura.
          //REGISTRO C160 - 3 - Volumes transportados. (codigo 01 e 04) exceto combustiveis.
          //REGISTRO C165 - 3 - Operações com combustíveis (codigo 01).
          {$ENDREGION}
          {$REGION 'REGISTRO C170 - 3 - Itens do documento.'}
          {if QY.FieldByName('NFE_STATUS').AsString='F' then
          begin
            QY2.Close;
            QY2.SQL.Clear;
            QY2.SQL.Add('select * from NFEITENS where NFI_NOTA=:codigo order by NFI_CODIGO');
            QY2.ParamByName('codigo').AsInteger:=QY.FieldByName('NFE_CODIGO').AsInteger;
            QY2.Open;
            QY2.First;
            NumItem:=0;
            while not QY2.Eof do
            begin
              NumItem:=NumItem+1;
              with RegistroC170New do
              begin
                NUM_ITEM        :=FormatFloat('000',NumItem);
                COD_ITEM        :=QY2.FieldByName('NFI_PRODUTO').AsString;}
                {$REGION 'demais campos'}
            {    DESCR_COMPL     :=QY2.FieldByName('NFI_DESCRICAO').AsString;
                QTD             :=Decimais(QY2.FieldByName('NFI_QUANTIDADE').AsFloat,5);
                UNID            :=QY2.FieldByName('NFI_UNIDADE').AsString;
                VL_ITEM         :=Decimais(QY2.FieldByName('NFI_VALORUNIT').AsFloat,2);
                VL_DESC         :=Decimais(QY2.FieldByName('NFI_DESCVALOR').AsFloat,2);
                if QY.FieldByName('NFE_MOVIMENTAESTOQUE').AsString='S' then
                IND_MOV         :=mfSim else
                IND_MOV         :=mfNao;
                CST_ICMS        :=AlignText(QY2.FieldByName('NFI_CSTICMS').AsString,'0',3,taRight);
                CFOP            :=QY2.FieldByName('NFI_CFOP').AsString;
                COD_NAT         :='';
                VL_BC_ICMS      :=Decimais(QY2.FieldByName('NFI_BASEICMS').AsFloat,2);
                ALIQ_ICMS       :=Decimais(QY2.FieldByName('NFI_ALIQICMS').AsFloat,2);
                VL_ICMS         :=Decimais(QY2.FieldByName('NFI_VALORICMS').AsFloat,2);
                VL_BC_ICMS_ST   :=Decimais(QY2.FieldByName('NFI_BASEICMSST').AsFloat,2);
                ALIQ_ST         :=Decimais(QY2.FieldByName('NFI_ALIQICMSST').AsFloat,2);
                VL_ICMS_ST      :=Decimais(QY2.FieldByName('NFI_VALORICMSST').AsFloat,2);
                IND_APUR        :=iaMensal;
                CST_IPI         :=AlignText(QY2.FieldByName('NFI_CSTIPI').AsString,'0',2,taRight);; // ipiEntradaIsenta;
                COD_ENQ         :='';  //??? - no manual consta: não preencher.
                VL_BC_IPI       :=Decimais(QY2.FieldByName('NFI_BASEIPI').AsFloat,2);
                ALIQ_IPI        :=Decimais(QY2.FieldByName('NFI_ALIQIPI').AsFloat,2);
                VL_IPI          :=Decimais(QY2.FieldByName('NFI_VALORIPI').AsFloat,2);
                CST_PIS         :=AlignText(QY2.FieldByName('NFI_CSTPIS').AsString,'0',2,taRight); // pisOutrasOperacoes;
                VL_BC_PIS       :=Decimais(QY2.FieldByName('NFI_BASEPIS').AsFloat,2);
                ALIQ_PIS_PERC   :=Decimais(QY2.FieldByName('NFI_ALIQPIS').AsFloat,2);
                QUANT_BC_PIS    :=Decimais(QY2.FieldByName('NFI_QUANTIDADE').AsFloat,3);
                ALIQ_PIS_R      :=Decimais(QY2.FieldByName('NFI_VALORPIS').AsFloat,4);
                VL_PIS          :=Decimais(QY2.FieldByName('NFI_VALORPIS').AsFloat,2);
                CST_COFINS      :=AlignText(QY2.FieldByName('NFI_CSTCOFINS').AsString,'0',2,taRight);; // cofinsOutrasOperacoes;
                VL_BC_COFINS    :=Decimais(QY2.FieldByName('NFI_BASECOFINS').AsFloat,2);
                ALIQ_COFINS_PERC:=Decimais(QY2.FieldByName('NFI_ALIQCOFINS').AsFloat,2);
                QUANT_BC_COFINS :=Decimais(QY2.FieldByName('NFI_QUANTIDADE').AsFloat,3);
                ALIQ_COFINS_R   :=Decimais(QY2.FieldByName('NFI_VALORCOFINS').AsFloat,4);
                VL_COFINS       :=Decimais(QY2.FieldByName('NFI_VALORCOFINS').AsFloat,2);
                COD_CTA         :='';
                VL_ABAT_NT      :=Decimais(0,2); }
                {$ENDREGION}
          {    end;
              QY2.Next;
            end;
          end;  }
          {$ENDREGION 'REGISTRO C170 - 3 - Itens do documento.'}
            {$REGION 'REGISTROS C171 - C179 NAO UTILIZADOS'}
            //REGISTRO C171 - 4 - Armazenamento de combustíveis.
            //REGISTRO C172 - 4 - Operações com ISSQN.
            //REGISTRO C173 - 4 - Operações com medicamentos.
            //REGISTRO C174 - 4 - Operações com armas de fogo.
            //REGISTRO C175 - 4 - Operações com veículos.
            //REGSITRO C176 - 4 - Ressarcimento de ICMS em operações com substituição tributária. (codigo 01 e 55).
            //REGISTRO C177 - 4 - Operações com produtos sujeitos a selo de controle IPI.
            //REGISTRO C178 - 4 - Operações com produtos sujeitos à tributação de IPI por unidade ou quantidade de produto.
            //REGISTRO C179 - 4 - Informações complementares ST (código 01).
            {$ENDREGION 'REGISTROS C171 - C179 NAO UTILIZADOS'}
          {$REGION 'REGISTRO C190 - 3 - Registro analítico do documento (código 01, 1B, 04 e 55).'}

          if QY.FieldByName('NFE_STATUS').AsString='F' then
          begin
            QY2.SQL.Clear;
            QY2.SQL.Add('select sum(NFI_BASEICMS) as BASEICMS, '+
                        'sum(NFI_BASEICMSST) as BASEICMSST, '+
                        'sum(NFI_BASEICMSRED) as BASEICMSRED, '+
                        'sum(NFI_VALORICMS) as VALORICMS, '+
                        'sum(NFI_VALORICMSST) as VALORICMSST, '+
                        'sum(NFI_VALORIPI) as VALORIPI, '+
                        'sum(NFI_VALORFRETE) as VALORFRETE, '+
                        'sum(NFI_VALORSEGURO) as VALORSEGURO, '+
                        'sum(NFI_VALORACESSORIAS) as VALORACESSORIAS, '+
                        'sum(NFI_VALORTOTAL) as VALORTOTAL, '+
                        'NFI_CFOP, NFI_CSTICMS, NFI_ALIQICMS from NFEITENS where NFI_NOTA=:codigo '+
                        'group by NFI_CFOP, NFI_CSTICMS, NFI_ALIQICMS');
            QY2.ParamByName('codigo').AsInteger:=QY.FieldByName('NFE_CODIGO').AsInteger;
            QY2.Open;
            QY2.First;
            while not QY2.Eof do
            begin
              with RegistroC190New do
              begin
                {$REGION 'CONTEUDO C190'}
                CST_ICMS     :=AlignText(QY2.FieldByName('NFI_CSTICMS').AsString,'0',3,taRight);
                CFOP         :=QY2.FieldByName('NFI_CFOP').AsString;
                ALIQ_ICMS    :=Decimais(QY2.FieldByName('NFI_ALIQICMS').AsFloat,2);
                VL_OPR       :=(Decimais(QY2.FieldByName('VALORTOTAL').AsFloat,2)+
                                Decimais(QY2.FieldByName('VALORFRETE').AsFloat,2)+
                                Decimais(QY2.FieldByName('VALORSEGURO').AsFloat,2)+
                                Decimais(QY2.FieldByName('VALORACESSORIAS').AsFloat,2)+
                                Decimais(QY2.FieldByName('VALORICMSST').AsFloat,2)+
                                Decimais(QY2.FieldByName('VALORIPI').AsFloat,2));
                //VL_OPR       :=Decimais(QY2.FieldByName('VALORTOTAL').AsFloat,2);
                VL_BC_ICMS   :=Decimais(QY2.FieldByName('BASEICMS').AsFloat,2);
                VL_ICMS      :=Decimais(QY2.FieldByName('VALORICMS').AsFloat,2);
                VL_BC_ICMS_ST:=Decimais(QY2.FieldByName('BASEICMSST').AsFloat,2);
                VL_ICMS_ST   :=Decimais(QY2.FieldByName('VALORICMSST').AsFloat,2);
                VL_RED_BC    :=Decimais(QY2.FieldByName('BASEICMSRED').AsFloat,2);
                VL_IPI       :=Decimais(QY2.FieldByName('VALORIPI').AsFloat,2);
                COD_OBS      :='';

                //contabiliza valores para registo E.
                E110_VL_TOT_DEBITOS:=E110_VL_TOT_DEBITOS+VL_ICMS;
                {$ENDREGION}
              end;
              QY2.Next;
            end;
          end;
          {$ENDREGION 'REGISTRO C190'}
          //REGISTRO C195 - 3 - Observações do lançamento fiscal (código 01, 1B e 55).
            //REGISTRO C197 - 4 - Outras obrigações tributárias, ajustes e informações de valores provenientes de documento fiscal.
        end;
        QY.Next;

        //Gravar a cada N notas.
        if (ContadorNotas mod BNotas)=0 then
        begin
          // Grava registros na memoria para o TXT, e limpa memoria.
          ACBrSPEDFiscal1.WriteBloco_C(False);  // False, NAO fecha o Bloco.
          Application.ProcessMessages;
        end;
      end;
      {$ENDREGION}

      //######################################################################//
      //NOTAS DE COMPRAS                                                      //
      //######################################################################//
      {$REGION 'REGISTRO C100 - 2 - Notas Fiscais códigos 01, 1B, 04, 55. (COMPRAS)'}
      QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add('select * from COMPRAS where COM_STATUS=''F'' and COM_NOTANUMERO is not null and COM_CHAVEACESSO is not null and COM_DTENTRADA between :datainicial and :datafinal order by COM_CODIGO');
      QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
      QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      QY.Open;
      QY.FetchAll;
      QY.First;
      ContadorNotas:=0;
      while not QY.Eof do
      begin
        ContadorNotas:=ContadorNotas+1;
        with RegistroC100New do
        begin
          {$REGION 'CONTEUDO C100'}
          IND_OPER      :=tpEntradaAquisicao;
          IND_EMIT      :=edTerceiros; //0=emissao propria. 1=emissao terceiros.
          COD_PART      :='F'+QY.FieldByName('COM_FORNECEDOR').AsString; //colocado F na frente pra nao coincidir com o codigo do cliente.
          if Trim(QY.FieldByName('COM_MODELO').AsString)='' then
          COD_MOD       :='55' else
          COD_MOD       :=QY.FieldByName('COM_MODELO').AsString;
          COD_SIT       :=sdRegular;
          SER           :=AlignText(QY.FieldByName('COM_SERIE').AsString,'0',3,taRight);
          NUM_DOC       :=QY.FieldByName('COM_NOTANUMERO').AsString;
          CHV_NFE       :=QY.FieldByName('COM_CHAVEACESSO').AsString;
          DT_DOC        :=QY.FieldByName('COM_NOTADATA').AsDateTime;
          DT_E_S        :=QY.FieldByName('COM_DTENTRADA').AsDateTime; //era COM_NOTADATA.
          VL_DOC        :=Decimais(QY.FieldByName('COM_VALORTOTAL').AsFloat,2);
          IND_PGTO      :=tpVista;
          VL_DESC       :=Decimais(QY.FieldByName('COM_DESCVALOR').AsFloat,2);
          VL_ABAT_NT    :=0;
          VL_MERC       :=Decimais(QY.FieldByName('COM_TOTALITENS').AsFloat,2);
          if QY.FieldByName('COM_FRETE').AsString='0 - EMITENTE' then
          IND_FRT       :=tfPorContaEmitente else
          if QY.FieldByName('COM_FRETE').AsString='1 - DEST/REM' then
          IND_FRT       :=tfPorContaDestinatario else
          if QY.FieldByName('COM_FRETE').AsString='2 - TERCEIROS' then
          IND_FRT       :=tfPorContaTerceiros else
          if QY.FieldByName('COM_FRETE').AsString='0 - SEM FRETE' then
          IND_FRT       :=tfSemCobrancaFrete;
          VL_FRT        :=Decimais(QY.FieldByName('COM_VALORFRETE').AsFloat,2);
          VL_SEG        :=Decimais(QY.FieldByName('COM_VALORSEGURO').AsFloat,2);
          VL_OUT_DA     :=Decimais(QY.FieldByName('COM_VALORDESPACES').AsFloat,2);
          VL_BC_ICMS    :=Decimais(QY.FieldByName('COM_BASEICMS').AsFloat,2);
          VL_ICMS       :=Decimais(QY.FieldByName('COM_TOTALICMS').AsFloat,2);
          VL_BC_ICMS_ST :=Decimais(QY.FieldByName('COM_BASEICMSST').AsFloat,2);
          VL_ICMS_ST    :=Decimais(QY.FieldByName('COM_TOTALICMSST').AsFloat,2);
          VL_IPI        :=Decimais(QY.FieldByName('COM_TOTALIPI').AsFloat,2);
          VL_PIS        :=Decimais(QY.FieldByName('COM_TOTALPIS').AsFloat,2);
          VL_COFINS     :=Decimais(QY.FieldByName('COM_TOTALCOFINS').AsFloat,2);
          VL_PIS_ST     :=Decimais(QY.FieldByName('COM_TOTALPISST').AsFloat,2);
          VL_COFINS_ST  :=Decimais(QY.FieldByName('COM_TOTALCOFINSST').AsFloat,2);
          {$ENDREGION 'CONTEUDO C100'}
          {$REGION 'REGISTROS C105 - C165 NAO UTILIZADOS'}
          //REGISTRO C105 - 3 - Operações com ICMS ST recolhido para UF diversa do destinatario do documento fiscal (55)
          //REGISTRO C110 - 3 - Informações complementares da NF.
            //REGISTRO C111 - 4 - Processo referenciado.
            //REGISTRO C112 - 4 - Documento de arrecadação referenciado.
            //REGISTRO C113 - 4 - Documento fiscal referenciado.
            //REGISTRO C114 - 4 - Cupom Fiscal referenciado.
            //REGISTRO C115 - 4 - Local da coleta e/ou entrega.
            //REGISTRO C116 - 4 - Cupom Fiscal Eletronico referenciado.
          //REGISTRO C120 - 3 - Operações de importação (codigo 01).
          //REGISTRO C130 - 3 - ISSQN, IRRF e previdencia social.
          //REGISTRO C140 - 3 - Fatura (codigo 01).
            //REGISTRO C141 - 4 - Vencimento da Fatura.
          //REGISTRO C160 - 3 - Volumes transportados. (codigo 01 e 04) exceto combustiveis.
          //REGISTRO C165 - 3 - Operações com combustíveis (codigo 01).
          {$ENDREGION}
          {$REGION 'REGISTRO C170 - 3 - Itens do documento.'}
          if QY.FieldByName('COM_STATUS').AsString='F' then
          begin
            QY2.Close;
            QY2.SQL.Clear;
            QY2.SQL.Add('select * from COMPRASITENS where COI_COMPRA=:codigo order by COI_CODIGO');
            QY2.ParamByName('codigo').AsInteger:=QY.FieldByName('COM_CODIGO').AsInteger;
            QY2.Open;
            QY2.First;
            NumItem:=0;
            while not QY2.Eof do
            begin
              NumItem:=NumItem+1;
              with RegistroC170New do
              begin
                NUM_ITEM        :=FormatFloat('000',NumItem);
                COD_ITEM        :=QY2.FieldByName('COI_PRODUTO').AsString;
                {$REGION 'demais campos'}
                DESCR_COMPL     :=QY2.FieldByName('COI_DESCRICAO').AsString;
                QTD             :=Decimais(QY2.FieldByName('COI_QUANTIDADE').AsFloat,5);
                UNID            :=QY2.FieldByName('COI_UNIDADE').AsString;
                VL_ITEM         :=Decimais(QY2.FieldByName('COI_VALORTOTALBRUTO').AsFloat,2); //a pedido da dental. Decimais(QY2.FieldByName('COI_VALORUNIT').AsFloat,2);
                VL_DESC         :=Decimais(QY2.FieldByName('COI_DESCVALOR').AsFloat,2);
                if QY.FieldByName('COM_MOVIMENTAESTOQUE').AsString='S' then
                IND_MOV         :=mfSim else
                IND_MOV         :=mfNao;
                CST_ICMS        :=AlignText(QY2.FieldByName('COI_CSTICMS').AsString,'0',3,taRight);
                CFOP            :=QY2.FieldByName('COI_CFOP').AsString;
                COD_NAT         :='';
                VL_BC_ICMS      :=Decimais(QY2.FieldByName('COI_BASEICMS').AsFloat,2);
                ALIQ_ICMS       :=Decimais(QY2.FieldByName('COI_ALIQICMS').AsFloat,2);
                VL_ICMS         :=Decimais(QY2.FieldByName('COI_VALORICMS').AsFloat,2);
                VL_BC_ICMS_ST   :=Decimais(QY2.FieldByName('COI_BASEICMSST').AsFloat,2);
                ALIQ_ST         :=Decimais(QY2.FieldByName('COI_ALIQICMSST').AsFloat,2);
                VL_ICMS_ST      :=Decimais(QY2.FieldByName('COI_VALORICMSST').AsFloat,2);
                IND_APUR        :=iaMensal;
                CST_IPI         :=AlignText(QY2.FieldByName('COI_CSTIPI').AsString,'0',2,taRight); // ipiEntradaIsenta;
                COD_ENQ         :='';  //??? - no manual consta: não preencher.
                VL_BC_IPI       :=Decimais(QY2.FieldByName('COI_BASEIPI').AsFloat,2);
                ALIQ_IPI        :=Decimais(QY2.FieldByName('COI_ALIQIPI').AsFloat,2);
                VL_IPI          :=Decimais(QY2.FieldByName('COI_VALORIPI').AsFloat,2);
                CST_PIS         :=AlignText(QY2.FieldByName('COI_CSTPIS').AsString,'0',2,taRight); // pisOutrasOperacoes;
                VL_BC_PIS       :=Decimais(QY2.FieldByName('COI_BASEPIS').AsFloat,2);
                ALIQ_PIS_PERC   :=Decimais(QY2.FieldByName('COI_ALIQPIS').AsFloat,2);
                QUANT_BC_PIS    :=Decimais(QY2.FieldByName('COI_QUANTIDADE').AsFloat,3);
                ALIQ_PIS_R      :=Decimais(QY2.FieldByName('COI_VALORPIS').AsFloat,4);
                VL_PIS          :=Decimais(QY2.FieldByName('COI_VALORPIS').AsFloat,2);
                CST_COFINS      :=AlignText(QY2.FieldByName('COI_CSTCOFINS').AsString,'0',2,taRight);; // cofinsOutrasOperacoes;
                VL_BC_COFINS    :=Decimais(QY2.FieldByName('COI_BASECOFINS').AsFloat,2);
                ALIQ_COFINS_PERC:=Decimais(QY2.FieldByName('COI_ALIQCOFINS').AsFloat,2);
                QUANT_BC_COFINS :=Decimais(QY2.FieldByName('COI_QUANTIDADE').AsFloat,3);
                ALIQ_COFINS_R   :=Decimais(QY2.FieldByName('COI_VALORCOFINS').AsFloat,4);
                VL_COFINS       :=Decimais(QY2.FieldByName('COI_VALORCOFINS').AsFloat,2);
                COD_CTA         :='';
                VL_ABAT_NT      :=Decimais(0,2);
                {$ENDREGION 'demais campos'}
              end;
              QY2.Next;
            end;
          end;
          {$ENDREGION 'REGISTRO C170 - 3 - Itens do documento.'}
            {$REGION 'REGISTROS C171 - C179 NAO UTILIZADOS'}
            //REGISTRO C171 - 4 - Armazenamento de combustíveis.
            //REGISTRO C172 - 4 - Operações com ISSQN.
            //REGISTRO C173 - 4 - Operações com medicamentos.
            //REGISTRO C174 - 4 - Operações com armas de fogo.
            //REGISTRO C175 - 4 - Operações com veículos.
            //REGSITRO C176 - 4 - Ressarcimento de ICMS em operações com substituição tributária. (codigo 01 e 55).
            //REGISTRO C177 - 4 - Operações com produtos sujeitos a selo de controle IPI.
            //REGISTRO C178 - 4 - Operações com produtos sujeitos à tributação de IPI por unidade ou quantidade de produto.
            //REGISTRO C179 - 4 - Informações complementares ST (código 01).
            {$ENDREGION 'REGISTROS C171 - C179 NAO UTILIZADOS'}
          {$REGION 'REGISTRO C190 - 3 - Registro analítico do documento (código 01, 1B, 04 e 55).'}

          QY2.SQL.Clear;
          QY2.SQL.Add('select sum(COI_BASEICMS) as BASEICMS, '+
                      'sum(COI_BASEICMSST) as BASEICMSST, '+
                      'sum(COI_BASEICMSRED) as BASEICMSRED, '+
                      'sum(COI_VALORICMS) as VALORICMS, '+
                      'sum(COI_VALORICMSST) as VALORICMSST, '+
                      'sum(COI_VALORIPI) as VALORIPI, '+
                      'sum(COI_VALORFRETE) as VALORFRETE, '+
                      'sum(COI_VALORSEGURO) as VALORSEGURO, '+
                      'sum(COI_VALORACESSORIAS) as VALORACESSORIAS, '+
                      'sum(COI_VALORTOTAL) as VALORTOTAL, '+
                      'COI_CFOP, COI_CSTICMS, COI_ALIQICMS from COMPRASITENS where COI_COMPRA=:codigo '+
                      'group by COI_CFOP, COI_CSTICMS, COI_ALIQICMS');
          QY2.ParamByName('codigo').AsInteger:=QY.FieldByName('COM_CODIGO').AsInteger;
          QY2.Open;
          QY2.First;
          while not QY2.Eof do
          begin
            with RegistroC190New do
            begin
              {$REGION 'CONTEUDO C190'}
              CST_ICMS     :=AlignText(QY2.FieldByName('COI_CSTICMS').AsString,'0',3,taRight);
              CFOP         :=IntToStr(QY2.FieldByName('COI_CFOP').AsInteger);
              ALIQ_ICMS    :=Decimais(QY2.FieldByName('COI_ALIQICMS').AsFloat,2);
              VL_OPR       :=(Decimais(QY2.FieldByName('VALORTOTAL').AsFloat,2)+
                              Decimais(QY2.FieldByName('VALORFRETE').AsFloat,2)+
                              Decimais(QY2.FieldByName('VALORSEGURO').AsFloat,2)+
                              Decimais(QY2.FieldByName('VALORACESSORIAS').AsFloat,2)+
                              Decimais(QY2.FieldByName('VALORICMSST').AsFloat,2)+
                              Decimais(QY2.FieldByName('VALORIPI').AsFloat,2));
              //VL_OPR       :=Decimais(QY2.FieldByName('VALORTOTAL').AsFloat,2);
              VL_BC_ICMS   :=Decimais(QY2.FieldByName('BASEICMS').AsFloat,2);
              VL_ICMS      :=Decimais(QY2.FieldByName('VALORICMS').AsFloat,2);
              VL_BC_ICMS_ST:=Decimais(QY2.FieldByName('BASEICMSST').AsFloat,2);
              VL_ICMS_ST   :=Decimais(QY2.FieldByName('VALORICMSST').AsFloat,2);
              if (QY2.FieldByName('COI_CSTICMS').AsInteger=20) or (QY2.FieldByName('COI_CSTICMS').AsInteger=70) then
              VL_RED_BC    :=Decimais(QY2.FieldByName('VALORTOTAL').AsFloat - QY2.FieldByName('BASEICMS').AsFloat,2) else //Decimais(QY2.FieldByName('BASEICMSRED').AsFloat,2);
              VL_RED_BC    :=Decimais(QY2.FieldByName('BASEICMSRED').AsFloat,2);
              VL_IPI       :=Decimais(QY2.FieldByName('VALORIPI').AsFloat,2);
              COD_OBS      :='';

              //contabiliza valores para registo E.
              E110_VL_TOT_DEBITOS:=E110_VL_TOT_DEBITOS+VL_ICMS;
              {$ENDREGION}
            end;
            QY2.Next;
          end;
          {$ENDREGION 'REGISTRO C190'}
          //REGISTRO C195 - 3 - Observações do lançamento fiscal (código 01, 1B e 55).
            //REGISTRO C197 - 4 - Outras obrigações tributárias, ajustes e informações de valores provenientes de documento fiscal.
        end;
        QY.Next;

        //Gravar a cada N notas.
        if (ContadorNotas mod BNotas)=0 then
        begin
          // Grava registros na memoria para o TXT, e limpa memoria.
          ACBrSPEDFiscal1.WriteBloco_C(False);  // False, NAO fecha o Bloco.
          Application.ProcessMessages;
        end;
      end;
      {$ENDREGION}

      {$REGION 'REGISTROS C300 - C890 NAO UTILIZADOS'}
      //REGISTRO C300 - 2 - Resumo diário das notas fiscal de venda a consumidor (código 02).
        //REGISTRO C310 - 3 - Documentos cancelados de notas fiscais de venda a consumidor (código 02).
        //REGISTRO C320 - 3 - Registro analítico do resumo diário das notas fiscais de venda a consumidor (código 02).
          //REGISTRO C321 - 4 - Itens do resumo diário dos documentos (código 02).
      //REGISTRO C350 - 2 - Nota fiscal de venda a consumidor (código 02).
        //REGISTRO C370 - 3 - Itens do documento (código 02).
        //REGISTRO C390 - 3 - Registro analítico das notas fiscais de venda a consumidor (código 02).
      //REGISTRO C400 - 2 - Equipamento ECF (código 02 e 2D).
        //REGISTRO C405 - 3 - Redução Z (código 02 e 2D).
          //REGISTRO C410 - 4 - PIS e COFINS totalizados no dia (código 02 e 2D).
          //REGISTRO C420 - 4 - Registro dos totalizadores parciais da redução Z (código 02 e 2D).
            //REGISTRO C425 - 5 - Resumo de itens do movimento diário (código 02 e 2D).
          //REGISTRO C460 - 4 - Documento fiscal emitido por ECF (código 02 e 2D).
            //REGISTRO C470 - 5 - Itens do documento fiscal emitido por ECF (código 02 e 2D).
          //REGISTRO C490 - 4 - Registro analítico do movimento diário (código 02 e 2D).
      //REGISTRO C495 - 2 - Resumo mensal de itens do ECF por estabelecimento (código 02 e 2D).
      //REGISTRO C500 - 2 - NF/conta de energia elétrica (código 06), NF/conta de fornecimento de água canalizada (código 29) e NF consumo fornecimento de gás (código 28).
        //REGISTRO C510 - 3 - Itens do documento.
        //REGISTRO C590 - 3 - Registro analítico do documento.
      //REGISTRO C600 - 2 - Consolidação diária de NF (código 06, 29 e 28) (empresas não obrigadas ao convênio ICMS 115/03).
        //REGISTRO C601 - 3 - Documentos cancelados (código 06, 29 e 28).
        //REGISTRO C610 - 3 - Itens do documento consolidado (código 06, 29 e 28) (empresas não obrigadas ao convênio ICMS 115/03).
        //REGISTRO C690 - 3 - Registro analítico dos documentos (código 06, 29 e 28).
      //REGISTRO C700 - 2 - Consolidação dos documentos (código 06 e 28).
        //REGISTRO C790 - 3 - Registro analítico dos documentos (código 06).
          //REGISTRO C791 - 4 - Registro de informações de ST por UF (código 06).
      //REGISTRO C800 - 2 - Cupom fiscal eletrônico (código 59).
        //REGISTRO C850 - 3 - Registro analítico do CF-e (código 59).
      //REGISTRO C860 - 2 - Identificação do equipamento SAT-CF-e.
        //REGISTRO C890 - 3 - Resumo diário do CF-e (código 59) por equipamento SAT-CF-e.
      {$ENDREGION}
    end;
    {$ENDREGION}
  end;
  //REGISTRO C990 - 1 - Encerramento do Bloco C.
  ACBrSPEDFiscal1.WriteBloco_C(True); // True, fecha o Bloco.
end;

procedure TFormSpedFiscal.GerarBlocoD;
var ContadorNotas: Integer;
begin
  //REGISTRO D001 - 1 - Abertura do Bloco D - Documentos Fiscais II - Serviços (ICMS).
  with ACBrSpedFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      {QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add('select * from NFE where NFE_STATUS<>''A'' and NFE_DTEMISSAO between :datainicial and :datafinal order by NFE_CODIGO');
      QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
      QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      QY.Open;
      QY.FetchAll;
      QY.First;
      ContadorNotas:=0;
      if QY.RecordCount=0 then
      begin}
        IND_MOV:=imSemDados;
      {end else
      begin
        IND_MOV:=imComDados;
        while not QY.Eof do
        begin
          ContadorNotas:=ContadorNotas+1;
          with RegistroD100New do
          begin}
            {$REGION 'REGISTRO D100 - 2 - NF de serviço de transporte (códigos 07, 08, 8B, 09, 10, 11, 26, 27 e 57).'}
            {IND_OPER:=1; //0=aquisição - 1=prestação.
            IND_EMIT:=0; //emissão própria - 1=emissão terceiros.
            COD_PART:=QY.FieldByName('CTE_TOMADOR').AsInteger;
            COD_MOD:=QY.FieldByName('CTE_MODELO').AsInteger;
            //COD_SIT:=
            SER:=QY.FieldByName('CTE_SERIE').AsString;
            SUB:='';
            NUM_DOC:=QY.FieldByName('CTE_CODIGO').AsString;
            CHV_CTE:=QY.FieldByName('CTE_CHAVEACESSO').AsString;
            DT_DOC:=QY.FieldByName('CTE_DTEMISSAO').AsDateTime;
            DT_A_P:=QY.FieldByName('CTE_DTEMISSAO').AsDateTime;
            TP_CT_e:=Copy(QY.FieldByName('CTE_TIPOCTE').AsString,1,1);
            CHV_CTE_REF:=QY.FieldByName('CTE_CTEREFERENCIADO').AsString;
            VL_DOC:=Decimais(QY.FieldByName('CTE_VALORTOTAL').AsExtended,2);
            VL_DESC:=Decimais(QY.FieldByName('CTE_DESCVALOR').AsExtended,2);
            //IND_FRT:=
            //VL_SERV
            //VL_BC_ICMS
            //VL_ICMS
            //VL_NT
            //COD_INF
            //COD_CTA
            //COD_MUN_ORIG
            //COD_MUN_DEST}
            {$ENDREGION}
          {end;
        end;
      end;}
    end;
    //REGISTRO D100 - 2 - NF de serviço de transporte (códigos 07, 08, 8B, 09, 10, 11, 26, 27 e 57).
      //REGISTRO D110 - 3 - Itens do documento - Nota fiscal de serviços de transporte (código 07).
        //REGISTRO D120 - 4 - Complemento da NF (código 07).
      //REGISTRO D130 - 3 - Complemento do CT (código 08) e do CT avulso (código 8B).
      //REGISTRO D140 - 3 - Complemento do CT (código 09).
      //REGISTRO D150 - 3 - Complemento do CT (código 10).
      //REGISTRO D160 - 3 - Carga transportada (códigos 08, 8B, 09, 10, 11, 26 e 27).
        //REGISTRO D161 - 4 - Local da coleta e entrega (CÓDIGO 08, 8B, 09, 10, 11 e 26).
        //REGISTRO D162 - 4 - Identificação dos documentos fiscais (códigos 08, 8B, 09, 10, 11, 26 E 27).
      //REGISTRO D170 - 3 - Complemento do CT (código 26).
      //REGISTRO D180 - 3 - Modais (código 26).
      //REGISTRO D190 - 3 - Registro analítico dos documentos (códigos 07, 08, 8B, 09, 10, 11, 26, 27 e 57).
    //REGISTRO D300 - 2 - Registro analítico dos bilhetes consolidados (códigos 13, 14, 15 e 16).
      //REGISTRO D301 - 3 - Documentos cancelados dos bilhetes (códigos 13, 14, 15 e 16).
      //REGISTRO D310 - 3 - Complemento dos bilhetes (códigos 13, 14, 15 E 16).
    //REGISTRO D350 - 2 - Equipamento ECF (códigos 2E, 13, 14, 15 e 16).
      //REGISTRO D355 - 3 - Redução Z (códigos 2E, 13, 14, 15 e 16).
        //REGISTRO D360 - 4 - PIS E COFINS totalizados no dia (códigos 2E, 13, 14, 15 e 16).
        //REGISTRO D365 - 4 - Registro dos totalizadores parciais da redução Z (códigos 2E, 13, 14, 15 e 16).
          //REGISTRO D370 - 5 - Complemento dos documentos informados (códigos 13, 14, 15 e 16 e 2E).
        //REGISTRO D390 - 4 - Registro analítico do movimento diário (códigos 13, 14, 15, 16 E 2E).
    //REGISTRO D400 - 2 - Resumo de movimento diário - RMD (código 18).
      //REGISTRO D410 - 3 - Documentos informados (códigos 13, 14, 15 E 16).
        //REGISTRO D411 - 4 - Documentos cancelados dos documentos informados (códigos 13, 14, 15 e 16).
      //REGISTRO D420 - 3 - Complemento dos documentos informados (códigos 13, 14, 15 e 16).
    //REGISTRO D500 - 2 - NF de serviço de comunicação/telecomunicação  (códigos 21 e 22).
      //REGISTRO D510 - 3 - Itens do documento (códigos 21 e 22).
      //REGISTRO D530 - 3 - Terminal faturado.
      //REGISTRO D590 - 3 - Registro analítico do documento (códigos 21 E 22).
    //REGISTRO D600 - 2 - Consolidação da prestação de serviços (códigos 21 e 22).
      //REGISTRO D610 - 3 - Itens do documento consolidado (códigos 21 e 22).
      //REGISTRO D690 - 3 - Registro analítico dos documentos (códigos 21 e 22).
    //REGISTRO D695 - 2 - Consolidação da prestação de serviços (códigos 21 e 22) (EMPRESAS OBRIGADAS À ENTREGA DOS ARQUIVOS PREVISTOS NO CONVÊNIO ICMS 115/03).
      //REGISTRO D696 - 3 - Registro analítico dos documentos (códigos 21 e 22).
        //REGISTRO D697 - 4 - Registro de informações de outras UFs, relativamente aos serviços “NÃO-MEDIDOS” de televisão por assinatura via satélite.
  //REGISTRO D990 - 1 - ENCERRAMENTO DO BLOCO D.
  end;
  ACBrSPEDFiscal1.WriteBloco_D;
end;

procedure TFormSpedFiscal.GerarBlocoE;
begin
  with ACBrSpedFiscal1.Bloco_E do
  begin
    //REGISTRO E001 - 1 - Abertura do bloco E.
    with RegistroE001New do
    begin
      IND_MOV:=imComDados; //imSemDados;

      {$REGION 'REGISTRO E100 - 2 - Período da apuração do ICMS.'}
      with RegistroE100New do
      begin
        DT_INI:=StrToDate(MaskEdit1.Text,FS);
        DT_FIN:=StrToDate(MaskEdit2.Text,FS);

        {$REGION 'REGISTRO E110 - 3 - Apuração do ICMS – Operações próprias.'}
        with RegistroE110New do
        begin
          VL_TOT_DEBITOS:=0;
          VL_AJ_DEBITOS:=0;
          VL_TOT_AJ_DEBITOS:=0;
          VL_ESTORNOS_CRED:=0;
          VL_TOT_CREDITOS:=0;
          VL_AJ_CREDITOS:=0;
          VL_TOT_AJ_CREDITOS:=0;
          VL_ESTORNOS_DEB:=0;
          VL_SLD_CREDOR_ANT:=0;
          VL_SLD_APURADO:=0;
          VL_TOT_DED:=0;
          VL_ICMS_RECOLHER:=0;
          VL_SLD_CREDOR_TRANSPORTAR:=0;
          DEB_ESP:=0;
          //REGISTRO E111 - 4 - Ajuste/benefício/incentivo da apuração do ICMS.
            //REGISTRO E112 - 5 - Informações adicionais dos ajustes da apuração do ICMS.
            //REGISTRO E113 - 5 - Informações adicionais dos ajustes de apuração do ICMS - Identificação dos documentos fiscais.
          //REGISTRO E115 - 4 - Informações adicionais da apuração - Valores declaratórios.
          //REGISTRO E116 - 4 - Obrigações do ICMS a recolher – Operações próprias.
        end;
        {$ENDREGION 'REGISTRO E110 - 3 - Apuração do ICMS – Operações próprias.'}
      end;
      {$ENDREGION 'REGISTRO E100 - 2 - Período da apuração do ICMS.'}

      {$REGION 'REGISTROS E200 - E530 NAO UTILIZADOS'}
      //REGISTRO E200 - 2 - Período da apuração do ICMS - Substituição tributária.
        //REGISTRO E210 - 3 - Apuração do ICMS – Substituição tributária.
          //REGISTRO E220 - 4 - Ajuste/benefício/incentivo da apuração do ICMS - Substituição tributária.
            //REGISTRO E230 - 5 - Informações adicionais dos ajustes da apuração do ICMS - Substituição tributária.
            //REGISTRO E240 - 5 - Informações adicionais dos ajustes da apuração do ICMS - Substituição tributária - Identificação dos documentos fiscais.
          //REGISTRO E250 - 4 - Obrigações do ICMS a recolher - Substituição tributária.

      if ComboBox4.Text='0 - INDUSTRIAL' then
      begin
      //REGISTRO E500 - 2 - Período de apuração do IPI.
        with RegistroE500New do
        begin
          IND_APUR:=iaMensal; //iaDecendial iaNenhum;
          DT_INI:=StrToDate(MaskEdit1.Text,FS);
          DT_FIN:=StrToDate(MaskEdit2.Text,FS);
        end;
        {$REGION 'REGISTRO E510 - 3 - Consolidação dos valores do IPI.'}
        QY.Close;
        QY.SQL.Clear;
        QY.SQL.Add('select sum(NFI_BASEIPI) as BASEIPI, sum(NFI_VALORIPI) as VALORIPI, NFI_CFOP, NFI_CSTIPI from NFEITENS '+
                   'left join NFE on NFI_NOTA=NFE_CODIGO '+
                   'where NFE_DTEMISSAO between :datainicial and :datafinal and NFE_STATUS=''F'' '+
                   'group by NFI_CFOP, NFI_CSTIPI '+
                   'order by NFI_CFOP, NFI_CSTIPI');
        QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
        QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
        QY.Open;
        QY.First;
        while not QY.Eof do
        begin
          with RegistroE510New do
          begin
            CFOP:=QY.FieldByName('NFI_CFOP').AsString;
            CST_IPI:=AlignText(QY.FieldByName('NFI_CSTIPI').AsString,'0',2,taRight);
            VL_CONT_IPI:=0; //???
            VL_BC_IPI:=Decimais(QY.FieldByName('BASEIPI').AsExtended,2);
            VL_IPI:=Decimais(QY.FieldByName('VALORIPI').AsExtended,2);
          end;
          QY.Next;
        end;
        QY.Close;
        {$ENDREGION}
      end;

        //REGISTRO E520 - 3 - Apuração do IPI.
          //REGISTRO E530 - 4 - Ajustes da apuração do IPI.
      {$ENDREGION}
    end;
  end;
  //REGISTRO E990 - 1 - Encerramento do bloco E.
  ACBrSPEDFiscal1.WriteBloco_E;
end;

procedure TFormSpedFiscal.GerarBlocoG;
begin
  with ACBrSPEDFiscal1.Bloco_G do
  begin
    {$REGION 'REGISTRO G001'}
    //REGISTRO G001 - 1 - Abertura do bloco G.
    with RegistroG001New do
    begin
      IND_MOV:=imSemDados; //imComDados;
      {$REGION 'REGISTRO G110'}
      //REGISTRO G110 - 2 - ICMS – Ativo permanente – CIAP.
//      with RegistroG110 do
//      begin
//        DT_INI:=StrToDate(MaskEdit1.Text,FS);
//        DT_FIN:=StrToDate(MaskEdit2.Text,FS);
//      end;
      {$ENDREGION 'REGISTRO G110'}
    end;
    {$ENDREGION 'REGISTRO G001'}
  end;
  //REGISTRO G990 - 1 - Encerramento do blobo G.
  ACBrSPEDFiscal1.WriteBloco_G;
end;

procedure TFormSpedFiscal.GerarBlocoH;
var IInvent: Integer;
  ValorInventario: Currency;
  Where: String;
begin
  with ACBrSpedFiscal1.Bloco_H do
  begin
    {$REGION 'REGISTRO H001'}
    //REGISTRO H001 - 1 - Abertura do bloco H.
    with RegistroH001New do
    begin
      if not CheckBox1.Checked then
      IND_MOV:=imSemDados else
      begin
        IND_MOV:=imComDados;
        {$REGION 'REGISTRO H005'}
        //REGISTRO H005 - 2 - Totais do Inventário.
        with RegistroH005New do
        begin
          {$REGION 'REGISTRO H010'}
          //REGISTRO H010 - 3 - Inventário.
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
            Delete(Where,1,4); //retira o primeiro ' OR '.
            Where:=' and ('+Where+') ';
          end;
          QY.Close;
          QY.SQL.Clear;
          QY.SQL.Add('select PRO_CODIGO, PRO_NOME, PRO_UNIDADE, PRO_ESTOQUEATUAL, PRO_PRECOCUSTO, PRO_PRECOVENDA from PRODUTOS where PRO_TIPO=''P'' '+Where+' order by PRO_CODIGO');
          QY.Open;
          QY.First;
          ValorInventario:=0;
          while not QY.Eof do
          begin
            with RegistroH010New do
            begin
              QY2.Close;
              QY2.SQL.Clear;
              QY2.SQL.Add('select first(1) * from ESTOQUE where EST_PRODUTO=:produto and EST_DATA<=:data order by EST_CODIGO desc');
              QY2.ParamByName('produto').AsInteger:=QY.FieldByName('PRO_CODIGO').AsInteger;
              QY2.ParamByName('data').AsDate:=StrToDate(MaskEdit3.Text);
              QY2.Open;

              COD_ITEM:=QY.FieldByName('PRO_CODIGO').AsString;
              UNID:=QY.FieldByName('PRO_UNIDADE').AsString;
              if QY2.FieldByName('EST_ESTOQUEPOSTERIOR').AsFloat > 0 then
              QTD:=Decimais(QY2.FieldByName('EST_ESTOQUEPOSTERIOR').AsFloat,3) else //último saldo em estoque do ano.
              QTD:=Decimais(0,3);

              VL_UNIT:=Decimais(QY2.FieldByName('EST_VALORUNIT').AsFloat,6);
              VL_ITEM:=Decimais(QTD*QY.FieldByName('PRO_PRECOCUSTO').AsExtended,2);
              //VL_ITEM:=Decimais(QTD*QY.FieldByName('PRO_PRECOVENDA').AsExtended,2);

              IND_PROP:=piInformante;
              COD_PART:='';
              TXT_COMPL:='';
              COD_CTA:='0';
              ValorInventario:=ValorInventario+(QTD*QY.FieldByName('PRO_PRECOCUSTO').AsExtended);
              //era precovenda. ValorInventario:=ValorInventario+(QTD*QY.FieldByName('PRO_PRECOCUSTO').AsExtended);
              QY2.Close;
            end;
            QY.Next;
          end;
          QY.Close;
          DT_INV:=StrToDate(MaskEdit3.Text);
          VL_INV:=ValorInventario;
          {$ENDREGION 'REGISTRO H010'}
        end;
      end;
      {$ENDREGION 'REGISTRO H005'}
    end;
    {$ENDREGION 'REGISTRO H001'}
  end;
  ACBrSPEDFiscal1.WriteBloco_H;
end;

procedure TFormSpedFiscal.GerarBlocoK;
begin
  with ACBrSPEDFiscal1.Bloco_K do
  begin
    //REGISTRO K001 - 1 - Abertura do bloco K.
    with RegistroK001New do
    begin
      IND_MOV := imComDados;

      {$REGION 'REGISTRO K100 - 2 - PERÍODO DE APURAÇÃO DO ICMS/IPI'}
      with RegistroK100New do
      begin
        DT_INI := ACBrSPEDFiscal1.DT_INI;
        DT_FIN := ACBrSPEDFiscal1.DT_FIN;

        {$REGION 'REGISTRO K200 - 3 - ESTOQUE ESCRITURADO'}
        QY.Close;
        QY.SQL.Clear;
        QY.SQL.Add('select A.EST_PRODUTO, PRO_TIPOITEM, '+
                   '(select first(1) EST_ESTOQUEPOSTERIOR from ESTOQUE B where A.EST_PRODUTO=B.EST_PRODUTO order by EST_CODIGO desc) as ESTOQUEPOSTERIOR '+
                   'from ESTOQUE A left join PRODUTOS on A.EST_PRODUTO=PRO_CODIGO '+
                   'where A.EST_DATA between :datainicial and :datafinal and  '+
                   '(PRO_TIPOITEM=''00 - MERCADORIA PARA REVENDA'' or '+
                   ' PRO_TIPOITEM=''01 - MATERIA-PRIMA'' or '+
                   ' PRO_TIPOITEM=''02 - EMBALAGEM'' or '+
                   ' PRO_TIPOITEM=''03 - PRODUTO EM PROCESSO'' or '+
                   ' PRO_TIPOITEM=''04 - PRODUTO ACABADO'' or '+
                   ' PRO_TIPOITEM=''05 - SUBPRODUTO'' or '+
                   ' PRO_TIPOITEM=''06 - PRODUTO INTERMEDIARIO'' or '+
                   ' PRO_TIPOITEM=''10 - OUTROS INSUMOS'') '+
                   'group by A.EST_PRODUTO, PRO_TIPOITEM order by EST_PRODUTO');
        QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
        QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
        QY.Open;
        while not QY.Eof do
        begin
          with RegistroK200New do
          begin
            DT_EST := ACBrSPEDFiscal1.DT_FIN;
            COD_ITEM := QY.FieldByName('EST_PRODUTO').AsString;
            if QY.FieldByName('ESTOQUEPOSTERIOR').AsExtended < 0 then
            QTD := 0 else
            QTD := QY.FieldByName('ESTOQUEPOSTERIOR').AsExtended;
            IND_EST := estPropInformantePoder;
            COD_PART := '';


            {$REGION 'REGISTRO K220 - 4'}
            {with RegistroK220New do
            begin
              DT_MOV := ACBrSPEDFiscal1.DT_INI;
              COD_ITEM_ORI := '000008';
              COD_ITEM_DEST := '000010';
              QTD := 1;
              QTD_DEST := 1;
            end;}
            {$ENDREGION}

            {$REGION 'REGISTRO K260 - 4'}
            {with RegistroK260New do
            begin
              COD_OP_OS := '00035';
              COD_ITEM  := '00006';
              DT_SAIDA  :=  ACBrSPEDFiscal1.DT_INI;
              QTD_SAIDA :=  1;
              DT_RET    := ACBrSPEDFiscal1.DT_INI;
              QTD_RET   :=  1;
              with RegistroK265New do
              begin
                COD_ITEM := '000008';
                QTD_CONS := 1;
                QTD_RET := 1;
              end;
            end;}
            {$ENDREGION}
          end;
          QY.Next;
        end;
        QY.Close;
        {$ENDREGION}
      end;
      {$ENDREGION}
    end;
  end;
  ACBrSPEDFiscal1.WriteBloco_K;
end;

procedure TFormSpedFiscal.GerarBloco1;
begin
  with ACBrSpedFiscal1.Bloco_1 do
  begin

    {$REGION 'REGISTRO 1001'}
    //REGISTRO 1001 - 1 - Abertura do bloco 1.
    with Registro1001New do
    begin
      IND_MOV:=imComDados; // imSemDados;

      {$REGION 'REGISTRO 1010 - 2 - OBRIGATORIEDADE DE REGISTROS DO BLOCO 1'}
      with Registro1010New do
      begin
        IND_EXP:='N';   //Reg. 1100 - Ocorreu averbação (conclusão) de exportação no período.
        IND_CCRF:='N';  //Reg 1200 – Existem informações acerca de créditos de ICMS a serem controlados, definidos pela Sefaz.
        IND_COMB:='N';  //Reg 1300 – É comércio varejista de combustíveis com movimentação e/ou estoque no período.
        IND_USINA:='N'; //Reg 1390 – Usinas de açúcar e/álcool – O estabelecimento é produtor de açúcar e/ou álcool carburante com movimentação e/ou estoque no período.
        IND_VA:='N';    //Reg 1400 - Sendo o registro obrigatório em sua Unidade de Federação, existem informações a serem prestadas neste registro.
        IND_EE:='N';    //Reg 1500 - A empresa é distribuidora de energia e ocorreu fornecimento de energia elétrica paraconsumidores de outra UF.
        IND_CART:='N';  //Reg 1601 - Realizou vendas com instrumentos eletrônicos de pagamento.
        IND_FORM:='N';  //Reg 1700 - Foram emitidos documentos fiscais em papel no período em unidade da federação que exija o controle de utilização de documentos fiscais.
        IND_AER:='N';   //Reg 1800 - A empresa prestou serviços de transporte aéreo de cargas e de passageiros.
        IND_GIAF1:='N'; //Reg 1960 - Possui informações GIAF1?
        IND_GIAF3:='N'; //Reg 1970 - Possui informações GIAF3?
        IND_GIAF4:='N'; //Reg 1980 - Possui informações GIAF4?
        IND_REST_RESSARC_COMPL_ICMS:='N'; //Reg 1250 – Possui informações consolidadas de saldos de restituição, ressarcimento e complementação do ICMS?
      end;
      {$ENDREGION}

      {$REGION 'REGISTRO 1601 - 2 - OPERAÇÕES COM INSTRUMENTOS DE PAGAMENTOS ELETRÔNICOS'}
      QY.Close;
      QY.SQL.Clear;
      QY.SQL.Add(
        'select CON_CNPJ, sum(NFE_TOTALSERVICOS) as TOTALSERVICOS, sum(NFE_VALORTOTAL) as VALORTOTAL from NFE '+
        'left join CONDICOES on NFE_CONDICAO=CPG_CODIGO '+
        'left join CONTAS on CPG_CONTA=CON_CODIGO '+
        'where (NFE_DTEMISSAO between :datainicial and :datafinal) and NFE_STATUS=''F'' and CON_CODIGO<>:contapadraolocal '+
        'group by CON_CNPJ order by CON_CNPJ'
      );
      QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
      QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
      QY.ParamByName('contapadraolocal').AsInteger:=DM.TBParametrosPAR_CONTALOCALPADRAO.Value;
      QY.Open;
      while not QY.Eof do
      begin
        with Registro1601New do
        begin
          COD_PART_IP:=LimparFormatacao(QY.FieldByName('CON_CNPJ').AsString);
          COD_PART_IT:=''; //intermediador... ver como fazer isso. Criar campo intermediador no cadastro da condicao de pagamento?
          TOT_VS:=QY.FieldByName('VALORTOTAL').AsExtended;
          TOT_ISS:=QY.FieldByName('TOTALSERVICOS').AsExtended;
          TOT_OUTROS:=0;
        end;
        QY.Next;
      end;
      QY.Close;
      {$ENDREGION}
    end;

    {$ENDREGION 'REGISTRO 1001'}
  end;
  ACBrSPEDFiscal1.WriteBloco_1;
end;

procedure TFormSpedFiscal.GerarBloco9;
begin
  ACBrSPEDFiscal1.WriteBloco_9;
end;

procedure TFormSpedFiscal.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormSpedFiscal.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSpedFiscal.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
  MaskEdit3.Text:=DateToStr(UltimoDia(Date));
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=4; //versão 116.
  ComboBox3.ItemIndex:=1;
  ComboBox4.ItemIndex:=0;
  ComboBox5.ItemIndex:=9; //outros.
  Memo1.Lines.Clear;

  CheckListBox1.Checked[00]:=True;
  CheckListBox1.Checked[01]:=False;
  CheckListBox1.Checked[02]:=False;
  CheckListBox1.Checked[03]:=False;
  CheckListBox1.Checked[04]:=False;
  CheckListBox1.Checked[05]:=False;
  CheckListBox1.Checked[06]:=False;
  CheckListBox1.Checked[07]:=False;
  CheckListBox1.Checked[08]:=False;
  CheckListBox1.Checked[09]:=False;
  CheckListBox1.Checked[10]:=False;
  CheckListBox1.Checked[11]:=False;
end;

procedure TFormSpedFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSpedFiscal.GerarArquivo1Click(Sender: TObject);
begin
  if SaveTextFileDialog1.Execute then
  begin
    Screen.Cursor:=crHourGlass;
    ACBrSPEDFiscal1.Path:=ExtractFilePath(SaveTextFileDialog1.FileName);
    ACBrSPEDFiscal1.Arquivo:=SaveTextFileDialog1.FileName;
    E110_VL_TOT_DEBITOS:=0;
    with ACBrSpedFiscal1 do
    begin
      DT_INI:=StrToDate(MaskEdit1.Text,FS);
      DT_FIN:=StrToDate(MaskEdit2.Text,FS);
      IniciaGeracao;
    end;
    GerarBloco0; Application.ProcessMessages;
    GerarBlocoB; Application.ProcessMessages;
    GerarBlocoC; Application.ProcessMessages;
    GerarBlocoD; Application.ProcessMessages; //falta terminar. (CTEs).
    GerarBlocoE; Application.ProcessMessages; //idem. verificar se a contabilidade pode preencher.
    GerarBlocoG; Application.ProcessMessages; //CONTROLE DO CRÉDITO DE ICMS DO ATIVO PERMANENTE CIAP - dionei falou que a contabilidade faz.
    GerarBlocoH; Application.ProcessMessages; //INVENTÁRIO FÍSICO.
    GerarBlocoK; Application.ProcessMessages;
    GerarBloco1; Application.ProcessMessages; //idem.
    GerarBloco9; //CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL.
    Screen.Cursor:=crDefault;
    Application.ProcessMessages;
    ACBrSPEDFiscal1.SaveFileTXT;
    Memo1.Lines.Clear;
    if FileExists(SaveTextFileDialog1.FileName) then
    Memo1.Lines.LoadFromFile(SaveTextFileDialog1.FileName);
    MessageDlg('Aquivo '+SaveTextFileDialog1.FileName+' salvo com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormSpedFiscal.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Linha, Coluna, LineLength: Integer;
begin
  Linha:=SendMessage(Memo1.Handle,EM_LINEFROMCHAR,Memo1.SelStart,0);
  Coluna:=SendMessage(Memo1.Handle,EM_LINEINDEX,Linha,0);
  LineLength:=SendMessage(Memo1.Handle,EM_LINELENGTH,Coluna,0);
  Coluna:=Memo1.SelStart-Coluna;
  StatusBar1.Panels[0].Text:='Linha: '+IntToStr(Linha+1);
  StatusBar1.Panels[1].Text:='Coluna: '+IntToStr(Coluna+1);
  StatusBar1.Panels[2].Text:='Nº Caracteres: '+IntToStr(LineLength);
end;

procedure TFormSpedFiscal.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Linha, Coluna, LineLength: Integer;
begin
  Linha:=SendMessage(Memo1.Handle,EM_LINEFROMCHAR,Memo1.SelStart,0);
  Coluna:=SendMessage(Memo1.Handle,EM_LINEINDEX,Linha,0);
  LineLength:=SendMessage(Memo1.Handle,EM_LINELENGTH,Coluna,0);
  Coluna:=Memo1.SelStart-Coluna;
  StatusBar1.Panels[0].Text:='Linha: '+IntToStr(Linha+1);
  StatusBar1.Panels[1].Text:='Coluna: '+IntToStr(Coluna+1);
  StatusBar1.Panels[2].Text:='Nº Caracteres: '+IntToStr(LineLength);
end;

procedure TFormSpedFiscal.Memo1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Dummy: Word;
begin
  Memo1KeyUp(Sender,Dummy,Shift);
end;

end.
