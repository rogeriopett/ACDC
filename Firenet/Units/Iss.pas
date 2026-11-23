unit Iss;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, Vcl.ComCtrls, System.UITypes;

type
  TFormIss = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label8: TLabel;
    ProgressBar1: TProgressBar;
    N1: TMenuItem;
    ImportarDadosDaPlanilhaDoIBPT1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ImportarDadosDaPlanilhaDoIBPT1Button: TPngSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImportarDadosDaPlanilhaDoIBPT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIss: TFormIss;

implementation
uses DataMod, DB, Funcoes1, Main, IssLoc, IssFast, ShellAPI;
{$R *.dfm}

procedure TFormIss.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBIss.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormIss.FormCreate(Sender: TObject);
begin
  Label8.Caption:='';
  ProgressBar1.Visible:=False;
end;

procedure TFormIss.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormIss.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormIss.Label17Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('http://deolhonoimposto.ibpt.org.br/'),nil,nil,sw_ShowNormal);
end;

procedure TFormIss.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIssLoc, FormIssLoc);
  FormIssLoc.ShowModal;
  if IssLoc.Procurar then
  begin
    DM.TBIss.Close;
    DM.TBIss.ParamByName('codigo').AsString:=FormIssLoc.QYIssISS_CODIGO.Value;
    DM.TBIss.Open;
  end;
  FormIssLoc.Free;
  FormIssLoc:=nil;
end;

procedure TFormIss.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormIssFast, FormIssFast);
  FormIssFast.QY01.Close;
  FormIssFast.QY01.Open;
  FormIssFast.frxReport1.Variables['TITULO']:=QuotedStr('ISS');
  FormIssFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormIssFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormIssFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormIssFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormIssFast.frxReport1.ShowReport;
  FormIssFast.Free;
  FormIssFast:=nil;
end;

procedure TFormIss.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormIss.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormIss);
end;

procedure TFormIss.ImportarDadosDaPlanilhaDoIBPT1Click(Sender: TObject);
var
  SL, SLUpdate: TStringList;
   I: Integer;
   F: TextFile;
   S, CodigoFormatado: String;
begin
  OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    if MessageDlg('Importar planilha?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      //codigo;ex;tipo;descricao;nacionalfederal;importadosfederal;estadual;municipal;vigenciainicio;vigenciafim;chave;versao;fonte
      //01012100;;0;Cavalos reprodutores,de raca pura;4.20;6.20;0.00;0.00;01/01/2016;30/06/2016;ca7gi3;16.1.A;IBPT

      //número total de linhas.
      SL:=TStringList.Create;
      SL.LoadFromFile(OpenDialog1.FileName);
      I:=SL.Count-1;
      SL.Clear;

      AssignFile(F,OpenDialog1.FileName);
      Reset(F);
      Readln(F,S); //pula a primeira linha.
      if S<>'codigo;ex;tipo;descricao;nacionalfederal;importadosfederal;estadual;municipal;vigenciainicio;vigenciafim;chave;versao;fonte' then
      begin
        MessageDlg('O arquivo selecionado não é um arquivo do IBPT válido.',mtError,[mbOk],0);
        CloseFile(F);
        SL.Destroy;
        Exit;
      end;

      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from ISS order by ISS_CODIGO');
      DM.QYAux.Open;

      ProgressBar1.Max:=I;
      ProgressBar1.Position:=0;
      ProgressBar1.Visible:=True;
      Label8.Visible:=True;
      SL.Delimiter:=';';
      SL.StrictDelimiter:=True;
      SLUpdate:=TStringList.Create;
      Screen.Cursor:=crHourGlass;
      while not EOF(F) do
      begin
        ReadLn(F,S);
        ProgressBar1.StepIt;
        Label8.Caption:='Verificando linha '+IntToStr(ProgressBar1.Position)+' de '+IntToStr(I);
        Application.ProcessMessages;
        SL.Clear;
        SL.DelimitedText:=S;
        if (SL.Strings[1]='') and (SL.Strings[2]='2') then //coluna 1=ex, 2=tipo. iss é tipo 2
        begin
          CodigoFormatado:=AlignText(SL.Strings[0],'0',4,taRight);
          Insert('.',CodigoFormatado,3); //insere o ponto na terceira casa da string;
          if DM.QYAux.Locate('ISS_CODIGO',CodigoFormatado,[]) then
          begin
            SLUpdate.Add('UPDATE ISS SET '+
                         'ISS_ALIQUOTAESTADUAL='+SL.Strings[6]+', '+
                         'ISS_ALIQUOTAIMPORTACAO='+SL.Strings[5]+', '+
                         'ISS_ALIQUOTAMUNICIPAL='+SL.Strings[7]+', '+
                         'ISS_ALIQUOTANACIONAL='+SL.Strings[4]+', '+
                         'ISS_DESCRICAO='+QuotedStr(Copy(UpperCase(RemoveAcentos(SL.Strings[3])),1,1000))+', '+
                         'ISS_DTATUALIZACAO='+QuotedStr(DateToFBDate(Date))+', '+
                         'ISS_USUARIO='+QuotedStr(DM.UsuarioLogin)+' '+
                         'WHERE ISS_CODIGO='+QuotedStr(CodigoFormatado)+';');
          end else
          begin
            SLUpdate.Add('INSERT INTO ISS (ISS_CODIGO, ISS_ALIQUOTAESTADUAL, ISS_ALIQUOTAIMPORTACAO, ISS_ALIQUOTAMUNICIPAL, ISS_ALIQUOTANACIONAL, ISS_DESCRICAO, ISS_DTATUALIZACAO, ISS_DTCADASTRO, ISS_USUARIO) VALUES ('+
                         QuotedStr(CodigoFormatado)+', '+
                         SL.Strings[6]+', '+
                         SL.Strings[5]+', '+
                         SL.Strings[7]+', '+
                         SL.Strings[4]+', '+
                         QuotedStr(Copy(UpperCase(RemoveAcentos(SL.Strings[3])),1,1000))+', '+
                         QuotedStr(DateToFBDate(Date))+', '+
                         QuotedStr(DateToFBDate(Date))+', '+
                         QuotedStr(DM.UsuarioLogin)+');');
          end;
        end;
      end;
      DM.TRScript.StartTransaction;
      DM.FDScript.SQLScripts.Clear;
      DM.FDScript.SQLScripts.Add;
      DM.FDScript.SQLScripts.Items[0].SQL.Text:=SLUpdate.Text;
      DM.FDScript.ExecuteAll;
      DM.TRScript.Commit;

      DM.TBIss.Close;
      DM.TBIss.Open;

      CloseFile(F);
      SL.Destroy;
      SLUpdate.Destroy;
      Screen.Cursor:=crDefault;
      MessageDlg('Processo de importação concluído.',mtInformation,[mbOk],0);
      ProgressBar1.Position:=0;
      ProgressBar1.Visible:=False;
      Label8.Caption:='';
      Label8.Visible:=False;
    end;
  end;
end;

initialization
  RegisterClass(TFormIss);

finalization
  UnRegisterClass(TFormIss);

end.
