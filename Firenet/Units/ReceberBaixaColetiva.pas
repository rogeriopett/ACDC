unit ReceberBaixaColetiva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn, Mask, Grids, DBGrids, pngimage,
  ExtCtrls, DBCtrls, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormReceberBaixaColetiva = class(TForm)
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
    DSReceber: TDataSource;
    DSTotalReceber: TDataSource;
    Label2: TLabel;
    Label13: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    QYReceber: TFDQuery;
    TRReceber: TFDTransaction;
    QYTotalReceber: TFDQuery;
    TRTotalReceber: TFDTransaction;
    QYReceberREE_ACRESCIMOPORC: TFMTBCDField;
    QYReceberREE_ACRESCIMOPORCPAGO: TFMTBCDField;
    QYReceberREE_ACRESCIMOVALOR: TFMTBCDField;
    QYReceberREE_ACRESCIMOVALORPAGO: TFMTBCDField;
    QYReceberREE_BAIXADOPOR: TStringField;
    QYReceberREE_BOLETO: TIntegerField;
    QYReceberREE_CLIENTE: TIntegerField;
    QYReceberREE_CODIGO: TIntegerField;
    QYReceberREE_CONTA: TIntegerField;
    QYReceberREE_DESCPORC: TFMTBCDField;
    QYReceberREE_DESCPORCVENCIMENTO: TFMTBCDField;
    QYReceberREE_DESCRICAO: TStringField;
    QYReceberREE_DESCVALOR: TFMTBCDField;
    QYReceberREE_DIASATRASO: TIntegerField;
    QYReceberREE_DIASPRAZO: TIntegerField;
    QYReceberREE_DTATUALIZACAO: TDateField;
    QYReceberREE_DTCADASTRO: TDateField;
    QYReceberREE_DTEMISSAO: TDateField;
    QYReceberREE_DTJUROSAPOS: TDateField;
    QYReceberREE_DTPAGAMENTO: TDateField;
    QYReceberREE_DTVENCIMENTO: TDateField;
    QYReceberREE_JUROSPAGO: TFMTBCDField;
    QYReceberREE_MULTAPAGO: TFMTBCDField;
    QYReceberREE_NOVOCODIGO: TIntegerField;
    QYReceberREE_NUMDOCTO: TStringField;
    QYReceberREE_OBSERVACOES: TMemoField;
    QYReceberREE_PARCELANUM: TIntegerField;
    QYReceberREE_PARCELAQTDE: TIntegerField;
    QYReceberREE_PORCJUROS: TFMTBCDField;
    QYReceberREE_RECEITA: TIntegerField;
    QYReceberREE_STATUS: TStringField;
    QYReceberREE_TIPOBAIXA: TStringField;
    QYReceberREE_TIPODOCTO: TStringField;
    QYReceberREE_USUARIO: TStringField;
    QYReceberREE_VALOR: TFMTBCDField;
    QYReceberREE_VALORACESSORIAS: TFMTBCDField;
    QYReceberREE_VALORJUROS: TFMTBCDField;
    QYReceberREE_VALORMULTA: TFMTBCDField;
    QYReceberREE_VALORORIGINAL: TFMTBCDField;
    QYReceberREE_VALORPAGO: TFMTBCDField;
    QYReceberREE_VALORSEMDESCONTO: TFMTBCDField;
    QYReceberREE_VENDA: TIntegerField;
    QYReceberREE_VENDEDOR: TIntegerField;
    QYReceberCLI_CODIGO: TIntegerField;
    QYReceberCLI_NOME: TStringField;
    QYTotalReceberVALOR: TFMTBCDField;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
  FormReceberBaixaColetiva: TFormReceberBaixaColetiva;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormReceberBaixaColetiva.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceberBaixaColetiva.BitBtn3Click(Sender: TObject);
var I: Integer;
begin
  if DBGrid1.SelectedRows.Count>0 then
  begin
    if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' conta(s) selecionada(s).'+#13#10+'Deseja realmente efetuar a baixa delas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      for I:=0 to DBGrid1.SelectedRows.Count-1 do
      begin
        DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
        //localiza e efetua a baixa da conta.
        DM.TBReceber.Close;
        DM.TBReceber.ParamByName('codigo').AsInteger:=DBGrid1.DataSource.DataSet.Fields[7].AsInteger; //codigo. //manter a ordernacao dos campos. REE_CODIGO=campo numero 7.
        DM.TBReceber.Open;
        DM.TBReceber.Edit;
        DM.TBReceberREE_VALORPAGO.Value:=DM.TBReceberREE_VALOR.Value+DM.TBReceberREE_VALORACESSORIAS.Value;
        DM.TBReceberREE_DTPAGAMENTO.Value:=DM.ServerDate;
        DM.TBReceberREE_JUROSPAGO.Value:=0;
        DM.TBReceberREE_MULTAPAGO.Value:=0;
        DM.TBReceberREE_ACRESCIMOPORC.Value:=0;
        DM.TBReceberREE_ACRESCIMOVALOR.Value:=0;
        DM.TBReceberREE_DESCPORC.Value:=0;
        DM.TBReceberREE_DESCVALOR.Value:=0;
        DM.TBReceberREE_STATUS.Value:='B'; //baixada.
        DM.TBReceberREE_BAIXADOPOR.Value:=DM.UsuarioLogin;
        DM.TBReceberREE_TIPOBAIXA.Value:='T'; //total.
        DM.TBReceberREE_NOVOCODIGO.Clear;
        DM.TBReceber.Post;

        //lanca movimento no fluxo de caixa.
        DM.TBCaixa.Insert;
        DM.TBCaixaCAI_CLIENTE.Value:=DM.TBReceberREE_CLIENTE.Value;
        DM.TBCaixaCAI_CLIENTENOME.Value:=DM.TBReceberCLI_NOME.Value;
        DM.TBCaixaCAI_CONTA.Value:=DM.TBReceberREE_CONTA.Value;
        DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
        DM.TBCaixaCAI_DESCRICAO.Value:=DM.TBReceberREE_DESCRICAO.Value;
        DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
        DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM.TBReceberREE_CODIGO.Value);
        DM.TBCaixaCAI_ORIGEM.Value:='CONTAS A RECEBER';
        DM.TBCaixaCAI_TIPODOCTO.Value:=DM.TBReceberREE_TIPODOCTO.Value;
        DM.TBCaixaCAI_VALOR.Value:=DM.TBReceberREE_VALORPAGO.Value;
        DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
        DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
      end;
      MessageDlg('Foram Baixadas(s) '+IntToStr(I)+' conta(s) a receber.',mtInformation,[mbOk],0);
      Close;
    end;
  end else
  MessageDlg('Nenhuma conta selecionada.',mtError,[mbOk],0);
end;

procedure TFormReceberBaixaColetiva.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_STATUS=''A'' and REE_CODIGO='+QuotedStr(Edit1.Text)+' order by REE_CODIGO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_STATUS=''A'' and REE_CODIGO='+QuotedStr(Edit1.Text));
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormReceberBaixaColetiva.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit; //nao faz pesquisa nula.
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_STATUS=''A'' and CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' order by CLI_NOME, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_STATUS=''A'' and CLI_NOME like '+QuotedStr(Edit2.Text+'%'));
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormReceberBaixaColetiva.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit; //nao faz pesquisa nula.
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_STATUS=''A'' and REE_NUMDOCTO like '+QuotedStr(Edit3.Text+'%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_STATUS=''A'' and REE_NUMDOCTO like '+QuotedStr(Edit3.Text+'%'));
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormReceberBaixaColetiva.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_STATUS=''A'' and REE_CLIENTE='+QuotedStr(Edit4.Text)+' order by REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_STATUS=''A'' and REE_CLIENTE='+QuotedStr(Edit4.Text));
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormReceberBaixaColetiva.Edit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit; //nao faz pesquisa nula.
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_STATUS=''A'' and REE_VALOR like '+QuotedStr(Edit5.Text+'%')+' order by REE_VALOR, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_STATUS=''A'' and REE_VALOR like '+QuotedStr(Edit5.Text+'%'));
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormReceberBaixaColetiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DBGrid1.Columns.SaveToFile(GetTempDir+'FormReceberBaixaColetiva.txt');
end;

procedure TFormReceberBaixaColetiva.FormCreate(Sender: TObject);
begin
  if FileExists(GetTempDir+'FormReceberBaixaColetiva.txt') then
  DBGrid1.Columns.LoadFromFile(GetTempDir+'FormReceberBaixaColetiva.txt');
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormReceberBaixaColetiva.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceberBaixaColetiva.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Contas a Receber',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VALOR' then Edit5.SetFocus;
  if not QYReceber.IsEmpty then
  DBGrid1.SetFocus;
end;

procedure TFormReceberBaixaColetiva.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormReceberBaixaColetiva.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYReceber.Active:=False;
    QYReceber.SQL.Clear;
    QYTotalReceber.Active:=False;
    QYTotalReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER '+
                      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
                      'left join CONTAS on REE_CONTA=CON_CODIGO '+
                      'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                      'where REE_STATUS=''A'' and REE_DTVENCIMENTO between :datainicial and :datafinal order by REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_STATUS=''A'' and REE_DTVENCIMENTO between :datainicial and :datafinal');
    QYReceber.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYReceber.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYTotalReceber.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYTotalReceber.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormReceberBaixaColetiva.PngBitBtn1Click(Sender: TObject);
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

procedure TFormReceberBaixaColetiva.PngBitBtn2Click(Sender: TObject);
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
