unit Objetos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Buttons, DBSBtn, ExtCtrls, Menus, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormObjetos = class(TForm)
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
    Label30: TLabel;
    DBEdit31: TDBEdit;
    DBEdit77: TDBEdit;
    SpeedButton28: TPngSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    PngImageList1: TPngImageList;
    Label8: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton28Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit31Enter(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormObjetos: TFormObjetos;

implementation
uses DataMod, DataMod2, DataModSearch, Main, ObjetosLoc, Funcoes1, ClassesLoc, ObjetosFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormObjetos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBObjetos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormObjetos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormObjetos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormObjetos);
end;

procedure TFormObjetos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormObjetos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormObjetosLoc, FormObjetosLoc);
  FormObjetosLoc.ShowModal;
  if ObjetosLoc.Procurar then
  begin
    DM2.TBObjetos.Close;
    DM2.TBObjetos.ParamByName('codigo').AsInteger:=FormObjetosLoc.QYObjetosOBJ_CODIGO.Value;
    DM2.TBObjetos.Open;
  end;
  FormObjetosLoc.Free;
  FormObjetosLoc:=nil;
end;

procedure TFormObjetos.PngSpeedButton1Click(Sender: TObject);
begin
  LocUnidadesBotao(DBEdit8,DBEdit9,DM2.TBObjetos);
end;

procedure TFormObjetos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormObjetosFast, FormObjetosFast);
  FormObjetosFast.QY01.Close;
  FormObjetosFast.QY01.Open;
  FormObjetosFast.frxReport1.Variables['TITULO']:=QuotedStr('Objetos por classe');
  FormObjetosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormObjetosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormObjetosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormObjetosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormObjetosFast.frxReport1.ShowReport;
  FormObjetosFast.Free;
  FormObjetosFast:=nil;
end;

procedure TFormObjetos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormObjetos.DBEdit31Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormObjetos.DBEdit31Exit(Sender: TObject);
begin
  LocMarcasExit(DBEdit31,DBEdit77,DM2.TBObjetos);
end;

procedure TFormObjetos.DBEdit31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton28.Click;
end;

procedure TFormObjetos.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormObjetos.SpeedButton28Click(Sender: TObject);
begin
  LocMarcasBotao(DBEdit31,DBEdit77,DM2.TBObjetos);
end;

procedure TFormObjetos.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormObjetos.DBEdit4Exit(Sender: TObject);
begin
  if (DM2.TBObjetos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBObjetosOBJ_CLASSE.Clear;
    DM2.TBObjetosCLS_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBObjetos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClasses.Close;
    DMS.QYClasses.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClasses.Open;
    if not DMS.QYClasses.IsEmpty then
    begin
      DM2.TBObjetosOBJ_CLASSE.Value:=DMS.QYClassesCLS_CODIGO.Value;
      DM2.TBObjetosCLS_DESCRICAO.Value:=DMS.QYClassesCLS_DESCRICAO.Value;
    end else
    begin
      DM2.TBObjetosOBJ_CLASSE.Clear;
      DM2.TBObjetosCLS_DESCRICAO.Clear;
      MessageDlg('Classe não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClasses.Close;
  end;
end;

procedure TFormObjetos.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormObjetos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormObjetos.DBEdit8Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormObjetos.DBEdit8Exit(Sender: TObject);
begin
  LocUnidadesExit(DBEdit8,DBEdit9,DM2.TBObjetos);
end;

procedure TFormObjetos.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormObjetos.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormObjetos.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassesLoc, FormClassesLoc);
  FormClassesLoc.ShowModal;
  if ClassesLoc.Procurar then
  begin
    DM2.TBObjetos.Edit;
    DM2.TBObjetosOBJ_CLASSE.Value:=FormClassesLoc.QYClassesCLS_CODIGO.Value;
    DM2.TBObjetosCLS_DESCRICAO.Value:=FormClassesLoc.QYClassesCLS_DESCRICAO.Value;
  end;
  FormClassesLoc.Free;
  FormClassesLoc:=nil;
end;

initialization
  RegisterClass(TFormObjetos);

finalization
  UnRegisterClass(TFormObjetos);

end.
