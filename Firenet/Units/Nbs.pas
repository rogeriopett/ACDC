unit Nbs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFormNbs = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ProgressBar1: TProgressBar;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    ImportarDados1: TMenuItem;
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
    OpenDialog1: TOpenDialog;
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
    ImportarDados1Button: TPngSpeedButton;
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImportarDados1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNbs: TFormNbs;

implementation
uses DataMod, Funcoes1, Main, DB, NbsLoc;
{$R *.dfm}

procedure TFormNbs.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNbs.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNbs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBNbs.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormNbs.FormCreate(Sender: TObject);
begin
  Label8.Caption:='';
  ProgressBar1.Visible:=False;
end;

procedure TFormNbs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNbs.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormNbs);
end;

procedure TFormNbs.ImportarDados1Click(Sender: TObject);
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
      //codigo;descricao
      //NBS 2.0;DESCRIÇÃO
      //1.01;Serviços de construção
      //1.0101;Serviços de construção de edificações
      //1.0101.1;Serviços de construção de edificações residenciais
      //1.0101.11.00;Serviços de construção de edificações residenciais de um e dois pavimentos

      //número total de linhas.
      SL:=TStringList.Create;
      SL.LoadFromFile(OpenDialog1.FileName);
      I:=SL.Count-1;
      SL.Clear;

      AssignFile(F,OpenDialog1.FileName);
      Reset(F);
      Readln(F,S); //pula a primeira linha.
      if S<>'NBS 2.0;DESCRIÇÃO' then
      begin
        MessageDlg('O arquivo selecionado não é um arquivo válido.',mtError,[mbOk],0);
        CloseFile(F);
        SL.Destroy;
        Exit;
      end;

      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from NBS order by NBS_CODIGO');
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
        CodigoFormatado:=SoNumeros(SL.Strings[0]);
        if Length(CodigoFormatado)=9 then
        begin
          if DM.QYAux.Locate('NBS_CODIGO',CodigoFormatado,[]) then
          begin
            SLUpdate.Add(
              'UPDATE NBS SET '+
              'NBS_DESCRICAO=' +QuotedStr(Copy(UpperCase(RemoveAcentos(SL.Strings[1])),1,1000))+', '+
              'NBS_DTATUALIZACAO='+QuotedStr(DateToFBDate(Date))+', '+
              'NBS_HRATUALIZACAO='+QuotedStr(TimeToStr(Time))+', '+
              'NBS_USUARIO='+QuotedStr(DM.UsuarioLogin)+' '+
              'WHERE NBS_CODIGO='+QuotedStr(CodigoFormatado)+';'
            );
          end else
          begin
            SLUpdate.Add(
              'INSERT INTO NBS (NBS_CODIGO, NBS_DESCRICAO, NBS_DTATUALIZACAO, NBS_DTCADASTRO, NBS_HRATUALIZACAO, NBS_HRCADASTRO, NBS_USUARIO) VALUES ('+
              QuotedStr(CodigoFormatado)+', '+
              QuotedStr(Copy(UpperCase(RemoveAcentos(SL.Strings[1])),1,1000))+', '+
              QuotedStr(DateToFBDate(Date))+', '+
              QuotedStr(DateToFBDate(Date))+', '+
              QuotedStr(TimeToStr(Time))+', '+
              QuotedStr(TimeToStr(Time))+', '+
              QuotedStr(DM.UsuarioLogin)+');'
            );
          end;
        end;
      end;

      DM.TRScript.StartTransaction;
      DM.FDScript.SQLScripts.Clear;
      DM.FDScript.SQLScripts.Add;
      DM.FDScript.SQLScripts.Items[0].SQL.Text:=SLUpdate.Text;
      DM.FDScript.ExecuteAll;
      DM.TRScript.Commit;

      DM.TBNbs.Close;
      DM.TBNbs.Open;

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

procedure TFormNbs.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNbsLoc, FormNbsLoc);
  FormNbsLoc.ShowModal;
  if NbsLoc.Procurar then
  begin
    DM.TBNbs.Close;
    DM.TBNbs.ParamByName('codigo').AsString:=FormNbsLoc.QYNbsNBS_CODIGO.Value;
    DM.TBNbs.Open;
  end;
  FormNbsLoc.Free;
  FormNbsLoc:=nil;
end;

procedure TFormNbs.Relatorios2Click(Sender: TObject);
begin
//  Application.CreateForm(TFormNbsFast, FormNbsFast);
//  FormNbsFast.QY01.Close;
//  FormNbsFast.QY01.Open;
//  FormNbsFast.frxReport1.Variables['TITULO']:=QuotedStr('NBS');
//  FormNbsFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
//  FormNbsFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
//  FormNbsFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
//  FormNbsFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
//  FormNbsFast.frxReport1.ShowReport;
//  FormNbsFast.Free;
//  FormNbsFast:=nil;
end;

initialization
  RegisterClass(TFormNbs);

finalization
  UnRegisterClass(TFormNbs);

end.
