unit ServicosCheck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, System.ImageList, System.UITypes,
  Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls;

type
  TFormServicosCheck = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Bevel4: TBevel;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    Bevel2: TBevel;
    Relatorios2Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    CriarChecklist1: TMenuItem;
    N2: TMenuItem;
    Label1: TLabel;
    DBText3: TDBText;
    Label2: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label3: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label48: TLabel;
    DBComboBox2: TDBComboBox;
    DBMemo3: TDBMemo;
    ExcluirChecklist1: TMenuItem;
    CriarChecklist1Button: TPngSpeedButton;
    ExcluirChecklist1Button: TPngSpeedButton;
    Bevel3: TBevel;
    CadastroDeChecklists1Button: TPngSpeedButton;
    CadastroDeChecklists1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure CriarChecklist1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ExcluirChecklist1Click(Sender: TObject);
    procedure CadastroDeChecklists1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosCheck: TFormServicosCheck;

implementation
uses DataMod, ChecklistsLoc, FuncoesFirenet, Funcoes1, Main, Checklists;
{$R *.dfm}

procedure TFormServicosCheck.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormServicosCheck.CadastroDeChecklists1Click(Sender: TObject);
begin
  Application.CreateForm(TFormChecklists, FormChecklists);
  FormChecklists.ShowModal;
  FormChecklists.Free;
  FormChecklists:=nil;
end;

procedure TFormServicosCheck.CriarChecklist1Click(Sender: TObject);
begin
  Application.CreateForm(TFormChecklistsLoc, FormChecklistsLoc);
  FormChecklistsLoc.ShowModal;
  if ChecklistsLoc.Procurar then
  begin
    DM.TBChecklists.Close;
    DM.TBChecklists.ParamByName('codigo').AsInteger:=FormChecklistsLoc.QYChecklistsCHK_CODIGO.Value;
    DM.TBChecklists.Open;

    AbortIf(DM.TBChecklistsItens.IsEmpty,'O checklist selecionado não tem itens. Selecione outro ou crie os itens no checklist.');

    if not DM.TBServicosCheck.IsEmpty then
    begin
      if MessageDlg('Deseja eliminar o checklist atual?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        DM.TBServicosCheck.Close;
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('delete from SERVICOSCHECK where SCK_SERVICO=:codigo');
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
        DM.QYAux.ExecSQL;
        DM.TBServicosCheck.Open;
      end;
    end;

    if MessageDlg('Confirma a criação do Checklist '+FormChecklistsLoc.QYChecklistsCHK_DESCRICAO.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from CHECKLISTSITENS where CKI_CHECKLIST=:checklist and CKI_STATUS=''A''');
      DM.QYAux.ParamByName('checklist').AsInteger:=DM.TBChecklistsCHK_CODIGO.Value;
      DM.QYAux.Open;
      DM.QYAux.First;
      DM.TBServicosCheck.DisableControls;
      while not DM.QYAux.Eof do
      begin
        DM.TBServicosCheck.Insert;
        DM.TBServicosCheckSCK_CHECKLIST.Value:=DM.QYAux.FieldByName('CKI_CHECKLIST').AsInteger;
        DM.TBServicosCheckSCK_CHECKLISTITEM.Value:=DM.QYAux.FieldByName('CKI_CODIGO').AsInteger;
        DM.TBServicosCheckSCK_SERVICO.Value:=DM.TBServicosSER_CODIGO.Value;
        DM.TBServicosCheckSCK_STATUS.Value:='N';
        DM.TBServicosCheck.Post;

        DM.QYAux.Next;
      end;
      DM.TBServicosCheck.EnableControls;
    end;

  end;
  FormChecklistsLoc.Free;
  FormChecklistsLoc:=nil;
end;

procedure TFormServicosCheck.DBGrid1DblClick(Sender: TObject);
begin
  if not DM.TBServicosCheck.IsEmpty then
  DM.TBServicosCheck.Edit;
end;

procedure TFormServicosCheck.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if not DM.TBServicosCheck.IsEmpty then
    DM.TBServicosCheck.Edit;
  end;
end;

procedure TFormServicosCheck.ExcluirChecklist1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicosCheck.IsEmpty,'Nada para excluir.');

  if MessageDlg('Deseja excluir o checklist?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBServicosCheck.Close;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from SERVICOSCHECK where SCK_SERVICO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
    DM.QYAux.ExecSQL;
    DM.TBServicosCheck.Open;
  end;
end;

procedure TFormServicosCheck.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormServicosCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBServicosCheck.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormServicosCheck.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormServicosCheck.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormServicosCheck);
end;

procedure TFormServicosCheck.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormServicosCheck);

finalization
  UnRegisterClass(TFormServicosCheck);

end.
