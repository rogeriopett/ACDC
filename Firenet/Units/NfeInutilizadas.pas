unit NfeInutilizadas;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Menus, ImgList, PngImageList, Buttons,
  PngSpeedButton, DBSBtn, ExtCtrls, System.ImageList, System.UITypes;

type
  TFormNfeInutilizadas = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    SpeedButton2: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    SpeedButton1: TPngSpeedButton;
    dbSBtnEdit: TDBSpeedButton;
    PngImageList1: TPngImageList;
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Bevel2: TBevel;
    PngSpeedButton1: TPngSpeedButton;
    N3: TMenuItem;
    InutilizarNFe1: TMenuItem;
    Memo1: TMemo;
    Label95: TLabel;
    Label11: TLabel;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure InutilizarNFe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeInutilizadas: TFormNfeInutilizadas;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DB, NFe_Util_2G_TLB, NfeInutilizadasLoc, Main;
{$R *.dfm}

procedure TFormNfeInutilizadas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfeInutilizadas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeInutilizadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBNfeInutilizadas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormNfeInutilizadas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeInutilizadas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormNfeInutilizadas);
end;

procedure TFormNfeInutilizadas.InutilizarNFe1Click(Sender: TObject);
var
  U: NFe_Util_2G_Interface;
  ProcInutNfe, Protocolo, ProtocoloDH, MsgDados, MsgResultado, MsgRetWS: Widestring;
  cStat: Integer;
  F: TextFile;
  A,M,D: Word;
  Pasta, NomeArquivo: String;
begin
  AbortIf(DM.TBNfeInutilizadas.IsEmpty,'Nenhum registro selecionado.');
  AbortIf(DM.TBNfeInutilizadasNIN_PROTOCOLO.Value<>'','Inutilização já protocolada.');

  if MessageDlg('Deseja inutilizar a faixa selecionada? ('+IntToStr(DM.TBNfeInutilizadasNIN_NUMINICIAL.Value)+'-'+IntToStr(DM.TBNfeInutilizadasNIN_NUMFINAL.Value)+')',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //cria subdiretórios de ANO e MES.
    DecodeDate(DM.TBNfeInutilizadasNIN_DTCADASTRO.Value,A,M,D);
    Pasta:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
    if not System.SysUtils.DirectoryExists(Pasta) then
    AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');

    Memo1.Lines.Clear;
    Memo1.Lines.Add('Inutilização de NFe...');
    Screen.Cursor:=crHourGlass;
    U:=CoUtil.Create;
    if DM.TBParametrosPAR_PROXY.Value='S' then
    ProcInutNfe:=U.InutilizaNroNF2G(DM.TBParametrosPAR_SIGLAWS.Value,
                                    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                                    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                                    DM.TBParametrosPAR_VERSAOXML.Value,
                                    MsgDados,
                                    MsgRetWS,
                                    cStat,
                                    MsgResultado,
                                    IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                                    Copy(DM.TBNfeInutilizadasNIN_ANO.Value,3,2),
                                    LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                                    IntToStr(DM.TBNfeInutilizadasNIN_MODELO.Value),
                                    IntToStr(DM.TBNfeInutilizadasNIN_SERIE.Value),
                                    IntToStr(DM.TBNfeInutilizadasNIN_NUMINICIAL.Value),
                                    IntToStr(DM.TBNfeInutilizadasNIN_NUMFINAL.Value),
                                    Trim(DM.TBNfeInutilizadasNIN_JUSTIFICATIVA.Value), //animais, colocam espaço no final.
                                    Protocolo,
                                    ProtocoloDH,
                                    DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value),
                                    DM.TBParametrosPAR_PROXYUSER.Value,
                                    DM.TBParametrosPAR_PROXYPASSWORD.Value,
                                    DM.TBParametrosPAR_LICENCADLL.Value) else
    ProcInutNFe:=U.InutilizaNroNF2G(DM.TBParametrosPAR_SIGLAWS.Value,
                                    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                                    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                                    DM.TBParametrosPAR_VERSAOXML.Value,
                                    MsgDados,
                                    MsgRetWS,
                                    cStat,
                                    MsgResultado,
                                    IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                                    Copy(DM.TBNfeInutilizadasNIN_ANO.Value,3,2),
                                    LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                                    IntToStr(DM.TBNfeInutilizadasNIN_MODELO.Value),
                                    IntToStr(DM.TBNfeInutilizadasNIN_SERIE.Value),
                                    IntToStr(DM.TBNfeInutilizadasNIN_NUMINICIAL.Value),
                                    IntToStr(DM.TBNfeInutilizadasNIN_NUMFINAL.Value),
                                    DM.TBNfeInutilizadasNIN_JUSTIFICATIVA.Value,
                                    Protocolo,
                                    ProtocoloDH,
                                    '','','',
                                    DM.TBParametrosPAR_LICENCADLL.Value);
    U:=nil;
    Screen.Cursor:=crDefault;
    if Protocolo<>'' then
    begin
      Memo1.Lines.Add(MsgResultado);
      DM.TBNfeInutilizadas.Edit;
      DM.TBNfeInutilizadasNIN_PROTOCOLO.Value:=Protocolo;
      DM.TBNfeInutilizadasNIN_PROTOCOLODH.Value:=ProtocoloDH;
      DM.TBNfeInutilizadas.Post;
      //gera arquivo procInutNfe
      DecodeDate(DM.TBNfeInutilizadasNIN_DTCADASTRO.Value,A,M,D);
      NomeArquivo:=DM.TBNfeInutilizadasNIN_ANO.Value+'.'+
                   LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value)+'.'+
                   IntToStr(DM.TBNfeInutilizadasNIN_MODELO.Value)+'.'+
                   AlignText(IntToStr(DM.TBNfeInutilizadasNIN_SERIE.Value),'0',3,taRight)+'.'+
                   AlignText(IntToStr(DM.TBNfeInutilizadasNIN_NUMINICIAL.Value),'0',9,taRight)+'-'+
                   AlignText(IntToStr(DM.TBNfeInutilizadasNIN_NUMFINAL.Value),'0',9,taRight)+'-procInutNFe.xml';
      AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+NomeArquivo,CP_UTF8);
      Rewrite(F);
      Write(F,AnsiToUtf8(ProcInutNFe));
      CloseFile(F);
      //...
    end else
    Memo1.Lines.Add(MsgResultado);
  end;
end;

procedure TFormNfeInutilizadas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeInutilizadasLoc, FormNfeInutilizadasLoc);
  FormNfeInutilizadasLoc.ShowModal;
  if NfeInutilizadasLoc.Procurar then
  begin
    DM.TBNfeInutilizadas.Close;
    DM.TBNfeInutilizadas.ParamByName('codigo').AsInteger:=FormNfeInutilizadasLoc.QYNfeInutilizadasNIN_CODIGO.Value;
    DM.TBNfeInutilizadas.Open;
  end;
  FormNfeInutilizadasLoc.Free;
  FormNfeInutilizadasLoc:=nil;
end;

initialization
  RegisterClass(TFormNfeInutilizadas);

finalization
  UnRegisterClass(TFormNfeInutilizadas);

end.
