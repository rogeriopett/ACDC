unit Metas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons, PngSpeedButton;

type
  TFormMetas = class(TForm)
    Label1: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    SpeedButton3: TPngSpeedButton;
    Label11: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit11: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N3: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    N1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText2: TDBText;
    DBText1: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBText4: TDBText;
    BaixarMeta1: TMenuItem;
    ReabrirMeta1: TMenuItem;
    ReabrirMeta1Button: TPngSpeedButton;
    BaixarMeta1Button: TPngSpeedButton;
    AtualizarMeta1Button: TPngSpeedButton;
    AtualizarMeta1: TMenuItem;
    ConfiguracaoDasMetas1: TMenuItem;
    ConfiguracaoDasMetas1Button: TPngSpeedButton;
    N2: TMenuItem;
    N4: TMenuItem;
    CadastroDeVendedores1Button: TPngSpeedButton;
    N6: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    Label38: TLabel;
    DBComboBox3: TDBComboBox;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BaixarMeta1Click(Sender: TObject);
    procedure ReabrirMeta1Click(Sender: TObject);
    procedure AtualizarMeta1Click(Sender: TObject);
    procedure ConfiguracaoDasMetas1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMetas: TFormMetas;

implementation
uses DataMod, Main, FuncoesFirenet, MetasLoc, Funcoes1, DB, MetasConfig, DataModSearch, VendedoresLoc, Vendedores, MetasRel;
{$R *.dfm}

procedure TFormMetas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMetas.AtualizarMeta1Click(Sender: TObject);
var MetaAtingida: Extended;
  PrimeiroRegistro, UltimoRegistro: Integer;
begin
  AbortIf(DM.TBMetas.IsEmpty,'Nenhuma meta selecionada.');
  AbortIf(DM.TBMetasMET_STATUS.Value='B','Meta já baixada.');

  if MessageDlg('Calcular a meta do vendedor selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //totaliza as vendas finalizadas do vendedor.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    //alterado VED_VALORTOTAL para VED_TOTALITENS.
//    DM.QYAux.SQL.Add(
//      'select coalesce(sum(VED_TOTALCOMISSAO),0) as TOTALCOMISSAO, coalesce(sum(VED_TOTALITENS),0) as TOTALVENDAS from VENDAS '+
//      'where VED_STATUS=''F'' and VED_ENTRADASAIDA=''S'' and VED_VENDEDOR=:vendedor and VED_DTEMISSAO between :datainicial and :datafinal');
    //alterado para fazer a consulta na tabela de NFE.
    if DM.TBMetasMET_REPRESENTANTE.Value='S' then
    begin
      DM.QYAux.SQL.Add(
        'select coalesce(sum(NFE_TOTALCOMISSAOREP),0) as TOTALCOMISSAO, coalesce(sum(NFE_TOTALITENS),0) as TOTALVENDAS, '+
        'coalesce(sum( iif(NFE_TOTALCOMISSAOREP > 0, NFE_TOTALITENS, 0)), 0) as TOTALVENDASCOMISSIONADAS from NFE '+
        'where NFE_STATUS=''F'' and NFE_ENTRADASAIDA=''S'' and NFE_REPRESENTANTE=:vendedor and NFE_DTEMISSAO between :datainicial and :datafinal');
      DM.QYAux.ParamByName('datainicial').AsDate:=DM.TBMetasMET_DTINICIO.Value;
      DM.QYAux.ParamByName('datafinal').AsDate:=DM.TBMetasMET_DTFIM.Value;
      DM.QYAux.ParamByName('vendedor').AsInteger:=DM.TBMetasMET_VENDEDOR.Value;
      DM.QYAux.Open;

      //totaliza as contas a receber baixadas do representante.
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add(
        'select coalesce(sum(REE_VALOR),0) as TOTALLIQUIDADO from RECEBER '+
        'where REE_STATUS=''B'' and REE_REPRESENTANTE=:vendedor and REE_DTPAGAMENTO between :datainicial and :datafinal');
      DM.QYAux2.ParamByName('datainicial').AsDate:=DM.TBMetasMET_DTINICIO.Value;
      DM.QYAux2.ParamByName('datafinal').AsDate:=DM.TBMetasMET_DTFIM.Value;
      DM.QYAux2.ParamByName('vendedor').AsInteger:=DM.TBMetasMET_VENDEDOR.Value;
      DM.QYAux2.Open;
    end else
    begin
      DM.QYAux.SQL.Add(
        'select coalesce(sum(NFE_TOTALCOMISSAO),0) as TOTALCOMISSAO, coalesce(sum(NFE_TOTALITENS),0) as TOTALVENDAS, '+
        'coalesce(sum( iif(NFE_TOTALCOMISSAO > 0, NFE_TOTALITENS, 0)), 0) as TOTALVENDASCOMISSIONADAS from NFE '+
        'where NFE_STATUS=''F'' and NFE_ENTRADASAIDA=''S'' and NFE_VENDEDOR=:vendedor and NFE_DTEMISSAO between :datainicial and :datafinal');
      DM.QYAux.ParamByName('datainicial').AsDate:=DM.TBMetasMET_DTINICIO.Value;
      DM.QYAux.ParamByName('datafinal').AsDate:=DM.TBMetasMET_DTFIM.Value;
      DM.QYAux.ParamByName('vendedor').AsInteger:=DM.TBMetasMET_VENDEDOR.Value;
      DM.QYAux.Open;

      //totaliza as contas a receber baixadas do vendedor.
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add(
        'select coalesce(sum(REE_VALOR),0) as TOTALLIQUIDADO from RECEBER '+
        'where REE_STATUS=''B'' and REE_VENDEDOR=:vendedor and REE_DTPAGAMENTO between :datainicial and :datafinal');
      DM.QYAux2.ParamByName('datainicial').AsDate:=DM.TBMetasMET_DTINICIO.Value;
      DM.QYAux2.ParamByName('datafinal').AsDate:=DM.TBMetasMET_DTFIM.Value;
      DM.QYAux2.ParamByName('vendedor').AsInteger:=DM.TBMetasMET_VENDEDOR.Value;
      DM.QYAux2.Open;
    end;


    //atualiza a meta.
    DM.TBMetas.Edit;

    if DM.TBMetasMET_COMISSAOTIPO.Value='FATURAMENTO' then
    DM.TBMetasMET_TOTALCOMISSAO.Value:=DM.QYAux.FieldByName('TOTALCOMISSAO').AsExtended;

    if DM.TBMetasMET_COMISSAOTIPO.Value='RECEBIMENTO' then
    DM.TBMetasMET_TOTALCOMISSAO.Value:=(DM.QYAux2.FieldByName('TOTALLIQUIDADO').AsExtended / 100) * DM.TBMetasMET_COMISSAO.AsExtended;

    DM.TBMetasMET_TOTALLIQUIDADO.Value:=DM.QYAux2.FieldByName('TOTALLIQUIDADO').AsExtended;
    DM.TBMetasMET_TOTALVENDAS.Value:=DM.QYAux.FieldByName('TOTALVENDAS').AsExtended;
    DM.TBMetasMET_TOTALVENDASCOMISSIONADAS.Value:=DM.QYAux.FieldByName('TOTALVENDASCOMISSIONADAS').AsExtended;

    DM.TBMetasMET_METAATINGIDA.Value:=0;
    if DM.TBMetasMET_TOTALVENDAS.Value>0 then
    DM.TBMetasMET_METAATINGIDA.Value:=Decimais(((DM.TBMetasMET_TOTALVENDAS.AsExtended * 100) / DM.TBMetasMET_METAVALOR.AsExtended),2);

    //seleciona a faixa da meta atingida.
    DM.QYAux3.Close;
    DM.QYAux3.SQL.Clear;
    DM.QYAux3.SQL.Add('select MTG_PORCENTAGEM from METASCONFIG where :meta between MTG_INICIO and MTG_FIM');
    DM.QYAux3.ParamByName('meta').AsFMTBCD:=DM.TBMetasMET_METAATINGIDA.Value;
    DM.QYAux3.Open;

    DM.TBMetasMET_BONUSPORC.Value:=DM.QYAux3.FieldByName('MTG_PORCENTAGEM').AsFloat;
    DM.TBMetasMET_BONUSVALOR.Value:=Decimais(((DM.TBMetasMET_SALARIOBASE.AsExtended / 100) * DM.TBMetasMET_BONUSPORC.AsExtended),2);

    DM.TBMetas.Post;
    DM.QYAux.Close;
    DM.QYAux2.Close;
    DM.QYAux3.Close;
  end;
end;

procedure TFormMetas.BaixarMeta1Click(Sender: TObject);
begin
  AbortIf(DM.TBMetas.IsEmpty,'Nenhuma meta selecionada.');
  AbortIf(DM.TBMetasMET_STATUS.Value='B','Meta já baixada.');

  if MessageDlg('Deseja baixar a meta selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBMetas.Edit;
    DM.TBMetasMET_DTBAIXA.Value:=DM.ServerDate;
    DM.TBMetasMET_STATUS.Value:='B';
    DM.TBMetas.Post;
  end;
end;

procedure TFormMetas.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormMetas.ConfiguracaoDasMetas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMetasConfig, FormMetasConfig);
  FormMetasConfig.ShowModal;
  FormMetasConfig.Free;
  FormMetasConfig:=nil;
end;

procedure TFormMetas.DBEdit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormMetas.DBEdit3Exit(Sender: TObject);
begin
  if (DM.TBMetas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBMetasMET_VENDEDOR.Clear;
    DM.TBMetasMET_COMISSAO.Value:=0;
    DM.TBMetasMET_COMISSAOTIPO.Clear;
    DM.TBMetasMET_SALARIOBASE.Value:=0;
    DM.TBMetasVEN_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBMetas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYVendedores.Close;
    DMS.QYVendedores.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYVendedores.Open;
    if not DMS.QYVendedores.IsEmpty then
    begin
      DM.TBMetasMET_VENDEDOR.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
      DM.TBMetasMET_COMISSAO.Value:=DMS.QYVendedoresVEN_COMISSAO.Value;
      DM.TBMetasMET_COMISSAOTIPO.Value:=DMS.QYVendedoresVEN_COMISSAOTIPO.Value;
      DM.TBMetasMET_SALARIOBASE.Value:=DMS.QYVendedoresVEN_SALARIOBASE.Value;
      DM.TBMetasVEN_NOME.Value:=DMS.QYVendedoresVEN_NOME.Value;
    end else
    begin
      DM.TBMetasMET_VENDEDOR.Clear;
      DM.TBMetasMET_COMISSAO.Value:=0;
      DM.TBMetasMET_COMISSAOTIPO.Clear;
      DM.TBMetasMET_SALARIOBASE.Value:=0;
      DM.TBMetasVEN_NOME.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYVendedores.Close;
  end;
end;

procedure TFormMetas.DBEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormMetas.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormMetas.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormMetas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBMetas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMetas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMetas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMetas);
end;

procedure TFormMetas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMetasLoc, FormMetasLoc);
  FormMetasLoc.ShowModal;
  if MetasLoc.Procurar then
  begin
    DM.TBMetas.Close;
    DM.TBMetas.ParamByName('codigo').AsInteger:=FormMetasLoc.QYMetasMET_CODIGO.Value;
    DM.TBMetas.Open;
  end;
  FormMetasLoc.Free;
  FormMetasLoc:=nil;
end;

procedure TFormMetas.ReabrirMeta1Click(Sender: TObject);
begin
  AbortIf(DM.TBMetas.IsEmpty,'Nenhuma meta selecionada.');
  AbortIf(DM.TBMetasMET_STATUS.Value='A','Meta já está aberta.');

  if MessageDlg('Deseja reabrir a meta selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBMetas.Edit;
    DM.TBMetasMET_STATUS.Value:='A';
    DM.TBMetas.Post;
  end;
end;

procedure TFormMetas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormMetasRel, FormMetasRel);
  FormMetasRel.ShowModal;
  FormMetasRel.Free;
  FormMetasRel:=nil;
end;

procedure TFormMetas.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar=True then
  begin
    DM.TBMetas.Edit;
    DM.TBMetasMET_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    DM.TBMetasMET_COMISSAO.Value:=FormVendedoresLoc.QYVendedoresVEN_COMISSAO.Value;
    DM.TBMetasMET_COMISSAOTIPO.Value:=FormVendedoresLoc.QYVendedoresVEN_COMISSAOTIPO.Value;
    DM.TBMetasVEN_NOME.Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

initialization
  RegisterClass(TFormMetas);

finalization
  UnRegisterClass(TFormMetas);

end.
