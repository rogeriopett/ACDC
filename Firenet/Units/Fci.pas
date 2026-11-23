unit Fci;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus,
  Vcl.Buttons, PngSpeedButton, DBSBtn, Data.DB, PngBitBtn, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormFci = class(TForm)
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
    GerarArquivo1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
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
    PngImageList1: TPngImageList;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    N2: TMenuItem;
    GerarArquivo1: TMenuItem;
    LerArquivoRetorno1: TMenuItem;
    N3: TMenuItem;
    BaixarProcesso1: TMenuItem;
    AtualizarProdutosComONumeroFCI1: TMenuItem;
    ReabrirProcesso1: TMenuItem;
    DBGrid1: TDBGrid;
    IncluirItem1Button: TPngBitBtn;
    EliminarItem1Button: TPngBitBtn;
    AlterarItem1Button: TPngBitBtn;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    LerArquivoRetorno1Button: TPngSpeedButton;
    ReabrirProcesso1Button: TPngSpeedButton;
    BaixarProcesso1Button: TPngSpeedButton;
    AtualizarProdutosComONumeroFCI1Button: TPngSpeedButton;
    SaveDialog1: TSaveDialog;
    CadastroDeProdutos1: TMenuItem;
    Cadastros1: TMenuItem;
    CadastroDeProdutos1Button: TPngSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure GerarArquivo1Click(Sender: TObject);
    procedure LerArquivoRetorno1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IncluirItem1ButtonClick(Sender: TObject);
    procedure EliminarItem1ButtonClick(Sender: TObject);
    procedure AlterarItem1ButtonClick(Sender: TObject);
    procedure AtualizarProdutosComONumeroFCI1Click(Sender: TObject);
    procedure BaixarProcesso1Click(Sender: TObject);
    procedure ReabrirProcesso1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeProdutos1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GerarArquivoFCI(Arquivo: String);
  public
    { Public declarations }
  end;

var
  FormFci: TFormFci;

implementation
uses DataMod, FciItens, FciLoc, Funcoes1, Produtos;
{$R *.dfm}

procedure TFormFci.GerarArquivoFCI(Arquivo: String);
var I: Integer;
  S: TStringList;
begin
  S:=TStringList.Create;

  //Bloco 0.
  S.Add('0000|'+LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value)+'|'+DM.TBEmpresaEMP_NOME.Value+'|1.0');
  S.Add('0001|Texto em caracteres UTF-8: (dígrafo BR)''ção'',(dígrafo espanhol-enhe)''ñ'',(trema)''Ü'',(ordinais)''ªº'',(ligamento s+z alemão)''ß''.');
  S.Add('0010|'+LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value)+'|'+DM.TBEmpresaEMP_NOME.Value+'|'+LimparFormatacao(DM.TBEmpresaEMP_IE.Value)+'|'+DM.TBEmpresaEMP_ENDERECO.Value+'|'+LimparFormatacao(DM.TBEmpresaEMP_CEP.Value)+'|'+DM.TBEmpresaEMP_CIDADE.Value+'|'+DM.TBEmpresaEMP_ESTADO.Value);
  S.Add('0990|4');

  //Bloco 5.
  S.Add('5001');
  I:=0;
  DM.TBFciItens.First;
  DM.TBFciItens.DisableControls;
  while not DM.TBFciItens.Eof do
  begin
    Inc(I);
    S.Add(
      '5020|'+
      DM.TBFciItensFII_NOME.Value+'|'+
      DM.TBFciItensFII_CLASSFISCAL.Value+'|'+
      DM.TBFciItensFII_PRODUTO.Value.ToString+'|'+
      DM.TBFciItensFII_CODIGOBARRAS.Value+'|'+
      DM.TBFciItensFII_UNIDADEFCI.Value+'|'+
      Decimais2(DM.TBFciItensFII_VALORSAIDA.AsExtended,2) + '|' +
      Decimais2(DM.TBFciItensFII_VALORPARCELA.AsExtended,2)+'|'+
      Decimais2(DM.TBFciItensFII_COEFICIENTE.AsExtended,2)
    );
    DM.TBFciItens.Next;
  end;
  DM.TBFciItens.EnableControls;
  S.Add('5990|'+(I+2).ToString); //qtde linhas registro 5.

  //Bloco 9.
  S.Add('9001');
  S.Add('9900|0000|1');
  S.Add('9900|0010|1');
  S.Add('9900|5020|'+I.ToString); //qtde linhas registro de produto.
  S.Add('9990|5'); //qtde linhas registro 9.
  S.Add('9999|'+(S.Count+1).ToString); //qtde linhas no arquivo.
  S.SaveToFile(Arquivo,TEncoding.UTF8);
  S.Destroy;
  MessageDlg('Arquivo gerado com sucesso.',mtInformation,[mbOk],0);
end;

procedure TFormFci.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormFci.AlterarItem1ButtonClick(Sender: TObject);
begin
  AbortIf(DM.TBFciItens.IsEmpty,'Não existe nenhum item para editar.');
  AbortIf(DM.TBFciPFI_STATUS.Value='B','Este processo FCI já está baixado.');

  DM.TBFciItens.Edit;
  Application.CreateForm(TFormFciItens, FormFciItens);
  FormFciItens.ShowModal;
  FormFciItens.Free;
  FormFciItens:=nil;
end;

procedure TFormFci.AtualizarProdutosComONumeroFCI1Click(Sender: TObject);
begin
  AbortIf(DM.TBFci.IsEmpty,'Nenhum processo FCI selecionado.');
  AbortIf(DM.TBFciItens.IsEmpty,'Este processo não tem nenhum item.');

  if MessageDlg('Deseja atualizar o cadastro dos produtos com o código FCI?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBFciItens.DisableControls;
    DM.TBFciItens.First;
    while not DM.TBFciItens.Eof do
    begin
      if DM.TBFciItensFII_CODIGOFCI.Value<>'' then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update PRODUTOS set PRO_FCI=:fci where PRO_CODIGO=:codigo');
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBFciItensFII_PRODUTO.Value;
        DM.QYAux.ParamByName('fci').AsString:=DM.TBFciItensFII_CODIGOFCI.Value;
        DM.QYAux.ExecSQL;
        DM.TBProdutos.Close;
        DM.TBProdutos.Open;
      end;
      DM.TBFciItens.Next;
    end;
    DM.TBFciItens.EnableControls;
    MessageDlg('Produtos atualizados.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormFci.BaixarProcesso1Click(Sender: TObject);
begin
  AbortIf(DM.TBFci.IsEmpty,'Nenhum processo FCI selecionado.');
  AbortIf(DM.TBFciPFI_STATUS.Value='B','Processo FCI já baixado.');

  if MessageDlg('Baixar processo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBFci.Edit;
    DM.TBFciPFI_STATUS.Value:='B';
    DM.TBFci.Post;
  end;
end;

procedure TFormFci.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormFci.DBGrid1DblClick(Sender: TObject);
begin
  if AlterarItem1Button.Enabled then
  AlterarItem1Button.Click;
end;

procedure TFormFci.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if AlterarItem1Button.Enabled then
    AlterarItem1Button.Click;
  end;
end;

procedure TFormFci.EliminarItem1ButtonClick(Sender: TObject);
begin
  AbortIf(DM.TBFciPFI_STATUS.Value<>'A','Este processo não está em aberto.');
  AbortIf(DM.TBFciItens.IsEmpty,'Não existe nenhum item para excluir.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM.TBFciItens.Delete;
end;

procedure TFormFci.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFci.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBFci.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormFci.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFci.GerarArquivo1Click(Sender: TObject);
begin
  AbortIf(DM.TBFci.IsEmpty,'Nenhum processo selecionado.');
  AbortIf(DM.TBFciItens.IsEmpty,'Nenhum item neste processo.');

  if SaveDialog1.Execute then
  begin
    GerarArquivoFCI(SaveDialog1.FileName);
  end;
end;

procedure TFormFci.IncluirItem1ButtonClick(Sender: TObject);
begin
  AbortIf(DM.TBFci.IsEmpty,'Nenhum processo FCI selecionado.');
  AbortIf(DM.TBFciPFI_STATUS.Value<>'A','Este processo FCI não está em aberto.');

  DM.TBFciItens.Insert;
  Application.CreateForm(TFormFciItens, FormFciItens);
  FormFciItens.ShowModal;
  FormFciItens.Free;
  FormFciItens:=nil;
end;

procedure TFormFci.LerArquivoRetorno1Click(Sender: TObject);
var SL1, SL2: TStringList;
  I: Integer;
  Data, Hora, FCI, Produto: String;
begin
  AbortIf(DM.TBFci.IsEmpty,'Nenhum processo FCI selecionado.');
  AbortIf(DM.TBFciPFI_STATUS.Value='B','Processo FCI já baixado.');

  OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    SL1:=TStringList.Create;
    SL2:=TStringList.Create;
    SL1.StrictDelimiter:=True;
    SL1.Delimiter:='|';
    SL2.LoadFromFile(OpenDialog1.FileName);
    for I:=0 to Pred(SL2.Count) do
    begin
      SL1.DelimitedText:=SL2.Strings[I];
      if SL1.Strings[0]='0000' then
      begin
        Data:=Copy(SL1.Strings[5],1,10);
        Hora:=Copy(SL1.Strings[5],12,8);
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update FCI set PFI_DTENVIO=:data, PFI_HRENVIO=:hora where PFI_CODIGO=:codigo');
        DM.QYAux.ParamByName('data').AsDate:=StrToDate(Data);
        DM.QYAux.ParamByName('hora').AsTime:=StrToTime(Hora);
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBFciPFI_CODIGO.Value;
        DM.QYAux.ExecSQL;
      end;

      if SL1.Strings[0]='5020' then
      begin
        Produto:=SL1.Strings[3];
        FCI:=SL1.Strings[9];
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update FCIITENS set FII_CODIGOFCI=:fci where FII_FCI=:codigo and FII_PRODUTO=:produto');
        DM.QYAux.ParamByName('produto').AsInteger:=StrToInt(Produto);
        DM.QYAux.ParamByName('fci').AsString:=FCI;
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBFciPFI_CODIGO.Value;
        DM.QYAux.ExecSQL;
      end;
    end;
    SL1.Destroy;
    SL2.Destroy;
    DM.TBFciItens.Close;
    DM.TBFci.Close;
    DM.TBFci.Open;
    DM.TBFciItens.Open;
    MessageDlg('Leitura do arquivo concluída.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormFci.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFciLoc, FormFciLoc);
  FormFciLoc.ShowModal;
  if FciLoc.Procurar then
  begin
    DM.TBFci.Close;
    DM.TBFci.ParamByName('codigo').AsInteger:=FormFciLoc.QYFciPFI_CODIGO.Value;
    DM.TBFci.Open;
  end;
  FormFciLoc.Free;
  FormFciLoc:=nil;
end;

procedure TFormFci.ReabrirProcesso1Click(Sender: TObject);
begin
  AbortIf(DM.TBFci.IsEmpty,'Nenhum processo FCI selecionado.');
  AbortIf(DM.TBFciPFI_STATUS.Value='A','Processo FCI já está em aberto.');

  if MessageDlg('Reabrir processo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBFci.Edit;
    DM.TBFciPFI_STATUS.Value:='A';
    DM.TBFci.Post;
  end;
end;

initialization
  RegisterClass(TFormFci);

finalization
  UnRegisterClass(TFormFci);

end.
