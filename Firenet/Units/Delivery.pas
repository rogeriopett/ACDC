unit Delivery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, System.ImageList, Vcl.ImgList, PngImageList,
  Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls, Vcl.StdCtrls, PngBitBtn,
  Vcl.OleCtrls, SHDocVw;

type
  TFormDelivery = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios1Button: TPngSpeedButton;
    CadastroDeProdutos1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    PngImageList2: TPngImageList;
    PngImageList3: TPngImageList;
    Panel1: TPanel;
    TreeView1: TTreeView;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    TreeView2: TTreeView;
    EliminarItem1Button: TPngBitBtn;
    EliminarTodos1Button: TPngBitBtn;
    AlterarItem1Button: TPngBitBtn;
    PrimeiroRegistro1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N3: TMenuItem;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    FinalizarPedido1Button: TPngSpeedButton;
    Comandos1: TMenuItem;
    AlterarParaProducao1: TMenuItem;
    FinalizarPedido1: TMenuItem;
    AlterarParaEntrega1: TMenuItem;
    AlterarParaEntrega1Button: TPngSpeedButton;
    AlterarParaProducao1Button: TPngSpeedButton;
    N4: TMenuItem;
    Expandir1: TMenuItem;
    Comprimir1: TMenuItem;
    PngBitBtn6: TPngBitBtn;
    PngBitBtn7: TPngBitBtn;
    Itens1: TMenuItem;
    MoverParaCima1: TMenuItem;
    MoverParaBaixo1: TMenuItem;
    Eliminar1: TMenuItem;
    EliminarTodos1: TMenuItem;
    N6: TMenuItem;
    AlterarItem1: TMenuItem;
    AlterarParaAberto1Button: TPngSpeedButton;
    AlterarParaAberto1: TMenuItem;
    PopupMenu1: TPopupMenu;
    AlterarParaAberto2: TMenuItem;
    AlterarParaProducao2: TMenuItem;
    AlterarParaEntrega2: TMenuItem;
    Imprimir1Button: TPngSpeedButton;
    Imprimir1: TMenuItem;
    PopupMenu2: TPopupMenu;
    InativarEsteProduto1: TMenuItem;
    ListagemDeProdutos1: TMenuItem;
    PedidoViaApp2: TMenuItem;
    N7: TMenuItem;
    CancelarPedido1Button: TPngSpeedButton;
    InutilizarPedido1Button: TPngSpeedButton;
    Bevel2: TBevel;
    CancelarPedido1: TMenuItem;
    InutilizarPedido1: TMenuItem;
    FinalizarPedido2: TMenuItem;
    CancelarPedido2: TMenuItem;
    InutilizarPedido2: TMenuItem;
    RetiraNoLocal2: TMenuItem;
    N8: TMenuItem;
    PedidoViaAPP1: TMenuItem;
    RetiraNoLocal1: TMenuItem;
    N9: TMenuItem;
    SelecionarCliente2: TMenuItem;
    EnderecosJaUtilizados2: TMenuItem;
    N10: TMenuItem;
    SelecionarCliente1: TMenuItem;
    EnderecosJaUtilizados1: TMenuItem;
    N11: TMenuItem;
    RestaurarVisualizaoOriginal1: TMenuItem;
    PngSpeedButton4: TPngSpeedButton;
    ResetarPesquisa1: TMenuItem;
    Relatorios1: TMenuItem;
    N12: TMenuItem;
    DeliverysPorVendedor1: TMenuItem;
    DeliverysPorEntregador1: TMenuItem;
    DeliverysPorCliente1: TMenuItem;
    DeliverysPorProduto1: TMenuItem;
    ConsultarCEP1Button: TPngSpeedButton;
    ConsultarCEP1: TMenuItem;
    EnviarWhatsApp1: TMenuItem;
    EnviarWhatsApp2: TMenuItem;
    EnviarWhatsApp1Button: TPngSpeedButton;
    VerEnderecoNoGoogleMaps2: TMenuItem;
    VerEnderecoNoGoogleMaps1: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    ColocarEmEspera1Button: TPngSpeedButton;
    ColocarEmEspera1: TMenuItem;
    ColocarEmEspera2: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TreeView1Click(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure Expandir1Click(Sender: TObject);
    procedure Comprimir1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure MoverParaCima1Click(Sender: TObject);
    procedure MoverParaBaixo1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure EliminarTodos1Click(Sender: TObject);
    procedure AlterarParaProducao1Click(Sender: TObject);
    procedure FinalizarPedido1Click(Sender: TObject);
    procedure AlterarParaEntrega1Click(Sender: TObject);
    procedure AlterarItem1Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure AlterarParaAberto1Click(Sender: TObject);
    procedure EditarRegistro1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure InativarEsteProduto1Click(Sender: TObject);
    procedure ListagemDeProdutos1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CancelarPedido1Click(Sender: TObject);
    procedure InutilizarPedido1Click(Sender: TObject);
    procedure PedidoViaAPP1Click(Sender: TObject);
    procedure RetiraNoLocal1Click(Sender: TObject);
    procedure EnderecosJaUtilizados1Click(Sender: TObject);
    procedure SelecionarCliente1Click(Sender: TObject);
    procedure RestaurarVisualizaoOriginal1Click(Sender: TObject);
    procedure ResetarPesquisa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DeliverysPorVendedor1Click(Sender: TObject);
    procedure DeliverysPorEntregador1Click(Sender: TObject);
    procedure DeliverysPorCliente1Click(Sender: TObject);
    procedure DeliverysPorProduto1Click(Sender: TObject);
    procedure ConsultarCEP1Click(Sender: TObject);
    procedure EnviarWhatsApp1Click(Sender: TObject);
    procedure VerEnderecoNoGoogleMaps1Click(Sender: TObject);
    procedure ColocarEmEspera1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDelivery: TFormDelivery;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormDelivery.txt';

implementation
uses ShellApi, DataMod, DataMod2, Funcoes1, FuncoesFirenet, Clientes, Vendedores,
  Produtos, DeliveryDetalhes, DeliveryItens, DeliveryEnderecos,
  ClientesLoc, DeliveryLoc, DeliveryFinalizar, Main, DeliveryCancelar,
  DeliveryRel, DeliveryEntregar, EnderecosBuscaCEP;
{$R *.dfm}

procedure TFormDelivery.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormDelivery.AlterarItem1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverysItens.IsEmpty,'Não existe nenhum item para alterar.');

  DM.TBProdutos.Close; //localiza para poder mostrar o grupo, familia e estoque atual.
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM2.TBDeliverysItensDLI_PRODUTO.Value;
  DM.TBProdutos.Open;
  DM2.TBDeliverysItens.Edit;
  Application.CreateForm(TFormDeliveryItens, FormDeliveryItens);
  //FormDeliveryItens.DBEdit5.Enabled:=False;
  //FormDeliveryItens.DBEdit5.Color:=clBtnFace;
  //FormDeliveryItens.SpeedButton9.Enabled:=False;
  FormDeliveryItens.DesabilitarCampos; //se status = F, C ou I, desabilita campos.
  FormDeliveryItens.ShowModal;
  FormDeliveryItens.Free;
  FormDeliveryItens:=nil;
end;

procedure TFormDelivery.AlterarParaAberto1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='A','Este pedido já está aberto.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido já está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido está inutilizado.');

  if (DM2.TBDeliverysDLV_STATUS.Value='E') or (DM2.TBDeliverysDLV_STATUS.Value='W') or (DM2.TBDeliverysDLV_STATUS.Value='P') then
  begin
    if MessageDlg('Tem certeza que deseja voltar o pedido para aberto?',mtConfirmation,[mbOk,mbCancel],0)=mrCancel then
    begin
      Exit;
    end;
  end;
  MovimentarItensDelivery('E'); //estorna o estoque.
  DM2.TBDeliverys.Edit;
  DM2.TBDeliverysDLV_STATUS.Value:='A';
  DM2.TBDeliverys.Post;
end;

procedure TFormDelivery.AlterarParaEntrega1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='E','Este pedido já está em entrega.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido já está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido está inutilizado.');
  AbortIf(DM2.TBDeliverysItens.IsEmpty,'Este pedido não possui itens.');

  DM2.TBDeliverys.Edit;
  Application.CreateForm(TFormDeliveryEntregar, FormDeliveryEntregar);
  FormDeliveryEntregar.ShowModal;
  FormDeliveryEntregar.Free;
  FormDeliveryEntregar:=nil;
end;

procedure TFormDelivery.AlterarParaProducao1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='P','Este pedido já está em produção.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido já está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido está inutilizado.');

  if DM2.TBDeliverysDLV_STATUS.Value='E' then
  begin
    if MessageDlg('Tem certeza que deseja voltar o pedido para produção?',mtConfirmation,[mbOk,mbCancel],0)=mrCancel then
    begin
      Exit;
    end;
  end;
  if DM2.TBDeliverysDLV_STATUS.Value='A' then
  MovimentarItensDelivery('S'); //baixa do estoque.

  DM2.TBDeliverys.Edit;
  DM2.TBDeliverysDLV_STATUS.Value:='P';
  DM2.TBDeliverys.Post;
  if MessageDlg('Deseja imprimir?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Imprimir1Button.Click;
  end;
end;

procedure TFormDelivery.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormDelivery.CadastroDeProdutos1Click(Sender: TObject);
begin
  if not DM2.TBDeliverysItens.IsEmpty then
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM2.TBDeliverysItensDLI_PRODUTO.Value;
    DM.TBProdutos.Open;
  end;
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormDelivery.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormDelivery.CancelarPedido1Click(Sender: TObject);
var Justificativa: String;
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido já está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value<>'F','Só é possível cancelar pedidos finalizados.'+#13#10+'Pedidos não finalizados podem ser inutilizados.');

  if MessageDlg('Deseja cancelar o pedido '+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Justificativa:=InputBox('Justificativa','Digite a justificativa para o cancelamento (mínimo 15 caracteres)','');
    if (Justificativa<>'') and (Length(Justificativa)>=15) then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update DELIVERYS set DLV_MOTIVOCANCELAMENTO=:justificativa where DLV_CODIGO=:codigo');
      DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBDeliverysDLV_CODIGO.Value;
      DM.QYAux.ParamByName('justificativa').AsString:=Justificativa;
      DM.QYAux.ExecSQL;

      Application.CreateForm(TFormDeliveryCancelar, FormDeliveryCancelar);
      FormDeliveryCancelar.ShowModal;
      FormDeliveryCancelar.Free;
      FormDeliveryCancelar:=nil;
    end else
    MessageDlg('Justificativa muito curta.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormDelivery.ColocarEmEspera1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='W','Este pedido já está em espera.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido já está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido está inutilizado.');

  if (DM2.TBDeliverysDLV_STATUS.Value='E') or (DM2.TBDeliverysDLV_STATUS.Value='P') then
  begin
    if MessageDlg('Tem certeza que deseja voltar o pedido para em espera?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      //nao estorna o estoque, apenas muda o status.
      DM2.TBDeliverys.Edit;
      DM2.TBDeliverysDLV_STATUS.Value:='W';
      DM2.TBDeliverys.Post;
      Exit;
    end;
  end;
  if DM2.TBDeliverysDLV_STATUS.Value='A' then
  MovimentarItensDelivery('S'); //baixa do estoque.

  DM2.TBDeliverys.Edit;
  DM2.TBDeliverysDLV_STATUS.Value:='W';
  DM2.TBDeliverys.Post;
end;

procedure TFormDelivery.Comprimir1Click(Sender: TObject);
begin
  TreeView1.FullCollapse;
end;

procedure TFormDelivery.ConsultarCEP1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosBuscaCEP, FormEnderecosBuscaCEP);
  FormEnderecosBuscaCEP.ShowModal;
  FormEnderecosBuscaCEP.Free;
  FormEnderecosBuscaCEP:=nil;
end;

procedure TFormDelivery.DBGrid1DblClick(Sender: TObject);
begin
  if not DM2.TBDeliverys.IsEmpty then
  begin
    Application.CreateForm(TFormDeliveryDetalhes, FormDeliveryDetalhes);
    FormDeliveryDetalhes.ShowModal;
    FormDeliveryDetalhes.Free;
    FormDeliveryDetalhes:=nil;
  end;
end;

procedure TFormDelivery.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Column.Field.FieldName='DLV_STATUS') then
  begin
    if DM2.TBDeliverysDLV_STATUS.Value='A' then //aberto.
    begin
      //DBGrid1.Canvas.Font.Color:=clBlack;
      DBGrid1.Canvas.Brush.Color:=$0007c1ff; //amarelo.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if DM2.TBDeliverysDLV_STATUS.Value='W' then //em espera.
    begin
      //DBGrid1.Canvas.Font.Color:=clBlack;
      DBGrid1.Canvas.Brush.Color:=$00a340fc; //rosa
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if DM2.TBDeliverysDLV_STATUS.Value='P' then //em produção.
    begin
      //DBGrid1.Canvas.Font.Color:=clBlue;
      DBGrid1.Canvas.Brush.Color:=$00007cf5; //laranja.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if DM2.TBDeliverysDLV_STATUS.Value='E' then //em entrega.
    begin
      //DBGrid1.Canvas.Font.Color:=clGreen;
      DBGrid1.Canvas.Brush.Color:=$00d27619; //azul.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if DM2.TBDeliverysDLV_STATUS.Value='F' then //finalizado.
    begin
      //DBGrid1.Canvas.Font.Color:=clRed;
      DBGrid1.Canvas.Brush.Color:=$003c8e38; //verde.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if DM2.TBDeliverysDLV_STATUS.Value='C' then //cancelado.
    begin
      //DBGrid1.Canvas.Font.Color:=clRed;
      DBGrid1.Canvas.Brush.Color:=$003643f4; //vermelho.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    if DM2.TBDeliverysDLV_STATUS.Value='I' then //inutilizado.
    begin
      //DBGrid1.Canvas.Font.Color:=clGreen;
      DBGrid1.Canvas.Brush.Color:=$00c6c6c6; //cinza.
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //DBGrid1.DefaultDrawDataCell(rect,Column.Field,State);
    //DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  //DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
  if (Column.Field.FieldName='DLV_RETIRA') then
  begin
    if DM2.TBDeliverysDLV_RETIRA.Value='S' then
    begin
      //DBGrid1.Canvas.Font.Color:=clBlack;
      DBGrid1.Canvas.Brush.Color:=clAqua;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    begin
      //DBGrid1.Canvas.Font.Color:=clBlack;
      DBGrid1.Canvas.Brush.Color:=clWhite;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end;

  if (Column.Field.FieldName='DLV_VIAAPP') then
  begin
    if DM2.TBDeliverysDLV_VIAAPP.Value='S' then
    begin
      //DBGrid1.Canvas.Font.Color:=clBlack;
      DBGrid1.Canvas.Brush.Color:=clLime;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end else
    begin
      //DBGrid1.Canvas.Font.Color:=clBlack;
      DBGrid1.Canvas.Brush.Color:=clWhite;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end;
end;

procedure TFormDelivery.DBGrid2DblClick(Sender: TObject);
begin
  if not DM2.TBDeliverysItens.IsEmpty then
  AlterarItem1.Click;
end;

procedure TFormDelivery.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  AlterarItem1.Click;
end;

procedure TFormDelivery.DeliverysPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDeliveryRel, FormDeliveryRel);
  FormDeliveryRel.ComboBox1.Enabled:=False;
  FormDeliveryRel.ComboBox1.ItemIndex:=0;
  FormDeliveryRel.ComboBox1Change(Self);
  FormDeliveryRel.ShowModal;
  FormDeliveryRel.Free;
  FormDeliveryRel:=nil;
end;

procedure TFormDelivery.DeliverysPorEntregador1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDeliveryRel, FormDeliveryRel);
  FormDeliveryRel.ComboBox1.Enabled:=False;
  FormDeliveryRel.ComboBox1.ItemIndex:=1;
  FormDeliveryRel.ComboBox1Change(Self);
  FormDeliveryRel.ShowModal;
  FormDeliveryRel.Free;
  FormDeliveryRel:=nil;
end;

procedure TFormDelivery.DeliverysPorCliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDeliveryRel, FormDeliveryRel);
  FormDeliveryRel.ComboBox1.Enabled:=False;
  FormDeliveryRel.ComboBox1.ItemIndex:=2;
  FormDeliveryRel.ComboBox1Change(Self);
  FormDeliveryRel.ShowModal;
  FormDeliveryRel.Free;
  FormDeliveryRel:=nil;
end;

procedure TFormDelivery.DeliverysPorProduto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDeliveryRel, FormDeliveryRel);
  FormDeliveryRel.ComboBox1.Enabled:=False;
  FormDeliveryRel.ComboBox1.ItemIndex:=3;
  FormDeliveryRel.ComboBox1Change(Self);
  FormDeliveryRel.ShowModal;
  FormDeliveryRel.Free;
  FormDeliveryRel:=nil;
end;

procedure TFormDelivery.EditarRegistro1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDeliveryDetalhes, FormDeliveryDetalhes);
  FormDeliveryDetalhes.ShowModal;
  FormDeliveryDetalhes.Free;
  FormDeliveryDetalhes:=nil;
end;

procedure TFormDelivery.Eliminar1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverysItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido de venda está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido de venda está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido de venda está inutilizado.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBDeliverysItens.Delete;
    DM2.CalcularTotaisDelivery(True); //era true.
  end;
end;

procedure TFormDelivery.EliminarTodos1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverysItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido de venda está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido de venda está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido de venda está inutilizado.');

  if MessageDlg('Eliminar todos os itens?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBDeliverysItens.First;
    while not DM2.TBDeliverysItens.Eof do
    begin
      DM2.TBDeliverysItens.Delete;
    end;
    DM2.CalcularTotaisDelivery(True);
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormDelivery.EnderecosJaUtilizados1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido já está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido está inutilizado.');

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
    DM2.TBDeliverys.Post;
  end;
  FormDeliveryEnderecos.Free;
  FormDeliveryEnderecos:=nil;
end;

procedure TFormDelivery.EnviarWhatsApp1Click(Sender: TObject);
var Fone, Texto: String;
begin
  Fone:=LimparFormatacao(DM2.TBDeliverysDLV_FONE1.Value);
  AbortIf(Fone='','Nenhum número telefônico preenchido.');

  Texto:=InputBox('Mensagem','Digite a mensagem...','Olá '+DM2.TBDeliverysCLI_NOME.Value);
  if Texto<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('https://wa.me/55'+Fone+'?text='+Texto),nil,nil,sw_ShowNormal);
end;

procedure TFormDelivery.Expandir1Click(Sender: TObject);
begin
  TreeView1.FullExpand;
end;

procedure TFormDelivery.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDelivery.FinalizarPedido1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido já está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido está inutilizado.');
  AbortIf(DM2.TBDeliverysItens.IsEmpty,'Este pedido não possui itens.');

  if MessageDlg('Deseja finalizar o pedido?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if DM2.TBDeliverysDLV_STATUS.Value='A' then
    MovimentarItensDelivery('S'); //baixa do estoque.

    Application.CreateForm(TFormDeliveryFinalizar, FormDeliveryFinalizar);
    FormDeliveryFinalizar.ShowModal;
    FormDeliveryFinalizar.Free;
    FormDeliveryFinalizar:=nil;
  end;
end;

procedure TFormDelivery.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBDeliverys.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormDelivery.FormCreate(Sender: TObject);
begin
  if not DM.AtualizarUsuariosAcessos then //evita aparecer a mensagem quando está atualizando o sistema.
  begin
    FormDelivery.Width:=Screen.Width-60;
    FormDelivery.Height:=Screen.Height-120;
    ListagemDeProdutos1.Click;

    SalvarColunas:=True;
    if FileExists(GetTempDir+NomeArquivoFormTxt) then
    DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
    RestaurarTamanhoForm(Self,DM.UsuarioLogado);
  end;
end;

procedure TFormDelivery.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDelivery.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormDelivery);
end;

procedure TFormDelivery.Imprimir1Click(Sender: TObject);
begin
  ImprimirDeliveryTermica;
end;

procedure TFormDelivery.InativarEsteProduto1Click(Sender: TObject);
begin
  if MessageDlg('Tem certeza que deseja inativar este produto?'+#13#10+#13#10+TreeView1.Selected.Text,mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOS set PRO_STATUS=''I'' where PRO_CODIGO=:codigo');
    DM.QYAux.ExecSQL;

    DM.TBProdutos.Close;
    DM.TBProdutos.Open;
    ListagemDeProdutos1.Click;
  end;
end;

procedure TFormDelivery.InutilizarPedido1Click(Sender: TObject);
var Justificativa: String;
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido já está inutilizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido já está finalizado.');

  if MessageDlg('Deseja inutilizar o pedido '+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Justificativa:=InputBox('Justificativa','Digite a justificativa para a inutilização (mínimo 15 caracteres)','');
    if (Justificativa<>'') and (Length(Justificativa)>=15) then
    begin
      DM2.TBDeliverys.Edit;
      DM2.tbdeliverysDLV_MOTIVOINUTILIZACAO.Value:=Justificativa;
      DM2.TBDeliverysDLV_STATUS.Value:='I';
      DM2.TBDeliverys.Post;
    end else
    MessageDlg('Justificativa muito curta.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormDelivery.ListagemDeProdutos1Click(Sender: TObject);
var Item, ItemPro, Item2, ItemPro2: TTreeNode;
begin
  TreeView1.Items.Clear;
  TreeView1.Items.Clear;
  TreeView1.Items.BeginUpdate;

  TreeView2.Items.Clear;
  TreeView2.Items.Clear;
  TreeView2.Items.BeginUpdate;

  //NodePai:=TreeView1.Items.Add(nil,'GRUPOS');
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from GRUPOS where GRU_STATUS=''A'' order by GRU_DESCRICAO');
  DM.QYAux.Open;
  while not DM.QYAux.Eof do
  begin
    Item:=TreeView1.Items.Add(nil,DM.QYAux.FieldByName('GRU_DESCRICAO').AsString);
    Item2:=TreeView2.Items.Add(nil,'GRUPO');

    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select PRO_CODIGO, PRO_NOME from PRODUTOS where PRO_STATUS=''A'' and PRO_GRUPO=:grupo order by PRO_NOME');
    DM.QYAux2.ParamByName('grupo').AsInteger:=DM.QYAux.FieldByName('GRU_CODIGO').AsInteger;
    DM.QYAux2.Open;
    while not DM.QYAux2.Eof do
    begin
      ItemPro:=TreeView1.Items.AddChild(Item,DM.QYAux2.FieldByName('PRO_NOME').AsString);
      ItemPro2:=TreeView2.Items.AddChild(Item2,DM.QYAux2.FieldByName('PRO_CODIGO').AsString);
      DM.QYAux2.Next;
    end;
    DM.QYAux2.Close;

    DM.QYAux.Next;
  end;
  TreeView1.Items.EndUpdate;
  TreeView1.FullExpand;
  TreeView2.Items.EndUpdate;
  TreeView2.FullExpand;
  DM.QYAux.Close;
end;

procedure TFormDelivery.Localizar1Click(Sender: TObject);
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

procedure TFormDelivery.MoverParaBaixo1Click(Sender: TObject);
var ItemCod, ItemSeq, ItemDlv, ItemSeqNew, ItemCodNew: Integer;
begin
  //salva o código e o número de sequencia do item atual.
  ItemCod:=DM2.TBDeliverysItensDLI_CODIGO.Value;
  ItemSeq:=DM2.TBDeliverysItensDLI_SEQUENCIA.Value;
  ItemDlv:=DM2.TBDeliverysItensDLI_DELIVERY.Value;

  //pega dados do item anterior.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select first(1) DLI_CODIGO, DLI_SEQUENCIA from DELIVERYSITENS where DLI_DELIVERY=:delivery and DLI_SEQUENCIA > :sequencia order by DLI_SEQUENCIA');
  DM.QYAux.ParamByName('delivery').AsInteger:=ItemDlv;
  DM.QYAux.ParamByName('sequencia').AsInteger:=ItemSeq;
  DM.QYAux.Open;
  if DM.QYAux.IsEmpty then //nenhum item anterior.
  begin
    DM.QYAux.Close;
    Exit;
  end;
  ItemSeqNew:=DM.QYAux.FieldByName('DLI_SEQUENCIA').AsInteger; //sequencia do item anterior.
  ItemCodNew:=DM.QYAux.FieldByName('DLI_CODIGO').AsInteger;

  //atualiza o item posterior com a sequencia do item atual.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update DELIVERYSITENS set DLI_SEQUENCIA=:sequencia where DLI_CODIGO=:codigo');
  DM.QYAux.ParamByName('sequencia').AsInteger:=ItemSeq;
  DM.QYAux.ParamByName('codigo').AsInteger:=ItemCodNew;
  DM.QYAux.ExecSQL;

  //atualiza o item atual com a sequencia do item posterior.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update DELIVERYSITENS set DLI_SEQUENCIA=:sequencia where DLI_CODIGO=:codigo');
  DM.QYAux.ParamByName('sequencia').AsInteger:=ItemSeqNew;
  DM.QYAux.ParamByName('codigo').AsInteger:=ItemCod;
  DM.QYAux.ExecSQL;

  //volta para o registro atual e atualiza a sequencia para menos um.
  DM2.TBDeliverysItens.Close;
  DM2.TBDeliverysItens.Open;
  DM2.TBDeliverysItens.Locate('DLI_CODIGO',ItemCod,[]);
end;

procedure TFormDelivery.MoverParaCima1Click(Sender: TObject);
var ItemCod, ItemSeq, ItemDlv, ItemSeqNew, ItemCodNew: Integer;
begin
  //salva o código e o número de sequencia do item atual.
  ItemCod:=DM2.TBDeliverysItensDLI_CODIGO.Value;
  ItemSeq:=DM2.TBDeliverysItensDLI_SEQUENCIA.Value;
  ItemDlv:=DM2.TBDeliverysItensDLI_DELIVERY.Value;

  //pega dados do item anterior.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select first(1) DLI_CODIGO, DLI_SEQUENCIA from DELIVERYSITENS where DLI_DELIVERY=:delivery and DLI_SEQUENCIA < :sequencia order by DLI_SEQUENCIA desc');
  DM.QYAux.ParamByName('delivery').AsInteger:=ItemDlv;
  DM.QYAux.ParamByName('sequencia').AsInteger:=ItemSeq;
  DM.QYAux.Open;
  if DM.QYAux.IsEmpty then //nenhum item anterior.
  begin
    DM.QYAux.Close;
    Exit;
  end;
  ItemSeqNew:=DM.QYAux.FieldByName('DLI_SEQUENCIA').AsInteger; //sequencia do item anterior.
  ItemCodNew:=DM.QYAux.FieldByName('DLI_CODIGO').AsInteger;

  //atualiza o item anterior com a sequencia do item atual.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update DELIVERYSITENS set DLI_SEQUENCIA=:sequencia where DLI_CODIGO=:codigo');
  DM.QYAux.ParamByName('sequencia').AsInteger:=ItemSeq;
  DM.QYAux.ParamByName('codigo').AsInteger:=ItemCodNew;
  DM.QYAux.ExecSQL;

  //atualiza o item atual com a sequencia do item anterior.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update DELIVERYSITENS set DLI_SEQUENCIA=:sequencia where DLI_CODIGO=:codigo');
  DM.QYAux.ParamByName('sequencia').AsInteger:=ItemSeqNew;
  DM.QYAux.ParamByName('codigo').AsInteger:=ItemCod;
  DM.QYAux.ExecSQL;

  //volta para o registro atual e atualiza a sequencia para menos um.
  DM2.TBDeliverysItens.Close;
  DM2.TBDeliverysItens.Open;
  DM2.TBDeliverysItens.Locate('DLI_CODIGO',ItemCod,[]);
end;

procedure TFormDelivery.PedidoViaAPP1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido está inutilizado.');

  DM2.TBDeliverys.Edit;
  if DM2.TBDeliverysDLV_VIAAPP.Value='N' then
  DM2.TBDeliverysDLV_VIAAPP.Value:='S' else
  DM2.TBDeliverysDLV_VIAAPP.Value:='N';
  DM2.TBDeliverys.Post;
end;

procedure TFormDelivery.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormDeliveryRel, FormDeliveryRel);
  FormDeliveryRel.ShowModal;
  FormDeliveryRel.Free;
  FormDeliveryRel:=nil;
end;

procedure TFormDelivery.ResetarPesquisa1Click(Sender: TObject);
begin
  DM2.TBDeliverys.Close;
  DM2.TBDeliverys.SQL.Clear;
  DM2.TBDeliverys.SQL.Add('select DLV_BAIRRO, DLV_CARTAO, DLV_CEP, DLV_CIDADE, DLV_CIDADECODIGO, DLV_CLIENTE, DLV_CODIGO, DLV_COMPLEMENTO, '+
                          'DLV_DESCPORC, DLV_DESCVALOR, DLV_DINHEIRO, DLV_DTATUALIZACAO, DLV_DTCADASTRO, DLV_ENDERECO, DLV_ENTREGADOR, '+
                          'DLV_ESTADO, DLV_ESTADOCODIGO, DLV_FONE1, DLV_FONE2, DLV_HRATUALIZACAO, DLV_HRCADASTRO, DLV_MOTIVOCANCELAMENTO, '+
                          'DLV_MOTIVOINUTILIZACAO, DLV_NUMERO, DLV_OBSERVACOES, DLV_RETIRA, DLV_SEQUENCIAITEM, DLV_STATUS, DLV_TAXA, '+
                          'DLV_TAXATIPO, DLV_TAXAVALOR, DLV_TOTALITENS, DLV_TOTALTAXA, DLV_TROCO, DLV_USUARIO, DLV_VALORTOTAL, '+
                          'DLV_VENDEDOR, DLV_VIAAPP, CLI_NOME, TAX_DESCRICAO, A.VEN_NOME, B.VEN_NOME as VEN_NOMEENTREGADOR from DELIVERYS '+
                          'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO '+
                          'left join VENDEDORES A on DLV_VENDEDOR=A.VEN_CODIGO '+
                          'left join VENDEDORES B on DLV_ENTREGADOR=B.VEN_CODIGO '+
                          'left join TAXAS on DLV_TAXA=TAX_CODIGO '+
                          'where DLV_STATUS=''A'' or DLV_STATUS=''W'' or DLV_STATUS=''P'' or DLV_STATUS=''E'' '+
                          'order by CLI_NOME, DLV_CODIGO');
  DM2.TBDeliverys.Open;
end;

procedure TFormDelivery.RestaurarVisualizaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormDelivery.RetiraNoLocal1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido está inutilizado.');

  DM2.TBDeliverys.Edit;
  if DM2.TBDeliverysDLV_RETIRA.Value='N' then
  DM2.TBDeliverysDLV_RETIRA.Value:='S' else
  DM2.TBDeliverysDLV_RETIRA.Value:='N';
  DM2.TBDeliverys.Post;
end;

procedure TFormDelivery.SelecionarCliente1Click(Sender: TObject);
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='C','Este pedido está cancelado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido já está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='I','Este pedido está inutilizado.');

  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
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
    DM2.TBDeliverys.Post;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormDelivery.TreeView1Click(Sender: TObject);
begin
  TreeView2.Items[treeview1.Selected.AbsoluteIndex].Selected:=True; //:=TreeView1.Selected;
end;

procedure TFormDelivery.TreeView1DblClick(Sender: TObject);
begin
  if DM2.TBDeliverys.IsEmpty then
  Exit;
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='F','Este pedido já está finalizado.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='E','Este pedido já está em entrega.');
  AbortIf(DM2.TBDeliverysDLV_STATUS.Value='P','Este pedido já está em produção.');

  if DM2.TBDeliverysDLV_STATUS.Value='A' then
  begin
    if TreeView2.Selected.Text<>'GRUPO' then //item selecionado não é um grupo.
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=StrToInt(TreeView2.Selected.Text);
      DM.TBProdutos.Open;

      DM2.TBDeliverysItens.Insert;
      DM2.TBDeliverysItensDLI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
      DM2.TBDeliverysItensDLI_NOME.Value:=DM.TBProdutosPRO_NOME.Value;
      DM2.TBDeliverysItensDLI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
      DM2.TBDeliverysItens.Post;
    end;
  end;
end;

procedure TFormDelivery.VerEnderecoNoGoogleMaps1Click(Sender: TObject);
var URL: String;
begin
  AbortIf(DM2.TBDeliverys.IsEmpty,'Nenhum pedido selecionado.');

  URL:='https://www.google.com.br/maps/place/'+
       DM2.TBDeliverysDLV_ENDERECO.Value+' '+
       DM2.TBDeliverysDLV_NUMERO.Value+' '+
       DM2.TBDeliverysDLV_BAIRRO.Value+' '+
       DM2.TBDeliverysDLV_CIDADE.Value+' '+
       DM2.TBDeliverysDLV_ESTADO.Value;
  ShellExecute(GetDesktopWindow,'open',PChar(URL),nil,nil,sw_ShowNormal);
end;

initialization
  RegisterClass(TFormDelivery);

finalization
  UnRegisterClass(TFormDelivery);

end.
