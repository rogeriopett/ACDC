unit ConhecimentosInutilizados;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, PngSpeedButton, DBSBtn, ExtCtrls, Menus, ImgList,
  PngImageList, StdCtrls, Mask, System.ImageList, System.UITypes;

type
  TFormConhecimentosInutilizados = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label95: TLabel;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Memo1: TMemo;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N3: TMenuItem;
    InutilizarCTe1: TMenuItem;
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
    Bevel2: TBevel;
    PngSpeedButton1: TPngSpeedButton;
    procedure Ajuda2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure InutilizarCTe1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosInutilizados: TFormConhecimentosInutilizados;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet, Parametros, Main, DB,
  ConhecimentosInutilizadosLoc, CTe_Util_TLB;
{$R *.dfm}

procedure TFormConhecimentosInutilizados.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConhecimentosInutilizados.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConhecimentosInutilizados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBCteInutilizados.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormConhecimentosInutilizados.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConhecimentosInutilizados.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormConhecimentosInutilizados);
end;

procedure TFormConhecimentosInutilizados.InutilizarCTe1Click(Sender: TObject);
var
  U: CTe_Util_Interface;
  ProcInutCte, Protocolo, ProtocoloDH, MsgDados, MsgResultado, MsgRetWS: Widestring;
  F: TextFile;
  A,M,D: Word;
  Pasta, NomeArquivo: String;
begin
  AbortIf(DM2.TBCteInutilizados.IsEmpty,'Nenhum registro selecionado.');
  AbortIf(DM2.TBCteInutilizadosCIN_PROTOCOLO.Value<>'','Inutilização já protocolada.');

  if MessageDlg('Deseja inutilizar a faixa selecionada? ('+IntToStr(DM2.TBCteInutilizadosCIN_NUMINICIAL.Value)+'-'+IntToStr(DM2.TBCteInutilizadosCIN_NUMFINAL.Value)+')',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //cria subdiretórios de ANO e MES.
    DecodeDate(DM2.TBCteInutilizadosCIN_DTCADASTRO.Value,A,M,D);
    Pasta:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
    if not System.SysUtils.DirectoryExists(Pasta) then
    AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');

    Memo1.Lines.Clear;
    Memo1.Lines.Add('Inutilização de CTe...');
    Screen.Cursor:=crHourGlass;
    U:=CoUtil.Create;
    if DM.TBParametrosPAR_PROXY.Value='S' then
    U.InutilizaNroCT(DM.TBParametrosPAR_SIGLAWSCTE.Value,
                     DM.TBParametrosPAR_SIGLAUFCTE.Value,
                     StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value),
                     DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                     DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                     MsgDados,
                     MsgRetWS,
                     MsgResultado,
                     ProcInutCte,
                     IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                     Copy(DM2.TBCteInutilizadosCIN_ANO.Value,3,2),
                     LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                     IntToStr(DM2.TBCteInutilizadosCIN_MODELO.Value),
                     IntToStr(DM2.TBCteInutilizadosCIN_SERIE.Value),
                     IntToStr(DM2.TBCteInutilizadosCIN_NUMINICIAL.Value),
                     IntToStr(DM2.TBCteInutilizadosCIN_NUMFINAL.Value),
                     DM2.TBCteInutilizadosCIN_JUSTIFICATIVA.Value,
                     DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value),
                     DM.TBParametrosPAR_PROXYUSER.Value,
                     DM.TBParametrosPAR_PROXYPASSWORD.Value,
                     DM.TBParametrosPAR_LICENCADLL.Value) else
    U.InutilizaNroCT(DM.TBParametrosPAR_SIGLAWSCTE.Value,
                     DM.TBParametrosPAR_SIGLAUFCTE.Value,
                     StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value),
                     DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                     DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                     MsgDados,
                     MsgRetWS,
                     MsgResultado,
                     ProcInutCte,
                     IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                     Copy(DM2.TBCteInutilizadosCIN_ANO.Value,3,2),
                     LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                     IntToStr(DM2.TBCteInutilizadosCIN_MODELO.Value),
                     IntToStr(DM2.TBCteInutilizadosCIN_SERIE.Value),
                     IntToStr(DM2.TBCteInutilizadosCIN_NUMINICIAL.Value),
                     IntToStr(DM2.TBCteInutilizadosCIN_NUMFINAL.Value),
                     DM2.TBCteInutilizadosCIN_JUSTIFICATIVA.Value,
                     '','','',
                     DM.TBParametrosPAR_LICENCADLL.Value);
    U:=nil;
    Screen.Cursor:=crDefault;
    if Protocolo<>'' then
    begin
      Memo1.Lines.Add(MsgResultado);
      DM2.TBCteInutilizados.Edit;
      DM2.TBCteInutilizadosCIN_PROTOCOLO.Value:=Protocolo;
      DM2.TBCteInutilizadosCIN_PROTOCOLODH.Value:=ProtocoloDH;
      DM2.TBCteInutilizados.Post;
      //gera arquivo procInutNfe
      DecodeDate(DM2.TBCteInutilizadosCIN_DTCADASTRO.Value,A,M,D);
      NomeArquivo:=DM2.TBCteInutilizadosCIN_ANO.Value+'.'+
                   LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value)+'.'+
                   IntToStr(DM2.TBCteInutilizadosCIN_MODELO.Value)+'.'+
                   AlignText(IntToStr(DM2.TBCteInutilizadosCIN_SERIE.Value),'0',3,taRight)+'.'+
                   AlignText(IntToStr(DM2.TBCteInutilizadosCIN_NUMINICIAL.Value),'0',9,taRight)+'-'+
                   AlignText(IntToStr(DM2.TBCteInutilizadosCIN_NUMFINAL.Value),'0',9,taRight)+'-procInutCTe.xml';
      AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+NomeArquivo,CP_UTF8);
      Rewrite(F);
      Write(F,AnsiToUtf8(ProcInutCTe));
      CloseFile(F);
      //...
    end else
    Memo1.Lines.Add(MsgResultado);
  end;
end;

procedure TFormConhecimentosInutilizados.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosInutilizadosLoc, FormConhecimentosInutilizadosLoc);
  FormConhecimentosInutilizadosLoc.ShowModal;
  if ConhecimentosInutilizadosLoc.Procurar then
  begin
    DM2.TBCteInutilizados.Close;
    DM2.TBCteInutilizados.ParamByName('codigo').AsInteger:=FormConhecimentosInutilizadosLoc.QYCteInutilizadosCIN_CODIGO.Value;
    DM2.TBCteInutilizados.Open;
  end;
  FormConhecimentosInutilizadosLoc.Free;
  FormConhecimentosInutilizadosLoc:=nil;
end;

initialization
  RegisterClass(TFormConhecimentosInutilizados);

finalization
  UnRegisterClass(TFormConhecimentosInutilizados);

end.
