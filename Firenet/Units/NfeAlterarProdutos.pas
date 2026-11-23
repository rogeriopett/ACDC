unit NfeAlterarProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, PngSpeedButton,
  Vcl.CheckLst;

type
  TFormNfeAlterarProdutos = class(TForm)
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
    Label15: TLabel;
    Edit22: TEdit;
    Label16: TLabel;
    Edit23: TEdit;
    Label17: TLabel;
    Edit24: TEdit;
    CheckListBox1: TCheckListBox;
    Label18: TLabel;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
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
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure Edit12Enter(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14Enter(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit17KeyPress(Sender: TObject; var Key: Char);
    procedure Edit18KeyPress(Sender: TObject; var Key: Char);
    procedure Edit19KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit21KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckListBox1Click(Sender: TObject);
    procedure Edit22KeyPress(Sender: TObject; var Key: Char);
    procedure Edit23KeyPress(Sender: TObject; var Key: Char);
    procedure Edit24KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeAlterarProdutos: TFormNfeAlterarProdutos;

implementation
uses DataMod, DataMod2, DataModSearch, NaturezasLoc, FuncoesFirenet, Funcoes1;

{$R *.dfm}

procedure TFormNfeAlterarProdutos.BitBtn1Click(Sender: TObject);
var Validacoes: Boolean;
  SQL: String;
  CodigoItem: Integer;
begin
  Validacoes:=True;
  SQL:='';

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
    (not CheckListBox1.Checked[16]),
    'Você deve selecionar os campos que quer atualizar.'
  );

  //checa se foi informado valores nos campos que foram marcados pra atualizar.
  if (CheckListBox1.Checked[00]) and (Edit24.Text='') then Validacoes:=False; //aliq cbs
  if (CheckListBox1.Checked[01]) and (Edit20.Text='') then Validacoes:=False; //aliq cofins
  if (CheckListBox1.Checked[02]) and (Edit23.Text='') then Validacoes:=False; //aliq ibs mun
  if (CheckListBox1.Checked[03]) and (Edit22.Text='') then Validacoes:=False; //aliq ibs uf
  if (CheckListBox1.Checked[04]) and (Edit16.Text='') then Validacoes:=False; //aliq icms
  if (CheckListBox1.Checked[05]) and (Edit17.Text='') then Validacoes:=False; //aliq icms st
  if (CheckListBox1.Checked[06]) and (Edit18.Text='') then Validacoes:=False; //aliq ipi
  if (CheckListBox1.Checked[07]) and (Edit19.Text='') then Validacoes:=False; //aliq pis
  if (CheckListBox1.Checked[08]) and (Edit21.Text='') then Validacoes:=False; //cest
  if (CheckListBox1.Checked[09]) and (Edit12.Text='') then Validacoes:=False; //cfop
  if (CheckListBox1.Checked[10]) and (Edit9.Text='') then Validacoes:=False; //class fiscal
  if (CheckListBox1.Checked[11]) and (ComboBox1.Text='') then Validacoes:=False; //compoe base
  if (CheckListBox1.Checked[12]) and (Edit7.Text='') then Validacoes:=False; //cst cofins
  if (CheckListBox1.Checked[13]) and (Edit1.Text='') then Validacoes:=False; //cst icms
  if (CheckListBox1.Checked[14]) and (Edit3.Text='') then Validacoes:=False; //cst ipi
  if (CheckListBox1.Checked[15]) and (Edit5.Text='') then Validacoes:=False; //cst pis
  if (CheckListBox1.Checked[16]) and (Edit14.Text='') then Validacoes:=False; //unidade.

  AbortIf(Validacoes=False,'Você selecionou campos mas não informou um valor para eles. Confira os campos informados.');

  if MessageDlg('Confirma a atualização dos campos informados?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfe.DisableControls;
    DM.TBNfeItens.First;
    DM.TBNfeItens.DisableControls;
    while not DM.TBNfeItens.Eof do
    begin
      SQL:='update NFEITENS set ';
      if CheckListBox1.Checked[00] then SQL:=SQL+'NFI_ALIQCBS=:NFI_ALIQCBS, ';
      if CheckListBox1.Checked[01] then SQL:=SQL+'NFI_ALIQCOFINS=:NFI_ALIQCOFINS, ';
      if CheckListBox1.Checked[02] then SQL:=SQL+'NFI_ALIQIBSMUN=:NFI_ALIQIBSMUN, ';
      if CheckListBox1.Checked[03] then SQL:=SQL+'NFI_ALIQIBSUF=:NFI_ALIQIBSUF, ';
      if CheckListBox1.Checked[04] then SQL:=SQL+'NFI_ALIQICMS=:NFI_ALIQICMS, ';
      if CheckListBox1.Checked[05] then SQL:=SQL+'NFI_ALIQICMSST=:NFI_ALIQICMSST, ';
      if CheckListBox1.Checked[06] then SQL:=SQL+'NFI_ALIQIPI=:NFI_ALIQIPI, ';
      if CheckListBox1.Checked[07] then SQL:=SQL+'NFI_ALIQPIS=:NFI_ALIQPIS, ';
      if CheckListBox1.Checked[08] then SQL:=SQL+'NFI_CEST=:NFI_CEST,';
      if CheckListBox1.Checked[09] then SQL:=SQL+'NFI_CFOP=:NFI_CFOP, ';
      if CheckListBox1.Checked[10] then SQL:=SQL+'NFI_CLASSFISCAL=:NFI_CLASSFISCAL, NFI_EXCECAO=:NFI_EXCECAO, ';
      if CheckListBox1.Checked[11] then SQL:=SQL+'NFI_COMPOEBASEICMS=:NFI_COMPOEBASEICMS, ';
      if CheckListBox1.Checked[12] then SQL:=SQL+'NFI_CSTCOFINS=:NFI_CSTCOFINS, ';
      if CheckListBox1.Checked[13] then SQL:=SQL+'NFI_CSTICMS=:NFI_CSTICMS, ';
      if CheckListBox1.Checked[14] then SQL:=SQL+'NFI_CSTIPI=:NFI_CSTIPI, ';
      if CheckListBox1.Checked[15] then SQL:=SQL+'NFI_CSTPIS=:NFI_CSTPIS, ';
      if CheckListBox1.Checked[16] then SQL:=SQL+'NFI_UNIDADE=:NFI_UNIDADE, ';

      if SQL.EndsWith(', ') then
      Delete(SQL, Length(SQL)-1, 2);  // remove ", "

      SQL:=SQL+' where NFI_CODIGO=:codigo';

      //Executa o SQL passando os parametros.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add(SQL);
      if CheckListBox1.Checked[00] then DM.QYAux.ParamByName('NFI_ALIQCBS').AsExtended:=StrToFloat(Edit24.Text);
      if CheckListBox1.Checked[01] then DM.QYAux.ParamByName('NFI_ALIQCOFINS').AsExtended:=StrToFloat(Edit20.Text);
      if CheckListBox1.Checked[02] then DM.QYAux.ParamByName('NFI_ALIQIBSMUN').AsExtended:=StrToFloat(Edit23.Text);
      if CheckListBox1.Checked[03] then DM.QYAux.ParamByName('NFI_ALIQIBSUF').AsExtended:=StrToFloat(Edit22.Text);
      if CheckListBox1.Checked[04] then DM.QYAux.ParamByName('NFI_ALIQICMS').AsExtended:=StrToFloat(Edit16.Text);
      if CheckListBox1.Checked[05] then DM.QYAux.ParamByName('NFI_ALIQICMSST').AsExtended:=StrToFloat(Edit17.Text);
      if CheckListBox1.Checked[06] then DM.QYAux.ParamByName('NFI_ALIQIPI').AsExtended:=StrToFloat(Edit18.Text);
      if CheckListBox1.Checked[07] then DM.QYAux.ParamByName('NFI_ALIQPIS').AsInteger:=StrToInt(Edit19.Text);
      if CheckListBox1.Checked[08] then DM.QYAux.ParamByName('NFI_CEST').AsString:=Edit21.Text;
      if CheckListBox1.Checked[09] then DM.QYAux.ParamByName('NFI_CFOP').AsInteger:=StrToInt(Edit12.Text);
      if CheckListBox1.Checked[10] then
      begin
        DM.QYAux.ParamByName('NFI_CLASSFISCAL').AsString:=Edit9.Text;
        DM.QYAux.ParamByName('NFI_EXCECAO').AsInteger:=StrToInt(Edit10.Text);
      end;
      if CheckListBox1.Checked[11] then DM.QYAux.ParamByName('NFI_COMPOEBASEICMS').AsString:=ComboBox1.Text;
      if CheckListBox1.Checked[12] then DM.QYAux.ParamByName('NFI_CSTCOFINS').AsInteger:=StrToInt(Edit7.Text);
      if CheckListBox1.Checked[13] then DM.QYAux.ParamByName('NFI_CSTICMS').AsInteger:=StrToInt(Edit1.Text);
      if CheckListBox1.Checked[14] then DM.QYAux.ParamByName('NFI_CSTIPI').AsInteger:=StrToInt(Edit3.Text);
      if CheckListBox1.Checked[15] then DM.QYAux.ParamByName('NFI_CSTPIS').AsInteger:=StrToInt(Edit5.Text);
      if CheckListBox1.Checked[16] then DM.QYAux.ParamByName('NFI_UNIDADE').AsString:=Edit14.Text;

      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeItensNFI_CODIGO.Value;
      DM.QYAux.ExecSQL;

      {$REGION 'checa se deve ser atualizado no cadastro de produtos também.'}
      if CheckBox15.Checked then
      begin
        SQL:='update PRODUTOS set ';
        if CheckListBox1.Checked[00] then SQL:=SQL+'';
        if CheckListBox1.Checked[01] then SQL:=SQL+'PRO_ALIQCOFINS=:PRO_ALIQCOFINS, ';
        if CheckListBox1.Checked[02] then SQL:=SQL+'';
        if CheckListBox1.Checked[03] then SQL:=SQL+'';
        if CheckListBox1.Checked[04] then SQL:=SQL+'PRO_ALIQICMS=:PRO_ALIQICMS, ';
        if CheckListBox1.Checked[05] then SQL:=SQL+'PRO_ALIQICMSST=:PRO_ALIQICMSST, ';
        if CheckListBox1.Checked[06] then SQL:=SQL+'PRO_ALIQIPI=:PRO_ALIQIPI, ';
        if CheckListBox1.Checked[07] then SQL:=SQL+'PRO_ALIQPIS=:PRO_ALIQPIS, ';
        if CheckListBox1.Checked[08] then SQL:=SQL+'PRO_CEST=:PRO_CEST, ';
        if CheckListBox1.Checked[09] then SQL:=SQL+'PRO_CFOP=:PRO_CFOP, ';
        if CheckListBox1.Checked[10] then SQL:=SQL+'PRO_CLASSFISCAL=:PRO_CLASSFISCAL, PRO_EXCECAO=:PRO_EXCECAO, ';
        if CheckListBox1.Checked[11] then SQL:=SQL+'PRO_COMPOEBASEICMS=:PRO_COMPOEBASEICMS, ';
        if CheckListBox1.Checked[12] then SQL:=SQL+'PRO_CSTCOFINS=:PRO_CSTCOFINS, ';
        if CheckListBox1.Checked[13] then SQL:=SQL+'PRO_CSTICMS=:PRO_CSTICMS, ';
        if CheckListBox1.Checked[14] then SQL:=SQL+'PRO_CSTIPI=:PRO_CSTIPI, ';
        if CheckListBox1.Checked[15] then SQL:=SQL+'PRO_CSTPIS=:PRO_CSTPIS, ';
        if CheckListBox1.Checked[16] then SQL:=SQL+'PRO_UNIDADE=:PRO_UNIDADE, ';

        if SQL.EndsWith(', ') then
        Delete(SQL, Length(SQL)-1, 2);  // remove ", "

        SQL:=SQL+' where PRO_CODIGO=:codigo';

        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add(SQL);
        //if CheckListBox1.Checked[00] then
        if CheckListBox1.Checked[01] then DM.QYAux.ParamByName('PRO_ALIQCOFINS').AsExtended:=StrToFloat(Edit20.Text);
        //if CheckListBox1.Checked[02] then
        //if CheckListBox1.Checked[03] then
        if CheckListBox1.Checked[04] then DM.QYAux.ParamByName('PRO_ALIQICMS').AsExtended:=StrToFloat(Edit16.Text);
        if CheckListBox1.Checked[05] then DM.QYAux.ParamByName('PRO_ALIQICMSST').AsExtended:=StrToFloat(Edit17.Text);
        if CheckListBox1.Checked[06] then DM.QYAux.ParamByName('PRO_ALIQIPI').AsExtended:=StrToFloat(Edit18.Text);
        if CheckListBox1.Checked[07] then DM.QYAux.ParamByName('PRO_ALIQPIS').AsExtended:=StrToFloat(Edit19.Text);
        if CheckListBox1.Checked[08] then DM.QYAux.ParamByName('PRO_CEST').AsString:=Edit21.Text;
        if CheckListBox1.Checked[09] then DM.QYAux.ParamByName('PRO_CFOP').AsInteger:=StrToInt(Edit12.Text);
        if CheckListBox1.Checked[10] then
        begin
          DM.QYAux.ParamByName('PRO_CLASSFISCAL').AsString:=Edit9.Text;
          DM.QYAux.ParamByName('PRO_EXCECAO').AsInteger:=StrToInt(Edit10.Text);
        end;
        if CheckListBox1.Checked[11] then DM.QYAux.ParamByName('PRO_COMPOEBASEICMS').AsString:=ComboBox1.Text;
        if CheckListBox1.Checked[12] then DM.QYAux.ParamByName('PRO_CSTCOFINS').AsInteger:=StrToInt(Edit7.Text);
        if CheckListBox1.Checked[13] then DM.QYAux.ParamByName('PRO_CSTICMS').AsInteger:=StrToInt(Edit1.Text);
        if CheckListBox1.Checked[14] then DM.QYAux.ParamByName('PRO_CSTIPI').AsInteger:=StrToInt(Edit3.Text);
        if CheckListBox1.Checked[15] then DM.QYAux.ParamByName('PRO_CSTPIS').AsInteger:=StrToInt(Edit5.Text);
        if CheckListBox1.Checked[16] then DM.QYAux.ParamByName('PRO_UNIDADE').AsString:=Edit14.Text;

        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeItensNFI_PRODUTO.Value;
        DM.QYAux.ExecSQL;
      end;
      {$ENDREGION}

      CodigoItem:=DM.TBNfeItensNFI_CODIGO.Value;
      DM.TBNfeItens.Close; //fecha e abre pra pegar dados atualizados.
      DM.TBNfeItens.Open;
      DM.TBNfeItens.Locate('NFI_CODIGO',CodigoItem,[]);

      DM.TBNfeItens.Edit; //edita e salva pra recalcular os totais.
      DM.TBNfeItens.Post;
      DM.TBNfeItens.Locate('NFI_CODIGO',CodigoItem,[]);

      DM.TBNfeItens.Next;
    end;

    DM.TBNfeItens.EnableControls;
    DM.TBNfe.EnableControls;
    DM.TBNfeItens.Close;
    DM.TBNfeItens.Open;
    MessageDlg('Alterações efetuadas.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormNfeAlterarProdutos.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeAlterarProdutos.CheckListBox1Click(Sender: TObject);
begin
  Edit24.Enabled:=CheckListBox1.Checked[0]; //aliq cbs
  Edit20.Enabled:=CheckListBox1.Checked[1]; //aliq cofins
  Edit23.Enabled:=CheckListBox1.Checked[2]; //aliq ibs mun
  Edit22.Enabled:=CheckListBox1.Checked[3]; //aliq ibs uf
  Edit16.Enabled:=CheckListBox1.Checked[4]; //aliq icms
  Edit17.Enabled:=CheckListBox1.Checked[5]; //aliq icms st
  Edit18.Enabled:=CheckListBox1.Checked[6]; //aliq ipi
  Edit19.Enabled:=CheckListBox1.Checked[7]; //aliq pis
  Edit21.Enabled:=CheckListBox1.Checked[8]; //cest
  Edit12.Enabled:=CheckListBox1.Checked[9]; PngSpeedButton6.Enabled:=CheckListBox1.Checked[9]; //cfop
  Edit9.Enabled:=CheckListBox1.Checked[10]; PngSpeedButton5.Enabled:=CheckListBox1.Checked[10]; //class. fiscal
  ComboBox1.Enabled:=CheckListBox1.Checked[11]; //compoe bc
  Edit7.Enabled:=CheckListBox1.Checked[12]; PngSpeedButton4.Enabled:=CheckListBox1.Checked[12]; //cst cofins
  Edit1.Enabled:=CheckListBox1.Checked[13]; PngSpeedButton1.Enabled:=CheckListBox1.Checked[13]; //cst icms
  Edit3.Enabled:=CheckListBox1.Checked[14]; PngSpeedButton2.Enabled:=CheckListBox1.Checked[14]; //cst ipi
  Edit5.Enabled:=CheckListBox1.Checked[15]; PngSpeedButton3.Enabled:=CheckListBox1.Checked[15]; //cst pis
  Edit14.Enabled:=CheckListBox1.Checked[16]; PngSpeedButton7.Enabled:=CheckListBox1.Checked[16]; //unidade
end;

procedure TFormNfeAlterarProdutos.Edit12Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeAlterarProdutos.Edit12Exit(Sender: TObject);
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

procedure TFormNfeAlterarProdutos.Edit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton6.Click;
end;

procedure TFormNfeAlterarProdutos.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit14Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeAlterarProdutos.Edit14Exit(Sender: TObject);
begin
  LocUnidadesExit(Edit14,Edit15);
end;

procedure TFormNfeAlterarProdutos.Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton7.Click;
end;

procedure TFormNfeAlterarProdutos.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  //if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeAlterarProdutos.Edit1Exit(Sender: TObject);
begin
  LocIcmsExit(Edit1,Edit2,nil);
end;

procedure TFormNfeAlterarProdutos.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormNfeAlterarProdutos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit21KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit22KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit23KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit24KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeAlterarProdutos.Edit3Exit(Sender: TObject);
begin
  LocIpiExit(Edit3,Edit4);
end;

procedure TFormNfeAlterarProdutos.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormNfeAlterarProdutos.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeAlterarProdutos.Edit5Exit(Sender: TObject);
begin
  LocPiscofinsExit(Edit5,Edit6);
end;

procedure TFormNfeAlterarProdutos.Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormNfeAlterarProdutos.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeAlterarProdutos.Edit7Exit(Sender: TObject);
begin
  LocPiscofinsExit(Edit7,Edit8);
end;

procedure TFormNfeAlterarProdutos.Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormNfeAlterarProdutos.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.Edit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfeAlterarProdutos.Edit9Exit(Sender: TObject);
begin
  LocClassFiscalExit(Edit9,Edit11,Edit10);
end;

procedure TFormNfeAlterarProdutos.Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton5.Click;
end;

procedure TFormNfeAlterarProdutos.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormNfeAlterarProdutos.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
end;

procedure TFormNfeAlterarProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeAlterarProdutos.PngSpeedButton1Click(Sender: TObject);
begin
  LocIcmsBotao(Edit1,Edit2,nil);
end;

procedure TFormNfeAlterarProdutos.PngSpeedButton2Click(Sender: TObject);
begin
  LocIpiBotao(Edit3,Edit4);
end;

procedure TFormNfeAlterarProdutos.PngSpeedButton3Click(Sender: TObject);
begin
  LocPiscofinsBotao(Edit5,Edit6);
end;

procedure TFormNfeAlterarProdutos.PngSpeedButton4Click(Sender: TObject);
begin
  LocPiscofinsBotao(Edit7,Edit8);
end;

procedure TFormNfeAlterarProdutos.PngSpeedButton5Click(Sender: TObject);
begin
  LocClassFiscalBotao(Edit9,Edit11,Edit10);
end;

procedure TFormNfeAlterarProdutos.PngSpeedButton6Click(Sender: TObject);
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

procedure TFormNfeAlterarProdutos.PngSpeedButton7Click(Sender: TObject);
begin
  LocUnidadesBotao(Edit14,Edit15);
end;

end.
