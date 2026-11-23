unit EvolucoesRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Data.DB,
  Vcl.Mask, PngSpeedButton, Vcl.ExtCtrls, System.UITypes;

type
  TFormEvolucoesRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label7: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn3: TPngBitBtn;
    ComboBox3: TComboBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEvolucoesRel: TFormEvolucoesRel;

implementation
uses DataMod, DataMod2, Funcoes1, DataModSearch, ClientesLoc, EvolucoesFast;
{$R *.dfm}

procedure TFormEvolucoesRel.BitBtn1Click(Sender: TObject);
var Where, Order: String;
begin
  Where:='';
  Order:='';
  case ComboBox1.ItemIndex of
    00: begin
          AbortIf(DM2.TBEvolucoes.IsEmpty,'Nenhuma evolução selecionada.');

          Application.CreateForm(TFormEvolucoesFast, FormEvolucoesFast);
          FormEvolucoesFast.QY01.Close;
          FormEvolucoesFast.QY01.ParamByName('codigo').AsInteger:=DM2.TBEvolucoesEVO_CODIGO.Value;
          FormEvolucoesFast.QY01.Open;
          FormEvolucoesFast.frxReport1.Variables['TITULO']:=QuotedStr('Ficha de Evolução');
          FormEvolucoesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEvolucoesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEvolucoesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEvolucoesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEvolucoesFast.frxReport1.ShowReport;
          FormEvolucoesFast.Free;
          FormEvolucoesFast:=nil;
        end;
    01: begin
          if Edit2.Text<>'' then Where:=' and EVO_CLIENTE='+Edit1.Text;
          if ComboBox3.Text='ABERTAS' then Where:=Where+' and EVO_STATUS='+QuotedStr('A');
          if ComboBox3.Text='FINALIZADAS' then Where:=Where+' and EVO_STATUS='+QuotedStr('F');
          Application.CreateForm(TFormEvolucoesFast, FormEvolucoesFast);
          FormEvolucoesFast.QY02.Close;
          FormEvolucoesFast.QY02.SQL.Clear;
          FormEvolucoesFast.QY02.SQL.Add(
            'select EVO_CLIENTE, EVO_CODIGO, EVO_DESCRICAO, EVO_DATA, EVO_DTCADASTRO, EVO_HORA, EVO_HRCADASTRO, '+
            'EVO_STATUS, EVO_VENDEDOR, CLI_NOME, VEN_NOME, VEN_REGPROFISSIONAL from EVOLUCOES '+
            'left join CLIENTES on EVO_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on EVO_VENDEDOR=VEN_CODIGO '+
            'where EVO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by CLI_NOME');
          FormEvolucoesFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormEvolucoesFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormEvolucoesFast.QY02.Open;
          FormEvolucoesFast.frxReport2.Variables['TITULO']:=QuotedStr('Evoluções por paciente');
          FormEvolucoesFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEvolucoesFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEvolucoesFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEvolucoesFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEvolucoesFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormEvolucoesFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormEvolucoesFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormEvolucoesFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormEvolucoesFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormEvolucoesFast.frxReport2.ShowReport;
          FormEvolucoesFast.Free;
          FormEvolucoesFast:=nil;
        end;
  end;
end;

procedure TFormEvolucoesRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEvolucoesRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormEvolucoesRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          ComboBox3.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          ComboBox3.Enabled:=True;
        end;
  end;
end;

procedure TFormEvolucoesRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormEvolucoesRel.Edit1Exit(Sender: TObject);
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
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormEvolucoesRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormEvolucoesRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEvolucoesRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  ComboBox1.OnChange(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormEvolucoesRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEvolucoesRel.SpeedButton1Click(Sender: TObject);
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

end.
