unit NfceFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, frxClass, frxDBSet, frCoreClasses,
  frxExportCSV, frxExportXLSX, frxExportBaseDialog, frxExportPDF, Vcl.StdCtrls,
  Datasnap.DBClient, ACBrBase, ACBrPosPrinter;

type
  TFormNfceFast = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    QY01a: TFDQuery;
    TR01a: TFDTransaction;
    DS01: TDataSource;
    frxDBDataset1a: TfrxDBDataset;
    QY01b: TFDQuery;
    TR01b: TFDTransaction;
    frxDBDataset1b: TfrxDBDataset;
    Memo1: TMemo;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset4a: TfrxDBDataset;
    DS04: TDataSource;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    frxReport7: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    TBNfce: TClientDataSet;
    TBNfceDE: TIntegerField;
    TBNfceATE: TIntegerField;
    TBNfceQUANTIDADE: TIntegerField;
    frxReport8: TfrxReport;
    frxDBDataset8: TfrxDBDataset;
    frxReport9: TfrxReport;
    frxDBDataset9: TfrxDBDataset;
    TR09: TFDTransaction;
    QY09: TFDQuery;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    Qy04a: TFDQuery;
    TR04a: TFDTransaction;
    TR05: TFDTransaction;
    QY05: TFDQuery;
    TR06: TFDTransaction;
    QY06: TFDQuery;
    TR07: TFDTransaction;
    QY07: TFDQuery;
    QY07DE: TLargeintField;
    QY07ATE: TLargeintField;
    QY07a: TFDQuery;
    TR07a: TFDTransaction;
    QY08: TFDQuery;
    TR08: TFDTransaction;
    TBXmls: TClientDataSet;
    TBXmlsNFC_CHAVEACESSO: TStringField;
    TBXmlsNFC_CODIGO: TIntegerField;
    TBXmlsNFC_DTEMISSAO: TDateField;
    TBXmlsNFC_STATUS: TStringField;
    TBXmlsNFC_VALORTOTAL: TBCDField;
    TBXmlsTOTALXML: TBCDField;
    TBXmlsTOTAL: TStringField;
    TBXmlsARQUIVO: TStringField;
    frxReport10: TfrxReport;
    frxDBDataset10: TfrxDBDataset;
    TR10: TFDTransaction;
    QY10: TFDQuery;
    TR10a: TFDTransaction;
    QY10a: TFDQuery;
    frxDBDataset10a: TfrxDBDataset;
    TR10b: TFDTransaction;
    QY10b: TFDQuery;
    frxDBDataset10b: TfrxDBDataset;
    DS10: TDataSource;
    ACBrPosPrinter1: TACBrPosPrinter;
    MemoPrint: TMemo;
    QY10aNCI_CODIGO: TIntegerField;
    QY10aNCI_PRODUTO: TIntegerField;
    QY10aNCI_DESCRICAO: TStringField;
    QY10aNCI_QUANTIDADE: TFMTBCDField;
    QY10aNCI_SEQUENCIA: TIntegerField;
    QY10aNCI_UNIDADE: TStringField;
    QY10aNCI_VALORTOTAL: TFMTBCDField;
    QY10aNCI_VALORUNIT: TFMTBCDField;
    QY10aCODIGOITEM: TStringField;
    QY10NFC_CEP: TStringField;
    QY10NFC_CHAVEACESSO: TStringField;
    QY10NFC_CIDADE: TStringField;
    QY10NFC_CLIENTE: TIntegerField;
    QY10NFC_CODIGO: TIntegerField;
    QY10NFC_CPF: TStringField;
    QY10NFC_DESCVALOR: TFMTBCDField;
    QY10NFC_ENDERECO: TStringField;
    QY10NFC_ESTADO: TStringField;
    QY10NFC_FONE1: TStringField;
    QY10NFC_NOME: TStringField;
    QY10NFC_NUMERO: TStringField;
    QY10NFC_PROTOCOLO: TStringField;
    QY10NFC_QRCODE: TStringField;
    QY10NFC_TOTALPRODUTOS: TFMTBCDField;
    QY10NFC_TOTALTRIBUTOS: TFMTBCDField;
    QY10NFC_VALORFRETE: TFMTBCDField;
    QY10NFC_VALORRECEBIDO: TFMTBCDField;
    QY10NFC_VALORTOTAL: TFMTBCDField;
    QY10NFC_VALORTROCO: TFMTBCDField;
    QY10NFC_VENDEDOR: TIntegerField;
    QY10NFC_ACREVALOR: TFMTBCDField;
    QY10bNCP_VALOR: TFMTBCDField;
    QY10bCPG_DESCRICAO: TStringField;
    QY10NFC_SERIE: TIntegerField;
    QY10NFC_PROTOCOLODH: TStringField;
    QY10NFC_BAIRRO: TStringField;
    QY10NFC_COMPLEMENTO: TStringField;
    QY10VEN_NOME: TStringField;
    QY10NFC_CONTINGENCIA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GerarDANFCE(NumNfce: Integer; Via: String; Imprimir, GerarPDF: Boolean; ArquivoPDF: String = '');
    procedure GerarDANFCEPos(NumNfce: Integer; Via: String; Imprimir: Boolean=True);
    procedure CriarTabela;
    procedure CriarTabelaXmls;
  end;

var
  FormNfceFast: TFormNfceFast;

implementation
uses DataMod, Xml.XMLDoc, Xml.XMLIntf, Funcoes1;
{$R *.dfm}

function FindNodeTextRecursive(const ANode: IXMLNode; const AName: string): string;
var
  i: Integer;
  child: IXMLNode;
begin
  Result := '';
  if not Assigned(ANode) then Exit;

  // compara o nome do nó ignorando maiúsc/minúsc e possíveis prefixos (namespace)
  if (ANode.NodeName <> '') and (SameText(ANode.NodeName, AName) or
     SameText(ANode.LocalName, AName)) then
  begin
    // retorno o texto do nó (se houver atributos/texto)
    Result := Trim(ANode.Text);
    Exit;
  end;

  // busca recursiva nos filhos
  for i := 0 to ANode.ChildNodes.Count - 1 do
  begin
    child := ANode.ChildNodes[i];
    Result := FindNodeTextRecursive(child, AName);
    if Result <> '' then Exit;
  end;
end;

function Get_vNF_FromXMLSTRING(const AFilePath: string): String;
var
  XMLDoc: IXMLDocument;
  root: IXMLNode;
begin
  Result := '';
  if Trim(AFilePath) = '' then
    raise Exception.Create('Caminho do arquivo XML vazio.');

  if not FileExists(AFilePath) then
    raise Exception.CreateFmt('Arquivo não encontrado: %s', [AFilePath]);

  XMLDoc := TXMLDocument.Create(nil);
  try
    XMLDoc.Options := XMLDoc.Options + [doNodeAutoCreate];
    XMLDoc.LoadFromFile(AFilePath);
    XMLDoc.Active := True;

    root := XMLDoc.DocumentElement;
    if not Assigned(root) then
      raise Exception.Create('XML sem elemento raiz.');

    // Procura recursivamente pela tag vNF (ignora namespace/prefixo)
    Result := FindNodeTextRecursive(root, 'vNF');

    // Se quiser garantir formatação numérica, descomente e trate:
    //if Result <> '' then
    //Result := FormatFloat('0.00', StrToFloatDef(Result, 0));
  finally
    // XMLDoc liberado automaticamente via interface
  end;
end;

function Get_vNF_FromXML(const AFilePath: string): Double;
var
  XMLDoc: IXMLDocument;
  root: IXMLNode;
  S: String;
  FSt: TFormatSettings;
begin
  Result := 0.00; // valor padrão

  if Trim(AFilePath) = '' then
    raise Exception.Create('Caminho do arquivo XML vazio.');

  if not FileExists(AFilePath) then
    raise Exception.CreateFmt('Arquivo não encontrado: %s', [AFilePath]);

  XMLDoc := TXMLDocument.Create(nil);
  try
    XMLDoc.Options := XMLDoc.Options + [doNodeAutoCreate];
    XMLDoc.LoadFromFile(AFilePath);
    XMLDoc.Active := True;

    root := XMLDoc.DocumentElement;
    if not Assigned(root) then
      raise Exception.Create('XML sem elemento raiz.');

    S := FindNodeTextRecursive(root, 'vNF');

    if Trim(S) <> '' then
    begin
      FSt := TFormatSettings.Create;
      FSt.DecimalSeparator := '.'; // padrão da SEFAZ
      Result := StrToFloatDef(S, 0, FSt);
    end;
  finally
    // XMLDoc liberado automaticamente via interface
  end;
end;

procedure TFormNfceFast.CriarTabelaXmls;
var D,M,A: Word;
  Pasta, Arquivo, Total: String;
  ValorNota: Double;
  N1, N2: String;
begin
  TBXmls.EmptyDataSet;
  TBXmls.Open;
  QY06.DisableControls;
  QY06.First;
  while not QY06.Eof do
  begin
    DecodeDate(QY06.FieldByName('NFC_DTEMISSAO').AsDateTime,A,M,D);
    Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+A.ToString+'\'+M.ToString+'\';
    if QY06.FieldByName('NFC_STATUS').AsString='FINALIZADA' then Arquivo:=QY06.FieldByName('NFC_CHAVEACESSO').AsString+'-procNFCe.xml' else
    if QY06.FieldByName('NFC_STATUS').AsString='CANCELADA' then Arquivo:=QY06.FieldByName('NFC_CHAVEACESSO').AsString+'-procNFCe.xml' else //também o mesmo arquivo, se está cancelada é pq teve o arquivo -procNFCe.xml
    Arquivo:='N/A';

    //if QY06.FieldByName('NFC_STATUS').AsString='INUTILIZADA' then Arquivo:=QY06.FieldByName('NFC_CHAVEACESSO').AsString+'-procInutNFCe.xml' else
    //if QY06.FieldByName('NFC_STATUS').AsString='ABERTA' then Arquivo:='N/A';

    Total:='N/A';
    ValorNota:=0;
    if Arquivo<>'N/A' then
    begin
      if not FileExists(Pasta+Arquivo) then
      begin
        Total:='?';
        Arquivo:='NAO ENCONTRADO';
      end else
      begin
        ValorNota:=Get_vNF_FromXML(Pasta+Arquivo);
        N1:=SoNumeros(ValorNota.ToString);
        N2:=SoNumeros(QY06.FieldByName('NFC_VALORTOTAL').AsString);
        if N1 <> N2 then
        //if ValorNota <> QY06.FieldByName('NFC_VALORTOTAL').AsCurrency then
        Total:='DIFERENTE' else
        Total:='IGUAL';
        Arquivo:='OK';
      end;
    end;

    TBXmls.Insert;
    TBXmlsNFC_CHAVEACESSO.Value:=QY06.FieldByName('NFC_CHAVEACESSO').AsString;
    TBXmlsNFC_CODIGO.Value:=QY06.FieldByName('NFC_CODIGO').AsInteger;
    TBXmlsNFC_DTEMISSAO.Value:=QY06.FieldByName('NFC_DTEMISSAO').AsDateTime;
    TBXmlsNFC_STATUS.Value:=QY06.FieldByName('NFC_STATUS').AsString;
    TBXmlsNFC_VALORTOTAL.Value:=QY06.FieldByName('NFC_VALORTOTAL').AsExtended;
    TBXmlsARQUIVO.Value:=Arquivo;
    TBXmlsTOTAL.Value:=Total;
    TBXmlsTOTALXML.Value:=ValorNota;
    TBXmls.Post;
    QY06.Next;
  end;
  QY06.EnableControls;
  QY06.Close;
  TBXmls.First;
end;

procedure TFormNfceFast.GerarDANFCE(NumNfce: Integer; Via: String; Imprimir, GerarPDF: Boolean; ArquivoPDF: String = '');
begin
  QY01.Close;
  QY01.ParamByName('codigo').AsInteger:=NumNfce;
  QY01.Open;
  QY01a.Open;
  frxReport1.Variables['EMP_NOME']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  frxReport1.Variables['EMP_CNPJ']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  frxReport1.Variables['EMP_IE']:=QuotedStr(DM.TBEmpresaEMP_IE.Value);
  frxReport1.Variables['EMP_ENDERECO1']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value);
  frxReport1.Variables['EMP_ENDERECO2']:=QuotedStr(DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' - '+DM.TBEmpresaEMP_CEP.Value+' - Fone: '+DM.TBEmpresaEMP_FONE1.Value);
  frxReport1.Variables['EMP_LOGO']:=QuotedStr(DM.TBEmpresaEMP_LOGO.Value);
  frxReport1.Variables['DESCONTOACRESCIMO']:=QuotedStr('');
  frxReport1.Variables['CONSUMIDOR_DOC']:=QuotedStr('');
  frxReport1.Variables['TRIBUTOS']:=QuotedStr(Format('%m',[FormNfceFast.QY01.FieldByName('NFC_TOTALTRIBUTOS').AsExtended]));
  frxReport1.Variables['VIA']:=QuotedStr(Via);
  frxReport1.Variables['PROTOCOLO']:=QuotedStr(FormNfceFast.QY01.FieldByName('NFC_PROTOCOLO').AsString);
  frxReport1.Variables['PROTOCOLODH']:=QuotedStr(FormNfceFast.QY01.FieldByName('NFC_PROTOCOLODH').AsString);
  frxReport1.Variables['CONTINGENCIA']:=QuotedStr(FormNfceFast.QY01.FieldByName('NFC_CONTINGENCIA').AsString);
  frxReport1.Variables['AMBIENTE']:=QuotedStr(DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value);

  frxReport1.Variables['ENDERECO1']:=QuotedStr('');
  frxReport1.Variables['ENDERECO2']:=QuotedStr('');
  if QY01.FieldByName('CLI_NOME').AsString<>'CONSUMIDOR FINAL' then
  begin
    frxReport1.Variables['ENDERECO1']:=QuotedStr(QY01.FieldByName('NFC_ENDERECO').AsString+', '+QY01.FieldByName('NFC_NUMERO').AsString+' '+QY01.FieldByName('NFC_CEP').AsString);
    frxReport1.Variables['ENDERECO2']:=QuotedStr(QY01.FieldByName('NFC_BAIRRO').AsString+' - '+QY01.FieldByName('NFC_CIDADE').AsString);
  end;
  //frxReport1.ShowReport;

  if Imprimir then
  begin
    frxReport1.PrintOptions.ShowDialog:=False;
    frxReport1.PrintOptions.Printer:=DM.ImpressoraNfce;
    frxReport1.PrepareReport;
    frxReport1.Print;
  end else
  if not GerarPDF then
  frxReport1.ShowReport;

  if GerarPDF then
  begin
    frxPDFExport1.FileName:=ArquivoPDF;
    frxPDFExport1.ShowDialog:=False;
    frxReport1.PrintOptions.ShowDialog:=False;
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
  end;
end;

procedure TFormNfceFast.GerarDANFCEPos(NumNfce: Integer; Via: String; Imprimir: Boolean=True);
var Contador: Word;
begin
  QY10b.Close;
  QY10a.Close;
  QY10.Close;
  QY10.ParamByName('codigo').AsInteger:=NumNfce;
  QY10.Open;
  QY10a.Open;
  QY10b.Open;

  if QY10.IsEmpty then //nao encontrou o cupom.
  begin
    QY10.Close;
    QY10a.Close;
    QY10b.Close;
    Exit;
  end;

  QY10.DisableControls;
  QY10a.DisableControls;
  QY10b.DisableControls;

  MemoPrint.Clear;
  MemoPrint.Lines.Add('</zera>');
  MemoPrint.Lines.Add('<c></ce>');

  if DM.TBParametrosPAR_NFCEIMPRIMIRLOGO.Value='S' then
  begin
    if FileExists(ExtractFilePath(Application.ExeName)+'LogoCupom.bmp') then
    MemoPrint.Lines.Add('<bmp>'+ExtractFilePath(Application.ExeName)+'LogoCupom.bmp</bmp>') else
    if FileExists(IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALLOGOMARCA.Value)+'LogoCupom.bmp') then
    MemoPrint.Lines.Add('<bmp>'+IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALLOGOMARCA.Value)+'LogoCupom.bmp</bmp>');
  end;

  MemoPrint.Lines.Add('<n>'+DM.TBEmpresaEMP_NOME.Value+'</n>');
  MemoPrint.Lines.Add('CNPJ: '+DM.TBEmpresaEMP_CNPJ.Value+' IE: '+DM.TBEmpresaEMP_IE.Value);
  MemoPrint.Lines.Add(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' '+DM.TBEmpresaEMP_BAIRRO.Value);
  MemoPrint.Lines.Add(DM.TBEmpresaEMP_CIDADE.Value+'/'+DM.TBEmpresaEMP_ESTADO.Value+' CEP: '+DM.TBEmpresaEMP_CEP.Value+' FONE: '+DM.TBEmpresaEMP_FONE1.Value);
  MemoPrint.Lines.Add('----------------------------------------------------------------');
  MemoPrint.Lines.Add('DOCUMENTO AUXILIAR DA NOTA FISCAL DE CONSUMIDOR ELETRONICA');
  if DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='2' then
  MemoPrint.Lines.Add('<n><in>EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</in></n>');

  if QY10NFC_CONTINGENCIA.Value='S' then
  MemoPrint.Lines.Add('<n><in>EMITIDA EM CONTINGENCIA - PENDENTE DE AUTORIZACAO</in></n>');

  MemoPrint.Lines.Add('----------------------------------------------------------------');
  MemoPrint.Lines.Add('<n>ITEM DESCRICAO  CODIGO  QUANTIDADE UN.  VALOR UNIT   VALOR TOTAL</n>');
  MemoPrint.Lines.Add('----------------------------------------------------------------');

  {$REGION 'Itens da NFCE'}
  QY10a.First;
  Contador:=0;
  while not QY10a.Eof do
  begin
    Inc(Contador);
    MemoPrint.Lines.Add(
      AlignText(QY10aNCI_SEQUENCIA.Value.ToString,'0',3,taRight)+'  '+
      AlignText(QY10aNCI_DESCRICAO.Value,' ',59,taLeft)
    );
    MemoPrint.Lines.Add(
      AlignText(QY10aCODIGOITEM.Value,' ',22,taRight)+' '+
      AlignText(Decimais2(QY10aNCI_QUANTIDADE.AsExtended,3),' ',11,taRight)+' '+
      AlignText(QY10aNCI_UNIDADE.Value,' ',3,taLeft)+' '+
      ValorFormatado(QY10aNCI_VALORUNIT.AsExtended,11)+
      ValorFormatado(QY10aNCI_VALORTOTAL.AsExtended,14)
    );
    QY10a.Next;
  end;
  {$ENDREGION}

  MemoPrint.Lines.Add('----------------------------------------------------------------');
  MemoPrint.Lines.Add('QUANTIDADE DE ITENS                                          '+AlignText(Contador.ToString,'0',3,taRight));
  MemoPrint.Lines.Add('VALOR TOTAL R$                                   '+ValorFormatado(QY10NFC_TOTALPRODUTOS.AsExtended,15));

  if QY10NFC_VALORFRETE.Value > 0 then
  MemoPrint.Lines.Add('FRETE R$                                         '+ValorFormatado(QY10NFC_VALORFRETE.AsExtended,15));
  if QY10NFC_DESCVALOR.Value > 0 then
  MemoPrint.Lines.Add('DESCONTO R$                                      '+ValorFormatado(QY10NFC_DESCVALOR.AsExtended,15));
  if QY10NFC_ACREVALOR.Value > 0 then
  MemoPrint.Lines.Add('ACRESCIMO R$                                     '+ValorFormatado(QY10NFC_ACREVALOR.AsExtended,15));

  MemoPrint.Lines.Add('<n>VALOR A PAGAR R$                                 '+ValorFormatado(QY10NFC_VALORTOTAL.AsExtended,15)+'</n>');
  MemoPrint.Lines.Add('----------------------------------------------------------------');
  MemoPrint.Lines.Add('FORMA PAGAMENTO                                    VALOR PAGO R$');

  {$REGION 'Formas de Pagamento da NFCE'}
  QY10b.First;
  while not QY10b.Eof do
  begin
    MemoPrint.Lines.Add(AlignText(QY10bCPG_DESCRICAO.Value,' ',49,taLeft)+ValorFormatado(QY10bNCP_VALOR.AsExtended,15));
    QY10b.Next;
  end;
  {$ENDREGION}

  MemoPrint.Lines.Add('----------------------------------------------------------------');
  MemoPrint.Lines.Add('</ce>CONSULTA PELA CHAVE DE ACESSO EM');
  MemoPrint.Lines.Add('https://sat.sef.sc.gov.br/nfce/consulta');
  MemoPrint.Lines.Add(FormatarString('CHAVEACESSO',QY10NFC_CHAVEACESSO.Value));
  MemoPrint.Lines.Add(Via);

  if QY10NFC_NOME.Value='CONSUMIDOR FINAL' then
  MemoPrint.Lines.Add('CONSUMIDOR: NAO IDENTIFICADO') else
  begin
    MemoPrint.Lines.Add('CONSUMIDOR: '+QY10NFC_NOME.Value);
    if QY10NFC_ENDERECO.Value<>'' then
    MemoPrint.Lines.Add(QY10NFC_ENDERECO.Value+', '+QY10NFC_NUMERO.Value+', '+QY10NFC_COMPLEMENTO.Value+', '+QY10NFC_BAIRRO.Value+', '+QY10NFC_CIDADE.Value+' - '+QY10NFC_ESTADO.Value);
  end;

  MemoPrint.Lines.Add(
    '<n>NFC-e:</n> '+AlignText(QY10NFC_CODIGO.Value.ToString,'0',9,taRight)+' '+
    '<n>SÉRIE:</n> '+AlignText(QY10NFC_SERIE.Value.ToString,'0',3,taRight)
  );

  if QY10NFC_CONTINGENCIA.Value='N' then
  MemoPrint.Lines.Add('PROTOCOLO AUTORIZACAO: '+QY10NFC_PROTOCOLO.Value+' '+QY10NFC_PROTOCOLODH.Value) else
  MemoPrint.Lines.Add('<n><in>EMITIDA EM CONTINGENCIA - PENDENTE DE AUTORIZACAO</in></n>');

  MemoPrint.Lines.Add('<qrcode_tipo>2</qrcode_tipo><qrcode_largura>4</qrcode_largura><qrcode_error>0</qrcode_error><qrcode>'+QY10NFC_QRCODE.Value+'</qrcode>');
  MemoPrint.Lines.Add('TRIBUTOS APROX. (Lei Fed. 12.741/2012): '+QY10NFC_TOTALTRIBUTOS.AsExtended.ToString);
  MemoPrint.Lines.Add('VENDEDOR: '+QY10NFC_VENDEDOR.Value.ToString+' - '+QY10VEN_NOME.Value);
  MemoPrint.Lines.Add('----------------------------------------------------------------');
  MemoPrint.Lines.Add('Runtime Sistemas                          runtimesistemas.com.br');
  MemoPrint.Lines.Add('</c>');
  MemoPrint.Lines.Add('');
  MemoPrint.Lines.Add('');
  MemoPrint.Lines.Add('');
  MemoPrint.Lines.Add('</corte_total>');
  MemoPrint.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\Print\CupomFiscal.txt');

  QY10.EnableControls;
  QY10a.EnableControls;
  QY10b.EnableControls;
  QY10.Close;
  QY10a.Close;
  QY10b.Close;

  if Imprimir then
  begin
    ACBrPosPrinter1.Porta:=DM.ImpressoraNfce;
//    ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModelo.ItemIndex );
//    ACBrPosPrinter1.ArqLOG := edLog.Text;
//    ACBrPosPrinter1.LinhasBuffer := seLinhasBuffer.Value;
//    ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
//    ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
//    ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
//    ACBrPosPrinter1.ControlePorta := cbControlePorta.Checked;
//    ACBrPosPrinter1.CortaPapel := cbCortarPapel.Checked;
//    ACBrPosPrinter1.TraduzirTags := cbTraduzirTags.Checked;
//    ACBrPosPrinter1.IgnorarTags := cbIgnorarTags.Checked;
//    ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( cbxPagCodigo.ItemIndex );
//    ACBrPosPrinter1.ConfigBarras.MostrarCodigo := cbHRI.Checked;
//    ACBrPosPrinter1.ConfigBarras.LarguraLinha := seBarrasLargura.Value;
//    ACBrPosPrinter1.ConfigBarras.Altura := seBarrasAltura.Value;
//    ACBrPosPrinter1.ConfigQRCode.Tipo:=2;
//    ACBrPosPrinter1.ConfigQRCode.LarguraModulo:=4;
//    ACBrPosPrinter1.ConfigQRCode.ErrorLevel:=0;
//    ACBrPosPrinter1.ConfigLogo.KeyCode1 := seLogoKC1.Value;
//    ACBrPosPrinter1.ConfigLogo.KeyCode2 := seLogoKC2.Value;
//    ACBrPosPrinter1.ConfigLogo.FatorX := seLogoFatorX.Value;
//    ACBrPosPrinter1.ConfigLogo.FatorY := seLogoFatorY.Value;
    ACBrPosPrinter1.Ativar;
    ACBrPosPrinter1.Buffer.Text:=MemoPrint.Lines.Text;
    ACBrPosPrinter1.Imprimir;
    //ACBrPosPrinter1.AbrirGaveta; //testar
    ACBrPosPrinter1.Desativar;
  end;

end;

procedure TFormNfceFast.CriarTabela;
begin
  TBNfce.EmptyDataSet;
  TBNfce.Open;
  QY07a.DisableControls;
  QY07.DisableControls;
  QY07.First;
  while not QY07.Eof do
  begin
    //verifica se existe algum registro na tabela de nfe inutilizadas.
    QY07a.Close;
    QY07a.ParamByName('de').AsInteger:=QY07DE.Value;
    QY07a.ParamByName('ate').AsInteger:=QY07ATE.Value;
    QY07a.Open;
    if QY07a.IsEmpty then //se estiver vazio é pq não foi encontrado na tabela de inutilizacoes, então inclui na tabela temporaria.
    begin
      TBNfce.Insert;
      TBNfceDE.Value:=QY07DE.Value;
      TBNfceATE.Value:=QY07ATE.Value;
      TBNfceQUANTIDADE.Value:=QY07ATE.Value - QY07DE.Value + 1;
      TBNfce.Post;
    end;
    QY07.Next;
  end;
  QY07.EnableControls;
  QY07a.EnableControls;
  QY07a.Close;
  TBNfce.First;
end;

end.
