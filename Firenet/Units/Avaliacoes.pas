unit Avaliacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, Mask,
  Grids, DBGrids, DB, ImgList, PngImageList, PngSpeedButton, System.ImageList,
  System.UITypes;

type
  TFormAvaliacoes = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit32: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Panel2: TPanel;
    Bevel4: TBevel;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Localizar1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    N1: TMenuItem;
    Preenchernotacomamediadosexercicios1: TMenuItem;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    SpeedButton1: TPngSpeedButton;
    SpeedButton4: TPngSpeedButton;
    PngImageList1: TPngImageList;
    procedure Localizar1Click(Sender: TObject);
    procedure Preenchernotacomamediadosexercicios1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAvaliacoes: TFormAvaliacoes;

implementation
uses DataMod, DataMod2, Funcoes1, MatriculasLoc, AvaliacoesTipoLoc, DataModSearch,
  Main;
{$R *.dfm}

procedure TFormAvaliacoes.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculasLoc, FormMatriculasLoc);
  FormMatriculasLoc.ShowModal;
  if MatriculasLoc.Procurar then
  begin
    DM2.TBMatriculas.Close;
    DM2.TBMatriculas.ParamByName('codigo').AsInteger:=FormMatriculasLoc.QYMatriculasMAT_CODIGO.Value;
    DM2.TBMatriculas.Open;
  end;
  FormMatriculasLoc.Free;
  FormMatriculasLoc:=nil;
end;

procedure TFormAvaliacoes.Preenchernotacomamediadosexercicios1Click(Sender: TObject);
begin
  if MessageDlg('Preencher com a média dos exercícios?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBAvaliacoesAVA_NOTA.Value:=DM2.TBMatriculasMAT_MEDIAEXERCICIOS.Value;
  end;
end;

procedure TFormAvaliacoes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormAvaliacoes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAvaliacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBAvaliacoes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormAvaliacoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormAvaliacoes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormAvaliacoes);
end;

procedure TFormAvaliacoes.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormAvaliacoes.DBEdit2Exit(Sender: TObject);
begin
  if (DM2.TBAvaliacoes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBAvaliacoesAVA_TIPO.Clear;
    DM2.TBAvaliacoesAVT_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBAvaliacoes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYAvaliacoesTipo.Close;
    DMS.QYAvaliacoesTipo.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYAvaliacoesTipo.Open;
    if not DMS.QYAvaliacoesTipo.IsEmpty then
    begin
      DM2.TBAvaliacoesAVA_TIPO.Value:=DMS.QYAvaliacoesTipoAVT_CODIGO.Value;
      DM2.TBAvaliacoesAVT_DESCRICAO.Value:=DMS.QYAvaliacoesTipoAVT_DESCRICAO.Value;
    end else
    begin
      DM2.TBAvaliacoesAVA_TIPO.Clear;
      DM2.TBAvaliacoesAVT_DESCRICAO.Clear;
      MessageDlg('Tipo de avaliação não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYAvaliacoesTipo.Close;
  end;
end;

procedure TFormAvaliacoes.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormAvaliacoes.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormAvaliacoes.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAvaliacoesTipoLoc, FormAvaliacoesTipoLoc);
  FormAvaliacoesTipoLoc.ShowModal;
  if AvaliacoesTipoLoc.Procurar then
  begin
    DM2.TBAvaliacoes.Edit;
    DM2.TBAvaliacoesAVA_TIPO.Value:=FormAvaliacoesTipoLoc.QYAvaliacoesTipoAVT_CODIGO.Value;
    DM2.TBAvaliacoesAVT_DESCRICAO.Value:=FormAvaliacoesTipoLoc.QYAvaliacoesTipoAVT_DESCRICAO.Value;
  end;
  FormAvaliacoesTipoLoc.Free;
  FormAvaliacoesTipoLoc:=nil;
end;

initialization
  RegisterClass(TFormAvaliacoes);

finalization
  UnRegisterClass(TFormAvaliacoes);

end.
