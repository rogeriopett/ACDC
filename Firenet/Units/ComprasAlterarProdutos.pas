unit ComprasAlterarProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, PngSpeedButton;

type
  TFormComprasAlterarProdutos = class(TForm)
    Label5: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Label1: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Label2: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    Label3: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    Label4: TLabel;
    PngSpeedButton5: TPngSpeedButton;
    Label6: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    Label7: TLabel;
    PngSpeedButton7: TPngSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    ComboBox1: TComboBox;
    CheckBox15: TCheckBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure Edit12Enter(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit14Enter(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit17KeyPress(Sender: TObject; var Key: Char);
    procedure Edit18KeyPress(Sender: TObject; var Key: Char);
    procedure Edit19KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit21KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9Enter(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasAlterarProdutos: TFormComprasAlterarProdutos;

implementation
uses DataMod, DataMod2, DataModSearch, NaturezasLoc, Funcoes1, FuncoesFirenet;

{$R *.dfm}

procedure TFormComprasAlterarProdutos.BitBtn1Click(Sender: TObject);
var Validacoes: Boolean;
begin
  Validacoes:=True;

  AbortIf(
    (not CheckBox1.Checked) and (not CheckBox8.Checked) and
    (not CheckBox2.Checked) and (not CheckBox9.Checked) and
    (not CheckBox3.Checked) and (not CheckBox10.Checked) and
    (not CheckBox4.Checked) and (not CheckBox11.Checked) and
    (not CheckBox5.Checked) and (not CheckBox12.Checked) and
    (not CheckBox6.Checked) and (not CheckBox13.Checked) and
    (not CheckBox7.Checked) and (not CheckBox14.Checked),
    'Você deve selecionar os campos que quer atualizar.'
  );

  //checa se foi informado valores nos campos que foram marcados pra atualizar.
  if (CheckBox1.Checked) and (Edit2.Text='') then Validacoes:=False; //cst icms
  if (CheckBox2.Checked) and (Edit4.Text='') then Validacoes:=False; //cst ipi
  if (CheckBox3.Checked) and (Edit6.Text='') then Validacoes:=False; //cst pis
  if (CheckBox4.Checked) and (Edit8.Text='') then Validacoes:=False; //cst cofins
  if (CheckBox5.Checked) and (Edit11.Text='') then Validacoes:=False; //class fiscal.
  if (CheckBox6.Checked) and (Edit21.Text='') then Validacoes:=False; //cest
  if (CheckBox7.Checked) and (ComboBox1.Text='') then Validacoes:=False; //compoe base.
  if (CheckBox8.Checked) and (Edit16.Text='') then Validacoes:=False;
  if (CheckBox9.Checked) and (Edit17.Text='') then Validacoes:=False;
  if (CheckBox10.Checked) and (Edit18.Text='') then Validacoes:=False;
  if (CheckBox11.Checked) and (Edit19.Text='') then Validacoes:=False;
  if (CheckBox12.Checked) and (Edit20.Text='') then Validacoes:=False;
  if (CheckBox13.Checked) and (Edit13.Text='') then Validacoes:=False;
  if (CheckBox14.Checked) and (Edit15.Text='') then Validacoes:=False;
  AbortIf(Validacoes=False,'Você selecionou campos mas não informou um valor para eles. Confira os campos informados.');

  if MessageDlg('Confirma a atualização dos campos informados?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBCompras.DisableControls;
    DM.TBComprasItens.First;
    DM.TBComprasItens.DisableControls;
    while not DM.TBComprasItens.Eof do
    begin
      DM.TBComprasItens.Edit;
      if CheckBox1.Checked then DM.TBComprasItensCOI_CSTICMS.Value:=StrToInt(Edit1.Text);
      if CheckBox2.Checked then DM.TBComprasItensCOI_CSTIPI.Value:=StrToInt(Edit3.Text);
      if CheckBox3.Checked then DM.TBComprasItensCOI_CSTPIS.Value:=StrToInt(Edit5.Text);
      if CheckBox4.Checked then DM.TBComprasItensCOI_CSTCOFINS.Value:=StrToInt(Edit7.Text);
      if CheckBox5.Checked then
      begin
        DM.TBComprasItensCOI_CLASSFISCAL.Value:=Edit9.Text;
        DM.TBComprasItensCOI_EXCECAO.Value:=StrToInt(Edit10.Text);
      end;
      if CheckBox6.Checked then DM.TBComprasItensCOI_CEST.Value:=Edit21.Text;
      if CheckBox7.Checked then DM.TBComprasItensCOI_COMPOEBASEICMS.Value:=ComboBox1.Text;
      if CheckBox8.Checked then DM.TBComprasItensCOI_ALIQICMS.Value:=StrToFloat(Edit16.Text);
      if CheckBox9.Checked then DM.TBComprasItensCOI_ALIQICMSST.Value:=StrToFloat(Edit17.Text);
      if CheckBox10.Checked then DM.TBComprasItensCOI_ALIQIPI.Value:=StrToFloat(Edit18.Text);
      if CheckBox11.Checked then DM.TBComprasItensCOI_ALIQPIS.Value:=StrToFloat(Edit19.Text);
      if CheckBox12.Checked then DM.TBComprasItensCOI_ALIQCOFINS.Value:=StrToFloat(Edit20.Text);
      if CheckBox13.Checked then DM.TBComprasItensCOI_CFOP.Value:=StrToInt(Edit12.Text);
      if CheckBox14.Checked then DM.TBComprasItensCOI_UNIDADE.Value:=Edit14.Text;
      DM.TBComprasItens.Post; //no after post tem o locate pra ficar no mesmo local.


      //checa se deve ser atualizado no cadastro de produtos também.
      if CheckBox15.Checked then
      begin
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBComprasItensCOI_PRODUTO.Value;
        DM.TBProdutos.Open;
        DM.TBProdutos.Edit;
        if CheckBox1.Checked then DM.TBProdutosPRO_CSTICMS.Value:=StrToInt(Edit1.Text);
        if CheckBox2.Checked then DM.TBProdutosPRO_CSTIPI.Value:=StrToInt(Edit3.Text);
        if CheckBox3.Checked then DM.TBProdutosPRO_CSTPIS.Value:=StrToInt(Edit5.Text);
        if CheckBox4.Checked then DM.TBProdutosPRO_CSTCOFINS.Value:=StrToInt(Edit7.Text);
        if CheckBox5.Checked then
        begin
          DM.TBProdutosPRO_CLASSFISCAL.Value:=Edit9.Text;
          DM.TBProdutosPRO_EXCECAO.Value:=StrToInt(Edit10.Text);
        end;
        if CheckBox6.Checked then DM.TBProdutosPRO_CEST.Value:=Edit21.Text;
        if CheckBox7.Checked then DM.TBProdutosPRO_COMPOEBASEICMS.Value:=ComboBox1.Text;
        if CheckBox8.Checked then DM.TBProdutosPRO_ALIQICMS.Value:=StrToFloat(Edit16.Text);
        if CheckBox9.Checked then DM.TBProdutosPRO_ALIQICMSST.Value:=StrToFloat(Edit17.Text);
        if CheckBox10.Checked then DM.TBProdutosPRO_ALIQIPI.Value:=StrToFloat(Edit18.Text);
        if CheckBox11.Checked then DM.TBProdutosPRO_ALIQPIS.Value:=StrToFloat(Edit19.Text);
        if CheckBox12.Checked then DM.TBProdutosPRO_ALIQCOFINS.Value:=StrToFloat(Edit20.Text);
        if CheckBox13.Checked then DM.TBProdutosPRO_CFOP.Value:=StrToInt(Edit12.Text);
        if CheckBox14.Checked then DM.TBProdutosPRO_UNIDADE.Value:=Edit14.Text;
        DM.TBProdutos.Post;
      end;

      DM.TBComprasItens.Next;
    end;

    DM.TBComprasItens.EnableControls;
    DM.TBCompras.EnableControls;
    MessageDlg('Alterações efetuadas.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormComprasAlterarProdutos.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComprasAlterarProdutos.CheckBox10Click(Sender: TObject);
begin
  Edit18.Enabled:=CheckBox10.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox11Click(Sender: TObject);
begin
  Edit19.Enabled:=CheckBox11.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox12Click(Sender: TObject);
begin
  Edit20.Enabled:=CheckBox1.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox13Click(Sender: TObject);
begin
  Edit12.Enabled:=CheckBox13.Checked;
  PngSpeedButton6.Enabled:=CheckBox13.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox14Click(Sender: TObject);
begin
  Edit14.Enabled:=CheckBox14.Checked;
  PngSpeedButton7.Enabled:=CheckBox14.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox1Click(Sender: TObject);
begin
  Edit1.Enabled:=CheckBox1.Checked;
  PngSpeedButton1.Enabled:=CheckBox1.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox2Click(Sender: TObject);
begin
  Edit3.Enabled:=CheckBox2.Checked;
  PngSpeedButton2.Enabled:=CheckBox2.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox3Click(Sender: TObject);
begin
  Edit5.Enabled:=CheckBox3.Checked;
  PngSpeedButton3.Enabled:=CheckBox3.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox4Click(Sender: TObject);
begin
  Edit7.Enabled:=CheckBox4.Checked;
  PngSpeedButton4.Enabled:=CheckBox4.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox5Click(Sender: TObject);
begin
  Edit9.Enabled:=CheckBox5.Checked;
  PngSpeedButton5.Enabled:=CheckBox5.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox6Click(Sender: TObject);
begin
  Edit21.Enabled:=CheckBox6.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox7Click(Sender: TObject);
begin
  ComboBox1.Enabled:=CheckBox7.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox8Click(Sender: TObject);
begin
  Edit16.Enabled:=CheckBox8.Checked;
end;

procedure TFormComprasAlterarProdutos.CheckBox9Click(Sender: TObject);
begin
  Edit17.Enabled:=CheckBox9.Checked;
end;

procedure TFormComprasAlterarProdutos.Edit12Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormComprasAlterarProdutos.Edit12Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit12.Clear;
    Edit13.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      Edit12.Text:=IntToStr(DMS.QYNaturezasNAT_CODIGO.Value);
      Edit13.Text:=DMS.QYNaturezasNAT_DESCRICAO.Value;
    end else
    begin
      Edit12.Clear;
      Edit13.Clear;
      MessageDlg('CFOP não encontrada.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormComprasAlterarProdutos.Edit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton6.Click;
end;

procedure TFormComprasAlterarProdutos.Edit14Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormComprasAlterarProdutos.Edit14Exit(Sender: TObject);
begin
  LocUnidadesExit(Edit14,Edit15);
end;

procedure TFormComprasAlterarProdutos.Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton7.Click;
end;

procedure TFormComprasAlterarProdutos.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormComprasAlterarProdutos.Edit1Exit(Sender: TObject);
begin
  LocIcmsExit(Edit1,Edit2,nil);
end;

procedure TFormComprasAlterarProdutos.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormComprasAlterarProdutos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit21KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormComprasAlterarProdutos.Edit3Exit(Sender: TObject);
begin
  LocIpiExit(Edit3,Edit4);
end;

procedure TFormComprasAlterarProdutos.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormComprasAlterarProdutos.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormComprasAlterarProdutos.Edit5Exit(Sender: TObject);
begin
  LocPiscofinsExit(Edit5,Edit6);
end;

procedure TFormComprasAlterarProdutos.Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormComprasAlterarProdutos.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormComprasAlterarProdutos.Edit7Exit(Sender: TObject);
begin
  LocPiscofinsExit(Edit7,Edit8);
end;

procedure TFormComprasAlterarProdutos.Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormComprasAlterarProdutos.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.Edit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormComprasAlterarProdutos.Edit9Exit(Sender: TObject);
begin
  LocClassFiscalExit(Edit9,Edit11,Edit10);
end;

procedure TFormComprasAlterarProdutos.Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton5.Click;
end;

procedure TFormComprasAlterarProdutos.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormComprasAlterarProdutos.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
end;

procedure TFormComprasAlterarProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormComprasAlterarProdutos.PngSpeedButton1Click(Sender: TObject);
begin
  LocIcmsBotao(Edit1,Edit2,nil);
end;

procedure TFormComprasAlterarProdutos.PngSpeedButton2Click(Sender: TObject);
begin
  LocIpiBotao(Edit3,Edit4);
end;

procedure TFormComprasAlterarProdutos.PngSpeedButton3Click(Sender: TObject);
begin
  LocPiscofinsBotao(Edit5,Edit6);
end;

procedure TFormComprasAlterarProdutos.PngSpeedButton4Click(Sender: TObject);
begin
  LocPiscofinsBotao(Edit7,Edit8);
end;

procedure TFormComprasAlterarProdutos.PngSpeedButton5Click(Sender: TObject);
begin
  LocClassFiscalBotao(Edit9,Edit11,Edit10);
end;

procedure TFormComprasAlterarProdutos.PngSpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    Edit12.Text:=IntToStr(FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value);
    Edit13.Text:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormComprasAlterarProdutos.PngSpeedButton7Click(Sender: TObject);
begin
  LocUnidadesBotao(Edit14,Edit15);
end;

end.
