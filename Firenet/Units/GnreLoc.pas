unit GnreLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormGnreLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    DSGnre: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    QYGnre: TFDQuery;
    TRGnre: TFDTransaction;
    QYGnreGNR_CODIGO: TIntegerField;
    QYGnreGNR_NUMDOCTO: TIntegerField;
    QYGnreGNR_DESTCIDADE: TStringField;
    QYGnreGNR_DESTDOCUMENTO: TStringField;
    QYGnreGNR_DESTNOME: TStringField;
    QYGnreGNR_DTCADASTRO: TDateField;
    QYGnreGNR_ESTADOFAVORECIDO: TStringField;
    QYGnreGNR_STATUS: TStringField;
    QYGnreGNR_VALORPRINCIPAL: TFMTBCDField;
    QYGnreGNR_VALORTOTAL: TFMTBCDField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGnreLoc: TFormGnreLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormGnreLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormGnreLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYGnre.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormGnreLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYGnre.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormGnreLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYGnre.Active:=False;
    QYGnre.SQL.Clear;
    QYGnre.SQL.Add('select GNR_CODIGO, GNR_NUMDOCTO, GNR_DESTCIDADE, GNR_DESTDOCUMENTO, GNR_DESTNOME, GNR_DTCADASTRO, '+
                   'GNR_ESTADOFAVORECIDO, GNR_STATUS, GNR_VALORPRINCIPAL, GNR_VALORTOTAL from GNRE '+
                   'where GNR_CODIGO like '+QuotedStr(Edit1.Text+'%')+' order by GNR_CODIGO');
    QYGnre.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYGnre.SQL.Text);
  end;
end;

procedure TFormGnreLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYGnre.Active:=False;
    QYGnre.SQL.Clear;
    QYGnre.SQL.Add('select GNR_CODIGO, GNR_NUMDOCTO, GNR_DESTCIDADE, GNR_DESTDOCUMENTO, GNR_DESTNOME, GNR_DTCADASTRO, '+
                   'GNR_ESTADOFAVORECIDO, GNR_STATUS, GNR_VALORPRINCIPAL, GNR_VALORTOTAL from GNRE '+
                   'where GNR_NUMDOCTO like '+QuotedStr(Edit2.Text+'%')+' order by GNR_NUMDOCTO');
    QYGnre.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYGnre.SQL.Text);
  end;
end;

procedure TFormGnreLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYGnre.Active:=False;
    QYGnre.SQL.Clear;
    QYGnre.SQL.Add('select GNR_CODIGO, GNR_NUMDOCTO, GNR_DESTCIDADE, GNR_DESTDOCUMENTO, GNR_DESTNOME, GNR_DTCADASTRO, '+
                   'GNR_ESTADOFAVORECIDO, GNR_STATUS, GNR_VALORPRINCIPAL, GNR_VALORTOTAL from GNRE '+
                   'where GNR_DESTDOCUMENTO like '+QuotedStr(Edit3.Text+'%')+' order by GNR_DESTDOCUMENTO');
    QYGnre.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYGnre.SQL.Text);
  end;
end;

procedure TFormGnreLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYGnre.Active:=False;
    QYGnre.SQL.Clear;
    QYGnre.SQL.Add('select GNR_CODIGO, GNR_NUMDOCTO, GNR_DESTCIDADE, GNR_DESTDOCUMENTO, GNR_DESTNOME, GNR_DTCADASTRO, '+
                   'GNR_ESTADOFAVORECIDO, GNR_STATUS, GNR_VALORPRINCIPAL, GNR_VALORTOTAL from GNRE '+
                   'where GNR_DESTNOME like '+QuotedStr(Edit4.Text+'%')+' order by GNR_DESTNOME');
    QYGnre.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYGnre.SQL.Text);
  end;
end;

procedure TFormGnreLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',',',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYGnre.Active:=False;
    QYGnre.SQL.Clear;
    QYGnre.SQL.Add('select GNR_CODIGO, GNR_NUMDOCTO, GNR_DESTCIDADE, GNR_DESTDOCUMENTO, GNR_DESTNOME, GNR_DTCADASTRO, '+
                   'GNR_ESTADOFAVORECIDO, GNR_STATUS, GNR_VALORPRINCIPAL, GNR_VALORTOTAL from GNRE '+
                   'where GNR_VALORPRINCIPAL like '+QuotedStr(Edit5.Text+'%')+' order by GNR_VALORPRINCIPAL');
    QYGnre.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYGnre.SQL.Text);
  end;
end;

procedure TFormGnreLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormGnreLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYGnre.Close;
    QYGnre.SQL.Clear;
    QYGnre.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYGnre.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormGnreLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormGnreLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Gnre',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DOCTO ORIGEM' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DOCTO DEST' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME DEST' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VALOR PRINCIPAL' then Edit5.SetFocus;
end;

procedure TFormGnreLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormGnreLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYGnre.Active:=False;
    QYGnre.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    QYGnre.SQL.Add('select GNR_CODIGO, GNR_NUMDOCTO, GNR_DESTCIDADE, GNR_DESTDOCUMENTO, GNR_DESTNOME, GNR_DTCADASTRO, '+
                   'GNR_ESTADOFAVORECIDO, GNR_STATUS, GNR_VALORPRINCIPAL, GNR_VALORTOTAL from GNRE '+
                   'where GNR_DTCADASTRO between '+Where+' order by GNR_CODIGO');
    QYGnre.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYGnre.SQL.Text);
  end;
end;

procedure TFormGnreLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
