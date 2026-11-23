unit ClassificadosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, DB, PngBitBtn, PngSpeedButton,
  System.UITypes, Vcl.Mask;

type
  TFormClassificadosRel = class(TForm)
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    SpeedButton2: TPngSpeedButton;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn3: TPngBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClassificadosRel: TFormClassificadosRel;

implementation
uses ClassificadosFast, VeiculosLoc, DataMod, Funcoes1, DataModSearch;
{$R *.dfm}

procedure TFormClassificadosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClassificadosRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox2.ItemIndex of
    00: begin
          if ComboBox1.Text='VENDA' then Where:=Where+' and CLA_OBJETIVO='+QuotedStr('V') else
          if ComboBox1.Text='COMPRA' then Where:=Where+' and CLA_OBJETIVO='+QuotedStr('C');
          if ComboBox3.Text='NOVOS' then Where:=Where+' and CLA_CATEGORIA='+QuotedStr('N') else
          if ComboBox3.Text='SEMINOVOS' then Where:=Where+' and CLA_CATEGORIA='+QuotedStr('S') else
          if ComboBox3.Text='USADOS' then Where:=Where+' and CLA_CATEGORIA='+QuotedStr('U');
          if Edit4.Text<>'' then Where:=Where+' and CLA_VEICULO='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormClassificadosFast, FormClassificadosFast);
          FormClassificadosFast.QY01.Close;
          FormClassificadosFast.QY01.SQL.Clear;
          FormClassificadosFast.QY01.SQL.Add(
            'select CLA_ANOFAB, CLA_ANOMOD, CLA_CATEGORIA, CLA_CODIGO, CLA_DTCADASTRO, '+
            'CLA_FONE1, CLA_NOME, CLA_OBJETIVO, VEL_DESCRICAO from CLASSIFICADOS '+
            'left join VEICULOS on CLA_VEICULO=VEL_CODIGO '+
            'where CLA_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by CLA_DTCADASTRO, CLA_NOME');
          FormClassificadosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormClassificadosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormClassificadosFast.QY01.Open;
          FormClassificadosFast.frxReport1.Variables['TITULO']:=QuotedStr('Classificados');
          FormClassificadosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormClassificadosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormClassificadosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormClassificadosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormClassificadosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormClassificadosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormClassificadosFast.frxReport1.Variables['OBJETIVO']:=QuotedStr(ComboBox1.Text);
          FormClassificadosFast.frxReport1.Variables['CATEGORIA']:=QuotedStr(ComboBox3.Text);
          FormClassificadosFast.frxReport1.Variables['VEL_CODIGO']:=QuotedStr(Edit3.Text);
          FormClassificadosFast.frxReport1.Variables['VEL_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormClassificadosFast.frxReport1.ShowReport;
          FormClassificadosFast.Free;
          FormClassificadosFast:=nil;
        end;
  end;
end;

procedure TFormClassificadosRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then Close;
end;

procedure TFormClassificadosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormClassificadosRel.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosLoc, FormVeiculosLoc);
  FormVeiculosLoc.ShowModal;
  if VeiculosLoc.Procurar then
  begin
    Edit3.Text:=IntToStr(FormVeiculosLoc.QYVeiculosVEL_CODIGO.Value);
    Edit4.Text:=FormVeiculosLoc.QYVeiculosVEL_DESCRICAO.Value;
  end;
  FormVeiculosLoc.Free;
  FormVeiculosLoc:=nil;
end;

procedure TFormClassificadosRel.ComboBox2Change(Sender: TObject);
begin
{  case ComboBox2.ItemIndex of
    00: begin
          ComboBox1.Enabled:=False;
          ComboBox3.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
        end;
    01: begin
          ComboBox1.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    02: begin
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          ComboBox1.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    03: begin
          ComboBox3.Enabled:=True;
          ComboBox1.Enabled:=False;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
        end;
    04: begin
          ComboBox1.Enabled:=True;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          ComboBox3.Enabled:=False;
        end;
    05: begin
          ComboBox1.Enabled:=True;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
        end;
    06: begin
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          ComboBox3.Enabled:=True;
          ComboBox1.Enabled:=False;
        end;
    07: begin
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          ComboBox3.Enabled:=True;
          ComboBox1.Enabled:=True;
        end;
  end; }
end;

procedure TFormClassificadosRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormClassificadosRel.Edit3Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit3.Clear;
    Edit4.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYVeiculos.Close;
    DMS.QYVeiculos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYVeiculos.Open;
    if not DMS.QYVeiculos.IsEmpty then
    begin
      Edit3.Text:=IntToStr(DMS.QYVeiculosVEL_CODIGO.Value);
      Edit4.Text:=DMS.QYVeiculosVEL_DESCRICAO.Value;
    end else
    begin
      Edit3.Clear;
      Edit4.Clear;
      MessageDlg('Veículo não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYVeiculos.Close;
  end;
end;

procedure TFormClassificadosRel.Edit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormClassificadosRel.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormClassificadosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
