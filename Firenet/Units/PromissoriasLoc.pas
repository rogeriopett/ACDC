unit PromissoriasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Buttons, ExtCtrls, PngBitBtn, Menus,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormPromissoriasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DSPromissorias: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYPromissorias: TFDQuery;
    TRPromissorias: TFDTransaction;
    QYPromissoriasPRM_AVALISTA1: TStringField;
    QYPromissoriasPRM_AVALISTA1CPF: TStringField;
    QYPromissoriasPRM_AVALISTA2: TStringField;
    QYPromissoriasPRM_AVALISTA2CPF: TStringField;
    QYPromissoriasPRM_CEDENTE: TStringField;
    QYPromissoriasPRM_CEDENTEBAIRRO: TStringField;
    QYPromissoriasPRM_CEDENTECEP: TStringField;
    QYPromissoriasPRM_CEDENTECNPJ: TStringField;
    QYPromissoriasPRM_CEDENTEENDERECO: TStringField;
    QYPromissoriasPRM_CEDENTEFONE: TStringField;
    QYPromissoriasPRM_CEDENTENUMERO: TStringField;
    QYPromissoriasPRM_CODIGO: TIntegerField;
    QYPromissoriasPRM_DTATUALIZACAO: TDateField;
    QYPromissoriasPRM_DTCADASTRO: TDateField;
    QYPromissoriasPRM_DTVENCIMENTO: TDateField;
    QYPromissoriasPRM_HRATUALIZACAO: TTimeField;
    QYPromissoriasPRM_HRCADASTRO: TTimeField;
    QYPromissoriasPRM_MATRIZ: TStringField;
    QYPromissoriasPRM_MULTIPLICADO: TStringField;
    QYPromissoriasPRM_PARCELA: TIntegerField;
    QYPromissoriasPRM_PARCELATOTAL: TIntegerField;
    QYPromissoriasPRM_SACADO: TStringField;
    QYPromissoriasPRM_SACADOBAIRRO: TStringField;
    QYPromissoriasPRM_SACADOCEP: TStringField;
    QYPromissoriasPRM_SACADOCNPJ: TStringField;
    QYPromissoriasPRM_SACADOENDERECO: TStringField;
    QYPromissoriasPRM_SACADOFONE: TStringField;
    QYPromissoriasPRM_SACADONUMERO: TStringField;
    QYPromissoriasPRM_STATUS: TStringField;
    QYPromissoriasPRM_USUARIO: TStringField;
    QYPromissoriasPRM_VALOR: TFMTBCDField;
    QYPromissoriasPRM_VALORBAIXADO: TFMTBCDField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPromissoriasLoc: TFormPromissoriasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormPromissoriasLoc.txt';

implementation
uses DataMod, Funcoes1, PromissoriasQ01, FuncoesFirenet;
{$R *.dfm}

procedure TFormPromissoriasLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYPromissorias.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormPromissoriasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYPromissorias.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormPromissoriasLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYPromissorias.Active:=False;
    QYPromissorias.SQL.Clear;
    QYPromissorias.SQL.Add('select * from PROMISSORIAS where PRM_CODIGO='+QuotedStr(Edit1.Text)+' order by PRM_CODIGO');
    QYPromissorias.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPromissoriasLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYPromissorias.Active:=False;
    QYPromissorias.SQL.Clear;
    if CheckBox1.Checked then
    QYPromissorias.SQL.Add('select * from PROMISSORIAS where PRM_SACADO like '+QuotedStr(Edit2.Text+'%')+' and PRM_STATUS=''A'' order by PRM_SACADO, PRM_DTVENCIMENTO') else
    QYPromissorias.SQL.Add('select * from PROMISSORIAS where PRM_SACADO like '+QuotedStr(Edit2.Text+'%')+' order by PRM_SACADO, PRM_DTVENCIMENTO');
    QYPromissorias.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPromissoriasLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormPromissoriasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormPromissoriasLoc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPromissoriasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Promissorias',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SACADO' then Edit2.SetFocus;
end;

procedure TFormPromissoriasLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormPromissoriasLoc.MaskEdit2KeyPress(Sender: TObject;
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
    QYPromissorias.Active:=False;
    QYPromissorias.SQL.Clear;
    if CheckBox1.Checked then
    QYPromissorias.SQL.Add('select * from PROMISSORIAS where PRM_DTVENCIMENTO between :datainicial and :datafinal and PRM_STATUS=''A'' order by PRM_DTVENCIMENTO') else
    QYPromissorias.SQL.Add('select * from PROMISSORIAS where PRM_DTVENCIMENTO between :datainicial and :datafinal order by PRM_DTVENCIMENTO');
    QYPromissorias.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYPromissorias.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYPromissorias.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPromissoriasLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormPromissoriasLoc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPromissoriasLoc.BitBtn1Click(Sender: TObject);
begin
  AbortIf(QYPromissorias.IsEmpty,'Nenhuma nota promissória selecionada.');

  Application.CreateForm(TFormPromissoriasQ01, FormPromissoriasQ01);
  FormPromissoriasQ01.FDQuery1.Close;
  FormPromissoriasQ01.FDQuery1.SQL.Clear;
  FormPromissoriasQ01.FDQuery1.SQL:=QYPromissorias.SQL;
  if FormPromissoriasQ01.FDQuery1.ParamCount>0 then
  begin
    FormPromissoriasQ01.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    FormPromissoriasQ01.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  end;
  FormPromissoriasQ01.FDQuery1.Open;
  FormPromissoriasQ01.QuickRep1.PreviewModal;
  FormPromissoriasQ01.Free;
  FormPromissoriasQ01:=nil;
end;

end.
