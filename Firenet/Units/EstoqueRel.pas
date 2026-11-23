unit EstoqueRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, ExtCtrls, PngBitBtn, PngSpeedButton,
  System.UITypes;

type
  TFormEstoqueRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    SpeedButton1: TPngSpeedButton;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    BitBtn3: TPngBitBtn;
    Label6: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Label7: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Edit6: TEdit;
    Edit7: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoqueRel: TFormEstoqueRel;

implementation
uses DataMod, Funcoes1, ProdutosLoc, DataModSearch, EstoqueFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormEstoqueRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox1Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormEstoqueRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEstoqueRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocFamiliasBotao(Edit4,Edit5);
end;

procedure TFormEstoqueRel.PngSpeedButton2Click(Sender: TObject);
begin
  LocGruposBotao(Edit6,Edit7);
end;

procedure TFormEstoqueRel.Edit1Change(Sender: TObject);
begin
  if Edit1.Text='' then
  Edit2.Text:='';
end;

procedure TFormEstoqueRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormEstoqueRel.Edit1Exit(Sender: TObject);
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
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin
      Edit1.Text:=IntToStr(DMS.QYProdutosPRO_CODIGO.Value);
      Edit2.Text:=DMS.QYProdutosPRO_NOME.Value;
    end else
    begin
      Edit1.Clear;
      Edit2.Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormEstoqueRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormEstoqueRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEstoqueRel.Edit4Change(Sender: TObject);
begin
  if Edit4.Text='' then
  Edit5.Text:='';
end;

procedure TFormEstoqueRel.Edit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormEstoqueRel.Edit4Exit(Sender: TObject);
begin
  LocFamiliasExit(Edit4,Edit5);
end;

procedure TFormEstoqueRel.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormEstoqueRel.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEstoqueRel.Edit6Change(Sender: TObject);
begin
  if Edit6.Text='' then
  Edit7.Text:='';
end;

procedure TFormEstoqueRel.Edit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormEstoqueRel.Edit6Exit(Sender: TObject);
begin
  LocGruposExit(Edit6,Edit7);
end;

procedure TFormEstoqueRel.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormEstoqueRel.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEstoqueRel.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if ProdutosLoc.CodigoNoFornecedor then
    begin
      Edit1.Text:=IntToStr(FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value);
      Edit2.Text:=FormProdutosLoc.QYProdutosCodigosPRO_NOME.Value;
    end else
    begin
      Edit1.Text:=IntToStr(FormProdutosLoc.QYProdutosPRO_CODIGO.Value);
      Edit2.Text:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormEstoqueRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEstoqueRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Movimentação por número do documento'}
          AbortIf(Trim(Edit3.Text)='','Informe o numero do documento.');

          Application.CreateForm(TFormEstoqueFast, FormEstoqueFast);
          FormEstoqueFast.QY01.Close;
          FormEstoqueFast.QY01.SQL.Clear;
          FormEstoqueFast.QY01.SQL.Add(
            'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
            'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
            'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO '+
            'where EST_DATA between :datainicial and :datafinal and EST_NUMDOCTO containing :numdocto order by EST_NUMDOCTO, EST_CODIGO');
          FormEstoqueFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormEstoqueFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormEstoqueFast.QY01.ParamByName('numdocto').AsString:=Edit3.Text;
          FormEstoqueFast.QY01.Open;
          FormEstoqueFast.frxReport1.Variables['TITULO']:=QuotedStr('Movimentação estoque.');
          FormEstoqueFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEstoqueFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEstoqueFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEstoqueFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEstoqueFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormEstoqueFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormEstoqueFast.frxReport1.Variables['NUMDOCTO']:=QuotedStr(Edit3.Text);
          FormEstoqueFast.frxReport1.ShowReport;
          FormEstoqueFast.Free;
          FormEstoqueFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Movimentação no período por produto'}
          if Edit2.Text<>'' then Where:=' and EST_PRODUTO='+Edit1.Text;

          Application.CreateForm(TFormEstoqueFast, FormEstoqueFast);
          FormEstoqueFast.QY02.Close;
          FormEstoqueFast.QY02.SQL.Clear;
          FormEstoqueFast.QY02.SQL.Add(
            'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
            'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
            'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO '+
            'where EST_DATA between :datainicial and :datafinal '+Where+' order by PRO_NOME, EST_DATA, EST_CODIGO');
          FormEstoqueFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormEstoqueFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormEstoqueFast.QY02.Open;
          FormEstoqueFast.frxReport2.Variables['TITULO']:=QuotedStr('Movimentação estoque.');
          FormEstoqueFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEstoqueFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEstoqueFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEstoqueFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEstoqueFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormEstoqueFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormEstoqueFast.frxReport2.Variables['PRO_CODIGO']:=QuotedStr(Edit1.Text);
          FormEstoqueFast.frxReport2.Variables['PRO_NOME']:=QuotedStr(Edit2.Text);
          FormEstoqueFast.frxReport2.ShowReport;
          FormEstoqueFast.Free;
          FormEstoqueFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Movimentação no período por família'}
          if Edit5.Text<>'' then Where:=' and PRO_FAMILIA='+Edit4.Text;
          Application.CreateForm(TFormEstoqueFast, FormEstoqueFast);
          FormEstoqueFast.QY03.Close;
          FormEstoqueFast.QY03.SQL.Clear;
          FormEstoqueFast.QY03.SQL.Add(
            'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
            'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, FAM_DESCRICAO, PRO_FAMILIA, PRO_NOME from ESTOQUE '+
            'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'where EST_DATA between :datainicial and :datafinal '+Where+' order by FAM_DESCRICAO, PRO_NOME, EST_DATA, EST_CODIGO');
          FormEstoqueFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormEstoqueFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormEstoqueFast.QY03.Open;
          FormEstoqueFast.frxReport3.Variables['TITULO']:=QuotedStr('Movimentação estoque.');
          FormEstoqueFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEstoqueFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEstoqueFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEstoqueFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEstoqueFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormEstoqueFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormEstoqueFast.frxReport3.Variables['FAM_CODIGO']:=QuotedStr(Edit4.Text);
          FormEstoqueFast.frxReport3.Variables['FAM_DESCRICAO']:=QuotedStr(Edit5.Text);
          FormEstoqueFast.frxReport3.ShowReport;
          FormEstoqueFast.Free;
          FormEstoqueFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Movimentação no período por grupo'}
          if Edit7.Text<>'' then Where:=' and PRO_GRUPO='+Edit6.Text;

          Application.CreateForm(TFormEstoqueFast, FormEstoqueFast);
          FormEstoqueFast.QY04.Close;
          FormEstoqueFast.QY04.SQL.Clear;
          FormEstoqueFast.QY04.SQL.Add(
            'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
            'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, GRU_DESCRICAO, PRO_GRUPO, PRO_NOME from ESTOQUE '+
            'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where EST_DATA between :datainicial and :datafinal '+Where+' order by GRU_DESCRICAO, PRO_NOME, EST_DATA, EST_CODIGO');
          FormEstoqueFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormEstoqueFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormEstoqueFast.QY04.Open;
          FormEstoqueFast.frxReport4.Variables['TITULO']:=QuotedStr('Movimentação estoque.');
          FormEstoqueFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormEstoqueFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormEstoqueFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormEstoqueFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormEstoqueFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormEstoqueFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormEstoqueFast.frxReport4.Variables['GRU_CODIGO']:=QuotedStr(Edit6.Text);
          FormEstoqueFast.frxReport4.Variables['GRU_DESCRICAO']:=QuotedStr(Edit7.Text);
          FormEstoqueFast.frxReport4.ShowReport;
          FormEstoqueFast.Free;
          FormEstoqueFast:=nil;
          {$ENDREGION}
        end;
  end; //case.
end;

procedure TFormEstoqueRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit3.Enabled:=True;
          Edit4.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit6.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    01: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;
          Edit4.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit6.Enabled:=False; PngSpeedButton2.Enabled:=False;
        end;
    02: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False;
          Edit4.Enabled:=True;  PngSpeedButton1.Enabled:=True;
          Edit6.Enabled:=False; PngSpeedButton2.Enabled:=False;
        end;
    03: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False;
          Edit4.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit6.Enabled:=True;  PngSpeedButton2.Enabled:=True;
        end;
  end;
end;

procedure TFormEstoqueRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
