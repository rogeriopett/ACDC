//Atualizacoes:
//2026.11.24 - Relatorios no FastReport (FormVeiculosVendaFast, VEV01 a VEV04); os QuickReports (FormVeiculosVendaQ01 a Q04) ficaram comentados.
unit VeiculosVendaRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, DB, PngBitBtn, PngSpeedButton,
  System.UITypes;

type
  TFormVeiculosVendaRel = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    BitBtn3: TPngBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosVendaRel: TFormVeiculosVendaRel;

implementation
uses DataMod, DataMod2, DataModSearch, FuncoesFirenet, Funcoes1, VeiculosVendaFast;

{$R *.dfm}

procedure TFormVeiculosVendaRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVeiculosVendaRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVeiculosVendaRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox1Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormVeiculosVendaRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  case ComboBox1.ItemIndex of
    00: begin
          //QuickReport antigo (FormVeiculosVendaQ01), trocado pelo FastReport (FormVeiculosVendaFast, VEV01) em 2026.11.24:
          //Application.CreateForm(TFormVeiculosVendaQ01, FormVeiculosVendaQ01);
          //FormVeiculosVendaQ01.FDQuery1.Open;
          //FormVeiculosVendaQ01.QuickRep1.PreviewModal;
          //FormVeiculosVendaQ01.Free;
          //FormVeiculosVendaQ01:=nil;
          Application.CreateForm(TFormVeiculosVendaFast, FormVeiculosVendaFast);
          FormVeiculosVendaFast.QY01.Open;
          FormVeiculosVendaFast.Mostrar(FormVeiculosVendaFast.frxReport1,'Veículos à venda');
          FormVeiculosVendaFast.Free;
          FormVeiculosVendaFast:=nil;
        end;
    01: begin
          //QuickReport antigo (FormVeiculosVendaQ02), trocado pelo FastReport (FormVeiculosVendaFast, VEV02) em 2026.11.24:
          //Application.CreateForm(TFormVeiculosVendaQ02, FormVeiculosVendaQ02);
          //FormVeiculosVendaQ02.FDQuery1.Close;
          //FormVeiculosVendaQ02.FDQuery1.SQL.Clear;
          //if Edit2.Text='' then
          //FormVeiculosVendaQ02.FDQuery1.SQL.Add('select VEV_VENDEDOR, VEV_ANOFAB, VEV_ANOMOD, VEV_PLACA, VEV_DTVENDA, VEV_VALORVENDIDO, '+
          //                                      'VEL_DESCRICAO, CLI_NOME, VEN_NOME, VEV_VALORVENDIDO - (VEV_VALORCOMPRA+VEV_DESPESAS) as LUCRO from VEICULOSVENDA '+
          //                                      'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
          //                                      'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
          //                                      'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
          //                                      'where VEV_DTVENDA between :datainicial and :datafinal and VEV_STATUS=''V'' '+
          //                                      'order by VEN_NOME, VEV_DTVENDA desc') else
          //FormVeiculosVendaQ02.FDQuery1.SQL.Add('select VEV_VENDEDOR, VEV_ANOFAB, VEV_ANOMOD, VEV_PLACA, VEV_DTVENDA, VEV_VALORVENDIDO, '+
          //                                      'VEL_DESCRICAO, CLI_NOME, VEN_NOME, VEV_VALORVENDIDO - (VEV_VALORCOMPRA+VEV_DESPESAS) as LUCRO from VEICULOSVENDA '+
          //                                      'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
          //                                      'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
          //                                      'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
          //                                      'where VEV_DTVENDA between :datainicial and :datafinal and VEV_STATUS=''V'' '+
          //                                      'and VEV_VENDEDOR='+QuotedStr(Edit1.Text)+' '+
          //                                      'order by VEN_NOME, VEV_DTVENDA desc');
          //FormVeiculosVendaQ02.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormVeiculosVendaQ02.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormVeiculosVendaQ02.FDQuery1.Open;
          //FormVeiculosVendaQ02.QuickRep1.PreviewModal;
          //FormVeiculosVendaQ02.Free;
          //FormVeiculosVendaQ02:=nil;
          Where:='';
          if Edit2.Text<>'' then Where:=' and VEV_VENDEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormVeiculosVendaFast, FormVeiculosVendaFast);
          FormVeiculosVendaFast.QY02.SQL.Clear;
          FormVeiculosVendaFast.QY02.SQL.Add(
            'select VEV_VENDEDOR, VEV_ANOFAB, VEV_ANOMOD, VEV_PLACA, VEV_DTVENDA, VEV_VALORVENDIDO, VEL_DESCRICAO, CLI_NOME, VEN_NOME, '+
            'VEV_VALORVENDIDO - (VEV_VALORCOMPRA+VEV_DESPESAS) as LUCRO '+
            'from VEICULOSVENDA '+
            'left join VEICULOS on VEV_VEICULO=VEL_CODIGO '+
            'left join CLIENTES on VEV_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on VEV_VENDEDOR=VEN_CODIGO '+
            'where VEV_DTVENDA between :datainicial and :datafinal and VEV_STATUS=''V'' '+Where+' '+
            'order by VEN_NOME, VEV_DTVENDA desc ');
          FormVeiculosVendaFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVeiculosVendaFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVeiculosVendaFast.QY02.Open;
          FormVeiculosVendaFast.Mostrar(FormVeiculosVendaFast.frxReport2,'Veículos vendidos de '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormVeiculosVendaFast.Free;
          FormVeiculosVendaFast:=nil;
        end;
    02: begin
          //QuickReport antigo (FormVeiculosVendaQ03), trocado pelo FastReport (FormVeiculosVendaFast, VEV03) em 2026.11.24:
          //AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');
          //AbortIf(DM2.TBVeiculosVendaVEV_STATUS.Value='A','Este veículo ainda não foi vendido.');
          //Application.CreateForm(TFormVeiculosVendaQ03, FormVeiculosVendaQ03);
          //FormVeiculosVendaQ03.QRLabel12.Caption:='Ficha de venda de veículo - '+IntToStr(DM2.TBVeiculosVendaVEV_CODIGO.Value);
          //FormVeiculosVendaQ03.FDQuery1.ParamByName('codigo').AsInteger:=DM2.TBVeiculosVendaVEV_CODIGO.Value;
          //FormVeiculosVendaQ03.FDQuery1.Open;
          //FormVeiculosVendaQ03.QuickRep1.PreviewModal;
          //FormVeiculosVendaQ03.Free;
          //FormVeiculosVendaQ03:=nil;
          AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');
          AbortIf(DM2.TBVeiculosVendaVEV_STATUS.Value='A','Este veículo ainda não foi vendido.');
          Application.CreateForm(TFormVeiculosVendaFast, FormVeiculosVendaFast);
          FormVeiculosVendaFast.PrepararFicha(DM2.TBVeiculosVendaVEV_CODIGO.Value);
          FormVeiculosVendaFast.Mostrar(FormVeiculosVendaFast.frxReport3,'Ficha de venda de veículo - '+IntToStr(DM2.TBVeiculosVendaVEV_CODIGO.Value));
          FormVeiculosVendaFast.Free;
          FormVeiculosVendaFast:=nil;
        end;
    03: begin
          //QuickReport antigo (FormVeiculosVendaQ04), trocado pelo FastReport (FormVeiculosVendaFast, VEV04) em 2026.11.24:
          //Application.CreateForm(TFormVeiculosVendaQ04, FormVeiculosVendaQ04);
////          FormVeiculosVendaQ04.QRLabel13.Caption:='Ficha de venda de veículo - '+IntToStr(DM.TBVeiculosVendaVEV_CODIGO.Value);
////          FormVeiculosVendaQ04.FDQuery1.ParamByName('codigo').AsInteger:=DM.TBVeiculosVendaVEV_CODIGO.Value;
          //FormVeiculosVendaQ04.FDQuery1.Open;
          //FormVeiculosVendaQ04.QuickRep1.PreviewModal;
          //FormVeiculosVendaQ04.Free;
          //FormVeiculosVendaQ04:=nil;
          Application.CreateForm(TFormVeiculosVendaFast, FormVeiculosVendaFast);
          FormVeiculosVendaFast.QY04.Open;
          FormVeiculosVendaFast.Mostrar(FormVeiculosVendaFast.frxReport4,'Custo total dos veículos à venda');
          FormVeiculosVendaFast.Free;
          FormVeiculosVendaFast:=nil;
        end;
  end;
end;

procedure TFormVeiculosVendaRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVeiculosVendaRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormVeiculosVendaRel.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormVeiculosVendaRel.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVeiculosVendaRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormVeiculosVendaRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
    02: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
        end;
    03: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
        end;
  end;
end;

procedure TFormVeiculosVendaRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.


