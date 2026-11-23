unit Condicoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls, Mask,
  Grids, DBGrids, DB, PngSpeedButton, PngBitBtn, ImgList, PngImageList,
  System.ImageList, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormCondicoes = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    DBComboBox2: TDBComboBox;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBGrid1: TDBGrid;
    IncluirItem1Button: TPngBitBtn;
    EliminarItem1Button: TPngBitBtn;
    AlterarItem1Button: TPngBitBtn;
    DBText3: TDBText;
    DBText4: TDBText;
    CalcularItens1: TMenuItem;
    PngImageList1: TPngImageList;
    Label3: TLabel;
    Label5: TLabel;
    DBComboBox3: TDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    DBComboBox4: TDBComboBox;
    Label9: TLabel;
    DBComboBox5: TDBComboBox;
    Label11: TLabel;
    DBComboBox6: TDBComboBox;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBComboBox7: TDBComboBox;
    Label14: TLabel;
    DBComboBox8: TDBComboBox;
    Label45: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    CondicoesDePagamentosAnalitico1: TMenuItem;
    CondicoesDePagamentosSintetico1: TMenuItem;
    N2: TMenuItem;
    Label16: TLabel;
    DBComboBox9: TDBComboBox;
    TRCondicoes: TFDTransaction;
    QYCondicoes: TFDQuery;
    QYCondicoesCPG_ATUALIZAR: TStringField;
    QYCondicoesCPG_BAIXARPRIMEIRAPARC: TStringField;
    QYCondicoesCPG_CODIGO: TIntegerField;
    QYCondicoesCPG_CONTA: TIntegerField;
    QYCondicoesCPG_CUPOM: TStringField;
    QYCondicoesCPG_DESCPORC: TFMTBCDField;
    QYCondicoesCPG_DESCRICAO: TStringField;
    QYCondicoesCPG_DESCRICAOCUPOM: TStringField;
    QYCondicoesCPG_DTATUALIZACAO: TDateField;
    QYCondicoesCPG_DTCADASTRO: TDateField;
    QYCondicoesCPG_FORMAPAGTO: TStringField;
    QYCondicoesCPG_HRATUALIZACAO: TTimeField;
    QYCondicoesCPG_HRCADASTRO: TTimeField;
    QYCondicoesCPG_MEIOPAGAMENTO: TStringField;
    QYCondicoesCPG_MENSAL: TStringField;
    QYCondicoesCPG_MOBILE: TStringField;
    QYCondicoesCPG_PARCELASIGUAIS: TStringField;
    QYCondicoesCPG_STATUS: TStringField;
    QYCondicoesCPG_TIPOINTEGRACAO: TStringField;
    QYCondicoesCPG_TOTALPARCELAS: TIntegerField;
    QYCondicoesCPG_TOTALPORCENTAGEM: TFMTBCDField;
    QYCondicoesCPG_USUARIO: TStringField;
    Label17: TLabel;
    DBComboBox10: TDBComboBox;
    AtualizarcampoTipoPagamento1: TMenuItem;
    Label18: TLabel;
    DBText5: TDBText;
    DefinirComoPadraoNaNFCe1: TMenuItem;
    DefinirComoPadraoNaNFCe1Button: TPngSpeedButton;
    Label19: TLabel;
    DBComboBox11: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure IncluirItem1ButtonClick(Sender: TObject);
    procedure EliminarItem1ButtonClick(Sender: TObject);
    procedure AlterarItem1ButtonClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit60Enter(Sender: TObject);
    procedure DBEdit60Exit(Sender: TObject);
    procedure DBEdit60KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure CondicoesDePagamentosAnalitico1Click(Sender: TObject);
    procedure CondicoesDePagamentosSintetico1Click(Sender: TObject);
    procedure AtualizarcampoTipoPagamento1Click(Sender: TObject);
    procedure DefinirComoPadraoNaNFCe1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCondicoes: TFormCondicoes;

implementation
uses DataMod, Main, CondicoesLoc, Funcoes1, CondicoesItens, FuncoesFirenet, CondicoesRel;

{$R *.dfm}

procedure TFormCondicoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBCondicoes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCondicoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormCondicoes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormCondicoes);
end;

procedure TFormCondicoes.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesLoc, FormCondicoesLoc);
  FormCondicoesLoc.ShowModal;
  if CondicoesLoc.Procurar then
  begin
    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=FormCondicoesLoc.QYCondicoesCPG_CODIGO.Value;
    DM.TBCondicoes.Open;

    DM.TBCondicoesItens.Close;
    DM.TBCondicoesItens.Open;
  end;
  FormCondicoesLoc.Free;
  FormCondicoesLoc:=nil;
end;

procedure TFormCondicoes.PngSpeedButton1Click(Sender: TObject);
begin
  LocContasBotao(DBEdit60,DBEdit61,DM.TBCondicoes);
end;

procedure TFormCondicoes.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesRel, FormCondicoesRel);
  FormCondicoesRel.ShowModal;
  FormCondicoesRel.Free;
  FormCondicoesRel:=nil;
end;

procedure TFormCondicoes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCondicoes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCondicoes.IncluirItem1ButtonClick(Sender: TObject);
begin
  AbortIf(DM.TBCondicoes.IsEmpty,'Nenhuma condição selecionada.');

  DM.TBCondicoesItens.Insert;
  Application.CreateForm(TFormCondicoesItens, FormCondicoesItens);
  FormCondicoesItens.ShowModal;
  FormCondicoesItens.Free;
  FormCondicoesItens:=nil;
end;

procedure TFormCondicoes.EliminarItem1ButtonClick(Sender: TObject);
begin
  AbortIf(DM.TBCondicoesItens.IsEmpty,'Não existe nenhum item para excluir.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM.TBCondicoesItens.Delete;
end;

procedure TFormCondicoes.AlterarItem1ButtonClick(Sender: TObject);
begin
  AbortIf(DM.TBCondicoesItens.IsEmpty,'Não existe nenhum item para editar.');

  DM.TBCondicoesItens.Edit;
  Application.CreateForm(TFormCondicoesItens, FormCondicoesItens);
  FormCondicoesItens.ShowModal;
  FormCondicoesItens.Free;
  FormCondicoesItens:=nil;
end;

procedure TFormCondicoes.AtualizarcampoTipoPagamento1Click(Sender: TObject);
var TipoPagamento: String;
begin
  if MessageDlg('Atualizar o campo Tipo Pagamento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from CONDICOES order by CPG_CODIGO');
    DM.QYAux.Open;
    DM.QYAux.First;
    DM.QYAux.DisableControls;
    while not DM.QYAux.Eof do
    begin
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add('select first(1) * from CONDICOESITENS where CPI_CONDICAO=:condicao order by CPI_DIAS');
      DM.QYAux2.ParamByName('condicao').AsInteger:=DM.QYAux.FieldByName('CPG_CODIGO').AsInteger;
      DM.QYAux2.Open;

      TipoPagamento:='0 - PAGAMENTO A VISTA';

      if DM.QYAux.FieldByName('CPG_TOTALPARCELAS').AsInteger > 1 then
      TipoPagamento:='1 - PAGAMENTO A PRAZO' else
      begin
        if (DM.QYAux.FieldByName('CPG_TOTALPARCELAS').AsInteger=1) and (DM.QYAux2.FieldByName('CPI_DIAS').AsInteger=0) then
        TipoPagamento:='0 - PAGAMENTO A VISTA' else
        TipoPagamento:='1 - PAGAMENTO A PRAZO';
      end;

      DM.QYAux3.Close;
      DM.QYAux3.SQL.Clear;
      DM.QYAux3.SQL.Add('update CONDICOES set CPG_TIPOPAGAMENTO=:tipopagamento where CPG_CODIGO=:codigo');
      DM.QYAux3.ParamByName('tipopagamento').AsString:=TipoPagamento;
      DM.QYAux3.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CPG_CODIGO').AsInteger;
      DM.QYAux3.ExecSQL;
      DM.QYAux3.Close;

      DM.QYAux.Next;
    end;
    DM.QYAux.EnableControls;
    DM.QYAux.Close;
    MessageDlg('Atualização OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormCondicoes.CondicoesDePagamentosAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesRel, FormCondicoesRel);
  FormCondicoesRel.ComboBox1.Enabled:=False;
  FormCondicoesRel.ComboBox1.ItemIndex:=0;
  //FormCondicoesRel.ComboBox1Change(Self);
  FormCondicoesRel.ShowModal;
  FormCondicoesRel.Free;
  FormCondicoesRel:=nil;
end;

procedure TFormCondicoes.CondicoesDePagamentosSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesRel, FormCondicoesRel);
  FormCondicoesRel.ComboBox1.Enabled:=False;
  FormCondicoesRel.ComboBox1.ItemIndex:=1;
  //FormCondicoesRel.ComboBox1Change(Self);
  FormCondicoesRel.ShowModal;
  FormCondicoesRel.Free;
  FormCondicoesRel:=nil;
end;

procedure TFormCondicoes.DBEdit60Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCondicoes.DBEdit60Exit(Sender: TObject);
begin
  LocContasExit(DBEdit60,DBEdit61,DM.TBCondicoes);
end;

procedure TFormCondicoes.DBEdit60KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormCondicoes.DBEdit60KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCondicoes.DBGrid1DblClick(Sender: TObject);
begin
  if AlterarItem1Button.Enabled then
  AlterarItem1Button.Click;
end;

procedure TFormCondicoes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if AlterarItem1Button.Enabled then
    AlterarItem1Button.Click;
  end;
end;

procedure TFormCondicoes.DefinirComoPadraoNaNFCe1Click(Sender: TObject);
begin
  AbortIf(DM.TBCondicoes.IsEmpty,'Nenhuma condição de pagamento selecionada.');

  if MessageDlg('Deseja definir esta condição como padrão ao entrar na tela de pagamento da NFCe?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //QYAux já é usado no beforepost
//    DM.TRScript.StartTransaction;
//    DM.FDScript.SQLScripts.Clear;
//    DM.FDScript.SQLScripts.Add;
//    DM.FDScript.SQLScripts.Items[0].SQL.Text:=
//      'update CONDICOES set CPG_PADRAO=''N'' where CPG_PADRAO=''S'';'+#13#10+
//      'update CONDICOES set CPG_PADRAO=''S'' where CPG_CODIGO='+DM.TBCondicoesCPG_CODIGO.Value.ToString+';'
//    ;
//    DM.FDScript.ExecuteAll;
//    DM.TRScript.Commit;

    DM.QYAux3.Close;
    DM.QYAux3.SQL.Clear;
    DM.QYAux3.SQL.Add('update CONDICOES set CPG_PADRAO=''N'' where CPG_PADRAO=''S''');
    DM.QYAux3.ExecSQL;

    DM.QYAux4.Close;
    DM.QYAux4.SQL.Clear;
    DM.QYAux4.SQL.Add('update CONDICOES set CPG_PADRAO=''S'' where CPG_CODIGO=:codigo');
    DM.QYAux4.ParamByName('codigo').AsInteger:=DM.TBCondicoesCPG_CODIGO.Value;
    DM.QYAux4.ExecSQL;
    //DM.TRAux.Commit;

    DM.TBCondicoesItens.Close;
    DM.TBCondicoes.Close;
    DM.TBCondicoes.Open;
    DM.TBCondicoesItens.Open;
  end;
end;

initialization
  RegisterClass(TFormCondicoes);

finalization
  UnRegisterClass(TFormCondicoes);

end.

