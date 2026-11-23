unit NfseItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.Buttons, PngBitBtn, PngSpeedButton, Vcl.ExtCtrls, System.UITypes,
  PngImageList;

type
  TFormNfseItens = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label26: TLabel;
    SpeedButton3: TPngSpeedButton;
    Label36: TLabel;
    Label37: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit51: TDBEdit;
    MainMenu1: TMainMenu;
    Atalhos1: TMenuItem;
    OK1: TMenuItem;
    Label49: TLabel;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label82: TLabel;
    DBEdit76: TDBEdit;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    PngSpeedButton2: TPngSpeedButton;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet2: TTabSheet;
    PngImageList1: TPngImageList;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label136: TLabel;
    Label138: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label119: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label137: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label154: TLabel;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    DBEdit126: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    DBEdit129: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit141: TDBEdit;
    DBEdit142: TDBEdit;
    DBEdit143: TDBEdit;
    DBEdit144: TDBEdit;
    DBEdit145: TDBEdit;
    DBEdit146: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit134: TDBEdit;
    DBEdit139: TDBEdit;
    DBEdit140: TDBEdit;
    DBEdit151: TDBEdit;
    PngBitBtn1: TPngBitBtn;
    Label156: TLabel;
    DBEdit153: TDBEdit;
    Label128: TLabel;
    Label150: TLabel;
    Label120: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label157: TLabel;
    DBEdit125: TDBEdit;
    DBEdit147: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit137: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit148: TDBEdit;
    DBEdit149: TDBEdit;
    DBEdit150: TDBEdit;
    DBEdit154: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit47KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit48Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit47Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure OK1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit51KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit51Exit(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesabilitarCampos;
  end;

var
  FormNfseItens: TFormNfseItens;

implementation
uses DataMod, Main, DataModSearch, EnderecosCidadesLoc, EnderecosPaisesLoc, ProdutosLoc, FuncoesFirenet,
  Funcoes1, RegrasFiscais, RegrasFiscaisLoc;
{$R *.dfm}

procedure TFormNfseItens.DesabilitarCampos;
var I: Integer;
begin
  if (DM.TBNfseNFS_STATUS.Value='F') or (DM.TBNfseNFS_STATUS.Value='C') or (DM.TBNfseNFS_STATUS.Value='I') or (DM.TBNfseNFS_PROTOCOLO.Value<>'') then
  begin
    DM.TBNfeItens.Cancel;
    BitBtn1.Enabled:=False;
    for I:=0 to FormNfseItens.ComponentCount-1 do
    begin
      if (FormNfseItens.Components[I] is TDBEdit) then
      (FormNfseItens.Components[I] as TDBEdit).Enabled:=False else
      if (FormNfseItens.Components[I] is TDBComboBox) then
      (FormNfseItens.Components[I] as TDBComboBox).Enabled:=False else
      if (FormNfseItens.Components[I] is TDBMemo) then
      (FormNfseItens.Components[I] as TDBMemo).Enabled:=False else
      if (FormNfseItens.Components[I] is TDBGrid) then
      (FormNfseItens.Components[I] as TDBGrid).Enabled:=False else
      if (FormNfseItens.Components[I] is TSpeedButton) then
      (FormNfseItens.Components[I] as TSpeedButton).Enabled:=False else
      if (FormNfseItens.Components[I] is TPngSpeedButton) then
      (FormNfseItens.Components[I] as TPngSpeedButton).Enabled:=False;
    end;
  end;
end;

procedure TFormNfseItens.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfseItensNSI_DESCRICAO.Value='','Informe a descrição do serviço.');

  if DM.TBNfseItensNSI_QUANTIDADE.Value<=0 then
  begin
    MessageDlg('A Quantidade não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
    Exit;
  end;
  DM.TBNfseItens.Post;
  Close;
end;

procedure TFormNfseItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfseItens.DBEdit10Exit(Sender: TObject);
begin
  DM.CalcularTotaisNFSeItens(False); //parametro sem uso.
end;

procedure TFormNfseItens.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfseItens.DBEdit12Exit(Sender: TObject);
begin
  DM.CalcularTotaisNFSeItens(False); //parametro sem uso.
end;

procedure TFormNfseItens.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfseItens.DBEdit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfseItens.DBEdit21Exit(Sender: TObject);
begin
  if (DM.TBNfseItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNfseItensNSI_CIDADE.Clear;
    DM.TBNfseItensNSI_CIDADECODIGO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfseItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYCidades.Close;
    DMS.QYCidades.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYCidades.Open;
    if not DMS.QYCidades.IsEmpty then
    begin
      DM.TBNfseItensNSI_CIDADE.Value:=DMS.QYCidadesCID_NOME.Value;
      DM.TBNfseItensNSI_CIDADECODIGO.Value:=DMS.QYCidadesCID_CODIGO.Value;
    end else
    begin
      DM.TBNfseItensNSI_CIDADE.Clear;
      DM.TBNfseItensNSI_CIDADECODIGO.Clear;
      MessageDlg('Cidade não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYCidades.Close;
  end;
end;

procedure TFormNfseItens.DBEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormNfseItens.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfseItens.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfseItens.DBEdit2Exit(Sender: TObject);
begin
  if (DM.TBNfseItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNfseItensNSI_PRODUTO.Clear;
    DM.TBNfseItensPRO_NOME.Clear;
    DM.TBNfseItensNSI_ALIQUOTA.Clear;
    DM.TBNfseItensNSI_NBS.Clear;
    DM.TBNfseItensNSI_SERVICO.Clear;
    DM.TBNfseItensISS_DESCRICAO.Clear;
    DM.TBNfseItensNBS_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfseItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin
      DM.TBNfseItensNSI_PRODUTO.Value:=DMS.QYProdutosPRO_CODIGO.Value;
      DM.TBNfseItensPRO_NOME.Value:=DMS.QYProdutosPRO_NOME.Value;

      DM.TBNfseItensNSI_ALIQUOTA.Value:=DMS.QYProdutosPRO_ALIQISS.Value;
      DM.TBNfseItensNSI_NBS.Value:=DMS.QYProdutosPRO_NBS.Value;
      DM.TBNfseItensNSI_SERVICO.Value:=DMS.QYProdutosPRO_TIPOISS.Value;
      DM.TBNfseItensISS_DESCRICAO.Value:=DMS.QYProdutosISS_DESCRICAO.Value;
      DM.TBNfseItensNBS_DESCRICAO.Value:=DMS.QYProdutosNBS_DESCRICAO.Value;

      if DM.TBNfseItensNSI_DESCRICAO.Value='' then
      DM.TBNfseItensNSI_DESCRICAO.Value:=DMS.QYProdutosPRO_NOME.Value;
    end else
    begin
      DM.TBNfseItensNSI_CODIGO.Clear;
      DM.TBNfseItensPRO_NOME.Clear;
      DM.TBNfseItensNSI_ALIQUOTA.Clear;
      DM.TBNfseItensNSI_NBS.Clear;
      DM.TBNfseItensNSI_SERVICO.Clear;
      DM.TBNfseItensISS_DESCRICAO.Clear;
      DM.TBNfseItensNBS_DESCRICAO.Clear;

      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormNfseItens.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormNfseItens.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfseItens.DBEdit34Exit(Sender: TObject);
begin
  DM.CalcularTotaisNFSeItens(False); //parametro sem uso.
end;

procedure TFormNfseItens.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfseItens.DBEdit47Exit(Sender: TObject);
begin
  DM.CalcularTotaisNFSeItens(False); //parametro sem uso.
end;

procedure TFormNfseItens.DBEdit47KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfseItens.DBEdit48Exit(Sender: TObject);
begin
  DM.CalcularTotaisNFSeItens(False); //parametro sem uso.
end;

procedure TFormNfseItens.DBEdit48KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfseItens.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfseItens.DBEdit4Exit(Sender: TObject);
begin
  LocNbsExit(DBEdit4,DBEdit6,DM.TBNfseItens);
end;

procedure TFormNfseItens.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormNfseItens.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfseItens.DBEdit51Exit(Sender: TObject);
begin
  DM.CalcularTotaisNFSeItens(False); //parametro sem uso.
end;

procedure TFormNfseItens.DBEdit51KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfseItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfseItens.DBEdit5Exit(Sender: TObject);
begin
  LocIssExit(DBEdit5,DBEdit32,DBEdit48,DM.TBNfseItens);
end;

procedure TFormNfseItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormNfseItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfseItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBNfseItens.State in [dsInsert, dsEdit] then
  DM.TBNfseItens.Cancel;
end;

procedure TFormNfseItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfseItens.FormShow(Sender: TObject);
begin
  if (DM.TBNfseItens.State in [dsInsert, dsEdit]) then
  begin
    FormMain.HabilitarControles(FormNfseItens); //habilita o campo valor unitario caso esteja liberado para o usuário.
  end;
end;

procedure TFormNfseItens.OK1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormNfseItens.PngBitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRegrasFiscaisLoc, FormRegrasFiscaisLoc);
  FormRegrasFiscaisLoc.ShowModal;
  if RegrasFiscaisLoc.Procurar then
  begin
    DM.TBRegrasFiscais.Close;
    DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CODIGO.Value;
    DM.TBRegrasFiscais.Open;

    DM.TBNfseItensNSI_ALIQCBS.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
    //DM.TBVendasItensVEI_ALIQCBSDIF.Value:=DM.tbregrasfiscais
    DM.TBNfseItensNSI_ALIQCBSRED.Value:=DM.TBRegrasFiscaisCLT_ALIQCBSRED_IC.Value;
    DM.TBNfseItensNSI_ALIQIBSMUNRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value;
    DM.TBNfseItensNSI_ALIQIBSUFRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value;
    //DM.TBVendasItensVEI_ALIQCBSCREDPRES.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
    DM.TBNfseItensNSI_CLASSTRIBIBSCBS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
    DM.TBNfseItensNSI_CLASSTRIBIS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value;
    DM.TBNfseItensNSI_CSTIBSCBS.Value:=Copy(DM.TBRegrasFiscaisRGF_CSTIBSCBS.Value,1,3);
    DM.TBNfseItensNSI_CSTIS.Value:=Copy(DM.TBRegrasFiscaisRGF_CSTIS.Value,1,3);
  end;
  FormRegrasFiscaisLoc.Free;
  FormRegrasFiscaisLoc:=nil;
end;

procedure TFormNfseItens.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar=True then
  begin
    DM.TBNfseItens.Edit;
    DM.TBNfseItensNSI_PRODUTO.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
    DM.TBNfseItensPRO_NOME.Value:=FormProdutosLoc.QYProdutosPRO_NOME.Value;

    DM.TBNfseItensNSI_ALIQUOTA.Value:=FormProdutosLoc.QYProdutosPRO_ALIQISS.Value;
    DM.TBNfseItensNSI_NBS.Value:=FormProdutosLoc.QYProdutosPRO_NBS.Value;
    DM.TBNfseItensNSI_SERVICO.Value:=FormProdutosLoc.QYProdutosPRO_TIPOISS.Value;
    DM.TBNfseItensISS_DESCRICAO.Value:=FormProdutosLoc.QYProdutosISS_DESCRICAO.Value;
    DM.TBNfseItensNBS_DESCRICAO.Value:=FormProdutosLoc.QYProdutosNBS_DESCRICAO.Value;

    if DM.TBNfseItensNSI_DESCRICAO.Value='' then
    DM.TBNfseItensNSI_DESCRICAO.Value:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormNfseItens.PngSpeedButton2Click(Sender: TObject);
begin
  LocNbsBotao(DBEdit4,DBEdit6,DM.TBNfseItens);
end;

procedure TFormNfseItens.PngSpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosPaisesLoc, FormEnderecosPaisesLoc);
  FormEnderecosPaisesLoc.ShowModal;
  if EnderecosPaisesLoc.Procurar then
  begin
    DM.TBNfseItensNSI_PAIS.Value:=FormEnderecosPaisesLoc.QYPaisesPAI_CODIGO.Value;
  end;
  FormEnderecosPaisesLoc.Free;
  FormEnderecosPaisesLoc:=nil;
end;

procedure TFormNfseItens.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar=True then
  begin
    DM.TBNfseItens.Edit;
    DM.TBNfseItensNSI_CIDADE.Value:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
    DM.TBNfseItensNSI_CIDADECODIGO.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormNfseItens.SpeedButton9Click(Sender: TObject);
begin
  LocIssBotao(DBEdit5,DBEdit32,DBEdit48,DM.TBNfseItens);
end;

end.
