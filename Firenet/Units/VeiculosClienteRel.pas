//Atualizacoes:
//2026.11.24 - Relatorio no FastReport (FormVeiculosClienteFast, VEC01); o QuickReport (FormVeiculosClienteQ01) ficou comentado.
unit VeiculosClienteRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, StdCtrls, Buttons, ExtCtrls, PngBitBtn, PngSpeedButton;

type
  TFormVeiculosClienteRel = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    SpeedButton1: TPngSpeedButton;
    ComboBox1: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn3: TPngBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosClienteRel: TFormVeiculosClienteRel;

implementation
uses DataMod, ClientesLoc, Funcoes1, DataModSearch, VeiculosClienteFast;

{$R *.dfm}

procedure TFormVeiculosClienteRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVeiculosClienteRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVeiculosClienteRel.Edit1Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit1.Clear;
    Edit2.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      Edit1.Text:=IntToStr(DMS.QYClientesCLI_CODIGO.Value);
      Edit2.Text:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      Edit1.Clear;
      Edit2.Clear;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormVeiculosClienteRel.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormVeiculosClienteRel.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVeiculosClienteRel.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    Edit1.Text:=IntToStr(FormClientesLoc.QYClientesCLI_CODIGO.Value);
    Edit2.Text:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormVeiculosClienteRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox1Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormVeiculosClienteRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVeiculosClienteRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVeiculosClienteRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
//    01: begin
//          Edit1.Enabled:=True;
//          SpeedButton1.Enabled:=True;
//        end;
  end;
end;

procedure TFormVeiculosClienteRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  case ComboBox1.ItemIndex of
    00: begin
          //QuickReport antigo (FormVeiculosClienteQ01), trocado pelo FastReport (FormVeiculosClienteFast, VEC01) em 2026.11.24:
          //Application.CreateForm(TFormVeiculosClienteQ01, FormVeiculosClienteQ01);
          //FormVeiculosClienteQ01.FDQuery1.SQL.Clear;
          //if Edit2.Text='' then
          //FormVeiculosClienteQ01.FDQuery1.SQL.Add('select CLI_NOME, VEL_DESCRICAO, VEC_CLIENTE, VEC_DTVENDA, VEC_COR, VEC_KM, VEC_COMBUSTIVEL, '+
          //                                        'VEC_ANOFAB, VEC_ANOMOD, VEC_TIPO, VEC_RENAVAN, VEC_PLACA from VEICULOSCLIENTE '+
          //                                        'left join CLIENTES on VEC_CLIENTE=CLI_CODIGO '+
          //                                        'left join VEICULOS on VEC_VEICULO=VEL_CODIGO '+
          //                                        'where VEC_DTVENDA between :datainicial and :datafinal '+
          //                                        'order by VEC_CLIENTE, VEC_DTVENDA desc') else
          //FormVeiculosClienteQ01.FDQuery1.SQL.Add('select CLI_NOME, VEL_DESCRICAO, VEC_CLIENTE, VEC_DTVENDA, VEC_COR, VEC_KM, VEC_COMBUSTIVEL, '+
          //                                        'VEC_ANOFAB, VEC_ANOMOD, VEC_TIPO, VEC_RENAVAN, VEC_PLACA from VEICULOSCLIENTE '+
          //                                        'left join CLIENTES on VEC_CLIENTE=CLI_CODIGO '+
          //                                        'left join VEICULOS on VEC_VEICULO=VEL_CODIGO '+
          //                                        'where VEC_DTVENDA between :datainicial and :datafinal '+
          //                                        'and VEC_CLIENTE='+QuotedStr(Edit1.Text)+' '+
          //                                        'order by VEC_CLIENTE, VEC_DTVENDA desc');
          //FormVeiculosClienteQ01.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormVeiculosClienteQ01.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormVeiculosClienteQ01.FDQuery1.Open;
          //FormVeiculosClienteQ01.QuickRep1.PreviewModal;
          //FormVeiculosClienteQ01.Free;
          //FormVeiculosClienteQ01:=nil;
          Where:='';
          if Edit2.Text<>'' then Where:=' and VEC_CLIENTE='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormVeiculosClienteFast, FormVeiculosClienteFast);
          FormVeiculosClienteFast.QY01.SQL.Clear;
          FormVeiculosClienteFast.QY01.SQL.Add(
            'select CLI_NOME, VEL_DESCRICAO, VEC_CLIENTE, VEC_DTVENDA, VEC_COR, VEC_KM, VEC_COMBUSTIVEL, '+
            'VEC_ANOFAB, VEC_ANOMOD, VEC_TIPO, VEC_RENAVAN, VEC_PLACA '+
            'from VEICULOSCLIENTE '+
            'left join CLIENTES on VEC_CLIENTE=CLI_CODIGO '+
            'left join VEICULOS on VEC_VEICULO=VEL_CODIGO '+
            'where VEC_DTVENDA between :datainicial and :datafinal '+Where+' '+
            'order by VEC_CLIENTE, VEC_DTVENDA desc ');
          FormVeiculosClienteFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVeiculosClienteFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVeiculosClienteFast.QY01.Open;
          FormVeiculosClienteFast.Mostrar(FormVeiculosClienteFast.frxReport1,'Veículos de clientes de '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormVeiculosClienteFast.Free;
          FormVeiculosClienteFast:=nil;
        end;
//    01: begin
//        end;
  end;
end;

end.
