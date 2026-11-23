unit PagarLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, Grids, DBGrids, DBCtrls, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormPagarLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DSPagar: TDataSource;
    Label5: TLabel;
    DBText1: TDBText;
    DSTotalPagar: TDataSource;
    Edit3: TEdit;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYPagar: TFDQuery;
    TRPagar: TFDTransaction;
    QYPagarPAG_CODIGO: TIntegerField;
    QYPagarPAG_CONTA: TIntegerField;
    QYPagarPAG_DESCRICAO: TStringField;
    QYPagarPAG_DESPESA: TIntegerField;
    QYPagarPAG_DIASATRASO: TIntegerField;
    QYPagarPAG_DIASPRAZO: TIntegerField;
    QYPagarPAG_DTATUALIZACAO: TDateField;
    QYPagarPAG_DTCADASTRO: TDateField;
    QYPagarPAG_DTEMISSAO: TDateField;
    QYPagarPAG_DTJUROSAPOS: TDateField;
    QYPagarPAG_DTPAGAMENTO: TDateField;
    QYPagarPAG_DTVENCIMENTO: TDateField;
    QYPagarPAG_FORNECEDOR: TIntegerField;
    QYPagarPAG_JUROSPAGO: TFMTBCDField;
    QYPagarPAG_MULTAPAGO: TFMTBCDField;
    QYPagarPAG_NUMDOCTO: TStringField;
    QYPagarPAG_OBSERVACOES: TMemoField;
    QYPagarPAG_PARCELAQTDE: TIntegerField;
    QYPagarPAG_PORCJUROS: TFMTBCDField;
    QYPagarPAG_STATUS: TStringField;
    QYPagarPAG_TIPODOCTO: TStringField;
    QYPagarPAG_USUARIO: TStringField;
    QYPagarPAG_VALOR: TFMTBCDField;
    QYPagarPAG_VALORJUROS: TFMTBCDField;
    QYPagarPAG_VALORMULTA: TFMTBCDField;
    QYPagarPAG_VALORORIGINAL: TFMTBCDField;
    QYPagarPAG_VALORPAGO: TFMTBCDField;
    QYPagarFOR_CODIGO: TIntegerField;
    QYPagarFOR_NOME: TStringField;
    QYTotalPagar: TFDQuery;
    TRTotalPagar: TFDTransaction;
    QYTotalPagarVALOR: TFMTBCDField;
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarLoc: TFormPagarLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormPagarLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormPagarLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormPagarLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and PAG_STATUS=''A''';
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and PAG_STATUS=''B''';
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and PAG_STATUS=''C''';
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_DTVENCIMENTO between '+Where+' order by PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR where PAG_DTVENCIMENTO between '+Where);
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYPagar.SQL.Text);
  end;
end;

procedure TFormPagarLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormPagarLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    if ComboBox1.Text='ABERTAS' then Where:=' and PAG_STATUS=''A''';
    if ComboBox1.Text='BAIXADAS' then Where:=' and PAG_STATUS=''B''';
    if ComboBox1.Text='CANCELADAS' then Where:=' and PAG_STATUS=''C''';
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where FOR_NOME like '+QuotedStr(Edit2.Text+'%')+' '+Where+' order by FOR_NOME, PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where FOR_NOME like '+QuotedStr(Edit2.Text+'%')+' '+Where);
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYPagar.SQL.Text);
  end;
end;

procedure TFormPagarLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_CODIGO='+QuotedStr(Edit1.Text)+' order by PAG_CODIGO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR where PAG_CODIGO='+QuotedStr(Edit1.Text));
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYPagar.SQL.Text);
  end;
end;

procedure TFormPagarLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYPagar.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormPagarLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYPagar.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormPagarLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormPagarLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=0;
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYPagar.Close;
    QYPagar.SQL.Clear;
    QYPagar.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYPagar.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormPagarLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPagarLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Contas a Pagar',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO FORNECEDOR' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='FORNECEDOR' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VALOR' then Edit5.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Contas a Pagar com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADAS' then ComboBox1.ItemIndex:=2;
end;

procedure TFormPagarLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit; //nao faz pesquisa nula.
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_NUMDOCTO like '+QuotedStr(Edit3.Text+'%')+' order by PAG_NUMDOCTO, PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_NUMDOCTO like '+QuotedStr(Edit3.Text+'%'));
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYPagar.SQL.Text);
  end;
end;

procedure TFormPagarLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit; //nao faz pesquisa nula.
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    if ComboBox1.Text='ABERTAS' then Where:=' and PAG_STATUS=''A''';
    if ComboBox1.Text='BAIXADAS' then Where:=' and PAG_STATUS=''B''';
    if ComboBox1.Text='CANCELADAS' then Where:=' and PAG_STATUS=''C''';
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_FORNECEDOR='+QuotedStr(Edit4.Text)+' '+Where+' order by FOR_NOME, PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_FORNECEDOR='+QuotedStr(Edit4.Text)+' '+Where);
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYPagar.SQL.Text);
  end;
end;

procedure TFormPagarLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit; //nao faz pesquisa nula.
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    if ComboBox1.Text='ABERTAS' then Where:=' and PAG_STATUS=''A''';
    if ComboBox1.Text='BAIXADAS' then Where:=' and PAG_STATUS=''B''';
    if ComboBox1.Text='CANCELADAS' then Where:=' and PAG_STATUS=''C''';
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_VALOR like '+QuotedStr(TrocarVirgulaPonto(Edit5.Text)+'%')+Where+' order by PAG_VALOR, PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_VALOR like '+QuotedStr(TrocarVirgulaPonto(Edit5.Text)+'%')+Where);
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYPagar.SQL.Text);
  end;
end;

end.
