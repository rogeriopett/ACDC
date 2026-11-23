unit PontosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, StdCtrls, Mask, ExtCtrls, PngBitBtn, PngSpeedButton,
  System.UITypes;

type
  TFormPontosRel = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPontosRel: TFormPontosRel;

implementation
uses DataMod, ClientesLoc, Funcoes1, DataModSearch, PontosFast;

{$R *.dfm}

procedure TFormPontosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox1.OnChange(self); //dispara o evento onchange.
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormPontosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPontosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPontosRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Pontuação por cliente analítico.'}
          if Edit1.Text<>'' then Where:=' and PTS_CLIENTE='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormPontosFast, FormPontosFast);
          FormPontosFast.QY01.Close;
          FormPontosFast.QY01.SQL.Clear;
          FormPontosFast.QY01.SQL.Add(
            'select PTS_CODIGO, PTS_DESCRICAO, PTS_ENTRADASAIDA, PTS_CLIENTE, PTS_NUMDOCTO, PTS_DTCADASTRO, PTS_VALOR, '+
            'PTS_COTACAO, PTS_PONTOS, PTS_SALDOANTERIOR, PTS_SALDOPOSTERIOR, CLI_NOME, CLI_PONTOS from PONTOS '+
            'left join CLIENTES on PTS_CLIENTE=CLI_CODIGO '+
            'where PTS_DTCADASTRO between :datainicial and :datafinal'+Where+' '+
            'order by CLI_NOME, PTS_DTCADASTRO');
          FormPontosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormPontosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormPontosFast.QY01.Open;
          FormPontosFast.frxReport1.Variables['TITULO']:=QuotedStr('Pontuação por cliente analítico.');
          FormPontosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormPontosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormPontosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormPontosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormPontosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormPontosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormPontosFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormPontosFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormPontosFast.frxReport1.ShowReport;
          FormPontosFast.Free;
          FormPontosFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Pontuação por cliente sintético.'}
          if Edit1.Text<>'' then Where:=' and PTS_CLIENTE='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormPontosFast, FormPontosFast);
          FormPontosFast.QY02.Close;
          FormPontosFast.QY02.SQL.Clear;
          FormPontosFast.QY02.SQL.Add(
            'select PTS_CLIENTE, '+
            'sum(iif(PTS_ENTRADASAIDA=''E'',PTS_VALOR,0)) as VALORTOTALENTRADAS, '+
            'sum(iif(PTS_ENTRADASAIDA=''E'',PTS_PONTOS,0)) as TOTALPONTOSENTRADAS, '+
            'sum(iif(PTS_ENTRADASAIDA=''S'',PTS_VALOR,0)) as VALORTOTALSAIDAS, '+
            'sum(iif(PTS_ENTRADASAIDA=''S'',PTS_PONTOS,0)) as TOTALPONTOSAIDAS, CLI_NOME, CLI_PONTOS from PONTOS '+
            'left join CLIENTES on PTS_CLIENTE=CLI_CODIGO '+
            'where PTS_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'group by PTS_CLIENTE, CLI_NOME, CLI_PONTOS order by CLI_NOME');
          FormPontosFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormPontosFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormPontosFast.QY02.Open;
          FormPontosFast.frxReport2.Variables['TITULO']:=QuotedStr('Pontuação por cliente sintético.');
          FormPontosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormPontosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormPontosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormPontosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormPontosFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormPontosFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormPontosFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormPontosFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormPontosFast.frxReport2.ShowReport;
          FormPontosFast.Free;
          FormPontosFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormPontosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormPontosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormPontosRel.Edit1Exit(Sender: TObject);
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

procedure TFormPontosRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormPontosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPontosRel.SpeedButton1Click(Sender: TObject);
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

procedure TFormPontosRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
  end;
end;

end.
