unit ProdutosEstoqueMinMax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ImgList, PngImageList, Buttons, PngSpeedButton,
  StdCtrls, Mask, DB, DBClient, Grids, DBGrids, DBCtrls, DBSBtn, DateUtils,
  System.ImageList, System.UITypes;

type
  TFormProdutosEstoqueMinMax = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton1: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Analisar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Label9: TLabel;
    Label10: TLabel;
    DBGrid1: TDBGrid;
    TBMinMax: TClientDataSet;
    DSMinMax: TDataSource;
    PngSpeedButton2: TPngSpeedButton;
    AplicarValoresMinimoEMaximo1: TMenuItem;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    dbSBtnEdit: TDBSpeedButton;
    Bevel1: TBevel;
    Label11: TLabel;
    CheckBox1: TCheckBox;
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Ajuda2Click(Sender: TObject);
    procedure Analisar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AplicarValoresMinimoEMaximo1Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosEstoqueMinMax: TFormProdutosEstoqueMinMax;

implementation
uses DataMod, DataModSearch, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosEstoqueMinMax.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosEstoqueMinMax.Analisar1Click(Sender: TObject);
var Where: String;
  Quantidade, MediaMensal: Extended;
  QtdeMeses, EstoqueMin, EstoqueMax: Integer;
begin
  AbortIf((Edit1.Text='') or (Edit2.Text=''),'Informe a porcentagem de ajuste do estoque mínimo e máximo.');

  QtdeMeses:=MonthsBetween(StrToDate(MaskEdit1.Text),StrToDate(MaskEdit2.Text));
  AbortIf(QtdeMeses<=0,'O período informado deve conter mais de 1 (um) mês.');

  if MessageDlg('Esta ação pode levar algum tempo. Deseja continuar?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    TBMinMax.EmptyDataSet;
    TBMinMax.Open;
    TBMinMax.DisableControls;
    Application.ProcessMessages;
    DM.QYAux.SQL.Clear;
    Where:='';
    if Edit4.Text<>'' then Where:=' and PRO_FAMILIA='+QuotedStr(Edit3.Text);
    if Edit6.Text<>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit5.Text);

    //cálculo pelas vendas.
    if not CheckBox1.Checked then
    DM.QYAux.SQL.Add(
      'select VEI_PRODUTO, PRO_NOME, sum(VEI_QUANTIDADE) as QTDE from VENDASITENS '+
      'left join VENDAS on VEI_VENDA=VED_CODIGO '+
      'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
      'where (VED_DTEMISSAO between :datainicial and :datafinal) and PRO_STATUS=''A'' and VED_STATUS=''F'' '+Where+' '+
      'group by VEI_PRODUTO, PRO_NOME order by PRO_NOME'
    ) else

    //cálculo pela movimentação do estoque.
    DM.QYAux.SQL.Add(
      'select EST_PRODUTO as VEI_PRODUTO, PRO_NOME, sum(EST_QUANTIDADE) as QTDE from ESTOQUE '+
      'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO '+
      'where (EST_DATA between :datainicial and :datafinal) and PRO_STATUS=''A'' and EST_TRANSACAO=''S'' '+Where+' '+
      'group by EST_PRODUTO, PRO_NOME order by PRO_NOME'
    );

    DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text);
    DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text);
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      Quantidade:=DM.QYAux.FieldByName('QTDE').AsFloat;
      MediaMensal:=Quantidade / QtdeMeses;
      EstoqueMin:=Round(MediaMensal - ((MediaMensal/100) * StrToInt(Edit1.Text))); if EstoqueMin<=0 then EstoqueMin:=1;
      EstoqueMax:=Round(((MediaMensal/100) * StrToInt(Edit2.Text)) + MediaMensal); if EstoqueMax<=0 then EstoqueMax:=1;
      TBMinMax.Insert;
      TBMinMax.FieldByName('Produto').AsInteger:=DM.QYAux.FieldByName('VEI_PRODUTO').AsInteger;
      TBMinMax.FieldByName('Nome').AsString:=DM.QYAux.FieldByName('PRO_NOME').AsString;
      TBMinMax.FieldByName('Quantidade').AsFloat:=Quantidade;
      TBMinMax.FieldByName('Meses').AsInteger:=QtdeMeses;
      TBMinMax.FieldByName('MediaMensal').AsFloat:=Decimais(MediaMensal,4);
      TBMinMax.FieldByName('EstoqueMin').AsInteger:=EstoqueMin;
      TBMinMax.FieldByName('EstoqueMax').AsInteger:=EstoqueMax;
      TBMinMax.Post;
      DM.QYAux.Next;
    end;
    TBMinMax.EnableControls;
    DM.QYAux.Close;
    Screen.Cursor:=crDefault;
    MessageDlg('Análise concluída.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutosEstoqueMinMax.AplicarValoresMinimoEMaximo1Click(
  Sender: TObject);
begin
  AbortIf(TBMinMax.IsEmpty,'Não há nenhum registro para ser aplicado as alterações.');

  if MessageDlg('Aplicar os valores?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    TBMinMax.First;
    TBMinMax.DisableControls;
    while not TBMinMax.Eof do
    begin
      if TBMinMax.FieldByName('Produto').AsString<>'' then
      begin
        DM.QYAux2.SQL.Clear;
        DM.QYAux2.SQL.Add('update PRODUTOS set PRO_ESTOQUEMIN=:min, PRO_ESTOQUEMAX=:max where PRO_CODIGO=:codigo');
        DM.QYAux2.ParamByName('codigo').AsInteger:=TBMinMax.FieldByName('Produto').AsInteger;
        DM.QYAux2.ParamByName('min').AsInteger:=TBMinMax.FieldByName('EstoqueMin').AsInteger;
        DM.QYAux2.ParamByName('max').AsInteger:=TBMinMax.FieldByName('EstoqueMax').AsInteger;
        DM.QYAux2.ExecSQL;
      end;
      TBMinMax.Next;
    end;
    TBMinMax.EnableControls;
    Screen.Cursor:=crDefault;
    MessageDlg('Valores ajustados com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutosEstoqueMinMax.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosEstoqueMinMax.Edit3Exit(Sender: TObject);
begin
  LocFamiliasExit(Edit3,Edit4);
end;

procedure TFormProdutosEstoqueMinMax.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormProdutosEstoqueMinMax.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosEstoqueMinMax.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosEstoqueMinMax.Edit5Exit(Sender: TObject);
begin
  LocGruposExit(Edit5,Edit6);
end;

procedure TFormProdutosEstoqueMinMax.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormProdutosEstoqueMinMax.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosEstoqueMinMax.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosEstoqueMinMax.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
end;

procedure TFormProdutosEstoqueMinMax.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosEstoqueMinMax.SpeedButton2Click(Sender: TObject);
begin
  LocFamiliasBotao(Edit3,Edit4);
end;

procedure TFormProdutosEstoqueMinMax.SpeedButton3Click(Sender: TObject);
begin
  LocGruposBotao(Edit5,Edit6);
end;

end.
