unit BoletosRemessas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DB, Buttons, PngSpeedButton, PngBitBtn,
  ACBrBase, ACBrBoleto, ACBrBoletoConversao, FileCtrl, Menus,
  ExtCtrls, ImgList, PngImageList, Grids, DBGrids, DBSBtn, pngimage,
  System.ImageList, System.UITypes, ACBrPIXCD, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBoletosRemessas = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    DSBoletos: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    SpeedButton2: TPngSpeedButton;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    DBGrid3: TDBGrid;
    Splitter1: TSplitter;
    Panel1: TPanel;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    DBGrid1: TDBGrid;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    Bevel1: TBevel;
    DSRemessas: TDataSource;
    DSRemessasItens: TDataSource;
    Navegao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    DSBoletosItens: TDataSource;
    DSRemessasBoletosItens: TDataSource;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    Bevel2: TBevel;
    Label5: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    PngBitBtn6: TPngBitBtn;
    CheckBox1: TCheckBox;
    Label9: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label12: TLabel;
    ComboBox4: TComboBox;
    Label13: TLabel;
    PngBitBtn7: TPngBitBtn;
    TRBoletos: TFDTransaction;
    QYBoletos: TFDQuery;
    QYBoletosItens: TFDQuery;
    TRBoletosItens: TFDTransaction;
    QYRemessas: TFDQuery;
    TRRemessas: TFDTransaction;
    QYRemessasItens: TFDQuery;
    TRRemessasItens: TFDTransaction;
    QYRemessasBoletosItens: TFDQuery;
    TRRemessasBoletosItens: TFDTransaction;
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
    QYBoletosCON_BANCO: TIntegerField;
    QYBoletosCON_CEDENTE: TStringField;
    QYBoletosCON_CEDENTENOME: TStringField;
    QYBoletosCON_CODIGO: TIntegerField;
    QYBoletosCON_CONTA: TStringField;
    QYBoletosCON_CONTADIGITO: TIntegerField;
    QYBoletosCON_NOME: TStringField;
    QYBoletosCON_NOSSONUMDIGITOS: TIntegerField;
    QYBoletosCON_NOSSONUMFORMATAR: TStringField;
    QYBoletosBAN_CODIGO: TIntegerField;
    QYBoletosBAN_NOME: TStringField;
    QYBoletosItensBOI_BOLETO: TIntegerField;
    QYBoletosItensBOI_CODIGO: TIntegerField;
    QYBoletosItensBOI_RECEBER: TIntegerField;
    QYBoletosItensREE_NUMDOCTO: TStringField;
    QYRemessasREM_ARQUIVO: TStringField;
    QYRemessasREM_CODIGO: TIntegerField;
    QYRemessasREM_CONTA: TIntegerField;
    QYRemessasREM_DATA: TDateField;
    QYRemessasREM_LAYOUT: TStringField;
    QYRemessasREM_USUARIO: TStringField;
    QYRemessasCON_NOME: TStringField;
    QYRemessasItensRMI_BOLETO: TIntegerField;
    QYRemessasItensBOL_CODIGO: TIntegerField;
    QYRemessasItensBOL_ACEITE: TStringField;
    QYRemessasItensBOL_CLIENTE: TIntegerField;
    QYRemessasItensBOL_NOME: TStringField;
    QYRemessasItensBOL_NOSSONUMERO: TStringField;
    QYRemessasItensBOL_DTVENCIMENTO: TDateField;
    QYRemessasItensBOL_DTCADASTRO: TDateField;
    QYRemessasItensBOL_DTJUROSAPOS: TDateField;
    QYRemessasItensBOL_DTPROTESTO: TDateField;
    QYRemessasItensBOL_VALORTOTAL: TFMTBCDField;
    QYRemessasItensBOL_STATUS: TStringField;
    QYRemessasItensBOL_CONTA: TIntegerField;
    QYRemessasItensBOL_CARTEIRA: TStringField;
    QYRemessasItensBOL_ESPECIE: TStringField;
    QYRemessasItensBOL_MULTA: TFMTBCDField;
    QYRemessasItensBOL_MORAJUROS: TFMTBCDField;
    QYRemessasItensBOL_ENDERECO: TStringField;
    QYRemessasItensBOL_NUMERO: TStringField;
    QYRemessasItensBOL_BAIRRO: TStringField;
    QYRemessasItensBOL_CIDADE: TStringField;
    QYRemessasItensBOL_ESTADO: TStringField;
    QYRemessasItensBOL_CEP: TStringField;
    QYRemessasItensBOL_LOCALPAGTO: TStringField;
    QYRemessasItensBOL_INSTRUCAO1: TStringField;
    QYRemessasItensBOL_INSTRUCAO2: TStringField;
    QYRemessasItensBOL_INSTRUCAO3: TStringField;
    QYRemessasItensBOL_INSTRUCAO4: TStringField;
    QYRemessasItensBOL_INSTRUCAO5: TStringField;
    QYRemessasItensBOL_CNPJ: TStringField;
    QYRemessasItensBOL_CPF: TStringField;
    QYRemessasItensBOL_TIPOPESSOA: TStringField;
    QYRemessasBoletosItensBOI_BOLETO: TIntegerField;
    QYRemessasBoletosItensBOI_CODIGO: TIntegerField;
    QYRemessasBoletosItensBOI_RECEBER: TIntegerField;
    QYRemessasBoletosItensREE_NUMDOCTO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngBitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    procedure CriarRemessaCNAB240_Brasil;
    procedure CriarRemessaCNAB240_Caixa_Sigcb;
    procedure CriarRemessaCNAB240_Cecred;
    procedure CriarRemessaCNAB240_Itau;
    procedure CriarRemessaCNAB240_Santander;
    procedure CriarRemessaCNAB240_Sicoob;
    procedure CriarRemessaCNAB240_Sicred;
    procedure CriarRemessaCNAB400_Bradesco;
  public
    { Public declarations }
  end;

var
  FormBoletosRemessas: TFormBoletosRemessas;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet, DataModSearch, System.StrUtils;
{$R *.dfm}

procedure TFormBoletosRemessas.CriarRemessaCNAB240_Brasil;
var
  Codigos, Data, Hora, Arquivo, HArquivo, HLote, TArquivo, TLote, SegP, SegQ, SegR, SegS: String;
  A,M,D,HH,MM,SS,MS: Word;
  Contador, QtdeTitulos, I: Integer;
  RemessaCNAB240: TStringList;
begin
  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    Contador:=0;
    QtdeTitulos:=0;
    DecodeDate(Date,A,M,D);
    DecodeTime(Time,HH,MM,SS,MS);
    Data:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(A);
    Hora:=AlignText(IntToStr(HH),'0',2,taRight)+AlignText(IntTostr(MM),'0',2,taRight)+AlignText(IntToStr(SS),'0',2,taRight);

    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(A)+'-'+
    AlignText(IntToStr(M),'0',2,taRight)+'-'+
    AlignText(IntToStr(D),'0',2,taRight)+'.txt';
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;

    RemessaCNAB240:=TStringList.Create;

    {$REGION 'HEADER DE ARQUIVO'}
    HArquivo:='001';                                                                           //numero do banco.
    HArquivo:=HArquivo+'0000';                                                                 //lote de serviço.
    HArquivo:=HArquivo+'0';                                                                    //tipo de registro.
    HArquivo:=HArquivo+Pads(9,' ');                                                            //uso febraban.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HArquivo:=HArquivo+'2' else
    HArquivo:=HArquivo+'1';                                                                    //2=juridica 1=fisica.
    HArquivo:=HArquivo+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',14,taRight); //cnpj ou cpf.
    HArquivo:=HArquivo+AlignText(LimparFormatacao(DMS.QYContasCON_CONVENIO.Value),'0',9,taRight); //convenio.
    HArquivo:=HArquivo+'0014';                                                                 //0014-cobranca cedente
    HArquivo:=HArquivo+DMS.QYContasCON_CARTEIRA.Value;                                         //carteira - preencher com 2 digitos + 3 digitos da variacao. ex: 17019.
    HArquivo:=HArquivo+'  ';                                                                   //brancos.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                 //agencia.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_AGENCIADIGITO.Value.ToString,'0',1,taRight);  //agencia digito.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                  //numero conta
    HArquivo:=HArquivo+DMS.QYContasCON_CONTADIGITO.Value.ToString;                             //dígito conta.
    HArquivo:=HArquivo+' ';                                                                    //digito agencia/conta - branco.
    HArquivo:=HArquivo+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                    //nome da empresa.
    HArquivo:=HArquivo+AlignText(DMS.QYContasBAN_NOME.Value,' ',30,taLeft);                    //nome do banco.
    HArquivo:=HArquivo+Pads(10,' ');                                                           //brancos.
    HArquivo:=HArquivo+'1';                                                                    //1=remessa 2=retorno.
    HArquivo:=HArquivo+Data;                                                                   //data geração.
    HArquivo:=HArquivo+Hora;                                                                   //hora geração.
    HArquivo:=HArquivo+'000000';                                                               //numero sequencial arquivo. no manual nao diz nada mais a respeito.
    HArquivo:=HArquivo+'000';                                                                  //versão do layout. campo nao criticado... versoes: 084, 083, 082, 080, 050, 040 ou 030.
    HArquivo:=HArquivo+Pads(5,'0');                                                            //zeros.
    HArquivo:=HArquivo+Pads(20,' ');                                                           //brancos.
    HArquivo:=HArquivo+Pads(20,'0');                                                           //zeros.
    HArquivo:=HArquivo+Pads(29,' ');                                                           //brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HArquivo);

    {$REGION 'HEADER DE LOTE'}
    HLote:='001';                                                                         //numero do banco.
    HLote:=HLote+'0001';                                                                  //lote de serviço.
    HLote:=HLote+'1';                                                                     //tipo de registro. 1=header de lote.
    HLote:=HLote+'R';                                                                     //tipo de operação. R=remessa T=retorno.
    HLote:=HLote+'01';                                                                    //tipo de serviço.
    HLote:=HLote+'  ';                                                                    //zeros.
    HLote:=HLote+'000';                                                                   //layout do lote. parametrizar?
    HLote:=HLote+' ';                                                                     //brancos.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HLote:=HLote+'2' else
    HLote:=HLote+'1';                                                                     //tipo inscrição. 2=juridica 1=fisica.
    HLote:=HLote+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',15,taRight);  //cnpj ou cpf.
    HLote:=HLote+AlignText(LimparFormatacao(DMS.QYContasCON_CONVENIO.Value),'0',9,taRight); //convenio.
    HLote:=HLote+'0014';                                                                  //0014-cobranca cedente
    HLote:=HLote+DMS.QYContasCON_CARTEIRA.Value;                                          //carteira - preencher com 2 digitos + 3 digitos da variacao. ex: 17019.
    HLote:=HLote+'  ';                                                                    //brancos.
    HLote:=HLote+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
    HLote:=HLote+AlignText(DMS.QYContasCON_AGENCIADIGITO.ToString,'0',1,taRight);         //DV agencia.
    HLote:=HLote+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                   //conta corrente.
    HLote:=HLote+AlignText(DMS.QYContasCON_CONTADIGITO.ToString,'0',1,taRight);           //DV conta corrente.
    HLote:=HLote+' ';                                                                     //brancos.
    HLote:=HLote+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                     //nome da empresa.
    HLote:=HLote+Pads(80,' ');                                                            //brancos.
    HLote:=HLote+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',8,taRight);       //numero remessa/retorno.
    HLote:=HLote+Data;                                                                    //data gravação.
    HLote:=HLote+Pads(8,'0');                                                             //data crédito.
    HLote:=HLote+Pads(33,' ');                                                            //brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HLote);

    QYBoletosItens.First;
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);
      Inc(Contador);

      {$REGION 'SEGMENTO P'}
      SegP:='001';                                                                        //numero do banco.
      SegP:=SegP+'0001';                                                                  //lote de serviço.
      SegP:=SegP+'3';                                                                     //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegP:=SegP+AlignText(IntToStr(Contador),'0',5,taRight);                             //numero sequencial do registro no lote.
      SegP:=SegP+'P';                                                                     //codigo do segmento. "P".
      SegP:=SegP+' ';                                                                     //uso febraban.
      SegP:=SegP+Copy(ComboBox2.Text,1,2);                                                //codigo mov. remessa. 01=Entrada de Títulos.
      SegP:=SegP+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
      SegP:=SegP+AlignText(DMS.QYContasCON_AGENCIADIGITO.Value.ToString,'0',1,taRight);   //DV agencia.
      SegP:=SegP+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                   //conta corrente.
      SegP:=SegP+AlignText(DMS.QYContasCON_CONTADIGITO.Value.ToString,'0',1,taRight);     //DV conta corrente.
      SegP:=SegP+' ';                                                                     //branco.
      SegP:=SegP+AlignText(QYBoletosBOL_NOSSONUMERO.Value,'0',20,taLeft);                 //nosso numero convenio 7 posicoes + 10 digitos codigo boleto.
      SegP:=SegP+AlignText(DMS.QYContasCON_CARTEIRACOD.Value.ToString,'0',1,taRight);     //codigo carteira.
      SegP:=SegP+' ';                                                                     //branco.
      SegP:=SegP+' ';                                                                     //branco.
      SegP:=SegP+'2';                                                                     //carteira 17: 1-banco emite 2-cliente emite.
      SegP:=SegP+'2';                                                                     //carteira 17: 1-banco dsitribui 2-cliente distribui.
      SegP:=SegP+AlignText(QYBoletosBOL_CODIGO.Value.ToString,' ',15,taLeft);             //numero do boleto.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTVENCIMENTO.Value);                          //data de vencimento.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_VALORTOTAL.AsExtended,2),'0',15,taRight);    //valor do titulo.
      SegP:=SegP+Pads(5,'0');                                                             //agencia cobradora.
      SegP:=SegP+' ';                                                                     //agencia dv. cobradora.
      SegP:=SegP+Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2);                                 //especie documento. 02=DM, 03=DMI...
      SegP:=SegP+QYBoletosBOL_ACEITE.Value;                                               //aceite A ou N.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTCADASTRO.Value);                            //data de emissão.
      SegP:=SegP+QYBoletosBOL_MORACODIGO.Value;                                           //codigo juros de mora
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                           //data juros de mora.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_MORAJUROS.AsExtended,2),'0',15,taRight);//juros de mora por dia/taxa. valor diário ou taxa mensal
      SegP:=SegP+Copy(QYBoletosBOL_DESCTIPO.Value,1,1);                                   //código desconto.
      if QYBoletosBOL_DESCTIPO.Value='0 - SEM DESCONTO' then
      begin
        SegP:=SegP+Pads(8,'0');                                                           //data desc 1.
        SegP:=SegP+Pads(15,'0');                                                          //valor/percentual desc.
      end else
      begin
        SegP:=SegP+DataSemBarras(QYBoletosBOL_DTDESCONTO.Value);                          //data desc 1.
        if QYBoletosBOL_DESCTIPO.Value='1 - VALOR FIXO ATE A DATA INFORMADA' then
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCVALOR.AsExtended,2),'0',15,taRight) else //valor/percentual desc.
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCPORC.AsExtended,2),'0',15,taRight);
      end;
      SegP:=SegP+Pads(15,'0');                                                            //valor iof;
      SegP:=SegP+Pads(15,'0');                                                            //valor abatimento.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',25,taLeft);            //identificação do titulo na empresa.
      SegP:=SegP+IntToStr(QYBoletosBOL_PROTESTOCODIGO.Value);                             //código para protesto. 1=protestar dias corridos 2=negativar serasa. 3=nao protestar.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASPROTESTO.Value),'0',2,taRight);      //dias para protesto.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_BAIXACODIGO.Value),'0',1,taRight);       //codigo para baixa/devolução. bb nao trata o campo.. informar 0.
      if QYBoletosBOL_DIASBAIXA.IsNull then
      SegP:=SegP+Pads(3,' ') else                                                         //dias pra baixa/devolução.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASBAIXA.Value),'0',3,taRight);         //dias pra baixa/devolução.
      SegP:=SegP+'09';                                                                    //codigo moeda
      SegP:=SegP+Pads(10,'0');                                                            //zeros.
      SegP:=SegP+'1';                                                                     //uso livre.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO Q'}
      SegQ:='001';
      SegQ:=SegQ+'0001';                                                                //lote de serviço.
      SegQ:=SegQ+'3';                                                                   //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegQ:=SegQ+AlignText(IntToStr(Contador),'0',5,taRight);                           //numero sequencial do registro no lote.
      SegQ:=SegQ+'Q';                                                                   //codigo do segmento. "Q".
      SegQ:=SegQ+' ';                                                                   //uso febraban. brancos.
      SegQ:=SegQ+Copy(ComboBox2.Text,1,2);                                              //codigo mov. remessa. 01=Entrada de Títulos.
      if QYBoletosBOL_TIPOPESSOA.Value='J' then
      begin
        SegQ:=SegQ+'2';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CNPJ.Value),'0',15,taRight); //CNPJ.
      end else
      begin
        SegQ:=SegQ+'1';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CPF.Value),'0',15,taRight);  //CPF.
      end;
      SegQ:=SegQ+AlignText(QYBoletosBOL_NOME.Value,' ',40,taLeft);                      //Nome.
      SegQ:=SegQ+AlignText(QYBoletosBOL_ENDERECO.Value+' '+QYBoletosBOL_NUMERO.Value,' ',40,taLeft); //Endereço.
      SegQ:=SegQ+AlignText(QYBoletosBOL_BAIRRO.Value,' ',15,taLeft);                    //bairro.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,1,5);                                      //cep.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,7,3);                                      //cep sufixo.
      SegQ:=SegQ+AlignText(QYBoletosBOL_CIDADE.Value,' ',15,taLeft);                    //cidade.
      SegQ:=SegQ+QYBoletosBOL_ESTADO.Value;                                             //estado.
      SegQ:=SegQ+'0';                                                                   //avalista tipo inscrição.
      SegQ:=SegQ+Pads(15,'0');                                                          //avalista cnpj ou cpf.
      SegQ:=SegQ+Pads(40,' ');                                                          //avalista nome.
      SegQ:=SegQ+Pads(3,'0');                                                           //brancos.
      SegQ:=SegQ+Pads(28,' ');                                                          //brancos.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO R'}
      SegR:='001';
      SegR:=SegR+'0001';                                                              //lote de serviço.
      SegR:=SegR+'3';                                                                 //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegR:=SegR+AlignText(IntToStr(Contador),'0',5,taRight);                         //numero sequencial do registro no lote.
      SegR:=SegR+'R';                                                                 //codigo do segmento. "R".
      SegR:=SegR+' ';                                                                 //uso febraban. brancos.
      SegR:=SegR+Copy(ComboBox2.Text,1,2);                                            //codigo mov. remessa. 01=Entrada de Títulos.
      SegR:=SegR+'0';                                                                 //codigo desc 2.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 2.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 2.
      SegR:=SegR+'0';                                                                 //codigo desc 3.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 3.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 3.
      SegR:=SegR+'2';                                                                 //codigo da multa. 0=nao registra, 1=valor fixo, 2=valor percentual.
      SegR:=SegR+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                       //data da multa.
      SegR:=SegR+AlignText(Decimais3(QYBoletosBOL_MULTA.AsExtended,2),'0',15,taRight);//valor/percentual da multa.
      SegR:=SegR+Pads(10,' ');                                                        //brancos.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO1.Value,' ',40,taLeft);              //mensagem 3.
      SegR:=SegR+Pads(60,' ');                                                        //brancos.
      SegR:=SegR+Pads(8,'0');                                                         //codigo ocorrencia sacado.
      SegR:=SegR+Pads(8,'0');                                                         //zeros.
      SegR:=SegR+' ';                                                                 //branco.
      SegR:=SegR+Pads(12,'0');                                                        //zeros.
      SegR:=SegR+'  ';                                                                //brancos.
      SegR:=SegR+'0';                                                                 //zeros.
      SegR:=SegR+Pads(9,' ');                                                         //uso febraban.
      {$ENDREGION}

      //Inc(Contador);
      {$REGION 'SEGMENTO S'}
      SegS:='001';                                                              //codigo do banco.
      SegS:=SegS+'0001';                                                        //lote de serviço.
      SegS:=SegS+'3';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegS:=SegS+AlignText(IntToStr(Contador),'0',5,taRight);                   //numero sequencial do registro no lote.
      SegS:=SegS+'S';                                                           //codigo do segmento. "S".
      SegS:=SegS+' ';                                                           //uso febraban. brancos.
      SegS:=SegS+Copy(ComboBox2.Text,1,2);                                      //codigo mov. remessa. 01=Entrada de Títulos.
      SegS:=SegS+'3';                                                           //tipo de impressão; //3=cedente imprime.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 5.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 6.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 7.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 8.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 9.
      SegS:=SegS+Pads(22,' ');                                                  //uso febraban.
      {$ENDREGION}

      Inc(QtdeTitulos);
      RemessaCNAB240.Add(SegP);
      RemessaCNAB240.Add(SegQ);
      RemessaCNAB240.Add(SegR);
      RemessaCNAB240.Add(SegS);
    end;

    {$REGION 'TRAILER DE LOTE'}
    TLote:='001';                                                               //codigo do banco.
    TLote:=TLote+'0001';                                                        //lote de serviço.
    TLote:=TLote+'5';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TLote:=TLote+Pads(9,' ');                                                   //uso febraban.
    TLote:=TLote+AlignText(IntToStr(Contador+2),'0',6,taRight);                 //quantidade de registros no lote. (contador + header + trailer).
    TLote:=TLote+Pads(217,' ');                                                 //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TLote);

    {$REGION 'TRAILER DE ARQUIVO'}
    TArquivo:='001';                                                            //codigo do banco.
    TArquivo:=TArquivo+'9999';                                                  //lote de serviço.
    TArquivo:=TArquivo+'9';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TArquivo:=TArquivo+Pads(9,' ');                                             //uso febraban.
    TArquivo:=TArquivo+'000001';                                                //quantidade de lotes.
    TArquivo:=TArquivo+AlignText(IntToStr(Contador+4),'0',6,taRight);           //quantidade de registros no arquivo. (contador + (header e trailer de lote) + (header e trailer de arquivo).
    TArquivo:=TArquivo+Pads(6,'0');                                             //quantidade de contas para conciliação.
    TArquivo:=TArquivo+Pads(205,' ');                                           //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TArquivo);

    RemessaCNAB240.SaveToFile(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\'+Arquivo);

    Application.ProcessMessages;
    //Atualiza boletos.
    Delete(Codigos,1,1); //retira a primeira virgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('S')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;
    //...
    DMS.QYContas.Close;
    QYBoletos.Close;
    QYBoletosItens.Close;
    Edit3.Text:='';
    Edit4.Text:='';
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessas.Last;
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);

    MessageDlg('Arquivo de remessa gerado com '+IntToStr(I)+' boleto(s).',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosRemessas.CriarRemessaCNAB240_Caixa_Sigcb;
var
  Codigos, Data, Hora, Arquivo, HArquivo, HLote, TArquivo, TLote, SegP, SegQ, SegR, SegS: String;
  A,M,D,HH,MM,SS,MS: Word;
  Contador, QtdeTitulos, I: Integer;
  SomaTitulos: Currency;
  RemessaCNAB240: TStringList;
begin
  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    Contador:=0;
    QtdeTitulos:=0;
    DecodeDate(Date,A,M,D);
    DecodeTime(Time,HH,MM,SS,MS);
    Data:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(A);
    Hora:=AlignText(IntToStr(HH),'0',2,taRight)+AlignText(IntTostr(MM),'0',2,taRight)+AlignText(IntToStr(SS),'0',2,taRight);

    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(A)+'-'+
    AlignText(IntToStr(M),'0',2,taRight)+'-'+
    AlignText(IntToStr(D),'0',2,taRight)+'.txt';
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;

    RemessaCNAB240:=TStringList.Create;

    {$REGION 'HEADER DE ARQUIVO'}
    HArquivo:='104';                                                                           //numero do banco.
    HArquivo:=HArquivo+'0000';                                                                 //lote de serviço.
    HArquivo:=HArquivo+'0';                                                                    //tipo de registro.
    HArquivo:=HArquivo+Pads(9,' ');                                                            //uso febraban.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HArquivo:=HArquivo+'2' else
    HArquivo:=HArquivo+'1';                                                                    //2=juridica 1=fisica.
    HArquivo:=HArquivo+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',14,taRight); //cnpj ou cpf.
    HArquivo:=HArquivo+Pads(20,'0');                                                           //uso da caixa.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                 //agencia.
    HArquivo:=HArquivo+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),'0',1,taRight); //agencia dv.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CEDENTE.Value,'0',6,taRight);                 //código do beneficiário.
    HArquivo:=HArquivo+Pads(7,'0');                                                            //uso da caixa - zeros.
    HArquivo:=HArquivo+Pads(1,'0');                                                            //uso da caixa - zeros.
    HArquivo:=HArquivo+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                    //nome da empresa.
    HArquivo:=HArquivo+AlignText(DMS.QYContasBAN_NOME.Value,' ',30,taLeft);                    //nome do banco/cooperativa.
    HArquivo:=HArquivo+Pads(10,' ');                                                           //uso febraban.
    HArquivo:=HArquivo+'1';                                                                    //1=remessa 2=retorno.
    HArquivo:=HArquivo+Data;                                                                   //data geração.
    HArquivo:=HArquivo+Hora;                                                                   //hora geração.
    HArquivo:=HArquivo+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',6,taRight);      //numero sequencial arquivo.
    HArquivo:=HArquivo+'101';                                                                  //versão do layout. 050=no arquivo de pre critica.
    HArquivo:=HArquivo+Pads(5,'0');                                                            //densidade do arquivo. (?).
    HArquivo:=HArquivo+Pads(20,' ');                                                           //reservado cooperativa.
    HArquivo:=HArquivo+Pads(20,' ');                                                           //reservado empresa. preencher com REMESSA-TESTE quando em testes.
    HArquivo:=HArquivo+Pads(4,' ');                                                            //uso interno.
    HArquivo:=HArquivo+Pads(25,' ');                                                           //filler.
    {$ENDREGION}
    RemessaCNAB240.Add(HArquivo);

    {$REGION 'HEADER DE LOTE'}
    HLote:='104';                                                                         //numero do banco.
    HLote:=HLote+'0001';                                                                  //lote de serviço.
    HLote:=HLote+'1';                                                                     //tipo de registro. 1=header de lote.
    HLote:=HLote+'R';                                                                     //tipo de operação. (?).
    HLote:=HLote+'01';                                                                    //tipo de serviço. 01=cobranca registrada. 03=desconto de titulos. 04=caução de titulos.
    HLote:=HLote+'00';                                                                    //filler - zeros.
    HLote:=HLote+'060';                                                                   //layout do lote. 030=no arquivo de pre critica.
    HLote:=HLote+' ';                                                                     //filler - brancos.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HLote:=HLote+'2' else
    HLote:=HLote+'1';                                                                     //tipo inscrição. 2=juridica 1=fisica.
    HLote:=HLote+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',15,taRight);  //cnpj ou cpf.
    HLote:=HLote+AlignText(DMS.QYContasCON_CEDENTE.Value,'0',6,taLeft);                   //código beneficiário.
    HLote:=HLote+Pads(14,'0');                                                            //uso da caixa.
    HLote:=HLote+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
    HLote:=HLote+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),'0',1,taRight);  //agencia dv.
    HLote:=HLote+AlignText(DMS.QYContasCON_CEDENTE.Value,'0',6,taRight);                  //mesmo código beneficiário.
    HLote:=HLote+Pads(7,'0');                                                             //código boleto personalizado.
    HLote:=HLote+'0';                                                                     //uso da caixa.
    HLote:=HLote+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                     //nome da empresa.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem1.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem2.
    HLote:=HLote+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',8,taRight);       //numero remessa/retorno.
    HLote:=HLote+Data;                                                                    //data gravação.
    HLote:=HLote+Pads(8,'0');                                                             //filler - zeros.
    HLote:=HLote+Pads(33,' ');                                                            //filler - brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HLote);

    SomaTitulos:=0;
    QYBoletosItens.First;
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);
      Inc(Contador);

      {$REGION 'SEGMENTO P'}
      SegP:='104';                                                                        //numero do banco.
      SegP:=SegP+'0001';                                                                  //lote de serviço.
      SegP:=SegP+'3';                                                                     //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegP:=SegP+AlignText(IntToStr(Contador),'0',5,taRight);                             //numero sequencial do registro no lote.
      SegP:=SegP+'P';                                                                     //codigo do segmento. "P".
      SegP:=SegP+' ';                                                                     //uso febraban.
      SegP:=SegP+Copy(ComboBox2.Text,1,2);                                                //codigo mov. remessa. 01=Entrada de Títulos.
      SegP:=SegP+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),'0',1,taRight);  //agencia dv.
      SegP:=SegP+AlignText(DMS.QYContasCON_CEDENTE.Value,'0',6,taRight);                  //código convenio/cedente.
      SegP:=SegP+Pads(8,'0');                                                             //uso da caixa.
      SegP:=SegP+Pads(2,'0');                                                             //filler - zeros.
      SegP:=SegP+'0';                                                                     //modalidade da carteira sinco.
      SegP:=SegP+Copy(QYBoletosBOL_NOSSONUMERO.Value,1,17);  //sem digito verif.          //codigo carteira SIGCB + nosso número. 17 digitos. começa com 14. 1=registrado 4=emissao pelo beneficiario.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CARTEIRACOD.Value),'0',1,taRight);       //código da carteira 1=cobrança simples.
      SegP:=SegP+'1';                                                                     //forma de cadastro no banco. 1=cobrança registrada.
      SegP:=SegP+'2';                                                                     //tipo de documento. 2=escritural.
      SegP:=SegP+'2';                                                                     //identificação da emissão. 1=banco emite. 2=cliente emite. 4=banco reemite. 5=banco nao reemite.
      SegP:=SegP+'0';                                                                     //identificação da entrega. 0=postagem pelo beneficiário.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',11,taLeft);            //numero do documento.
      SegP:=SegP+Pads(4,' ');                                                             //uso da caixa.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTVENCIMENTO.Value);                          //uso da caixa.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_VALORTOTAL.AsExtended,2),'0',15,taRight);    //valor do titulo.
      SegP:=SegP+Pads(5,'0');                                                             //agencia cobradora.
      SegP:=SegP+'0';                                                                     //agencia dv. cobradora.
      SegP:=SegP+Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2);                                 //especie documento. 02=DM, 03=DMI...
      SegP:=SegP+QYBoletosBOL_ACEITE.Value;                                               //aceite A ou N.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTCADASTRO.Value);                            //data de emissão.
      SegP:=SegP+AlignText(QYBoletosBOL_MORACODIGO.Value,'0',1,taRight);                  //codigo de mora. 1=valor por dia. 2=taxa mensal, 3=isento.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                           //data juros de mora.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_MORAJUROS.AsExtended,2),'0',15,taRight);     //juros de mora por dia/taxa.
      if QYBoletosBOL_DESCTIPO.Value='0 - SEM DESCONTO' then
      begin
        SegP:=SegP+'0';                                                                   //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+Pads(8,'0');                                                           //data desc 1.
        SegP:=SegP+Pads(15,'0');                                                          //valor/percentual desc.
      end else
      begin
        SegP:=SegP+Copy(QYBoletosBOL_DESCTIPO.Value,1,1);                                 //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+DataSemBarras(QYBoletosBOL_DTDESCONTO.Value);                          //data desc 1.
        if QYBoletosBOL_DESCTIPO.Value='1 - VALOR FIXO ATE A DATA INFORMADA' then
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCVALOR.AsExtended,2),'0',15,taRight) else //valor/percentual desc.
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCPORC.AsExtended,2),'0',15,taRight);
      end;
      SegP:=SegP+Pads(15,'0');                                                            //valor iof;
      SegP:=SegP+Pads(15,'0');                                                            //valor abatimento.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',25,taLeft);            //identificação do titulo na empresa.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_PROTESTOCODIGO.Value),'0',1,taRight);    //código para protesto. 1=protestar dias corridos 2=negativar serasa. 3=nao protestar.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASPROTESTO.Value),'0',2,taRight);      //dias para protesto.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_BAIXACODIGO.Value),'0',1,taRight);       //codigo para baixa/devolução. 1=baixar/devolver 2=nao baixar/devolver.

      if QYBoletosBOL_DIASBAIXA.IsNull then
      SegP:=SegP+Pads(3,' ') else                                                         //dias pra baixa/devolução.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASBAIXA.Value),'0',3,taRight);         //dias pra baixa/devolução.

      SegP:=SegP+'09';                                                                    //codigo moeda.
      SegP:=SegP+Pads(10,'0');                                                            //uso da caixa.

      if Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2)='31' then
      SegP:=SegP+'2' else                                                                     //uso livre. - 1=nao autoriza pagamento parcial 2=autoriza.
      if Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2)='32' then
      SegP:=SegP+'1' else                                                                     //uso livre. - 1=nao autoriza pagamento parcial.
      SegP:=SegP+' ';                                                                     //uso livre. - 1=nao autoriza pagamento parcial.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO Q'}
      SegQ:='104';
      SegQ:=SegQ+'0001';                                                                //lote de serviço.
      SegQ:=SegQ+'3';                                                                   //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegQ:=SegQ+AlignText(IntToStr(Contador),'0',5,taRight);                           //numero sequencial do registro no lote.
      SegQ:=SegQ+'Q';                                                                   //codigo do segmento. "Q".
      SegQ:=SegQ+' ';                                                                   //uso febraban. brancos.
      SegQ:=SegQ+Copy(ComboBox2.Text,1,2);                                              //codigo mov. remessa. 01=Entrada de Títulos.
      if QYBoletosBOL_TIPOPESSOA.Value='J' then
      begin
        SegQ:=SegQ+'2';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CNPJ.Value),'0',15,taRight); //CNPJ.
      end else
      begin
        SegQ:=SegQ+'1';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CPF.Value),'0',15,taRight);  //CPF.
      end;
      SegQ:=SegQ+AlignText(QYBoletosBOL_NOME.Value,' ',40,taLeft);                      //Nome.
      SegQ:=SegQ+AlignText(QYBoletosBOL_ENDERECO.Value+' '+QYBoletosBOL_NUMERO.Value,' ',40,taLeft); //Endereço.
      SegQ:=SegQ+AlignText(QYBoletosBOL_BAIRRO.Value,' ',15,taLeft);                    //bairro.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,1,5);                                      //cep.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,7,3);                                      //cep sufixo.
      SegQ:=SegQ+AlignText(QYBoletosBOL_CIDADE.Value,' ',15,taLeft);                    //cidade.
      SegQ:=SegQ+QYBoletosBOL_ESTADO.Value;                                             //estado.
      SegQ:=SegQ+'0';                                                                   //avalista tipo inscrição.
      SegQ:=SegQ+Pads(15,'0');                                                          //avalista cnpj ou cpf.
      SegQ:=SegQ+Pads(40,' ');                                                          //avalista nome.
      SegQ:=SegQ+Pads(3,' ');                                                           //banco correspondente.
      SegQ:=SegQ+Pads(20,' ');                                                          //nosso numero bco. correspondente.
      SegQ:=SegQ+Pads(8,' ');                                                           //uso febraban.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO R'}
      SegR:='104';
      SegR:=SegR+'0001';                                                              //lote de serviço.
      SegR:=SegR+'3';                                                                 //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegR:=SegR+AlignText(IntToStr(Contador),'0',5,taRight);                         //numero sequencial do registro no lote.
      SegR:=SegR+'R';                                                                 //codigo do segmento. "R".
      SegR:=SegR+' ';                                                                 //uso febraban. brancos.
      SegR:=SegR+Copy(ComboBox2.Text,1,2);                                            //codigo mov. remessa. 01=Entrada de Títulos.
      SegR:=SegR+'0';                                                                 //codigo desc 2.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 2.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 2.
      SegR:=SegR+'0';                                                                 //codigo desc 3.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 3.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 3.
      SegR:=SegR+'2';                                                                 //codigo da multa. 0=sem multa. 1=valor fixo, 2=percentual.
      SegR:=SegR+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                       //data da multa.
      SegR:=SegR+AlignText(Decimais3(QYBoletosBOL_MULTA.AsExtended,2),'0',15,taRight);//valor/percentual da multa.
      SegR:=SegR+Pads(10,' ');                                                        //info ao sacado.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO1.Value,' ',40,taLeft);              //mensagem 3.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO2.Value,' ',40,taLeft);              //mensagem 4.
      SegR:=SegR+Pads(50,' ');                                                        //uso da caixa.
      SegR:=SegR+Pads(11,' ');                                                        //filler - brancos.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO S'}
      SegS:='104';                                                              //codigo do banco.
      SegS:=SegS+'0001';                                                        //lote de serviço.
      SegS:=SegS+'3';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegS:=SegS+AlignText(IntToStr(Contador),'0',5,taRight);                   //numero sequencial do registro no lote.
      SegS:=SegS+'S';                                                           //codigo do segmento. "S".
      SegS:=SegS+' ';                                                           //uso febraban. brancos.
      SegS:=SegS+Copy(ComboBox2.Text,1,2);                                      //codigo mov. remessa. 01=Entrada de Títulos.
      SegS:=SegS+'3';                                                           //tipo de impressão; //3=cedente imprime.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 5.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 6.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 7.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 8.
      SegS:=SegS+Pads(40,' ');                                                  //uso da caixa - brancos.
      SegS:=SegS+Pads(22,' ');                                                  //filler - brancos.
      {$ENDREGION}

      Inc(QtdeTitulos);
      SomaTitulos:=SomaTitulos+QYBoletosBOL_VALORTOTAL.AsExtended;
      RemessaCNAB240.Add(SegP);
      RemessaCNAB240.Add(SegQ);
      RemessaCNAB240.Add(SegR);
      RemessaCNAB240.Add(SegS);
    end;

    {$REGION 'TRAILER DE LOTE'}
    TLote:='104';                                                               //codigo do banco.
    TLote:=TLote+'0001';                                                        //lote de serviço.
    TLote:=TLote+'5';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TLote:=TLote+Pads(9,' ');                                                   //uso febraban.
    TLote:=TLote+AlignText(IntToStr(Contador+2),'0',6,taRight);                 //quantidade de registros no lote. (contador + header + trailer).
    TLote:=TLote+AlignText(IntToStr(QtdeTitulos),'0',6,taRight);                //quantidade de titulos.
    TLote:=TLote+AlignText(Decimais3(SomaTitulos,2),'0',17,taRight);            //total dos titulos.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade vinculada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos vinculada.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade caucionada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos caucionada.
    TLote:=TLote+Pads(31,' ');                                                  //filler - brancos.
    TLote:=TLote+Pads(117,' ');                                                 //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TLote);

    {$REGION 'TRAILER DE ARQUIVO'}
    TArquivo:='104';                                                            //codigo do banco.
    TArquivo:=TArquivo+'9999';                                                  //lote de serviço.
    TArquivo:=TArquivo+'9';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TArquivo:=TArquivo+Pads(9,' ');                                             //uso febraban.
    TArquivo:=TArquivo+'000001';                                                //quantidade de lotes.
    TArquivo:=TArquivo+AlignText(IntToStr(Contador+4),'0',6,taRight);           //quantidade de registros no arquivo. (contador + (header e trailer de lote) + (header e trailer de arquivo).
    TArquivo:=TArquivo+Pads(6,' ');                                             //filler - brancos.
    TArquivo:=TArquivo+Pads(205,' ');                                           //filler - brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(TArquivo);

    RemessaCNAB240.SaveToFile(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\'+Arquivo);

    Application.ProcessMessages;
    //Atualiza boletos.
    Delete(Codigos,1,1); //retira a primeira virgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('S')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;
    //...
    DMS.QYContas.Close;
    QYBoletos.Close;
    QYBoletosItens.Close;
    Edit3.Text:='';
    Edit4.Text:='';
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessas.Last;
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);

    MessageDlg('Arquivo de remessa gerado com '+IntToStr(I)+' boleto(s).',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosRemessas.CriarRemessaCNAB240_Cecred;
var
  Codigos, Data, Hora, Arquivo, HArquivo, HLote, TArquivo, TLote, SegP, SegQ, SegR, SegS: String;
  A,M,D,HH,MM,SS,MS: Word;
  Contador, QtdeTitulos, I: Integer;
  RemessaCNAB240: TStringList;
begin
  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    Contador:=0;
    QtdeTitulos:=0;
    DecodeDate(Date,A,M,D);
    DecodeTime(Time,HH,MM,SS,MS);
    Data:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(A);
    Hora:=AlignText(IntToStr(HH),'0',2,taRight)+AlignText(IntTostr(MM),'0',2,taRight)+AlignText(IntToStr(SS),'0',2,taRight);

    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(A)+'-'+
    AlignText(IntToStr(M),'0',2,taRight)+'-'+
    AlignText(IntToStr(D),'0',2,taRight)+'.txt';
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;

    RemessaCNAB240:=TStringList.Create;

    {$REGION 'HEADER DE ARQUIVO'}
    HArquivo:='085';                                                                           //numero do banco.
    HArquivo:=HArquivo+'0000';                                                                 //lote de serviço.
    HArquivo:=HArquivo+'0';                                                                    //tipo de registro.
    HArquivo:=HArquivo+Pads(9,' ');                                                            //uso febraban.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HArquivo:=HArquivo+'2' else
    HArquivo:=HArquivo+'1';                                                                    //2=juridica 1=fisica.
    HArquivo:=HArquivo+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',14,taRight); //cnpj ou cpf.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CONVENIO.Value,' ',20,taLeft);                //convenio.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                 //agencia.
    HArquivo:=HArquivo+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),'0',1,taRight); //agencia dv.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                  //conta corrente.
    HArquivo:=HArquivo+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);   //conta corrente dv.
    HArquivo:=HArquivo+' ';                                                                    //dv ag/conta.
    HArquivo:=HArquivo+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                    //nome da empresa.
    HArquivo:=HArquivo+AlignText(DMS.QYContasBAN_NOME.Value,' ',30,taLeft);                    //nome do banco/cooperativa.
    HArquivo:=HArquivo+Pads(10,' ');                                                           //uso febraban.
    HArquivo:=HArquivo+'1';                                                                    //1=remessa 2=retorno.
    HArquivo:=HArquivo+Data;                                                                   //data geração.
    HArquivo:=HArquivo+Hora;                                                                   //hora geração.
    HArquivo:=HArquivo+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',6,taRight);      //numero sequencial arquivo.
    HArquivo:=HArquivo+'087';                                                                  //versão do layout.
    HArquivo:=HArquivo+Pads(5,'0');                                                            //densidade do arquivo. (?).
    HArquivo:=HArquivo+Pads(20,' ');                                                           //reservado cooperativa.
    HArquivo:=HArquivo+Pads(20,' ');                                                           //reservado empresa.
    HArquivo:=HArquivo+Pads(29,' ');                                                           //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(HArquivo);

    {$REGION 'HEADER DE LOTE'}
    HLote:='085'; //numero do banco.
    HLote:=HLote+'0001';                                                                  //lote de serviço.
    HLote:=HLote+'1';                                                                     //tipo de registro. 1=header de lote.
    HLote:=HLote+'R';                                                                     //tipo de operação. (?).
    HLote:=HLote+'01';                                                                    //tipo de serviço.
    HLote:=HLote+'  ';                                                                    //exclusivo febraban. brancos.
    HLote:=HLote+'045';                                                                   //layout do lote.
    HLote:=HLote+' ';                                                                     //uso febraban. brancos.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HLote:=HLote+'2' else
    HLote:=HLote+'1';                                                                     //tipo inscrição. 2=juridica 1=fisica.
    HLote:=HLote+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',15,taRight);  //cnpj ou cpf.
    HLote:=HLote+AlignText(DMS.QYContasCON_CONVENIO.Value,' ',20,taLeft);                 //convenio.
    HLote:=HLote+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
    HLote:=HLote+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),'0',1,taRight);  //agencia dv.
    HLote:=HLote+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                   //conta corrente.
    HLote:=HLote+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);    //conta corrente dv.
    HLote:=HLote+' ';                                                                     //dv ag/conta.
    HLote:=HLote+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                     //nome da empresa.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem1.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem2.
    HLote:=HLote+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',8,taRight);       //numero remessa/retorno.
    HLote:=HLote+Data;                                                                    //data gravação.
    HLote:=HLote+Pads(8,'0');                                                             //data crédito.
    HLote:=HLote+Pads(33,' ');                                                            //uso febraban. brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HLote);

    QYBoletosItens.First;
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);
      Inc(Contador);

      {$REGION 'SEGMENTO P'}
      SegP:='085';                                                                        //numero do banco.
      SegP:=SegP+'0001';                                                                  //lote de serviço.
      SegP:=SegP+'3';                                                                     //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegP:=SegP+AlignText(IntToStr(Contador),'0',5,taRight);                             //numero sequencial do registro no lote.
      SegP:=SegP+'P';                                                                     //codigo do segmento. "P".
      SegP:=SegP+' ';                                                                     //uso febraban.
      SegP:=SegP+Copy(ComboBox2.Text,1,2);                                                //codigo mov. remessa. 01=Entrada de Títulos.
      SegP:=SegP+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),'0',1,taRight);  //agencia dv.
      SegP:=SegP+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                   //conta corrente.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);    //conta corrente dv.
      SegP:=SegP+' ';                                                                     //dv ag/conta.
      SegP:=SegP+AlignText(QYBoletosBOL_NOSSONUMERO.Value,' ',20,taLeft);                 //nosso numero.
      SegP:=SegP+IntToStr(QYBoletosBOL_CARTEIRACOD.Value);                                //codigo carteira. 1=cobrança simples. 2=vinculada. 3=caucionada. 4=descontada.
      SegP:=SegP+'1';                                                                     //forma cad. tit. no banco. 1=com registro.
      SegP:=SegP+'1';                                                                     //tipo documento. 1=tradicional.
      SegP:=SegP+'2';                                                                     //ident. emissão. 1=cooperativa emite, 2=cooperado emite.
      SegP:=SegP+'2';                                                                     //ident. disttribuição. 1=cooperativa envia. 2=cooperado envia. 3=banco envia email. 4=banco envia sms.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',15,taLeft);            //numero do documento.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTVENCIMENTO.Value);                          //data de vencimento.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_VALORTOTAL.AsExtended,2),'0',15,taRight);    //valor do titulo.
      SegP:=SegP+Pads(5,'0');                                                             //agencia cobradora.
      SegP:=SegP+' ';                                                                     //agencia dv. cobradora.
      SegP:=SegP+Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2);                                 //especie documento. 02=DM, 03=DMI...
      SegP:=SegP+QYBoletosBOL_ACEITE.Value;                                               //aceite A ou N.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTCADASTRO.Value);                            //data de emissão.
      SegP:=SegP+QYBoletosBOL_MORACODIGO.Value;                                           //codigo de mora. 1=valor por dia. 2=taxa mensal, 3=isento.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                           //data juros de mora.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_MORAJUROS.AsExtended,2),'0',15,taRight);     //juros de mora por dia/taxa.
      if QYBoletosBOL_DESCTIPO.Value='0 - SEM DESCONTO' then
      begin
        SegP:=SegP+'0';                                                                   //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+Pads(8,'0');                                                           //data desc 1.
        SegP:=SegP+Pads(15,'0');                                                          //valor/percentual desc.
      end else
      begin
        SegP:=SegP+Copy(QYBoletosBOL_DESCTIPO.Value,1,1);                                 //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+DataSemBarras(QYBoletosBOL_DTDESCONTO.Value);                          //data desc 1.
        if QYBoletosBOL_DESCTIPO.Value='1 - VALOR FIXO ATE A DATA INFORMADA' then
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCVALOR.AsExtended,2),'0',15,taRight) else //valor/percentual desc.
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCPORC.AsExtended,2),'0',15,taRight);
      end;
      SegP:=SegP+Pads(15,'0');                                                            //valor iof;
      SegP:=SegP+Pads(15,'0');                                                            //valor abatimento.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',25,taLeft);            //identificação do titulo na empresa.
      SegP:=SegP+IntToStr(QYBoletosBOL_PROTESTOCODIGO.Value);                             //código para protesto. 1=protestar dias corridos 2=negativar serasa. 3=nao protestar.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASPROTESTO.Value),'0',2,taRight);      //dias para protesto.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_BAIXACODIGO.Value),'0',1,taRight);       //codigo para baixa/devolução. 1=baixar/devolver 2=nao baixar/devolver.

      if QYBoletosBOL_DIASBAIXA.IsNull then
      SegP:=SegP+Pads(3,' ') else                                                         //dias pra baixa/devolução.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASBAIXA.Value),'0',3,taRight);         //dias pra baixa/devolução.

      SegP:=SegP+'09';                                                                    //codigo moeda.
      SegP:=SegP+Pads(10,' ');                                                            //numero contrato. 10 brancos.
      SegP:=SegP+' ';                                                                     //uso livre.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO Q'}
      SegQ:='085';
      SegQ:=SegQ+'0001';                                                                //lote de serviço.
      SegQ:=SegQ+'3';                                                                   //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegQ:=SegQ+AlignText(IntToStr(Contador),'0',5,taRight);                           //numero sequencial do registro no lote.
      SegQ:=SegQ+'Q';                                                                   //codigo do segmento. "Q".
      SegQ:=SegQ+' ';                                                                   //uso febraban. brancos.
      SegQ:=SegQ+Copy(ComboBox2.Text,1,2);                                              //codigo mov. remessa. 01=Entrada de Títulos.
      if QYBoletosBOL_TIPOPESSOA.Value='J' then
      begin
        SegQ:=SegQ+'2';                                                                 //tipo inscrição. 2=juridica 1=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CNPJ.Value),'0',15,taRight); //CNPJ.
      end else
      begin
        SegQ:=SegQ+'1';                                                                 //tipo inscrição. 2=juridica 1=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CPF.Value),'0',15,taRight);  //CPF.
      end;
      SegQ:=SegQ+AlignText(QYBoletosBOL_NOME.Value,' ',40,taLeft);                      //Nome.
      SegQ:=SegQ+AlignText(QYBoletosBOL_ENDERECO.Value+' '+QYBoletosBOL_NUMERO.Value,' ',40,taLeft); //Endereço.
      SegQ:=SegQ+AlignText(QYBoletosBOL_BAIRRO.Value,' ',15,taLeft);                    //bairro.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,1,5);                                      //cep.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,7,3);                                      //cep sufixo.
      SegQ:=SegQ+AlignText(QYBoletosBOL_CIDADE.Value,' ',15,taLeft);                    //cidade.
      SegQ:=SegQ+QYBoletosBOL_ESTADO.Value;                                             //estado.
      SegQ:=SegQ+'0';                                                                   //avalista tipo inscrição.
      SegQ:=SegQ+Pads(15,'0');                                                          //avalista cnpj ou cpf.
      SegQ:=SegQ+Pads(40,' ');                                                          //avalista nome.
      SegQ:=SegQ+Pads(3,'0');                                                           //banco correspondente.
      SegQ:=SegQ+Pads(20,' ');                                                          //nosso numero bco. correspondente.
      SegQ:=SegQ+Pads(8,' ');                                                           //uso febraban.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO R'}
      SegR:='085';
      SegR:=SegR+'0001';                                                              //lote de serviço.
      SegR:=SegR+'3';                                                                 //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegR:=SegR+AlignText(IntToStr(Contador),'0',5,taRight);                         //numero sequencial do registro no lote.
      SegR:=SegR+'R';                                                                 //codigo do segmento. "R".
      SegR:=SegR+' ';                                                                 //uso febraban. brancos.
      SegR:=SegR+Copy(ComboBox2.Text,1,2);                                            //codigo mov. remessa. 01=Entrada de Títulos.
      SegR:=SegR+'0';                                                                 //codigo desc 2.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 2.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 2.
      SegR:=SegR+'0';                                                                 //codigo desc 3.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 3.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 3.
      SegR:=SegR+'2';                                                                 //codigo da multa.
      SegR:=SegR+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                       //data da multa.
      SegR:=SegR+AlignText(Decimais3(QYBoletosBOL_MULTA.AsExtended,2),'0',15,taRight);//valor/percentual da multa.
      SegR:=SegR+Pads(10,' ');                                                        //info ao sacado.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO1.Value,' ',40,taLeft);              //mensagem 3.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO2.Value,' ',40,taLeft);              //mensagem 4.
      SegR:=SegR+Pads(20,' ');                                                        //uso febraban.
      SegR:=SegR+Pads(8,'0');                                                         //codigo ocorrencia sacado.
      SegR:=SegR+Pads(3,'0');                                                         //codigo banco debito.
      SegR:=SegR+Pads(5,'0');                                                         //agencia debito.
      SegR:=SegR+' ';                                                                 //agencia dv debito.
      SegR:=SegR+Pads(12,'0');                                                        //conta corrente debito.
      SegR:=SegR+' ';                                                                 //conta corrente dv debito.
      SegR:=SegR+' ';                                                                 //dv ag/conta debito.
      SegR:=SegR+'2';                                                                 //aviso para debito autom. 2=nao emite aviso.
      SegR:=SegR+Pads(9,' ');                                                         //uso febraban.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO S'}
      SegS:='085';                                                              //codigo do banco.
      SegS:=SegS+'0001';                                                        //lote de serviço.
      SegS:=SegS+'3';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegS:=SegS+AlignText(IntToStr(Contador),'0',5,taRight);                   //numero sequencial do registro no lote.
      SegS:=SegS+'S';                                                           //codigo do segmento. "S".
      SegS:=SegS+' ';                                                           //uso febraban. brancos.
      SegS:=SegS+Copy(ComboBox2.Text,1,2);                                      //codigo mov. remessa. 01=Entrada de Títulos.
      SegS:=SegS+'3';                                                           //tipo de impressão; //3=cedente imprime.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 5.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 6.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 7.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 8.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 9.
      SegS:=SegS+Pads(22,' ');                                                  //uso febraban.
      {$ENDREGION}

      Inc(QtdeTitulos);
      RemessaCNAB240.Add(SegP);
      RemessaCNAB240.Add(SegQ);
      RemessaCNAB240.Add(SegR);
      RemessaCNAB240.Add(SegS);
    end;

    {$REGION 'TRAILER DE LOTE'}
    TLote:='085';                                                               //codigo do banco.
    TLote:=TLote+'0001';                                                        //lote de serviço.
    TLote:=TLote+'5';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TLote:=TLote+Pads(9,' ');                                                   //uso febraban.
    TLote:=TLote+AlignText(IntToStr(Contador+2),'0',6,taRight);                 //quantidade de registros no lote. (contador + header + trailer).
    TLote:=TLote+AlignText(IntToStr(QtdeTitulos),'0',6,taRight);                //quantidade de titulos.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade vinculada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos vinculada.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade caucionada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos caucionada.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade descontada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos descontada.
    TLote:=TLote+Pads(8,' ');                                                   //numero aviso de lançamento.
    TLote:=TLote+Pads(117,' ');                                                 //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TLote);

    {$REGION 'TRAILER DE ARQUIVO'}
    TArquivo:='085';                                                            //codigo do banco.
    TArquivo:=TArquivo+'9999';                                                  //lote de serviço.
    TArquivo:=TArquivo+'9';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TArquivo:=TArquivo+Pads(9,' ');                                             //uso febraban.
    TArquivo:=TArquivo+'000001';                                                //quantidade de lotes.
    TArquivo:=TArquivo+AlignText(IntToStr(Contador+4),'0',6,taRight);           //quantidade de registros no arquivo. (contador + (header e trailer de lote) + (header e trailer de arquivo).
    TArquivo:=TArquivo+Pads(6,'0');                                             //quantidade de contas para conciliação.
    TArquivo:=TArquivo+Pads(205,' ');                                           //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TArquivo);

    RemessaCNAB240.SaveToFile(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\'+Arquivo);

    Application.ProcessMessages;
    //Atualiza boletos.
    Delete(Codigos,1,1); //retira a primeira virgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('S')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;
    //...
    DMS.QYContas.Close;
    QYBoletos.Close;
    QYBoletosItens.Close;
    Edit3.Text:='';
    Edit4.Text:='';
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessas.Last;
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);

    MessageDlg('Arquivo de remessa gerado com '+IntToStr(I)+' boleto(s).',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosRemessas.CriarRemessaCNAB240_Itau;
var
  Codigos, Data, Hora, Arquivo, HArquivo, HLote, TArquivo, TLote, SegP, SegQ, SegR: String;
  A,M,D,HH,MM,SS,MS: Word;
  Contador, QtdeTitulos, I: Integer;
  RemessaCNAB240: TStringList;
begin
  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    Contador:=0;
    QtdeTitulos:=0;
    DecodeDate(Date,A,M,D);
    DecodeTime(Time,HH,MM,SS,MS);
    Data:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(A);
    Hora:=AlignText(IntToStr(HH),'0',2,taRight)+AlignText(IntTostr(MM),'0',2,taRight)+AlignText(IntToStr(SS),'0',2,taRight);

    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(A)+'-'+
    AlignText(IntToStr(M),'0',2,taRight)+'-'+
    AlignText(IntToStr(D),'0',2,taRight)+'.txt';
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;

    RemessaCNAB240:=TStringList.Create;

    {$REGION 'HEADER DE ARQUIVO'}
    HArquivo:='341';                                                                           //numero do banco.
    HArquivo:=HArquivo+'0000';                                                                 //lote de serviço.
    HArquivo:=HArquivo+'0';                                                                    //tipo de registro.
    HArquivo:=HArquivo+Pads(9,' ');                                                            //uso febraban.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HArquivo:=HArquivo+'2' else
    HArquivo:=HArquivo+'1';                                                                    //2=juridica 1=fisica.
    HArquivo:=HArquivo+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',14,taRight); //cnpj ou cpf.
    HArquivo:=HArquivo+Pads(20,' ');                                                           //brancos.
    HArquivo:=HArquivo+'0';                                                                    //zero.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',4,taRight);                 //agencia.
    HArquivo:=HArquivo+' ';                                                                    //branco.
    HArquivo:=HArquivo+Pads(7,'0');                                                            //zeros.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CONTA.Value,'0',5,taRight);                   //numero conta
    HArquivo:=HArquivo+' ';                                                                    //branco.
    HArquivo:=HArquivo+IntToStr(DMS.QYContasCON_CONTADIGITO.Value);                            //dígito agencia/conta.
    HArquivo:=HArquivo+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                    //nome da empresa.
    HArquivo:=HArquivo+AlignText(DMS.QYContasBAN_NOME.Value,' ',30,taLeft);                    //nome do banco.
    HArquivo:=HArquivo+Pads(10,' ');                                                           //brancos.
    HArquivo:=HArquivo+'1';                                                                    //1=remessa 2=retorno.
    HArquivo:=HArquivo+Data;                                                                   //data geração.
    HArquivo:=HArquivo+Hora;                                                                   //hora geração.
    HArquivo:=HArquivo+'000001';                                                               //numero sequencial arquivo. no manual nao diz nada mais a respeito.
    HArquivo:=HArquivo+'040';                                                                  //versão do layout. parametrizar?
    HArquivo:=HArquivo+Pads(5,'0');                                                            //zeros.
    HArquivo:=HArquivo+Pads(54,' ');                                                           //brancos.
    HArquivo:=HArquivo+Pads(3,'0');                                                            //zeros.
    HArquivo:=HArquivo+Pads(12,' ');                                                           //brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HArquivo);

    {$REGION 'HEADER DE LOTE'}
    HLote:='341';                                                                         //numero do banco.
    HLote:=HLote+'0001';                                                                  //lote de serviço.
    HLote:=HLote+'1';                                                                     //tipo de registro. 1=header de lote.
    HLote:=HLote+'R';                                                                     //tipo de operação. R=remessa T=retorno.
    HLote:=HLote+'01';                                                                    //tipo de serviço.
    HLote:=HLote+'00';                                                                    //zeros.
    HLote:=HLote+'030';                                                                   //layout do lote. parametrizar?
    HLote:=HLote+' ';                                                                     //brancos.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HLote:=HLote+'2' else
    HLote:=HLote+'1';                                                                     //tipo inscrição. 2=juridica 1=fisica.
    HLote:=HLote+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',15,taRight);  //cnpj ou cpf.
    HLote:=HLote+Pads(20,' ');                                                            //brancos.
    HLote:=HLote+'0';                                                                     //zeros.
    HLote:=HLote+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',4,taRight);                  //agencia.
    HLote:=HLote+' ';                                                                     //brancos.
    HLote:=HLote+Pads(7,'0');                                                             //zeros.
    HLote:=HLote+AlignText(DMS.QYContasCON_CONTA.Value,'0',5,taRight);                    //conta corrente.
    HLote:=HLote+' ';                                                                     //brancos.
    HLote:=HLote+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);    //conta corrente dv.
    HLote:=HLote+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                     //nome da empresa.
    HLote:=HLote+Pads(80,' ');                                                            //brancos.
    HLote:=HLote+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',8,taRight);       //numero remessa/retorno.
    HLote:=HLote+Data;                                                                    //data gravação.
    HLote:=HLote+Pads(8,'0');                                                             //data crédito.
    HLote:=HLote+Pads(33,' ');                                                            //brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HLote);

    QYBoletosItens.First;
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);
      Inc(Contador);

      {$REGION 'SEGMENTO P'}
      SegP:='341';                                                                        //numero do banco.
      SegP:=SegP+'0001';                                                                  //lote de serviço.
      SegP:=SegP+'3';                                                                     //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegP:=SegP+AlignText(IntToStr(Contador),'0',5,taRight);                             //numero sequencial do registro no lote.
      SegP:=SegP+'P';                                                                     //codigo do segmento. "P".
      SegP:=SegP+' ';                                                                     //uso febraban.
      SegP:=SegP+Copy(ComboBox2.Text,1,2);                                                //codigo mov. remessa. 01=Entrada de Títulos.
      SegP:=SegP+'0';                                                                     //zeros.
      SegP:=SegP+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',4,taRight);                  //agencia.
      SegP:=SegP+' ';                                                                     //brancos.
      SegP:=SegP+Pads(7,'0');                                                             //zeros.
      SegP:=SegP+AlignText(DMS.QYContasCON_CONTA.Value,'0',5,taRight);                    //conta corrente.
      SegP:=SegP+' ';                                                                     //branco.
      SegP:=SegP+IntToStr(DMS.QYContasCON_CONTADIGITO.Value);                             //conta corrente dv.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_CARTEIRACOD.Value),'0',3,taRight);    //codigo carteira.
      SegP:=SegP+AlignText(QYBoletosBOL_NOSSONUMERO.Value,'0',9,taRight);                 //nosso numero 8+1 dv.
      SegP:=SegP+Pads(8,' ');                                                             //brancos.
      SegP:=SegP+Pads(5,'0');                                                             //zeros.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',10,taLeft);            //numero do boleto.
      SegP:=SegP+Pads(5,' ');                                                             //brancos.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTVENCIMENTO.Value);                          //data de vencimento.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_VALORTOTAL.AsExtended,2),'0',15,taRight);    //valor do titulo.
      SegP:=SegP+Pads(5,'0');                                                             //agencia cobradora.
      SegP:=SegP+'0';                                                                     //agencia dv. cobradora.
      SegP:=SegP+Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2);                                 //especie documento. 02=DM, 03=DMI...
      SegP:=SegP+QYBoletosBOL_ACEITE.Value;                                               //aceite A ou N.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTCADASTRO.Value);                            //data de emissão.
      SegP:=SegP+'0';                                                                     //zero.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                           //data juros de mora.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_MORAJUROS.AsExtended,2),'0',15,taRight);     //juros de mora por dia/taxa. valor diário ou taxa mensal
      SegP:=SegP+'0';                                                                     //zero.
      if QYBoletosBOL_DESCTIPO.Value='0 - SEM DESCONTO' then
      begin
        SegP:=SegP+Pads(8,'0');                                                           //data desc 1.
        SegP:=SegP+Pads(15,'0');                                                          //valor/percentual desc.
      end else
      begin
        SegP:=SegP+DataSemBarras(QYBoletosBOL_DTDESCONTO.Value);                          //data desc 1.
        if QYBoletosBOL_DESCTIPO.Value='1 - VALOR FIXO ATE A DATA INFORMADA' then
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCVALOR.AsExtended,2),'0',15,taRight) else //valor/percentual desc.
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCPORC.AsExtended,2),'0',15,taRight);
      end;
      SegP:=SegP+Pads(15,'0');                                                            //valor iof;
      SegP:=SegP+Pads(15,'0');                                                            //valor abatimento.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',25,taLeft);            //identificação do titulo na empresa.
      SegP:=SegP+IntToStr(QYBoletosBOL_PROTESTOCODIGO.Value);                             //código para protesto. 1=protestar dias corridos 2=negativar serasa. 3=nao protestar.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASPROTESTO.Value),'0',2,taRight);      //dias para protesto.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_BAIXACODIGO.Value),'0',1,taRight);       //codigo para baixa/devolução. 1=baixar/devolver 2=nao baixar/devolver.

      if QYBoletosBOL_DIASBAIXA.IsNull then
      SegP:=SegP+Pads(2,' ') else                                                         //dias pra baixa/devolução.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASBAIXA.Value),'0',2,taRight);         //dias pra baixa/devolução.

      SegP:=SegP+Pads(13,'0');                                                            //zeros.
      SegP:=SegP+' ';                                                                     //uso livre.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO Q'}
      SegQ:='341';
      SegQ:=SegQ+'0001';                                                                //lote de serviço.
      SegQ:=SegQ+'3';                                                                   //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegQ:=SegQ+AlignText(IntToStr(Contador),'0',5,taRight);                           //numero sequencial do registro no lote.
      SegQ:=SegQ+'Q';                                                                   //codigo do segmento. "Q".
      SegQ:=SegQ+' ';                                                                   //uso febraban. brancos.
      SegQ:=SegQ+Copy(ComboBox2.Text,1,2);                                              //codigo mov. remessa. 01=Entrada de Títulos.
      if QYBoletosBOL_TIPOPESSOA.Value='J' then
      begin
        SegQ:=SegQ+'2';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CNPJ.Value),'0',15,taRight); //CNPJ.
      end else
      begin
        SegQ:=SegQ+'1';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CPF.Value),'0',15,taRight);  //CPF.
      end;
      SegQ:=SegQ+AlignText(QYBoletosBOL_NOME.Value,' ',30,taLeft);                      //Nome.
      SegQ:=SegQ+Pads(10,' ');                                                          //brancos.
      SegQ:=SegQ+AlignText(QYBoletosBOL_ENDERECO.Value+' '+QYBoletosBOL_NUMERO.Value,' ',40,taLeft); //Endereço.
      SegQ:=SegQ+AlignText(QYBoletosBOL_BAIRRO.Value,' ',15,taLeft);                    //bairro.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,1,5);                                      //cep.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,7,3);                                      //cep sufixo.
      SegQ:=SegQ+AlignText(QYBoletosBOL_CIDADE.Value,' ',15,taLeft);                    //cidade.
      SegQ:=SegQ+QYBoletosBOL_ESTADO.Value;                                             //estado.
      SegQ:=SegQ+'0';                                                                   //avalista tipo inscrição.
      SegQ:=SegQ+Pads(15,'0');                                                          //avalista cnpj ou cpf.
      SegQ:=SegQ+Pads(30,' ');                                                          //avalista nome.
      SegQ:=SegQ+Pads(10,' ');                                                          //brancos.
      SegQ:=SegQ+Pads(3,'0');                                                           //zeros.
      SegQ:=SegQ+Pads(28,' ');                                                          //brancos.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO R'}
      SegR:='341';
      SegR:=SegR+'0001';                                                              //lote de serviço.
      SegR:=SegR+'3';                                                                 //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegR:=SegR+AlignText(IntToStr(Contador),'0',5,taRight);                         //numero sequencial do registro no lote.
      SegR:=SegR+'R';                                                                 //codigo do segmento. "R".
      SegR:=SegR+' ';                                                                 //uso febraban. brancos.
      SegR:=SegR+Copy(ComboBox2.Text,1,2);                                            //codigo mov. remessa. 01=Entrada de Títulos.
      SegR:=SegR+'0';                                                                 //codigo desc 2.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 2.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 2.
      SegR:=SegR+'0';                                                                 //codigo desc 3.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 3.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 3.
      SegR:=SegR+'2';                                                                 //codigo da multa. 0=nao registra, 1=valor fixo, 2=valor percentual.
      SegR:=SegR+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                       //data da multa.
      SegR:=SegR+AlignText(Decimais3(QYBoletosBOL_MULTA.AsExtended,2),'0',13,taRight);//valor/percentual da multa.
      SegR:=SegR+Pads(10,' ');                                                        //brancos.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO1.Value,' ',40,taLeft);              //mensagem 3.
      SegR:=SegR+Pads(60,' ');                                                        //brancos.
      SegR:=SegR+Pads(8,'0');                                                         //codigo ocorrencia sacado.
      SegR:=SegR+Pads(8,'0');                                                         //zeros.
      SegR:=SegR+' ';                                                                 //branco.
      SegR:=SegR+Pads(12,'0');                                                        //zeros.
      SegR:=SegR+'  ';                                                                //brancos.
      SegR:=SegR+'0';                                                                 //zeros.
      SegR:=SegR+Pads(9,' ');                                                         //uso febraban.
      {$ENDREGION}

      //Inc(Contador);
      {$REGION 'SEGMENTO S'}
      //Itaú nao utiliza o segmento S?
      //SegS:='341';                                                              //codigo do banco.
      //SegS:=SegS+'0001';                                                        //lote de serviço.
      //SegS:=SegS+'3';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      //SegS:=SegS+AlignText(IntToStr(Contador),'0',5,taRight);                   //numero sequencial do registro no lote.
      //SegS:=SegS+'S';                                                           //codigo do segmento. "S".
      //SegS:=SegS+' ';                                                           //uso febraban. brancos.
      //SegS:=SegS+Copy(ComboBox2.Text,1,2);                                      //codigo mov. remessa. 01=Entrada de Títulos.
      //SegS:=SegS+'3';                                                           //tipo de impressão; //3=cedente imprime.
      //SegS:=SegS+Pads(40,' ');                                                  //mensagem 5.
      //SegS:=SegS+Pads(40,' ');                                                  //mensagem 6.
      //SegS:=SegS+Pads(40,' ');                                                  //mensagem 7.
      //SegS:=SegS+Pads(40,' ');                                                  //mensagem 8.
      //SegS:=SegS+Pads(40,' ');                                                  //mensagem 9.
      //SegS:=SegS+Pads(22,' ');                                                  //uso febraban.
      {$ENDREGION}

      Inc(QtdeTitulos);
      RemessaCNAB240.Add(SegP);
      RemessaCNAB240.Add(SegQ);
      RemessaCNAB240.Add(SegR);
      //RemessaCNAB240.Add(SegS);
    end;

    {$REGION 'TRAILER DE LOTE'}
    TLote:='341';                                                               //codigo do banco.
    TLote:=TLote+'0001';                                                        //lote de serviço.
    TLote:=TLote+'5';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TLote:=TLote+Pads(9,' ');                                                   //uso febraban.
    TLote:=TLote+AlignText(IntToStr(Contador+2),'0',6,taRight);                 //quantidade de registros no lote. (contador + header + trailer).
    TLote:=TLote+AlignText(IntToStr(QtdeTitulos),'0',6,taRight);                //quantidade de titulos.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade vinculada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos vinculada.
    TLote:=TLote+Pads(46,'0');                                                  //zeros.
    TLote:=TLote+Pads(8,' ');                                                   //numero aviso de lançamento.
    TLote:=TLote+Pads(117,' ');                                                 //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TLote);

    {$REGION 'TRAILER DE ARQUIVO'}
    TArquivo:='341';                                                            //codigo do banco.
    TArquivo:=TArquivo+'9999';                                                  //lote de serviço.
    TArquivo:=TArquivo+'9';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TArquivo:=TArquivo+Pads(9,' ');                                             //uso febraban.
    TArquivo:=TArquivo+'000001';                                                //quantidade de lotes.
    TArquivo:=TArquivo+AlignText(IntToStr(Contador+4),'0',6,taRight);           //quantidade de registros no arquivo. (contador + (header e trailer de lote) + (header e trailer de arquivo).
    TArquivo:=TArquivo+Pads(6,'0');                                             //quantidade de contas para conciliação.
    TArquivo:=TArquivo+Pads(205,' ');                                           //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TArquivo);

    RemessaCNAB240.SaveToFile(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\'+Arquivo);

    Application.ProcessMessages;
    //Atualiza boletos.
    Delete(Codigos,1,1); //retira a primeira virgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('S')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;

    //...
    DMS.QYContas.Close;
    QYBoletos.Close;
    QYBoletosItens.Close;
    Edit3.Text:='';
    Edit4.Text:='';
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessas.Last;
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);

    MessageDlg('Arquivo de remessa gerado com '+IntToStr(I)+' boleto(s).',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosRemessas.CriarRemessaCNAB240_Santander;
var
  Codigos, Data, Hora, Arquivo, HArquivo, HLote, TArquivo, TLote, SegP, SegQ, SegR, SegS: String;
  A,M,D,HH,MM,SS,MS: Word;
  Contador, QtdeTitulos, I: Integer;
  RemessaCNAB240: TStringList;
begin
  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    Contador:=0;
    QtdeTitulos:=0;
    DecodeDate(Date,A,M,D);
    DecodeTime(Time,HH,MM,SS,MS);
    Data:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(A);
    Hora:=AlignText(IntToStr(HH),'0',2,taRight)+AlignText(IntTostr(MM),'0',2,taRight)+AlignText(IntToStr(SS),'0',2,taRight);

    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(A)+'-'+
    AlignText(IntToStr(M),'0',2,taRight)+'-'+
    AlignText(IntToStr(D),'0',2,taRight)+'.txt';
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;

    RemessaCNAB240:=TStringList.Create;

    {$REGION 'HEADER DE ARQUIVO'}
    HArquivo:='033';                                                                           //numero do banco.
    HArquivo:=HArquivo+'0000';                                                                 //lote de serviço.
    HArquivo:=HArquivo+'0';                                                                    //tipo de registro.
    HArquivo:=HArquivo+Pads(8,' ');                                                            //uso febraban.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HArquivo:=HArquivo+'2' else
    HArquivo:=HArquivo+'1';                                                                    //2=juridica 1=fisica.
    HArquivo:=HArquivo+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',15,taRight); //cnpj ou cpf.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CONVENIO.Value,' ',15,taLeft);                //convenio - código de transmissão.
    HArquivo:=HArquivo+Pads(25,' ');                                                           //brancos.
    HArquivo:=HArquivo+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                    //nome da empresa.
    HArquivo:=HArquivo+AlignText(DMS.QYContasBAN_NOME.Value,' ',30,taLeft);                    //nome do banco/cooperativa.
    HArquivo:=HArquivo+Pads(10,' ');                                                           //uso febraban.
    HArquivo:=HArquivo+'1';                                                                    //1=remessa 2=retorno.
    HArquivo:=HArquivo+Data;                                                                   //data geração.
    HArquivo:=HArquivo+Pads(6,' ');                                                            //nao vai hora?
    HArquivo:=HArquivo+'000001';                                                               //numero sequencial arquivo.
    HArquivo:=HArquivo+'040';                                                                  //versão do layout. parametrizar?
    HArquivo:=HArquivo+Pads(74,' ');                                                           //brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HArquivo);

    {$REGION 'HEADER DE LOTE'}
    HLote:='033';                                                                         //numero do banco.
    HLote:=HLote+'0001';                                                                  //lote de serviço.
    HLote:=HLote+'1';                                                                     //tipo de registro. 1=header de lote.
    HLote:=HLote+'R';                                                                     //tipo de operação. (?).
    HLote:=HLote+'01';                                                                    //tipo de serviço.
    HLote:=HLote+'  ';                                                                    //exclusivo febraban. brancos.
    HLote:=HLote+'030';                                                                   //layout do lote. parametrizar?
    HLote:=HLote+' ';                                                                     //uso febraban. brancos.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HLote:=HLote+'2' else
    HLote:=HLote+'1';                                                                     //tipo inscrição. 2=juridica 1=fisica.
    HLote:=HLote+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',15,taRight);  //cnpj ou cpf.
    HLote:=HLote+Pads(20,' ');                                                            //brancos.
    HLote:=HLote+AlignText(DMS.QYContasCON_CONVENIO.Value,' ',15,taLeft);                 //convenio - código de transmissão.
    HLote:=HLote+Pads(5,' ');                                                             //brancos.
    HLote:=HLote+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                     //nome da empresa.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem1.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem2.
    HLote:=HLote+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',8,taRight);       //numero remessa/retorno.
    HLote:=HLote+Data;                                                                    //data gravação.
    HLote:=HLote+Pads(41,' ');                                                            //brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HLote);

    QYBoletosItens.First;
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);
      Inc(Contador);

      {$REGION 'SEGMENTO P'}
      SegP:='033';                                                                        //numero do banco.
      SegP:=SegP+'0001';                                                                  //lote de serviço.
      SegP:=SegP+'3';                                                                     //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegP:=SegP+AlignText(IntToStr(Contador),'0',5,taRight);                             //numero sequencial do registro no lote.
      SegP:=SegP+'P';                                                                     //codigo do segmento. "P".
      SegP:=SegP+' ';                                                                     //uso febraban.
      SegP:=SegP+Copy(ComboBox2.Text,1,2);                                                //codigo mov. remessa. 01=Entrada de Títulos.
      SegP:=SegP+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',4,taRight);                  //agencia.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),' ',1,taRight);  //agencia dv.
      SegP:=SegP+AlignText(DMS.QYContasCON_CONTA.Value,'0',9,taRight);                    //conta corrente.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),' ',1,taRight);    //conta corrente dv.
      SegP:=SegP+AlignText(DMS.QYContasCON_CONTA.Value,'0',9,taRight);                    //conta cobrança FIDC. repetir?
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),' ',1,taRight);    //dv conta cobrança FIDC. repetir?
      SegP:=SegP+'  ';                                                                    //brancos.
      SegP:=SegP+AlignText(QYBoletosBOL_NOSSONUMERO.Value,'0',13,taRight);                //nosso numero. 13 digitos.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_MODALIDADE.Value),'0',1,taRight);        //modalidade.
      SegP:=SegP+'1';                                                                     //forma de cadastramento.. 1=cobranca registrada 2=sem registro 3=cobrança simples.
      SegP:=SegP+'1';                                                                     //tipo documento 1=tradicional 2=escritural.
      SegP:=SegP+' ';                                                                     //branco
      SegP:=SegP+' ';                                                                     //branco.
      SegP:=SegP+AlignText(IntToStr(QYBOletosBOL_CODIGO.Value),' ',15,taLeft);            //numero documento.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTVENCIMENTO.Value);                          //data de vencimento.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_VALORTOTAL.AsExtended,2),'0',15,taRight);    //valor do titulo.
      SegP:=SegP+Pads(5,'0');                                                             //agencia cobradora.
      SegP:=SegP+' ';                                                                     //agencia dv. cobradora.
      SegP:=SegP+Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2);                                 //especie documento. 02=DM, 03=DMI...
      SegP:=SegP+QYBoletosBOL_ACEITE.Value;                                               //aceite A ou N.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTCADASTRO.Value);                            //data de emissão.
      SegP:=SegP+QYBoletosBOL_MORACODIGO.Value;                                           //codigo de mora. 1=valor por dia. 2=taxa mensal, 3=isento.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                           //data juros de mora.

      if QYBoletosBOL_MORACODIGO.Value='2' then
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_MORAJUROS.AsExtended,5),'0',15,taRight) else //juros de mora por dia/taxa. valor diário ou taxa mensal
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_MORAJUROS.AsExtended,2),'0',15,taRight);

      if QYBoletosBOL_DESCTIPO.Value='0 - SEM DESCONTO' then
      begin
        SegP:=SegP+'0';                                                                   //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+Pads(8,'0');                                                           //data desc 1.
        SegP:=SegP+Pads(15,'0');                                                          //valor/percentual desc.
      end else
      begin
        SegP:=SegP+Copy(QYBoletosBOL_DESCTIPO.Value,1,1);                                 //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+DataSemBarras(QYBoletosBOL_DTDESCONTO.Value);                          //data desc 1.
        if QYBoletosBOL_DESCTIPO.Value='1 - VALOR FIXO ATE A DATA INFORMADA' then
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCVALOR.AsExtended,2),'0',15,taRight) else //valor/percentual desc.
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCPORC.AsExtended,2),'0',15,taRight);
      end;
      SegP:=SegP+Pads(15,'0');                                                            //valor iof;
      SegP:=SegP+Pads(15,'0');                                                            //valor abatimento.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',25,taLeft);            //identificação do titulo na empresa.
      SegP:=SegP+IntToStr(QYBoletosBOL_PROTESTOCODIGO.Value);                             //código para protesto. 1=protestar dias corridos 2=negativar serasa. 3=nao protestar.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASPROTESTO.Value),'0',2,taRight);      //dias para protesto.
      SegP:=SegP+IntToStr(QYBoletosBOL_BAIXACODIGO.Value);                                                                      //zero
      SegP:=SegP+'0';                                                                     //zero fixo
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASBAIXA.Value),'0',2,taRight);         //dias baixa.
      SegP:=SegP+'00';                                                                    //moeda. 00=real.
      SegP:=SegP+Pads(11,' ');                                                            //zeros.
      {$ENDREGION}

      {$REGION 'SEGMENTO Q'}
      if ComboBox2.Text='01 - ENTRADA DE TITULO' then
      begin
        Inc(Contador);
        SegQ:='033';
        SegQ:=SegQ+'0001';                                                                //lote de serviço.
        SegQ:=SegQ+'3';                                                                   //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
        SegQ:=SegQ+AlignText(IntToStr(Contador),'0',5,taRight);                           //numero sequencial do registro no lote.
        SegQ:=SegQ+'Q';                                                                   //codigo do segmento. "Q".
        SegQ:=SegQ+' ';                                                                   //uso febraban. brancos.
        SegQ:=SegQ+Copy(ComboBox2.Text,1,2);                                              //codigo mov. remessa. 01=Entrada de Títulos.
        if QYBoletosBOL_TIPOPESSOA.Value='J' then
        begin
          SegQ:=SegQ+'2';                                                                 //tipo inscrição. 1=juridica 2=fisica.
          SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CNPJ.Value),'0',15,taRight); //CNPJ.
        end else
        begin
          SegQ:=SegQ+'1';                                                                 //tipo inscrição. 1=juridica 2=fisica.
          SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CPF.Value),'0',15,taRight);  //CPF.
        end;
        SegQ:=SegQ+AlignText(QYBoletosBOL_NOME.Value,' ',40,taLeft);                      //Nome.
        SegQ:=SegQ+AlignText(QYBoletosBOL_ENDERECO.Value+' '+QYBoletosBOL_NUMERO.Value,' ',40,taLeft); //Endereço.
        SegQ:=SegQ+AlignText(QYBoletosBOL_BAIRRO.Value,' ',15,taLeft);                    //bairro.
        SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,1,5);                                      //cep.
        SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,7,3);                                      //cep sufixo.
        SegQ:=SegQ+AlignText(QYBoletosBOL_CIDADE.Value,' ',15,taLeft);                    //cidade.
        SegQ:=SegQ+QYBoletosBOL_ESTADO.Value;                                             //estado.
        SegQ:=SegQ+'0';                                                                   //avalista tipo inscrição.
        SegQ:=SegQ+Pads(15,'0');                                                          //avalista cnpj ou cpf.
        SegQ:=SegQ+Pads(40,' ');                                                          //avalista nome.
        SegQ:=SegQ+Pads(3,'0');                                                           //id carnê.
        SegQ:=SegQ+Pads(3,'0');                                                           //parcela.
        SegQ:=SegQ+Pads(3,'0');                                                           //parcela total.
        SegQ:=SegQ+Pads(3,'0');                                                           //numero plano.
        SegQ:=SegQ+Pads(19,' ');                                                          //brancos.
      end else
      SegQ:='';
      {$ENDREGION}

      {$REGION 'SEGMENTO R'}
      if ComboBox2.Text='01 - ENTRADA DE TITULO' then
      begin
        Inc(Contador);
        SegR:='033';
        SegR:=SegR+'0001';                                                              //lote de serviço.
        SegR:=SegR+'3';                                                                 //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
        SegR:=SegR+AlignText(IntToStr(Contador),'0',5,taRight);                         //numero sequencial do registro no lote.
        SegR:=SegR+'R';                                                                 //codigo do segmento. "R".
        SegR:=SegR+' ';                                                                 //uso febraban. brancos.
        SegR:=SegR+Copy(ComboBox2.Text,1,2);                                            //codigo mov. remessa. 01=Entrada de Títulos.
        SegR:=SegR+'0';                                                                 //codigo desc 2.
        SegR:=SegR+Pads(8,'0');                                                         //data desc 2.
        SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 2.
        SegR:=SegR+Pads(24,' ');                                                        //brancos.
        SegR:=SegR+'2';                                                                 //codigo da multa. 2=percentual.
        SegR:=SegR+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                       //data da multa.
        SegR:=SegR+AlignText(Decimais3(QYBoletosBOL_MULTA.AsExtended,2),'0',15,taRight);//valor/percentual da multa.
        SegR:=SegR+Pads(10,' ');                                                        //info ao sacado.
        SegR:=SegR+Pads(40,' ');                                                        //mensagem 3.
        SegR:=SegR+Pads(40,' ');                                                        //mensagem 4.
        SegR:=SegR+Pads(61,' ');                                                        //brancos.
      end else
      SegR:='';
      {$ENDREGION}

      {$REGION 'SEGMENTO S'}
      if ComboBox2.Text='01 - ENTRADA DE TITULO' then
      begin
        Inc(Contador);
        SegS:='033';                                                              //codigo do banco.
        SegS:=SegS+'0001';                                                        //lote de serviço.
        SegS:=SegS+'3';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
        SegS:=SegS+AlignText(IntToStr(Contador),'0',5,taRight);                   //numero sequencial do registro no lote.
        SegS:=SegS+'S';                                                           //codigo do segmento. "S".
        SegS:=SegS+' ';                                                           //uso febraban. brancos.
        SegS:=SegS+Copy(ComboBox2.Text,1,2);                                      //codigo mov. remessa. 01=Entrada de Títulos.

        SegS:=SegS+'2';                                                           //tipo de impressão; //3=cedente imprime.
        SegS:=SegS+Pads(40,' ');                                                  //mensagem 5.
        SegS:=SegS+Pads(40,' ');                                                  //mensagem 6.
        SegS:=SegS+Pads(40,' ');                                                  //mensagem 7.
        SegS:=SegS+Pads(40,' ');                                                  //mensagem 8.
        SegS:=SegS+Pads(40,' ');                                                  //mensagem 9.
        SegS:=SegS+Pads(22,' ');                                                  //uso febraban.
      end else
      SegS:='';
      {$ENDREGION}

      Inc(QtdeTitulos);
      RemessaCNAB240.Add(SegP);
      if SegQ<>'' then RemessaCNAB240.Add(SegQ);
      if SegR<>'' then RemessaCNAB240.Add(SegR);
      if SegS<>'' then RemessaCNAB240.Add(SegS);
    end;

    {$REGION 'TRAILER DE LOTE'}
    TLote:='033';                                                               //codigo do banco.
    TLote:=TLote+'0001';                                                        //lote de serviço.
    TLote:=TLote+'5';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TLote:=TLote+Pads(9,' ');                                                   //uso febraban.
    TLote:=TLote+AlignText(IntToStr(Contador+2),'0',6,taRight);                 //quantidade de registros no lote. (contador + header + trailer).
    TLote:=TLote+Pads(217,' ');                                                 //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TLote);

    {$REGION 'TRAILER DE ARQUIVO'}
    TArquivo:='033';                                                            //codigo do banco.
    TArquivo:=TArquivo+'9999';                                                  //lote de serviço.
    TArquivo:=TArquivo+'9';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TArquivo:=TArquivo+Pads(9,' ');                                             //uso febraban.
    TArquivo:=TArquivo+'000001';                                                //quantidade de lotes.
    TArquivo:=TArquivo+AlignText(IntToStr(Contador+4),'0',6,taRight);           //quantidade de registros no arquivo. (contador + (header e trailer de lote) + (header e trailer de arquivo).
    TArquivo:=TArquivo+Pads(211,' ');                                           //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TArquivo);

    RemessaCNAB240.SaveToFile(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\'+Arquivo);

    Application.ProcessMessages;
    //Atualiza boletos.
    Delete(Codigos,1,1); //retira a primeira virgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('S')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;
    //...
    DMS.QYContas.Close;
    QYBoletos.Close;
    QYBoletosItens.Close;
    Edit3.Text:='';
    Edit4.Text:='';
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessas.Last;
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);

    MessageDlg('Arquivo de remessa gerado com '+IntToStr(I)+' boleto(s).',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosRemessas.CriarRemessaCNAB240_Sicoob;
var
  Codigos, Data, Hora, Arquivo, HArquivo, HLote, TArquivo, TLote, SegP, SegQ, SegR, SegS: String;
  A,M,D,HH,MM,SS,MS: Word;
  Contador, QtdeTitulos, I: Integer;
  RemessaCNAB240: TStringList;
begin
  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    Contador:=0;
    QtdeTitulos:=0;
    DecodeDate(Date,A,M,D);
    DecodeTime(Time,HH,MM,SS,MS);
    Data:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(A);
    Hora:=AlignText(IntToStr(HH),'0',2,taRight)+AlignText(IntTostr(MM),'0',2,taRight)+AlignText(IntToStr(SS),'0',2,taRight);

    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(A)+'-'+
    AlignText(IntToStr(M),'0',2,taRight)+'-'+
    AlignText(IntToStr(D),'0',2,taRight)+'.txt';
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;

    RemessaCNAB240:=TStringList.Create;

    {$REGION 'HEADER DE ARQUIVO'}
    HArquivo:='756';                                                                           //numero do banco.
    HArquivo:=HArquivo+'0000';                                                                 //lote de serviço.
    HArquivo:=HArquivo+'0';                                                                    //tipo de registro.
    HArquivo:=HArquivo+Pads(9,' ');                                                            //uso febraban.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HArquivo:=HArquivo+'2' else
    HArquivo:=HArquivo+'1';                                                                    //2=juridica 1=fisica.
    HArquivo:=HArquivo+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',14,taRight); //cnpj ou cpf.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CONVENIO.Value,' ',20,taLeft);                //convenio.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                 //agencia.
    HArquivo:=HArquivo+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),'0',1,taRight); //agencia dv.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                  //conta corrente.
    HArquivo:=HArquivo+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);   //conta corrente dv.
    HArquivo:=HArquivo+' ';                                                                    //dv ag/conta.
    HArquivo:=HArquivo+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                    //nome da empresa.
    HArquivo:=HArquivo+AlignText(DMS.QYContasBAN_NOME.Value,' ',30,taLeft);                    //nome do banco/cooperativa.
    HArquivo:=HArquivo+Pads(10,' ');                                                           //uso febraban.
    HArquivo:=HArquivo+'1';                                                                    //1=remessa 2=retorno.
    HArquivo:=HArquivo+Data;                                                                   //data geração.
    HArquivo:=HArquivo+Hora;                                                                   //hora geração.
    //HArquivo:=HArquivo+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',6,taRight);      //numero sequencial arquivo.
    HArquivo:=HArquivo+'000001';                                                               //numero sequencial arquivo.
    HArquivo:=HArquivo+'081';                                                                  //versão do layout. parametrizar?
    HArquivo:=HArquivo+Pads(5,'0');                                                            //densidade do arquivo. (?).
    HArquivo:=HArquivo+Pads(20,' ');                                                           //reservado cooperativa.
    HArquivo:=HArquivo+Pads(20,' ');                                                           //reservado empresa.
    HArquivo:=HArquivo+Pads(29,' ');                                                           //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(HArquivo);

    {$REGION 'HEADER DE LOTE'}
    HLote:='756';                                                                         //numero do banco.
    HLote:=HLote+'0001';                                                                  //lote de serviço.
    HLote:=HLote+'1';                                                                     //tipo de registro. 1=header de lote.
    HLote:=HLote+'R';                                                                     //tipo de operação. (?).
    HLote:=HLote+'01';                                                                    //tipo de serviço.
    HLote:=HLote+'  ';                                                                    //exclusivo febraban. brancos.
    HLote:=HLote+'040';                                                                   //layout do lote. parametrizar?
    HLote:=HLote+' ';                                                                     //uso febraban. brancos.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HLote:=HLote+'2' else
    HLote:=HLote+'1';                                                                     //tipo inscrição. 2=juridica 1=fisica.
    HLote:=HLote+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',15,taRight);  //cnpj ou cpf.
    HLote:=HLote+Pads(20,' ');                                                            //convenio.
    HLote:=HLote+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
    HLote:=HLote+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),'0',1,taRight);  //agencia dv.
    HLote:=HLote+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                   //conta corrente.
    HLote:=HLote+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);    //conta corrente dv.
    HLote:=HLote+' ';                                                                     //dv ag/conta.
    HLote:=HLote+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                     //nome da empresa.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem1.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem2.
    HLote:=HLote+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',8,taRight);       //numero remessa/retorno.
    HLote:=HLote+Data;                                                                    //data gravação.
    HLote:=HLote+Pads(8,'0');                                                             //data crédito.
    HLote:=HLote+Pads(33,' ');                                                            //uso febraban. brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HLote);

    QYBoletosItens.First;
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);
      Inc(Contador);

      {$REGION 'SEGMENTO P'}
      SegP:='756';                                                                        //numero do banco.
      SegP:=SegP+'0001';                                                                  //lote de serviço.
      SegP:=SegP+'3';                                                                     //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegP:=SegP+AlignText(IntToStr(Contador),'0',5,taRight);                             //numero sequencial do registro no lote.
      SegP:=SegP+'P';                                                                     //codigo do segmento. "P".
      SegP:=SegP+' ';                                                                     //uso febraban.
      SegP:=SegP+Copy(ComboBox2.Text,1,2);                                                //codigo mov. remessa. 01=Entrada de Títulos.
      SegP:=SegP+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),'0',1,taRight);  //agencia dv.
      SegP:=SegP+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                   //conta corrente.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);    //conta corrente dv.
      SegP:=SegP+' ';                                                                     //dv ag/conta.

      SegP:=SegP+'00'+Copy(QYBoletosBOL_NOSSONUMERO.Value,15,8);                          //nosso numero. 1a10 numero titulo - 11a12 01=parcela unica. 13a14 modalidade 15a15 4-A4 sem envelopamento.
      SegP:=SegP+'01';                                                                    //01-parcela unica.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_MODALIDADE.Value),'0',2,taRight);        //modalidade.
      SegP:=SegP+'4';                                                                     //4=A4 sem envelopamento.
      SegP:=SegP+Pads(5,' ');                                                             //para completar tamanho 20.

      SegP:=SegP+IntToStr(QYBoletosBOL_CARTEIRACOD.Value);                                //codigo carteira. 1=cobrança simples. 2=vinculada. 3=caucionada. 4=descontada.
      SegP:=SegP+'0';                                                                     //forma cad. tit. no banco. 1=com registro.
      SegP:=SegP+' ';                                                                     //tipo documento. 1=tradicional.
      SegP:=SegP+'2';                                                                     //ident. emissão. 1=sicoob emite, 2=beneficiario emite.
      SegP:=SegP+'2';                                                                     //ident. disttribuição. 1=sicoob envia. 2=beneficiario envia.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',15,taLeft);            //numero do documento.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTVENCIMENTO.Value);                          //data de vencimento.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_VALORTOTAL.AsExtended,2),'0',15,taRight);    //valor do titulo.
      SegP:=SegP+Pads(5,'0');                                                             //agencia cobradora.
      SegP:=SegP+' ';                                                                     //agencia dv. cobradora.
      SegP:=SegP+Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2);                                 //especie documento. 02=DM, 03=DMI...
      SegP:=SegP+QYBoletosBOL_ACEITE.Value;                                               //aceite A ou N.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTCADASTRO.Value);                            //data de emissão.
      SegP:=SegP+QYBoletosBOL_MORACODIGO.Value;                                           //codigo de mora. 1=valor por dia. 2=taxa mensal, 3=isento.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                           //data juros de mora.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_MORAJUROS.AsExtended,2),'0',15,taRight);     //juros de mora por dia/taxa. valor diário ou taxa mensal
      if QYBoletosBOL_DESCTIPO.Value='0 - SEM DESCONTO' then
      begin
        SegP:=SegP+'0';                                                                   //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+Pads(8,'0');                                                           //data desc 1.
        SegP:=SegP+Pads(15,'0');                                                          //valor/percentual desc.
      end else
      begin
        SegP:=SegP+Copy(QYBoletosBOL_DESCTIPO.Value,1,1);                                 //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+DataSemBarras(QYBoletosBOL_DTDESCONTO.Value);                          //data desc 1.
        if QYBoletosBOL_DESCTIPO.Value='1 - VALOR FIXO ATE A DATA INFORMADA' then
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCVALOR.AsExtended,2),'0',15,taRight) else //valor/percentual desc.
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCPORC.AsExtended,2),'0',15,taRight);
      end;
      SegP:=SegP+Pads(15,'0');                                                            //valor iof;
      SegP:=SegP+Pads(15,'0');                                                            //valor abatimento.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',25,taLeft);            //identificação do titulo na empresa.
      SegP:=SegP+IntToStr(QYBoletosBOL_PROTESTOCODIGO.Value);                             //código para protesto. 1=protestar dias corridos 2=negativar serasa. 3=nao protestar.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASPROTESTO.Value),'0',2,taRight);      //dias para protesto.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_BAIXACODIGO.Value),'0',1,taRight);       //codigo para baixa/devolução. 1=baixar/devolver 2=nao baixar/devolver. ESTAVA 0

      if QYBoletosBOL_DIASBAIXA.IsNull then
      SegP:=SegP+Pads(3,' ') else                                                         //dias pra baixa/devolução.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASBAIXA.Value),'0',3,taRight);         //dias pra baixa/devolução.

      SegP:=SegP+'09';                                                                    //codigo moeda.
      SegP:=SegP+Pads(10,'0');                                                            //numero contrato. 10 zeros.
      SegP:=SegP+' ';                                                                     //uso livre.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO Q'}
      SegQ:='756';
      SegQ:=SegQ+'0001';                                                                //lote de serviço.
      SegQ:=SegQ+'3';                                                                   //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegQ:=SegQ+AlignText(IntToStr(Contador),'0',5,taRight);                           //numero sequencial do registro no lote.
      SegQ:=SegQ+'Q';                                                                   //codigo do segmento. "Q".
      SegQ:=SegQ+' ';                                                                   //uso febraban. brancos.
      SegQ:=SegQ+Copy(ComboBox2.Text,1,2);                                              //codigo mov. remessa. 01=Entrada de Títulos.
      if QYBoletosBOL_TIPOPESSOA.Value='J' then
      begin
        SegQ:=SegQ+'2';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CNPJ.Value),'0',15,taRight); //CNPJ.
      end else
      begin
        SegQ:=SegQ+'1';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CPF.Value),'0',15,taRight);  //CPF.
      end;
      SegQ:=SegQ+AlignText(QYBoletosBOL_NOME.Value,' ',40,taLeft);                      //Nome.
      SegQ:=SegQ+AlignText(QYBoletosBOL_ENDERECO.Value+' '+QYBoletosBOL_NUMERO.Value,' ',40,taLeft); //Endereço.
      SegQ:=SegQ+AlignText(QYBoletosBOL_BAIRRO.Value,' ',15,taLeft);                    //bairro.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,1,5);                                      //cep.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,7,3);                                      //cep sufixo.
      SegQ:=SegQ+AlignText(QYBoletosBOL_CIDADE.Value,' ',15,taLeft);                    //cidade.
      SegQ:=SegQ+QYBoletosBOL_ESTADO.Value;                                             //estado.
      SegQ:=SegQ+'0';                                                                   //avalista tipo inscrição.
      SegQ:=SegQ+Pads(15,'0');                                                          //avalista cnpj ou cpf.
      SegQ:=SegQ+Pads(40,' ');                                                          //avalista nome.
      SegQ:=SegQ+Pads(3,'0');                                                           //banco correspondente.
      SegQ:=SegQ+Pads(20,' ');                                                          //nosso numero bco. correspondente.
      SegQ:=SegQ+Pads(8,' ');                                                           //uso febraban.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO R'}
      SegR:='756';
      SegR:=SegR+'0001';                                                              //lote de serviço.
      SegR:=SegR+'3';                                                                 //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegR:=SegR+AlignText(IntToStr(Contador),'0',5,taRight);                         //numero sequencial do registro no lote.
      SegR:=SegR+'R';                                                                 //codigo do segmento. "R".
      SegR:=SegR+' ';                                                                 //uso febraban. brancos.
      SegR:=SegR+Copy(ComboBox2.Text,1,2);                                            //codigo mov. remessa. 01=Entrada de Títulos.
      SegR:=SegR+'0';                                                                 //codigo desc 2.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 2.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 2.
      SegR:=SegR+'0';                                                                 //codigo desc 3.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 3.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 3.
      SegR:=SegR+'2';                                                                 //codigo da multa.
      SegR:=SegR+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                       //data da multa.
      SegR:=SegR+AlignText(Decimais3(QYBoletosBOL_MULTA.AsExtended,2),'0',15,taRight);//valor/percentual da multa.
      SegR:=SegR+Pads(10,' ');                                                        //info ao sacado.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO1.Value,' ',40,taLeft);              //mensagem 3.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO2.Value,' ',40,taLeft);              //mensagem 4.
      SegR:=SegR+Pads(20,' ');                                                        //uso febraban.
      SegR:=SegR+Pads(8,'0');                                                         //codigo ocorrencia sacado.
      SegR:=SegR+Pads(3,'0');                                                         //codigo banco debito.
      SegR:=SegR+Pads(5,'0');                                                         //agencia debito.
      SegR:=SegR+' ';                                                                 //agencia dv debito.
      SegR:=SegR+Pads(12,'0');                                                        //conta corrente debito.
      SegR:=SegR+' ';                                                                 //conta corrente dv debito.
      SegR:=SegR+' ';                                                                 //dv ag/conta debito.
      SegR:=SegR+'0';                                                                 //aviso para debito autom. 2=nao emite aviso.
      SegR:=SegR+Pads(9,' ');                                                         //uso febraban.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO S'}
      SegS:='756';                                                              //codigo do banco.
      SegS:=SegS+'0001';                                                        //lote de serviço.
      SegS:=SegS+'3';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegS:=SegS+AlignText(IntToStr(Contador),'0',5,taRight);                   //numero sequencial do registro no lote.
      SegS:=SegS+'S';                                                           //codigo do segmento. "S".
      SegS:=SegS+' ';                                                           //uso febraban. brancos.
      SegS:=SegS+Copy(ComboBox2.Text,1,2);                                      //codigo mov. remessa. 01=Entrada de Títulos.
      SegS:=SegS+'3';                                                           //tipo de impressão; //3=cedente imprime.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 5.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 6.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 7.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 8.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 9.
      SegS:=SegS+Pads(22,' ');                                                  //uso febraban.
      {$ENDREGION}

      Inc(QtdeTitulos);
      RemessaCNAB240.Add(SegP);
      RemessaCNAB240.Add(SegQ);
      RemessaCNAB240.Add(SegR);
      RemessaCNAB240.Add(SegS);
    end;

    {$REGION 'TRAILER DE LOTE'}
    TLote:='756';                                                               //codigo do banco.
    TLote:=TLote+'0001';                                                        //lote de serviço.
    TLote:=TLote+'5';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TLote:=TLote+Pads(9,' ');                                                   //uso febraban.
    TLote:=TLote+AlignText(IntToStr(Contador+2),'0',6,taRight);                 //quantidade de registros no lote. (contador + header + trailer).
    TLote:=TLote+AlignText(IntToStr(QtdeTitulos),'0',6,taRight);                //quantidade de titulos.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade vinculada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos vinculada.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade caucionada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos caucionada.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade descontada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos descontada.
    TLote:=TLote+Pads(8,' ');                                                   //numero aviso de lançamento.
    TLote:=TLote+Pads(117,' ');                                                 //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TLote);

    {$REGION 'TRAILER DE ARQUIVO'}
    TArquivo:='756';                                                            //codigo do banco.
    TArquivo:=TArquivo+'9999';                                                  //lote de serviço.
    TArquivo:=TArquivo+'9';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TArquivo:=TArquivo+Pads(9,' ');                                             //uso febraban.
    TArquivo:=TArquivo+'000001';                                                //quantidade de lotes.
    TArquivo:=TArquivo+AlignText(IntToStr(Contador+4),'0',6,taRight);           //quantidade de registros no arquivo. (contador + (header e trailer de lote) + (header e trailer de arquivo).
    TArquivo:=TArquivo+Pads(6,'0');                                             //quantidade de contas para conciliação.
    TArquivo:=TArquivo+Pads(205,' ');                                           //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TArquivo);

    RemessaCNAB240.SaveToFile(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\'+Arquivo);

    Application.ProcessMessages;
    //Atualiza boletos.
    Delete(Codigos,1,1); //retira a primeira virgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('S')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;
    //...
    DMS.QYContas.Close;
    QYBoletos.Close;
    QYBoletosItens.Close;
    Edit3.Text:='';
    Edit4.Text:='';
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessas.Last;
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);

    MessageDlg('Arquivo de remessa gerado com '+IntToStr(I)+' boleto(s).',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosRemessas.CriarRemessaCNAB240_Sicred;
var
  Codigos, Data, Hora, Arquivo, HArquivo, HLote, TArquivo, TLote, SegP, SegQ, SegR, SegS: String;
  A,M,D,HH,MM,SS,MS: Word;
  Contador, QtdeTitulos, I: Integer;
  RemessaCNAB240: TStringList;
begin
  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    Contador:=0;
    QtdeTitulos:=0;
    DecodeDate(Date,A,M,D);
    DecodeTime(Time,HH,MM,SS,MS);
    Data:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(A);
    Hora:=AlignText(IntToStr(HH),'0',2,taRight)+AlignText(IntTostr(MM),'0',2,taRight)+AlignText(IntToStr(SS),'0',2,taRight);

    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    //sicredi tem regra para o nome de arquivo:
    //CCCCCMDD.XXX
    //CCCCC=Código do beneficiário.
    //M=Código do mes (vide tabela).
    //DD=Dia.
    //XXX=Qualquer coisa. Não será validada. (usamos para o número da remessa - ultimos 3 dígitos).
    //Janeiro a Setembro = 1 a 9.
    //Outubro=O (letra) Novembro=N, Dezembro=D.
    {Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(A)+'-'+
    AlignText(IntToStr(M),'0',2,taRight)+'-'+
    AlignText(IntToStr(D),'0',2,taRight)+'.txt';}


    Arquivo:=AlignText(DMS.QYContasCON_CONTA.Value,'0',5,taRight)+CodigoMesSicredi(M)+AlignText(D.ToString,'0',2,taRight)+'.'+
    ReverseString(Copy(ReverseString(DM2.TBRemessasREM_CODIGO.Value.ToString),1,3)); //inverte, copia 3 casas, e inverte novamente.
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;

    RemessaCNAB240:=TStringList.Create;

    {$REGION 'HEADER DE ARQUIVO'}
    HArquivo:='748';                                                                           //numero do banco.
    HArquivo:=HArquivo+'0000';                                                                 //lote de serviço.
    HArquivo:=HArquivo+'0';                                                                    //tipo de registro.
    HArquivo:=HArquivo+Pads(9,' ');                                                            //uso febraban.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HArquivo:=HArquivo+'2' else
    HArquivo:=HArquivo+'1';                                                                    //2=juridica 1=fisica.
    HArquivo:=HArquivo+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',14,taRight); //cnpj ou cpf.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CONVENIO.Value,' ',20,taLeft);                //convenio.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                 //agencia.
    HArquivo:=HArquivo+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),' ',1,taRight); //agencia dv.
    HArquivo:=HArquivo+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                  //conta corrente.
    HArquivo:=HArquivo+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);   //conta corrente dv.
    HArquivo:=HArquivo+' ';                                                                    //dv ag/conta.
    HArquivo:=HArquivo+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                    //nome da empresa.
    HArquivo:=HArquivo+AlignText(DMS.QYContasBAN_NOME.Value,' ',30,taLeft);                    //nome do banco/cooperativa.
    HArquivo:=HArquivo+Pads(10,' ');                                                           //uso febraban.
    HArquivo:=HArquivo+'1';                                                                    //1=remessa 2=retorno.
    HArquivo:=HArquivo+Data;                                                                   //data geração.
    HArquivo:=HArquivo+Hora;                                                                   //hora geração.
    HArquivo:=HArquivo+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',6,taRight);      //numero sequencial arquivo.
    HArquivo:=HArquivo+'081';                                                                  //versão do layout.
    HArquivo:=HArquivo+'01600';                                                                //densidade do arquivo. (?).
    HArquivo:=HArquivo+Pads(20,' ');                                                           //reservado cooperativa.
    HArquivo:=HArquivo+Pads(20,' ');                                                           //reservado empresa.
    HArquivo:=HArquivo+Pads(29,' ');                                                           //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(HArquivo);

    {$REGION 'HEADER DE LOTE'}
    HLote:='748';                                                                         //numero do banco.
    HLote:=HLote+'0001';                                                                  //lote de serviço.
    HLote:=HLote+'1';                                                                     //tipo de registro. 1=header de lote.
    HLote:=HLote+'R';                                                                     //tipo de operação. (?).
    HLote:=HLote+'01';                                                                    //tipo de serviço.
    HLote:=HLote+'  ';                                                                    //exclusivo febraban. brancos.
    HLote:=HLote+'040';                                                                   //layout do lote.
    HLote:=HLote+' ';                                                                     //uso febraban. brancos.
    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    HLote:=HLote+'2' else
    HLote:=HLote+'1';                                                                     //tipo inscrição. 2=juridica 1=fisica.
    HLote:=HLote+AlignText(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),'0',15,taRight);  //cnpj ou cpf.
    HLote:=HLote+Pads(20,' '); //nao utiliza convenio. AlignText(DMS.QYContasCON_CONVENIO.Value,' ',20,taLeft);                 //convenio.
    HLote:=HLote+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
    HLote:=HLote+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),' ',1,taRight);  //agencia dv.
    HLote:=HLote+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                   //conta corrente.
    HLote:=HLote+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);    //conta corrente dv.
    HLote:=HLote+' ';                                                                     //dv ag/conta.
    HLote:=HLote+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                     //nome da empresa.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem1.
    HLote:=HLote+Pads(40,' ');                                                            //mensagem2.
    HLote:=HLote+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',8,taRight);       //numero remessa/retorno.
    HLote:=HLote+Data;                                                                    //data gravação.
    HLote:=HLote+Pads(8,'0');                                                             //data crédito.
    HLote:=HLote+Pads(33,' ');                                                            //uso febraban. brancos.
    {$ENDREGION}
    RemessaCNAB240.Add(HLote);

    QYBoletosItens.First;
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);
      Inc(Contador);

      {$REGION 'SEGMENTO P'}
      SegP:='748';                                                                        //numero do banco.
      SegP:=SegP+'0001';                                                                  //lote de serviço.
      SegP:=SegP+'3';                                                                     //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegP:=SegP+AlignText(IntToStr(Contador),'0',5,taRight);                             //numero sequencial do registro no lote.
      SegP:=SegP+'P';                                                                     //codigo do segmento. "P".
      SegP:=SegP+' ';                                                                     //uso febraban.
      SegP:=SegP+Copy(ComboBox2.Text,1,2);                                                //codigo mov. remessa. 01=Entrada de Títulos.
      SegP:=SegP+AlignText(DMS.QYContasCON_AGENCIA.Value,'0',5,taRight);                  //agencia.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value),' ',1,taRight);  //agencia dv.
      SegP:=SegP+AlignText(DMS.QYContasCON_CONTA.Value,'0',12,taRight);                   //conta corrente.
      SegP:=SegP+AlignText(IntToStr(DMS.QYContasCON_CONTADIGITO.Value),'0',1,taRight);    //conta corrente dv.
      SegP:=SegP+' ';                                                                     //dv ag/conta.
      SegP:=SegP+AlignText(QYBoletosBOL_NOSSONUMERO.Value,' ',20,taLeft);                 //nosso numero.
      SegP:=SegP+IntToStr(QYBoletosBOL_CARTEIRACOD.Value);                                //codigo carteira. 1=cobrança simples. 2=vinculada. 3=caucionada. 4=descontada.
      SegP:=SegP+'1';                                                                     //forma cad. tit. no banco. 1=com registro.
      SegP:=SegP+'1';                                                                     //tipo documento. 1=tradicional.
      SegP:=SegP+'2';                                                                     //ident. emissão. 1=cooperativa emite, 2=cooperado emite.
      SegP:=SegP+'2';                                                                     //ident. disttribuição. 1=cooperativa envia. 2=cooperado envia. 3=banco envia email. 4=banco envia sms.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',15,taLeft);            //numero do documento.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTVENCIMENTO.Value);                          //data de vencimento.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_VALORTOTAL.AsExtended,2),'0',15,taRight);    //valor do titulo.
      SegP:=SegP+Pads(5,'0');                                                             //agencia cobradora.
      SegP:=SegP+' ';                                                                     //agencia dv. cobradora.
      SegP:=SegP+Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2);                                 //especie documento. 02=DM, 03=DMI...
      SegP:=SegP+QYBoletosBOL_ACEITE.Value;                                               //aceite A ou N.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTCADASTRO.Value);                            //data de emissão.
      SegP:=SegP+QYBoletosBOL_MORACODIGO.Value;                                           //codigo de mora. 1=valor por dia. 2=taxa mensal, 3=isento.
      SegP:=SegP+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                           //data juros de mora.
      SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_MORAJUROS.AsExtended,2),'0',15,taRight);     //juros de mora por dia/taxa.
      if QYBoletosBOL_DESCTIPO.Value='0 - SEM DESCONTO' then
      begin
        SegP:=SegP+'0';                                                                   //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+Pads(8,'0');                                                           //data desc 1.
        SegP:=SegP+Pads(15,'0');                                                          //valor/percentual desc.
      end else
      begin
        SegP:=SegP+Copy(QYBoletosBOL_DESCTIPO.Value,1,1);                                 //codigo desc 1. 0=nao assumira desconto.
        SegP:=SegP+DataSemBarras(QYBoletosBOL_DTDESCONTO.Value);                          //data desc 1.
        if QYBoletosBOL_DESCTIPO.Value='1 - VALOR FIXO ATE A DATA INFORMADA' then
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCVALOR.AsExtended,2),'0',15,taRight) else //valor/percentual desc.
        SegP:=SegP+AlignText(Decimais3(QYBoletosBOL_DESCPORC.AsExtended,2),'0',15,taRight);
      end;
      SegP:=SegP+Pads(15,'0');                                                            //valor iof;
      SegP:=SegP+Pads(15,'0');                                                            //valor abatimento.
      SegP:=SegP+Pads(25,' '); //sicredi nao utiliza AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',25,taLeft);            //identificação do titulo na empresa.
      SegP:=SegP+IntToStr(QYBoletosBOL_PROTESTOCODIGO.Value);                             //código para protesto. 1=protestar dias corridos 2=negativar serasa. 3=nao protestar.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASPROTESTO.Value),'0',2,taRight);      //dias para protesto.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_BAIXACODIGO.Value),'0',1,taRight);       //codigo para baixa/devolução. 1=baixar/devolver 2=nao baixar/devolver. ESTAVA 1.

      if QYBoletosBOL_DIASBAIXA.IsNull then
      SegP:=SegP+Pads(3,' ') else                                                         //dias pra baixa/devolução.
      SegP:=SegP+AlignText(IntToStr(QYBoletosBOL_DIASBAIXA.Value),'0',3,taRight);         //dias pra baixa/devolução.

      SegP:=SegP+'09';                                                                    //codigo moeda.
      SegP:=SegP+Pads(10,'0');                                                            //numero contrato. 10 brancos.
      SegP:=SegP+' ';                                                                     //uso livre.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO Q'}
      SegQ:='748';
      SegQ:=SegQ+'0001';                                                                //lote de serviço.
      SegQ:=SegQ+'3';                                                                   //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegQ:=SegQ+AlignText(IntToStr(Contador),'0',5,taRight);                           //numero sequencial do registro no lote.
      SegQ:=SegQ+'Q';                                                                   //codigo do segmento. "Q".
      SegQ:=SegQ+' ';                                                                   //uso febraban. brancos.
      SegQ:=SegQ+Copy(ComboBox2.Text,1,2);                                              //codigo mov. remessa. 01=Entrada de Títulos.
      if QYBoletosBOL_TIPOPESSOA.Value='J' then
      begin
        SegQ:=SegQ+'2';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CNPJ.Value),'0',15,taRight); //CNPJ.
      end else
      begin
        SegQ:=SegQ+'1';                                                                 //tipo inscrição. 1=juridica 2=fisica.
        SegQ:=SegQ+AlignText(LimparFormatacao(QYBoletosBOL_CPF.Value),'0',15,taRight);  //CPF.
      end;
      SegQ:=SegQ+AlignText(QYBoletosBOL_NOME.Value,' ',40,taLeft);                      //Nome.
      SegQ:=SegQ+AlignText(QYBoletosBOL_ENDERECO.Value+' '+QYBoletosBOL_NUMERO.Value,' ',40,taLeft); //Endereço.
      SegQ:=SegQ+AlignText(QYBoletosBOL_BAIRRO.Value,' ',15,taLeft);                    //bairro.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,1,5);                                      //cep.
      SegQ:=SegQ+Copy(QYBoletosBOL_CEP.Value,7,3);                                      //cep sufixo.
      SegQ:=SegQ+AlignText(QYBoletosBOL_CIDADE.Value,' ',15,taLeft);                    //cidade.
      SegQ:=SegQ+QYBoletosBOL_ESTADO.Value;                                             //estado.
      SegQ:=SegQ+'0';                                                                   //avalista tipo inscrição.
      SegQ:=SegQ+Pads(15,'0');                                                          //avalista cnpj ou cpf.
      SegQ:=SegQ+Pads(40,' ');                                                          //avalista nome.
      SegQ:=SegQ+Pads(3,'0');                                                           //banco correspondente.
      SegQ:=SegQ+Pads(20,' ');                                                          //nosso numero bco. correspondente.
      SegQ:=SegQ+Pads(8,' ');                                                           //uso febraban.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'SEGMENTO R'}
      SegR:='748';
      SegR:=SegR+'0001';                                                              //lote de serviço.
      SegR:=SegR+'3';                                                                 //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegR:=SegR+AlignText(IntToStr(Contador),'0',5,taRight);                         //numero sequencial do registro no lote.
      SegR:=SegR+'R';                                                                 //codigo do segmento. "R".
      SegR:=SegR+' ';                                                                 //uso febraban. brancos.
      SegR:=SegR+Copy(ComboBox2.Text,1,2);                                            //codigo mov. remessa. 01=Entrada de Títulos.
      SegR:=SegR+'0';                                                                 //codigo desc 2.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 2.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 2.
      SegR:=SegR+'0';                                                                 //codigo desc 3.
      SegR:=SegR+Pads(8,'0');                                                         //data desc 3.
      SegR:=SegR+Pads(15,'0');                                                        //valor/percentual desc 3.
      SegR:=SegR+'2';                                                                 //codigo da multa. 2=percentual.
      SegR:=SegR+DataSemBarras(QYBoletosBOL_DTJUROSAPOS.Value);                       //data da multa.
      SegR:=SegR+AlignText(Decimais3(QYBoletosBOL_MULTA.AsExtended,2),'0',15,taRight);//valor/percentual da multa.
      SegR:=SegR+Pads(10,' ');                                                        //info ao sacado.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO1.Value,' ',40,taLeft);              //mensagem 3.
      SegR:=SegR+AlignText(QYBoletosBOL_INSTRUCAO2.Value,' ',40,taLeft);              //mensagem 4.
      SegR:=SegR+Pads(20,' ');                                                        //uso febraban.
      SegR:=SegR+Pads(8,'0');                                                         //codigo ocorrencia sacado.
      SegR:=SegR+Pads(3,'0');                                                         //codigo banco debito.
      SegR:=SegR+Pads(5,'0');                                                         //agencia debito.
      SegR:=SegR+' ';                                                                 //agencia dv debito.
      SegR:=SegR+Pads(12,'0');                                                        //conta corrente debito.
      SegR:=SegR+' ';                                                                 //conta corrente dv debito.
      SegR:=SegR+' ';                                                                 //dv ag/conta debito.
      SegR:=SegR+'0';                                                                 //aviso para debito autom. 2=nao emite aviso.
      SegR:=SegR+Pads(9,' ');                                                         //uso febraban.
      {$ENDREGION}

      //Inc(Contador);
      {$REGION 'SEGMENTO S'}
      {SegS:='748';                                                              //codigo do banco.
      SegS:=SegS+'0001';                                                        //lote de serviço.
      SegS:=SegS+'3';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
      SegS:=SegS+AlignText(IntToStr(Contador),'0',5,taRight);                   //numero sequencial do registro no lote.
      SegS:=SegS+'S';                                                           //codigo do segmento. "S".
      SegS:=SegS+' ';                                                           //uso febraban. brancos.
      SegS:=SegS+Copy(ComboBox2.Text,1,2);                                      //codigo mov. remessa. 01=Entrada de Títulos.
      SegS:=SegS+'3';                                                           //tipo de impressão; //3=corpo de instrucoes.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 5.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 6.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 7.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 8.
      SegS:=SegS+Pads(40,' ');                                                  //mensagem 9.
      SegS:=SegS+Pads(22,' ');                                                  //uso febraban. }
      {$ENDREGION}

      Inc(QtdeTitulos);
      RemessaCNAB240.Add(SegP);
      RemessaCNAB240.Add(SegQ);
      RemessaCNAB240.Add(SegR);
      //RemessaCNAB240.Add(SegS); //retirado o envio do segS para sicredi.
    end;

    {$REGION 'TRAILER DE LOTE'}
    TLote:='748';                                                               //codigo do banco.
    TLote:=TLote+'0001';                                                        //lote de serviço.
    TLote:=TLote+'5';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TLote:=TLote+Pads(9,' ');                                                   //uso febraban.
    TLote:=TLote+AlignText(IntToStr(Contador+2),'0',6,taRight);                 //quantidade de registros no lote. (contador + header + trailer).
    TLote:=TLote+AlignText(IntToStr(QtdeTitulos),'0',6,taRight);                //quantidade de titulos.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade vinculada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos vinculada.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade caucionada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos caucionada.
    TLote:=TLote+Pads(6,'0');                                                   //quantidade descontada.
    TLote:=TLote+Pads(17,'0');                                                  //total dos titulos descontada.
    TLote:=TLote+Pads(8,' ');                                                   //numero aviso de lançamento.
    TLote:=TLote+Pads(117,' ');                                                 //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TLote);

    {$REGION 'TRAILER DE ARQUIVO'}
    TArquivo:='748';                                                            //codigo do banco.
    TArquivo:=TArquivo+'9999';                                                  //lote de serviço.
    TArquivo:=TArquivo+'9';    //tipo de registro. 0=HArquivo 1=HLote 2=Registros Iniciais do Lote 3=Detalhe 4=Registros Finais do Lote 5=TLote 9=TArquivo.
    TArquivo:=TArquivo+Pads(9,' ');                                             //uso febraban.
    TArquivo:=TArquivo+'000001';                                                //quantidade de lotes.
    TArquivo:=TArquivo+AlignText(IntToStr(Contador+4),'0',6,taRight);           //quantidade de registros no arquivo. (contador + (header e trailer de lote) + (header e trailer de arquivo).
    TArquivo:=TArquivo+Pads(6,'0');                                             //quantidade de contas para conciliação.
    TArquivo:=TArquivo+Pads(205,' ');                                           //uso febraban.
    {$ENDREGION}
    RemessaCNAB240.Add(TArquivo);

    RemessaCNAB240.SaveToFile(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\'+Arquivo);

    Application.ProcessMessages;
    //Atualiza boletos.
    Delete(Codigos,1,1); //retira a primeira virgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('S')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;
    //...
    DMS.QYContas.Close;
    QYBoletos.Close;
    QYBoletosItens.Close;
    Edit3.Text:='';
    Edit4.Text:='';
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessas.Last;
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);

    MessageDlg('Arquivo de remessa gerado com '+IntToStr(I)+' boleto(s).',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosRemessas.CriarRemessaCNAB400_Bradesco;
var
  Codigos, Data, Hora, Arquivo, Reg0, Reg1, Reg2, Reg9: String;
  A,M,D,HH,MM,SS,MS: Word;
  Contador, QtdeTitulos, I: Integer;
  RemessaCNAB400: TStringList;
begin
  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    Contador:=0;
    QtdeTitulos:=0;
    DecodeDate(Date,A,M,D);
    DecodeTime(Time,HH,MM,SS,MS);
    Data:=AlignText(IntToStr(D),'0',2,taRight)+AlignText(IntToStr(M),'0',2,taRight)+IntToStr(A);
    Hora:=AlignText(IntToStr(HH),'0',2,taRight)+AlignText(IntTostr(MM),'0',2,taRight)+AlignText(IntToStr(SS),'0',2,taRight);

    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(A)+'-'+
    AlignText(IntToStr(M),'0',2,taRight)+'-'+
    AlignText(IntToStr(D),'0',2,taRight)+'.txt';
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;

    RemessaCNAB400:=TStringList.Create;

    Inc(Contador);
    {$REGION 'REGISTRO TIPO 0 - HEADER DE ARQUIVO'}
    Reg0:='0';                                                                             //identificação do registro.
    Reg0:=Reg0+'1';                                                                    //identificação do arquivo remessa.
    Reg0:=Reg0+'REMESSA';                                                              //literal REMESSA.
    Reg0:=Reg0+'01';                                                                   //código de serviço.
    Reg0:=Reg0+AlignText('COBRANCA',' ',15,taLeft);                                    //literal do serviço.
    Reg0:=Reg0+AlignText(DMS.QYContasCON_CEDENTE.Value+IntToStr(DMS.QYContasCON_CEDENTEDIGITO.Value),'0',20,taRight); //código da empresa.
    Reg0:=Reg0+AlignText(DM.TBEmpresaEMP_NOME.Value,' ',30,taLeft);                    //nome da empresa.
    Reg0:=Reg0+'237';                                                                  //código do banco.
    Reg0:=Reg0+AlignText(DMS.QYContasBAN_NOME.Value,' ',15,taLeft);                    //nome do banco.
    Reg0:=Reg0+DataSemBarrasAno2D(Date);                                               //data da gravacao do arquivo.
    Reg0:=Reg0+Pads(8,' ');                                                            //brancos.
    Reg0:=Reg0+'MX';                                                                   //MX.
    Reg0:=Reg0+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',7,taRight);      //sequencial de remessa.
    Reg0:=Reg0+Pads(277,' ');                                                          //brancos.
    Reg0:=Reg0+AlignText(IntToStr(Contador),'0',6,taRight);                            //sequencial do registro.
    {$ENDREGION}
    RemessaCNAB400.Add(Reg0);

    QYBoletosItens.First;
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);

      Inc(Contador);
      {$REGION 'REGISTRO TIPO 1 - TRANSACAO'}
      Reg1:='1';                                                                          //identificação do registro.
      Reg1:=Reg1+Pads(5,'0');                                                             //agencia de débito do sacado. (para débito em conta).
      Reg1:=Reg1+'0';                                                                     //digito da agencia de débito.
      Reg1:=Reg1+Pads(5,'0');                                                             //razão da conta corrente do sacado.
      Reg1:=Reg1+Pads(7,'0');                                                             //número da conta do sacado.
      Reg1:=Reg1+'0';                                                                     //dígito da conta do sacado.
      Reg1:=Reg1+'0'+AlignText(IntToStr(QYBoletosBOL_CARTEIRACOD.Value),'0',3,taRight)+
                     AlignText(QYBoletosCON_AGENCIA.Value,'0',5,taRight)+
                     AlignText(QYBoletosCON_CONTA.Value,'0',7,taRight)+
                     IntToStr(QYBoletosCON_CONTADIGITO.Value);                            //0 + código carteira + codigo agencia sem digito + conta + digito conta.
      Reg1:=Reg1+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',25,taLeft);            //numero controle do participante.
      Reg1:=Reg1+'000';                                                                   //código banco para débito do sacado... somente informar se for débito automático.
      Reg1:=Reg1+QYBoletosBOL_MORACODIGO.Value;                                           //código de multa. 2=percentual, 0=sem multa.
      Reg1:=Reg1+AlignText(Decimais3(QYBoletosBOL_MORAJUROS.AsExtended,2),'0',4,taRight);      //percentual de multa.
      Reg1:=Reg1+QYBoletosBOL_NOSSONUMERO.Value;                                          //identificação do titulo no banco. (número bancário)
                                                                                          //digito de auto conferencia do numero bancário. INCLUSO NO COMANDO ACIMA.
      Reg1:=Reg1+Pads(10,'0');                                                            //desconto bonificacao por dia.
      Reg1:=Reg1+'2';                                                                     //1=banco emite e processa. 2=cliente emite e banco somente processa.
      Reg1:=Reg1+' ';                                                                     //identificação se emite boleto para débito automático.
      Reg1:=Reg1+Pads(10,' ');                                                            //brancos.
      Reg1:=Reg1+' ';                                                                     //indicador de rateio... informar R caso tenha.
      Reg1:=Reg1+'2';                                                                     //aviso de débito automático 2=nao.
      Reg1:=Reg1+Pads(2,' ');                                                             //brancos.
      Reg1:=Reg1+Copy(ComboBox2.Text,1,2);                                                //código do movimento.
      Reg1:=Reg1+AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),' ',10,taLeft);            //número do documento.
      Reg1:=Reg1+DataSemBarrasAno2D(QYBoletosBOL_DTVENCIMENTO.Value);                     //data vencimento.
      Reg1:=Reg1+AlignText(Decimais3(QYBoletosBOL_VALORTOTAL.AsExtended,2),'0',13,taRight);    //valor do titulo.
      Reg1:=Reg1+Pads(3,'0');                                                             //banco encarregado da cobrança.
      Reg1:=Reg1+Pads(5,'0');                                                             //agencia depositária.
      Reg1:=Reg1+Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2);                                 //especie do documento.
      Reg1:=Reg1+'N';                                                                     //identificação (sempre N).
      Reg1:=Reg1+DataSemBarrasAno2D(QYBoletosBOL_DTCADASTRO.Value);                       //data emissão.
      Reg1:=Reg1+AlignText(IntToStr(QYBoletosBOL_PROTESTOCODIGO.Value),'0',2,taRight);    //1a instrucao. código protesto.
      Reg1:=Reg1+AlignText(IntToStr(QYBoletosBOL_DIASPROTESTO.Value),'0',2,taRight);      //2a instrucao. dias protesto.
      Reg1:=Reg1+AlignText(Decimais3((QYBoletosBOL_VALORTOTAL.AsExtended/100.00)*(QYBoletosBOL_MORAJUROS.AsExtended/30),2),'0',13,taRight); //mora por dia. valor/100 * multa/30dias.
      if QYBoletosBOL_DESCTIPO.Value<>'0 - SEM DESCONTO' then
      begin
        Reg1:=Reg1+DataSemBarrasAno2D(QYBoletosBOL_DTDESCONTO.Value);                       //data limite para o desconto.
        Reg1:=Reg1+AlignText(Decimais3(QYBoletosBOL_DESCVALOR.AsExtended,2),'0',13,taRight);     //valor desconto.
      end else
      begin
        Reg1:=Reg1+Pads(6,'0');                                                          //data limite para o desconto.
        Reg1:=Reg1+Pads(13,'0');                                                         //valor desconto.
      end;
      Reg1:=Reg1+Pads(13,'0');                                                            //valor IOF.
      Reg1:=Reg1+Pads(13,'0');                                                            //valor abatimento.
      if QYBoletosBOL_TIPOPESSOA.Value='J' then
      begin
        Reg1:=Reg1+'02';                                                                  //tipo inscrição. 2=juridica 1=fisica.
        Reg1:=Reg1+AlignText(LimparFormatacao(QYBoletosBOL_CNPJ.Value),'0',14,taRight);   //CNPJ.
      end else
      begin
        Reg1:=Reg1+'01';                                                                  //tipo inscrição. 2=juridica 1=fisica.
        Reg1:=Reg1+AlignText(LimparFormatacao(QYBoletosBOL_CPF.Value),'0',14,taRight);    //CPF.
      end;
      Reg1:=Reg1+AlignText(QYBoletosBOL_NOME.Value,' ',40,taLeft);                        //nome do sacado.
      Reg1:=Reg1+AlignText(QYBoletosBOL_ENDERECO.Value+' '+QYBoletosBOL_NUMERO.Value,' ',40,taLeft); //Endereço.
      Reg1:=Reg1+Pads(12,' ');                                                            //1a mensagem.
      Reg1:=Reg1+Copy(QYBoletosBOL_CEP.Value,1,5);                                        //cep.
      Reg1:=Reg1+Copy(QYBoletosBOL_CEP.Value,7,3);                                        //cep sufixo.
      Reg1:=Reg1+Pads(60,' ');                                                            //sacador/avalista ou 2a mensagem.
      Reg1:=Reg1+AlignText(IntToStr(Contador),'0',6,taRight);                             //sequencial do registro.
      {$ENDREGION}

      Inc(Contador);
      {$REGION 'REGISTRO TIPO 2 - TRANSACAO'}
      Reg2:='2';                                                                    //tipo de registro.
      Reg2:=Reg2+AlignText(QYBoletosBOL_INSTRUCAO1.Value,' ',80,taLeft);            //mensagem 1.
      Reg2:=Reg2+AlignText(QYBoletosBOL_INSTRUCAO2.Value,' ',80,taLeft);            //mensagem 2.
      Reg2:=Reg2+AlignText(QYBoletosBOL_INSTRUCAO3.Value,' ',80,taLeft);            //mensagem 3.
      Reg2:=Reg2+AlignText(QYBoletosBOL_INSTRUCAO4.Value,' ',80,taLeft);            //mensagem 4.
      Reg2:=Reg2+Pads(6,' ');                                                       //data limite concessao do desconto 2.
      Reg2:=Reg2+Pads(13,' ');                                                      //valor do desconto 2.
      Reg2:=Reg2+Pads(6,' ');                                                       //data limite concessao do desconto 3.
      Reg2:=Reg2+Pads(13,' ');                                                      //valor do desconto 3.
      Reg2:=Reg2+Pads(7,' ');                                                       //reserva - filler
      Reg2:=Reg2+AlignText(IntToStr(QYBoletosBOL_CARTEIRACOD.Value),'0',3,taRight); //numero da carteira.
      Reg2:=Reg2+AlignText(QYBoletosCON_AGENCIA.Value,'0',5,taRight);               //agencia cedente.
      Reg2:=Reg2+AlignText(QYBoletosCON_CONTA.Value,'0',7,taRight);                 //conta cedente.
      Reg2:=Reg2+IntToStr(QYBoletosCON_CONTADIGITO.Value);                          //digito conta cedente.
      Reg2:=Reg2+AlignText(QYBoletosBOL_NOSSONUMERO.Value,'0',12,taRight);          //nosso numero.
                                                                                    //digito nosso numero. (incluido no comando acima).
      Reg2:=Reg2+AlignText(IntToStr(Contador),'0',6,taRight);                       //sequencial do registro.
      {$ENDREGION}

      Inc(QtdeTitulos);
      RemessaCNAB400.Add(Reg1);
      RemessaCNAB400.Add(Reg2);
    end;

    Inc(Contador);
    {$REGION 'REGISTRO TIPO 9 - TRAILER'}
    Reg9:='9';                                              //identificação do registro.
    Reg9:=Reg9+Pads(393,' ');                               //brancos.
    Reg9:=Reg9+AlignText(IntToStr(Contador),'0',6,taRight); //sequencial do registro.
    {$ENDREGION}
    RemessaCNAB400.Add(Reg9);

    RemessaCNAB400.SaveToFile(DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\'+Arquivo);

    Application.ProcessMessages;
    //Atualiza boletos.
    Delete(Codigos,1,1); //retira a primeira virgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('S')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;
    //...
    DMS.QYContas.Close;
    QYBoletos.Close;
    QYBoletosItens.Close;
    Edit3.Text:='';
    Edit4.Text:='';
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessas.Last;
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);

    MessageDlg('Arquivo de remessa gerado com '+IntToStr(I)+' boleto(s).',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosRemessas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormBoletosRemessas.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosRemessas.Edit1Exit(Sender: TObject);
begin
  LocClientesExit(Edit1,Edit2);
end;

procedure TFormBoletosRemessas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormBoletosRemessas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
  if Key=#13 then Key:=#0;
end;

procedure TFormBoletosRemessas.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosRemessas.Edit3Exit(Sender: TObject);
begin
  LocContasExit(Edit3,Edit4);
end;

procedure TFormBoletosRemessas.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormBoletosRemessas.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
  if Key=#13 then Key:=#0;
end;

procedure TFormBoletosRemessas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBoletosRemessas.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=1;
  ComboBox4.ItemIndex:=1;
  PageControl1.ActivePageIndex:=0;
  ACBrBoleto1.DirArqRemessa:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\';
  ACBrBoleto1.DirArqRetorno:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Retorno\';
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
  MaskEdit3.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit4.Text:=DateToStr(UltimoDia(Date));
  QYRemessasBoletosItens.Close;
  QYRemessasItens.Close;
  QYRemessas.Close;
  QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QYRemessas.Open;
  QYRemessasItens.Open;
  QYRemessasBoletosItens.Open;

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_CONTAPADRAO.Value;
  DM.TBContas.Open;
  Edit3.Text:=DM.TBContasCON_CODIGO.Value.ToString;
  Edit4.Text:=DM.TBContasCON_NOME.Value;
end;

procedure TFormBoletosRemessas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosRemessas.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormBoletosRemessas.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    QYRemessasBoletosItens.Close;
    QYRemessasItens.Close;
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessasItens.Open;
    QYRemessasBoletosItens.Open;
    MaskEdit1.SetFocus;
    MaskEdit1.SelectAll;
  end;
end;

procedure TFormBoletosRemessas.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    00: begin
          dbSBtnFirst1.DataSource:=DSBoletos;
          dbSBtnPrior1.DataSource:=DSBoletos;
          dbSBtnNext1.DataSource:=DSBoletos;
          dbSBtnLast1.DataSource:=DSBoletos;
        end;
    01: begin
          dbSBtnFirst1.DataSource:=DSRemessas;
          dbSBtnPrior1.DataSource:=DSRemessas;
          dbSBtnNext1.DataSource:=DSRemessas;
          dbSBtnLast1.DataSource:=DSRemessas;
        end;
  end;
end;

procedure TFormBoletosRemessas.PngBitBtn1Click(Sender: TObject);
var Titulo: TACBrTitulo;
  Dia,Mes,Ano: Word;
  Codigos, Arquivo: String;
  I: Integer;
begin
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhum boleto selecionado.');

  DMS.QYContas.Close;
  DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DMS.QYContas.Open;
  if DMS.QYContasCON_BANCO.Value=001 then //banco do brasil.
  begin
    if ComboBox1.Text='CNAB 240' then CriarRemessaCNAB240_Brasil;
    if ComboBox1.Text='CNAB 400' then MessageDlg('Layout CNAB 400 ainda não implementado para este banco.',mtWarning,[mbOk],0);
    Exit;
  end;

  if DMS.QYContasCON_BANCO.Value=033 then //banco santander.
  begin
    if ComboBox1.Text='CNAB 240' then CriarRemessaCNAB240_Santander;
    if ComboBox1.Text='CNAB 400' then MessageDlg('Layout CNAB 400 ainda não implementado para este banco.',mtWarning,[mbOk],0);
    Exit;
  end;

  if DMS.QYContasCON_BANCO.Value=085 then //cecred.
  begin
    if ComboBox1.Text='CNAB 240' then CriarRemessaCNAB240_Cecred;
    if ComboBox1.Text='CNAB 400' then MessageDlg('Layout CNAB 400 ainda não implementado para este banco.',mtWarning,[mbOk],0);
    Exit;
  end;

  if DMS.QYContasCON_BANCO.Value=104 then //caixa - banco de merda.
  begin
    if ComboBox1.Text='CNAB 240' then CriarRemessaCNAB240_Caixa_Sigcb;
    if ComboBox1.Text='CNAB 400' then MessageDlg('Layout CNAB 400 ainda não implementado para este banco.',mtWarning,[mbOk],0);
    Exit;
  end;

  if DMS.QYContasCON_BANCO.Value=237 then //bradesco.
  begin
    if ComboBox1.Text='CNAB 240' then MessageDlg('Layout CNAB 240 ainda não implementado para este banco.',mtWarning,[mbOk],0);
    if ComboBox1.Text='CNAB 400' then CriarRemessaCNAB400_Bradesco;
    Exit;
  end;

  if DMS.QYContasCON_BANCO.Value=341 then //itaú.
  begin
    if ComboBox1.Text='CNAB 240' then CriarRemessaCNAB240_Itau;
    if ComboBox1.Text='CNAB 400' then MessageDlg('Layout CNAB 240 ainda não implementado para este banco.',mtWarning,[mbOk],0);
    Exit;
  end;

  if DMS.QYContasCON_BANCO.Value=748 then //sicred.
  begin
    if ComboBox1.Text='CNAB 240' then CriarRemessaCNAB240_Sicred;
    if ComboBox1.Text='CNAB 400' then MessageDlg('Layout CNAB 400 ainda não implementado para este banco.',mtWarning,[mbOk],0);
    Exit;
  end;

  if DMS.QYContasCON_BANCO.Value=756 then //sicoob.
  begin
    if ComboBox1.Text='CNAB 240' then CriarRemessaCNAB240_Sicoob;
    if ComboBox1.Text='CNAB 400' then MessageDlg('Layout CNAB 400 ainda não implementado para este banco.',mtWarning,[mbOk],0);
    Exit;
  end;

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    {$REGION 'Dados do emitente'}
    case ComboBox1.ItemIndex of
      00: ACBrBoleto1.LayoutRemessa:=c240;
      01: ACBrBoleto1.LayoutRemessa:=c400;
    end;
    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    ACBrBoleto1.ListadeBoletos.Clear;
    // ACBrBoleto1.Banco.Numero:=QYContasCON_BANCO.Value; //passou a ser read-only.
    if DMS.QYContasCON_BANCO.Value=085 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoCECRED;
    if DMS.QYContasCON_BANCO.Value=001 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoBrasil;
    if DMS.QYContasCON_BANCO.Value=004 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoNordeste;
    if DMS.QYContasCON_BANCO.Value=389 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoMercantil;
    if DMS.QYContasCON_BANCO.Value=756 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoob;
    if DMS.QYContasCON_BANCO.Value=422 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoSafra;
    if DMS.QYContasCON_BANCO.Value=021 then ACBrBoleto1.Banco.TipoCobranca:=cobBanestes;
    if DMS.QYContasCON_BANCO.Value=041 then ACBrBoleto1.Banco.TipoCobranca:=cobBanrisul;
    if DMS.QYContasCON_BANCO.Value=320 then ACBrBoleto1.Banco.TipoCobranca:=cobBicBanco;
    if DMS.QYContasCON_BANCO.Value=237 then ACBrBoleto1.Banco.TipoCobranca:=cobBradesco;
    //if DMS.QYContasCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobBradescoSICOOB; //qual o código do banco?
    if DMS.QYContasCON_BANCO.Value=070 then ACBrBoleto1.Banco.TipoCobranca:=cobBRB;
    if (DMS.QYContasCON_BANCO.Value=104) and (DMS.QYContasCON_TIPOCOBRANCA.Value='SICOB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaSicob;
    if (DMS.QYContasCON_BANCO.Value=104) and (DMS.QYContasCON_TIPOCOBRANCA.Value='SIGCB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaEconomica;
    if DMS.QYContasCON_BANCO.Value=399 then ACBrBoleto1.Banco.TipoCobranca:=cobHSBC;
    if DMS.QYContasCON_BANCO.Value=341 then ACBrBoleto1.Banco.TipoCobranca:=cobItau;
    //if DMS.QYContasCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobSafraBradesco; //qual o código do banco?
    if DMS.QYContasCON_BANCO.Value=008 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
    if DMS.QYContasCON_BANCO.Value=033 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
    if DMS.QYContasCON_BANCO.Value=353 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
    if DMS.QYContasCON_BANCO.Value=748 then ACBrBoleto1.Banco.TipoCobranca:=cobSicred;

    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
    ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

    ACBrBoleto1.Cedente.Agencia:=DMS.QYContasCON_AGENCIA.Value;
    ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value);
    ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
    ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
    ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
    ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
    ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
    ACBrBoleto1.Cedente.CodigoCedente:=DMS.QYContasCON_CEDENTE.Value+IntToStr(DMS.QYContasCON_CEDENTEDIGITO.Value);
    //ACBrBoleto1.Cedente.CodigoTransmissao:=
    ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
    ACBrBoleto1.Cedente.Convenio:=DMS.QYContasCON_CONVENIO.Value; //faz o q? informar o q?
    ACBrBoleto1.Cedente.Conta:=DMS.QYContasCON_CONTA.Value;
    ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DMS.QYContasCON_CONTADIGITO.Value);
    ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
    ACBrBoleto1.Cedente.Modalidade:=Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
    ACBrBoleto1.Cedente.Nome:=DMS.QYContasCON_CEDENTENOME.Value;
    ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
    ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
    ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
    ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
    ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
    ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;
    {$ENDREGION}

    {$REGION 'Cria o registro da remessa'}
    //cria o registro da remessa.
    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    DecodeDate(Date,Ano,Mes,Dia);
    Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(Ano)+'-'+
    AlignText(IntToStr(Mes),'0',2,taRight)+'-'+
    AlignText(IntToStr(Dia),'0',2,taRight)+'.txt';
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;
    //...
    {$ENDREGION}
    QYBoletosItens.First;

    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //DM2.TBBoletosItensBOI_RECEBER.Value:=DBGrid1.DataSource.DataSet.Fields[6].AsInteger; //manter a ordernacao dos campos. REE_CODIGO=campo numero 6

      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);
      Titulo:=ACBrBoleto1.CriarTituloNaLista;
      {$REGION 'Dados titulo'}
      with Titulo do
      begin
        if QYBoletosBOL_ACEITE.Value='A' then
        Aceite            := atSim else
        Aceite            := atNao;
        CaracTitulo       := tcSimples;
        if QYBoletosCON_BANCO.Value=104 then
        Carteira          := QYBoletosBOL_CARTEIRA.Value else //codigo da carteira em alfanumerico. (RG ou SR para caixa)
        Carteira          := IntToStr(QYBoletosBOL_CARTEIRACOD.Value);
        CarteiraEnvio     := tceCedente;
        CodigoGeracao     := '01'; //??Copy(ComboBox2.Text,1,2); //01-entrada de titulo.
        CodigoLiquidacao  := '1'; //?? codigo baixa/devolucao? //    02 : result := 'Casa Lotérica';  03 : result := 'Agências CAIXA';  04 : result := 'Compensação Eletrônica';  05 : result := 'Compensação Convencional';  06 : result := 'Internet Banking';  07 : result := 'Correspondente Bancário';  08 : result := 'Em Cartório'
        //CodigoLiquidacaoDescricao  := ??
        CodigoMora        := QYBoletosBOL_MORACODIGO.Value;
        DataAbatimento    := 0;
        DataBaixa         := QYBoletosBOL_DTBAIXABANCO.Value;
        DataCredito       := 0;
        DataDesconto      := QYBoletosBOL_DTDESCONTO.Value; // 0;
        DataDocumento     := QYBoletosBOL_DTCADASTRO.Value;
        DataMoraJuros     := QYBoletosBOL_DTJUROSAPOS.Value;
        DataOcorrencia    := 0;
        DataProcessamento := Now;
        DataProtesto      := QYBoletosBOL_DTPROTESTO.Value;
        //DescricaoMotivoRejeicaoComando :=
        if Copy(QyBoletosBOL_ESPECIEDOC.Value,1,2)='02' then
        EspecieDoc        := 'DM';
        if Copy(QyBoletosBOL_ESPECIEDOC.Value,1,2)='03' then
        EspecieDoc        := 'DMI';
        EspecieMod        := ''; //Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2); //??
        //Informativo       :=
        Instrucao1        := QYBoletosBOL_INSTRUCAO1.Value; // '00'; //padL(trim(edtInstrucoes1.Text),2,'0');
        Instrucao2        := QYBoletosBOL_INSTRUCAO2.Value; //'00'; //padL(trim(edtInstrucoes2.Text),2,'0');
        Instrucao3        := QYBoletosBOL_INSTRUCAO3.Value; //'';
        //Liquidacao        :=
        LocalPagamento    := QYBoletosBOL_LOCALPAGTO.Value;
        Mensagem.Add(QYBoletosBOL_INSTRUCAO1.Value);
        Mensagem.Add(QYBoletosBOL_INSTRUCAO2.Value);
        //MotivoRejeicaoComando:=??
        MultaValorFixo    := False;

        if QYBoletosCON_NOSSONUMFORMATAR.Value='S' then
        NossoNumero       := AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',QYBoletosCON_NOSSONUMDIGITOS.Value,taRight) else
        NossoNumero       := AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',8,taRight);

        QYBoletosItens.FetchAll;
        NumeroDocumento   := IntToStr(QYBoletosBOL_CODIGO.Value);

        OcorrenciaOriginal.Tipo := toRemessaRegistrar; //padrão.
        case StrToInt(Copy(ComboBox2.Text,1,2)) of
          01: OcorrenciaOriginal.Tipo := toRemessaRegistrar;                       //ENTRADA DE TITULO.
          02: OcorrenciaOriginal.Tipo := toRemessaBaixar;                          //PEDIDO DE BAIXA.
          03: OcorrenciaOriginal.Tipo := toRemessaProtestoFinsFalimentares;        //PROTESTO PARA FINS FALIMENTARES.
          04: OcorrenciaOriginal.Tipo := toRemessaConcederAbatimento;              //CONCESSAO DE ABATIMENTO.
          05: OcorrenciaOriginal.Tipo := toRemessaCancelarAbatimento;              //CANCELAMENTO DE ABATIMENTO.
          06: OcorrenciaOriginal.Tipo := toRemessaAlterarVencimento;               //ALTERACAO DE VENCIMENTO.
          07: OcorrenciaOriginal.Tipo := toRemessaConcederDesconto;                //CONCESSAO DE DESCONTO.
          08: OcorrenciaOriginal.Tipo := toRemessaCancelarDesconto;                //CANCELAMENTO DE DESCONTO.
          09: OcorrenciaOriginal.Tipo := toRemessaProtestar;                       //PROTESTAR.
          //10: OcorrenciaOriginal.Tipo := toRemessa;                              //SUSTAR PROTESTO E BAIXAR TITULO.
          11: OcorrenciaOriginal.Tipo := toRemessaSustarProtesto;                  //SUSTAR PROTESTO E MANTER EM CARTEIRA.
          12: OcorrenciaOriginal.Tipo := toRemessaCobrarJurosMora;                 //ALTERACAO DE JUROS DE MORA.
          13: OcorrenciaOriginal.Tipo := toRemessaNaoCobrarJurosMora;              //DISPENSAR COBRANCA DE JUROS DE MORA.
          //14: OcorrenciaOriginal.Tipo := toRemessa;                              //ALTERACAO DE VALOR/PERCENTUAL DE MULTA
          15: OcorrenciaOriginal.Tipo := toRemessaDispensarJuros;                  //DISPENSAR COBRANCA DE MULTA
          //16: OcorrenciaOriginal.Tipo := toRemessa;                              //ALTERACAO DE VALOR/DATA DE DESCONTO
          //17: OcorrenciaOriginal.Tipo := toRemessa                               //NAO CONCEDER DESCONTO
          //18: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERACAO DO VALOR DE ABATIMENTO
          //19: OcorrenciaOriginal.Tipo := toRemessa                               //PRAZO LIMITE DE RECEBIMENTO - ALTERAR
          //20: OcorrenciaOriginal.Tipo := toRemessa                               //PRAZO LIMITE DE RECEBIMENTO - DISPENSAR
          //21: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERAR NUMERO DO TITULO DADO PELO CEDENTE
          22: OcorrenciaOriginal.Tipo := toRemessaAlterarNumeroControle;           //ALTERAR NUMERO CONTROLE DO PARTICIPANTE
          23: OcorrenciaOriginal.Tipo := toRemessaAlterarNomeEnderecoSacado;       //ALTERAR DADOS DO SACADO
          //24: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERAR DADOS DO SACADOR/AVALISTA
          //30: OcorrenciaOriginal.Tipo := toRemessa                               //RECUSA DA ALEGACAO DO SACADO
          //31: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERACAO DE OUTROS DADOS (SOMENTE ENDERECO DO PAGADOR)
          33: OcorrenciaOriginal.Tipo := toRemessaAcertarRateioCredito;            //ALTERACAO DOS DADOS DO RATEIO DE CREDITO
          34: OcorrenciaOriginal.Tipo := toRemessaCancelarRateioCredito;           //PEDIDO DE CANCELAMENTO DOS DADOS DO RATEIO DE CREDITO
          35: OcorrenciaOriginal.Tipo := toRemessaDesagendarDebitoAutomatico;      //PEDIDO DE DESAGENDAMENTO DO DEBITO AUTOMATICO
          //40: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERACAO DE CARTEIRA
          41: OcorrenciaOriginal.Tipo := toRemessaCancelarInstrucaoProtesto;       //CANCELAR INSTRUCAO AUTOMATICA DE PROTESTO
          //42: OcorrenciaOriginal.Tipo := toRemessaa                              //ALTERACAO DE ESPECIE DE TITULO.
          43: OcorrenciaOriginal.Tipo := toRemessaTransferenciaCarteira;           //TRANSFERENCIA DE CARTEIRA/MODALIDADE DE COBRANCA
          //44: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERACAO DE CONTRATO DE COBRANCA
          //45: OcorrenciaOriginal.Tipo := toRemessa                               //NEGATIVACAO SEM PROTESTO
          //46: OcorrenciaOriginal.Tipo := toRemessa                               //SOLICITACAO DE BAIXA DE TITULO NEGATIVADO SEM PROTESTO
          //90: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERAR TIPO DE EMISSAO
          93: OcorrenciaOriginal.Tipo := toRemessaNegativacaoSerasa;               //INCLUSAO NEGATIVACAO VIA SERASA
          94: OcorrenciaOriginal.Tipo := toRemessaExcluirNegativacaoSerasa;        //EXCLUSAO NEGATIVACAO VIA SERASA
          //95: OcorrenciaOriginal.Tipo := toRemessa                               //ENVIO DE SMS AO PAGADOR
          //96: OcorrenciaOriginal.Tipo := toRemessa                               //CANCELAMENTO INSTRUCAO DE SMS
        end;
        Parcela                 := 0;
        PercentualMulta         := QYBoletosBOL_MULTA.AsExtended;
        Referencia              := '';
        Sacado.Bairro           := QYBoletosBOL_BAIRRO.Value;
        Sacado.CEP              := LimparFormatacao(QYBoletosBOL_CEP.Value);
        Sacado.Cidade           := QYBoletosBOL_CIDADE.Value;
        if QYBoletosBOL_TIPOPESSOA.Value='J' then
        begin
          Sacado.CNPJCPF        := LimparFormatacao(QYBoletosBOL_CNPJ.Value);
          Sacado.Pessoa         := pJuridica;
        end else
        begin
          Sacado.CNPJCPF        := LimparFormatacao(QYBoletosBOL_CPF.Value);
          Sacado.Pessoa         := pFisica;
        end;
        Sacado.Email            := '';
        Sacado.Fone             := '';
        Sacado.UF               := QYBoletosBOL_ESTADO.Value;
        Sacado.Logradouro       := QYBoletosBOL_ENDERECO.Value;
        Sacado.NomeSacado       := QYBoletosBOL_NOME.Value;
        Sacado.Numero           := QYBoletosBOL_NUMERO.Value;
        //Sacado.SacadoAvalista
        SeuNumero               := IntToStr(QYBoletosBOL_CODIGO.Value);
        TextoLivre              := '';
        TipoDiasProtesto        := diCorridos;
        TipoImpressao           := tipNormal;
        //TotalParcelas         :=
        //UsoBanco              :=
        ValorAbatimento         := 0;
        ValorDesconto           := QYBoletosBOL_DESCVALOR.AsExtended; //0;
        ValorDescontoAntDia     := 0;
        ValorDespesaCobranca    := 0;
        ValorDocumento          := QYBoletosBOL_VALORTOTAL.AsExtended;
        ValorIOF                := 0;
        ValorMoraJuros          := QYBoletosBOL_MORAJUROS.AsExtended; //QYBoletosBOL_MORAJUROS.Value/100.00;
        ValorOutrosCreditos     := 0;
        ValorOutrasDespesas     := 0;
        ValorPago               := 0;
        ValorRecebido           := 0;
        Vencimento              := QYBoletosBOL_DTVENCIMENTO.Value;
        //ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
      end;
      {$ENDREGION}
    end;

    ACBrBoleto1.NomeArqRemessa:=Arquivo;
    try
      ACBrBoleto1.GerarRemessa(DM2.TBRemessasREM_CODIGO.Value);
      except on E:exception do
      begin
        MessageDlg('Erro na criação do arquivo de remessa.'+#13#10+
                   'Pode ser que ainda não tenha sido implementada a geração do arquivo para o layout informado ou existem informações incompletas.'+#13#10+
                   E.Message,mtError,[mbOk],0);
        DM2.TBRemessas.Delete;
        Exit;
      end;
    end;
    Application.ProcessMessages;
    //Atualiza boletos.
    Delete(Codigos,1,1); //retira a primeira virgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('S')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;
    //...
    DMS.QYContas.Close;
    QYBoletos.Close;
    QYBoletosItens.Close;
    Edit3.Text:='';
    Edit4.Text:='';
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
    QYRemessas.Last;
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);

    MessageDlg('Arquivo de remessa gerado com '+IntToStr(I)+' boleto(s).',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosRemessas.PngBitBtn2Click(Sender: TObject);
var Codigos: String;
begin
  AbortIf(QYRemessas.IsEmpty,'Nenhuma remessa selecionada.');

  if MessageDlg('Deseja eliminar a remessa selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //gera uma string com os códigos dos boletos que estão inseridos na remessa.
    Codigos:='';
    QYRemessasItens.First;
    while not QYRemessasItens.Eof do
    begin
      Codigos:=Codigos+','+IntToStr(QYRemessasItensRMI_BOLETO.Value);
      QYRemessasItens.Next;
    end;
    Delete(Codigos,1,1); //elimina a primeira vírgula.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_GEROUREMESSA='+QuotedStr('N')+' where BOL_CODIGO in ('+Codigos+');');
    DM.QYAux.ExecSQL;
    //localiza a remessa na tabela principal e elimina.
    DM2.TBRemessas.Close;
    DM2.TBRemessas.ParamByName('codigo').AsInteger:=QYRemessasREM_CODIGO.Value;
    DM2.TBRemessas.Open;
    DM2.TBRemessas.Delete;
    //...
    QYRemessas.Close;
    QYRemessas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYRemessas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYRemessas.Open;
  end;
end;

procedure TFormBoletosRemessas.PngBitBtn3Click(Sender: TObject);
var Titulo: TACBrTitulo;
begin
  AbortIf(QYRemessas.IsEmpty,'Nenhuma remessa selecionada.');

  if QYRemessasREM_LAYOUT.Value='CNAB 240' then
  ACBrBoleto1.LayoutRemessa:=c240 else
  ACBrBoleto1.LayoutRemessa:=c400;

  DMS.QYContas.Close;
  DMS.QYContas.ParamByName('codigo').AsInteger:=QYRemessasREM_CONTA.Value;
  DMS.QYContas.Open;

  ACBrBoleto1.ListadeBoletos.Clear;
  // ACBrBoleto1.Banco.Numero:=QYContasCON_BANCO.Value; //passou a ser read-only.
  if DMS.QYContasCON_BANCO.Value=001 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoBrasil;
  if DMS.QYContasCON_BANCO.Value=033 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
  if DMS.QYContasCON_BANCO.Value=353 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
  if DMS.QYContasCON_BANCO.Value=008 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
  if DMS.QYContasCON_BANCO.Value=041 then ACBrBoleto1.Banco.TipoCobranca:=cobBanrisul;
  if DMS.QYContasCON_BANCO.Value=104 then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaEconomica; //cobCaixaSicob;
  if DMS.QYContasCON_BANCO.Value=237 then ACBrBoleto1.Banco.TipoCobranca:=cobBradesco;
  if DMS.QYContasCON_BANCO.Value=341 then ACBrBoleto1.Banco.TipoCobranca:=cobItau;
  if DMS.QYContasCON_BANCO.Value=389 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoMercantil;
  if DMS.QYContasCON_BANCO.Value=748 then ACBrBoleto1.Banco.TipoCobranca:=cobSicred;
  if DMS.QYContasCON_BANCO.Value=756 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoob;

  ACBrBoleto1.Cedente.Convenio:=DMS.QYContasCON_CONVENIO.Value;
  ACBrBoleto1.Cedente.Agencia:=DMS.QYContasCON_AGENCIA.Value;
  ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value);
  ACBrBoleto1.Cedente.Conta:=DMS.QYContasCON_CONTA.Value;
  ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DMS.QYContasCON_CONTADIGITO.Value);
  ACBrBoleto1.Cedente.CodigoCedente:=DMS.QYContasCON_CEDENTE.Value;
  ACBrBoleto1.Cedente.Nome:=DMS.QYContasCON_CEDENTENOME.Value;

  ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrBoleto1.Cedente.Modalidade:='';
  ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrBoleto1.Cedente.TipoInscricao:=pJuridica;
  ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

  QYRemessasItens.First;
  while not QYRemessasItens.Eof do
  begin
    Titulo:=ACBrBoleto1.CriarTituloNaLista;
    with Titulo do
    begin
      Vencimento        := QYRemessasItensBOL_DTVENCIMENTO.Value;
      DataDocumento     := QYRemessasItensBOL_DTCADASTRO.Value;
      if DM2.TBBoletosItens.RecordCount=1 then
      NumeroDocumento   := QYRemessasBoletosItensREE_NUMDOCTO.Value else
      NumeroDocumento   := IntToStr(QYRemessasItensRMI_BOLETO.Value);
      EspecieDoc        := QYRemessasItensBOL_ESPECIE.Value;
      if QYRemessasItensBOL_ACEITE.Value='S' then
      Aceite            := atSim else
      Aceite            := atNao;
      DataProcessamento := Now;
      Carteira          := QYRemessasItensBOL_CARTEIRA.Value;

      if DMS.QYContasCON_NOSSONUMFORMATAR.Value='S' then
      NossoNumero       := AlignText(IntToStr(QYRemessasItensRMI_BOLETO.Value),'0',DMS.QYContasCON_NOSSONUMDIGITOS.Value,taRight) else
      NossoNumero       := IntToStr(QYRemessasItensRMI_BOLETO.Value);

      ValorDocumento    := QYRemessasItensBOL_VALORTOTAL.AsExtended;
      Sacado.NomeSacado := QYRemessasItensBOL_NOME.Value;
      if QYRemessasItensBOL_TIPOPESSOA.Value='J' then
      Sacado.CNPJCPF    := LimparFormatacao(QYRemessasItensBOL_CNPJ.Value) else
      Sacado.CNPJCPF    := LimparFormatacao(QYRemessasItensBOL_CPF.Value);
      Sacado.Logradouro := QYRemessasItensBOL_ENDERECO.Value;
      Sacado.Numero     := QYRemessasItensBOL_NUMERO.Value;
      Sacado.Bairro     := QYRemessasItensBOL_BAIRRO.Value;
      Sacado.Cidade     := QYRemessasItensBOL_CIDADE.Value;
      Sacado.UF         := QYRemessasItensBOL_ESTADO.Value;
      Sacado.CEP        := LimparFormatacao(QYRemessasItensBOL_CEP.Value);
      LocalPagamento    := QYRemessasItensBOL_LOCALPAGTO.Value;
      ValorMoraJuros    := QYRemessasItensBOL_MORAJUROS.AsExtended;
      ValorDesconto     := 0;
      ValorAbatimento   := 0;
      DataMoraJuros     := QYRemessasItensBOL_DTJUROSAPOS.Value;
      DataDesconto      := 0;
      DataAbatimento    := 0;
      DataProtesto      := QYRemessasItensBOL_DTPROTESTO.Value;
      PercentualMulta   := QYRemessasItensBOL_MULTA.AsExtended;
      Mensagem.Text     := QYRemessasItensBOL_INSTRUCAO1.Value;
      OcorrenciaOriginal.Tipo := toRemessaBaixar;
      Instrucao1        := '00'; //padL(trim(edtInstrucoes1.Text),2,'0');
      Instrucao2        := '00'; //padL(trim(edtInstrucoes2.Text),2,'0');
      //ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
    end;
    QYRemessasItens.Next;
  end;
  ACBrBoleto1.NomeArqRemessa:=QYRemessasREM_ARQUIVO.Value;
  ACBrBoleto1.GerarRemessa(QYRemessasREM_CODIGO.Value);
  Application.ProcessMessages;

  DMS.QYContas.Close;
  MessageDlg('Arquivo de remessa gerado.',mtInformation,[mbOk],0);
end;

procedure TFormBoletosRemessas.PngBitBtn4Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=True;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

procedure TFormBoletosRemessas.PngBitBtn5Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=not DBGrid1.SelectedRows.CurrentRowSelected;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

procedure TFormBoletosRemessas.PngBitBtn6Click(Sender: TObject);
var Where: String;
begin
  AbortIf((MaskEdit3.Text='  /  /    ') or (MaskEdit4.Text='  /  /    '),'Digite as datas inicial e final');
  AbortIf(Edit4.Text='','Informe a conta.');

  Where:=' and BOL_CONTA='+QuotedStr(Edit3.Text);
  if ComboBox4.Text='ABERTOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('A');
  if ComboBox4.Text='BAIXADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('B');
  if ComboBox4.Text='CANCELADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('C');
  if Edit2.Text<>'' then Where:=Where+' and BOL_CLIENTE='+QuotedStr(Edit1.Text);
  if CheckBox1.Checked then Where:=Where+' and BOL_GEROUREMESSA='+QuotedStr('N');

  QYBoletos.Close;
  QYBoletosItens.Close;
  QYBoletos.SQL.Clear;
  QYBoletos.SQL.Add(
    'select * from BOLETOS '+
    'left join CONTAS on BOL_CONTA=CON_CODIGO '+
    'left join BANCOS on CON_BANCO=BAN_CODIGO '+
    'where BOL_DTCADASTRO between :datainicial and :datafinal '+Where+' order by BOL_NOME, BOL_DTVENCIMENTO'
  );
  QYBoletos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit3.Text);
  QYBoletos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit4.Text);
  QYBoletos.Open;
  QYBoletosItens.Open;

  QYBoletos.FetchAll;
  QYBoletosItens.FetchAll;
end;

procedure TFormBoletosRemessas.PngBitBtn7Click(Sender: TObject);
var Titulo: TACBrTitulo;
  Dia,Mes,Ano: Word;
  Codigos, Arquivo: String;
  I: Integer;
begin
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhum boleto selecionado.');

  DMS.QYContas.Close;
  DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DMS.QYContas.Open;

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Gerar remessa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigos:='';
    {$REGION 'Dados do emitente'}
    case ComboBox1.ItemIndex of
      00: ACBrBoleto1.LayoutRemessa:=c240;
      01: ACBrBoleto1.LayoutRemessa:=c400;
    end;
    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DMS.QYContas.Open;

    ACBrBoleto1.ListadeBoletos.Clear;
    // ACBrBoleto1.Banco.Numero:=QYContasCON_BANCO.Value; //passou a ser read-only.
    if DMS.QYContasCON_BANCO.Value=085 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoCECRED;
    if DMS.QYContasCON_BANCO.Value=001 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoBrasilAPI; //cobBancoDoBrasil;
    if DMS.QYContasCON_BANCO.Value=004 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoNordeste;
    if DMS.QYContasCON_BANCO.Value=389 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoMercantil;
    if DMS.QYContasCON_BANCO.Value=756 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoob;
    if DMS.QYContasCON_BANCO.Value=422 then ACBrBoleto1.Banco.TipoCobranca:=cobBancoSafra;
    if DMS.QYContasCON_BANCO.Value=021 then ACBrBoleto1.Banco.TipoCobranca:=cobBanestes;
    if DMS.QYContasCON_BANCO.Value=041 then ACBrBoleto1.Banco.TipoCobranca:=cobBanrisul;
    if DMS.QYContasCON_BANCO.Value=320 then ACBrBoleto1.Banco.TipoCobranca:=cobBicBanco;
    if DMS.QYContasCON_BANCO.Value=237 then ACBrBoleto1.Banco.TipoCobranca:=cobBradesco;
    //if DMS.QYContasCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobBradescoSICOOB; //qual o código do banco?
    if DMS.QYContasCON_BANCO.Value=070 then ACBrBoleto1.Banco.TipoCobranca:=cobBRB;
    if (DMS.QYContasCON_BANCO.Value=104) and (DMS.QYContasCON_TIPOCOBRANCA.Value='SICOB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaSicob;
    if (DMS.QYContasCON_BANCO.Value=104) and (DMS.QYContasCON_TIPOCOBRANCA.Value='SIGCB') then ACBrBoleto1.Banco.TipoCobranca:=cobCaixaEconomica;
    if DMS.QYContasCON_BANCO.Value=399 then ACBrBoleto1.Banco.TipoCobranca:=cobHSBC;
    if DMS.QYContasCON_BANCO.Value=341 then ACBrBoleto1.Banco.TipoCobranca:=cobItau;
    //if DMS.QYContasCON_BANCO.Value= then ACBrBoleto1.Banco.TipoCobranca:=cobSafraBradesco; //qual o código do banco?
    if DMS.QYContasCON_BANCO.Value=008 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
    if DMS.QYContasCON_BANCO.Value=033 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
    if DMS.QYContasCON_BANCO.Value=353 then ACBrBoleto1.Banco.TipoCobranca:=cobSantander;
    if DMS.QYContasCON_BANCO.Value=748 then ACBrBoleto1.Banco.TipoCobranca:=cobSicred;

    if Length(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value))=14 then
    ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
    ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

    ACBrBoleto1.Cedente.Agencia:=DMS.QYContasCON_AGENCIA.Value;
    ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(DMS.QYContasCON_AGENCIADIGITO.Value);
    ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
    ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
    ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
    ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
    ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
    ACBrBoleto1.Cedente.CodigoCedente:=DMS.QYContasCON_CEDENTE.Value+IntToStr(DMS.QYContasCON_CEDENTEDIGITO.Value);
    //ACBrBoleto1.Cedente.CodigoTransmissao:=
    ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
    ACBrBoleto1.Cedente.Convenio:=DMS.QYContasCON_CONVENIO.Value; //faz o q? informar o q?
    ACBrBoleto1.Cedente.Conta:=DMS.QYContasCON_CONTA.Value;
    ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DMS.QYContasCON_CONTADIGITO.Value);
    ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
    ACBrBoleto1.Cedente.Modalidade:=Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
    ACBrBoleto1.Cedente.Nome:=DMS.QYContasCON_CEDENTENOME.Value;
    ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
    ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
    ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
    ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
    ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
    ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;
    {$ENDREGION}
    {$REGION 'Cria o registro da remessa'}
    //cria o registro da remessa.
    DM2.TBRemessas.Insert;
    DM2.TBRemessasREM_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
    DM2.TBRemessasREM_LAYOUT.Value:=ComboBox1.Text;
    DM2.TBRemessas.Post;

    DecodeDate(Date,Ano,Mes,Dia);
    Arquivo:='REM_'+AlignText(IntToStr(DM2.TBRemessasREM_CODIGO.Value),'0',5,taRight)+'_'+
    IntToStr(Ano)+'-'+
    AlignText(IntToStr(Mes),'0',2,taRight)+'-'+
    AlignText(IntToStr(Dia),'0',2,taRight)+'.txt';
    DM2.TBRemessas.Edit;
    DM2.TBRemessasREM_ARQUIVO.Value:=Arquivo;
    DM2.TBRemessas.Post;
    //...
    {$ENDREGION}
    QYBoletosItens.First;

    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      //DM2.TBBoletosItensBOI_RECEBER.Value:=DBGrid1.DataSource.DataSet.Fields[6].AsInteger; //manter a ordernacao dos campos. REE_CODIGO=campo numero 6

      //insere o boleto na tabela de itens da remessa.
      DM2.TBRemessasItens.Insert;
      DM2.TBRemessasItensRMI_BOLETO.Value:=QYBoletosBOL_CODIGO.Value;
      DM2.TBRemessasItens.Post;
      //...
      Codigos:=Codigos+','+IntToStr(QYBoletosBOL_CODIGO.Value);
      Titulo:=ACBrBoleto1.CriarTituloNaLista;
      {$REGION 'Dados titulo'}
      with Titulo do
      begin
        if QYBoletosBOL_ACEITE.Value='A' then
        Aceite            := atSim else
        Aceite            := atNao;
        CaracTitulo       := tcSimples;
        if QYBoletosCON_BANCO.Value=104 then
        Carteira          := QYBoletosBOL_CARTEIRA.Value else //codigo da carteira em alfanumerico. (RG ou SR para caixa)
        Carteira          := IntToStr(QYBoletosBOL_CARTEIRACOD.Value);
        CarteiraEnvio     := tceCedente;
        CodigoGeracao     := '01'; //??Copy(ComboBox2.Text,1,2); //01-entrada de titulo.
        CodigoLiquidacao  := '1'; //?? codigo baixa/devolucao? //    02 : result := 'Casa Lotérica';  03 : result := 'Agências CAIXA';  04 : result := 'Compensação Eletrônica';  05 : result := 'Compensação Convencional';  06 : result := 'Internet Banking';  07 : result := 'Correspondente Bancário';  08 : result := 'Em Cartório'
        //CodigoLiquidacaoDescricao  := ??
        CodigoMora        := QYBoletosBOL_MORACODIGO.Value;
        DataAbatimento    := 0;
        DataBaixa         := QYBoletosBOL_DTBAIXABANCO.Value;
        DataCredito       := 0;
        DataDesconto      := QYBoletosBOL_DTDESCONTO.Value; // 0;
        DataDocumento     := QYBoletosBOL_DTCADASTRO.Value;
        DataMoraJuros     := QYBoletosBOL_DTJUROSAPOS.Value;
        DataOcorrencia    := 0;
        DataProcessamento := Now;
        DataProtesto      := QYBoletosBOL_DTPROTESTO.Value;
        //DescricaoMotivoRejeicaoComando :=
        if Copy(QyBoletosBOL_ESPECIEDOC.Value,1,2)='02' then
        EspecieDoc        := 'DM';
        if Copy(QyBoletosBOL_ESPECIEDOC.Value,1,2)='03' then
        EspecieDoc        := 'DMI';
        EspecieMod        := ''; //Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2); //??
        //Informativo       :=
        Instrucao1        := QYBoletosBOL_INSTRUCAO1.Value; // '00'; //padL(trim(edtInstrucoes1.Text),2,'0');
        Instrucao2        := QYBoletosBOL_INSTRUCAO2.Value; //'00'; //padL(trim(edtInstrucoes2.Text),2,'0');
        Instrucao3        := QYBoletosBOL_INSTRUCAO3.Value; //'';
        //Liquidacao        :=
        LocalPagamento    := QYBoletosBOL_LOCALPAGTO.Value;
        Mensagem.Add(QYBoletosBOL_INSTRUCAO1.Value);
        Mensagem.Add(QYBoletosBOL_INSTRUCAO2.Value);
        //MotivoRejeicaoComando:=??
        MultaValorFixo    := False;

        if QYBoletosCON_NOSSONUMFORMATAR.Value='S' then
        NossoNumero       := AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',QYBoletosCON_NOSSONUMDIGITOS.Value,taRight) else
        NossoNumero       := AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',8,taRight);

        QYBoletosItens.FetchAll;
        NumeroDocumento   := IntToStr(QYBoletosBOL_CODIGO.Value);

        OcorrenciaOriginal.Tipo := toRemessaRegistrar; //padrão.
        case StrToInt(Copy(ComboBox2.Text,1,2)) of
          01: OcorrenciaOriginal.Tipo := toRemessaRegistrar;                       //ENTRADA DE TITULO.
          02: OcorrenciaOriginal.Tipo := toRemessaBaixar;                          //PEDIDO DE BAIXA.
          03: OcorrenciaOriginal.Tipo := toRemessaProtestoFinsFalimentares;        //PROTESTO PARA FINS FALIMENTARES.
          04: OcorrenciaOriginal.Tipo := toRemessaConcederAbatimento;              //CONCESSAO DE ABATIMENTO.
          05: OcorrenciaOriginal.Tipo := toRemessaCancelarAbatimento;              //CANCELAMENTO DE ABATIMENTO.
          06: OcorrenciaOriginal.Tipo := toRemessaAlterarVencimento;               //ALTERACAO DE VENCIMENTO.
          07: OcorrenciaOriginal.Tipo := toRemessaConcederDesconto;                //CONCESSAO DE DESCONTO.
          08: OcorrenciaOriginal.Tipo := toRemessaCancelarDesconto;                //CANCELAMENTO DE DESCONTO.
          09: OcorrenciaOriginal.Tipo := toRemessaProtestar;                       //PROTESTAR.
          //10: OcorrenciaOriginal.Tipo := toRemessa;                              //SUSTAR PROTESTO E BAIXAR TITULO.
          11: OcorrenciaOriginal.Tipo := toRemessaSustarProtesto;                  //SUSTAR PROTESTO E MANTER EM CARTEIRA.
          12: OcorrenciaOriginal.Tipo := toRemessaCobrarJurosMora;                 //ALTERACAO DE JUROS DE MORA.
          13: OcorrenciaOriginal.Tipo := toRemessaNaoCobrarJurosMora;              //DISPENSAR COBRANCA DE JUROS DE MORA.
          //14: OcorrenciaOriginal.Tipo := toRemessa;                              //ALTERACAO DE VALOR/PERCENTUAL DE MULTA
          15: OcorrenciaOriginal.Tipo := toRemessaDispensarJuros;                  //DISPENSAR COBRANCA DE MULTA
          //16: OcorrenciaOriginal.Tipo := toRemessa;                              //ALTERACAO DE VALOR/DATA DE DESCONTO
          //17: OcorrenciaOriginal.Tipo := toRemessa                               //NAO CONCEDER DESCONTO
          //18: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERACAO DO VALOR DE ABATIMENTO
          //19: OcorrenciaOriginal.Tipo := toRemessa                               //PRAZO LIMITE DE RECEBIMENTO - ALTERAR
          //20: OcorrenciaOriginal.Tipo := toRemessa                               //PRAZO LIMITE DE RECEBIMENTO - DISPENSAR
          //21: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERAR NUMERO DO TITULO DADO PELO CEDENTE
          22: OcorrenciaOriginal.Tipo := toRemessaAlterarNumeroControle;           //ALTERAR NUMERO CONTROLE DO PARTICIPANTE
          23: OcorrenciaOriginal.Tipo := toRemessaAlterarNomeEnderecoSacado;       //ALTERAR DADOS DO SACADO
          //24: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERAR DADOS DO SACADOR/AVALISTA
          //30: OcorrenciaOriginal.Tipo := toRemessa                               //RECUSA DA ALEGACAO DO SACADO
          //31: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERACAO DE OUTROS DADOS (SOMENTE ENDERECO DO PAGADOR)
          33: OcorrenciaOriginal.Tipo := toRemessaAcertarRateioCredito;            //ALTERACAO DOS DADOS DO RATEIO DE CREDITO
          34: OcorrenciaOriginal.Tipo := toRemessaCancelarRateioCredito;           //PEDIDO DE CANCELAMENTO DOS DADOS DO RATEIO DE CREDITO
          35: OcorrenciaOriginal.Tipo := toRemessaDesagendarDebitoAutomatico;      //PEDIDO DE DESAGENDAMENTO DO DEBITO AUTOMATICO
          //40: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERACAO DE CARTEIRA
          41: OcorrenciaOriginal.Tipo := toRemessaCancelarInstrucaoProtesto;       //CANCELAR INSTRUCAO AUTOMATICA DE PROTESTO
          //42: OcorrenciaOriginal.Tipo := toRemessaa                              //ALTERACAO DE ESPECIE DE TITULO.
          43: OcorrenciaOriginal.Tipo := toRemessaTransferenciaCarteira;           //TRANSFERENCIA DE CARTEIRA/MODALIDADE DE COBRANCA
          //44: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERACAO DE CONTRATO DE COBRANCA
          //45: OcorrenciaOriginal.Tipo := toRemessa                               //NEGATIVACAO SEM PROTESTO
          //46: OcorrenciaOriginal.Tipo := toRemessa                               //SOLICITACAO DE BAIXA DE TITULO NEGATIVADO SEM PROTESTO
          //90: OcorrenciaOriginal.Tipo := toRemessa                               //ALTERAR TIPO DE EMISSAO
          93: OcorrenciaOriginal.Tipo := toRemessaNegativacaoSerasa;               //INCLUSAO NEGATIVACAO VIA SERASA
          94: OcorrenciaOriginal.Tipo := toRemessaExcluirNegativacaoSerasa;        //EXCLUSAO NEGATIVACAO VIA SERASA
          //95: OcorrenciaOriginal.Tipo := toRemessa                               //ENVIO DE SMS AO PAGADOR
          //96: OcorrenciaOriginal.Tipo := toRemessa                               //CANCELAMENTO INSTRUCAO DE SMS
        end;
        Parcela                 := 0;
        PercentualMulta         := QYBoletosBOL_MULTA.AsExtended;
        Referencia              := '';
        Sacado.Bairro           := QYBoletosBOL_BAIRRO.Value;
        Sacado.CEP              := LimparFormatacao(QYBoletosBOL_CEP.Value);
        Sacado.Cidade           := QYBoletosBOL_CIDADE.Value;
        if QYBoletosBOL_TIPOPESSOA.Value='J' then
        begin
          Sacado.CNPJCPF        := LimparFormatacao(QYBoletosBOL_CNPJ.Value);
          Sacado.Pessoa         := pJuridica;
        end else
        begin
          Sacado.CNPJCPF        := LimparFormatacao(QYBoletosBOL_CPF.Value);
          Sacado.Pessoa         := pFisica;
        end;
        Sacado.Email            := '';
        Sacado.Fone             := '';
        Sacado.UF               := QYBoletosBOL_ESTADO.Value;
        Sacado.Logradouro       := QYBoletosBOL_ENDERECO.Value;
        Sacado.NomeSacado       := QYBoletosBOL_NOME.Value;
        Sacado.Numero           := QYBoletosBOL_NUMERO.Value;
        //Sacado.SacadoAvalista
        SeuNumero               := IntToStr(QYBoletosBOL_CODIGO.Value);
        TextoLivre              := '';
        TipoDiasProtesto        := diCorridos;
        TipoImpressao           := tipNormal;
        //TotalParcelas         :=
        //UsoBanco              :=
        ValorAbatimento         := 0;
        ValorDesconto           := QYBoletosBOL_DESCVALOR.AsExtended; //0;
        ValorDescontoAntDia     := 0;
        ValorDespesaCobranca    := 0;
        ValorDocumento          := QYBoletosBOL_VALORTOTAL.AsExtended;
        ValorIOF                := 0;
        ValorMoraJuros          := QYBoletosBOL_MORAJUROS.AsExtended; //QYBoletosBOL_MORAJUROS.Value/100.00;
        ValorOutrosCreditos     := 0;
        ValorOutrasDespesas     := 0;
        ValorPago               := 0;
        ValorRecebido           := 0;
        Vencimento              := QYBoletosBOL_DTVENCIMENTO.Value;
        //ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
      end;
      {$ENDREGION}
    end;
  end;
end;

procedure TFormBoletosRemessas.PngSpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit1,Edit2);
end;

procedure TFormBoletosRemessas.SpeedButton2Click(Sender: TObject);
begin
  LocContasBotao(Edit3,Edit4);
end;

end.
