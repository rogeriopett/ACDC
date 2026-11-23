unit VeiculosVendaLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormVeiculosVendaLoc = class(TForm)
    DSVeiculosVenda: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    MaskEdit2: TMaskEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYVeiculosVenda: TFDQuery;
    TRVeiculosVenda: TFDTransaction;
    QYVeiculosVendaVEV_CODIGO: TIntegerField;
    QYVeiculosVendaVEV_RENAVAN: TStringField;
    QYVeiculosVendaVEV_PLACA: TStringField;
    QYVeiculosVendaVEV_ANOFAB: TStringField;
    QYVeiculosVendaVEV_ANOMOD: TStringField;
    QYVeiculosVendaVEV_STATUS: TStringField;
    QYVeiculosVendaCLI_NOME: TStringField;
    QYVeiculosVendaVEN_NOME: TStringField;
    QYVeiculosVendaVEL_DESCRICAO: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosVendaLoc: TFormVeiculosVendaLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormVeiculosVendaLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormVeiculosVendaLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormVeiculosVendaLoc.DBGrid1DblClick(Sender: TObject);
begin
  Procurar:=True;
  Close;
end;

procedure TFormVeiculosVendaLoc.Edit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)<>'' then
    begin
      QYVeiculosVenda.Active:=False;
      QYVeiculosVenda.SQL.Clear;
      QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                              'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                              'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                              'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                              'where VEV_CODIGO='+QuotedStr(Edit6.Text));
      QYVeiculosVenda.Active:=True;
      DBGrid1.SetFocus;
    end;
  end;
end;

procedure TFormVeiculosVendaLoc.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)<>'' then
    begin
      QYVeiculosVenda.Active:=False;
      QYVeiculosVenda.SQL.Clear;
      case ComboBox1.ItemIndex of
        00: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where CLI_NOME like '+QuotedStr(Edit3.Text+'%')+' order by CLI_NOME');
        01: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''A'' and CLI_NOME like '+QuotedStr(Edit3.Text+'%')+' order by CLI_NOME');
        02: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''V'' and CLI_NOME like '+QuotedStr(Edit3.Text+'%')+' order by CLI_NOME');
      end;
      QYVeiculosVenda.Active:=True;
      DBGrid1.SetFocus;
    end;
  end;
end;

procedure TFormVeiculosVendaLoc.Edit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)<>'' then
    begin
      QYVeiculosVenda.Active:=False;
      QYVeiculosVenda.SQL.Clear;
      case ComboBox1.ItemIndex of
        00: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEN_NOME like '+QuotedStr(Edit5.Text+'%')+' order by VEN_NOME');
        01: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''A'' and VEN_NOME like '+QuotedStr(Edit5.Text+'%')+' order by VEN_NOME');
        02: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''V'' and VEN_NOME like '+QuotedStr(Edit5.Text+'%')+' order by VEN_NOME');
      end;
      QYVeiculosVenda.Active:=True;
      DBGrid1.SetFocus;
    end;
  end;
end;

procedure TFormVeiculosVendaLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)<>'' then
    begin
      QYVeiculosVenda.Active:=False;
      QYVeiculosVenda.SQL.Clear;
      case ComboBox1.ItemIndex of
        00: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEL_DESCRICAO like '+QuotedStr(Edit1.Text+'%')+' order by VEL_DESCRICAO');
        01: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''A'' and VEL_DESCRICAO like '+QuotedStr(Edit1.Text+'%')+' order by VEL_DESCRICAO');
        02: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''V'' and VEL_DESCRICAO like '+QuotedStr(Edit1.Text+'%')+' order by VEL_DESCRICAO');
      end;
      QYVeiculosVenda.Active:=True;
      DBGrid1.SetFocus;
    end;
  end;
end;

procedure TFormVeiculosVendaLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)<>'' then
    begin
      QYVeiculosVenda.Active:=False;
      QYVeiculosVenda.SQL.Clear;
      case ComboBox1.ItemIndex of
        00: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_RENAVAN like '+QuotedStr(Edit2.Text+'%')+' order by VEV_RENAVAN');
        01: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''A'' and VEV_RENAVAN like '+QuotedStr(Edit2.Text+'%')+' order by VEV_RENAVAN');
        02: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''V'' and VEV_RENAVAN like '+QuotedStr(Edit2.Text+'%')+' order by VEV_RENAVAN');
      end;
      QYVeiculosVenda.Active:=True;
      DBGrid1.SetFocus;
    end;
  end;
end;

procedure TFormVeiculosVendaLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormVeiculosVendaLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormVeiculosVendaLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVeiculosVendaLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    QYVeiculosVenda.Active:=False;
    QYVeiculosVenda.SQL.Clear;
    case ComboBox1.ItemIndex of
      00: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                  'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                  'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                  'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                  'where VEV_PLACA like '+QuotedStr(MaskEdit1.Text+'%')+' order by VEV_PLACA');
      01: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                  'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                  'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                  'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                  'where VEV_STATUS=''A'' and VEV_PLACA like '+QuotedStr(MaskEdit1.Text+'%')+' order by VEV_PLACA');
      02: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                  'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                  'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                  'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                  'where VEV_STATUS=''V'' and VEV_PLACA like '+QuotedStr(MaskEdit1.Text+'%')+' order by VEV_PLACA');
    end;
    QYVeiculosVenda.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVeiculosVendaLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Veiculos a Venda',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VENDEDOR' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VEICULO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='RENAVAM' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='PLACA' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='ANO FAB' then MaskEdit2.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Veiculos a Venda com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='A VENDA' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='VENDIDOS' then ComboBox1.ItemIndex:=2;
end;

procedure TFormVeiculosVendaLoc.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(MaskEdit2.Text)<>'' then
    begin
      QYVeiculosVenda.Active:=False;
      QYVeiculosVenda.SQL.Clear;
      case ComboBox1.ItemIndex of
        00: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_ANOFAB='+QuotedStr(MaskEdit2.Text)+' order by VEV_ANOFAB');
        01: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''A'' and VEV_ANOFAB='+QuotedStr(MaskEdit2.Text)+' order by VEV_ANOFAB');
        02: QYVeiculosVenda.SQL.Add('select VEV_CODIGO, VEV_RENAVAN, VEV_PLACA, VEV_ANOFAB, VEV_ANOMOD, VEV_STATUS, CLI_NOME, VEN_NOME, VEL_DESCRICAO from VEICULOSVENDA '+
                                    'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
                                    'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
                                    'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
                                    'where VEV_STATUS=''V'' and VEV_ANOFAB='+QuotedStr(MaskEdit2.Text)+' order by VEV_ANOFAB');
      end;
      QYVeiculosVenda.Active:=True;
      DBGrid1.SetFocus;
    end;
  end;
end;

procedure TFormVeiculosVendaLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
