unit MedicoesLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormMedicoesLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSMedicoes: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    QYMedicoes: TFDQuery;
    TRMedicoes: TFDTransaction;
    QYMedicoesMED_BATIMENTOS: TIntegerField;
    QYMedicoesMED_CLIENTE: TIntegerField;
    QYMedicoesMED_CODIGO: TIntegerField;
    QYMedicoesMED_DTCADASTRO: TDateField;
    QYMedicoesMED_GLICEMIA: TIntegerField;
    QYMedicoesMED_PESO: TFMTBCDField;
    QYMedicoesMED_PRESSAO: TStringField;
    QYMedicoesMED_SATURACAO: TIntegerField;
    QYMedicoesMED_TEMPERATURA: TCurrencyField;
    QYMedicoesCLI_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMedicoesLoc: TFormMedicoesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormMedicoesLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormMedicoesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYMedicoes.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMedicoesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYMedicoes.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMedicoesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYMedicoes.Active:=False;
    QYMedicoes.SQL.Clear;
    QYMedicoes.SQL.Add('select MED_BATIMENTOS, MED_CLIENTE, MED_CODIGO, MED_DTCADASTRO, MED_GLICEMIA, '+
                       'MED_PESO, MED_PRESSAO, MED_SATURACAO, MED_TEMPERATURA, CLI_NOME from MEDICOES '+
                       'left join CLIENTES on MED_CLIENTE=CLI_CODIGO '+
                       'where MED_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by MED_CODIGO');
    QYMedicoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMedicoes.SQL.Text);
  end;
end;

procedure TFormMedicoesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYMedicoes.Active:=False;
    QYMedicoes.SQL.Clear;
    QYMedicoes.SQL.Add('select MED_BATIMENTOS, MED_CLIENTE, MED_CODIGO, MED_DTCADASTRO, MED_GLICEMIA, '+
                       'MED_PESO, MED_PRESSAO, MED_SATURACAO, MED_TEMPERATURA, CLI_NOME from MEDICOES '+
                       'left join CLIENTES on MED_CLIENTE=CLI_CODIGO '+
                       'where MED_CLIENTE='+Edit2.Text+' order by MED_CODIGO desc');
    QYMedicoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMedicoes.SQL.Text);
  end;
end;

procedure TFormMedicoesLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYMedicoes.Active:=False;
    QYMedicoes.SQL.Clear;
    QYMedicoes.SQL.Add('select MED_BATIMENTOS, MED_CLIENTE, MED_CODIGO, MED_DTCADASTRO, MED_GLICEMIA, '+
                       'MED_PESO, MED_PRESSAO, MED_SATURACAO, MED_TEMPERATURA, CLI_NOME from MEDICOES '+
                       'left join CLIENTES on MED_CLIENTE=CLI_CODIGO '+
                       'where CLI_NOME like '+QuotedStr(Edit3.Text+'%')+' order by CLI_NOME, CLI_CODIGO desc');
    QYMedicoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMedicoes.SQL.Text);
  end;
end;

procedure TFormMedicoesLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormMedicoesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYMedicoes.Close;
    QYMedicoes.SQL.Clear;
    QYMedicoes.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYMedicoes.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormMedicoesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMedicoesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Medicoes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit3.SetFocus;
end;

procedure TFormMedicoesLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormMedicoesLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
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
    Key:=#0;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    QYMedicoes.Active:=False;
    QYMedicoes.SQL.Clear;
    QYMedicoes.SQL.Add('select MED_BATIMENTOS, MED_CLIENTE, MED_CODIGO, MED_DTCADASTRO, MED_GLICEMIA, '+
                       'MED_PESO, MED_PRESSAO, MED_SATURACAO, MED_TEMPERATURA, CLI_NOME from MEDICOES '+
                       'left join CLIENTES on MED_CLIENTE=CLI_CODIGO '+
                       'where MED_DTCADASTRO between '+Where+' order by MED_DTCADASTRO desc, CLI_NOME');
    QYMedicoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYMedicoes.SQL.Text);
  end;
end;

procedure TFormMedicoesLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
