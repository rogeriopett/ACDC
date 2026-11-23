unit DeliveryDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBSBtn, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons, PngSpeedButton;

type
  TFormDeliveryDetalhes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit36: TDBEdit;
    Label35: TLabel;
    Label34: TLabel;
    DBText7: TDBText;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton9: TPngSpeedButton;
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
    Cadastros1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    CadastroDeCondicoesDePagamento1: TMenuItem;
    CadastroDeEnderecos1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
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
    DBText1: TDBText;
    DBText2: TDBText;
    CadastroDeProdutos1Button: TPngSpeedButton;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeCondicoesDePagamento1Button: TPngSpeedButton;
    Bevel9: TBevel;
    CadastroDeTaxas1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    CadastroDeEnderecos1Button: TPngSpeedButton;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    PngSpeedButton2: TPngSpeedButton;
    PngImageList1: TPngImageList;
    Label7: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    DBEdit12: TDBEdit;
    Label10: TLabel;
    DBEdit13: TDBEdit;
    Label11: TLabel;
    DBEdit14: TDBEdit;
    Label12: TLabel;
    DBEdit15: TDBEdit;
    Label13: TLabel;
    DBEdit16: TDBEdit;
    CadastroDeTaxas1: TMenuItem;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    CadastroDeVendedores1: TMenuItem;
    Label14: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    DBComboBox2: TDBComboBox;
    Label15: TLabel;
    DBComboBox1: TDBComboBox;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    N2: TMenuItem;
    PesquisarCEP1: TMenuItem;
    PesquisarCEP1Button: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton6: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    PngSpeedButton9: TPngSpeedButton;
    PngSpeedButton10: TPngSpeedButton;
    PngSpeedButton11: TPngSpeedButton;
    PngSpeedButton12: TPngSpeedButton;
    PngSpeedButton13: TPngSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure CadastroDeCondicoesDePagamento1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure CadastroDeTaxas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure PesquisarCEP1Click(Sender: TObject);
    procedure DBEdit39Enter(Sender: TObject);
    procedure DBEdit39Exit(Sender: TObject);
    procedure DBEdit39KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure PngSpeedButton9Click(Sender: TObject);
    procedure PngSpeedButton10Click(Sender: TObject);
    procedure PngSpeedButton11Click(Sender: TObject);
    procedure PngSpeedButton12Click(Sender: TObject);
    procedure PngSpeedButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDeliveryDetalhes: TFormDeliveryDetalhes;

implementation
uses DataMod2, DB, ClientesLoc, DataModSearch, DataMod,
  Condicoes, Enderecos, Produtos, Fornecedores, Clientes, Funcoes1,
  Taxas, Main, DeliveryEnderecos, Vendedores, DeliveryLoc, EnderecosBuscaCEP,
  EnderecosRuasLoc, FuncoesFirenet, TaxasLoc;
{$R *.dfm}

procedure TFormDeliveryDetalhes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormDeliveryDetalhes.CadastroDeClientes1Click(Sender: TObject);
begin
  if not DM2.TBDeliverys.IsEmpty then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBDeliverysDLV_CLIENTE.Value;
    DM.TBClientes.Open;
  end;
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormDeliveryDetalhes.CadastroDeCondicoesDePagamento1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormDeliveryDetalhes.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormDeliveryDetalhes.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormDeliveryDetalhes.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormDeliveryDetalhes.CadastroDeTaxas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTaxas, FormTaxas);
  FormTaxas.ShowModal;
  FormTaxas.Free;
  FormTaxas:=nil;
end;

procedure TFormDeliveryDetalhes.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormDeliveryDetalhes.DBEdit12Exit(Sender: TObject);
begin
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormDeliveryDetalhes.DBEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormDeliveryDetalhes.DBEdit39Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormDeliveryDetalhes.DBEdit39Exit(Sender: TObject);
begin
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBDeliverys.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='     -   ') then
  begin
    DM2.TBDeliverysDLV_CEP.Clear;
    DM2.TBDeliverysDLV_ENDERECO.Clear;
    DM2.TBDeliverysDLV_BAIRRO.Clear;
    DM2.TBDeliverysDLV_ESTADO.Clear;
    DM2.TBDeliverysDLV_ESTADOCODIGO.Clear;
    DM2.TBDeliverysDLV_CIDADE.Clear;
    DM2.TBDeliverysDLV_CIDADECODIGO.Clear;
    //DM2.TBDeliverysDLV_PAIS.Clear;
    //DM2.TBDeliverysDLV_PAISCODIGO.Clear;
    Exit;
  end;
  if (DM2.TBDeliverys.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'     -   ') then
  begin
    DMS.QYRuas.Close;
    DMS.QYRuas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYRuas.Open;
    if not DMS.QYRuas.IsEmpty then
    begin
      DM2.TBDeliverysDLV_ENDERECO.Value:=DMS.QYRuasRUA_NOME.Value;
      DM2.TBDeliverysDLV_BAIRRO.Value:=DMS.QYRuasBAI_NOME.Value;
      DM2.TBDeliverysDLV_ESTADO.Value:=DMS.QYRuasESD_SIGLA.Value;
      DM2.TBDeliverysDLV_ESTADOCODIGO.Value:=DMS.QYRuasRUA_ESTADO.Value;
      DM2.TBDeliverysDLV_CIDADE.Value:=DMS.QYRuasCID_NOME.Value;
      DM2.TBDeliverysDLV_CIDADECODIGO.Value:=DMS.QYRuasRUA_CIDADE.Value;
      //DM2.TBDeliverysDLV_PAIS.Value:=DMS.QYRuasPAI_NOME.Value;
      //DM2.TBDeliverysDLV_PAISCODIGO.Value:=DMS.QYRuasRUA_PAIS.Value;
      DMS.QYRuas.FetchAll;
      //se tiver mais de uma rua com o mesmo CEP, abre a tela de localização de ruas já com a listagem das ruas.
      if DMS.QYRuas.RecordCount>1 then
      begin
        Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
        FormEnderecosRuasLoc.QYRuas.SQL.Clear;
        FormEnderecosRuasLoc.QYRuas.SQL.Add('select * from RUAS '+
                                            'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
                                            'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
                                            'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
                                            'left join PAISES on RUA_PAIS=PAI_CODIGO '+
                                            'where RUA_CEP like '+QuotedStr('%'+(Sender as TDBEdit).Text+'%')+' order by RUA_NOME');
        FormEnderecosRuasLoc.QYRuas.Active:=True;
        EnderecosRuasLoc.FocoNoGrid:=True;
        FormEnderecosRuasLoc.ShowModal;
        if EnderecosRuasLoc.Procurar then
        begin
          DM2.TBDeliverysDLV_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
          DM2.TBDeliverysDLV_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
          DM2.TBDeliverysDLV_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
          DM2.TBDeliverysDLV_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
          DM2.TBDeliverysDLV_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
          DM2.TBDeliverysDLV_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value;
          DM2.TBDeliverysDLV_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
          //DM2.TBDeliverysDLV_PAIS.Value:=FormEnderecosRuasLoc.QYRuasPAI_NOME.Value;
          //DM2.TBDeliverysDLV_PAISCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_PAIS.Value;
        end;
        FormEnderecosRuasLoc.Free;
        FormEnderecosRuasLoc:=nil;
      end;
    end else
    begin
      DM2.TBDeliverysDLV_CEP.Clear;
      DM2.TBDeliverysDLV_ENDERECO.Clear;
      DM2.TBDeliverysDLV_BAIRRO.Clear;
      DM2.TBDeliverysDLV_ESTADO.Clear;
      DM2.TBDeliverysDLV_ESTADOCODIGO.Clear;
      DM2.TBDeliverysDLV_CIDADE.Clear;
      DM2.TBDeliverysDLV_CIDADECODIGO.Clear;
      //DM2.TBDeliverysDLV_PAIS.Clear;
      //DM2.TBDeliverysDLV_PAISCODIGO.Clear;
      MessageDlg('Endereço não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYRuas.Close;
  end;
end;

procedure TFormDeliveryDetalhes.DBEdit39KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormDeliveryDetalhes.DBEdit39KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryDetalhes.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormDeliveryDetalhes.DBEdit4Exit(Sender: TObject);
var Qtde: Integer; Valor: Currency;
  procedure LimparCampos;
  begin
    DM2.TBDeliverysDLV_BAIRRO.Clear;
    DM2.TBDeliverysDLV_CEP.Clear;
    DM2.TBDeliverysDLV_CIDADE.Clear;
    DM2.TBDeliverysDLV_CIDADECODIGO.Clear;
    DM2.TBDeliverysDLV_CLIENTE.Clear;
    DM2.TBDeliverysDLV_COMPLEMENTO.Clear;
    DM2.TBDeliverysDLV_ENDERECO.Clear;
    DM2.TBDeliverysDLV_ESTADO.Clear;
    DM2.TBDeliverysDLV_ESTADOCODIGO.Clear;
    DM2.TBDeliverysDLV_FONE1.Clear;
    DM2.TBDeliverysDLV_FONE2.Clear;
    DM2.TBDeliverysDLV_NUMERO.Clear;
    DM2.TBDeliverysDLV_VENDEDOR.Clear;
    DM2.TBDeliverysCLI_NOME.Clear;
    DM2.TBDeliverysVEN_NOME.Clear;
    DM2.TBDeliverysVEN_NOMEENTREGADOR.Clear;
  end;
begin
  if (DM2.TBDeliverys.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCampos;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBDeliverys.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBDeliverysDLV_BAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM2.TBDeliverysDLV_CEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM2.TBDeliverysDLV_CIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM2.TBDeliverysDLV_CIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGO.Value;
      DM2.TBDeliverysDLV_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBDeliverysDLV_COMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM2.TBDeliverysDLV_ENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM2.TBDeliverysDLV_ENTREGADOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      DM2.TBDeliverysDLV_ESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM2.TBDeliverysDLV_ESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGO.Value;
      DM2.TBDeliverysDLV_FONE1.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM2.TBDeliverysDLV_FONE2.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM2.TBDeliverysDLV_NUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
      DM2.TBDeliverysDLV_VENDEDOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      DM2.TBDeliverysDLV_TAXA.Value:=DMS.QYClientesCLI_TAXA.Value;
      DM2.TBDeliverysDLV_TAXATIPO.Value:=DMS.QYClientesTAX_TIPO.Value;
      DM2.TBDeliverysDLV_TAXAVALOR.Value:=DMS.QYClientesTAX_VALOR.Value;
      DM2.TBDeliverysCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBDeliverysTAX_DESCRICAO.Value:=DMS.QYClientesTAX_DESCRICAO.Value;
    end else
    begin
      LimparCampos;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormDeliveryDetalhes.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormDeliveryDetalhes.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryDetalhes.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormDeliveryDetalhes.DBEdit5Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit5,DBEdit32,nil,DM2.TBDeliverys);
end;

procedure TFormDeliveryDetalhes.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormDeliveryDetalhes.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryDetalhes.DBEdit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormDeliveryDetalhes.DBEdit6Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit6,DBEdit8,nil,DM2.TBDeliverys);
end;

procedure TFormDeliveryDetalhes.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormDeliveryDetalhes.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryDetalhes.DBEdit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormDeliveryDetalhes.DBEdit9Exit(Sender: TObject);
begin
  if (DM2.TBDeliverys.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBDeliverysDLV_TAXA.Clear;
    DM2.TBDeliverysTAX_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBDeliverys.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYTaxas.Close;
    DMS.QYTaxas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYTaxas.Open;
    if not DMS.QYTaxas.IsEmpty then
    begin
      DM2.TBDeliverysDLV_TAXA.Value:=DMS.QYTaxasTAX_CODIGO.Value;
      DM2.TBDeliverysDLV_TAXATIPO.Value:=DMS.QYTaxasTAX_TIPO.Value;
      DM2.TBDeliverysDLV_TAXAVALOR.Value:=DMS.QYTaxasTAX_VALOR.Value;
      DM2.TBDeliverysTAX_DESCRICAO.Value:=DMS.QYTaxasTAX_DESCRICAO.Value;
    end else
    begin
      DM2.TBDeliverysDLV_TAXA.Clear;
      DM2.TBDeliverysDLV_TAXATIPO.Value:='V';
      DM2.TBDeliverysDLV_TAXAVALOR.Value:=0;
      DM2.TBDeliverysTAX_DESCRICAO.Clear;
      MessageDlg('Taxa não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYTaxas.Close;
  end;
end;

procedure TFormDeliveryDetalhes.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormDeliveryDetalhes.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryDetalhes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDeliveryDetalhes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBDeliverys.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormDeliveryDetalhes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDeliveryDetalhes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormDeliveryDetalhes);
  if (DM2.TBDeliverysDLV_STATUS.Value='A') or
     (DM2.TBDeliverysDLV_STATUS.Value='P') or
     (DM2.TBDeliverysDLV_STATUS.Value='E') then
  DM2.TBDeliverys.Edit;
end;

procedure TFormDeliveryDetalhes.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDeliveryLoc, FormDeliveryLoc);
  FormDeliveryLoc.ShowModal;
  if DeliveryLoc.Procurar then
  begin
    DM2.TBDeliverys.Close;
    DM2.TBDeliverys.SQL.Clear;
    DM2.TBDeliverys.SQL.Add('select DLV_BAIRRO, DLV_CARTAO, DLV_CEP, DLV_CIDADE, DLV_CIDADECODIGO, DLV_CLIENTE, DLV_CODIGO, DLV_COMPLEMENTO, '+
                            'DLV_DESCPORC, DLV_DESCVALOR, DLV_DINHEIRO, DLV_DTATUALIZACAO, DLV_DTCADASTRO, DLV_ENDERECO, DLV_ENTREGADOR, DLV_ESTADO, '+
                            'DLV_ESTADOCODIGO, DLV_FONE1, DLV_FONE2, DLV_HRATUALIZACAO, DLV_HRCADASTRO, DLV_MOTIVOCANCELAMENTO, DLV_MOTIVOINUTILIZACAO, '+
                            'DLV_NUMERO, DLV_OBSERVACOES, DLV_RETIRA, DLV_SEQUENCIAITEM, DLV_STATUS, DLV_TAXA, DLV_TAXATIPO, DLV_TAXAVALOR, DLV_TOTALITENS, '+
                            'DLV_TOTALTAXA, DLV_TROCO, DLV_USUARIO, DLV_VALORTOTAL, DLV_VENDEDOR, DLV_VIAAPP, CLI_NOME, TAX_DESCRICAO, A.VEN_NOME, '+
                            'B.VEN_NOME as VEN_NOMEENTREGADOR from DELIVERYS '+
                            'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO '+
                            'left join VENDEDORES A on DLV_VENDEDOR=A.VEN_CODIGO '+
                            'left join VENDEDORES B on DLV_ENTREGADOR=B.VEN_CODIGO '+
                            'left join TAXAS on DLV_TAXA=TAX_CODIGO '+
                            'where DLV_CODIGO=:codigo order by CLI_NOME, DLV_CODIGO');
    DM2.TBDeliverys.ParamByName('codigo').AsInteger:=FormDeliveryLoc.QYDeliverysDLV_CODIGO.Value;
    DM2.TBDeliverys.Open;
  end;
  FormDeliveryLoc.Free;
  FormDeliveryLoc:=nil;
end;

procedure TFormDeliveryDetalhes.PesquisarCEP1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosBuscaCEP, FormEnderecosBuscaCEP);
  FormEnderecosBuscaCEP.ShowModal;
  FormEnderecosBuscaCEP.Free;
  FormEnderecosBuscaCEP:=nil;
end;

procedure TFormDeliveryDetalhes.PngSpeedButton10Click(Sender: TObject);
begin
  DM2.TBDeliverysDLV_DINHEIRO.Value:=DM2.TBDeliverysDLV_DINHEIRO.Value+50;
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.PngSpeedButton11Click(Sender: TObject);
begin
  DM2.TBDeliverysDLV_DINHEIRO.Value:=DM2.TBDeliverysDLV_DINHEIRO.Value+100;
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.PngSpeedButton12Click(Sender: TObject);
begin
  DM2.TBDeliverysDLV_DINHEIRO.Value:=0;
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.PngSpeedButton13Click(Sender: TObject);
begin
  DM2.TBDeliverysDLV_CARTAO.Value:=DM2.TBDeliverysDLV_VALORTOTAL.Value;
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTaxasLoc, FormTaxasLoc);
  FormTaxasLoc.ShowModal;
  if TaxasLoc.Procurar=True then
  begin
    DM2.TBDeliverys.Edit;
    DM2.TBDeliverysDLV_TAXA.Value:=FormTaxasLoc.QYTaxasTAX_CODIGO.Value;
    DM2.TBDeliverysDLV_TAXATIPO.Value:=FormTaxasLoc.QYTaxasTAX_TIPO.Value;
    DM2.TBDeliverysDLV_TAXAVALOR.Value:=FormTaxasLoc.QYTaxasTAX_VALOR.Value;
    DM2.TBDeliverysTAX_DESCRICAO.Value:=FormTaxasLoc.QYTaxasTAX_DESCRICAO.Value;
  end;
  FormTaxasLoc.Free;
  FormTaxasLoc:=nil;
end;

procedure TFormDeliveryDetalhes.PngSpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit6,DBEdit8,nil,DM2.TBDeliverys);
end;

procedure TFormDeliveryDetalhes.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormDeliveryEnderecos, FormDeliveryEnderecos);
  FormDeliveryEnderecos.ShowModal;
  if DeliveryEnderecos.Procurar=True then
  begin
    DM2.TBDeliverys.Edit;
    DM2.TBDeliverysDLV_BAIRRO.Value:=FormDeliveryEnderecos.QYDeliverysDLV_BAIRRO.Value;
    DM2.TBDeliverysDLV_CEP.Value:=FormDeliveryEnderecos.QYDeliverysDLV_CEP.Value;
    DM2.TBDeliverysDLV_CIDADE.Value:=FormDeliveryEnderecos.QYDeliverysDLV_CIDADE.Value;
    DM2.TBDeliverysDLV_CIDADECODIGO.Value:=FormDeliveryEnderecos.QYDeliverysDLV_CIDADECODIGO.Value;
    DM2.TBDeliverysDLV_COMPLEMENTO.Value:=FormDeliveryEnderecos.QYDeliverysDLV_COMPLEMENTO.Value;
    DM2.TBDeliverysDLV_ENDERECO.Value:=FormDeliveryEnderecos.QYDeliverysDLV_ENDERECO.Value;
    DM2.TBDeliverysDLV_ESTADO.Value:=FormDeliveryEnderecos.QYDeliverysDLV_ESTADO.Value;
    DM2.TBDeliverysDLV_ESTADOCODIGO.Value:=FormDeliveryEnderecos.QYDeliverysDLV_ESTADOCODIGO.Value;
    DM2.TBDeliverysDLV_NUMERO.Value:=FormDeliveryEnderecos.QYDeliverysDLV_NUMERO.Value;
  end;
  FormDeliveryEnderecos.Free;
  FormDeliveryEnderecos:=nil;
end;

procedure TFormDeliveryDetalhes.PngSpeedButton4Click(Sender: TObject);
begin
  DBEdit41.SetFocus; //tira o foco do campo CEP.
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosRuasLoc.ShowModal;
  if EnderecosRuasLoc.Procurar then
  begin
    DM2.TBDeliverys.Edit;
    DM2.TBDeliverysDLV_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
    DM2.TBDeliverysDLV_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
    DM2.TBDeliverysDLV_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
    DM2.TBDeliverysDLV_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value; //tabela ibge.
    DM2.TBDeliverysDLV_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
    DM2.TBDeliverysDLV_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
    DM2.TBDeliverysDLV_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
    //DM2.TBDeliverysDLV_PAIS.Value:=FormEnderecosRuasLoc.QYRuasPAI_NOME.Value;
    //DM2.TBDeliverysDLV_PAISCODIGO.Value:=FormEnderecosRuasLoc.QYRuasPAI_CODIGO.Value;
  end;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormDeliveryDetalhes.PngSpeedButton5Click(Sender: TObject);
begin
  DM2.TBDeliverysDLV_DINHEIRO.Value:=DM2.TBDeliverysDLV_DINHEIRO.Value+1;
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.PngSpeedButton6Click(Sender: TObject);
begin
  DM2.TBDeliverysDLV_DINHEIRO.Value:=DM2.TBDeliverysDLV_DINHEIRO.Value+2;
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.PngSpeedButton7Click(Sender: TObject);
begin
  DM2.TBDeliverysDLV_DINHEIRO.Value:=DM2.TBDeliverysDLV_DINHEIRO.Value+5;
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.PngSpeedButton8Click(Sender: TObject);
begin
  DM2.TBDeliverysDLV_DINHEIRO.Value:=DM2.TBDeliverysDLV_DINHEIRO.Value+10;
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.PngSpeedButton9Click(Sender: TObject);
begin
  DM2.TBDeliverysDLV_DINHEIRO.Value:=DM2.TBDeliverysDLV_DINHEIRO.Value+20;
  DM2.CalcularTotaisDelivery(False);
end;

procedure TFormDeliveryDetalhes.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar=True then //as vezes não funciona se não colocar =true. será isso um bug?
  begin
    DM2.TBDeliverys.Edit;
    DM2.TBDeliverysDLV_BAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBDeliverysDLV_CEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM2.TBDeliverysDLV_CIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM2.TBDeliverysDLV_CIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM2.TBDeliverysDLV_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBDeliverysDLV_COMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM2.TBDeliverysDLV_ENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBDeliverysDLV_ESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM2.TBDeliverysDLV_ESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    DM2.TBDeliverysDLV_FONE1.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBDeliverysDLV_FONE2.Value:=FormClientesLoc.QYClientesCLI_FONE2.Value;
    DM2.TBDeliverysDLV_NUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM2.TBDeliverysDLV_TAXA.Value:=FormClientesLoc.QYClientesCLI_TAXA.Value;
    DM2.TBDeliverysDLV_TAXATIPO.Value:=FormClientesLoc.QYClientesTAX_TIPO.Value;
    DM2.TBDeliverysDLV_TAXAVALOR.Value:=FormClientesLoc.QYClientesTAX_VALOR.Value;
    DM2.TBDeliverysDLV_VENDEDOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    DM2.TBDeliverysVEN_NOME.Value:=FormClientesLoc.QYClientesVEN_NOME.Value;
    DM2.TBDeliverysVEN_NOMEENTREGADOR.Value:=FormClientesLoc.QYClientesVEN_NOME.Value;
    //...
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormDeliveryDetalhes.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit32,nil,DM2.TBDeliverys);
end;

initialization
  RegisterClass(TFormDeliveryDetalhes);

finalization
  UnRegisterClass(TFormDeliveryDetalhes);

end.
