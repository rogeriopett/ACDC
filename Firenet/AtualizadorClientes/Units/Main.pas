unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBCustomDataSet, IBDatabase, DB, IBQuery, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, XPMan, PngBitBtn, CheckLst;

type
  TFormMain = class(TForm)
    ProgressBar1: TProgressBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn3: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    Label5: TLabel;
    Bevel1: TBevel;
    XPManifest1: TXPManifest;
    BitBtn5: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    CheckListBox1: TCheckListBox;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Label14: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure MontarSQLInsert(var SQL: WideString);
    procedure MontarSQLUpdate(var SQL: WideString);
    procedure PassarValoresCampos;
    procedure GravarCamposSelecionados();
    function RetornarValor(Secao, Chave: String): Boolean;
  public
    { Public declarations }
    procedure Variaveis(Acao: String);
    procedure AtualizarCheckListBox();
  end;

var
  FormMain: TFormMain;
  DB_ORIGEM, SV_ORIGEM, TP_ORIGEM, DB_DESTINO, SV_DESTINO, TP_DESTINO: String;
  Cancelar: Boolean;
implementation
uses Funcoes1, IniFiles, DataMod, Config;

{$R *.dfm}

procedure TFormMain.GravarCamposSelecionados();
var F: TIniFile;
  I: Integer;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Parametros.ini');
  for I:=0 to CheckListBox1.Count-1 do
  begin
    F.WriteBool('CAMPOS_CLIENTES',CheckListBox1.Items[I],CheckListBox1.Checked[I]);
  end;
  F.Destroy;
end;

function TFormMain.RetornarValor(Secao, Chave: String): Boolean;
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Parametros.ini');
  Result:=F.ReadBool(Secao,Chave,True);
  F.Destroy;
end;

procedure TFormMain.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.DBOrigem.Connected:=False;
  DM.DBDestino.Connected:=False;

  Variaveis('SAVE');
  GravarCamposSelecionados();
  Application.Terminate;
end;

procedure TFormMain.MontarSQLInsert(var SQL: WideString);
var I: Integer;
begin
  SQL:='insert into CLIENTES (';
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    //quando é produto novo, vai todos os campos. if CheckListBox1.Checked[I] then
    SQL:=SQL+CheckListBox1.Items[I]+', ';
  end;
  Delete(SQL,Length(SQL)-1,2); //retira a ultima virgula e espaço.
  SQL:=SQL+') values (';
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    //quando é produto novo, vai todos os campos. if CheckListBox1.Checked[I] then
    SQL:=SQL+':'+CheckListBox1.Items[I]+', ';
  end;
  Delete(SQL,Length(SQL)-1,2); //retira a ultima virgura e espaço.
  SQL:=SQL+');';
end;


procedure TFormMain.MontarSQLUpdate(var SQL: WideString);
var I: Integer;
begin
  SQL:='update CLIENTES set ';
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    if CheckListBox1.Checked[I] then
    SQL:=SQL+CheckListBox1.Items[I]+'=:'+CheckListBox1.Items[I]+', ';
  end;
  Delete(SQL,Length(SQL)-1,2); //elimina a ultima virgula e espaço.
  SQL:=SQL+' where CLI_CODIGO=:CLI_CODIGO'
end;

procedure TFormMain.PassarValoresCampos;
begin
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CODIGO')]             then DM.QYDClientes.ParamByName('CLI_CODIGO').AsInteger:=DM.QYOClientesCLI_CODIGO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ATIVIDADE')]          then DM.QYDClientes.ParamByName('CLI_ATIVIDADE').AsInteger:=DM.QYOClientesCLI_ATIVIDADE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CONDICAO')]           then DM.QYDClientes.ParamByName('CLI_CONDICAO').AsInteger:=DM.QYOClientesCLI_CONDICAO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_LOCALESTUDA')]        then DM.QYDClientes.ParamByName('CLI_LOCALESTUDA').AsInteger:=DM.QYOClientesCLI_LOCALESTUDA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_LOCALTRABALHO')]      then DM.QYDClientes.ParamByName('CLI_LOCALTRABALHO').AsInteger:=DM.QYOClientesCLI_LOCALTRABALHO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_MAILING')]            then DM.QYDClientes.ParamByName('CLI_MAILING').AsInteger:=DM.QYOClientesCLI_MAILING.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_TELEVENDA')]          then DM.QYDClientes.ParamByName('CLI_TELEVENDA').AsInteger:=DM.QYOClientesCLI_TELEVENDA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_VENDEDOR')]           then DM.QYDClientes.ParamByName('CLI_VENDEDOR').AsInteger:=DM.QYOClientesCLI_VENDEDOR.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_AFE')]                then DM.QYDClientes.ParamByName('CLI_AFE').AsString:=DM.QYOClientesCLI_AFE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ALVARA')]             then DM.QYDClientes.ParamByName('CLI_ALVARA').AsString:=DM.QYOClientesCLI_ALVARA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ALVARASANITARIO')]    then DM.QYDClientes.ParamByName('CLI_ALVARASANITARIO').AsString:=DM.QYOClientesCLI_ALVARASANITARIO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_BAIRRO')]             then DM.QYDClientes.ParamByName('CLI_BAIRRO').AsString:=DM.QYOClientesCLI_BAIRRO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_BAIRROCOB')]          then DM.QYDClientes.ParamByName('CLI_BAIRROCOB').AsString:=DM.QYOClientesCLI_BAIRROCOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_BLOQUEARVENDA')]      then DM.QYDClientes.ParamByName('CLI_BLOQUEARVENDA').AsString:=DM.QYOClientesCLI_BLOQUEARVENDA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CEP')]                then DM.QYDClientes.ParamByName('CLI_CEP').AsString:=DM.QYOClientesCLI_CEP.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CEPCOB')]             then DM.QYDClientes.ParamByName('CLI_CEPCOB').AsString:=DM.QYOClientesCLI_CEPCOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CIDADE')]             then DM.QYDClientes.ParamByName('CLI_CIDADE').AsString:=DM.QYOClientesCLI_CIDADE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CIDADECOB')]          then DM.QYDClientes.ParamByName('CLI_CIDADECOB').AsString:=DM.QYOClientesCLI_CIDADECOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CIDADECODIGO')]       then DM.QYDClientes.ParamByName('CLI_CIDADECODIGO').AsInteger:=DM.QYOClientesCLI_CIDADECODIGO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CIDADECODIGOCOB')]    then DM.QYDClientes.ParamByName('CLI_CIDADECODIGOCOB').AsInteger:=DM.QYOClientesCLI_CIDADECODIGOCOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CLASSIFICACAO')]      then DM.QYDClientes.ParamByName('CLI_CLASSIFICACAO').AsString:=DM.QYOClientesCLI_CLASSIFICACAO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CNPJ')]               then DM.QYDClientes.ParamByName('CLI_CNPJ').AsString:=DM.QYOClientesCLI_CNPJ.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CNPJCOB')]            then DM.QYDClientes.ParamByName('CLI_CNPJCOB').AsString:=DM.QYOClientesCLI_CNPJCOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_COMPLEMENTO')]        then DM.QYDClientes.ParamByName('CLI_COMPLEMENTO').AsString:=DM.QYOClientesCLI_COMPLEMENTO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_COMPLEMENTOCOB')]     then DM.QYDClientes.ParamByName('CLI_COMPLEMENTOCOB').AsString:=DM.QYOClientesCLI_COMPLEMENTOCOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CONTATO')]            then DM.QYDClientes.ParamByName('CLI_CONTATO').AsString:=DM.QYOClientesCLI_CONTATO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_CPF')]                then DM.QYDClientes.ParamByName('CLI_CPF').AsString:=DM.QYOClientesCLI_CPF.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_DESCONTO')]           then DM.QYDClientes.ParamByName('CLI_DESCONTO').AsFloat:=DM.QYOClientesCLI_DESCONTO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_DIACOBRANCA')]        then DM.QYDClientes.ParamByName('CLI_DIACOBRANCA').AsInteger:=DM.QYOClientesCLI_DIACOBRANCA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_DTATUALIZACAO')]      then DM.QYDClientes.ParamByName('CLI_DTATUALIZACAO').AsDate:=DM.QYOClientesCLI_DTATUALIZACAO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_DTCADASTRO')]         then DM.QYDClientes.ParamByName('CLI_DTCADASTRO').AsDate:=DM.QYOClientesCLI_DTCADASTRO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_DTNASC')]             then DM.QYDClientes.ParamByName('CLI_DTNASC').AsDate:=DM.QYOClientesCLI_DTNASC.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_EMAIL')]              then DM.QYDClientes.ParamByName('CLI_EMAIL').AsString:=DM.QYOClientesCLI_EMAIL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_EMAIL2')]             then DM.QYDClientes.ParamByName('CLI_EMAIL2').AsString:=DM.QYOClientesCLI_EMAIL2.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ENDERECO')]           then DM.QYDClientes.ParamByName('CLI_ENDERECO').AsString:=DM.QYOClientesCLI_ENDERECO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ENDERECOCOB')]        then DM.QYDClientes.ParamByName('CLI_ENDERECOCOB').AsString:=DM.QYOClientesCLI_ENDERECOCOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ESTADO')]             then DM.QYDClientes.ParamByName('CLI_ESTADO').AsString:=DM.QYOClientesCLI_ESTADO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ESTADOCIVIL')]        then DM.QYDClientes.ParamByName('CLI_ESTADOCIVIL').AsString:=DM.QYOClientesCLI_ESTADOCIVIL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ESTADOCOB')]          then DM.QYDClientes.ParamByName('CLI_ESTADOCOB').AsString:=DM.QYOClientesCLI_ESTADOCOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ESTADOCODIGO')]       then DM.QYDClientes.ParamByName('CLI_ESTADOCODIGO').AsInteger:=DM.QYOClientesCLI_ESTADOCODIGO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ESTADOCODIGOCOB')]    then DM.QYDClientes.ParamByName('CLI_ESTADOCODIGOCOB').AsInteger:=DM.QYOClientesCLI_ESTADOCODIGOCOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_FANTASIA')]           then DM.QYDClientes.ParamByName('CLI_FANTASIA').AsString:=DM.QYOClientesCLI_FANTASIA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_FONE0800')]           then DM.QYDClientes.ParamByName('CLI_FONE0800').AsString:=DM.QYOClientesCLI_FONE0800.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_FONE1')]              then DM.QYDClientes.ParamByName('CLI_FONE1').AsString:=DM.QYOClientesCLI_FONE1.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_FONE2')]              then DM.QYDClientes.ParamByName('CLI_FONE2').AsString:=DM.QYOClientesCLI_FONE2.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_FONE3')]              then DM.QYDClientes.ParamByName('CLI_FONE3').AsString:=DM.QYOClientesCLI_FONE3.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_IE')]                 then DM.QYDClientes.ParamByName('CLI_IE').AsString:=DM.QYOClientesCLI_IE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_IECOB')]              then DM.QYDClientes.ParamByName('CLI_IECOB').AsString:=DM.QYOClientesCLI_IECOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_LIMITECREDITO')]      then DM.QYDClientes.ParamByName('CLI_LIMITECREDITO').AsFloat:=DM.QYOClientesCLI_LIMITECREDITO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_MAE')]                then DM.QYDClientes.ParamByName('CLI_MAE').AsString:=DM.QYOClientesCLI_MAE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_MAEEMAIL')]           then DM.QYDClientes.ParamByName('CLI_MAEEMAIL').AsString:=DM.QYOClientesCLI_MAEEMAIL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_MAEFONE')]            then DM.QYDClientes.ParamByName('CLI_MAEFONE').AsString:=DM.QYOClientesCLI_MAEFONE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_MENSALISTA')]         then DM.QYDClientes.ParamByName('CLI_MENSALISTA').AsString:=DM.QYOClientesCLI_MENSALISTA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_MSN')]                then DM.QYDClientes.ParamByName('CLI_MSN').AsString:=DM.QYOClientesCLI_MSN.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_NEXTEL')]             then DM.QYDClientes.ParamByName('CLI_NEXTEL').AsString:=DM.QYOClientesCLI_NEXTEL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_NOME')]               then DM.QYDClientes.ParamByName('CLI_NOME').AsString:=DM.QYOClientesCLI_NOME.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_NUMERO')]             then DM.QYDClientes.ParamByName('CLI_NUMERO').AsInteger:=DM.QYOClientesCLI_NUMERO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_NUMEROCOB')]          then DM.QYDClientes.ParamByName('CLI_NUMEROCOB').AsInteger:=DM.QYOClientesCLI_NUMEROCOB.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_OBSERVACOES')]        then DM.QYDClientes.ParamByName('CLI_OBSERVACOES').AsMemo:=DM.QYOClientesCLI_OBSERVACOES.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_ORIENTACAOCOBRANCA')] then DM.QYDClientes.ParamByName('CLI_ORIENTACAOCOBRANCA').AsString:=DM.QYOClientesCLI_ORIENTACAOCOBRANCA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_PAI')]                then DM.QYDClientes.ParamByName('CLI_PAI').AsString:=DM.QYOClientesCLI_PAI.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_PAIEMAIL')]           then DM.QYDClientes.ParamByName('CLI_PAIEMAIL').AsString:=DM.QYOClientesCLI_PAIEMAIL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_PAIFONE')]            then DM.QYDClientes.ParamByName('CLI_PAIFONE').AsString:=DM.QYOClientesCLI_PAIFONE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_PASSWORD')]           then DM.QYDClientes.ParamByName('CLI_PASSWORD').AsString:=DM.QYOClientesCLI_PASSWORD.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_PONTOS')]             then DM.QYDClientes.ParamByName('CLI_PONTOS').AsFloat:=DM.QYOClientesCLI_PONTOS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_REGPROFISSIONAL')]    then DM.QYDClientes.ParamByName('CLI_REGPROFISSIONAL').AsString:=DM.QYOClientesCLI_REGPROFISSIONAL.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_RG')]                 then DM.QYDClientes.ParamByName('CLI_RG').AsString:=DM.QYOClientesCLI_RG.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_SETOR')]              then DM.QYDClientes.ParamByName('CLI_SETOR').AsInteger:=DM.QYOClientesCLI_SETOR.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_SITE')]               then DM.QYDClientes.ParamByName('CLI_SITE').AsString:=DM.QYOClientesCLI_SITE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_STATUS')]             then DM.QYDClientes.ParamByName('CLI_STATUS').AsString:=DM.QYOClientesCLI_STATUS.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_TABELAPRECO')]        then DM.QYDClientes.ParamByName('CLI_TABELAPRECO').AsString:=DM.QYOClientesCLI_TABELAPRECO.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_TIPOCLIENTE')]        then DM.QYDClientes.ParamByName('CLI_TIPOCLIENTE').AsString:=DM.QYOClientesCLI_TIPOCLIENTE.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_TIPOPESSOA')]         then DM.QYDClientes.ParamByName('CLI_TIPOPESSOA').AsString:=DM.QYOClientesCLI_TIPOPESSOA.Value;
  if CheckListBox1.Checked[CheckListBox1.Items.IndexOf('CLI_USUARIO')]            then DM.QYDClientes.ParamByName('CLI_USUARIO').AsString:=DM.QYOClientesCLI_USUARIO.Value;
end;

procedure TFormMain.PngBitBtn1Click(Sender: TObject);
var I: Integer;
begin
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    CheckListBox1.Checked[I]:=True;
  end;
end;

procedure TFormMain.PngBitBtn2Click(Sender: TObject);
var I: Integer;
begin
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    CheckListBox1.Checked[I]:=not CheckListBox1.Checked[I];
  end;
end;

procedure TFormMain.PngBitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(TFormConfig, FormConfig);
  FormConfig.ShowModal;
  FormConfig.Free;
  FormConfig:=nil;

  Label6.Caption:=SV_ORIGEM;
  Label7.Caption:=DB_ORIGEM;
  Label12.Caption:=TP_ORIGEM;

  Label8.Caption:=SV_DESTINO;
  Label9.Caption:=DB_DESTINO;
  Label13.Caption:=TP_DESTINO;

  DM.DBOrigem.Connected:=False;
  DM.DBDestino.Connected:=False;

  if TP_ORIGEM='Remoto' then
  DM.DBOrigem.DatabaseName:=SV_ORIGEM+':'+DB_ORIGEM else
  DM.DBOrigem.DatabaseName:=DB_ORIGEM;

  if TP_DESTINO='Remoto' then
  DM.DBDestino.DatabaseName:=SV_DESTINO+':'+DB_DESTINO else
  DM.DBDestino.DatabaseName:=DB_DESTINO;

  try
    DM.DBOrigem.Connected:=True;
    DM.DBDestino.Connected:=True;
    except on Exception do
    begin
      MessageDlg('Não foi possível abrir as bases de dados.'+#13+#10+'Verifique as configurações em "Configurar".',mtError,[mbOK],0);
      CheckListBox1.Items.Clear;
      Exit;
    end;
  end;

  AtualizarCheckListBox;
end;

procedure TFormMain.BitBtn3Click(Sender: TObject);
var Novos, Velhos: Integer;
  SQL: WideString;
begin
  if (not DM.DBOrigem.Connected) or (not DM.DBDestino.Connected) then
  begin
    MessageDlg('Bases de dados não abertas.'+#13+#10+'Verifique as configurações em "Configurar".',mtError,[mbOK],0);
    Exit;
  end;
  if MessageDlg('Atualizar tabela de clientes?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if TP_ORIGEM='Remoto' then
    DM.DBOrigem.DatabaseName:=SV_ORIGEM+':'+DB_ORIGEM else
    DM.DBOrigem.DatabaseName:=DB_ORIGEM;
    DM.DBOrigem.Connected:=True;

    if TP_DESTINO='Remoto' then
    DM.DBDestino.DatabaseName:=SV_DESTINO+':'+DB_DESTINO else
    DM.DBDestino.DatabaseName:=DB_DESTINO;
    DM.DBDestino.Connected:=True;

    DM.QYOVersao.Open;
    DM.QYDVersao.Open;
    if DM.QYOVersaoVER_VERSAOBASE.Value<>DM.QYOVersaoVER_VERSAOBASE.Value then
    begin
      MessageDlg('As versões das bases de dados são diferentes.',mtError,[mbOk],0);
      Exit;
    end;

    DM.QYOClientes.Open;
    DM.QYOClientes.DisableControls;
    DM.QYOClientes.FetchAll;
    DM.TBDClientes.Open;

    DM.QYDAtividades.Open;
    DM.QYDVendedores.Open;
    DM.QYDLocais.Open;
    DM.QYDMailings.Open;
    DM.QYDCondicoes.Open;

    ProgressBar1.Max:=DM.QYOClientes.RecordCount;
    ProgressBar1.Position:=0;
    ProgressBar1.Visible:=True;
    Novos:=0;
    Velhos:=0;
    BitBtn3.Enabled:=False;
    BitBtn4.Enabled:=False;
    BitBtn5.Enabled:=True;
    PngBitBtn1.Enabled:=False;
    PngBitBtn2.Enabled:=False;
    PngBitBtn3.Enabled:=False;
    Cancelar:=False;
    DM.QYOClientes.Open;
    DM.QYOClientes.First;
    while not DM.QYOClientes.Eof do
    begin
      if Cancelar then
      begin
        Cancelar:=False;
        BitBtn3.Enabled:=True;
        BitBtn4.Enabled:=True;
        BitBtn5.Enabled:=False;
        PngBitBtn1.Enabled:=True;
        PngBitBtn2.Enabled:=True;
        PngBitBtn3.Enabled:=True;
        MessageDlg('O processo de atualização foi cancelado!',mtInformation,[mbOk],0);
        ProgressBar1.Position:=0;
        Label5.Caption:='';
        Break; //sai do while.
      end;
      ProgressBar1.StepIt;
      Label5.Caption:='Atualizando Cliente: '+IntToStr(ProgressBar1.Position)+' de '+IntToStr(ProgressBar1.Max)+' - Código Cliente: '+IntToStr(DM.QYOClientesCLI_CODIGO.Value);
      Application.ProcessMessages;
      //se nao achou o cliente na base de destino, inclui.
      if not DM.TBDClientes.Locate('CLI_CODIGO',DM.QYOClientesCLI_CODIGO.Value,[]) then
      begin
        //verifica se ramo de atividade existe na base destino.
        if not DM.QYDAtividades.Locate('ATI_CODIGO',DM.QYOClientesCLI_ATIVIDADE.Value,[]) then
        begin
          MessageDlg('O ramo de atividade do cliente '+IntToStr(DM.QYOClientesCLI_CODIGO.Value)+'-'+DM.QYOClientesCLI_NOME.Value+' não foi encontrado na base de dados destino.'+#13#10+
                     'Verifique se o ramo de atividade com o código '+IntToStr(DM.QYOClientesCLI_ATIVIDADE.Value)+' está cadastrado.' ,mtError,[mbOk],0);
          BitBtn3.Enabled:=True;
          BitBtn4.Enabled:=True;
          BitBtn5.Enabled:=False;
          PngBitBtn1.Enabled:=True;
          PngBitBtn2.Enabled:=True;
          PngBitBtn3.Enabled:=True;
          Cancelar:=False;
          Exit;
        end;
        //...
        //verifica se condição de pagamento existe na base destino.
        if not DM.QYDCondicoes.Locate('CPG_CODIGO',DM.QYOClientesCLI_CONDICAO.Value,[]) then
        begin
          MessageDlg('A condição de pagamento do cliente '+IntToStr(DM.QYOClientesCLI_CODIGO.Value)+'-'+DM.QYOClientesCLI_NOME.Value+' não foi encontrada na base de dados destino.'+#13#10+
                     'Verifique se a condição de pagamento com o código '+IntToStr(DM.QYOClientesCLI_CONDICAO.Value)+' está cadastrada.' ,mtError,[mbOk],0);
          BitBtn3.Enabled:=True;
          BitBtn4.Enabled:=True;
          BitBtn5.Enabled:=False;
          PngBitBtn1.Enabled:=True;
          PngBitBtn2.Enabled:=True;
          PngBitBtn3.Enabled:=True;
          Cancelar:=False;
          Exit;
        end;
        //...
        //verifica se mailing existe na base destino.
        if not DM.QYDMailings.Locate('MAI_CODIGO',DM.QYOClientesCLI_MAILING.Value,[]) then
        begin
          MessageDlg('O mailing do cliente '+IntToStr(DM.QYOClientesCLI_CODIGO.Value)+'-'+DM.QYOClientesCLI_NOME.Value+' não foi encontrado na base de dados destino.'+#13#10+
                     'Verifique se o mailing com o código '+IntToStr(DM.QYOClientesCLI_MAILING.Value)+' está cadastrado.' ,mtError,[mbOk],0);
          BitBtn3.Enabled:=True;
          BitBtn4.Enabled:=True;
          BitBtn5.Enabled:=False;
          PngBitBtn1.Enabled:=True;
          PngBitBtn2.Enabled:=True;
          PngBitBtn3.Enabled:=True;
          Cancelar:=False;
          Exit;
        end;
        //...
        //verifica se vendedor existe na base destino.
        if not DM.QYDVendedores.Locate('VEN_CODIGO',DM.QYOClientesCLI_VENDEDOR.Value,[]) then
        begin
          MessageDlg('O vendedor do cliente '+IntToStr(DM.QYOClientesCLI_CODIGO.Value)+'-'+DM.QYOClientesCLI_NOME.Value+' não foi encontrado na base de dados destino.'+#13#10+
                     'Verifique se o vendedor com o código '+IntToStr(DM.QYOClientesCLI_VENDEDOR.Value)+' está cadastrado.' ,mtError,[mbOk],0);
          BitBtn3.Enabled:=True;
          BitBtn4.Enabled:=True;
          BitBtn5.Enabled:=False;
          PngBitBtn1.Enabled:=True;
          PngBitBtn2.Enabled:=True;
          PngBitBtn3.Enabled:=True;
          Cancelar:=False;
          Exit;
        end;
        //...
        //verifica se televenda existe na base destino.
        if not DM.QYDVendedores.Locate('VEN_CODIGO',DM.QYOClientesCLI_TELEVENDA.Value,[]) then
        begin
          MessageDlg('O televenda do cliente '+IntToStr(DM.QYOClientesCLI_CODIGO.Value)+'-'+DM.QYOClientesCLI_NOME.Value+' não foi encontrado na base de dados destino.'+#13#10+
                     'Verifique se o televenda com o código '+IntToStr(DM.QYOClientesCLI_TELEVENDA.Value)+' está cadastrado.' ,mtError,[mbOk],0);
          BitBtn3.Enabled:=True;
          BitBtn4.Enabled:=True;
          BitBtn5.Enabled:=False;
          PngBitBtn1.Enabled:=True;
          PngBitBtn2.Enabled:=True;
          PngBitBtn3.Enabled:=True;
          Cancelar:=False;
          Exit;
        end;
        //...
        MontarSQLInsert(SQL);
        DM.QYDClientes.SQL.Clear;
        DM.QYDClientes.SQL.Add(SQL);
        PassarValoresCampos;
        DM.QYDClientes.ExecSQL;
        DM.TRQDClientes.Commit;
        //Incrementa o generator GEN_PRODUTOS.
        DM.QYDClientes.SQL.Clear;
        DM.QYDClientes.SQL.Add('select gen_id(GEN_CLIENTES,1) from RDB$DATABASE');
        DM.QYDClientes.Open;
        DM.TRQDClientes.Commit;
        //...
        Inc(Novos);
      end else
      begin
        MontarSQLUpdate(SQL);
        DM.QYDClientes.SQL.Clear;
        DM.QYDClientes.SQL.Add(SQL);
        PassarValoresCampos;
        DM.QYDClientes.ExecSQL;
        DM.TRQDClientes.Commit;
        Inc(Velhos);
      end;
      DM.QYOClientes.Next;
    end;
    DM.TRDClientes.Commit;
    DM.QYOClientes.Close;
    BitBtn3.Enabled:=True;
    BitBtn4.Enabled:=True;
    BitBtn5.Enabled:=False;
    PngBitBtn1.Enabled:=True;
    PngBitBtn2.Enabled:=True;
    PngBitBtn3.Enabled:=True;
    Cancelar:=False;
    MessageDlg(IntToStr(ProgressBar1.Position)+' clientes foram processados.'+#13#13+IntToStr(Novos)+' clientes novos.'+#13+IntToStr(Velhos)+' clientes atualizados.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMain.AtualizarCheckListBox();
begin
  CheckListBox1.Items.Clear;
  DM.QYOCampos.Open;
  while not DM.QYOCampos.Eof  do
  begin
    CheckListBox1.Items.Add(Trim(DM.QYOCampos.FieldByName('RDB$FIELD_NAME').AsString));
    if RetornarValor('CAMPOS_CLIENTES',DM.QYOCampos.FieldByName('RDB$FIELD_NAME').AsString) then
    CheckListBox1.Checked[CheckListBox1.Count-1]:=True;
    DM.QYOCampos.Next;
  end;
  DM.QYOCampos.Close;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var S: String;
begin
  Cancelar:=False;
  Label5.Caption:='';
  ProgressBar1.Visible:=False;
  S:=FileVersion(Application.ExeName);
  FormMain.Caption:=Application.Title+' - Versão: '+S;

  Variaveis('LOAD');

  Label6.Caption:=SV_ORIGEM;
  Label7.Caption:=DB_ORIGEM;
  Label12.Caption:=TP_ORIGEM;

  Label8.Caption:=SV_DESTINO;
  Label9.Caption:=DB_DESTINO;
  Label13.Caption:=TP_ORIGEM;

  if TP_ORIGEM='Remoto' then
  DM.DBOrigem.DatabaseName:=SV_ORIGEM+':'+DB_ORIGEM else
  DM.DBOrigem.DatabaseName:=DB_ORIGEM;

  if TP_DESTINO='Remoto' then
  DM.DBDestino.DatabaseName:=SV_DESTINO+':'+DB_DESTINO else
  DM.DBDestino.DatabaseName:=DB_DESTINO;

  try
    DM.DBOrigem.Connected:=True;
    DM.DBDestino.Connected:=True;
    except on Exception do
    begin
      MessageDlg('Não foi possível abrir as bases de dados.'+#13+#10+'Verifique as configurações em "Configurar".',mtError,[mbOK],0);
      Exit;
    end;
  end;

  AtualizarCheckListBox;
end;

procedure TFormMain.Variaveis(Acao: String);
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Parametros.ini');
  if UpperCase(Acao)='SAVE' then
  begin
    F.WriteString('BASES','DB_ORIGEM',DB_ORIGEM);
    F.WriteString('BASES','SV_ORIGEM',SV_ORIGEM);
    F.WriteString('BASES','TP_ORIGEM',TP_ORIGEM);
    F.WriteString('BASES','DB_DESTINO',DB_DESTINO);
    F.WriteString('BASES','SV_DESTINO',SV_DESTINO);
    F.WriteString('BASES','TP_DESTINO',TP_DESTINO);
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    DB_ORIGEM:=F.ReadString('BASES','DB_ORIGEM',DB_ORIGEM);
    SV_ORIGEM:=F.ReadString('BASES','SV_ORIGEM',SV_ORIGEM);
    TP_ORIGEM:=F.ReadString('BASES','TP_ORIGEM',TP_ORIGEM);
    DB_DESTINO:=F.ReadString('BASES','DB_DESTINO',DB_DESTINO);
    SV_DESTINO:=F.ReadString('BASES','SV_DESTINO',SV_DESTINO);
    TP_DESTINO:=F.ReadString('BASES','TP_DESTINO',TP_DESTINO);
  end;
  F.Free;
end;

procedure TFormMain.BitBtn5Click(Sender: TObject);
begin
  Cancelar:=True;
end;

end.
