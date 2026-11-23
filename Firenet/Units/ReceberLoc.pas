unit ReceberLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, Grids, DBGrids, DBCtrls, Buttons, ExtCtrls,
  PngBitBtn, Menus, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormReceberLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DSReceber: TDataSource;
    DSTotalReceber: TDataSource;
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
    Label10: TLabel;
    Edit6: TEdit;
    Panel1: TPanel;
    BitBtn3: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Panel2: TPanel;
    DBText1: TDBText;
    Label5: TLabel;
    Bevel1: TBevel;
    Label11: TLabel;
    Edit7: TEdit;
    QYReceber: TFDQuery;
    TRReceber: TFDTransaction;
    QYTotalReceber: TFDQuery;
    TRTotalReceber: TFDTransaction;
    QYReceberREE_ACRESCIMOPORC: TFMTBCDField;
    QYReceberREE_ACRESCIMOPORCPAGO: TFMTBCDField;
    QYReceberREE_ACRESCIMOVALOR: TFMTBCDField;
    QYReceberREE_ACRESCIMOVALORPAGO: TFMTBCDField;
    QYReceberREE_BAIXADOPOR: TStringField;
    QYReceberREE_BOLETO: TIntegerField;
    QYReceberREE_CLIENTE: TIntegerField;
    QYReceberREE_CODIGO: TIntegerField;
    QYReceberREE_CONTA: TIntegerField;
    QYReceberREE_DESCPORC: TFMTBCDField;
    QYReceberREE_DESCPORCVENCIMENTO: TFMTBCDField;
    QYReceberREE_DESCRICAO: TStringField;
    QYReceberREE_DESCVALOR: TFMTBCDField;
    QYReceberREE_DIASATRASO: TIntegerField;
    QYReceberREE_DIASPRAZO: TIntegerField;
    QYReceberREE_DTATUALIZACAO: TDateField;
    QYReceberREE_DTCADASTRO: TDateField;
    QYReceberREE_DTEMISSAO: TDateField;
    QYReceberREE_DTJUROSAPOS: TDateField;
    QYReceberREE_DTPAGAMENTO: TDateField;
    QYReceberREE_DTVENCIMENTO: TDateField;
    QYReceberREE_JUROSPAGO: TFMTBCDField;
    QYReceberREE_MULTAPAGO: TFMTBCDField;
    QYReceberREE_NOVOCODIGO: TIntegerField;
    QYReceberREE_NUMDOCTO: TStringField;
    QYReceberREE_OBSERVACOES: TMemoField;
    QYReceberREE_PARCELANUM: TIntegerField;
    QYReceberREE_PARCELAQTDE: TIntegerField;
    QYReceberREE_PORCJUROS: TFMTBCDField;
    QYReceberREE_RECEITA: TIntegerField;
    QYReceberREE_STATUS: TStringField;
    QYReceberREE_TIPOBAIXA: TStringField;
    QYReceberREE_TIPODOCTO: TStringField;
    QYReceberREE_USUARIO: TStringField;
    QYReceberREE_VALOR: TFMTBCDField;
    QYReceberREE_VALORACESSORIAS: TFMTBCDField;
    QYReceberREE_VALORJUROS: TFMTBCDField;
    QYReceberREE_VALORMULTA: TFMTBCDField;
    QYReceberREE_VALORORIGINAL: TFMTBCDField;
    QYReceberREE_VALORPAGO: TFMTBCDField;
    QYReceberREE_VALORSEMDESCONTO: TFMTBCDField;
    QYReceberREE_VENDA: TIntegerField;
    QYReceberREE_VENDEDOR: TIntegerField;
    QYReceberCLI_CODIGO: TIntegerField;
    QYReceberCLI_NOME: TStringField;
    QYTotalReceberVALOR: TFMTBCDField;
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
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberLoc: TFormReceberLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;
  TipoAcao: String;

const
  NomeArquivoFormTxt='FormReceberLoc.txt';

implementation
uses DataMod, Funcoes1, DataMod2, FuncoesFirenet, ReceberFast;
{$R *.dfm}

procedure TFormReceberLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormReceberLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    //if ComboBox1.Text='TODAS' then nao faz nada.
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and REE_STATUS=''A''';
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and REE_STATUS=''B''';
    if ComboBox1.Text='PRE BAIXADAS' then Where:=Where+' and REE_STATUS=''P''';
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and REE_STATUS=''C''';
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_DTVENCIMENTO between '+Where+' order by REE_DTVENCIMENTO, CLI_NOME');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_DTVENCIMENTO between '+Where);
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYReceber.SQL.Text);
  end;
end;

procedure TFormReceberLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormReceberLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    if ComboBox1.Text='TODAS' then Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and REE_STATUS=''A''';
    if ComboBox1.Text='BAIXADAS' then Where:=' and REE_STATUS=''B''';
    if ComboBox1.Text='PRE BAIXADAS' then Where:=' and REE_STATUS=''P''';
    if ComboBox1.Text='CANCELADAS' then Where:=' and REE_STATUS=''C''';
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where);
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYReceber.SQL.Text);
  end;
end;

procedure TFormReceberLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_CODIGO='+QuotedStr(Edit1.Text)+' order by REE_CODIGO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_CODIGO='+QuotedStr(Edit1.Text));
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYReceber.SQL.Text);
  end;
end;

procedure TFormReceberLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYReceber.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormReceberLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYReceber.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormReceberLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormReceberLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  ReceberLoc.TipoAcao:='';
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYReceber.Close;
    QYReceber.SQL.Clear;
    QYReceber.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYReceber.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormReceberLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceberLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Contas a Receber',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VENDA' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='BOLETO' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VALOR' then Edit5.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Contas a Receber com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='PRE BAIXADAS' then ComboBox1.ItemIndex:=3;

  if not QYReceber.IsEmpty then
  DBGrid1.SetFocus;
end;

procedure TFormReceberLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit; //nao faz pesquisa nula.
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_NUMDOCTO like '+QuotedStr(Edit3.Text+'%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr(Edit3.Text+'%'));
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYReceber.SQL.Text);
  end;
end;

procedure TFormReceberLoc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceberLoc.BitBtn3Click(Sender: TObject);
begin
  AbortIf(QYReceber.IsEmpty,'Nenhum registro para imprimir.');

  if TipoAcao='CARNES' then
  begin
    Application.CreateForm(TFormReceberFast, FormReceberFast);
    FormReceberFast.frxReport8.Variables['TITULO']:=QuotedStr('Carnê de Pagamentos.');
    FormReceberFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormReceberFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormReceberFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
    FormReceberFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
    FormReceberFast.frxDBDataset8.DataSet:=QYReceber;
    FormReceberFast.frxReport8.ShowReport;
    FormReceberFast.Free;
    FormReceberFast:=nil;
  end;
end;

procedure TFormReceberLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    if ComboBox1.Text='TODAS' then Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and REE_STATUS=''A''';
    if ComboBox1.Text='BAIXADAS' then Where:=' and REE_STATUS=''B''';
    if ComboBox1.Text='PRE BAIXADAS' then Where:=' and REE_STATUS=''P''';
    if ComboBox1.Text='CANCELADAS' then Where:=' and REE_STATUS=''C''';
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_CLIENTE='+QuotedStr(Edit4.Text)+' '+Where+' order by REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_CLIENTE='+QuotedStr(Edit4.Text)+' '+Where);
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYReceber.SQL.Text);
  end;
end;

procedure TFormReceberLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit; //nao faz pesquisa nula.
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    if ComboBox1.Text='TODAS' then Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and REE_STATUS=''A''';
    if ComboBox1.Text='BAIXADAS' then Where:=' and REE_STATUS=''B''';
    if ComboBox1.Text='PRE BAIXADAS' then Where:=' and REE_STATUS=''P''';
    if ComboBox1.Text='CANCELADAS' then Where:=' and REE_STATUS=''C''';
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_VALOR like '+QuotedStr(TrocarVirgulaPonto(Edit5.Text)+'%')+Where+' order by REE_VALOR, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_VALOR like '+QuotedStr(Edit5.Text+'%')+Where);
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYReceber.SQL.Text);
  end;
end;

procedure TFormReceberLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit; //nao faz pesquisa nula.
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_VENDA='+Edit6.Text+' order by REE_VENDA, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_VENDA='+Edit6.Text);
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYReceber.SQL.Text);
  end;
end;

procedure TFormReceberLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit7.Text)='' then Exit; //nao faz pesquisa nula.
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_BOLETO='+Edit7.Text+' order by REE_BOLETO, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_BOLETO='+Edit7.Text);
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYReceber.SQL.Text);
  end;
end;

end.
