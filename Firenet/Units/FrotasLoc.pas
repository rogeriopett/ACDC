unit FrotasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormFrotasLoc = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit1: TEdit;
    DSFrotas: TDataSource;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYFrotas: TFDQuery;
    TRFrotas: TFDTransaction;
    QYFrotasFRO_ANOFAB: TStringField;
    QYFrotasFRO_ANOMOD: TStringField;
    QYFrotasFRO_CAPACIDADEKG: TFMTBCDField;
    QYFrotasFRO_CAPACIDADEM3: TFMTBCDField;
    QYFrotasFRO_CIDADE: TStringField;
    QYFrotasFRO_CNPJ: TStringField;
    QYFrotasFRO_CODIGO: TIntegerField;
    QYFrotasFRO_CPF: TStringField;
    QYFrotasFRO_DESCRICAO: TStringField;
    QYFrotasFRO_DTATUALIZACAO: TDateField;
    QYFrotasFRO_DTCADASTRO: TDateField;
    QYFrotasFRO_ESTADO: TStringField;
    QYFrotasFRO_ESTADOPROPRIETARIO: TStringField;
    QYFrotasFRO_HRATUALIZACAO: TTimeField;
    QYFrotasFRO_HRCADASTRO: TTimeField;
    QYFrotasFRO_IE: TStringField;
    QYFrotasFRO_MARCA: TStringField;
    QYFrotasFRO_MODELO: TStringField;
    QYFrotasFRO_NOME: TStringField;
    QYFrotasFRO_PLACA: TStringField;
    QYFrotasFRO_RENAVAM: TStringField;
    QYFrotasFRO_RNTRC: TStringField;
    QYFrotasFRO_STATUS: TStringField;
    QYFrotasFRO_TARA: TFMTBCDField;
    QYFrotasFRO_TIPOCARROCERIA: TStringField;
    QYFrotasFRO_TIPOPROPRIEDADE: TStringField;
    QYFrotasFRO_TIPOPROPRIETARIO: TStringField;
    QYFrotasFRO_TIPORODADO: TStringField;
    QYFrotasFRO_TIPOVEICULO: TStringField;
    QYFrotasFRO_USUARIO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFrotasLoc: TFormFrotasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormFrotasLoc.txt';

implementation
uses DataMod, DataMod2, FuncoesFirenet, Funcoes1;

{$R *.dfm}

procedure TFormFrotasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYFrotas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormFrotasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYFrotas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormFrotasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYFrotas.Active:=False;
    QYFrotas.SQL.Clear;
    QYFrotas.SQL.Add('select * from FROTAS where FRO_MARCA like '+QuotedStr(Edit1.Text+'%')+' order by FRO_MARCA');
    QYFrotas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFrotas.SQL.Text);
  end;
end;

procedure TFormFrotasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYFrotas.Active:=False;
    QYFrotas.SQL.Clear;
    QYFrotas.SQL.Add('select * from FROTAS where FRO_MODELO like '+QuotedStr(Edit2.Text+'%')+' order by FRO_MODELO');
    QYFrotas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFrotas.SQL.Text);
  end;
end;

procedure TFormFrotasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYFrotas.Active:=False;
    QYFrotas.SQL.Clear;
    QYFrotas.SQL.Add('select * from FROTAS where FRO_DESCRICAO like '+QuotedStr(Edit3.Text+'%')+' order by FRO_DESCRICAO');
    QYFrotas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFrotas.SQL.Text);
  end;
end;

procedure TFormFrotasLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYFrotas.Active:=False;
    QYFrotas.SQL.Clear;
    QYFrotas.SQL.Add('select * from FROTAS where FRO_CODIGO='+QuotedStr(Edit4.Text)+' order by FRO_CODIGO');
    QYFrotas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFrotas.SQL.Text);
  end;
end;

procedure TFormFrotasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormFrotasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYFrotas.Close;
    QYFrotas.SQL.Clear;
    QYFrotas.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYFrotas.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormFrotasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFrotasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Frotas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='PLACA' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MARCA' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MODELO' then Edit2.SetFocus;
end;

procedure TFormFrotasLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(MaskEdit1.Text)='___-____' then Exit;
    QYFrotas.Active:=False;
    QYFrotas.SQL.Clear;
    QYFrotas.SQL.Add('select * from FROTAS where FRO_PLACA like '+QuotedStr('%'+MaskEdit1.Text+'%')+' order by FRO_PLACA');
    QYFrotas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFrotas.SQL.Text);
  end;
end;

procedure TFormFrotasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
