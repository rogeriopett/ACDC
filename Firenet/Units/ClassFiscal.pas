unit ClassFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, Vcl.ComCtrls, System.UITypes;

type
  TFormClassFiscal = class(TForm)
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
    DBEdit5: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    N1: TMenuItem;
    ImportarDadosDaPlanilhaDoIBPT1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ProgressBar1: TProgressBar;
    Label8: TLabel;
    ImportarDadosDaPlanilhaDoIBPT1Button: TPngSpeedButton;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure ImportarDadosDaPlanilhaDoIBPT1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClassFiscal: TFormClassFiscal;

implementation
uses DataMod, DB, Funcoes1, Main, ClassFiscalLoc, ClassFiscalFast, ShellAPI;

{$R *.dfm}

procedure TFormClassFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBClassFiscal.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormClassFiscal.FormCreate(Sender: TObject);
begin
  Label8.Caption:='';
  ProgressBar1.Visible:=False;
end;

procedure TFormClassFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClassFiscal.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClassFiscal.Label17Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('http://deolhonoimposto.ibpt.org.br/'),nil,nil,sw_ShowNormal);
end;

procedure TFormClassFiscal.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassFiscalLoc, FormClassFiscalLoc);
  FormClassFiscalLoc.ShowModal;
  if ClassFiscalLoc.Procurar then
  begin
    DM.TBClassFiscal.Close;
    DM.TBClassFiscal.ParamByName('codigo').AsString:=FormClassFiscalLoc.QYClassFiscalCLF_CODIGO.Value;
    DM.TBClassFiscal.ParamByName('excecao').AsInteger:=FormClassFiscalLoc.QYClassFiscalCLF_EXCECAO.Value;
    DM.TBClassFiscal.Open;
  end;
  FormClassFiscalLoc.Free;
  FormClassFiscalLoc:=nil;
end;

procedure TFormClassFiscal.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassFiscalFast, FormClassFiscalFast);
  FormClassFiscalFast.QY01.Close;
  FormClassFiscalFast.QY01.Open;
  FormClassFiscalFast.frxReport1.Variables['TITULO']:=QuotedStr('Classificações Fiscais');
  FormClassFiscalFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormClassFiscalFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormClassFiscalFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormClassFiscalFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormClassFiscalFast.frxReport1.ShowReport;
  FormClassFiscalFast.Free;
  FormClassFiscalFast:=nil;
end;

procedure TFormClassFiscal.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormClassFiscal.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormClassFiscal);
end;

procedure TFormClassFiscal.ImportarDadosDaPlanilhaDoIBPT1Click(Sender: TObject);
var
  SL, SLUpdate: TStringList;
   I: Integer;
   F: TextFile;
   S, Classificacao, Excecao: String;
begin
  OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    if MessageDlg('Importar planilha?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      //codigo;ex;tipo;descricao;nacionalfederal;importadosfederal;estadual;municipal;vigenciainicio;vigenciafim;chave;versao;fonte
      //01012100;;0;Cavalos reprodutores,de raca pura;4.20;6.20;0.00;0.00;01/01/2016;30/06/2016;ca7gi3;16.1.A;IBPT
//39233090	1	0	Ex" 01 - Esboços de garrafas de plástico, fechados em uma extremidade e aberta na outra, munida de uma rosca sobre a qual irá adaptar-se a uma tampa roscada, devendo a parte abaixo da rosca ser transformada, posteriormente, para que seja obtida a dimensão e forma desejadas."	13.45	19.51	17.00	0.00	01/07/2021	31/07/2021	11AEAD	21.2.A	IBPT/empresometro.com.br

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
        MessageDlg('O arquivo selecionado não é um arquivo do IBPT válido.'+#13#10#13#10+'O cabeçalho do arquivo deve ser como o abaixo'+#13#10#13#10+
        'codigo;ex;tipo;descricao;nacionalfederal;importadosfederal;estadual;municipal;vigenciainicio;vigenciafim;chave;versao;fonte',mtError,[mbOk],0);
        CloseFile(F);
        SL.Destroy;
        Exit;
      end;

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
        S:=RemoveAspas(S);

        SL.Clear;
        SL.DelimitedText:=S;
        if SL.Strings[2]='0' then //3a coluna = tipo. 0=produto 1=servico.
        begin
          if SL.Strings[1]='' then
          Excecao:='0' else
          Excecao:=SL.Strings[1];

          Classificacao:=AlignText(SL.Strings[0],'0',8,taRight);

          DM.QYAux.Close;
          DM.QYAux.SQL.Clear;
          DM.QYAux.SQL.Add('select count(*) as QTDE from CLASSFISCAL where CLF_CODIGO=:codigo and CLF_EXCECAO=:excecao');
          DM.QYAux.ParamByName('codigo').AsString:=Classificacao;
          DM.QYAux.ParamByName('excecao').AsString:=Excecao;
          DM.QYAux.Open;

          if DM.QYAux.FieldByName('QTDE').AsInteger >= 1 then
          begin
            SLUpdate.Add('UPDATE CLASSFISCAL SET '+
                         'CLF_ALIQUOTAESTADUAL='+SL.Strings[6]+', '+
                         'CLF_ALIQUOTAIMPORTACAO='+SL.Strings[5]+', '+
                         'CLF_ALIQUOTAMUNICIPAL='+SL.Strings[7]+', '+
                         'CLF_ALIQUOTANACIONAL='+SL.Strings[4]+', '+
                         'CLF_DESCRICAO='+QuotedStr(Copy(UpperCase(Trim(RemoveAcentos(SL.Strings[3]))),1,120))+', '+
                         'CLF_DTATUALIZACAO='+QuotedStr(DateToFBDate(Date))+', '+
                         'CLF_USUARIO='+QuotedStr(DM.UsuarioLogin)+', '+
                         'CLF_VERSAO='+QuotedStr(SL.Strings[11])+', '+
                         'CLF_VIGENCIAFIM='+QuotedStr(DateToFBDate(StrToDate(SL.Strings[9])))+', '+
                         'CLF_VIGENCIAINI='+QuotedStr(DateToFBDate(StrToDate(SL.Strings[8])))+' '+
                         'WHERE CLF_CODIGO='+QuotedStr(Classificacao)+' and CLF_EXCECAO='+QuotedStr(Excecao)+';');
          end else
          begin
            SLUpdate.Add('INSERT INTO CLASSFISCAL (CLF_CODIGO, CLF_ALIQUOTAESTADUAL, CLF_ALIQUOTAIMPORTACAO, '+
                         'CLF_ALIQUOTAMUNICIPAL, CLF_ALIQUOTANACIONAL, CLF_DESCRICAO, CLF_DTATUALIZACAO, '+
                         'CLF_DTCADASTRO, CLF_EXCECAO, CLF_USUARIO, CLF_VERSAO, CLF_VIGENCIAFIM, CLF_VIGENCIAINI) VALUES ('+
                         QuotedStr(Classificacao)+', '+
                         SL.Strings[6]+', '+
                         SL.Strings[5]+', '+
                         SL.Strings[7]+', '+
                         SL.Strings[4]+', '+
                         QuotedStr(Copy(UpperCase(Trim(RemoveAcentos(SL.Strings[3]))),1,120))+', '+
                         QuotedStr(DateToFBDate(Date))+', '+
                         QuotedStr(DateToFBDate(Date))+', '+
                         QuotedStr(Excecao)+', '+
                         QuotedStr(DM.UsuarioLogin)+', '+
                         QuotedStr(SL.Strings[11])+', '+
                         QuotedStr(DateToFBDate(StrToDate(SL.Strings[9])))+', '+
                         QuotedStr(DateToFBDate(StrToDate(SL.Strings[8])))+');');
          end;
        end;
      end;
      DM.TRScript.StartTransaction;
      DM.FDScript.SQLScripts.Clear;
      DM.FDScript.SQLScripts.Add;
      DM.FDScript.SQLScripts.Items[0].SQL.Text:=SLUpdate.Text;
      DM.FDScript.ExecuteAll;
      DM.TRScript.Commit;

      DM.TBClassFiscal.Close;
      DM.TBClassFiscal.Open;

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
  RegisterClass(TFormClassFiscal);

finalization
  UnRegisterClass(TFormClassFiscal);

end.
