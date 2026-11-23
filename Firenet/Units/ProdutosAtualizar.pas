unit ProdutosAtualizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, PngSpeedButton, Vcl.Mask,
  Vcl.CheckLst;

type
  TFormProdutosAtualizar = class(TForm)
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
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label15: TLabel;
    PngSpeedButton8: TPngSpeedButton;
    Edit22: TEdit;
    Edit23: TEdit;
    Label16: TLabel;
    PngSpeedButton9: TPngSpeedButton;
    Edit24: TEdit;
    Edit25: TEdit;
    Label17: TLabel;
    PngSpeedButton10: TPngSpeedButton;
    Edit26: TEdit;
    Edit27: TEdit;
    Label18: TLabel;
    PngSpeedButton11: TPngSpeedButton;
    Edit28: TEdit;
    Edit29: TEdit;
    Label19: TLabel;
    ComboBox2: TComboBox;
    Label20: TLabel;
    Label21: TLabel;
    PngSpeedButton12: TPngSpeedButton;
    Edit31: TEdit;
    Label22: TLabel;
    Edit32: TEdit;
    MaskEdit1: TMaskEdit;
    Label23: TLabel;
    ComboBox3: TComboBox;
    Label24: TLabel;
    ComboBox4: TComboBox;
    Label25: TLabel;
    Edit30: TEdit;
    PngSpeedButton13: TPngSpeedButton;
    CheckListBox1: TCheckListBox;
    Label26: TLabel;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit9Enter(Sender: TObject);
    procedure Edit12Enter(Sender: TObject);
    procedure Edit14Enter(Sender: TObject);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit17KeyPress(Sender: TObject; var Key: Char);
    procedure Edit18KeyPress(Sender: TObject; var Key: Char);
    procedure Edit19KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit21KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure Edit22Enter(Sender: TObject);
    procedure Edit24Enter(Sender: TObject);
    procedure Edit26Enter(Sender: TObject);
    procedure Edit28Enter(Sender: TObject);
    procedure Edit28KeyPress(Sender: TObject; var Key: Char);
    procedure Edit26KeyPress(Sender: TObject; var Key: Char);
    procedure Edit24KeyPress(Sender: TObject; var Key: Char);
    procedure Edit22KeyPress(Sender: TObject; var Key: Char);
    procedure Edit22Exit(Sender: TObject);
    procedure Edit24Exit(Sender: TObject);
    procedure Edit26Exit(Sender: TObject);
    procedure Edit28Exit(Sender: TObject);
    procedure Edit22KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit24KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit26KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit28KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure PngSpeedButton9Click(Sender: TObject);
    procedure PngSpeedButton10Click(Sender: TObject);
    procedure PngSpeedButton11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton12Click(Sender: TObject);
    procedure Edit32KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton13Click(Sender: TObject);
    procedure Edit30KeyPress(Sender: TObject; var Key: Char);
    procedure CheckListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosAtualizar: TFormProdutosAtualizar;

implementation
uses DataMod, DataMod2, DataModSearch, NaturezasLoc,
  ProdutosAtualizarGrid, Funcoes1, FuncoesFirenet, BeneficiosLoc;
{$R *.dfm}

procedure TFormProdutosAtualizar.BitBtn1Click(Sender: TObject);
var Validacoes: Boolean;
  Campos, Where: String;
begin
  Validacoes:=True;

  AbortIf(
    (not CheckListBox1.Checked[00]) and
    (not CheckListBox1.Checked[01]) and
    (not CheckListBox1.Checked[02]) and
    (not CheckListBox1.Checked[03]) and
    (not CheckListBox1.Checked[04]) and
    (not CheckListBox1.Checked[05]) and
    (not CheckListBox1.Checked[06]) and
    (not CheckListBox1.Checked[07]) and
    (not CheckListBox1.Checked[08]) and
    (not CheckListBox1.Checked[09]) and
    (not CheckListBox1.Checked[10]) and
    (not CheckListBox1.Checked[11]) and
    (not CheckListBox1.Checked[12]) and
    (not CheckListBox1.Checked[13]) and
    (not CheckListBox1.Checked[14]) and
    (not CheckListBox1.Checked[15]) and
    (not CheckListBox1.Checked[16]) and
    (not CheckListBox1.Checked[17]) and
    (not CheckListBox1.Checked[18]) and
    (not CheckListBox1.Checked[19]),
    'Você deve selecionar os campos que quer atualizar.'
  );

  //checa se foi informado valores nos campos que foram marcados pra atualizar.
  if (CheckListBox1.Checked[00]) and (Edit8.Text='') then Validacoes:=False; //aliq cofins
  if (CheckListBox1.Checked[01]) and (Edit2.Text='') then Validacoes:=False; //aliq icms
  if (CheckListBox1.Checked[02]) and (Edit17.Text='') then Validacoes:=False; //aliq icmsst
  if (CheckListBox1.Checked[03]) and (Edit18.Text='') then Validacoes:=False; //aliq ipi
  if (CheckListBox1.Checked[04]) and (Edit32.Text='') then Validacoes:=False; //aliq iss
  if (CheckListBox1.Checked[05]) and (Edit19.Text='') then Validacoes:=False; //aliq pis
  if (CheckListBox1.Checked[06]) and (Edit30.Text='') then Validacoes:=False; //beneficio fiscal
  if (CheckListBox1.Checked[07]) and (Edit21.Text='') then Validacoes:=False; //cest
  if (CheckListBox1.Checked[08]) and (Edit13.Text='') then Validacoes:=False; //cfop
  if (CheckListBox1.Checked[09]) and (Edit11.Text='') then Validacoes:=False; //class fiscal
  if (CheckListBox1.Checked[10]) and (ComboBox1.Text='') then Validacoes:=False; //compoe bc
  if (CheckListBox1.Checked[11]) and (ComboBox3.Text='') then Validacoes:=False; //compoe base st
  if (CheckListBox1.Checked[12]) and (Edit8.Text='') then Validacoes:=False; //cst cofins
  if (CheckListBox1.Checked[13]) and (Edit2.Text='') then Validacoes:=False; //cst icms
  if (CheckListBox1.Checked[14]) and (Edit4.Text='') then Validacoes:=False; //cst ipi
  if (CheckListBox1.Checked[15]) and (Edit6.Text='') then Validacoes:=False; //cst pis
  if (CheckListBox1.Checked[16]) and (Edit31.Text='') then Validacoes:=False; //tipo servico
  if (CheckListBox1.Checked[17]) and (ComboBox4.Text='') then Validacoes:=False; //tributo
  if (CheckListBox1.Checked[18]) and (Edit15.Text='') then Validacoes:=False; //unidade.
  AbortIf(Validacoes=False,'Você selecionou campos mas não informou um valor para eles. Confira os campos informados.');

  Where:='';
  if Edit23.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit22.Text);
  if Edit25.Text<>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit24.Text);
  if Edit27.Text<>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit26.Text);
  if Edit29.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit28.Text);
  if ComboBox2.Text<>'TODOS' then Where:=Where+' and PRO_TIPOITEM='+QuotedStr(ComboBox2.Text);

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select PRO_CODIGO, PRO_NOME from PRODUTOS where 1=1 '+Where+' order by PRO_NOME');
  DM.QYAux.Open;

  Application.CreateForm(TFormProdutosAtualizarGrid, FormProdutosAtualizarGrid);
  FormProdutosAtualizarGrid.DBGrid1.DataSource:=DM.DSAux;
  if FormProdutosAtualizarGrid.ShowModal=mrYes then
  begin
    Campos:='';
    if (CheckListBox1.Checked[00]) then Campos:=Campos+' ,PRO_ALIQCOFINS='+V2P(Edit20.Text); //aliq cofins
    if (CheckListBox1.Checked[01]) then Campos:=Campos+' ,PRO_ALIQICMS='+V2P(Edit16.Text); //aliq icms
    if (CheckListBox1.Checked[02]) then Campos:=Campos+' ,PRO_ALIQICMSST='+V2P(Edit17.Text); //aliq icmsst
    if (CheckListBox1.Checked[03]) then Campos:=Campos+' ,PRO_ALIQIPI='+V2P(Edit18.Text); //aliq ipi
    if (CheckListBox1.Checked[04]) then Campos:=Campos+' ,PRO_ALIQISS='+QuotedStr(Edit32.Text); //aliq iss
    if (CheckListBox1.Checked[05]) then Campos:=Campos+' ,PRO_ALIQPIS='+V2P(Edit19.Text);//aliq pis
    if (CheckListBox1.Checked[06]) then Campos:=Campos+' ,PRO_BENEFICIO='+QuotedStr(Edit30.Text); //beneficio fiscal
    if (CheckListBox1.Checked[07]) then Campos:=Campos+' ,PRO_CEST='+QuotedStr(Edit21.Text); //cest
    if (CheckListBox1.Checked[08]) then Campos:=Campos+' ,PRO_CFOP='+Edit12.Text; //cfop
    if (CheckListBox1.Checked[09]) then
    begin
      Campos:=Campos+' ,PRO_CLASSFISCAL='+QuotedStr(Edit9.Text);
      Campos:=Campos+' ,PRO_EXCECAO='+Edit10.Text;
    end; //class fiscal
    if (CheckListBox1.Checked[10]) then Campos:=Campos+' ,PRO_COMPOEBASEICMS='+QuotedStr(ComboBox1.Text); //compoe bc
    if (CheckListBox1.Checked[11]) then Campos:=Campos+' ,PRO_COMPOEBASEICMSST='+QuotedStr(ComboBox3.Text); //compoe base st
    if (CheckListBox1.Checked[12]) then Campos:=Campos+' ,PRO_CSTCOFINS='+Edit7.Text; //cst cofins
    if (CheckListBox1.Checked[13]) then Campos:=Campos+' ,PRO_CSTICMS='+Edit1.Text; //cst icms
    if (CheckListBox1.Checked[14]) then Campos:=Campos+' ,PRO_CSTIPI='+Edit3.Text; //cst ipi
    if (CheckListBox1.Checked[15]) then Campos:=Campos+' ,PRO_CSTPIS='+Edit5.Text; //cst pis
    if (CheckListBox1.Checked[16]) then Campos:=Campos+' ,PRO_TIPOISS='+QuotedStr(MaskEdit1.Text); //tipo servico
    if (CheckListBox1.Checked[17]) then Campos:=Campos+' ,PRO_TRIBUTO='+QuotedStr(ComboBox4.Text); //tributo
    if (CheckListBox1.Checked[18]) then Campos:=Campos+' ,PRO_UNIDADE='+QuotedStr(Edit14.Text); //unidade.

    if Campos<>'' then
    Delete(Campos,1,2);

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOS set '+Campos+' where 1=1 '+Where);
    DM.QYAux.ExecSQL;

    MessageDlg('Alterações efetuadas.',mtInformation,[mbOk],0);
  end;
  FormProdutosAtualizarGrid.Free;
  FormProdutosAtualizarGrid:=nil;
end;

procedure TFormProdutosAtualizar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosAtualizar.CheckListBox1Click(Sender: TObject);
begin
  Edit20.Enabled          :=CheckListBox1.Checked[00]; //aliq cofins
  Edit16.Enabled          :=CheckListBox1.Checked[01]; //aliq icms
  Edit17.Enabled          :=CheckListBox1.Checked[02]; //aliq icms st
  Edit18.Enabled          :=CheckListBox1.Checked[03]; //aliq ipi
  Edit32.Enabled          :=CheckListBox1.Checked[04]; //aliq iss
  Edit19.Enabled          :=CheckListBox1.Checked[05]; //aliq pis
  PngSpeedButton13.Enabled:=CheckListBox1.Checked[06]; //beneficio fiscal
  Edit21.Enabled          :=CheckListBox1.Checked[07]; //cest
  Edit12.Enabled          :=CheckListBox1.Checked[08]; //cfop
  PngSpeedButton6.Enabled :=CheckListBox1.Checked[08]; //cfop
  Edit9.Enabled           :=CheckListBox1.Checked[09]; //class. fiscal
  PngSpeedButton5.Enabled :=CheckListBox1.Checked[09]; //class. fiscal
  ComboBox1.Enabled       :=CheckListBox1.Checked[10]; //compoe bc
  ComboBox3.Enabled       :=CheckListBox1.Checked[11]; //compoe bcst
  Edit7.Enabled           :=CheckListBox1.Checked[12]; //cst cofins
  PngSpeedButton4.Enabled :=CheckListBox1.Checked[12]; //cst cofins
  Edit1.Enabled           :=CheckListBox1.Checked[13]; //cst icms
  PngSpeedButton1.Enabled :=CheckListBox1.Checked[13]; //cst icms
  Edit3.Enabled           :=CheckListBox1.Checked[14]; //cst ipi
  PngSpeedButton2.Enabled :=CheckListBox1.Checked[14]; //cst ipi
  Edit5.Enabled           :=CheckListBox1.Checked[15]; //cst pis
  PngSpeedButton3.Enabled :=CheckListBox1.Checked[15]; //cst pis
  MaskEdit1.Enabled       :=CheckListBox1.Checked[16]; //tipo servico
  PngSpeedButton12.Enabled:=CheckListBox1.Checked[16]; //tipo servico
  ComboBox4.Enabled       :=CheckListBox1.Checked[17]; //tributo
  PngSpeedButton7.Enabled :=CheckListBox1.Checked[17]; //tributo
  Edit14.Enabled          :=CheckListBox1.Checked[18]; //unidade
  PngSpeedButton7.Enabled :=CheckListBox1.Checked[18]; //unidade
end;

procedure TFormProdutosAtualizar.Edit12Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit12Exit(Sender: TObject);
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

procedure TFormProdutosAtualizar.Edit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton6.Click;
end;

procedure TFormProdutosAtualizar.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit14Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit14Exit(Sender: TObject);
begin
  LocUnidadesExit(Edit14,Edit15);
end;

procedure TFormProdutosAtualizar.Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton7.Click;
end;

procedure TFormProdutosAtualizar.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  //if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit1Exit(Sender: TObject);
begin
  LocIcmsExit(Edit1,Edit2,nil);
end;

procedure TFormProdutosAtualizar.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormProdutosAtualizar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit21KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit22Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit22Exit(Sender: TObject);
begin
  LocFamiliasExit(Edit22,Edit23);
end;

procedure TFormProdutosAtualizar.Edit22KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton8.Click;
end;

procedure TFormProdutosAtualizar.Edit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit24Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit24Exit(Sender: TObject);
begin
  LocGruposExit(Edit24,Edit25);
end;

procedure TFormProdutosAtualizar.Edit24KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton9.Click;
end;

procedure TFormProdutosAtualizar.Edit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit26Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit26Exit(Sender: TObject);
begin
  LocMarcasExit(Edit26,Edit27);
end;

procedure TFormProdutosAtualizar.Edit26KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton10.Click;
end;

procedure TFormProdutosAtualizar.Edit26KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit28Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit28Exit(Sender: TObject);
begin
  LocFornecedoresExit(Edit28,Edit29,nil);
end;

procedure TFormProdutosAtualizar.Edit28KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton11.Click;
end;

procedure TFormProdutosAtualizar.Edit28KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then Edit30.Clear;
end;

procedure TFormProdutosAtualizar.Edit32KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit3Exit(Sender: TObject);
begin
  LocIpiExit(Edit3,Edit4);
end;

procedure TFormProdutosAtualizar.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormProdutosAtualizar.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit5Exit(Sender: TObject);
begin
  LocPiscofinsExit(Edit5,Edit6);
end;

procedure TFormProdutosAtualizar.Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormProdutosAtualizar.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit7Exit(Sender: TObject);
begin
  LocPiscofinsExit(Edit7,Edit8);
end;

procedure TFormProdutosAtualizar.Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormProdutosAtualizar.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.Edit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosAtualizar.Edit9Exit(Sender: TObject);
begin
  LocClassFiscalExit(Edit9,Edit11,Edit10);
end;

procedure TFormProdutosAtualizar.Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton5.Click;
end;

procedure TFormProdutosAtualizar.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormProdutosAtualizar.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
end;

procedure TFormProdutosAtualizar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosAtualizar.MaskEdit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TMaskEdit).Text;
end;

procedure TFormProdutosAtualizar.MaskEdit1Exit(Sender: TObject);
begin
  LocIssExit(MaskEdit1,Edit31,nil);
end;

procedure TFormProdutosAtualizar.MaskEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton12.Click;
end;

procedure TFormProdutosAtualizar.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosAtualizar.PngSpeedButton10Click(Sender: TObject);
begin
  LocMarcasBotao(Edit26,Edit27);
end;

procedure TFormProdutosAtualizar.PngSpeedButton11Click(Sender: TObject);
begin
  LocFornecedoresBotao(Edit28,Edit29,nil);
end;

procedure TFormProdutosAtualizar.PngSpeedButton12Click(Sender: TObject);
begin
  LocIssBotao(MaskEdit1,Edit31,nil);
end;

procedure TFormProdutosAtualizar.PngSpeedButton13Click(Sender: TObject);
begin
  Application.CreateForm(TFormBeneficiosLoc, FormBeneficiosLoc);
  FormBeneficiosLoc.ShowModal;
  if BeneficiosLoc.Procurar then
  begin
    Edit30.Text:=FormBeneficiosLoc.QYBeneficiosBEN_CODIGO.Value;
  end;
  FormBeneficiosLoc.Free;
  FormBeneficiosLoc:=nil;
end;

procedure TFormProdutosAtualizar.PngSpeedButton1Click(Sender: TObject);
begin
  LocIcmsBotao(Edit1,Edit2,nil);
end;

procedure TFormProdutosAtualizar.PngSpeedButton2Click(Sender: TObject);
begin
  LocIpiBotao(Edit3,Edit4);
end;

procedure TFormProdutosAtualizar.PngSpeedButton3Click(Sender: TObject);
begin
  LocPiscofinsBotao(Edit5,Edit6);
end;

procedure TFormProdutosAtualizar.PngSpeedButton4Click(Sender: TObject);
begin
  LocPiscofinsBotao(Edit7,Edit8);
end;

procedure TFormProdutosAtualizar.PngSpeedButton5Click(Sender: TObject);
begin
  LocClassFiscalBotao(Edit9,Edit11,Edit10);
end;

procedure TFormProdutosAtualizar.PngSpeedButton6Click(Sender: TObject);
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

procedure TFormProdutosAtualizar.PngSpeedButton7Click(Sender: TObject);
begin
  LocUnidadesBotao(Edit14,Edit15);
end;

procedure TFormProdutosAtualizar.PngSpeedButton8Click(Sender: TObject);
begin
  LocFamiliasBotao(Edit22,Edit23);
end;

procedure TFormProdutosAtualizar.PngSpeedButton9Click(Sender: TObject);
begin
  LocGruposBotao(Edit24,Edit25);
end;

end.
