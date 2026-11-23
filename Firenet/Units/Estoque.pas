unit Estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls, DB,
  Mask, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormEstoque = class(TForm)
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
    CadastroDeClientes1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText2: TDBText;
    DBText1: TDBText;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    DBEdit29: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    SpeedButton4: TPngSpeedButton;
    SpeedButton8: TPngSpeedButton;
    CadastroDeFornecedores1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    DBComboBox2: TDBComboBox;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    CadastroDeProdutos1Button: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit18: TDBEdit;
    SpeedButton12: TPngSpeedButton;
    CadastroDeAlmoxarifados1: TMenuItem;
    CadastroDeAlmoxarifados1Button: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Bevel2: TBevel;
    Relatorios1: TMenuItem;
    N3: TMenuItem;
    MovimentacaoPorNumeroDoDocumento1: TMenuItem;
    MovimentacaoNoPeriodoPorProduto1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    DBEdit21: TDBEdit;
    PngSpeedButton6: TPngSpeedButton;
    MovimentacaoNoPeriodoPorFamilia1: TMenuItem;
    MovimentacaoNoPeriodoPorGrupo1: TMenuItem;
    RecalcularSaldoemEstoque1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton12Click(Sender: TObject);
    procedure CadastroDeAlmoxarifados1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure MovimentacaoPorNumeroDoDocumento1Click(Sender: TObject);
    procedure MovimentacaoNoPeriodoPorProduto1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure MovimentacaoNoPeriodoPorFamilia1Click(Sender: TObject);
    procedure MovimentacaoNoPeriodoPorGrupo1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure DBEdit13DblClick(Sender: TObject);
    procedure DBEdit14DblClick(Sender: TObject);
    procedure RecalcularSaldoemEstoque1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoque: TFormEstoque;

implementation

uses DataMod, Main, ProdutosLoc, Funcoes1,
  Produtos, Fornecedores, Clientes, Vendedores, EstoqueLoc,
  EstoqueRel, Almoxarifados, DataModSearch, FuncoesFirenet, DataMod2, InputFloat, EstoqueRecalcular;

{$R *.dfm}

procedure TFormEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBEstoque.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormEstoque.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormEstoque);
end;

procedure TFormEstoque.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEstoqueLoc, FormEstoqueLoc);
  FormEstoqueLoc.ShowModal;
  if EstoqueLoc.Procurar then
  begin
    DM.TBEstoque.Close;
    DM.TBEstoque.ParamByName('codigo').AsInteger:=FormEstoqueLoc.QYEstoqueEST_CODIGO.Value;
    DM.TBEstoque.Open;
  end;
  FormEstoqueLoc.Free;
  FormEstoqueLoc:=nil;
end;

procedure TFormEstoque.RecalcularSaldoemEstoque1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='');
  if Senha=TodaysPassword then
  begin
    Application.CreateForm(TFormEstoqueRecalcular, FormEstoqueRecalcular);
    FormEstoqueRecalcular.ShowModal;
    FormEstoqueRecalcular.Free;
    FormEstoqueRecalcular:=nil;
  end;
end;

procedure TFormEstoque.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormEstoqueRel, FormEstoqueRel);
  FormEstoqueRel.ShowModal;
  FormEstoqueRel.Free;
  FormEstoqueRel:=nil;
end;

procedure TFormEstoque.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEstoque.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEstoque.DBEdit2Exit(Sender: TObject);
begin
  if (DM.TBEstoque.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBEstoqueEST_PRODUTO.Clear;
    DM.TBEstoquePRO_NOME.Clear;
    DM.TBEstoqueEST_ESTOQUEANTERIOR.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBEstoque.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin
      if DM.TBEstoqueEST_PRODUTOREAL.Value=DMS.QYProdutosPRO_CODIGO.Value then
      begin
        MessageDlg('O produto selecionado é o mesmo do produto real.',mtWarning,[mbOk],0);
        DM.TBEstoqueEST_PRODUTO.Clear;
        DM.TBEstoquePRO_NOME.Clear;
        DM.TBEstoqueEST_ESTOQUEANTERIOR.Clear;
      end else
      begin
        DM.TBEstoqueEST_PRODUTO.Value:=DMS.QYProdutosPRO_CODIGO.Value;
        DM.TBEstoquePRO_NOME.Value:=DMS.QYProdutosPRO_NOME.Value;
        DM.TBEstoqueEST_ESTOQUEANTERIOR.Value:=DMS.QYProdutosPRO_ESTOQUEATUAL.Value;
        if DM.TBEstoqueEST_TRANSACAO.Value='E' then
        DM.TBEstoqueEST_VALORUNIT.Value:=DMS.QYProdutosPRO_PRECOCUSTO.Value else
        if DM.TBEstoqueEST_TRANSACAO.Value='S' then
        DM.TBEstoqueEST_VALORUNIT.Value:=DMS.QYProdutosPRO_PRECOVENDA.Value;
      end;
    end else
    begin
      DM.TBEstoqueEST_PRODUTO.Clear;
      DM.TBEstoquePRO_NOME.Clear;
      DM.TBEstoqueEST_ESTOQUEANTERIOR.Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormEstoque.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormEstoque.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEstoque.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    DM.TBEstoque.Edit;
    if DM.TBEstoqueEST_PRODUTOREAL.Value=FormProdutosLoc.QYProdutosPRO_CODIGO.Value then
    begin
      MessageDlg('O produto selecionado é o mesmo do produto real.',mtWarning,[mbOk],0);
      DM.TBEstoqueEST_PRODUTO.Clear;
      DM.TBEstoquePRO_NOME.Clear;
      DM.TBEstoqueEST_ESTOQUEANTERIOR.Clear;
    end else
    begin
      if ProdutosLoc.CodigoNoFornecedor then
      begin
        DM.TBEstoqueEST_PRODUTO.Value:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value;
        DM.TBEstoquePRO_NOME.Value:=FormProdutosLoc.QYProdutosCodigosPRO_NOME.Value;
        DM.TBEstoqueEST_ESTOQUEANTERIOR.Value:=FormProdutosLoc.QYProdutosCodigosPRO_ESTOQUEATUAL.Value;
        if DM.TBEstoqueEST_TRANSACAO.Value='E' then
        DM.TBEstoqueEST_VALORUNIT.Value:=FormProdutosLoc.QYProdutosCodigosPRO_PRECOCUSTO.Value;
        if DM.TBEstoqueEST_TRANSACAO.Value='S' then
        DM.TBEstoqueEST_VALORUNIT.Value:=FormProdutosLoc.QYProdutosCodigosPRO_PRECOVENDA.Value;
      end else
      begin
        DM.TBEstoqueEST_PRODUTO.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
        DM.TBEstoquePRO_NOME.Value:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
        DM.TBEstoqueEST_ESTOQUEANTERIOR.Value:=FormProdutosLoc.QYProdutosPRO_ESTOQUEATUAL.Value;
        if DM.TBEstoqueEST_TRANSACAO.Value='E' then
        DM.TBEstoqueEST_VALORUNIT.Value:=FormProdutosLoc.QYProdutosPRO_PRECOCUSTO.Value;
        if DM.TBEstoqueEST_TRANSACAO.Value='S' then
        DM.TBEstoqueEST_VALORUNIT.Value:=FormProdutosLoc.QYProdutosPRO_PRECOVENDA.Value;
      end;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormEstoque.DBEdit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEstoque.DBEdit3Exit(Sender: TObject);
begin
  LocFornecedoresExit(DBEdit3,DBEdit15,nil,DM.TBEstoque);
end;

procedure TFormEstoque.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormEstoque.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEstoque.SpeedButton3Click(Sender: TObject);
begin
  LocFornecedoresBotao(DBEdit3,DBEdit15,nil,DM.TBEstoque);
end;

procedure TFormEstoque.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEstoque.DBEdit4Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit4,DBEdit16,DM.TBEstoque);
end;

procedure TFormEstoque.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormEstoque.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEstoque.SpeedButton4Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit4,DBEdit16,DM.TBEstoque);
end;

procedure TFormEstoque.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEstoque.DBEdit5Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit5,DBEdit17,nil,DM.TBEstoque);
end;

procedure TFormEstoque.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton8.Click;
end;

procedure TFormEstoque.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEstoque.SpeedButton8Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit17,nil,DM.TBEstoque);
end;

procedure TFormEstoque.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBEstoqueEST_DATA.Clear;
end;

procedure TFormEstoque.DBEdit11DblClick(Sender: TObject);
var  Senha: String;
begin
  if GetKeyState(VK_CONTROL) and 128>0 then
  begin

    if DM.TBEstoque.IsEmpty then
    Exit;

    repeat
      Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
      if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
    until (Senha=TodaysPassword) or (Senha='');
    if Senha=TodaysPassword then
    begin
      Application.CreateForm(TFormInputFloat, FormInputFloat);
      //FormInputFloat.ImageDollar.Visible:=True;
      FormInputFloat.Caption:='Alterar Quantidade';
      FormInputFloat.Label1.Caption:='Informe a nova Quantidade:';
      FormInputFloat.Edit1.Text:=DM.TBEstoqueEST_QUANTIDADE.AsString;
      if (FormInputFloat.ShowModal=mrOK) then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update ESTOQUE set EST_QUANTIDADE=:qtde where EST_CODIGO=:codigo');
        DM.QYAux.ParamByName('qtde').AsFMTBCD:=StrToFloat(FormInputFloat.Edit1.Text);
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBEstoqueEST_CODIGO.Value;
        DM.QYAux.ExecSQL;

        DM.TBEstoque.Close;
        DM.TBEstoque.Open;
      end;
      FormInputFloat.Free;
      FormInputFloat:=nil;
    end;

  end;
end;

procedure TFormEstoque.DBEdit13DblClick(Sender: TObject);
var  Senha: String;
begin
  if GetKeyState(VK_CONTROL) and 128>0 then
  begin

    if DM.TBEstoque.IsEmpty then
    Exit;

    repeat
      Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
      if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
    until (Senha=TodaysPassword) or (Senha='');
    if Senha=TodaysPassword then
    begin
      Application.CreateForm(TFormInputFloat, FormInputFloat);
      //FormInputFloat.ImageDollar.Visible:=True;
      FormInputFloat.Caption:='Alterar Quantidade';
      FormInputFloat.Label1.Caption:='Informe a nova Quantidade:';
      FormInputFloat.Edit1.Text:=DM.TBEstoqueEST_ESTOQUEANTERIOR.AsString;
      if (FormInputFloat.ShowModal=mrOK) then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update ESTOQUE set EST_ESTOQUEANTERIOR=:qtde where EST_CODIGO=:codigo');
        DM.QYAux.ParamByName('qtde').AsFMTBCD:=StrToFloat(FormInputFloat.Edit1.Text);
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBEstoqueEST_CODIGO.Value;
        DM.QYAux.ExecSQL;

        DM.TBEstoque.Close;
        DM.TBEstoque.Open;
      end;
      FormInputFloat.Free;
      FormInputFloat:=nil;
    end;

  end;
end;

procedure TFormEstoque.DBEdit14DblClick(Sender: TObject);
var  Senha: String;
begin
  if GetKeyState(VK_CONTROL) and 128>0 then
  begin

    if DM.TBEstoque.IsEmpty then
    Exit;

    repeat
      Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
      if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
    until (Senha=TodaysPassword) or (Senha='');
    if Senha=TodaysPassword then
    begin
      Application.CreateForm(TFormInputFloat, FormInputFloat);
      //FormInputFloat.ImageDollar.Visible:=True;
      FormInputFloat.Caption:='Alterar Quantidade';
      FormInputFloat.Label1.Caption:='Informe a nova Quantidade:';
      FormInputFloat.Edit1.Text:=DM.TBEstoqueEST_ESTOQUEPOSTERIOR.AsString;
      if (FormInputFloat.ShowModal=mrOK) then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update ESTOQUE set EST_ESTOQUEPOSTERIOR=:qtde where EST_CODIGO=:codigo');
        DM.QYAux.ParamByName('qtde').AsFMTBCD:=StrToFloat(FormInputFloat.Edit1.Text);
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBEstoqueEST_CODIGO.Value;
        DM.QYAux.ExecSQL;

        DM.TBEstoque.Close;
        DM.TBEstoque.Open;
      end;
      FormInputFloat.Free;
      FormInputFloat:=nil;
    end;

  end;
end;

procedure TFormEstoque.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormEstoque.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormEstoque.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormEstoque.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormEstoque.DBEdit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEstoque.DBEdit7Exit(Sender: TObject);
begin
  LocAlmoxarifadosExit(DBEdit7,DBEdit18,DM.TBEstoque);
end;

procedure TFormEstoque.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton12.Click;
end;

procedure TFormEstoque.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEstoque.SpeedButton12Click(Sender: TObject);
begin
  LocAlmoxarifadosBotao(DBEdit7,DBEdit18,DM.TBEstoque);
end;

procedure TFormEstoque.CadastroDeAlmoxarifados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAlmoxarifados, FormAlmoxarifados);
  FormAlmoxarifados.ShowModal;
  FormAlmoxarifados.Free;
  FormAlmoxarifados:=nil;
end;

procedure TFormEstoque.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormEstoque.PngSpeedButton6Click(Sender: TObject);
begin
  AbortIf(DM.TBEstoqueEST_PRODUTO.IsNull,'Selecione o produto antes de selecionar o produto real.');

  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if DM.TBEstoqueEST_PRODUTO.Value=FormProdutosLoc.QYProdutosPRO_CODIGO.Value then
    MessageDlg('Não é possível selecionar o próprio produto como produto real.',mtWarning,[mbOk],0) else
    begin
      DM.TBEstoque.Edit;
      DM.TBEstoqueEST_PRODUTOREAL.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormEstoque.MovimentacaoPorNumeroDoDocumento1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormEstoqueRel, FormEstoqueRel);
  FormEstoqueRel.ComboBox1.Enabled:=False;
  FormEstoqueRel.ComboBox1.ItemIndex:=0;
  FormEstoqueRel.ComboBox1Change(Self);
  FormEstoqueRel.ShowModal;
  FormEstoqueRel.Free;
  FormEstoqueRel:=nil;
end;

procedure TFormEstoque.MovimentacaoNoPeriodoPorProduto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEstoqueRel, FormEstoqueRel);
  FormEstoqueRel.ComboBox1.Enabled:=False;
  FormEstoqueRel.ComboBox1.ItemIndex:=1;
  FormEstoqueRel.ComboBox1Change(Self);
  FormEstoqueRel.ShowModal;
  FormEstoqueRel.Free;
  FormEstoqueRel:=nil;
end;

procedure TFormEstoque.MovimentacaoNoPeriodoPorFamilia1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEstoqueRel, FormEstoqueRel);
  FormEstoqueRel.ComboBox1.Enabled:=False;
  FormEstoqueRel.ComboBox1.ItemIndex:=2;
  FormEstoqueRel.ComboBox1Change(Self);
  FormEstoqueRel.ShowModal;
  FormEstoqueRel.Free;
  FormEstoqueRel:=nil;
end;

procedure TFormEstoque.MovimentacaoNoPeriodoPorGrupo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEstoqueRel, FormEstoqueRel);
  FormEstoqueRel.ComboBox1.Enabled:=False;
  FormEstoqueRel.ComboBox1.ItemIndex:=3;
  FormEstoqueRel.ComboBox1Change(Self);
  FormEstoqueRel.ShowModal;
  FormEstoqueRel.Free;
  FormEstoqueRel:=nil;
end;

initialization
  RegisterClass(TFormEstoque);

finalization
  UnRegisterClass(TFormEstoque);

end.
