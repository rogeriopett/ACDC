unit ComandasControle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBSBtn, ExtCtrls, ImgList, PngImageList, DB, Menus,
  StdCtrls, DBCtrls, Buttons, PngBitBtn, Grids, DBGrids,
  Mask, PngSpeedButton, ComCtrls, pngimage, System.ImageList, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormComandasControle = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    CadastroDeComandas1: TMenuItem;
    N3: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    N5: TMenuItem;
    IncluirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    CadastroDeProdutos1Button: TPngSpeedButton;
    ImprimirComanda1Button: TPngSpeedButton;
    CadastroDeComandas1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    ImprimirComanda1: TMenuItem;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn7: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    Splitter1: TSplitter;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    DSComandas: TDataSource;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    PngBitBtn1: TPngBitBtn;
    LocalizarComandasEmAberto1: TMenuItem;
    LocalizarComandasEmAberto1Button: TPngSpeedButton;
    PrimeiroRegistro1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    Bevel2: TBevel;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeClientes1: TMenuItem;
    TRComandas: TFDTransaction;
    QYComandas: TFDQuery;
    QYComandasCMD_CLIENTE: TIntegerField;
    QYComandasCMD_CODIGO: TIntegerField;
    QYComandasCMD_COMANDA: TIntegerField;
    QYComandasCMD_COMISSAO: TFMTBCDField;
    QYComandasCMD_DATA: TDateField;
    QYComandasCMD_DATABAIXA: TDateField;
    QYComandasCMD_DESCPORC: TFMTBCDField;
    QYComandasCMD_DESCVALOR: TFMTBCDField;
    QYComandasCMD_DTATUALIZACAO: TDateField;
    QYComandasCMD_HORAINICIO: TTimeField;
    QYComandasCMD_HORAINICIOMIN: TIntegerField;
    QYComandasCMD_HORAFIM: TTimeField;
    QYComandasCMD_HORAFIMMIN: TIntegerField;
    QYComandasCMD_OBSERVACOES: TMemoField;
    QYComandasCMD_SEQUENCIAITEM: TIntegerField;
    QYComandasCMD_STATUS: TStringField;
    QYComandasCMD_TEMPOTOTAL: TStringField;
    QYComandasCMD_TEMPOTOTALDEC: TFMTBCDField;
    QYComandasCMD_TEMPOTOTALMIN: TIntegerField;
    QYComandasCMD_TOTALITENS: TFMTBCDField;
    QYComandasCMD_USUARIO: TStringField;
    QYComandasCMD_VALORCOMISSAO: TFMTBCDField;
    QYComandasCMD_VALORPAGAR: TFMTBCDField;
    QYComandasCMD_VALORPAGO: TFMTBCDField;
    QYComandasCMD_VALORTOTAL: TFMTBCDField;
    QYComandasCMD_VENDEDOR: TIntegerField;
    QYComandasCLI_NOME: TStringField;
    QYComandasVEN_NOME: TStringField;
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DSComandasDataChange(Sender: TObject; Field: TField);
    procedure CadastroDeComandas1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure ImprimirComanda1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure LocalizarComandasEmAberto1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComandasControle: TFormComandasControle;

implementation
uses DataMod, DataMod2, Main, Funcoes1, ComandasItens, Produtos,
  Comandas, ComandasLoc, FuncoesFirenet, Clientes;
{$R *.dfm}

procedure TFormComandasControle.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormComandasControle.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandas.IsEmpty,'Nenhuma comanda selecionada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='F','Comanda já finalizada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='C','Comanda cancelada.');

  DM2.TBComandasItens.Insert;
  Application.CreateForm(TFormComandasItens, FormComandasItens);
  FormComandasItens.ShowModal;
  FormComandasItens.Free;
  FormComandasItens:=nil;
  //localiza e atualiza dados no grid.
  DM.CodigoMark:=QYComandasCMD_CODIGO.Value;
  QYComandas.Close;
  QYComandas.Open;
  QYComandas.Locate('CMD_CODIGO',DM.CodigoMark,[]);
end;

procedure TFormComandasControle.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandasItens.IsEmpty,       'Não existe nenhum item para excluir.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='F','Comanda já finalizada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='C','Comanda cancelada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBComandasItens.Delete;
    DM2.CalcularTotaisComanda(True); //era true.
    //localiza e atualiza dados no grid.
    DM.CodigoMark:=QYComandasCMD_CODIGO.Value;
    QYComandas.Close;
    QYComandas.Open;
    QYComandas.Locate('CMD_CODIGO',DM.CodigoMark,[]);
  end;
end;

procedure TFormComandasControle.BitBtn7Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandasItens.IsEmpty,       'Não existe nenhum item para excluir.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='F','Comanda já finalizada.');
  AbortIf(DM2.TBComandasCMD_STATUS.Value='C','Comanda cancelada.');

  if MessageDlg('Eliminar todos os itens?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBComandasItens.First;
    while not DM2.TBComandasItens.Eof do
    begin
      DM2.TBComandasItens.Delete;
    end;
    DM2.CalcularTotaisComanda(True); //era true.
    Screen.Cursor:=crDefault;
    //localiza e atualiza dados no grid.
    DM.CodigoMark:=QYComandasCMD_CODIGO.Value;
    QYComandas.Close;
    QYComandas.Open;
    QYComandas.Locate('CMD_CODIGO',DM.CodigoMark,[]);
  end;
end;

procedure TFormComandasControle.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormComandasControle.DBGrid1DblClick(Sender: TObject);
begin
  PngBitBtn1.Click;
end;

procedure TFormComandasControle.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  PngBitBtn1.Click;
end;

procedure TFormComandasControle.DBGrid2DblClick(Sender: TObject);
begin
  if not QYComandas.IsEmpty then
  begin
    DM.CodigoMark:=QYComandasCMD_CODIGO.Value;
    Application.CreateForm(TFormComandas, FormComandas);
    FormComandas.ShowModal;
    FormComandas.Free;
    FormComandas:=nil;
    //atualiza e tenta localizar a comanda.
    QYComandas.Close;
    QYComandas.Open;
    QYComandas.Locate('CMD_CODIGO',DM.CodigoMark,[]);
  end;
end;

procedure TFormComandasControle.DSComandasDataChange(Sender: TObject; Field: TField);
begin
  DM2.TBComandas.Close;
  DM2.TBComandas.ParamByName('codigo').AsInteger:=QYComandasCMD_CODIGO.Value;
  DM2.TBComandas.Open;
end;

procedure TFormComandasControle.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComandasControle.FormCreate(Sender: TObject);
begin
  QYComandas.Open;
end;

procedure TFormComandasControle.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormComandasControle.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormComandasControle);
end;

procedure TFormComandasControle.ImprimirComanda1Click(Sender: TObject);
begin
  AbortIf(QYComandas.IsEmpty,'Nenhuma comanda selecionada.');

  if MessageDlg('Imprimir comanda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if DM.ComandasEstilo='DOS' then
    ImprimirComandaTermica;
    if DM.ComandasEstilo='WINDOWS' then
    begin
      MessageDlg('Estilo windows ainda não disponível.',mtInformation,[mbOk],0);
    end;
  end;
end;

procedure TFormComandasControle.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComandasLoc, FormComandasLoc);
  FormComandasLoc.ShowModal;
  if ComandasLoc.Procurar then
  begin
    QYComandas.Close;
    QYComandas.SQL.Clear;
    QYComandas.SQL.Add('select CMD_CLIENTE, CMD_CODIGO, CMD_COMANDA, CMD_COMISSAO, CMD_DATA, CMD_DATABAIXA, '+
                       'CMD_DESCPORC, CMD_DESCVALOR, CMD_DTATUALIZACAO, CMD_HORAINICIO, CMD_HORAINICIOMIN, '+
                       'CMD_HORAFIM, CMD_HORAFIMMIN, CMD_OBSERVACOES, CMD_SEQUENCIAITEM, CMD_STATUS, '+
                       'CMD_TEMPOTOTAL, CMD_TEMPOTOTALDEC, CMD_TEMPOTOTALMIN, CMD_TOTALITENS, CMD_USUARIO, '+
                       'CMD_VALORCOMISSAO, CMD_VALORPAGAR, CMD_VALORPAGO, CMD_VALORTOTAL, CMD_VENDEDOR, CLI_NOME, VEN_NOME from COMANDAS '+
                       'left join CLIENTES on CMD_CLIENTE=CLI_CODIGO '+
                       'left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO '+
                       'where CMD_CODIGO=:codigo');
    QYComandas.ParamByName('codigo').AsInteger:=FormComandasLoc.QYComandasCMD_CODIGO.Value;
    QYComandas.Open;
  end;
  FormComandasLoc.Free;
  FormComandasLoc:=nil;
end;

procedure TFormComandasControle.LocalizarComandasEmAberto1Click(Sender: TObject);
begin
  QYComandas.Close;
  QYComandas.SQL.Clear;
  QYComandas.SQL.Add('select CMD_CLIENTE, CMD_CODIGO, CMD_COMANDA, CMD_COMISSAO, CMD_DATA, CMD_DATABAIXA, '+
                     'CMD_DESCPORC, CMD_DESCVALOR, CMD_DTATUALIZACAO, CMD_HORAINICIO, CMD_HORAINICIOMIN, '+
                     'CMD_HORAFIM, CMD_HORAFIMMIN, CMD_OBSERVACOES, CMD_SEQUENCIAITEM, CMD_STATUS, '+
                     'CMD_TEMPOTOTAL, CMD_TEMPOTOTALDEC, CMD_TEMPOTOTALMIN, CMD_TOTALITENS, CMD_USUARIO, '+
                     'CMD_VALORCOMISSAO, CMD_VALORPAGAR, CMD_VALORPAGO, CMD_VALORTOTAL, CMD_VENDEDOR, CLI_NOME, VEN_NOME from COMANDAS '+
                     'left join CLIENTES on CMD_CLIENTE=CLI_CODIGO '+
                     'left join VENDEDORES on CMD_VENDEDOR=VEN_CODIGO '+
                     'where CMD_STATUS=''A'' '+
                     'order by CMD_COMANDA');
  QYComandas.Open;
end;

procedure TFormComandasControle.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormComandasControle.CadastroDeComandas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComandas, FormComandas);
  FormComandas.ShowModal;
  FormComandas.Free;
  FormComandas:=nil;

  QYComandas.Close;
  QYComandas.Open;
end;

procedure TFormComandasControle.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandasItens.IsEmpty,'Nenhum item selecionado.');

  if DM2.TBComandasItensCDI_PAGO.Value='N' then
  begin
    if MessageDlg('Deseja marcar o produto como pago?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM2.TBComandasItens.Edit;
      DM2.TBComandasItensCDI_PAGO.Value:='S';
      DM2.TBComandasItens.Post;
      DM.CodigoMark:=QYComandasCMD_CODIGO.Value;
      QYComandas.Close;
      QYComandas.Open;
      QYComandas.Locate('CMD_CODIGO',DM.CodigoMark,[]);
      Exit;
    end;
  end;
  if DM2.TBComandasItensCDI_PAGO.Value='S' then
  begin
    if MessageDlg('Deseja marcar o produto como NÃO pago?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM2.TBComandasItens.Edit;
      DM2.TBComandasItensCDI_PAGO.Value:='N';
      DM2.TBComandasItens.Post;
      DM.CodigoMark:=QYComandasCMD_CODIGO.Value;
      QYComandas.Close;
      QYComandas.Open;
      QYComandas.Locate('CMD_CODIGO',DM.CodigoMark,[]);
    end;
  end;
end;

procedure TFormComandasControle.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormComandasControle);

finalization
  UnRegisterClass(TFormComandasControle);

end.
