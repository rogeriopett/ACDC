unit IasminConfig;

{ Tela de configuração da IA (gravada na tabela IASMIN, vale para todas as estações).
  Uso:  if TFormIasminConfig.Executar(DM.FDConnection1, DM.UsuarioLogin, Cfg) then ...
  Não deixe este form em "Auto-create forms": ele é criado sob demanda.
  Os itens dos combos vêm das constantes de IasminConfigDados (preenchidos em FormCreate). }

interface

uses
  System.SysUtils, System.Classes, System.UITypes, Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Dialogs, IasminConfigDados, Vcl.Buttons,
  PngSpeedButton, PngBitBtn, FireDAC.Comp.Client;

type
  TFormIasminConfig = class(TForm)
    LblProvedor: TLabel;
    CbProvedor: TComboBox;
    LblModelo: TLabel;
    EdModelo: TEdit;
    LblChave: TLabel;
    EdChave: TEdit;
    LblUrl: TLabel;
    EdUrl: TEdit;
    LblEsforco: TLabel;
    CbEsforco: TComboBox;
    LblModo: TLabel;
    CbModo: TComboBox;
    LblMaxLinhas: TLabel;
    EdMaxLinhas: TEdit;
    LblTimeout: TLabel;
    EdTimeout: TEdit;
    LblTimeoutSQL: TLabel;
    EdTimeoutSQL: TEdit;
    LblDbUsuario: TLabel;
    EdDbUsuario: TEdit;
    LblDbSenha: TLabel;
    EdDbSenha: TEdit;
    LblDica: TLabel;
    Bevel1: TBevel;
    BtnCancelar: TPngBitBtn;
    BtnTestar: TPngBitBtn;
    BtnSalvar: TPngBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure CbProvedorChange(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnTestarClick(Sender: TObject);
  private
    FCfg: TIAConfig;
    FConexao: TFDConnection;
    FUsuarioERP: string;
    function LerTela: TIAConfig;
    procedure Preencher(const Cfg: TIAConfig);
  public
    class function Executar(Conexao: TFDConnection; const UsuarioERP: string; var Cfg: TIAConfig): Boolean;
  end;

implementation

uses
  IasminMotor;

{$R *.dfm}

procedure TFormIasminConfig.FormCreate(Sender: TObject);
var
  P: TIAProvedor;
  M: TIAModoContexto;
  S: string;
begin
  // Os itens vêm das constantes de IasminConfigDados: o texto exibido é o que
  // fica gravado em IASMIN, então tela e banco não podem divergir.
  CbProvedor.Items.Clear;
  for P := Low(TIAProvedor) to High(TIAProvedor) do
    CbProvedor.Items.Add(NOMES_PROVEDOR[P]);
  CbEsforco.Items.Clear;
  for S in NOMES_ESFORCO do
    CbEsforco.Items.Add(S);
  CbModo.Items.Clear;
  for M := Low(TIAModoContexto) to High(TIAModoContexto) do
    CbModo.Items.Add(NOMES_MODO[M]);
end;

procedure TFormIasminConfig.CbProvedorChange(Sender: TObject);
var P: TIAProvedor;
begin
  if CbProvedor.ItemIndex < 0 then Exit;
  P := TIAProvedor(CbProvedor.ItemIndex);
  EdUrl.Enabled := P = ipCompativel;
  LblUrl.Enabled := EdUrl.Enabled;
  CbEsforco.Enabled := P = ipAnthropic;
  LblEsforco.Enabled := CbEsforco.Enabled;
  case P of
    ipAnthropic:  EdModelo.TextHint := MODELO_PADRAO_ANTHROPIC;
    ipOpenAI:     EdModelo.TextHint := 'modelo contratado na OpenAI';
    ipGemini:     EdModelo.TextHint := 'modelo do Google Gemini';
    ipCompativel: EdModelo.TextHint := 'nome do modelo no servidor';
  end;
  if P = ipCompativel then
  EdChave.TextHint := 'opcional para servidores locais' else
  EdChave.TextHint := '';
  if (P = ipCompativel) and (EdUrl.Text = '') then
  EdUrl.TextHint := 'http://localhost:11434/v1';
end;

procedure TFormIasminConfig.Preencher(const Cfg: TIAConfig);
begin
  CbProvedor.ItemIndex := Ord(Cfg.Provedor);
  EdModelo.Text := Cfg.Modelo;
  EdChave.Text := Cfg.ApiKey;
  EdUrl.Text := Cfg.UrlBase;
  CbEsforco.ItemIndex := IndiceEsforco(Cfg.Esforco);
  CbModo.ItemIndex := Ord(Cfg.ModoContexto);
  EdMaxLinhas.Text := IntToStr(Cfg.MaxLinhas);
  EdTimeout.Text := IntToStr(Cfg.TimeoutSeg);
  EdTimeoutSQL.Text := IntToStr(Cfg.TimeoutSQLSeg);
  EdDbUsuario.Text := Cfg.DbUsuario;
  EdDbSenha.Text := Cfg.DbSenha;
  CbProvedorChange(nil);
end;

function TFormIasminConfig.LerTela: TIAConfig;
begin
  Result := FCfg;
  Result.Provedor := TIAProvedor(CbProvedor.ItemIndex);
  Result.Modelo := Trim(EdModelo.Text);
  Result.ApiKey := Trim(EdChave.Text);
  Result.UrlBase := Trim(EdUrl.Text);
  if CbEsforco.ItemIndex >= 0 then
  Result.Esforco := VALORES_ESFORCO[CbEsforco.ItemIndex] else
  Result.Esforco := '';
  Result.ModoContexto := TIAModoContexto(CbModo.ItemIndex);
  Result.MaxLinhas := StrToIntDef(EdMaxLinhas.Text, 500);
  Result.TimeoutSeg := StrToIntDef(EdTimeout.Text, 180);
  Result.TimeoutSQLSeg := StrToIntDef(EdTimeoutSQL.Text, 60);
  Result.DbUsuario := Trim(EdDbUsuario.Text);
  Result.DbSenha := EdDbSenha.Text;
end;

procedure TFormIasminConfig.BtnTestarClick(Sender: TObject);
var
  C: TIAConfig;
  Msg: string;
  Ok: Boolean;
begin
  C := LerTela;
  if not C.Configurado(Msg) then
  begin
    MessageDlg(Msg, mtWarning, [mbOK], 0);
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  try
    Ok := TIAMotor.TestarConexao(C, Msg);
  finally
    Screen.Cursor := crDefault;
  end;
  if Ok then
  MessageDlg(Msg, mtInformation, [mbOK], 0) else
  MessageDlg(Msg, mtError, [mbOK], 0);
end;

procedure TFormIasminConfig.BtnSalvarClick(Sender: TObject);
var Msg: String;
begin
  FCfg := LerTela;
  if not FCfg.Configurado(Msg) then
    if MessageDlg(Msg + sLineBreak + 'Salvar assim mesmo?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      Exit;
  try
    SalvarConfig(FConexao, FCfg, FUsuarioERP);
  except
    on E: Exception do
    begin
      MessageDlg('Não foi possível gravar a configuração na tabela IASMIN:' + sLineBreak + E.Message,
        mtError, [mbOK], 0);
      Exit;
    end;
  end;
  ModalResult := mrOk;
end;

class function TFormIasminConfig.Executar(Conexao: TFDConnection; const UsuarioERP: string;
  var Cfg: TIAConfig): Boolean;
var F: TFormIasminConfig;
begin
  F := TFormIasminConfig.Create(Application);
  try
    F.FConexao := Conexao;
    F.FUsuarioERP := UsuarioERP;
    F.FCfg := Cfg;
    F.Preencher(Cfg);
    Result := F.ShowModal = mrOk;
    if Result then
      Cfg := F.FCfg;
  finally
    F.Free;
  end;
end;

end.
