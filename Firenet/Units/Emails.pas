unit Emails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ImgList, PngImageList, Menus, Buttons,
  PngSpeedButton, DBSBtn, ExtCtrls, DB, Grids, DBGrids, PngBitBtn, HtmlEditor,
  Vcl.ComCtrls, System.ImageList, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEmails = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    Excluir1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    CadastroDeAssuntos1Button: TPngSpeedButton;
    CadastroDeContasDeEmails1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    CadastroDeAssuntos1: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    N4: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    EmailsPorVendedor1: TMenuItem;
    EmailsPorAssunto1: TMenuItem;
    Reenviar1: TMenuItem;
    CadastroDeContasDeEmails1: TMenuItem;
    OpenDialog1: TOpenDialog;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Novo1Button: TPngSpeedButton;
    Reenviar1Button: TPngSpeedButton;
    Novo1: TMenuItem;
    Excluir1: TMenuItem;
    Label1: TLabel;
    DBText3: TDBText;
    Label2: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label3: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label4: TLabel;
    DSEmails: TDataSource;
    Label5: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    FrameHtmlEditor1: TFrameHtmlEditor;
    QYEmails: TFDQuery;
    TREmails: TFDTransaction;
    QYEmailsEMA_ANEXO: TStringField;
    QYEmailsEMA_ANEXO2: TStringField;
    QYEmailsEMA_ANEXO3: TStringField;
    QYEmailsEMA_ASSINATURA: TMemoField;
    QYEmailsEMA_ASSUNTO: TIntegerField;
    QYEmailsEMA_CLIENTE: TIntegerField;
    QYEmailsEMA_CODIGO: TIntegerField;
    QYEmailsEMA_CONFIRMACAO: TStringField;
    QYEmailsEMA_DESTINATARIOS: TStringField;
    QYEmailsEMA_DTATUALIZACAO: TDateField;
    QYEmailsEMA_DTCADASTRO: TDateField;
    QYEmailsEMA_DTULTENVIO: TDateField;
    QYEmailsEMA_EMAILCONTA: TIntegerField;
    QYEmailsEMA_ENVIADO: TStringField;
    QYEmailsEMA_HTML: TStringField;
    QYEmailsEMA_MENSAGEM: TMemoField;
    QYEmailsEMA_USUARIO: TStringField;
    QYEmailsEMA_VENDEDOR: TIntegerField;
    QYEmailsASS_DESCRICAO: TStringField;
    QYEmailsCLI_NOME: TStringField;
    QYEmailsEMC_ASSINATURA: TMemoField;
    QYEmailsEMC_CONFIRMACAO: TStringField;
    QYEmailsEMC_EMAIL: TStringField;
    QYEmailsEMC_LOGIN: TStringField;
    QYEmailsEMC_NOME: TStringField;
    QYEmailsEMC_POP: TStringField;
    QYEmailsEMC_POPPORTA: TIntegerField;
    QYEmailsEMC_REPLYTO: TStringField;
    QYEmailsEMC_SENHA: TStringField;
    QYEmailsEMC_SMTP: TStringField;
    QYEmailsEMC_SMTPPORTA: TIntegerField;
    QYEmailsEMC_SSL: TStringField;
    QYEmailsVEN_NOME: TStringField;
    procedure Localizar1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure CadastroDeAssuntos1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure EmailsPorVendedor1Click(Sender: TObject);
    procedure EmailsPorAssunto1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeContasDeEmails1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure Reenviar1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DSEmailsDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmails: TFormEmails;

implementation
uses DataMod, DataMod2, Clientes, Vendedores, Funcoes1, Assuntos, EmailsContas,
  AssuntosLoc, EmailsContasLoc, EmailsLoc, DataModSearch, EmailsEnviar, Main;

{$R *.dfm}

procedure TFormEmails.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormEmails.CadastroDeAssuntos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAssuntos, FormAssuntos);
  FormAssuntos.ShowModal;
  FormAssuntos.Free;
  FormAssuntos:=nil;
end;

procedure TFormEmails.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormEmails.CadastroDeContasDeEmails1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmailsContas, FormEmailsContas);
  FormEmailsContas.ShowModal;
  FormEmailsContas.Free;
  FormEmailsContas:=nil;
end;

procedure TFormEmails.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormEmails.DBGrid1DblClick(Sender: TObject);
begin
  Reenviar1.Click;
end;

procedure TFormEmails.DSEmailsDataChange(Sender: TObject; Field: TField);
begin
  Label5.Caption:=ExtractFileName(QYEmailsEMA_ANEXO.Value);
  if QYEmailsEMA_ANEXO2.Value<>'' then Label5.Caption:=Label5.Caption+' - '+ExtractFileName(QYEmailsEMA_ANEXO2.Value);
  if QYEmailsEMA_ANEXO3.Value<>'' then Label5.Caption:=Label5.Caption+' - '+ExtractFileName(QYEmailsEMA_ANEXO3.Value);

  if QYEmailsEMA_HTML.Value='S' then
  begin
    TabSheet2.TabVisible:=True;
    PageControl1.ActivePageIndex:=1;
  end else
  TabSheet2.TabVisible:=False;

  FormEmails.FrameHtmlEditor1.CarregarCodigoHTML(QYEmailsEMA_MENSAGEM.Value);
end;

procedure TFormEmails.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEmails.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBEmails.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormEmails.FormCreate(Sender: TObject);
begin
  //trás os últimos 200 emails.
{  DM2.TBEmails.Close;
  DM2.TBEmails.SelectSQL.Clear;
  DM2.TBEmails.SelectSQL.Add('select first(200) EMA_ANEXO, EMA_ANEXO2, EMA_ANEXO3, EMA_ASSINATURA, EMA_ASSUNTO, EMA_CLIENTE, EMA_CODIGO, EMA_CONFIRMACAO, EMA_DESTINATARIOS, EMA_DTATUALIZACAO, '+
                             'EMA_DTCADASTRO, EMA_DTULTENVIO, EMA_EMAILCONTA, EMA_ENVIADO, EMA_MENSAGEM, EMA_USUARIO, EMA_VENDEDOR, ASS_DESCRICAO, CLI_NOME, '+
                             'EMC_ASSINATURA, EMC_CONFIRMACAO, EMC_EMAIL, EMC_LOGIN, EMC_NOME, EMC_POP, EMC_POPPORTA, EMC_REPLYTO, EMC_SENHA, EMC_SMTP, '+
                             'EMC_SMTPPORTA, EMC_SSL, VEN_NOME from EMAILS '+
                             'left join EMAILSCONTAS on EMA_EMAILCONTA=EMC_CODIGO '+
                             'left join ASSUNTOS on EMA_ASSUNTO=ASS_CODIGO '+
                             'left join CLIENTES on EMA_CLIENTE=CLI_CODIGO '+
                             'left join VENDEDORES on EMA_VENDEDOR=VEN_CODIGO '+
                             'order by EMA_DTULTENVIO desc, EMA_CODIGO desc');
  DM2.TBEmails.Open;}

  if not DM.AtualizarUsuariosAcessos then //evita aparecer a mensagem quando está atualizando o sistema.
  begin
    FrameHtmlEditor1.InicializarFrame;
    FrameHtmlEditor1.ComboBox1Change(Self);

    QYEmails.Open;
    DSEmailsDataChange(Self,nil); //faz carregar no editor HTML.
  end;
end;

procedure TFormEmails.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEmails.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormEmails);
end;

procedure TFormEmails.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmailsLoc, FormEmailsLoc);
  FormEmailsLoc.ShowModal;
{ if EmailsLoc.Procurar then
  begin
    DM2.TBEmails.Close;
    DM2.TBEmails.ParamByName('codigo').AsInteger:=FormEmailsLoc.QYEmailsEMA_CODIGO.Value;
    DM2.TBEmails.Open;
    DM2.TBEmails.Edit;
  end;}
  FormEmailsLoc.Free;
  FormEmailsLoc:=nil;
end;

procedure TFormEmails.Novo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  EmailsEnviar.CriarNovoEmail:=True; //no evento onshow verifica se deve dar TBEmails.Insert;
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormEmails.Reenviar1Click(Sender: TObject);
begin
  AbortIf(QYEmails.IsEmpty,'Nenhum email selecionado.');

  DM2.TBEmails.Close;
  DM2.TBEmails.ParamByName('codigo').AsInteger:=QYEmailsEMA_CODIGO.Value;
  DM2.TBEmails.Open;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  EmailsEnviar.CriarNovoEmail:=False;
  DM2.TBEmails.Edit;
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormEmails.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormEmails.EmailsPorVendedor1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormEmails.EmailsPorAssunto1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormEmails);

finalization
  UnRegisterClass(TFormEmails);

end.
