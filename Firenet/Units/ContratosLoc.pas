unit ContratosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Mask, Grids, DBGrids, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormContratosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    DSContratos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label6: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    DBGrid2: TDBGrid;
    DSContratosPartes: TDataSource;
    TRContratos: TFDTransaction;
    QYContratos: TFDQuery;
    TRContratosPartes: TFDTransaction;
    QYContratosPartes: TFDQuery;
    QYContratosCTI_CODIGO: TIntegerField;
    QYContratosCTI_DTCADASTRO: TDateField;
    QYContratosCTI_IMOVEL: TIntegerField;
    QYContratosCTI_LOCADOR: TIntegerField;
    QYContratosCTI_LOCADORNOME: TStringField;
    QYContratosCTI_STATUS: TStringField;
    QYContratosIMO_DESCRICAO: TStringField;
    QYContratosIMT_DESCRICAO: TStringField;
    QYContratosPartesCTP_CODIGO: TIntegerField;
    QYContratosPartesCTP_CLIENTE: TIntegerField;
    QYContratosPartesCTP_NOME: TStringField;
    QYContratosPartesCTP_TIPO: TStringField;
    QYContratosPartesCTP_FONE1: TStringField;
    QYContratosPartesCTP_CPF: TStringField;
    QYContratosPartesCTP_CNPJ: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContratosLoc: TFormContratosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormContratosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormContratosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYContratos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormContratosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYContratos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormContratosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYContratos.Active:=False;
    QYContratos.SQL.Clear;
    QYContratos.SQL.Add('select CTI_CODIGO, CTI_DTCADASTRO, CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORNOME, '+
                        'CTI_STATUS, IMO_DESCRICAO, IMT_DESCRICAO from CONTRATOS '+
                        'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO '+
                        'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                        'where CTI_CODIGO='+QuotedStr(Edit1.Text));
    QYContratos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContratosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYContratos.Active:=False;
    QYContratos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTI_STATUS=''A''';
    if ComboBox1.Text='FECHADOS' then Where:=' and CTI_STATUS=''F''';
    if ComboBox1.Text='BAIXADOS' then Where:=' and CTI_STATUS=''B''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTI_STATUS=''C''';
    QYContratos.SQL.Add('select CTI_CODIGO, CTI_DTCADASTRO, CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORNOME, '+
                        'CTI_STATUS, IMO_DESCRICAO, IMT_DESCRICAO from CONTRATOS '+
                        'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO '+
                        'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                        'where CTI_LOCATARIONOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CTI_DTCADASTRO desc, CTI_CODIGO desc');
    QYContratos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContratosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYContratos.Active:=False;
    QYContratos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTI_STATUS=''A''';
    if ComboBox1.Text='FECHADOS' then Where:=' and CTI_STATUS=''F''';
    if ComboBox1.Text='BAIXADOS' then Where:=' and CTI_STATUS=''B''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTI_STATUS=''C''';
    QYContratos.SQL.Add('select CTI_CODIGO, CTI_DTCADASTRO, CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORNOME, '+
                        'CTI_STATUS, IMO_DESCRICAO, IMT_DESCRICAO from CONTRATOS '+
                        'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO '+
                        'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                        'where CTI_LOCATARIO='+Edit3.Text+Where+' order by CTI_DTCADASTRO desc, CTI_CODIGO desc');
    QYContratos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContratosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYContratos.Active:=False;
    QYContratos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTI_STATUS=''A''';
    if ComboBox1.Text='FECHADOS' then Where:=' and CTI_STATUS=''F''';
    if ComboBox1.Text='BAIXADOS' then Where:=' and CTI_STATUS=''B''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTI_STATUS=''C''';
    QYContratos.SQL.Add('select CTI_CODIGO, CTI_DTCADASTRO, CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORNOME, '+
                        'CTI_STATUS, IMO_DESCRICAO, IMT_DESCRICAO from CONTRATOS '+
                        'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO '+
                        'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                        'where CTI_LOCADORNOME like '+QuotedStr(Edit4.Text+'%')+Where+' order by CTI_DTCADASTRO desc, CTI_CODIGO desc');
    QYContratos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContratosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYContratos.Active:=False;
    QYContratos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTI_STATUS=''A''';
    if ComboBox1.Text='FECHADOS' then Where:=' and CTI_STATUS=''F''';
    if ComboBox1.Text='BAIXADOS' then Where:=' and CTI_STATUS=''B''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTI_STATUS=''C''';
    QYContratos.SQL.Add('select CTI_CODIGO, CTI_DTCADASTRO, CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORNOME, '+
                        'CTI_STATUS, IMO_DESCRICAO, IMT_DESCRICAO from CONTRATOS '+
                        'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO '+
                        'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                        'where CTI_LOCADOR='+Edit4.Text+Where+' order by CTI_DTCADASTRO desc, CTI_CODIGO desc');
    QYContratos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContratosLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYContratos.Active:=False;
    QYContratos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTI_STATUS=''A''';
    if ComboBox1.Text='FECHADOS' then Where:=' and CTI_STATUS=''F''';
    if ComboBox1.Text='BAIXADOS' then Where:=' and CTI_STATUS=''B''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTI_STATUS=''C''';
    QYContratos.SQL.Add('select CTI_CODIGO, CTI_DTCADASTRO, CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORNOME, '+
                        'CTI_STATUS, IMO_DESCRICAO, IMT_DESCRICAO from CONTRATOS '+
                        'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO '+
                        'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                        'where CTI_IMOVEL='+Edit6.Text+Where+' order by CTI_DTCADASTRO desc, CTI_CODIGO desc');
    QYContratos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContratosLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormContratosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=0;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormContratosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormContratosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Contratos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Contratos com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='FECHADOS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADOS' then ComboBox1.ItemIndex:=3 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADOS' then ComboBox1.ItemIndex:=4;
end;

procedure TFormContratosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormContratosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYContratos.Active:=False;
    QYContratos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CTI_STATUS=''A''';
    if ComboBox1.Text='FECHADOS' then Where:=' and CTI_STATUS=''F''';
    if ComboBox1.Text='BAIXADOS' then Where:=' and CTI_STATUS=''B''';
    if ComboBox1.Text='CANCELADOS' then Where:=' and CTI_STATUS=''C''';
    QYContratos.SQL.Add('select CTI_CODIGO, CTI_DTCADASTRO, CTI_IMOVEL, CTI_LOCADOR, CTI_LOCADORNOME, '+
                        'CTI_STATUS, IMO_DESCRICAO, IMT_DESCRICAO from CONTRATOS '+
                        'left join IMOVEIS on CTI_IMOVEL=IMO_CODIGO '+
                        'left join IMOVEISTIPOS on IMO_TIPOIMOVEL=IMT_CODIGO '+
                        'where CTI_DTCADASTRO between :datainicial and :datafinal '+Where+' order by CTI_DTCADASTRO desc, CTI_CODIGO desc');
    QYContratos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYContratos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYContratos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormContratosLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
