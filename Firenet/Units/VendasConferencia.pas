unit VendasConferencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, PngSpeedButton, DBSBtn,
  Vcl.ExtCtrls, Vcl.Menus, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Mask,
  Datasnap.DBClient, System.UITypes;

type
  TFormVendasConferencia = class(TForm)
    Label1: TLabel;
    Label15: TLabel;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    Relatrios1: TMenuItem;
    Relatorios1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton2: TPngSpeedButton;
    Bevel1: TBevel;
    SpeedButton6: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    TBConferencia: TClientDataSet;
    Label4: TLabel;
    DSConferencia: TDataSource;
    TBConferenciaCON_VENDA: TIntegerField;
    TBConferenciaCON_PRODUTO: TIntegerField;
    TBConferenciaCON_DESCRICAO: TStringField;
    TBConferenciaCON_STATUS: TStringField;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    N1: TMenuItem;
    FinalizarConferencia1: TMenuItem;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    CadastroDeProdutos1Button: TPngSpeedButton;
    CadastroDePedidoDeVendas1Button: TPngSpeedButton;
    N3: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    CadastroDePedidoDeVendas1: TMenuItem;
    TBConferenciaCON_QUANTIDADE: TFMTBCDField;
    TBConferenciaCON_QUANTIDADECONFERIDA: TFMTBCDField;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ajuda2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FinalizarConferencia1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure CadastroDePedidoDeVendas1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarVenda;
  end;

var
  FormVendasConferencia: TFormVendasConferencia;

implementation
uses DataMod, Funcoes1, VendasLoc, ProdutosLoc, Produtos, Vendas, InputNumber,
  FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasConferencia.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVendasConferencia.CadastroDePedidoDeVendas1Click(
  Sender: TObject);
begin
  if Edit3.Text<>'' then
  begin
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DM.TBVendas.Open;
  end;
  Application.CreateForm(TFormVendas, FormVendas);
  FormVendas.ShowModal;
  FormVendas.Free;
  FormVendas:=nil;
end;

procedure TFormVendasConferencia.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormVendasConferencia.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormVendasConferencia.Edit2KeyPress(Sender: TObject; var Key: Char);
var CodigoProduto: Integer;
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
  if Key=#13 then
  begin
    if Edit2.Text='' then Exit;
    AbortIf(TBConferencia.IsEmpty,'Tabela de itens vazia. Selecione um pedido de venda.');

    //CONFERENCIA PELO CODIGO DO PRODUTO.
    if RadioGroup1.ItemIndex=0 then
    CodigoProduto:=StrToInt(Edit2.Text);

    //CONFERENCIA PELO CODIGO DO FABRICANTE.
    if RadioGroup1.ItemIndex=1 then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select PRO_CODIGO from PRODUTOS where PRO_CODIGOFAB=:codigo');
      DM.QYAux.ParamByName('codigo').AsString:=Edit2.Text;
      DM.QYAux.Open;
      if not DM.QYAux.IsEmpty then
      begin
        DM.QYAux.FetchAll; //se tiver mais de um produto com o mesmo codigo fab., abre a tela de localização de produtos já com a listagem dos produtos existentes.
        if DM.QYAux.RecordCount>1 then
        begin
          Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
          FormProdutosLoc.QYProdutos.SQL.Clear;
          FormProdutosLoc.QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO '+
                                             'where PRO_CODIGOFAB='+QuotedStr(Edit2.Text)+' order by PRO_NOME');
          FormProdutosLoc.QYProdutos.Active:=True;
          ProdutosLoc.FocoNoGrid:=True;
          FormProdutosLoc.ShowModal;
          if ProdutosLoc.Procurar then
          begin
            CodigoProduto:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
          end;
          FormProdutosLoc.Free;
          FormProdutosLoc:=nil;
        end else
        CodigoProduto:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
      end;
    end;

    //CONFERENCIA PELO CODIGO DE BARRAS.
    if RadioGroup1.ItemIndex=2 then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select PRO_CODIGO from PRODUTOS where PRO_CODIGOBARRAS=:codigo');
      DM.QYAux.ParamByName('codigo').AsString:=Edit2.Text;
      DM.QYAux.Open;
      if not DM.QYAux.IsEmpty then
      begin
        DM.QYAux.FetchAll; //se tiver mais de um produto com o mesmo codigo fab., abre a tela de localização de produtos já com a listagem dos produtos existentes.
        if DM.QYAux.RecordCount>1 then
        begin
          Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
          FormProdutosLoc.QYProdutos.SQL.Clear;
          FormProdutosLoc.QYProdutos.SQL.Add('select * from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO left join MARCAS on PRO_MARCA=MAR_CODIGO '+
                                             'where PRO_CODIGOBARRAS='+QuotedStr(Edit2.Text)+' order by PRO_NOME');
          FormProdutosLoc.QYProdutos.Active:=True;
          //ProdutosLoc.FocoNoGrid:=True;
          FormProdutosLoc.ShowModal;
          if ProdutosLoc.Procurar then
          begin
            CodigoProduto:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
          end;
          FormProdutosLoc.Free;
          FormProdutosLoc:=nil;
        end else
        CodigoProduto:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
      end;
    end;

    if TBConferencia.Locate('CON_PRODUTO',CodigoProduto,[]) then
    begin
      if TBConferenciaCON_STATUS.Value='OK' then
      begin
        MessageDlg('A conferência deste item já está concluída.',mtWarning,[mbOk],0);
      end else
      if (TBConferenciaCON_QUANTIDADECONFERIDA.Value+StrToFloat(Edit1.Text)) > TBConferenciaCON_QUANTIDADE.Value then
      begin
        MessageDlg('A quantidade conferida não pode ser superior a quantidade existente no pedido.',mtError,[mbOk],0);
      end else
      begin
        TBConferencia.Edit;
        TBConferenciaCON_QUANTIDADECONFERIDA.Value:=TBConferenciaCON_QUANTIDADECONFERIDA.Value+StrToFloat(Edit1.Text);
        if TBConferenciaCON_QUANTIDADE.Value=TBConferenciaCON_QUANTIDADECONFERIDA.Value then
        TBConferenciaCON_STATUS.Value:='OK';
        TBConferencia.Post;
      end;
    end else
    MessageDlg('Produto não encontrado nesta venda.',mtInformation,[mbOk],0);
    Edit1.Text:='1';
    Edit2.Text:='';
    Edit2.SetFocus;
  end;
end;

procedure TFormVendasConferencia.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasConferencia.FinalizarConferencia1Click(Sender: TObject);
var OK: Boolean;
  I:Integer;
begin
  AbortIf(TBConferencia.IsEmpty,'Nenhum pedido de venda selecionado.');

  TBConferencia.DisableControls;
  TBConferencia.First;
  OK:=True;
  while not TBConferencia.Eof do
  begin
    if TBConferenciaCON_STATUS.Value<>'OK' then
    OK:=False;
    TBConferencia.Next;
  end;
  TBConferencia.EnableControls;

  AbortIf(OK=False,'A conferência não está completa.'+#13#10+'Existem itens que não foram conferidos.');

  if MessageDlg('Deseja finalizar a conferência?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBVendas.Close;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update VENDAS set VED_CONFERIDO=:conferido, VED_CONFERIDODATA=:data, VED_CONFERIDOPOR=:por where VED_CODIGO=:codigo');
    DM.QYAux.ParamByName('conferido').AsString:='S';
    DM.QYAux.ParamByName('data').AsDate:=DM.ServerDate;
    DM.QYAux.ParamByName('por').AsString:=DM.UsuarioLogin;
    DM.QYAux.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DM.QYAux.ExecSQL;

    DM.TBVendas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
    DM.TBVendas.Open;

    if MessageDlg('Conferência finalizada com sucesso.'+#13#10#13#10+'Deseja imprimir a etiqueta de conferência?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      Application.CreateForm(TFormInputNumber, FormInputNumber);
      InputNumber.Titulo:='Número de etiquetas';
      InputNumber.Etiqueta:='Quantas etiquetas imprimir?';
      InputNumber.DefaultValue:='1';
      InputNumber.AceitaVirgula:=False;
      FormInputNumber.ShowModal;
      if InputNumber.Retorno<>'' then
      begin
        for I:=1 to StrToInt(InputNumber.Retorno) do
        begin
          ImprimirEtiquetasConferenciaPPLB;
        end;
      end;
      FormInputNumber.Free;
      FormInputNumber:=nil;
    end;

    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    Edit6.Clear;
    TBConferencia.EmptyDataSet;
  end;
end;

procedure TFormVendasConferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBVendasVED_CONFERIDO.Value='N' then
  begin
    if MessageDlg('Deseja cancelar a conferência do pedido?',mtConfirmation,[mbOk,mbCancel],0)=mrCancel then
    begin
      Action:=caNone;
    end;
  end;
end;

procedure TFormVendasConferencia.FormCreate(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=2;
end;

procedure TFormVendasConferencia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasConferencia.CarregarVenda;
begin
  Edit3.Text:=IntToStr(DM.TBVendasVED_CODIGO.Value);
  Edit4.Text:=IntToStr(DM.TBVendasVED_CLIENTE.Value);
  Edit5.Text:=DM.TBVendasVED_NOME.Value;
  Edit6.Text:=DateToStr(DM.TBVendasVED_DTEMISSAO.Value);
  DM.TBVendasItens.First;
  TBConferencia.EmptyDataSet;
  while not DM.TBVendasItens.Eof do
  begin
    if not TBConferencia.Locate('CON_PRODUTO',DM.TBVendasItensVEI_PRODUTO.Value,[]) then
    begin
      TBConferencia.Insert;
      TBConferenciaCON_VENDA.Value:=DM.TBVendasItensVEI_VENDA.Value;
      TBConferenciaCON_PRODUTO.Value:=DM.TBVendasItensVEI_PRODUTO.Value;
      TBConferenciaCON_DESCRICAO.Value:=DM.TBVendasItensVEI_DESCRICAO.Value;
      TBConferenciaCON_QUANTIDADE.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value;
      TBConferenciaCON_QUANTIDADECONFERIDA.Value:=0;
      TBConferenciaCON_STATUS.Value:='--';
      TBConferencia.Post;
    end else
    begin
      TBConferencia.Edit;
      TBConferenciaCON_QUANTIDADE.Value:=TBConferenciaCON_QUANTIDADE.Value+DM.TBVendasItensVEI_QUANTIDADE.Value;
      TBConferencia.Post;
    end;
    DM.TBVendasItens.Next;
  end;
end;

procedure TFormVendasConferencia.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasLoc, FormVendasLoc);
  FormVendasLoc.ShowModal;
  if VendasLoc.Procurar then
  begin
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=FormVendasLoc.QYVendasVED_CODIGO.Value;
    DM.TBVendas.Open;
    if DM.TBVendasVED_CONFERIDO.Value='S' then
    begin
      if MessageDlg('Esta venda já foi conferida.'+#13#10#13#10+'Deseja conferir novamente?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
      Exit;
    end;
    CarregarVenda;
  end;
  FormVendasLoc.Free;
  FormVendasLoc:=nil;
end;

procedure TFormVendasConferencia.Relatorios1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

end.
