unit BoletosEDI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DB, StdCtrls, Buttons, PngSpeedButton, PngBitBtn, ExtCtrls,
  Grids, DBGrids, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBoletosEDI = class(TForm)
    Label4: TLabel;
    SpeedButton2: TPngSpeedButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DBGrid2: TDBGrid;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    SaveDialog1: TSaveDialog;
    PngBitBtn1: TPngBitBtn;
    DSBoletos: TDataSource;
    DSBoletosItens: TDataSource;
    DSConhecimentos: TDataSource;
    DBGrid1: TDBGrid;
    TRBoletos: TFDTransaction;
    QYBoletos: TFDQuery;
    QYBoletosItens: TFDQuery;
    TRBoletosItens: TFDTransaction;
    QYConhecimentos: TFDQuery;
    TRConhecimentos: TFDTransaction;
    QYConhecimentosNotas: TFDQuery;
    TRConhecimentosNotas: TFDTransaction;
    QYBoletosBOL_ACEITE: TStringField;
    QYBoletosBOL_BAIRRO: TStringField;
    QYBoletosBOL_BAIXACODIGO: TIntegerField;
    QYBoletosBOL_BAIXADOPOR: TStringField;
    QYBoletosBOL_CARTEIRA: TStringField;
    QYBoletosBOL_CARTEIRACOD: TIntegerField;
    QYBoletosBOL_CEP: TStringField;
    QYBoletosBOL_CIDADE: TStringField;
    QYBoletosBOL_CLIENTE: TIntegerField;
    QYBoletosBOL_CNPJ: TStringField;
    QYBoletosBOL_CODIGO: TIntegerField;
    QYBoletosBOL_CODIGOBARRAS: TStringField;
    QYBoletosBOL_COMPLEMENTO: TStringField;
    QYBoletosBOL_CONTA: TIntegerField;
    QYBoletosBOL_CONVENIO: TStringField;
    QYBoletosBOL_CPF: TStringField;
    QYBoletosBOL_DESCPORC: TFMTBCDField;
    QYBoletosBOL_DESCTIPO: TStringField;
    QYBoletosBOL_DESCVALOR: TFMTBCDField;
    QYBoletosBOL_DIASBAIXA: TIntegerField;
    QYBoletosBOL_DIASPROTESTO: TIntegerField;
    QYBoletosBOL_DTATUALIZACAO: TDateField;
    QYBoletosBOL_DTBAIXABANCO: TDateField;
    QYBoletosBOL_DTCADASTRO: TDateField;
    QYBoletosBOL_DTDESCONTO: TDateField;
    QYBoletosBOL_DTJUROSAPOS: TDateField;
    QYBoletosBOL_DTPAGAMENTO: TDateField;
    QYBoletosBOL_DTPROTESTO: TDateField;
    QYBoletosBOL_DTVENCIMENTO: TDateField;
    QYBoletosBOL_ENDERECO: TStringField;
    QYBoletosBOL_ESPECIE: TStringField;
    QYBoletosBOL_ESPECIEDOC: TStringField;
    QYBoletosBOL_ESTADO: TStringField;
    QYBoletosBOL_GEROUREMESSA: TStringField;
    QYBoletosBOL_HRATUALIZACAO: TTimeField;
    QYBoletosBOL_HRCADASTRO: TTimeField;
    QYBoletosBOL_INSTRUCAO1: TStringField;
    QYBoletosBOL_INSTRUCAO2: TStringField;
    QYBoletosBOL_INSTRUCAO3: TStringField;
    QYBoletosBOL_INSTRUCAO4: TStringField;
    QYBoletosBOL_INSTRUCAO5: TStringField;
    QYBoletosBOL_LINHADIGITAVEL: TStringField;
    QYBoletosBOL_LOCALPAGTO: TStringField;
    QYBoletosBOL_MODALIDADE: TIntegerField;
    QYBoletosBOL_MORACODIGO: TStringField;
    QYBoletosBOL_MORAJUROS: TFMTBCDField;
    QYBoletosBOL_MULTA: TFMTBCDField;
    QYBoletosBOL_NOME: TStringField;
    QYBoletosBOL_NOSSONUMERO: TStringField;
    QYBoletosBOL_NUMERO: TStringField;
    QYBoletosBOL_OBSERVACOES: TMemoField;
    QYBoletosBOL_PROTESTOCODIGO: TIntegerField;
    QYBoletosBOL_QRCODEPIX: TStringField;
    QYBoletosBOL_STATUS: TStringField;
    QYBoletosBOL_TIPOPESSOA: TStringField;
    QYBoletosBOL_USUARIO: TStringField;
    QYBoletosBOL_VALORBOLETO: TFMTBCDField;
    QYBoletosBOL_VALORITENS: TFMTBCDField;
    QYBoletosBOL_VALORJUROS: TFMTBCDField;
    QYBoletosBOL_VALORMULTA: TFMTBCDField;
    QYBoletosBOL_VALORPAGO: TFMTBCDField;
    QYBoletosBOL_VALORTOTAL: TFMTBCDField;
    QYBoletosCON_AGENCIA: TStringField;
    QYBoletosCON_AGENCIADIGITO: TIntegerField;
    QYBoletosCON_ATUALIZAR: TStringField;
    QYBoletosCON_BAIXACODIGO: TIntegerField;
    QYBoletosCON_BANCO: TIntegerField;
    QYBoletosCON_CARTEIRA: TStringField;
    QYBoletosCON_CARTEIRACOD: TIntegerField;
    QYBoletosCON_CEDENTE: TStringField;
    QYBoletosCON_CEDENTEDIGITO: TIntegerField;
    QYBoletosCON_CEDENTENOME: TStringField;
    QYBoletosCON_CHAVEPIX: TStringField;
    QYBoletosCON_CHAVEPIXTIPO: TStringField;
    QYBoletosCON_CLIENTID: TStringField;
    QYBoletosCON_CLIENTSECRET: TStringField;
    QYBoletosCON_CNPJ: TStringField;
    QYBoletosCON_CODIGO: TIntegerField;
    QYBoletosCON_CONTA: TStringField;
    QYBoletosCON_CONTADIGITO: TIntegerField;
    QYBoletosCON_CONTATO: TStringField;
    QYBoletosCON_CONVENIO: TStringField;
    QYBoletosCON_DIASBAIXA: TIntegerField;
    QYBoletosCON_DIASPROTESTO: TIntegerField;
    QYBoletosCON_DTATUALIZACAO: TDateField;
    QYBoletosCON_DTCADASTRO: TDateField;
    QYBoletosCON_ESPECIE: TStringField;
    QYBoletosCON_ESPECIEDOC: TStringField;
    QYBoletosCON_FONE1: TStringField;
    QYBoletosCON_FONE2: TStringField;
    QYBoletosCON_HRATUALIZACAO: TTimeField;
    QYBoletosCON_HRCADASTRO: TTimeField;
    QYBoletosCON_INSTRUCAO1: TStringField;
    QYBoletosCON_INSTRUCAO2: TStringField;
    QYBoletosCON_INSTRUCAO3: TStringField;
    QYBoletosCON_INSTRUCAO4: TStringField;
    QYBoletosCON_INSTRUCAO5: TStringField;
    QYBoletosCON_KEYUSER: TStringField;
    QYBoletosCON_LAYOUT: TStringField;
    QYBoletosCON_LOCALPAGTO: TStringField;
    QYBoletosCON_MODALIDADE: TIntegerField;
    QYBoletosCON_MORACODIGO: TStringField;
    QYBoletosCON_MORAJUROS: TFMTBCDField;
    QYBoletosCON_MULTA: TFMTBCDField;
    QYBoletosCON_NOME: TStringField;
    QYBoletosCON_NOSSONUMDIGITOS: TIntegerField;
    QYBoletosCON_NOSSONUMFORMATAR: TStringField;
    QYBoletosCON_PROTESTOCODIGO: TIntegerField;
    QYBoletosCON_SALDO: TFMTBCDField;
    QYBoletosCON_STATUS: TStringField;
    QYBoletosCON_TIPOCOBRANCA: TStringField;
    QYBoletosCON_USUARIO: TStringField;
    QYBoletosCON_VALORBOLETO: TFMTBCDField;
    QYBoletosBAN_CODIGO: TIntegerField;
    QYBoletosBAN_DTATUALIZACAO: TDateField;
    QYBoletosBAN_DTCADASTRO: TDateField;
    QYBoletosBAN_HRATUALIZACAO: TTimeField;
    QYBoletosBAN_HRCADASTRO: TTimeField;
    QYBoletosBAN_NOME: TStringField;
    QYBoletosBAN_STATUS: TStringField;
    QYBoletosBAN_USUARIO: TStringField;
    QYBoletosItensBOI_BOLETO: TIntegerField;
    QYBoletosItensBOI_CODIGO: TIntegerField;
    QYBoletosItensBOI_RECEBER: TIntegerField;
    QYBoletosItensREE_ACRESCIMOPORC: TFMTBCDField;
    QYBoletosItensREE_ACRESCIMOPORCPAGO: TFMTBCDField;
    QYBoletosItensREE_ACRESCIMOVALOR: TFMTBCDField;
    QYBoletosItensREE_ACRESCIMOVALORPAGO: TFMTBCDField;
    QYBoletosItensREE_BAIXADOPOR: TStringField;
    QYBoletosItensREE_BOLETO: TIntegerField;
    QYBoletosItensREE_CLIENTE: TIntegerField;
    QYBoletosItensREE_CODIGO: TIntegerField;
    QYBoletosItensREE_CONTA: TIntegerField;
    QYBoletosItensREE_DESCPORC: TFMTBCDField;
    QYBoletosItensREE_DESCPORCVENCIMENTO: TFMTBCDField;
    QYBoletosItensREE_DESCRICAO: TStringField;
    QYBoletosItensREE_DESCVALOR: TFMTBCDField;
    QYBoletosItensREE_DIASATRASO: TIntegerField;
    QYBoletosItensREE_DIASPRAZO: TIntegerField;
    QYBoletosItensREE_DTATUALIZACAO: TDateField;
    QYBoletosItensREE_DTCADASTRO: TDateField;
    QYBoletosItensREE_DTEMISSAO: TDateField;
    QYBoletosItensREE_DTJUROSAPOS: TDateField;
    QYBoletosItensREE_DTPAGAMENTO: TDateField;
    QYBoletosItensREE_DTVENCIMENTO: TDateField;
    QYBoletosItensREE_HRATUALIZACAO: TTimeField;
    QYBoletosItensREE_HRCADASTRO: TTimeField;
    QYBoletosItensREE_JUROSPAGO: TFMTBCDField;
    QYBoletosItensREE_MULTAPAGO: TFMTBCDField;
    QYBoletosItensREE_NOVOCODIGO: TIntegerField;
    QYBoletosItensREE_NUMDOCTO: TStringField;
    QYBoletosItensREE_OBSERVACOES: TMemoField;
    QYBoletosItensREE_PARCELANUM: TIntegerField;
    QYBoletosItensREE_PARCELAQTDE: TIntegerField;
    QYBoletosItensREE_PORCJUROS: TFMTBCDField;
    QYBoletosItensREE_RECEITA: TIntegerField;
    QYBoletosItensREE_STATUS: TStringField;
    QYBoletosItensREE_TIPOBAIXA: TStringField;
    QYBoletosItensREE_TIPODOCTO: TStringField;
    QYBoletosItensREE_USUARIO: TStringField;
    QYBoletosItensREE_VALOR: TFMTBCDField;
    QYBoletosItensREE_VALORACESSORIAS: TFMTBCDField;
    QYBoletosItensREE_VALORJUROS: TFMTBCDField;
    QYBoletosItensREE_VALORMULTA: TFMTBCDField;
    QYBoletosItensREE_VALORORIGINAL: TFMTBCDField;
    QYBoletosItensREE_VALORPAGO: TFMTBCDField;
    QYBoletosItensREE_VALORSEMDESCONTO: TFMTBCDField;
    QYBoletosItensREE_VENDA: TIntegerField;
    QYBoletosItensREE_VENDEDOR: TIntegerField;
    QYConhecimentosCTE_CODIGO: TIntegerField;
    QYConhecimentosCTE_DTEMISSAO: TDateField;
    QYConhecimentosCTE_SERIE: TIntegerField;
    QYConhecimentosCTE_TOTALICMS: TFMTBCDField;
    QYConhecimentosCTE_TOTALICMSST: TFMTBCDField;
    QYConhecimentosCTE_VALORTOTAL: TFMTBCDField;
    QYConhecimentosNotasCTN_ALIQICMS: TFMTBCDField;
    QYConhecimentosNotasCTN_ALIQICMSST: TFMTBCDField;
    QYConhecimentosNotasCTN_BASEICMS: TFMTBCDField;
    QYConhecimentosNotasCTN_BASEICMSST: TFMTBCDField;
    QYConhecimentosNotasCTN_CFOP: TStringField;
    QYConhecimentosNotasCTN_CHAVEACESSO: TStringField;
    QYConhecimentosNotasCTN_CNPJREMETENTE: TStringField;
    QYConhecimentosNotasCTN_CODIGO: TIntegerField;
    QYConhecimentosNotasCTN_CTE: TIntegerField;
    QYConhecimentosNotasCTN_DESCRICAODOC: TStringField;
    QYConhecimentosNotasCTN_DTEMISSAO: TDateField;
    QYConhecimentosNotasCTN_MODELO: TIntegerField;
    QYConhecimentosNotasCTN_NUMERO: TIntegerField;
    QYConhecimentosNotasCTN_PESO: TFMTBCDField;
    QYConhecimentosNotasCTN_SERIE: TIntegerField;
    QYConhecimentosNotasCTN_SUFRAMA: TStringField;
    QYConhecimentosNotasCTN_TIPONOTA: TStringField;
    QYConhecimentosNotasCTN_TIPOOUTROS: TStringField;
    QYConhecimentosNotasCTN_TOTALICMS: TFMTBCDField;
    QYConhecimentosNotasCTN_TOTALICMSST: TFMTBCDField;
    QYConhecimentosNotasCTN_TOTALPRODUTOS: TFMTBCDField;
    QYConhecimentosNotasCTN_VALORTOTAL: TFMTBCDField;
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletosEDI: TFormBoletosEDI;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet, ClientesLoc, DataModSearch;
{$R *.dfm}

procedure TFormBoletosEDI.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
end;

procedure TFormBoletosEDI.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosEDI.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(Edit4.Text='','Nenhum cliente selecionado.');

  QYBoletosItens.Close;
  QYBoletos.Close;
  QYBoletos.SQL.Clear;
  QYBoletos.SQL.Add('select * from BOLETOS '+
                    'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                    'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                    'where BOL_CLIENTE='+QuotedStr(Edit3.Text)+' and (BOL_DTVENCIMENTO between :datainicial and :datafinal) and BOL_STATUS='+QuotedStr('A')+' ');
  QYBoletos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QYBoletos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QYBoletos.Open;
  QYBoletosItens.Open;
end;

procedure TFormBoletosEDI.BitBtn1Click(Sender: TObject);
var F: TextFile;
  Contador: Integer;
  NumDocto: String;
begin
  AbortIf(QYBoletos.IsEmpty,'Nenhuma fatura selecionada.');

  if SaveDialog1.Execute then
  begin
    AssignFile(F,SaveDialog1.FileName);
    Rewrite(F);
    //REGISTRO 051 - DOCUMENTO DE COBRANCA.
    WriteLn(F,'051'+LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value)+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',35,taLeft));
    //REGISTRO 052 - DOCUMENTO DE COBRANCA - BOLETO.
    Contador:=0;
    QYBoletos.First;
    while not QYBoletos.Eof do
    begin
      WriteLn(F,'052'+ //fixo 052.
                AlignText('',' ',10,taLeft)+ //nome filial.
                '0'+ //0=nota 1=romaneio.
                'UN '+ //serie nota.
                '   '+ //3 brancos.
                AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',6,taRight)+ //numero nota.
                ' '+ //pula uma coluna.
                FormatDateTime('DDMMYY',QYBoletosBOL_DTCADASTRO.Value)+ //data emissao.
                FormatDateTime('DDMMYY',QYBoletosBOL_DTVENCIMENTO.Value)+ //data vencimento.
                AlignText(LimparFormatacao(FloatToStr(QYBoletosBOL_VALORTOTAL.AsExtended)),'0',15,taRight)+ //valor total do documento.
                '   '+ //tipo de cobrança.
                AlignText('','0',15,taLeft)+ //valor total do icms.
                AlignText(LimparFormatacao(FloatToStr(QYBoletosBOL_MORAJUROS.AsExtended)),'0',15,taRight)+ //valor juro diario.
                AlignText('','0',6,taLeft)+ //data limite com desconto. DDMMMAA
                AlignText('','0',15,taLeft)+ //valor desconto. 15,2.
                AlignText(QYBoletosCON_NOME.Value,' ',35,taLeft)+ //nome da agencia.
                AlignText(QYBoletosCON_AGENCIA.Value,'0',4,taRight)+ //numero da agencia.
                IntToStr(QYBoletosCON_AGENCIADIGITO.Value)+ //digito da agencia.
                AlignText(QYBoletosCON_CEDENTE.Value,'0',10,taRight)+ //conta corrente - codigo do cedente.
                AlignText(IntToStr(QYBoletosCON_CEDENTEDIGITO.Value),' ',2,taRight)); //digito da conta - digito do cedente.
      QYBoletosItens.First;
      //REGISTRO 053 - CONHECIMENTOS DE TRANSPORTE ELETRONICOS.
      while not QYBoletosItens.Eof do
      begin
        NumDocto:=QYBoletosItensREE_NUMDOCTO.Value;
        if Pos('CTE-',NumDocto)<>0 then
        begin
          Contador:=Contador+1;
          Delete(NumDocto,1,4);
          Delete(NumDocto,Pos('/',NumDocto),Length(NumDocto));
          QYConhecimentosNotas.Close;
          QYConhecimentos.Close;
          QYConhecimentos.ParamByName('codigo').AsInteger:=StrToInt(NumDocto);
          QYConhecimentos.Open;
          QYConhecimentosNotas.Open;
          WriteLn(F,'053'+ //fixo 053.
                    AlignText('',' ',10,taLeft)+ //nome filial.
                    AlignText(IntToStr(QYConhecimentosCTE_SERIE.Value),' ',5,taLeft)+ //serie do conhecimento.
                    AlignText(IntToStr(QYConhecimentosCTE_CODIGO.Value),'0',12,taRight)+ //numero do conhecimento.
                    AlignText(LimparFormatacao(FloatToStr(QYConhecimentosCTE_VALORTOTAL.AsExtended)),'0',15,taRight)+ //valor frete (total CTE).
                    AlignText(LimparFormatacao(FloatToStr(QYConhecimentosCTE_TOTALICMS.AsExtended)),'0',15,taRight)+ //valor do ICMS.
                    ' '+ //branco.
                    FormatDateTime('DDMMYY',QYConhecimentosCTE_DTEMISSAO.Value)); //data emissao do cte.
          //REGISTRO 054 - NOTAS FISCAIS DO CONHECIMENTO.
          QYConhecimentosNotas.First;
          while not QYConhecimentosNotas.Eof do
          begin
            WriteLn(F,'054'+ //fixo 054.
                      AlignText(IntToStr(QYConhecimentosNotasCTN_SERIE.Value),' ',3,taLeft)+ //serie da nota.
                      AlignText(IntToStr(QYConhecimentosNotasCTN_NUMERO.Value),'0',8,taRight)+ //número da nota.
                      FormatDateTime('DDMMYY',QYConhecimentosNotasCTN_DTEMISSAO.Value)+ //data emissao da nota contida no cte.
                      AlignText(LimparFormatacao(FloatToStr(QYConhecimentosNotasCTN_PESO.AsExtended)),'0',7,taRight)+ //peso que veio na nota contida no cte.
                      AlignText(LimparFormatacao(FloatToStr(QYConhecimentosNotasCTN_VALORTOTAL.AsExtended)),'0',15,taRight)+ //valor da nota.
                      LimparFormatacao(QYConhecimentosNotasCTN_CNPJREMETENTE.Value)+ //CNPJ do remetente da nota.
                      AlignText(FloatToStr(QYConhecimentosNotasCTN_ALIQICMS.AsExtended),'0',2,taRight)+ //aliquota do ICMS.
                      AlignText(LimparFormatacao(FloatToStr(QYConhecimentosNotasCTN_TOTALICMS.AsExtended)),'0',15,taRight)); //valor do ICMS.
            QYConhecimentosNotas.Next;
          end;
        end;
        QYBoletosItens.Next;
      end;
      //REGISTRO 055 - TOTAIS DE COBRANÇA.
      WriteLn(F,'055'+ //fixo 055.
                AlignText(IntToStr(Contador),'0',4,taRight)+
                AlignText(LimparFormatacao(FloatToStr(QYBoletosBOL_VALORTOTAL.AsExtended)),'0',15,taRight)); //valor total do boleto.
      QYBoletos.Next;
    end;
    CloseFile(F);
    MessageDlg('Geração de arquivo EDI finalizado.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormBoletosEDI.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBoletosEDI.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosEDI.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit4);
end;

procedure TFormBoletosEDI.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormBoletosEDI.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormBoletosEDI.SpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit4);
end;

end.
