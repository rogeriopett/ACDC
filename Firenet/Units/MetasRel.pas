unit MetasRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.Mask, PngSpeedButton;

type
  TFormMetasRel = class(TForm)
    Label8: TLabel;
    SpeedButton2: TPngSpeedButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label7: TLabel;
    ComboBox4: TComboBox;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label24: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    PngBitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMetasRel: TFormMetasRel;

implementation

{$R *.dfm}

uses Funcoes1, FuncoesFirenet, MetasFast, DataMod;

procedure TFormMetasRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMetasRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMetasRel.ComboBox4Change(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    00: begin
          {$REGION 'Clientes por ramo de atividade'}
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox1.Enabled:=True;
          ComboBox3.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;     //vendedor.
          {$ENDREGION}
        end;
  end;
end;

procedure TFormMetasRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormMetasRel.Edit3Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit3,Edit4,nil);
end;

procedure TFormMetasRel.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormMetasRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMetasRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox4Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormMetasRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMetasRel.PngBitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox4.ItemIndex of
    00: begin
          {$REGION 'Metas'}
          if Edit4.Text<>'' then Where:=Where+' and MET_VENDEDOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MET_STATUS='+QuotedStr('A');
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MET_STATUS='+QuotedStr('B');
          if ComboBox3.Text='DATA CADASTRO' then Where:=Where+' and MET_DTCADASTRO between :datainicial and :datafinal';
          if ComboBox3.Text='DATA BAIXA' then Where:=Where+' and MET_DTBAIXA between :datainicial and :datafinal';

          Application.CreateForm(TFormMetasFast, FormMetasFast);
          FormMetasFast.QY01.Close;
          FormMetasFast.QY01.SQL.Clear;
          FormMetasFast.QY01.SQL.Add(
            'select MET_BONUSPORC, MET_BONUSVALOR, MET_CODIGO, MET_COMISSAO, MET_COMISSAOTIPO, MET_DTBAIXA, MET_DTCADASTRO, '+
            'MET_DTFIM, MET_DTINICIO, MET_METAATINGIDA, MET_METAVALOR, MET_SALARIOBASE, MET_STATUS, MET_TOTALCOMISSAO, '+
            'MET_TOTALLIQUIDADO, MET_TOTALVENDAS, MET_VENDEDOR, VEN_NOME from METAS '+
            'left join VENDEDORES on MET_VENDEDOR=VEN_CODIGO '+
            'where 1=1 '+Where+' order by VEN_NOME, MET_CODIGO desc');
          FormMetasFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMetasFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMetasFast.QY01.Open;
          FormMetasFast.frxReport1.Variables['TITULO']:=QuotedStr('Metas');
          FormMetasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormMetasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormMetasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormMetasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormMetasFast.frxReport1.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormMetasFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormMetasFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormMetasFast.frxReport1.Variables['MET_STATUS']:=QuotedStr(ComboBox1.Text);
          FormMetasFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormMetasFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormMetasFast.frxReport1.ShowReport;
          FormMetasFast.Free;
          FormMetasFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Metas por vendedor analítico'}
          if Edit4.Text<>'' then Where:=Where+' and MET_VENDEDOR='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ABERTAS' then Where:=Where+' and MET_STATUS='+QuotedStr('A');
          if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MET_STATUS='+QuotedStr('B');
          if ComboBox3.Text='DATA CADASTRO' then Where:=Where+' and MET_DTCADASTRO between :datainicial and :datafinal';
          if ComboBox3.Text='DATA BAIXA' then Where:=Where+' and MET_DTBAIXA between :datainicial and :datafinal';

          Application.CreateForm(TFormMetasFast, FormMetasFast);
          FormMetasFast.QY02.Close;
          FormMetasFast.QY02.SQL.Clear;
          FormMetasFast.QY02.SQL.Add(
            'select MET_BONUSPORC, MET_BONUSVALOR, MET_CODIGO, MET_COMISSAO, MET_COMISSAOTIPO, MET_DTBAIXA, MET_DTCADASTRO, '+
            'MET_DTFIM, MET_DTINICIO, MET_METAATINGIDA, MET_METAVALOR, MET_SALARIOBASE, MET_STATUS, MET_TOTALCOMISSAO, '+
            'MET_TOTALLIQUIDADO, MET_TOTALVENDAS, MET_VENDEDOR, VEN_NOME from METAS '+
            'left join VENDEDORES on MET_VENDEDOR=VEN_CODIGO '+
            'where 1=1 '+Where+' order by VEN_NOME, MET_CODIGO desc');
          FormMetasFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMetasFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMetasFast.QY02.Open;
          FormMetasFast.QY02a.Open;
          FormMetasFast.QY02b.Open;
          FormMetasFast.frxReport2.Variables['TITULO']:=QuotedStr('Metas por vendedor analítico');
          FormMetasFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormMetasFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormMetasFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormMetasFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormMetasFast.frxReport2.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormMetasFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormMetasFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormMetasFast.frxReport2.Variables['MET_STATUS']:=QuotedStr(ComboBox1.Text);
          FormMetasFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormMetasFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormMetasFast.frxReport2.ShowReport;
          FormMetasFast.Free;
          FormMetasFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormMetasRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit3,Edit4,nil);
end;

end.
