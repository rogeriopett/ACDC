unit OdontogramasOpcoesLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormOdontogramasOpcoesLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSOdontogramasOpcoes: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Shape1: TShape;
    QYOdontogramasOpcoes: TFDQuery;
    TROdontogramasOpcoes: TFDTransaction;
    QYOdontogramasOpcoesODP_CODIGO: TIntegerField;
    QYOdontogramasOpcoesODP_COR: TIntegerField;
    QYOdontogramasOpcoesODP_DESCRICAO: TStringField;
    QYOdontogramasOpcoesODP_ESTILO: TStringField;
    QYOdontogramasOpcoesODP_PADRAO: TStringField;
    QYOdontogramasOpcoesODP_D11: TStringField;
    QYOdontogramasOpcoesODP_D12: TStringField;
    QYOdontogramasOpcoesODP_D13: TStringField;
    QYOdontogramasOpcoesODP_D14: TStringField;
    QYOdontogramasOpcoesODP_D15: TStringField;
    QYOdontogramasOpcoesODP_D16: TStringField;
    QYOdontogramasOpcoesODP_D17: TStringField;
    QYOdontogramasOpcoesODP_D18: TStringField;
    QYOdontogramasOpcoesODP_D21: TStringField;
    QYOdontogramasOpcoesODP_D22: TStringField;
    QYOdontogramasOpcoesODP_D23: TStringField;
    QYOdontogramasOpcoesODP_D24: TStringField;
    QYOdontogramasOpcoesODP_D25: TStringField;
    QYOdontogramasOpcoesODP_D26: TStringField;
    QYOdontogramasOpcoesODP_D27: TStringField;
    QYOdontogramasOpcoesODP_D28: TStringField;
    QYOdontogramasOpcoesODP_D31: TStringField;
    QYOdontogramasOpcoesODP_D32: TStringField;
    QYOdontogramasOpcoesODP_D33: TStringField;
    QYOdontogramasOpcoesODP_D34: TStringField;
    QYOdontogramasOpcoesODP_D35: TStringField;
    QYOdontogramasOpcoesODP_D36: TStringField;
    QYOdontogramasOpcoesODP_D37: TStringField;
    QYOdontogramasOpcoesODP_D38: TStringField;
    QYOdontogramasOpcoesODP_D41: TStringField;
    QYOdontogramasOpcoesODP_D42: TStringField;
    QYOdontogramasOpcoesODP_D43: TStringField;
    QYOdontogramasOpcoesODP_D44: TStringField;
    QYOdontogramasOpcoesODP_D45: TStringField;
    QYOdontogramasOpcoesODP_D46: TStringField;
    QYOdontogramasOpcoesODP_D47: TStringField;
    QYOdontogramasOpcoesODP_D48: TStringField;
    QYOdontogramasOpcoesODP_D51: TStringField;
    QYOdontogramasOpcoesODP_D52: TStringField;
    QYOdontogramasOpcoesODP_D53: TStringField;
    QYOdontogramasOpcoesODP_D54: TStringField;
    QYOdontogramasOpcoesODP_D55: TStringField;
    QYOdontogramasOpcoesODP_D61: TStringField;
    QYOdontogramasOpcoesODP_D62: TStringField;
    QYOdontogramasOpcoesODP_D63: TStringField;
    QYOdontogramasOpcoesODP_D64: TStringField;
    QYOdontogramasOpcoesODP_D65: TStringField;
    QYOdontogramasOpcoesODP_D71: TStringField;
    QYOdontogramasOpcoesODP_D72: TStringField;
    QYOdontogramasOpcoesODP_D73: TStringField;
    QYOdontogramasOpcoesODP_D74: TStringField;
    QYOdontogramasOpcoesODP_D75: TStringField;
    QYOdontogramasOpcoesODP_D81: TStringField;
    QYOdontogramasOpcoesODP_D82: TStringField;
    QYOdontogramasOpcoesODP_D83: TStringField;
    QYOdontogramasOpcoesODP_D84: TStringField;
    QYOdontogramasOpcoesODP_D85: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DSOdontogramasOpcoesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOdontogramasOpcoesLoc: TFormOdontogramasOpcoesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormOdontogramasOpcoesLoc.txt';
  Campos='ODP_CODIGO, ODP_COR, ODP_DESCRICAO, ODP_ESTILO, ODP_PADRAO, '+
         'ODP_D11, ODP_D12, ODP_D13, ODP_D14, ODP_D15, ODP_D16, ODP_D17, ODP_D18, '+
         'ODP_D21, ODP_D22, ODP_D23, ODP_D24, ODP_D25, ODP_D26, ODP_D27, ODP_D28, '+
         'ODP_D31, ODP_D32, ODP_D33, ODP_D34, ODP_D35, ODP_D36, ODP_D37, ODP_D38, '+
         'ODP_D41, ODP_D42, ODP_D43, ODP_D44, ODP_D45, ODP_D46, ODP_D47, ODP_D48, '+
         'ODP_D51, ODP_D52, ODP_D53, ODP_D54, ODP_D55, '+
         'ODP_D61, ODP_D62, ODP_D63, ODP_D64, ODP_D65, '+
         'ODP_D71, ODP_D72, ODP_D73, ODP_D74, ODP_D75, '+
         'ODP_D81, ODP_D82, ODP_D83, ODP_D84, ODP_D85';

implementation
uses DataMod2, Funcoes1, FuncoesFirenet, DataMod;
{$R *.dfm}

procedure TFormOdontogramasOpcoesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYOdontogramasOpcoes.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormOdontogramasOpcoesLoc.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  //pinta o fundo da celula com a cor da opção.
  if Column.Field=QYOdontogramasOpcoesODP_COR then
  begin
    DBGrid1.Canvas.Font.Color:=TColor(QYOdontogramasOpcoesODP_COR.Value);
    DBGrid1.Canvas.Brush.Color:=TColor(QYOdontogramasOpcoesODP_COR.Value);
    //pq nao funciona? DBGrid1.Canvas.Brush.Style:=Estilo(QYOdontogramasOpcoesODP_ESTILO.Value);
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
  end;
end;

procedure TFormOdontogramasOpcoesLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormOdontogramasOpcoesLoc.DSOdontogramasOpcoesDataChange(Sender: TObject; Field: TField);
begin
  Shape1.Brush.Color:=TColor(QYOdontogramasOpcoesODP_COR.Value);
  Shape1.Brush.Style:=StrToBrushStyle(QYOdontogramasOpcoesODP_ESTILO.Value);
end;

procedure TFormOdontogramasOpcoesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYOdontogramasOpcoes.Active:=False;
    QYOdontogramasOpcoes.SQL.Clear;
    QYOdontogramasOpcoes.SQL.Add('select '+Campos+' from ODONTOGRAMASOPCOES '+
                                 'where ODP_CODIGO='+QuotedStr(Edit1.Text)+' order by ODP_CODIGO');
    QYOdontogramasOpcoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYOdontogramasOpcoes.SQL.Text);
  end;
end;

procedure TFormOdontogramasOpcoesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYOdontogramasOpcoes.Active:=False;
    QYOdontogramasOpcoes.SQL.Clear;
    QYOdontogramasOpcoes.SQL.Add('select '+Campos+' from ODONTOGRAMASOPCOES '+
                                 'where ODP_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by ODP_DESCRICAO');
    QYOdontogramasOpcoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYOdontogramasOpcoes.SQL.Text);
  end;
end;

procedure TFormOdontogramasOpcoesLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormOdontogramasOpcoesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYOdontogramasOpcoes.Close;
    QYOdontogramasOpcoes.SQL.Clear;
    QYOdontogramasOpcoes.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYOdontogramasOpcoes.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormOdontogramasOpcoesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormOdontogramasOpcoesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Odontogramas Opcoes',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormOdontogramasOpcoesLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
