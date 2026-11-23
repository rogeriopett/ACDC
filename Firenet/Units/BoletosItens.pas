unit BoletosItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Buttons, PngBitBtn, Mask, Grids, DBGrids,
  ExtCtrls, DBCtrls, pngimage, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBoletosItens = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Edit5: TEdit;
    DSReceber: TDataSource;
    DSTotalReceber: TDataSource;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label7: TLabel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    TRReceber: TFDTransaction;
    QYReceber: TFDQuery;
    QYTotalReceber: TFDQuery;
    TRTotalReceber: TFDTransaction;
    QYTotalReceberVALOR: TFMTBCDField;
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
    QYReceberREE_HRATUALIZACAO: TTimeField;
    QYReceberREE_HRCADASTRO: TTimeField;
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
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletosItens: TFormBoletosItens;
  Procurar : Boolean = False;
implementation
uses DataMod, DataMod2, Funcoes1;
{$R *.dfm}

procedure TFormBoletosItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBoletosItens.BitBtn3Click(Sender: TObject);
var Codigo, I: Integer;
begin
  AbortIf(not DBGrid1.SelectedRows.Count>0,'Nenhuma conta selecionada.');

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' conta(s) selecionada(s).'+#13#10+'Incluir no boleto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBBoletosItens.DisableControls;
    DM2.TBBoletos.DisableControls;
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      //nao precisa mais do pointer()... testar! DBGrid1.DataSource.DataSet.GotoBookmark(Pointer(DBGrid1.SelectedRows.Items[I]));
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      Codigo:=DBGrid1.DataSource.DataSet.Fields[7].AsInteger; //código da conta a receber.
      DM2.TBBoletosItens.Insert;
      DM2.TBBoletosItensBOI_RECEBER.Value:=DBGrid1.DataSource.DataSet.Fields[7].AsInteger; //manter a ordernacao dos campos. REE_CODIGO=propriedade index=6.

      //campos derivados.
      DM2.TBBoletosItensREE_CLIENTE.Value:=DBGrid1.DataSource.DataSet.Fields[6].AsInteger;
      DM2.TBBoletosItensREE_CONTA.Value:=DBGrid1.DataSource.DataSet.Fields[8].AsInteger;
      DM2.TBBoletosItensREE_DTEMISSAO.Value:=DBGrid1.DataSource.DataSet.Fields[17].AsDateTime;
      if not DBGrid1.DataSource.DataSet.Fields[19].IsNull then
      DM2.TBBoletosItensREE_DTPAGAMENTO.Value:=DBGrid1.DataSource.DataSet.Fields[19].AsDateTime;
      DM2.TBBoletosItensREE_DTVENCIMENTO.Value:=DBGrid1.DataSource.DataSet.Fields[20].AsDateTime;
      DM2.TBBoletosItensREE_NUMDOCTO.Value:=DBGrid1.DataSource.DataSet.Fields[26].AsString;
      DM2.TBBoletosItensREE_PARCELANUM.Value:=DBGrid1.DataSource.DataSet.Fields[28].AsInteger;
      DM2.TBBoletosItensREE_PARCELAQTDE.Value:=DBGrid1.DataSource.DataSet.Fields[29].AsInteger;
      DM2.TBBoletosItensREE_STATUS.Value:=DBGrid1.DataSource.DataSet.Fields[32].AsString;
      DM2.TBBoletosItensREE_TIPODOCTO.Value:=DBGrid1.DataSource.DataSet.Fields[34].AsString;
      DM2.TBBoletosItensREE_VALOR.Value:=DBGrid1.DataSource.DataSet.Fields[36].AsExtended;
      DM2.TBBoletosItensREE_VALORPAGO.Value:=DBGrid1.DataSource.DataSet.Fields[41].AsExtended;
      DM2.TBBoletosItensREE_VENDEDOR.Value:=DBGrid1.DataSource.DataSet.Fields[44].AsInteger;

      DM2.TBBoletosItens.Post;

      //atualiza a conta a receber com o número do boleto.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update RECEBER set REE_BOLETO=:boleto where REE_CODIGO=:codigo');
      DM.QYAux.ParamByName('boleto').AsInteger:=DM2.TBBoletosBOL_CODIGO.Value;
      DM.QYAux.ParamByName('codigo').AsInteger:=Codigo;
      DM.QYAux.ExecSQL;

      //DM2.TBBoletos.Close;
      //DM2.TBBoletos.Open;
    end;
    DM2.TBBoletos.EnableControls;
    DM2.TBBoletosItens.EnableControls;
    MessageDlg('Incluída(s) '+IntToStr(I)+' conta(s) a receber no boleto.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormBoletosItens.Edit1KeyPress(Sender: TObject; var Key: Char);
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
                      'where REE_CLIENTE=:cliente and REE_STATUS=''A'' and REE_CODIGO='+QuotedStr(Edit1.Text)+' order by REE_CODIGO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_CLIENTE=:cliente and REE_STATUS=''A'' and REE_CODIGO='+QuotedStr(Edit1.Text));
    QYReceber.ParamByName('cliente').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
    QYTotalReceber.ParamByName('cliente').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormBoletosItens.Edit3KeyPress(Sender: TObject; var Key: Char);
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
                      'where REE_CLIENTE=:cliente and REE_STATUS=''A'' and REE_NUMDOCTO like '+QuotedStr(Edit3.Text+'%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_CLIENTE=:cliente and REE_STATUS=''A'' and REE_NUMDOCTO like '+QuotedStr(Edit3.Text+'%'));
    QYReceber.ParamByName('cliente').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
    QYTotalReceber.ParamByName('cliente').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormBoletosItens.Edit5KeyPress(Sender: TObject; var Key: Char);
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
                      'where REE_CLIENTE=:cliente and REE_STATUS=''A'' and REE_VALOR like '+QuotedStr(Edit5.Text+'%')+' order by REE_VALOR, REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_CLIENTE=:cliente and REE_STATUS=''A'' and REE_VALOR like '+QuotedStr(Edit5.Text+'%'));
    QYReceber.ParamByName('cliente').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
    QYTotalReceber.ParamByName('cliente').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormBoletosItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DBGrid1.Columns.SaveToFile(GetTempDir+'FormBoletosItens.txt');
end;

procedure TFormBoletosItens.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  if FileExists(GetTempDir+'FormBoletosItens.txt') then
  DBGrid1.Columns.LoadFromFile(GetTempDir+'FormBoletosItens.txt');
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormBoletosItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosItens.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Contas a Receber',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NUM DOCTO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VALOR' then Edit5.SetFocus;
  if not QYReceber.IsEmpty then
  DBGrid1.SetFocus;
end;

procedure TFormBoletosItens.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormBoletosItens.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
                      'where REE_CLIENTE=:cliente and REE_STATUS=''A'' and REE_DTVENCIMENTO between :datainicial and :datafinal order by REE_DTVENCIMENTO');
    QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_CLIENTE=:cliente and REE_STATUS=''A'' and REE_DTVENCIMENTO between :datainicial and :datafinal');
    QYReceber.ParamByName('cliente').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
    QYReceber.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYReceber.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYTotalReceber.ParamByName('cliente').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
    QYTotalReceber.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYTotalReceber.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYReceber.Active:=True;
    QYTotalReceber.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormBoletosItens.PngBitBtn1Click(Sender: TObject);
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

procedure TFormBoletosItens.PngBitBtn2Click(Sender: TObject);
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
