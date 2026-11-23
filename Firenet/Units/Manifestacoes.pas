unit Manifestacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.Mask, Vcl.ComCtrls, ACBrBase, ACBrDFe, ACBrNFe,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  TFormManifestacoes = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
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
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    EditarRegistro1Button: TDBSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    ConsultarDFeEmitidos1Button: TPngSpeedButton;
    ConsultarDFeEmitidos1: TMenuItem;
    EnviarACienciaDaOperacao1: TMenuItem;
    ConcluirAOperacao1: TMenuItem;
    N1: TMenuItem;
    EnviarACienciaDaOperacao1Button: TPngSpeedButton;
    ConcluirAOperacao1Button: TPngSpeedButton;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    DBMemo4: TDBMemo;
    Memo1: TMemo;
    DBEdit14: TDBEdit;
    Label4: TLabel;
    Bevel2: TBevel;
    ACBrNFe1: TACBrNFe;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label27: TLabel;
    TabSheet2: TTabSheet;
    TreeView1: TTreeView;
    XMLDocument1: TXMLDocument;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure ConsultarDFeEmitidos1Click(Sender: TObject);
    procedure EnviarACienciaDaOperacao1Click(Sender: TObject);
    procedure ConcluirAOperacao1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ConcluirOperacao(Conclusao: String; Justificativa: String);
  public
    { Public declarations }
    procedure GenerateTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
  end;

var
  FormManifestacoes: TFormManifestacoes;

implementation
uses NFe_Util_2G_TLB, DataMod, Funcoes1, ManifestacoesLoc, DB, ManifestacoesConcluir,
  NfeFuncoes;
{$R *.dfm}

procedure TFormManifestacoes.GenerateTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
var
  NodeText, AttrText: String;
  NewTreeNode: TTreeNode;
  I: Integer;
  AttrNode: IXMLNode;
begin
  if XMLNode.NodeType <> ntElement then
  Exit;
  NodeText:=XMLNode.NodeName;

  //prepara texto com os atributos de um nó.
  AttrText:='';
  for I := 0 to xmlNode.AttributeNodes.Count - 1 do
  begin
    AttrNode := xmlNode.AttributeNodes.Nodes[I];
    AttrText:=AttrText+' '+AttrNode.NodeName+'="'+AttrNode.Text+'"';
  end;
  Delete(AttrText,1,1); //elimina primeiro espaço.

  //concatena os atributos do nó com o nome do nó.
  if AttrText<>'' then
  NodeText:=NodeText+' ('+AttrText+')';

  //concatena o valor do elemento.
  if XMLNode.IsTextElement then
  NodeText:=NodeText+' = '+XMLNode.NodeValue;
  NewTreeNode:=TreeView1.Items.AddChild(TreeNode, NodeText);

  if XMLNode.HasChildNodes then
  for I:=0 to XMLNode.ChildNodes.Count-1 do
  GenerateTree(XMLNode.ChildNodes[I], NewTreeNode);
end;

procedure TFormManifestacoes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormManifestacoes.ConcluirAOperacao1Click(Sender: TObject);
begin
  AbortIf(DM.TBManifestacoes.IsEmpty,'Nenhuma manifestação selecionada.');
  AbortIf(DM.TBManifestacoesMAN_CIENCIA.Value='S','Já foi enviada a ciência da operação para a manifestação selecionada.');

  Application.CreateForm(TFormManifestacoesConcluir, FormManifestacoesConcluir);
  FormManifestacoesConcluir.ShowModal;
  if ManifestacoesConcluir.Concluir then
  begin
    ConcluirOperacao(FormManifestacoesConcluir.ComboBox1.Text,FormManifestacoesConcluir.Edit1.Text);
  end;
  FormManifestacoesConcluir.Free;
  FormManifestacoesConcluir:=nil;
end;

procedure TFormManifestacoes.ConcluirOperacao(Conclusao: String; Justificativa: String);
var U: NFe_Util_2G_Interface;
  Documentos, msgDados, msgRetWS, msgResultado, nroProtocolo, dhProtocolo : WideString;
  cStat, tpEvento: Integer;
  Chave, Proxy, DataHora, S: String;
begin
  PageControl1.ActivePageIndex:=0;
  Memo1.Lines.Clear;
  U:=CoUtil.Create;

  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromString(DM.TBManifestacoesMAN_XML.Value);
  Chave:=ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chDFe;

  tpEvento:=1;
  DataHora:=FormatDateTime('yyyy-mm-dd "" hh:mm:ss', Now);

//  chave:=edit2.Text;

  Documentos:=U.EnviaManDest('AN', StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value), DM.TBParametrosPAR_NOMECERTIFICADO.Value, DM.TBParametrosPAR_VERSAOXML.Value,
    msgDados, msgRetWS, cStat, msgResultado, chave, LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value), DataHora,
    tpEvento, Justificativa, nroProtocolo, dhProtocolo, Proxy, DM.TBParametrosPAR_PROXYUSER.Value, DM.TBParametrosPAR_PROXYPASSWORD.Value, DM.TBParametrosPAR_LICENCADLL.Value
  );

  if nroProtocolo<>'' then
  begin
    DM.TBManifestacoes.Edit;
    DM.TBManifestacoesMAN_CONCLUSAO.Value:=Conclusao;
    DM.TBManifestacoesMAN_CONCLUSAODH.Value:=DataHora;
    DM.TBManifestacoesMAN_CONCLUSAOPROTOCOLO.Value:=nroProtocolo;
    DM.TBManifestacoesMAN_CONCLUSAOPROTOCOLODH.Value:=dhProtocolo;
    DM.TBManifestacoesMAN_JUSTIFICATIVA.Value:=Justificativa;
    //DM.TBManifestacoesMAN_XML.Value:=Documentos;
    DM.TBManifestacoes.Post;
  end;

  Memo1.Lines.Add(msgResultado);
end;

procedure TFormManifestacoes.ConsultarDFeEmitidos1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  Documentos, msgDados, msgRetWS, msgResultado, verAplic, dhResp, ultNSU, maxNSU: WideString;
  I, cStat, qtdeDocto, ultNSURecebido: Integer;
  Proxy, S: String;
  SL, SLAux: TStringList;
  XMLResNfe: TResNFeData;
  XMLResEvento: TResEventoData;
begin
  PageControl1.ActivePageIndex:=0;
  Memo1.Lines.Clear;
  U:=CoUtil.Create;

  //a consulta deve ser feita pelo ultimo nsu recebido.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select first(1) MAN_CODIGO, MAN_NSU from MANIFESTACOES order by MAN_CODIGO desc');
  DM.QYAux.Open;
  ultNSURecebido:=0;
  if DM.QYAux.FieldByName('MAN_NSU').AsString<>'' then
  ultNSURecebido:=DM.QYAux.FieldByName('MAN_NSU').AsInteger;
  DM.QYAux.Close;
  ultNSU:='0';
  maxNSU:='999999999';

  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);

  Documentos:=U.distNSU('AN', StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value), DM.TBParametrosPAR_NOMECERTIFICADO.Value,
    DM.TBParametrosPAR_VERSAOXML.Value, msgDados, msgRetWS, cStat, msgResultado, LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
    IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value), ultNSURecebido.ToString, verAplic, dhResp, ultNSU, maxNSU, qtdeDocto,
    Proxy, DM.TBParametrosPAR_PROXYUSER.Value, DM.TBParametrosPAR_PROXYPASSWORD.Value, DM.TBParametrosPAR_LICENCADLL.Value
  );

  if cStat <> 656 then
  begin
    ultNSURecebido:=StrToInt(ultNSU);  //não atualizar quando ocorre consumo indevido, pois os retornos são zerados
  end;

  Memo1.Lines.Add(msgResultado);

  if cStat = 656 then //consumo indevido.
  begin
    DM.TBManifestacoes.Insert;
    DM.TBManifestacoesMAN_CIENCIA.Value:='S';
    DM.TBManifestacoesMAN_NSU.Value:=ultNSU;
    DM.TBManifestacoesMAN_SCHEMA.Value:='Consumo indevido';
    DM.TBManifestacoes.Post;
  end;

  if Documentos<>'' then
  begin
    Memo1.Lines.Add(Documentos);
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select count(*) as QTDE from MANIFESTACOES where MAN_NSU=:nsu');

    SL:=TStringList.Create;
    SL.Delimiter:=#13;
    SL.Text:=Documentos;

    SLAux:=TStringList.Create;
    SLAux.StrictDelimiter:=True;
    SLAux.Delimiter:='|';
    DM.TBManifestacoes.DisableControls;
    for I:=0 to SL.Count-1 do
    begin
      SLAux.DelimitedText:=SL[I];
      DM.QYAux.Close;
      DM.QYAux.ParamByName('nsu').AsString:=SLAux[0];
      DM.QYAux.Open;
      if DM.QYAux.FieldByName('QTDE').AsInteger=0 then
      begin
        DM.TBManifestacoes.Insert;
        DM.TBManifestacoesMAN_NSU.Value:=Trim(SLAux[0]);
        DM.TBManifestacoesMAN_SCHEMA.Value:=Trim(SLAux[1]);
        DM.TBManifestacoesMAN_XML.Value:=Trim(SLAux[2]);

        {$REGION 'resNFe_v1.01.xsd - Resumo de NFE'}
        if Trim(SLAux[1]) = 'resNFe_v1.01.xsd' then
        begin
          XMLResNfe:=LerXMLResNFe(Trim(SLAux[2]));
          DM.TBManifestacoesMAN_CHAVEACESSO.Value    :=XMLResNfe.ChNFe;
          DM.TBManifestacoesMAN_CNPJ.Value           :=XMLResNfe.CNPJ;
          DM.TBManifestacoesMAN_DESCRICAO.Value      :='Resumo de NFe';
          DM.TBManifestacoesMAN_DHEMISSAO.Value      :=XMLResNfe.DhEmi.ToString;
          DM.TBManifestacoesMAN_DHRECEBIMENTO.Value  :=XMLResNfe.DhRecbto.ToString;
          DM.TBManifestacoesMAN_IE.Value             :=XMLResNfe.IE;
          DM.TBManifestacoesMAN_NOME.Value           :=XMLResNfe.XNome;
          DM.TBManifestacoesMAN_PROTOCOLO.Value      :=XMLResNfe.NProt;
          DM.TBManifestacoesMAN_STATUSNOTA.Value     :=XMLResNfe.CSitNFe;
          DM.TBManifestacoesMAN_TIPONOTA.Value       :=XMLResNfe.TpNF;
          DM.TBManifestacoesMAN_VALORNOTA.Value      :=XMLResNfe.VNF;
        end;
        {$ENDREGION}

        {$REGION 'resEvento_v1.01.xsd - Resumo de Evento'}
        if Trim(SLAux[1]) = 'resEvento_v1.01.xsd' then
        begin
          XMLResEvento:=LerXMLResEvento(Trim(SLAux[2]));
          DM.TBManifestacoesMAN_CHAVEACESSO.Value    :=XMLResEvento.ChNFe;
          DM.TBManifestacoesMAN_SEQUENCIAEVENTO.Value:=XMLResEvento.NSeqEvento;
          //DM.TBManifestacoesMAN_.Value:=           :=XMLResEvento.COrgao;
          DM.TBManifestacoesMAN_CNPJ.Value           :=XMLResEvento.CNPJ;
          DM.TBManifestacoesMAN_DHEMISSAO.Value      :=XMLResEvento.DhEvento.ToString;
          DM.TBManifestacoesMAN_TIPOEVENTO.Value     :=XMLResEvento.TpEvento;
          DM.TBManifestacoesMAN_DESCRICAO.Value      :=XMLResEvento.XEvento;
          DM.TBManifestacoesMAN_PROTOCOLO.Value      :=XMLResEvento.NProt;
        end;
        {$ENDREGION}

        DM.TBManifestacoes.Post;
      end;
      DM.QYAux.Close;
    end;
    DM.TBManifestacoes.EnableControls;
    SL.Destroy;
    SLAux.Destroy;
  end;
end;

procedure TFormManifestacoes.EnviarACienciaDaOperacao1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  Documentos, msgDados, msgRetWS, msgResultado, nroProtocolo, dhProtocolo, XMLNFE: WideString;
  cStat, tpEvento: Integer;
  Chave, Proxy, Justificativa, DataHora, S: String;
  Nota: TResNFeData;
begin
  AbortIf(DM.TBManifestacoes.IsEmpty,'Nenhuma manifestação selecionada.');
  AbortIf(DM.TBManifestacoesMAN_CIENCIA.Value='S','Já foi enviada a ciência da operação para a manifestação selecionada.');
  AbortIf(Trim(DM.TBManifestacoesMAN_SCHEMA.Value)<>'resNFe_v1.01.xsd','Este evento nao é passível de manifestação.');

  PageControl1.ActivePageIndex:=0;
  Memo1.Lines.Clear;
  U:=CoUtil.Create;

  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);

  Nota:=LerXMLResNFe(DM.TBManifestacoesMAN_XML.Value);
//  ACBrNFe1.NotasFiscais.Clear;
//  ACBrNFe1.NotasFiscais.LoadFromString(DM.TBManifestacoesMAN_XML.Value);
//  Chave:=ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
  Chave:=Nota.ChNFe;

  tpEvento:=1; //1 - CIENCIA DA OPERACAO.
  DataHora:=FormatDateTime('yyyy-mm-dd "" hh:mm:ss', Now);

  Documentos:=U.EnviaManDest('AN', StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value), DM.TBParametrosPAR_NOMECERTIFICADO.Value, DM.TBParametrosPAR_VERSAOXML.Value,
    msgDados, msgRetWS, cStat, msgResultado, chave, LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value), DataHora,
    tpEvento, Justificativa, nroProtocolo, dhProtocolo, Proxy, DM.TBParametrosPAR_PROXYUSER.Value, DM.TBParametrosPAR_PROXYPASSWORD.Value, DM.TBParametrosPAR_LICENCADLL.Value
  );

  Memo1.Lines.Add(msgResultado);

  if nroProtocolo<>'' then
  begin
    DM.TBManifestacoes.Edit;
    DM.TBManifestacoesMAN_CIENCIA.Value:='S';
    DM.TBManifestacoesMAN_CIENCIADH.Value:=DataHora;
    DM.TBManifestacoesMAN_CIENCIAPROTOCOLO.Value:=nroProtocolo;
    DM.TBManifestacoesMAN_CIENCIAPROTOCOLODH.Value:=dhProtocolo;
    DM.TBManifestacoes.Post;
  end;
end;

procedure TFormManifestacoes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormManifestacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBManifestacoes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormManifestacoes.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TFormManifestacoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormManifestacoes.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormManifestacoesLoc, FormManifestacoesLoc);
  FormManifestacoesLoc.ShowModal;
  if ManifestacoesLoc.Procurar then
  begin
    DM.TBManifestacoes.Close;
    DM.TBManifestacoes.ParamByName('codigo').AsInteger:=FormManifestacoesLoc.QYManifestacoesMAN_CODIGO.Value;
    DM.TBManifestacoes.Open;
  end;
  FormManifestacoesLoc.Free;
  FormManifestacoesLoc:=nil;
end;

procedure TFormManifestacoes.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormManifestacoes);

finalization
  UnRegisterClass(TFormManifestacoes);

end.
