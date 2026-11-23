unit LocacoesRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, StdCtrls, Mask, ExtCtrls, PngBitBtn, PngSpeedButton,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormLocacoesRel = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    ComboBox4: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLocacoesRel: TFormLocacoesRel;

implementation
uses DataMod, Funcoes1, LocacoesFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormLocacoesRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLocacoesRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormLocacoesRel.FormCreate(Sender: TObject);
begin
  ComboBox4.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(Date,FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormLocacoesRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormLocacoesRel.Edit1Exit(Sender: TObject);
begin
  LocClientesExit(Edit1,Edit2);
end;

procedure TFormLocacoesRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormLocacoesRel.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormLocacoesRel.SpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit1,Edit2);
end;

procedure TFormLocacoesRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox4.ItemIndex of
    00: begin
          if Edit2.Text<>'' then Where:=' and LOC_CLIENTE='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormLocacoesFast, FormLocacoesFast);
          FormLocacoesFast.QY01.Close;
          FormLocacoesFast.QY01.SQL.Clear;
          FormLocacoesFast.QY01.SQL.Add(
            'select LOC_CODIGO, LOC_OBJETO, LOC_CLIENTE, OBJ_DESCRICAO, OBJ_SERIAL, LOC_DATA, '+
            'LOC_DATAPREVISAO, LOC_STATUS, CLI_NOME from LOCACOES '+
            'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
            'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO '+
            'where LOC_DATA between :datainicial and :datafinal and LOC_STATUS=''A'' '+Where+' '+
            'order by CLI_NOME, LOC_DATA desc');
          FormLocacoesFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormLocacoesFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormLocacoesFast.QY01.Open;
          FormLocacoesFast.frxReport1.Variables['TITULO']:=QuotedStr('Locações em aberto por cliente');
          FormLocacoesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormLocacoesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormLocacoesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormLocacoesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormLocacoesFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormLocacoesFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormLocacoesFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormLocacoesFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormLocacoesFast.frxReport1.ShowReport;
          FormLocacoesFast.Free;
          FormLocacoesFast:=nil;
        end;
    01: begin
          if Edit2.Text<>'' then Where:=' and LOC_CLIENTE='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormLocacoesFast, FormLocacoesFast);
          FormLocacoesFast.QY02.Close;
          FormLocacoesFast.QY02.SQL.Clear;
          FormLocacoesFast.QY02.SQL.Add(
            'select LOC_CODIGO, LOC_OBJETO, LOC_CLIENTE, OBJ_DESCRICAO, OBJ_SERIAL, LOC_DATA, '+
            'LOC_DATAPREVISAO, LOC_DATADEVOLUCAO, LOC_STATUS, CLI_NOME from LOCACOES '+
            'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
            'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO '+
            'where LOC_DATA between :datainicial and :datafinal '+Where+' '+
            'order by CLI_NOME, LOC_DATA desc');
          FormLocacoesFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormLocacoesFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormLocacoesFast.QY02.Open;
          FormLocacoesFast.frxReport2.Variables['TITULO']:=QuotedStr('Histórico de locações');
          FormLocacoesFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormLocacoesFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormLocacoesFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormLocacoesFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormLocacoesFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormLocacoesFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormLocacoesFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormLocacoesFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormLocacoesFast.frxReport2.ShowReport;
          FormLocacoesFast.Free;
          FormLocacoesFast:=nil;
        end;
  end;
end;

procedure TFormLocacoesRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

end.
