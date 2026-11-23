unit VendasUnificar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, PngSpeedButton,
  Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  PngBitBtn, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormVendasUnificar = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    DSVendas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label9: TLabel;
    SpeedButton2: TPngSpeedButton;
    Edit6: TEdit;
    Edit7: TEdit;
    DBGrid2: TDBGrid;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn6: TPngBitBtn;
    TBSelecao: TClientDataSet;
    DSSelecao: TDataSource;
    TBSelecaoVED_CODIGO: TIntegerField;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    QYVendas: TFDQuery;
    TRVendas: TFDTransaction;
    QYVendasVED_CODIGO: TIntegerField;
    QYVendasVED_DTEMISSAO: TDateField;
    QYVendasVED_PEDIDOCLIENTE: TStringField;
    QYVendasVED_VENDEDOR: TIntegerField;
    QYVendasVED_VALORTOTAL: TFMTBCDField;
    QYVendasVED_STATUS: TStringField;
    QYVendasVED_USUARIO: TStringField;
    procedure Edit6Enter(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasUnificar: TFormVendasUnificar;

implementation
uses ClientesLoc, DataModSearch, DataMod, Funcoes1;
{$R *.dfm}

procedure TFormVendasUnificar.DBGrid1DblClick(Sender: TObject);
begin
  if not QYVendas.IsEmpty then
  PngBitBtn3.Click;
end;

procedure TFormVendasUnificar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    PngBitBtn3.Click;
  end;
end;

procedure TFormVendasUnificar.DBGrid2DblClick(Sender: TObject);
begin
  if not TBSelecao.IsEmpty then
  PngBitBtn4.Click;
end;

procedure TFormVendasUnificar.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    PngBitBtn4.Click;
  end;
end;

procedure TFormVendasUnificar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    AbortIf(Edit7.Text='','Selecione o cliente.');

    if Trim(Edit1.Text)='' then Exit;
    QYVendas.Close;
    QYVendas.SQL.Clear;
    QYVendas.SQL.Add('select VED_CODIGO, VED_DTEMISSAO, VED_PEDIDOCLIENTE, VED_VENDEDOR, VED_VALORTOTAL, VED_STATUS, VED_USUARIO from VENDAS '+
                     'where VED_CLIENTE=:cliente and VED_CODIGO=:codigo order by VED_CODIGO');
    QYVendas.ParamByName('cliente').AsInteger:=StrToInt(Edit6.Text);
    QYVendas.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
    QYVendas.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVendasUnificar.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    AbortIf(Edit7.Text='','Selecione o cliente.');

    if Trim(Edit4.Text)='' then Exit;
    QYVendas.Close;
    QYVendas.SQL.Clear;
    QYVendas.SQL.Add('select VED_CODIGO, VED_CLIENTE, VED_DTEMISSAO, VED_PEDIDOCLIENTE, VED_VENDEDOR, VED_VALORTOTAL, VED_STATUS, VED_USUARIO, CLI_NOME from VENDAS '+
                     'where VED_CLIENTE=:cliente and VED_CODIMPORTACAO like :codimp order by VED_CODIMPORTACAO');
    QYVendas.ParamByName('cliente').AsInteger:=StrToInt(Edit6.Text);
    QYVendas.ParamByName('codimp').AsString:=QuotedStr(Edit4.Text+'%');
    QYVendas.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVendasUnificar.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    AbortIf(Edit7.Text='','Selecione o cliente.');

    if Trim(Edit5.Text)='' then Exit;
    QYVendas.Close;
    QYVendas.SQL.Clear;
    QYVendas.SQL.Add('select VED_CODIGO, VED_CLIENTE, VED_DTEMISSAO, VED_PEDIDOCLIENTE, VED_VENDEDOR, VED_VALORTOTAL, VED_STATUS, VED_USUARIO, CLI_NOME from VENDAS '+
                     'where VED_CLIENTE=:cliente and VED_PEDIDOCLIENTE like :pedido order by VED_PEDIDOCLIENTE, CLI_NOME');
    QYVendas.ParamByName('cliente').AsInteger:=StrToInt(Edit6.Text);
    QYVendas.ParamByName('pedido').AsString:=QuotedStr(Edit5.Text+'%');
    QYVendas.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVendasUnificar.Edit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasUnificar.Edit6Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit6.Clear;
    Edit7.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      Edit6.Text:=IntToStr(DMS.QYClientesCLI_CODIGO.Value);
      Edit7.Text:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      Edit6.Clear;
      Edit7.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormVendasUnificar.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormVendasUnificar.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasUnificar.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
  ComboBox1.ItemIndex:=0;
end;

procedure TFormVendasUnificar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasUnificar.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormVendasUnificar.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    AbortIf(Edit7.Text='','Selecione o cliente.');

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
    QYVendas.Close;
    QYVendas.SQL.Clear;
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
    QYVendas.SQL.Add('select VED_CODIGO, VED_DTEMISSAO, VED_PEDIDOCLIENTE, VED_VENDEDOR, VED_VALORTOTAL, VED_STATUS, VED_USUARIO from VENDAS '+
                     'where VED_CLIENTE=:cliente and (VED_DTEMISSAO between :datainicial and :datafinal) '+Where+' order by VED_DTEMISSAO desc, VED_CODIGO desc');
    QYVendas.ParamByName('cliente').AsInteger:=StrToInt(Edit6.Text);
    QYVendas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYVendas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYVendas.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVendasUnificar.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(Edit7.Text='','Selecione o Cliente.');

  if MessageDlg('Deseja criar um novo pedido de venda para o cliente '+Edit7.Text+' unificando os '+IntToStr(TBSelecao.RecordCount)+' selecionados?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;

    //insere um novo pedido de venda.
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=StrToInt(Edit6.Text);
    DM.TBClientes.Open;
    DM.TBVendas.Insert;
    DM.TBVendasVED_BAIRRO.Value:=DM.TBClientesCLI_BAIRRO.Value;
    DM.TBVendasVED_CEP.Value:=DM.TBClientesCLI_CEP.Value;
    DM.TBVendasVED_CIDADE.Value:=DM.TBClientesCLI_CIDADE.Value;
    DM.TBVendasVED_CIDADECODIGO.Value:=DM.TBClientesCLI_CIDADECODIGO.Value;
    DM.TBVendasVED_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
    DM.TBVendasVED_CNPJ.Value:=DM.TBClientesCLI_CNPJ.Value;
    DM.TBVendasVED_COMPLEMENTO.Value:=DM.TBClientesCLI_COMPLEMENTO.Value;
    DM.TBVendasVED_CONDICAO.Value:=DM.TBClientesCLI_CONDICAO.Value;
    DM.TBVendasVED_CONTATO.Value:=DM.TBClientesCLI_CONTATO.Value;
    DM.TBVendasVED_CPF.Value:=DM.TBClientesCLI_CPF.Value;
    DM.TBVendasVED_DESCPORCCLIENTE.Value:=DM.TBClientesCLI_DESCONTO.Value;
    DM.TBVendasVED_ENDERECO.Value:=DM.TBClientesCLI_ENDERECO.Value;
    DM.TBVendasVED_ESTADO.Value:=DM.TBClientesCLI_ESTADO.Value;
    DM.TBVendasVED_ESTADOCODIGO.Value:=DM.TBClientesCLI_ESTADOCODIGO.Value;
    if DM.TBParametrosPAR_EXPEDIDOPORVENDEDOR.Value='S' then
    DM.TBVendasVED_EXPEDIDOPOR.Value:=DM.TBClientesCLI_VENDEDOR.Value else
    DM.TBVendasVED_EXPEDIDOPOR.Value:=DM.UsuarioVendedor;
    DM.TBVendasVED_FONE1.Value:=DM.TBClientesCLI_FONE1.Value;
    DM.TBVendasVED_IDESTRANGEIRO.Value:=DM.TBClientesCLI_IDESTRANGEIRO.Value;
    DM.TBVendasVED_IE.Value:=DM.TBClientesCLI_IE.Value;
    DM.TBVendasVED_NOME.Value:=DM.TBClientesCLI_NOME.Value;
    DM.TBVendasVED_NUMERO.Value:=DM.TBClientesCLI_NUMERO.Value;
    DM.TBVendasVED_PAIS.Value:=DM.TBClientesCLI_PAIS.Value;
    DM.TBVendasVED_PAISCODIGO.Value:=DM.TBClientesCLI_PAISCODIGO.Value;
    DM.TBVendasVED_RG.Value:=DM.TBClientesCLI_RG.Value;
    DM.TBVendasVED_SUFRAMA.Value:=DM.TBClientesCLI_SUFRAMA.Value;
    DM.TBVendasVED_TABELAPRECO.Value:=DM.TBClientesCLI_TABELAPRECO.Value;
    DM.TBVendasVED_VENDEDOR.Value:=DM.TBClientesCLI_VENDEDOR.Value;
    //se cliente é fora do estado, seta a CFOP para fora do estado.
    if DM.TBVendasVED_ESTADO.Value<>DM.TBEmpresaEMP_ESTADO.Value then
    DM.TBVendasVED_CFOP.Value:=DM.TBParametrosPAR_CFOPFORAPADRAO.Value else
    DM.TBVendasVED_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
    DM.TBVendas.Post;

    //busca os itens dos pedidos e inclui no novo pedido.
    TBSelecao.First;
    TBSelecao.DisableControls;
    while not TBSelecao.eof do
    begin
      DM.QYAux2.Close; //qyaux é utilizado pela tabela de venda tb.
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add('select * from VENDASITENS where VEI_VENDA=:venda order by VEI_SEQUENCIA');
      DM.QYAux2.ParamByName('venda').AsInteger:=TBSelecaoVED_CODIGO.Value;
      DM.QYAux2.Open;
      DM.QYAux2.First;
      while not DM.QYAux2.Eof do
      begin
        DM.TBVendasItens.Insert;
        { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
        {$REGION 'Campos VENDAS ITENS'}
        DM.TBVendasItensVEI_ALIQCOFINS.Value          :=DM.QYAux2.FieldByName('VEI_ALIQCOFINS').AsExtended;
        DM.TBVendasItensVEI_ALIQCOFINSST.Value        :=DM.QYAux2.FieldByName('VEI_ALIQCOFINSST').AsExtended;
        DM.TBVendasItensVEI_ALIQFCP.Value             :=DM.QYAux2.FieldByName('VEI_ALIQFCP').AsExtended;
        DM.TBVendasItensVEI_ALIQFCPST.Value           :=DM.QYAux2.FieldByName('VEI_ALIQFCPST').AsExtended;
        DM.TBVendasItensVEI_ALIQICMS.Value            :=DM.QYAux2.FieldByName('VEI_ALIQICMS').AsExtended;
        DM.TBVendasItensVEI_ALIQICMSADICST.Value      :=DM.QYAux2.FieldByName('VEI_ALIQICMSADICST').AsExtended;
        DM.TBVendasItensVEI_ALIQICMSINTER.Value       :=DM.QYAux2.FieldByName('VEI_ALIQICMSINTER').AsExtended;
        DM.TBVendasItensVEI_ALIQICMSINTERPART.Value   :=DM.QYAux2.FieldByName('VEI_ALIQICMSINTERPART').AsExtended;
        DM.TBVendasItensVEI_ALIQICMSRED.Value         :=DM.QYAux2.FieldByName('VEI_ALIQICMSRED').AsExtended;
        DM.TBVendasItensVEI_ALIQICMSST.Value          :=DM.QYAux2.FieldByName('VEI_ALIQICMSST').AsExtended;
        DM.TBVendasItensVEI_ALIQICMSSTRET.Value       :=DM.QYAux2.FieldByName('VEI_ALIQICMSSTRET').AsExtended;
        DM.TBVendasItensVEI_ALIQII.Value              :=DM.QYAux2.FieldByName('VEI_ALIQII').AsExtended;
        DM.TBVendasItensVEI_ALIQIPI.Value             :=DM.QYAux2.FieldByName('VEI_ALIQIPI').AsExtended;
        DM.TBVendasItensVEI_ALIQISS.Value             :=DM.QYAux2.FieldByName('VEI_ALIQISS').AsExtended;
        DM.TBVendasItensVEI_ALIQPIS.Value             :=DM.QYAux2.FieldByName('VEI_ALIQPIS').AsExtended;
        DM.TBVendasItensVEI_ALIQPISST.Value           :=DM.QYAux2.FieldByName('VEI_ALIQPISST').AsExtended;
        DM.TBVendasItensVEI_ALMOXARIFADO.Value        :=DM.QYAux2.FieldByName('VEI_ALMOXARIFADO').AsInteger;
        DM.TBVendasItensVEI_BASECOFINS.Value          :=DM.QYAux2.FieldByName('VEI_BASECOFINS').AsExtended;
        DM.TBVendasItensVEI_BASECOFINSST.Value        :=DM.QYAux2.FieldByName('VEI_BASECOFINSST').AsExtended;
        DM.TBVendasItensVEI_BASEICMS.Value            :=DM.QYAux2.FieldByName('VEI_BASEICMS').AsExtended;
        DM.TBVendasItensVEI_BASEICMSRED.Value         :=DM.QYAux2.FieldByName('VEI_BASEICMSRED').AsExtended;
        DM.TBVendasItensVEI_BASEICMSST.Value          :=DM.QYAux2.FieldByName('VEI_BASEICMSST').AsExtended;
        DM.TBVendasItensVEI_BASEICMSSTRET.Value       :=DM.QYAux2.FieldByName('VEI_BASEICMSSTRET').AsExtended;
        DM.TBVendasItensVEI_BASEII.Value              :=DM.QYAux2.FieldByName('VEI_BASEII').AsExtended;
        DM.TBVendasItensVEI_BASEIPI.Value             :=DM.QYAux2.FieldByName('VEI_BASEIPI').AsExtended;
        DM.TBVendasItensVEI_BASEISS.Value             :=DM.QYAux2.FieldByName('VEI_BASEISS').AsExtended;
        DM.TBVendasItensVEI_BASEPIS.Value             :=DM.QYAux2.FieldByName('VEI_BASEPIS').AsExtended;
        DM.TBVendasItensVEI_BASEPISST.Value           :=DM.QYAux2.FieldByName('VEI_BASEPISST').AsExtended;
        DM.TBVendasItensVEI_BENEFICIO.Value           :=DM.QYAux2.FieldByName('VEI_BENEFICIO').AsString;
        DM.TBVendasItensVEI_CEST.Value                :=DM.QYAux2.FieldByName('VEI_CEST').AsString;
        DM.TBVendasItensVEI_CFOP.Value                :=DM.QYAux2.FieldByName('VEI_CFOP').AsInteger;
        DM.TBVendasItensVEI_CIDADEISS.Value           :=DM.QYAux2.FieldByName('VEI_CIDADEISS').AsInteger;
        DM.TBVendasItensVEI_CLASSFISCAL.Value         :=DM.QYAux2.FieldByName('VEI_CLASSFISCAL').AsString;
        //DM.TBVendasItensVEI_CODIGO.Value            := //generator.
        DM.TBVendasItensVEI_CODIGOBARRAS.Value        :=DM.QYAux2.FieldByName('VEI_CODIGOBARRAS').AsString;
        DM.TBVendasItensVEI_CODIGOFAB.Value           :=DM.QYAux2.FieldByName('VEI_CODIGOFAB').AsString;
        DM.TBVendasItensVEI_COMISSAO.Value            :=DM.QYAux2.FieldByName('VEI_COMISSAO').AsExtended;
        DM.TBVendasItensVEI_COMPLEMENTO.Value         :=DM.QYAux2.FieldByName('VEI_COMPLEMENTO').AsString;
        DM.TBVendasItensVEI_COMPOEBASEICMS.Value      :=DM.QYAux2.FieldByName('VEI_COMPOEBASEICMS').AsString;
        DM.TBVendasItensVEI_COMPOEBASEICMSST.Value    :=DM.QYAux2.FieldByName('VEI_COMPOEBASEICMSST').AsString;
        DM.TBVendasItensVEI_COMPOETOTAL.Value         :=DM.QYAux2.FieldByName('VEI_COMPOETOTAL').AsString;
        DM.TBVendasItensVEI_CONVERSAO.Value           :=DM.QYAux2.FieldByName('VEI_CONVERSAO').AsExtended;
        DM.TBVendasItensVEI_CSTCOFINS.Value           :=DM.QYAux2.FieldByName('VEI_CSTCOFINS').AsInteger;
        DM.TBVendasItensVEI_CSTICMS.Value             :=DM.QYAux2.FieldByName('VEI_CSTICMS').AsInteger;
        DM.TBVendasItensVEI_CSTIPI.Value              :=DM.QYAux2.FieldByName('VEI_CSTIPI').AsInteger;
        DM.TBVendasItensVEI_CSTPIS.Value              :=DM.QYAux2.FieldByName('VEI_CSTPIS').AsInteger;
        DM.TBVendasItensVEI_DESCMAX.Value             :=DM.QYAux2.FieldByName('VEI_DESCMAX').AsExtended;
        DM.TBVendasItensVEI_DESCPORC.Value            :=DM.QYAux2.FieldByName('VEI_DESCPORC').AsExtended;
        DM.TBVendasItensVEI_DESCRICAO.Value           :=DM.QYAux2.FieldByName('VEI_DESCRICAO').AsString;
        DM.TBVendasItensVEI_DESCVALOR.Value           :=DM.QYAux2.FieldByName('VEI_DESCVALOR').AsExtended;
        DM.TBVendasItensVEI_DESONERACAO.Value         :=DM.QYAux2.FieldByName('VEI_DESONERACAO').AsString;
        DM.TBVendasItensVEI_DICNPJ.Value              :=DM.QYAux2.FieldByName('VEI_DICNPJ').AsString;
        DM.TBVendasItensVEI_DIDATA.Value              :=DM.QYAux2.FieldByName('VEI_DIDATA').AsDateTime;
        DM.TBVendasItensVEI_DIDESEMBARACODATA.Value   :=DM.QYAux2.FieldByName('VEI_DIDESEMBARACODATA').AsDateTime;
        DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value  :=DM.QYAux2.FieldByName('VEI_DIDESEMBARACOLOCAL').AsString;
        DM.TBVendasItensVEI_DIDESEMBARACOUF.Value     :=DM.QYAux2.FieldByName('VEI_DIDESEMBARACOUF').AsString;
        DM.TBVendasItensVEI_DIEXPORTADORCOD.Value     :=DM.QYAux2.FieldByName('VEI_DIEXPORTADORCOD').AsString;
        DM.TBVendasItensVEI_DIINTERMEDIO.Value        :=DM.QYAux2.FieldByName('VEI_DIINTERMEDIO').AsString;
        DM.TBVendasItensVEI_DINUMERO.Value            :=DM.QYAux2.FieldByName('VEI_DINUMERO').AsString;
        DM.TBVendasItensVEI_DITERCEIROUF.Value        :=DM.QYAux2.FieldByName('VEI_DITERCEIROUF').AsString;
        DM.TBVendasItensVEI_DITRANSPORTE.Value        :=DM.QYAux2.FieldByName('VEI_DITRANSPORTE').AsString;
        DM.TBVendasItensVEI_DIVALORAFRMM.Value        :=DM.QYAux2.FieldByName('VEI_DIVALORAFRMM').AsExtended;
        DM.TBVendasItensVEI_DTENTREGA.Value           :=DM.QYAux2.FieldByName('VEI_DTENTREGA').AsDateTime;
        DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value    :=DM.QYAux2.FieldByName('VEI_ENQUADRAMENTOIPI').AsInteger;
        DM.TBVendasItensVEI_EXCECAO.Value             :=DM.QYAux2.FieldByName('VEI_EXCECAO').AsInteger;
        DM.TBVendasItensVEI_EXCHAVEACESSO.Value       :=DM.QYAux2.FieldByName('VEI_EXCHAVEACESSO').AsString;
        DM.TBVendasItensVEI_EXDRAWBACK.Value          :=DM.QYAux2.FieldByName('VEI_EXDRAWBACK').AsString;
        DM.TBVendasItensVEI_EXQUANTIDADE.Value        :=DM.QYAux2.FieldByName('VEI_EXQUANTIDADE').AsExtended;
        DM.TBVendasItensVEI_EXREGISTRO.Value          :=DM.QYAux2.FieldByName('VEI_EXREGISTRO').AsString;
        DM.TBVendasItensVEI_FCI.Value                 :=DM.QYAux2.FieldByName('VEI_FCI').AsString;
        DM.TBVendasItensVEI_INCENTIVOISS.Value        :=DM.QYAux2.FieldByName('VEI_INCENTIVOISS').AsString;
        DM.TBVendasItensVEI_INDICADORISS.Value        :=DM.QYAux2.FieldByName('VEI_INDICADORISS').AsString;
        DM.TBVendasItensVEI_INFOADICIONAL.Value       :=DM.QYAux2.FieldByName('VEI_INFOADICIONAL').AsAnsiString;
        DM.TBVendasItensVEI_LOCALIZACAO.Value         :=DM.QYAux2.FieldByName('VEI_LOCALIZACAO').AsString;
        DM.TBVendasItensVEI_LOTE.Value                :=DM.QYAux2.FieldByName('VEI_LOTE').AsString;
        DM.TBVendasItensVEI_LUCROPORC.Value           :=DM.QYAux2.FieldByName('VEI_LUCROPORC').AsExtended;
        DM.TBVendasItensVEI_LUCROVALOR.Value          :=DM.QYAux2.FieldByName('VEI_LUCROVALOR').AsExtended;
        DM.TBVendasItensVEI_MODICMS.Value             :=DM.QYAux2.FieldByName('VEI_MODICMS').AsString;
        DM.TBVendasItensVEI_MODICMSST.Value           :=DM.QYAux2.FieldByName('VEI_MODICMSST').AsString;
        DM.TBVendasItensVEI_ORIGEM.Value              :=DM.QYAux2.FieldByName('VEI_ORIGEM').AsString;
        DM.TBVendasItensVEI_PAISISS.Value             :=DM.QYAux2.FieldByName('VEI_PAISISS').AsInteger;
        DM.TBVendasItensVEI_PEDIDOCLIENTE.Value       :=DM.QYAux2.FieldByName('VEI_PEDIDOCLIENTE').AsString;
        DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value   :=DM.QYAux2.FieldByName('VEI_PEDIDOCLIENTEITEM').AsInteger;
        DM.TBVendasItensVEI_PESO.Value                :=DM.QYAux2.FieldByName('VEI_PESO').AsExtended;
        DM.TBVendasItensVEI_PESOTOTAL.Value           :=DM.QYAux2.FieldByName('VEI_PESOTOTAL').AsExtended;
        DM.TBVendasItensVEI_PRECOCUSTO.Value          :=DM.QYAux2.FieldByName('VEI_PRECOCUSTO').AsExtended;
        DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value     :=DM.QYAux2.FieldByName('VEI_PRECOCUSTOTOTAL').AsExtended;
        DM.TBVendasItensVEI_PROCESSOISS.Value         :=DM.QYAux2.FieldByName('VEI_PROCESSOISS').AsString;
        DM.TBVendasItensVEI_PRODUTO.Value             :=DM.QYAux2.FieldByName('VEI_PRODUTO').AsInteger;
        DM.TBVendasItensVEI_PRODUTOREAL.Value         :=DM.QYAux2.FieldByName('VEI_PRODUTOREAL').AsInteger;
        DM.TBVendasItensVEI_QUANTIDADE.Value          :=DM.QYAux2.FieldByName('VEI_QUANTIDADE').AsExtended;
        DM.TBVendasItensVEI_QUANTIDADETROCA.Value     :=DM.QYAux2.FieldByName('VEI_QUANTIDADETROCA').AsExtended;
        //DM.TBVendasItensVEI_SEQUENCIA.Value         :=//DM.QYAux2.FieldByName('VEI_SEQUENCIA').Value;
        DM.TBVendasItensVEI_SERVICOISS.Value          :=DM.QYAux2.FieldByName('VEI_SERVICOISS').AsString;
        DM.TBVendasItensVEI_SOMACOFINSST.Value        :=DM.QYAux2.FieldByName('VEI_SOMACOFINSST').AsString;
        DM.TBVendasItensVEI_SOMAPISST.Value           :=DM.QYAux2.FieldByName('VEI_SOMAPISST').AsString;
        DM.TBVendasItensVEI_TIPO.Value                :=DM.QYAux2.FieldByName('VEI_TIPO').AsString;
        DM.TBVendasItensVEI_TIPOISS.Value             :=DM.QYAux2.FieldByName('VEI_TIPOISS').AsString;
        DM.TBVendasItensVEI_UNIDADE.Value             :=DM.QYAux2.FieldByName('VEI_UNIDADE').AsString;
        DM.TBVendasItensVEI_VALORACESSORIAS.Value     :=DM.QYAux2.FieldByName('VEI_VALORACESSORIAS').AsExtended;
        DM.TBVendasItensVEI_VALORADUANA.Value         :=DM.QYAux2.FieldByName('VEI_VALORADUANA').AsExtended;
        DM.TBVendasItensVEI_VALORCOFINS.Value         :=DM.QYAux2.FieldByName('VEI_VALORCOFINS').AsExtended;
        DM.TBVendasItensVEI_VALORCOFINSST.Value       :=DM.QYAux2.FieldByName('VEI_VALORCOFINSST').AsExtended;
        DM.TBVendasItensVEI_VALORCOMISSAO.Value       :=DM.QYAux2.FieldByName('VEI_VALORCOMISSAO').AsExtended;
        DM.TBVendasItensVEI_VALORFCP.Value            :=DM.QYAux2.FieldByName('VEI_VALORFCP').AsExtended;
        DM.TBVendasItensVEI_VALORFCPST.Value          :=DM.QYAux2.FieldByName('VEI_VALORFCPST').AsExtended;
        DM.TBVendasItensVEI_VALORFRETE.Value          :=DM.QYAux2.FieldByName('VEI_VALORFRETE').AsExtended;
        DM.TBVendasItensVEI_VALORICMS.Value           :=DM.QYAux2.FieldByName('VEI_VALORICMS').AsExtended;
        DM.TBVendasItensVEI_VALORICMSCREDSN.Value     :=DM.QYAux2.FieldByName('VEI_VALORICMSCREDSN').AsExtended;
        DM.TBVendasItensVEI_VALORICMSDESONERADO.Value :=DM.QYAux2.FieldByName('VEI_VALORICMSDESONERADO').AsExtended;
        DM.TBVendasItensVEI_VALORICMSST.Value         :=DM.QYAux2.FieldByName('VEI_VALORICMSST').AsExtended;
        DM.TBVendasItensVEI_VALORICMSSTRET.Value      :=DM.QYAux2.FieldByName('VEI_VALORICMSSTRET').AsExtended;
        DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value :=DM.QYAux2.FieldByName('VEI_VALORICMSSUBSTITUTO').AsExtended;
        DM.TBVendasItensVEI_VALORICMSUFDEST.Value     :=DM.QYAux2.FieldByName('VEI_VALORICMSUFDEST').AsExtended;
        DM.TBVendasItensVEI_VALORICMSUFREMET.Value    :=DM.QYAux2.FieldByName('VEI_VALORICMSUFREMET').AsExtended;
        DM.TBVendasItensVEI_VALORII.Value             :=DM.QYAux2.FieldByName('VEI_VALORII').AsExtended;
        DM.TBVendasItensVEI_VALORIOF.Value            :=DM.QYAux2.FieldByName('VEI_VALORIOF').AsExtended;
        DM.TBVendasItensVEI_VALORIPI.Value            :=DM.QYAux2.FieldByName('VEI_VALORIPI').AsExtended;
        DM.TBVendasItensVEI_VALORISS.Value            :=DM.QYAux2.FieldByName('VEI_VALORISS').AsExtended;
        DM.TBVendasItensVEI_VALORISSDEDUCAO.Value     :=DM.QYAux2.FieldByName('VEI_VALORISSDEDUCAO').AsExtended;
        DM.TBVendasItensVEI_VALORISSDESCCOND.Value    :=DM.QYAux2.FieldByName('VEI_VALORISSDESCCOND').AsExtended;
        DM.TBVendasItensVEI_VALORISSDESCINCOND.Value  :=DM.QYAux2.FieldByName('VEI_VALORISSDESCINCOND').AsExtended;
        DM.TBVendasItensVEI_VALORISSOUTROS.Value      :=DM.QYAux2.FieldByName('VEI_VALORISSOUTROS').AsExtended;
        DM.TBVendasItensVEI_VALORISSRETENCAO.Value    :=DM.QYAux2.FieldByName('VEI_VALORISSRETENCAO').AsExtended;
        DM.TBVendasItensVEI_VALORPIS.Value            :=DM.QYAux2.FieldByName('VEI_VALORPIS').AsExtended;
        DM.TBVendasItensVEI_VALORPISST.Value          :=DM.QYAux2.FieldByName('VEI_VALORPISST').AsExtended;
        DM.TBVendasItensVEI_VALORSEGURO.Value         :=DM.QYAux2.FieldByName('VEI_VALORSEGURO').AsExtended;
        DM.TBVendasItensVEI_VALORTOTAL.Value          :=DM.QYAux2.FieldByName('VEI_VALORTOTAL').AsExtended;
        DM.TBVendasItensVEI_VALORTOTALBRUTO.Value     :=DM.QYAux2.FieldByName('VEI_VALORTOTALBRUTO').AsExtended;
        DM.TBVendasItensVEI_VALORTRIBUTOS.Value       :=DM.QYAux2.FieldByName('VEI_VALORTRIBUTOS').AsExtended;
        DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value    :=DM.QYAux2.FieldByName('VEI_VALORTRIBUTOSEST').AsExtended;
        DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value    :=DM.QYAux2.FieldByName('VEI_VALORTRIBUTOSFED').AsExtended;
        DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value    :=DM.QYAux2.FieldByName('VEI_VALORTRIBUTOSIMP').AsExtended;
        DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value    :=DM.QYAux2.FieldByName('VEI_VALORTRIBUTOSMUN').AsExtended;
        DM.TBVendasItensVEI_VALORUNIT.Value           :=DM.QYAux2.FieldByName('VEI_VALORUNIT').AsExtended;
        //DM.TBVendasItensVEI_VENDA.Value:= //pega no after insert.

        {$ENDREGION}
        DM.TBVendasItens.Post;

        DM.QYAux2.Next;
      end;
      DM.QYAux2.Close;
      TBSelecao.Next;
    end;

    TBSelecao.EnableControls;
    Screen.Cursor:=crDefault;

    MessageDlg('Pedido de venda criado com código: '+IntToStr(DM.TBVendasVED_CODIGO.Value),mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormVendasUnificar.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasUnificar.PngBitBtn3Click(Sender: TObject);
begin
  if not QYVendas.IsEmpty then
  begin
    if not TBSelecao.Locate('VED_CODIGO',QYVendasVED_CODIGO.Value,[]) then
    begin
      TBSelecao.Insert;
      TBSelecaoVED_CODIGO.Value:=QYVendasVED_CODIGO.Value;
      TBSelecao.Post;
    end;
  end;
end;

procedure TFormVendasUnificar.PngBitBtn4Click(Sender: TObject);
begin
  if not TBSelecao.IsEmpty then
  begin
    TBSelecao.Delete;
  end;
end;

procedure TFormVendasUnificar.PngBitBtn5Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  QYVendas.DisableControls;
  QYVendas.First;
  while not QYVendas.Eof do
  begin
    if not TBSelecao.Locate('VED_CODIGO',QYVendasVED_CODIGO.Value,[]) then
    begin
      TBSelecao.Insert;
      TBSelecaoVED_CODIGO.Value:=QYVendasVED_CODIGO.Value;
      TBSelecao.Post;
    end;
    QYVendas.Next;
  end;
  QYVendas.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TFormVendasUnificar.PngBitBtn6Click(Sender: TObject);
begin
  TBSelecao.EmptyDataSet;
end;

procedure TFormVendasUnificar.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    Edit6.Text:=IntToStr(FormClientesLoc.QYClientesCLI_CODIGO.Value);
    Edit7.Text:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

end.
