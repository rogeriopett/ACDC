unit VendasRapidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ImgList, PngImageList, Menus, Buttons, PngSpeedButton,
  DBSBtn, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, PngBitBtn,
  System.ImageList, System.UITypes;

type
  TFormVendasRapidas = class(TForm)
    BitBtn1: TPngBitBtn;
    DBGrid1: TDBGrid;
    Label33: TLabel;
    Panel2: TPanel;
    Bevel4: TBevel;
    EliminarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Reiniciar1Button: TPngSpeedButton;
    GerarPedidoDeVenda1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    N4: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    TBVendasItens: TClientDataSet;
    TBVendasItensVEI_CODIGO: TIntegerField;
    TBVendasItensVEI_DESCRICAO: TStringField;
    TBVendasItensVEI_UNIDADE: TStringField;
    TBVendasItensVEI_QUANTIDADE: TFloatField;
    DSVendasItens: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    TBVendasItensVEI_PRODUTO: TIntegerField;
    Label2: TLabel;
    GerarPedidoDeVenda1: TMenuItem;
    Reiniciar1: TMenuItem;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
    PedidodeVendas1: TMenuItem;
    PedidoDeVendas1Button: TPngSpeedButton;
    Bevel1: TBevel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    TBVendasItensVEI_CODIGOBARRAS: TStringField;
    TBVendasItensVEI_CODIGOFAB: TStringField;
    TBVendasItensVEI_VALORUNIT: TFMTBCDField;
    TBVendasItensVEI_VALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TBVendasItensAfterInsert(DataSet: TDataSet);
    procedure TBVendasItensBeforePost(DataSet: TDataSet);
    procedure TBVendasItensAfterPost(DataSet: TDataSet);
    procedure GerarPedidoDeVenda1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure TBVendasItensBeforeDelete(DataSet: TDataSet);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Reiniciar1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure PedidodeVendas1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GerarVenda;
    //procedure GerarNota;
  public
    { Public declarations }
  end;

var
  FormVendasRapidas: TFormVendasRapidas;
  ValorTotal: Currency;

implementation
uses VendasRapidasItens, DataModSearch, DataMod, Funcoes1, Vendas, ProdutosLoc;

{$R *.dfm}

procedure TFormVendasRapidas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVendasRapidas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  BitBtn1.Click;
end;

procedure TFormVendasRapidas.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    Edit1.SetFocus;
    if Edit1.Text<>'' then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      if ComboBox1.Text='SISTEMA'    then Where:='PRO_CODIGO=:codigo' else
      if ComboBox1.Text='FABRICANTE' then Where:='PRO_CODIGOFAB=:codigo' else
      if ComboBox1.Text='BARRAS'     then Where:='PRO_CODIGOBARRAS=:codigo';
      DM.QYAux.SQL.Add('select PRO_CODIGO, PRO_CODIGOBARRAS, PRO_CODIGOFAB, PRO_NOME, PRO_PRECOVENDA from PRODUTOS where '+Where);
      DM.QYAux.ParamByName('codigo').AsString:=Edit1.Text;
      DM.QYAux.Open;
      if not DM.QYAux.IsEmpty then
      begin
        TBVendasItens.Insert;
        TBVendasItensVEI_CODIGOBARRAS.Value:=DM.QYAux.FieldByName('PRO_CODIGOBARRAS').AsString;
        TBVendasItensVEI_CODIGOFAB.Value:=DM.QYAux.FieldByName('PRO_CODIGOFAB').AsString;
        TBVendasItensVEI_DESCRICAO.Value:=DM.QYAux.FieldByName('PRO_NOME').AsString;
        TBVendasItensVEI_PRODUTO.Value:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
        TBVendasItensVEI_VALORUNIT.Value:=DM.QYAux.FieldByName('PRO_PRECOVENDA').AsExtended;

        DM.QYAux.FetchAll;
        //se tiver mais de um produto com o mesmo código, abre a tela de localização de produtos já com a listagem dos produtos.
        if DM.QYAux.RecordCount>1 then
        begin
          Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
          FormProdutosLoc.QYProdutos.SQL.Clear;
          FormProdutosLoc.QYProdutos.SQL.Add(
            'select '+ProdutosLoc.Campos+' from PRODUTOS '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where '+Where+' order by PRO_NOME'
          );
          FormProdutosLoc.QYProdutos.ParamByName('codigo').AsString:=Edit1.Text;
          FormProdutosLoc.QYProdutos.Open;
          ProdutosLoc.FocoNoGrid:=True;
          FormProdutosLoc.ShowModal;
          if ProdutosLoc.Procurar then
          begin
            TBVendasItensVEI_CODIGOBARRAS.Value:=DM.QYAux.FieldByName('PRO_CODIGOBARRAS').AsString;
            TBVendasItensVEI_CODIGOFAB.Value:=DM.QYAux.FieldByName('PRO_CODIGOFAB').AsString;
            TBVendasItensVEI_DESCRICAO.Value:=DM.QYAux.FieldByName('PRO_NOME').AsString;
            TBVendasItensVEI_PRODUTO.Value:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
            TBVendasItensVEI_VALORUNIT.Value:=DM.QYAux.FieldByName('PRO_PRECOVENDA').AsExtended;
          end;
        end;

        TBVendasItens.Post;
        Edit1.Text:='';
      end else
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
    end;
  end;
end;

procedure TFormVendasRapidas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasRapidas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if not TBVendasItens.IsEmpty then
  begin
    CanClose:=False;
    if MessageDlg('Deseja cancelar a venda?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    CanClose:=True;
  end;
end;

procedure TFormVendasRapidas.FormCreate(Sender: TObject);
begin
  TBVendasItens.Open;
  TBVendasItens.EmptyDataSet;
  ValorTotal:=0;
  Label2.Caption:=Format('%m',[ValorTotal]);
  ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(DM.TBParametrosPAR_TIPOCODIGOEXPRESSO.Value);
end;

procedure TFormVendasRapidas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasRapidas.GerarVenda;
begin
  DMS.QYNaturezas.Close;
  DMS.QYNaturezas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_CFOPPADRAO.Value;
  DMS.QYNaturezas.Open;
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=1; //DM.TBParametrosPAR_CLIENTEPADRAO.Value;
  DM.TBClientes.Open;
  DMS.QYCondicoes.Close;
  DMS.QYCondicoes.ParamByName('codigo').AsInteger:=DM.TBClientesCLI_CONDICAO.Value;
  DMS.QYCondicoes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBClientesCLI_ESTADO.Value,[]);

  DM.TBVendas.Insert;
  {$REGION 'Campos tabela vendas'}
  { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
  //CAMPOS COMENTADOS SAO ATRIBUIDOS NOS EVENTOS DA TABELA. -
  //DM.TBVendasVED_ALIQICMSCREDSN.Value:=
  DM.TBVendasVED_BAIRRO.Value:=DM.TBClientesCLI_BAIRRO.Value;
  //DM.TBVendasVED_BAIXADATA.Value:=
  //DM.TBVendasVED_BAIXAPOR.Value:=
  //DM.TBVendasVED_BASECOFINS.Value:=
  //DM.TBVendasVED_BASECOFINSST.Value:=
  //DM.TBVendasVED_BASEICMS.Value:=
  //DM.TBVendasVED_BASEICMSST.Value:=
  //DM.TBVendasVED_BASEII.Value:=
  //DM.TBVendasVED_BASEIPI.Value:=
  //DM.TBVendasVED_BASEISS.Value:=
  //DM.TBVendasVED_BASEPIS.Value:=
  //DM.TBVendasVED_BASEPISST.Value:=
  DM.TBVendasVED_CEP.Value:=DM.TBClientesCLI_CEP.Value;
  //DM.TBVendasVED_CFOP.Value:=
  //DM.TBVendasVED_CFOPDESC.Value:=
  DM.TBVendasVED_CIDADE.Value:=DM.TBClientesCLI_CIDADE.Value;
  DM.TBVendasVED_CIDADECODIGO.Value:=DM.TBClientesCLI_CIDADECODIGO.Value;
  DM.TBVendasVED_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  DM.TBVendasVED_CNPJ.Value:=DM.TBClientesCLI_CNPJ.Value;
  //TBVendasVED_CODIGO.Value:=
  //DM.TBVendasVED_CODIMPORTACAO.Value:=
  DM.TBVendasVED_COMISSAO.Value:=DM.TBVendedoresVEN_COMISSAO.Value; //tras a comissao do vendedor logado no sistema ao inves da comissao do vendedor do cliente.
  //DM.TBVendasVED_COMISSAOPOR.Value:=
  DM.TBVendasVED_COMPLEMENTO.Value:=DM.TBClientesCLI_COMPLEMENTO.Value;
  DM.TBVendasVED_CONDICAO.Value:=DM.TBClientesCLI_CONDICAO.Value;
  //DM.TBVendasVED_CONDICAOMEMO.Value:=
  //DM.TBVendasVED_CONFERIDO.Value:=
  //DM.TBVendasVED_CONFERIDODATA.Value:=
  //DM.TBVendasVED_CONFERIDOPOR.Value:=
  DM.TBVendasVED_CONTATO.Value:=DM.TBClientesCLI_CONTATO.Value;
  DM.TBVendasVED_CPF.Value:=DM.TBClientesCLI_CPF.Value;
  //DM.TBVendasVED_CUSTOTOTAL.Value:=
  //DM.TBVendasVED_DAV.Value:=
  //DM.TBVendasVED_DESCPORC.Value:=
  //DM.TBVendasVED_DESCPORCCLIENTE.Value:=
  //DM.TBVendasVED_DESCPORCCONDICAO.Value:=
  //DM.TBVendasVED_DESCVALOR.Value:=
  //DM.TBVendasVED_DESTACARIMPOSTOS.Value:=
  DM.TBVendasVED_DIAPREFERENCIAL.Value:=0;
  //DM.TBVendasVED_DTATUALIZACAO.Value:=
  //DM.TBVendasVED_DTCADASTRO.Value:=
  //DM.TBVendasVED_DTEMISSAO.Value:=
  //DM.TBVendasVED_DTENTREGA.Value:=
  //DM.TBVendasVED_DTPRESTSERVICO.Value:=
  //DM.TBVendasVED_DTSAIDA.Value:=
  DM.TBVendasVED_ENDERECO.Value:=DM.TBClientesCLI_ENDERECO.Value;
  //DM.TBVendasVED_ENTRADASAIDA.Value:=
  //DM.TBVendasVED_ENTREGUE.Value:=
  //DM.TBVendasVED_ESPECIE.Value:=
  DM.TBVendasVED_ESTADO.Value:=DM.TBClientesCLI_ESTADO.Value;
  DM.TBVendasVED_ESTADOCODIGO.Value:=DM.TBClientesCLI_ESTADOCODIGO.Value;
  //DM.TBVendasVED_EXLOCAL.Value:=
  DM.TBVendasVED_EXPEDIDOPOR.Value:=DM.UsuarioVendedor;
  //DM.TBVendasVED_EXUFSAIDA.Value:=
  DM.TBVendasVED_FONE1.Value:=DM.TBClientesCLI_FONE1.Value;
  DM.TBVendasVED_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
  //DM.TBVendasVED_FRETE.Value:=
  //DM.TBVendasVED_IDESTRANGEIRO.Value:=
  DM.TBVendasVED_IE.Value:=DM.TBClientesCLI_IE.Value;
  //DM.TBVendasVED_INFOADICFISCO.Value:=
  //DM.TBVendasVED_INFOCOMPLEMENTAR.Value:=
  //DM.TBVendasVED_LACRES.Value:=
  //DM.TBVendasVED_LUCROPORC.Value:=
  //DM.TBVendasVED_LUCROVALOR.Value:=
  //DM.TBVendasVED_MANUAL.Value:=
  //DM.TBVendasVED_MARCA.Value:=
  //DM.TBVendasVED_MOVIMENTAESTOQUE.Value:=
  //DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value:=
  //DM.TBVendasVED_NFCE.Value:=
  //DM.TBVendasVED_NFE.Value:=
  DM.TBVendasVED_NOME.Value:=DM.TBClientesCLI_NOME.Value;
  //DM.TBVendasVED_NOTA.Value:=
  DM.TBVendasVED_NUMERO.Value:=DM.TBClientesCLI_NUMERO.Value;
  //DM.TBVendasVED_OBSERVACOES.Value:=
  //DM.TBVendasVED_PAIS.Value:=
  //DM.TBVendasVED_PAISCODIGO.Value:=
  //DM.TBVendasVED_PEDIDOCLIENTE.Value:=
  //DM.TBVendasVED_PESOBRUTO.Value:=
  //DM.TBVendasVED_PESOLIQ.Value:=
  //DM.TBVendasVED_PRODUCAO.Value:=
  //DM.TBVendasVED_REBOQUEPLACA.Value:=
  //DM.TBVendasVED_REBOQUEPLACAUF.Value:=
  //DM.TBVendasVED_REBOQUERNTC.Value:=
  DM.TBVendasVED_RG.Value:=DM.TBClientesCLI_RG.Value;
  //DM.TBVendasVED_SEQUENCIAITEM.Value:=
  //DM.TBVendasVED_STATUS.Value:=
  //DM.TBVendasVED_TABELAPRECO.Value:=
  //DM.TBVendasVED_TOTALADUANA.Value:=
  //DM.TBVendasVED_TOTALBRUTO.Value:=
  //DM.TBVendasVED_TOTALCOFINS.Value:=
  //DM.TBVendasVED_TOTALCOFINSST.Value:=
  //DM.TBVendasVED_TOTALCOMISSAO.Value:=
  //DM.TBVendasVED_TOTALFCP.Value:=
  //DM.TBVendasVED_TOTALFCPST.Value:=
  //DM.TBVendasVED_TOTALICMS.Value:=
  //DM.TBVendasVED_TOTALICMSCREDSN.Value:=
  //DM.TBVendasVED_TOTALICMSST.Value:=
  //DM.TBVendasVED_TOTALICMSUFDEST.Value:=
  //DM.TBVendasVED_TOTALICMSUFREMET.Value:=
  //DM.TBVendasVED_TOTALII.Value:=
  //DM.TBVendasVED_TOTALIOF.Value:=
  //DM.TBVendasVED_TOTALIPI.Value:=
  //DM.TBVendasVED_TOTALISS.Value:=
  //DM.TBVendasVED_TOTALISSDEDUCAO.Value:=
  //DM.TBVendasVED_TOTALISSDESCCOND.Value:=
  //DM.TBVendasVED_TOTALISSDESCINCOND.Value:=
  //DM.TBVendasVED_TOTALISSOUTROS.Value:=
  //DM.TBVendasVED_TOTALISSRETENCAO.Value:=
  //DM.TBVendasVED_TOTALITENS.Value:=
  //DM.TBVendasVED_TOTALPIS.Value:=
  //DM.TBVendasVED_TOTALPISST.Value:=
  //DM.TBVendasVED_TOTALPRODUTOS.Value:=
  //DM.TBVendasVED_TOTALSERVICOS.Value:=
  //DM.TBVendasVED_TOTALTRIBUTOS.Value:=
  //DM.TBVendasVED_TOTALTRIBUTOSEST.Value:=
  //DM.TBVendasVED_TOTALTRIBUTOSFED.Value:=
  //DM.TBVendasVED_TOTALTRIBUTOSIMP.Value:=
  //DM.TBVendasVED_TOTALTRIBUTOSMUN.Value:=
  //DM.TBVendasVED_TRANSPCIDADE.Value:=
  //DM.TBVendasVED_TRANSPCNPJ.Value:=
  //DM.TBVendasVED_TRANSPCPF.Value:=
  //DM.TBVendasVED_TRANSPEMAIL.Value:=
  //DM.TBVendasVED_TRANSPENDERECO.Value:=
  //DM.TBVendasVED_TRANSPESTADO.Value:=
  //DM.TBVendasVED_TRANSPFONE.Value:=
  //DM.TBVendasVED_TRANSPIE.Value:=
  //DM.TBVendasVED_TRANSPNOME.Value:=
  //DM.TBVendasVED_TRANSPORTADORA.Value:=
  //DM.TBVendasVED_USUARIO.Value:=
  //DM.TBVendasVED_VALORDESPACES.Value:=
  //DM.TBVendasVED_VALORFRETE.Value:=
  //DM.TBVendasVED_VALORSEGURO.Value:=
  //DM.TBVendasVED_VALORTOTAL.Value:=
  //DM.TBVendasVED_VEICULOPLACA.Value:=
  //DM.TBVendasVED_VEICULOPLACAUF.Value:=
  //DM.TBVendasVED_VEICULORNTC.Value:=
  DM.TBVendasVED_VENDEDOR.Value:=DM.UsuarioVendedor;
  //DM.TBVendasVED_VIAINTERNET.Value:=
  //DM.TBVendasVED_VIAINTERNETSTATUS.Value:=
  //DM.TBVendasVED_VOLUMES.Value:=
  //DM.TBVendasVED_VOLUMESNUM.Value:=
  {$ENDREGION}
  DM.TBVendas.Post;
  TBVendasItens.DisableControls;
  TBVendasItens.First;
  while not TBVendasItens.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=TBVendasItensVEI_PRODUTO.Value;
    DM.TBProdutos.Open;

    DM.TBVendasItens.Insert;
    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    {$REGION 'Campos tabela vendasitens'}
    DM.TBVendasItensVEI_ALIQCOFINS.Value       :=DM.TBProdutosPRO_ALIQCOFINS.Value;
    DM.TBVendasItensVEI_ALIQCOFINSST.Value     :=DM.TBProdutosPRO_ALIQCOFINSST.Value;
    DM.TBVendasItensVEI_ALIQFCP.Value          :=DM.TBAliquotasALI_ALIQFCP.Value;
    DM.TBVendasItensVEI_ALIQFCPST.Value        :=DM.TBAliquotasALI_ALIQFCPST.Value;
    DM.TBVendasItensVEI_ALIQICMS.Value         :=DM.TBAliquotasALI_ALIQUOTA.Value;
    DM.TBVendasItensVEI_ALIQICMSADICST.Value   :=DM.TBAliquotasALI_ALIQICMSADICST.Value;
    DM.TBVendasItensVEI_ALIQICMSINTER.Value    :=DM.TBAliquotasALI_ALIQICMSINTER.Value;
    DM.TBVendasItensVEI_ALIQICMSINTERPART.Value:=DM.TBAliquotasALI_ALIQICMSINTERPART.Value;
    DM.TBVendasItensVEI_ALIQICMSRED.Value      :=DM.TBAliquotasALI_ALIQICMSRED.Value;
    DM.TBVendasItensVEI_ALIQICMSST.Value       :=DM.TBAliquotasALI_ALIQICMSST.Value;
    //DM.TBVendasItensVEI_ALIQII.Value:=
    DM.TBVendasItensVEI_ALIQIPI.Value          :=DM.TBProdutosPRO_ALIQIPI.Value;
    DM.TBVendasItensVEI_ALIQISS.Value          :=DM.TBProdutosPRO_ALIQISS.Value;
    DM.TBVendasItensVEI_ALIQPIS.Value          :=DM.TBProdutosPRO_ALIQPIS.Value;
    DM.TBVendasItensVEI_ALIQPISST.Value        :=DM.TBProdutosPRO_ALIQPISST.Value;
    DM.TBVendasItensVEI_ALMOXARIFADO.Value     :=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
    //DM.TBVendasItensVEI_BASECOFINS.Value:=
    //DM.TBVendasItensVEI_BASECOFINSST.Value:=
    //DM.TBVendasItensVEI_BASEICMS.Value:=
    //DM.TBVendasItensVEI_BASEICMSRED.Value:=
    //DM.TBVendasItensVEI_BASEICMSST.Value:=
    //DM.TBVendasItensVEI_BASEII.Value:=
    //DM.TBVendasItensVEI_BASEIPI.Value:=
    //DM.TBVendasItensVEI_BASEISS.Value:=
    //DM.TBVendasItensVEI_BASEPIS.Value:=
    //DM.TBVendasItensVEI_BASEPISST.Value:=
    //DM.TBVendasItensVEI_BENEFICIO.Value:=
    DM.TBVendasItensVEI_CEST.Value                :=DM.TBProdutosPRO_CEST.Value;
    DM.TBVendasItensVEI_CFOP.Value                :=DM.TBParametrosPAR_CFOPPADRAO.Value;
    //DM.TBVendasItensVEI_CIDADEISS.Value:=
    DM.TBVendasItensVEI_CLASSFISCAL.Value         :=DM.TBProdutosPRO_CLASSFISCAL.Value;
    //DM.TBVendasItensVEI_CODIGO.Value:=
    DM.TBVendasItensVEI_CODIGOBARRAS.Value        :=DM.TBProdutosPRO_CODIGOBARRAS.Value;
    DM.TBVendasItensVEI_CODIGOFAB.Value           :=DM.TBProdutosPRO_CODIGOFAB.Value;
    if DM.TBParametrosPAR_COMISSAOPOR.Value='V' then //se for pela comissao do vendedor, utiliza o valor que está na capa, senão utiliza o valor que está no cadastro do produto.
    DM.TBVendasItensVEI_COMISSAO.Value            :=DM.TBVendasVED_COMISSAO.Value else
    DM.TBVendasItensVEI_COMISSAO.Value            :=DM.TBProdutosPRO_COMISSAO.Value;
    //DM.TBVendasItensVEI_COMPLEMENTO.Value:=
    DM.TBVendasItensVEI_COMPOEBASEICMS.Value      :=DM.TBProdutosPRO_COMPOEBASEICMS.Value;
    DM.TBVendasItensVEI_COMPOEBASEICMSST.Value    :=DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
    //DM.TBVendasItensVEI_COMPOETOTAL.Value:=
    DM.TBVendasItensVEI_CONVERSAO.Value           :=DM.TBProdutosPRO_CONVERSAO.Value;
    DM.TBVendasItensVEI_CSTCOFINS.Value           :=DM.TBProdutosPRO_CSTCOFINS.Value;
    DM.TBVendasItensVEI_CSTICMS.Value             :=DM.TBProdutosPRO_CSTICMS.Value;
    DM.TBVendasItensVEI_CSTIPI.Value              :=DM.TBProdutosPRO_CSTIPI.Value;
    DM.TBVendasItensVEI_CSTPIS.Value              :=DM.TBProdutosPRO_CSTPIS.Value;
    DM.TBVendasItensVEI_DESCMAX.Value             :=DM.TBProdutosPRO_DESCMAX.Value;
    //DM.TBVendasItensVEI_DESCPORC.Value:=
    DM.TBVendasItensVEI_DESCRICAO.Value           :=TBVendasItensVEI_DESCRICAO.Value;
    //DM.TBVendasItensVEI_DESCVALOR.Value:=
    //DM.TBVendasItensVEI_DICNPJ.Value:=
    //DM.TBVendasItensVEI_DIDATA.Value:=
    //DM.TBVendasItensVEI_DIDESEMBARACODATA.Value:=
    //DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value:=
    //DM.TBVendasItensVEI_DIDESEMBARACOUF.Value:=
    //DM.TBVendasItensVEI_DIEXPORTADORCOD.Value:=
    //DM.TBVendasItensVEI_DIINTERMEDIO.Value:=
    //DM.TBVendasItensVEI_DINUMERO.Value:=
    //DM.TBVendasItensVEI_DITERCEIROUF.Value:=
    //DM.TBVendasItensVEI_DITRANSPORTE.Value:=
    //DM.TBVendasItensVEI_DIVALORAFRMM.Value:=
    //DM.TBVendasItensVEI_DTENTREGA.Value:=
    DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value    :=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
    //DM.TBVendasItensVEI_EXCHAVEACESSO.Value:=
    //DM.TBVendasItensVEI_EXDRAWBACK.Value:=
    //DM.TBVendasItensVEI_EXQUANTIDADE.Value:=
    //DM.TBVendasItensVEI_EXREGISTRO.Value:=
    DM.TBVendasItensVEI_FCI.Value                 :=DM.TBProdutosPRO_FCI.Value;
    DM.TBVendasItensVEI_INCENTIVOISS.Value        :=DM.TBProdutosPRO_INCENTIVOISS.Value;
    DM.TBVendasItensVEI_INDICADORISS.Value        :=DM.TBProdutosPRO_INDICADORISS.Value;
    //DM.TBVendasItensVEI_INFOADICIONAL.Value:=
    DM.TBVendasItensVEI_LOCALIZACAO.Value         :=DM.TBProdutosPRO_LOCALIZACAO.Value;
    //DM.TBVendasItensVEI_LOTE.Value:=
    //DM.TBVendasItensVEI_LUCROPORC.Value:=
    //DM.TBVendasItensVEI_LUCROVALOR.Value:=
    DM.TBVendasItensVEI_MODICMS.Value             :=DM.TBProdutosPRO_MODICMS.Value;
    DM.TBVendasItensVEI_MODICMSST.Value           :=DM.TBProdutosPRO_MODICMSST.Value;
    DM.TBVendasItensVEI_ORIGEM.Value              :=DM.TBProdutosPRO_ORIGEM.Value;
    //DM.TBVendasItensVEI_PAISISS.Value:=
    //DM.TBVendasItensVEI_PEDIDOCLIENTE.Value:=
    //DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value:=
    DM.TBVendasItensVEI_PESO.Value                :=DM.TBProdutosPRO_PESO.Value;
    //DM.TBVendasItensVEI_PESOTOTAL.Value:=
    DM.TBVendasItensVEI_PRECOCUSTO.Value          :=DM.TBProdutosPRO_PRECOCUSTO.Value;
    //DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value:=
    //DM.TBVendasItensVEI_PROCESSOISS.Value:=
    DM.TBVendasItensVEI_PRODUTO.Value             :=TBVendasItensVEI_PRODUTO.Value;
    DM.TBVendasItensVEI_PRODUTOREAL.Value         :=DM.TBProdutosPRO_PRODUTOREAL.Value;
    DM.TBVendasItensVEI_QUANTIDADE.Value          :=TBVendasItensVEI_QUANTIDADE.Value;
    //DM.TBVendasItensVEI_QUANTIDADETROCA.Value:=
    //DM.TBVendasItensVEI_SEQUENCIA.Value:=
    //DM.TBVendasItensVEI_SERVICOISS.Value:=
    DM.TBVendasItensVEI_SOMACOFINSST.Value        :='N';
    DM.TBVendasItensVEI_SOMAPISST.Value           :='N';
    DM.TBVendasItensVEI_TIPO.Value                :=DM.TBProdutosPRO_TIPO.Value;
    DM.TBVendasItensVEI_TIPOISS.Value             :=DM.TBProdutosPRO_TIPOISS.Value;
    DM.TBVendasItensVEI_UNIDADE.Value             :=DM.TBProdutosPRO_UNIDADE.Value;
    //DM.TBVendasItensVEI_VALORACESSORIAS.Value:=
    //DM.TBVendasItensVEI_VALORADUANA.Value:=
    //DM.TBVendasItensVEI_VALORCOFINS.Value:=
    //DM.TBVendasItensVEI_VALORCOFINSST.Value:=
    //DM.TBVendasItensVEI_VALORCOMISSAO.Value:=
    //DM.TBVendasItensVEI_VALORFCP.Value:=
    //DM.TBVendasItensVEI_VALORFCPST.Value:=
    //DM.TBVendasItensVEI_VALORFRETE.Value:=
    //DM.TBVendasItensVEI_VALORICMS.Value:=
    //DM.TBVendasItensVEI_VALORICMSCREDSN.Value:=
    //DM.TBVendasItensVEI_VALORICMSST.Value:=
    //DM.TBVendasItensVEI_VALORICMSUFDEST.Value:=
    //DM.TBVendasItensVEI_VALORICMSUFREMET.Value:=
    //DM.TBVendasItensVEI_VALORII.Value:=
    //DM.TBVendasItensVEI_VALORIOF.Value:=
    //DM.TBVendasItensVEI_VALORIPI.Value:=
    //DM.TBVendasItensVEI_VALORISS.Value:=
    //DM.TBVendasItensVEI_VALORISSDEDUCAO.Value:=
    //DM.TBVendasItensVEI_VALORISSDESCCOND.Value:=
    //DM.TBVendasItensVEI_VALORISSDESCINCOND.Value:=
    //DM.TBVendasItensVEI_VALORISSOUTROS.Value:=
    //DM.TBVendasItensVEI_VALORISSRETENCAO.Value:=
    //DM.TBVendasItensVEI_VALORPIS.Value:=
    //DM.TBVendasItensVEI_VALORPISST.Value:=
    //DM.TBVendasItensVEI_VALORSEGURO.Value:=
    //DM.TBVendasItensVEI_VALORTOTAL.Value:=
    //DM.TBVendasItensVEI_VALORTOTALBRUTO.Value:=
    //DM.TBVendasItensVEI_VALORTRIBUTOS.Value:=
    //DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value:=
    //DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value:=
    //DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value:=
    //DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value:=
    DM.TBVendasItensVEI_VALORUNIT.Value           :=TBVendasItensVEI_VALORUNIT.Value;
    DM.TBVendasItensVEI_VENDA.Value               :=DM.TBVendasVED_CODIGO.Value;

    //campos da reforma tributária.
    DM.TBRegrasFiscais.Close;
    DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_REGRAFISCAL.Value;
    DM.TBRegrasFiscais.Open;

    DM.TBVendasItensVEI_ALIQCBS.Value             :=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
    //DM.TBVendasItensVEI_ALIQCBSCREDPRES.Value:=
    //DM.TBVendasItensVEI_ALIQCBSDIF.Value:=
    //DM.TBVendasItensVEI_ALIQCBSEFE.Value:=
    DM.TBVendasItensVEI_ALIQCBSRED.Value          :=DM.TBRegrasFiscaisCLT_ALIQCBSRED_IC.Value;
    //DM.TBVendasItensVEI_ALIQIBSCREDPRES.Value:=
    DM.TBVendasItensVEI_ALIQIBSMUN.Value          :=DM.TBRegrasFiscaisRGF_ALIQIBSMUN.Value;
    //DM.TBVendasItensVEI_ALIQIBSMUNDIF.Value:=
    //DM.TBVendasItensVEI_ALIQIBSMUNEFE.Value:=
    DM.TBVendasItensVEI_ALIQIBSMUNRED.Value       :=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
    DM.TBVendasItensVEI_ALIQIBSUF.Value           :=DM.TBAliquotasALI_ALIQIBSUF.Value; //alterado para pegar da tabela de aliquotas. DM.TBRegrasFiscaisRGF_ALIQIBSUF.Value;
    //DM.TBVendasItensVEI_ALIQIBSUFDIF.Value:=
    //DM.TBVendasItensVEI_ALIQIBSUFEFE.Value:=
    DM.TBVendasItensVEI_ALIQIBSUFRED.Value        :=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
    DM.TBVendasItensVEI_ALIQIS.Value              :=DM.TBRegrasFiscaisRGF_ALIQIS.Value;
    //DM.TBVendasItensVEI_ALIQISESP.Value:=
    //DM.TBVendasItensVEI_BASEIBSCBS.Value:=
    //DM.TBVendasItensVEI_BASEIS.Value:=
    //DM.TBVendasItensVEI_CBSCREDITOPRES.Value:=
    DM.TBVendasItensVEI_CLASSTRIBIBSCBS.Value     :=DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
    DM.TBVendasItensVEI_CLASSTRIBIS.Value         :=DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value;
    DM.TBVendasItensVEI_CSTIBSCBS.Value           :=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value,1,3);
    DM.TBVendasItensVEI_CSTIS.Value               :=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value,1,3);
    DM.TBVendasItensVEI_IBSCREDITOPRES.Value      :=DM.TBRegrasFiscaisRGF_CREDITOPRES.Value;
    //DM.TBVendasItensVEI_VALORCBS.Value:=
    //DM.TBVendasItensVEI_VALORCBSCREDPRES.Value:=
    //DM.TBVendasItensVEI_VALORCBSCREDPRESSUS.Value:=
    //DM.TBVendasItensVEI_VALORCBSDEV.Value:=
    //DM.TBVendasItensVEI_VALORCBSDIF.Value:=
    //DM.TBVendasItensVEI_VALORIBS.Value:=
    //DM.TBVendasItensVEI_VALORIBSCREDPRES.Value:=
    //DM.TBVendasItensVEI_VALORIBSCREDPRESSUS.Value:=
    //DM.TBVendasItensVEI_VALORIBSMUN.Value:=
    //DM.TBVendasItensVEI_VALORIBSMUNDEV.Value:=
    //DM.TBVendasItensVEI_VALORIBSMUNDIF.Value:=
    //DM.TBVendasItensVEI_VALORIBSUF.Value:=
    //DM.TBVendasItensVEI_VALORIBSUFDEV.Value:=
    //DM.TBVendasItensVEI_VALORIBSUFDIF.Value:=
    //DM.TBVendasItensVEI_VALORIS.Value:=
    {$ENDREGION}
    DM.TBVendasItens.Post;
    TBVendasItens.Next;
  end;
  TBVendasItens.EnableControls;
end;

procedure TFormVendasRapidas.Localizar1Click(Sender: TObject);
begin
  TBVendasItens.Insert;
  Application.CreateForm(TFormVendasRapidasItens, FormVendasRapidasItens);
  FormVendasRapidasItens.ShowModal;
  FormVendasRapidasItens.Free;
  FormVendasRapidasItens:=nil;
  Edit1.SetFocus;
end;

procedure TFormVendasRapidas.PedidodeVendas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendas, FormVendas);
  FormVendas.ShowModal;
  FormVendas.Free;
  FormVendas:=nil;
end;

procedure TFormVendasRapidas.GerarPedidoDeVenda1Click(Sender: TObject);
begin
  AbortIf(TBVendasItens.IsEmpty,'Nenhum item para gerar pedido de venda.');

  if MessageDlg('Deseja gerar um pedido de vendas com os itens atuais?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    GerarVenda;
    TBVendasItens.EmptyDataSet;
    Application.CreateForm(TFormVendas, FormVendas);
    FormVendas.ShowModal;
    FormVendas.Free;
    FormVendas:=nil;
  end;
end;

procedure TFormVendasRapidas.Reiniciar1Click(Sender: TObject);
begin
  if not TBVendasItens.IsEmpty then
  begin
    if MessageDlg('Deseja reiniciar a venda?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      TBVendasItens.EmptyDataSet;
      ValorTotal:=0;
      Label2.Caption:=Format('%m',[ValorTotal]);
      Edit1.SetFocus;
    end;
  end;
end;

procedure TFormVendasRapidas.TBVendasItensAfterInsert(DataSet: TDataSet);
begin
  TBVendasItensVEI_QUANTIDADE.Value:=1;
end;

procedure TFormVendasRapidas.TBVendasItensAfterPost(DataSet: TDataSet);
begin
  ValorTotal:=ValorTotal+TBVendasItensVEI_VALORTOTAL.AsExtended;
  Label2.Caption:=Format('%m',[ValorTotal]);
end;

procedure TFormVendasRapidas.TBVendasItensBeforeDelete(DataSet: TDataSet);
begin
  ValorTotal:=ValorTotal-TBVendasItensVEI_VALORTOTAL.AsExtended;
  Label2.Caption:=Format('%m',[ValorTotal]);
end;

procedure TFormVendasRapidas.TBVendasItensBeforePost(DataSet: TDataSet);
begin
  TBVendasItensVEI_VALORTOTAL.Value:=TBVendasItensVEI_QUANTIDADE.Value*TBVendasItensVEI_VALORUNIT.Value;
end;

end.
