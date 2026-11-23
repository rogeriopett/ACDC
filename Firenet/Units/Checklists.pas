unit Checklists;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, PngBitBtn;

type
  TFormChecklists = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
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
    DBGrid1: TDBGrid;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    Localizar1: TMenuItem;
    Bevel2: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    N2: TMenuItem;
    BitBtn4: TPngBitBtn;
    procedure Ajuda2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChecklists: TFormChecklists;

implementation
uses DataMod, Funcoes1, Main, ChecklistsItens, ChecklistsLoc;
{$R *.dfm}

procedure TFormChecklists.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormChecklists.BitBtn1Click(Sender: TObject);
begin
  if DM.TBChecklists.State in [dsInsert, dsEdit] then
  Exit;

  AbortIf(DM.TBChecklists.IsEmpty,'Nenhum checklist selecionado.');

  DM.TBChecklistsItens.Insert;
  Application.CreateForm(TFormChecklistsItens, FormChecklistsItens);
  FormChecklistsItens.ShowModal;
  FormChecklistsItens.Free;
  FormChecklistsItens:=nil;
end;

procedure TFormChecklists.BitBtn2Click(Sender: TObject);
begin
  if DM.TBChecklists.State in [dsInsert, dsEdit] then
  Exit;

  AbortIf(DM.TBChecklistsItens.IsEmpty,'Não existe nenhum item para excluir.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM.TBChecklistsItens.Delete;
end;

procedure TFormChecklists.BitBtn4Click(Sender: TObject);
begin
  if DM.TBChecklists.State in [dsInsert, dsEdit] then
  Exit;

  AbortIf(DM.TBChecklistsItens.IsEmpty,'Não existe nenhum item para alterar.');

  DM.TBChecklistsItens.Edit;
  Application.CreateForm(TFormChecklistsItens, FormChecklistsItens);
  FormChecklistsItens.ShowModal;
  FormChecklistsItens.Free;
  FormChecklistsItens:=nil;
end;

procedure TFormChecklists.DBGrid1DblClick(Sender: TObject);
begin
  if not DM.TBChecklistsItens.IsEmpty then
  BitBtn4.Click;
end;

procedure TFormChecklists.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  BitBtn4.Click;
end;

procedure TFormChecklists.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormChecklists.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBChecklists.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormChecklists.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormChecklists.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormChecklists);
end;

procedure TFormChecklists.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormChecklists.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormChecklistsLoc, FormChecklistsLoc);
  FormChecklistsLoc.ShowModal;
  if ChecklistsLoc.Procurar then
  begin
    DM.TBChecklists.Close;
    DM.TBChecklists.ParamByName('codigo').AsInteger:=FormChecklistsLoc.QYChecklistsCHK_CODIGO.Value;
    DM.TBChecklists.Open;

    DM.TBChecklistsItens.Close;
    DM.TBChecklistsItens.Open;
  end;
  FormChecklistsLoc.Free;
  FormChecklistsLoc:=nil;
end;

initialization
  RegisterClass(TFormChecklists);

finalization
  UnRegisterClass(TFormChecklists);

end.
