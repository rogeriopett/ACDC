unit ProjetosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormProjetosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DSProjetos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYProjetos: TFDQuery;
    TRProjetos: TFDTransaction;
    QYProjetosPRJ_CODIGO: TIntegerField;
    QYProjetosPRJ_NOME: TStringField;
    QYProjetosCLI_NOME: TStringField;
    QYProjetosPRJ_DTCADASTRO: TDateField;
    QYProjetosPRJ_DTVISITA: TDateField;
    QYProjetosPRJ_DTORCAMENTO: TDateField;
    QYProjetosPRJ_DTAPRESENTACAO: TDateField;
    QYProjetosPRJ_STATUSVISITA: TStringField;
    QYProjetosPRJ_STATUSORCAMENTO: TStringField;
    QYProjetosPRJ_STATUSAPRESENTACAO: TStringField;
    QYProjetosPRJ_STATUSPROJETO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProjetosLoc: TFormProjetosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormProjetosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormProjetosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormProjetosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormProjetosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProjetosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Projetos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus;
end;

procedure TFormProjetosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYProjetos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProjetosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYProjetos.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProjetosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYProjetos.Active:=False;
    QYProjetos.SQL.Clear;
    QYProjetos.SQL.Add('select * from PROJETOS left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO where PRJ_CODIGO='+QuotedStr(Edit1.Text)+' order by PRJ_CODIGO');
    QYProjetos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProjetosLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormProjetosLoc.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    if (MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ') then Exit;
    try
      StrToDate(MaskEdit1.Text,FS);
      StrToDate(MaskEdit2.Text,FS);
      except on exception do
      begin
        MessageDlg('Data inválida.',mtError,[mbOk],0);
        MaskEdit1.Clear;
        MaskEdit2.Clear;
        MaskEdit1.SetFocus;
        Exit;
      end;
    end; //try.
    QYProjetos.Active:=False;
    QYProjetos.SQL.Clear;
    QYProjetos.SQL.Add('select * from PROJETOS left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO where PRJ_DTCADASTRO between :datainicial and :datafinal order by PRJ_DTCADASTRO desc');
    QYProjetos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYProjetos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYProjetos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProjetosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormProjetosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYProjetos.Active:=False;
    QYProjetos.SQL.Clear;
    QYProjetos.SQL.Add('select * from PROJETOS left join CLIENTES on PRJ_CLIENTE=CLI_CODIGO where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CLI_NOME, PRJ_DTCADASTRO desc');
    QYProjetos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

end.
