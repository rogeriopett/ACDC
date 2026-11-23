unit PagarBaixaColetiva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn, Mask, Grids, DBGrids, pngimage,
  ExtCtrls, DBCtrls, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormPagarBaixaColetiva = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label7: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Edit5: TEdit;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Label2: TLabel;
    Label13: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    DSPagar: TDataSource;
    DSTotalPagar: TDataSource;
    QYPagar: TFDQuery;
    TRPagar: TFDTransaction;
    QYTotalPagar: TFDQuery;
    TRTotalPagar: TFDTransaction;
    QYPagarPAG_CODIGO: TIntegerField;
    QYPagarPAG_CONTA: TIntegerField;
    QYPagarPAG_DESCRICAO: TStringField;
    QYPagarPAG_DESPESA: TIntegerField;
    QYPagarPAG_DIASATRASO: TIntegerField;
    QYPagarPAG_DIASPRAZO: TIntegerField;
    QYPagarPAG_DTATUALIZACAO: TDateField;
    QYPagarPAG_DTCADASTRO: TDateField;
    QYPagarPAG_DTEMISSAO: TDateField;
    QYPagarPAG_DTJUROSAPOS: TDateField;
    QYPagarPAG_DTPAGAMENTO: TDateField;
    QYPagarPAG_DTVENCIMENTO: TDateField;
    QYPagarPAG_FORNECEDOR: TIntegerField;
    QYPagarPAG_JUROSPAGO: TFMTBCDField;
    QYPagarPAG_MULTAPAGO: TFMTBCDField;
    QYPagarPAG_NUMDOCTO: TStringField;
    QYPagarPAG_OBSERVACOES: TMemoField;
    QYPagarPAG_PORCJUROS: TFMTBCDField;
    QYPagarPAG_STATUS: TStringField;
    QYPagarPAG_TIPODOCTO: TStringField;
    QYPagarPAG_USUARIO: TStringField;
    QYPagarPAG_VALOR: TFMTBCDField;
    QYPagarPAG_VALORJUROS: TFMTBCDField;
    QYPagarPAG_VALORMULTA: TFMTBCDField;
    QYPagarPAG_VALORPAGO: TFMTBCDField;
    QYPagarFOR_CODIGO: TIntegerField;
    QYPagarFOR_NOME: TStringField;
    QYTotalPagarVALOR: TFMTBCDField;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarBaixaColetiva: TFormPagarBaixaColetiva;

implementation
uses DataMod, Funcoes1, InputDate;

{$R *.dfm}

procedure TFormPagarBaixaColetiva.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPagarBaixaColetiva.BitBtn3Click(Sender: TObject);
var I: Integer;
  Pagamento: String;
begin
  if DBGrid1.SelectedRows.Count>0 then
  begin
    Pagamento:='';
    Application.CreateForm(TFormInputDate, FormInputDate);
    FormInputDate.Caption:='Informe a Data de Pagamento';
    FormInputDate.Label1.Caption:='Data Pagamento:';
    FormInputDate.ShowModal;
    if InputDate.Retorno then
    Pagamento:=FormInputDate.MaskEdit1.Text;
    FormInputDate.Free;
    FormInputDate:=nil;

    if Pagamento='' then
    Exit;

    if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' conta(s) selecionada(s).'+#13#10+'Deseja realmente efetuar a baixa delas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      for I:=0 to DBGrid1.SelectedRows.Count-1 do
      begin
        DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
        //localiza e efetua a baixa da conta.
        DM.TBPagar.Close;
        DM.TBPagar.ParamByName('codigo').AsInteger:=DBGrid1.DataSource.DataSet.Fields[0].AsInteger; //codigo.
        DM.TBPagar.Open;
        DM.TBPagar.Edit;
        DM.TBPagarPAG_VALORPAGO.Value:=DM.TBPagarPAG_VALOR.Value;
        DM.TBPagarPAG_DTPAGAMENTO.Value:=StrToDate(Pagamento); //DM.ServerDate;
        DM.TBPagarPAG_JUROSPAGO.Value:=0;
        DM.TBPagarPAG_MULTAPAGO.Value:=0;
        DM.TBPagarPAG_DESCPORC.Value:=0;
        DM.TBPagarPAG_DESCVALOR.Value:=0;
        DM.TBPagarPAG_STATUS.Value:='B'; //baixada.
        DM.TBPagarPAG_BAIXADOPOR.Value:=DM.UsuarioLogin;
        DM.TBPagarPAG_TIPOBAIXA.Value:='T'; //total.
        DM.TBPagarPAG_NOVOCODIGO.Clear;
        DM.TBPagar.Post;

        //lança movimento no fluxo de caixa.
        DM.TBCaixa.Insert;
        DM.TBCaixaCAI_TIPODOCTO.Value:=DM.TBPagarPAG_TIPODOCTO.Value;
        DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM.TBPagarPAG_CODIGO.Value);
        DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
        DM.TBCaixaCAI_VALOR.Value:=DM.TBPagarPAG_VALORPAGO.Value;
        DM.TBCaixaCAI_ENTRADASAIDA.Value:='S';
        DM.TBCaixaCAI_DESCRICAO.Value:=DM.TBPagarPAG_DESCRICAO.Value; // 'LANCAMENTO AUTOM. CONTAS A PAGAR';
        DM.TBCaixaCAI_ORIGEM.Value:='CONTAS A PAGAR';
        DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
        DM.TBCaixaCAI_CONTA.Value:=DM.TBPagarPAG_CONTA.Value;
        DM.TBCaixaCAI_FORNECEDOR.Value:=DM.TBPagarPAG_FORNECEDOR.Value;
        DM.TBCaixaCAI_FORNECEDORNOME.Value:=DM.TBPagarFOR_NOME.Value;
        DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
      end;
      MessageDlg('Foram Baixadas(s) '+IntToStr(I)+' conta(s) a pagar.',mtInformation,[mbOk],0);
      Close;
    end;
  end else
  MessageDlg('Nenhuma conta selecionada.',mtError,[mbOk],0);
end;

procedure TFormPagarBaixaColetiva.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and PAG_CODIGO='+QuotedStr(Edit1.Text)+' order by PAG_CODIGO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR where PAG_STATUS=''A'' and PAG_CODIGO='+QuotedStr(Edit1.Text));
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPagarBaixaColetiva.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and FOR_NOME like '+QuotedStr(Edit2.Text+'%')+' order by FOR_NOME, PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and FOR_NOME like '+QuotedStr(Edit2.Text+'%'));
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPagarBaixaColetiva.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit; //nao faz pesquisa nula.
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and PAG_NUMDOCTO like '+QuotedStr(Edit3.Text+'%')+' order by PAG_NUMDOCTO, PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and PAG_NUMDOCTO like '+QuotedStr(Edit3.Text+'%'));
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPagarBaixaColetiva.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit; //nao faz pesquisa nula.
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and PAG_FORNECEDOR='+QuotedStr(Edit4.Text)+' order by FOR_NOME, PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and PAG_FORNECEDOR='+QuotedStr(Edit4.Text));
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPagarBaixaColetiva.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit; //nao faz pesquisa nula.
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and PAG_VALOR like '+QuotedStr(Edit5.Text+'%')+' order by PAG_VALOR, PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and PAG_VALOR like '+QuotedStr(Edit5.Text+'%'));
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPagarBaixaColetiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DBGrid1.Columns.SaveToFile(GetTempDir+'FormPagarBaixaColetiva.txt');
end;

procedure TFormPagarBaixaColetiva.FormCreate(Sender: TObject);
begin
  if FileExists(GetTempDir+'FormPagarBaixaColetiva.txt') then
  DBGrid1.Columns.LoadFromFile(GetTempDir+'FormPagarBaixaColetiva.txt');
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormPagarBaixaColetiva.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPagarBaixaColetiva.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Contas a Pagar',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO FORNECEDOR' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='FORNECEDOR' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VALOR' then Edit5.SetFocus;
end;

procedure TFormPagarBaixaColetiva.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormPagarBaixaColetiva.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    if (MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ') then Exit;
    try
      StrToDate(MaskEdit1.Text,FS);
      StrToDate(MaskEdit2.Text,FS);
      except on exception do
      begin
        MessageDlg('Data inválida.',mtError,[mbOk],0);
        MaskEdit1.Clear;
        MaskEdit2.Clear;
        MaskEdit1.SetFocus;
        Exit;
      end;
    end; //try.
    QYPagar.Active:=False;
    QYPagar.SQL.Clear;
    QYTotalPagar.Active:=False;
    QYTotalPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_STATUS=''A'' and PAG_DTVENCIMENTO between :datainicial and :datafinal order by PAG_DTVENCIMENTO');
    QYTotalPagar.SQL.Add('select sum(PAG_VALOR) as VALOR from PAGAR where PAG_STATUS=''A'' and PAG_DTVENCIMENTO between :datainicial and :datafinal');
    QYPagar.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYPagar.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYTotalPagar.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYTotalPagar.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYPagar.Active:=True;
    QYTotalPagar.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormPagarBaixaColetiva.PngBitBtn1Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=True;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

procedure TFormPagarBaixaColetiva.PngBitBtn2Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=not DBGrid1.SelectedRows.CurrentRowSelected;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

end.
