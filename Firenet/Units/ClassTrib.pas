unit ClassTrib;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Buttons, PngSpeedButton, DBSBtn, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.Menus, ACBrBase, ACBrDFe, ACBrNFe, System.JSON;

type
  TFormClassTrib = class(TForm)
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
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
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
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    DBComboBox2: TDBComboBox;
    Label4: TLabel;
    DBComboBox3: TDBComboBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBComboBox4: TDBComboBox;
    Label9: TLabel;
    DBComboBox5: TDBComboBox;
    Label10: TLabel;
    DBComboBox6: TDBComboBox;
    Label11: TLabel;
    DBComboBox7: TDBComboBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBComboBox11: TDBComboBox;
    DBComboBox12: TDBComboBox;
    DBComboBox13: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBComboBox15: TDBComboBox;
    DBComboBox16: TDBComboBox;
    Label22: TLabel;
    DBComboBox17: TDBComboBox;
    Label23: TLabel;
    DBComboBox18: TDBComboBox;
    Label24: TLabel;
    DBComboBox19: TDBComboBox;
    Label25: TLabel;
    DBComboBox20: TDBComboBox;
    Label26: TLabel;
    DBComboBox21: TDBComboBox;
    Label27: TLabel;
    DBComboBox22: TDBComboBox;
    Label28: TLabel;
    DBComboBox23: TDBComboBox;
    Label29: TLabel;
    DBComboBox24: TDBComboBox;
    AtualizarClassTribComARF1Button: TPngSpeedButton;
    N2: TMenuItem;
    AtualizarClassTribComARF1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure AtualizarClassTribComARF1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarClassTrib;
  public
    { Public declarations }
  end;

var
  FormClassTrib: TFormClassTrib;

implementation
uses DataMod, Funcoes1, Main, DB, ClassTribLoc, ACBrDFeSSL;
{$R *.dfm}

procedure TFormClassTrib.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormClassTrib.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClassTrib.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBClassTrib.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormClassTrib.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClassTrib.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormClassTrib);
end;

procedure TFormClassTrib.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassTribLoc, FormClassTribLoc);
  FormClassTribLoc.ShowModal;
  if ClassTribLoc.Procurar then
  begin
    DM.TBClassTrib.Close;
    DM.TBClassTrib.ParamByName('codigo').AsString:=FormClassTribLoc.QYClassTribCLT_CODIGO.Value;
    DM.TBClassTrib.Open;
  end;
  FormClassTribLoc.Free;
  FormClassTribLoc:=nil;
end;

procedure TFormClassTrib.AtualizarClassTribComARF1Click(Sender: TObject);
begin
  if MessageDlg('Deseja atualizar a tabela conforme a Receita Federal?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    CarregarClassTrib;
  end;
end;

procedure TFormClassTrib.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

function StringISOToDate(const AValor: string): TDateTime;
var S: String;
begin
  Result:=0;
  S:=Trim(AValor);

  if (S='') or SameText(S,'null') then
  Exit;

  // Mantém apenas a parte da data (AAAA-MM-DD)
  if Pos('T', S) > 0 then
  S:=Copy(S, 1, Pos('T', S) - 1);

  try
    Result:=EncodeDate(
      StrToInt(Copy(S, 1, 4)),
      StrToInt(Copy(S, 6, 2)),
      StrToInt(Copy(S, 9, 2))
    );
  except
    Result:=0;
  end;
end;

procedure TFormClassTrib.CarregarClassTrib;
var
  NFe: TACBrNFe;
  RetornoJSON: TJSONArray;
  RetornoSTR: String;
  ListacClassTrib: TJSONArray;
  D, I, Tamanho: Integer;
  Data: TDateTime;
begin
  NFe:=TACBrNFe.Create(nil);
  NFe.Configuracoes.Geral.SSLCryptLib      :=TSSLCryptLib(1); //cryOpenSSL;
  NFe.Configuracoes.Geral.SSLHttpLib       :=TSSLHttpLib(3); //httpOpenSSL;
  NFe.Configuracoes.Geral.SSLLib           :=TSSLLib(1); //libOpenSSL;
  NFe.Configuracoes.Geral.SSLXmlSignLib    :=TSSLXmlSignLib(4); //xsLibXml2;
  //ver... NFe.Configuracoes.WebServices.SSLType    :=LT_all;
  NFe.SSL.SSLtype                          :=NFe.Configuracoes.WebServices.SSLType;
  NFe.SSL.SSLCryptLib                      :=NFe.Configuracoes.Geral.SSLCryptLib;
  NFe.SSL.SSLHttpLib                       :=NFe.Configuracoes.Geral.SSLHttpLib;
  NFe.SSL.SSLXmlSignLib                    :=NFe.Configuracoes.Geral.SSLXmlSignLib;
  NFe.Configuracoes.Certificados.ArquivoPFX:=DM.TBParametrosPAR_ARQUIVOCERTIFICADO.Value;
  NFe.Configuracoes.Certificados.Senha     :=DM.TBParametrosPAR_SENHACERTIFICADO.Value;
  try
    NFe.SSL.CarregarCertificado;
    RetornoSTR:=NFe.SSL.HTTPGet('https://cff.svrs.rs.gov.br/api/v1/consultas/classTrib');
    if RetornoSTR<>'' then
    begin
      try
        RetornoJSON:=TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(RetornoSTR),0) as TJSONArray;
      except
      end;

      if RetornoJSON<>nil then
      begin
        if RetornoJSON.Count>0 then  // Lista de CST
        begin
          //elimina dados atuais.
          DM.QYAux.Close;
          DM.QYAux.SQL.Clear;
          DM.QYAux.SQL.Add('delete from CLASSTRIB');
          DM.QYAux.ExecSQL;
          DM.TBClassTrib.DisableControls;
          Screen.Cursor:=crHourGlass;
          for D:=1 to RetornoJSON.Count do
          begin
            ListacClassTrib:=RetornoJSON.Items[D-1].GetValue<TJSONArray>('classificacoesTributarias',nil);
            if ListacClassTrib<>nil then
            begin
              if ListacClassTrib.Count>0 then
              begin
                for I:=1 to ListacClassTrib.Count do
                begin
                  DM.TBClassTrib.Insert;
                  DM.TBClassTribCLT_ALIQCBSRED.Value       :=ListacClassTrib.Items[I-1].GetValue<real>('pRedCBS',0);
                  DM.TBClassTribCLT_ALIQIBSRED.Value       :=ListacClassTrib.Items[I-1].GetValue<real>('pRedIBS',0);
                  DM.TBClassTribCLT_CODIGO.Value           :=ListacClassTrib.Items[I-1].GetValue<string>('cClassTrib','');
                  DM.TBClassTribCLT_CREDITOPRESUMIDO.Value :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNFCe',false)=True, 'S', 'N');
                  DM.TBClassTribCLT_DESCRICAO.Value        :=UpperCase(RemoveCE(RemoveAcentos(TEncoding.UTF8.GetString(TEncoding.ANSI.GetBytes(ListacClassTrib.Items[I-1].GetValue<string>('DescricaoClassTrib',''))))));
                  DM.TBClassTribCLT_DOCBPE.Value           :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndBPe',false)   =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCBPETA.Value         :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndBPeTA',false) =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCBPETM.Value         :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndBPeTM',false) =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCCTE.Value           :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndCTe',false)   =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCCTEOS.Value         :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndCTeOS',false) =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCDERE.Value          :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndDERE',false)  =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCNFAG.Value          :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNFAg',false)  =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCNFCE.Value          :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNFCe',false)  =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCNFCOM.Value         :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNFCom',false) =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCNFE.Value           :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNFe',false)   =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCNFEABI.Value        :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNFABI',false) =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCNFGAS.Value         :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNFGas',false) =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCNFSE.Value          :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNFSE',false)  =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCNFSEVIA.Value       :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNFSVIA',false)=True, 'S', 'N');
                  DM.TBClassTribCLT_DOCNF3E.Value          :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndNF3e',false)  =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCDIR.Value           :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndDIR',false)   =True, 'S', 'N');
                  DM.TBClassTribCLT_DOCDUIMP.Value         :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndDUIMP',false) =True, 'S', 'N');
                  DM.TBClassTribCLT_DTATUALIZACAO.Value    :=DM.ServerDate;
                  DM.TBClassTribCLT_DTCADASTRO.Value       :=DM.ServerDate;
                  DM.TBClassTribCLT_DTPUBLICACAO.Value     :=StringISOToDate(ListacClassTrib.Items[I-1].GetValue<String>('Publicacao',''));

                  Data:=StringISOToDate(ListacClassTrib.Items[I-1].GetValue<String>('FimVigencia',''));
                  if Data>0 then
                  DM.TBClassTribCLT_DTVIGENCIAFIM.Value    :=Data else
                  DM.TBClassTribCLT_DTVIGENCIAFIM.Clear;

                  DM.TBClassTribCLT_DTVIGENCIAINICIO.Value :=StringISOToDate(ListacClassTrib.Items[I-1].GetValue<String>('InicioVigencia',''));
                  DM.TBClassTribCLT_ESTORNOCREDITO.Value   :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndEstornoCred',false)=True, 'S', 'N');
                  DM.TBClassTribCLT_HRATUALIZACAO.Value    :=DM.ServerTime;
                  DM.TBClassTribCLT_HRCADASTRO.Value       :=DM.ServerTime;
                  DM.TBClassTribCLT_LINK.Value             :=RemoveCE(ListacClassTrib.Items[I-1].GetValue<String>('Link',''));
                  DM.TBClassTribCLT_MONODIFERIMENTO.Value  :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('MonofasiaDiferimento',false)    =True, 'S', 'N');
                  DM.TBClassTribCLT_MONOFASICO.Value       :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('MonofasiaPadrao',false)         =True, 'S', 'N');
                  DM.TBClassTribCLT_MONORETENCAO.Value     :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('MonofasiaSujeitaRetencao',false)=True, 'S', 'N');
                  DM.TBClassTribCLT_MONORETIDO.Value       :=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('MonofasiaRetidaAnt',false)      =True, 'S', 'N');
                  DM.TBClassTribCLT_REDBASE.Value          :=ift(RetornoJSON.Items[D-1].GetValue<Boolean>('IndRedBC',false)=True, 'S', 'N');

                  DM.TBClassTribCLT_TIPOALIQUOTA.Value     :=UpperCase(RemoveAcentos(TEncoding.UTF8.GetString(TEncoding.ANSI.GetBytes(ListacClassTrib.Items[I-1].GetValue<String>('TipoAliquota','')))));
                  DM.TBClassTribCLT_TIPORECEITA.Value      :=UpperCase(RemoveAcentos(TEncoding.UTF8.GetString(TEncoding.ANSI.GetBytes(ListacClassTrib.Items[I-1].GetValue<String>('TipoReceitaBrutaSN','')))));
                  DM.TBClassTribCLT_TRIBUTACAOREGULAR.Value:=ift(ListacClassTrib.Items[I-1].GetValue<boolean>('IndTribRegular',false)=True, 'S', 'N');
                  DM.TBClassTribCLT_USUARIO.Value          :=DM.UsuarioLogin;
                  DM.TBClassTrib.Post;

//                  Tamanho:=length(Result);
//                  SetLength(Result,Tamanho+1);
//                  Result[tamanho].cclasstrib       := ListacClassTrib.Items[i-1].GetValue<string>('cClassTrib','');
//                  Result[tamanho].descricao        := TEncoding.UTF8.GetString(TEncoding.ANSI.GetBytes(ListacClassTrib.Items[i-1].GetValue<string>('DescricaoClassTrib','')));
//                  Result[tamanho].IBSpRedAliq      := ListacClassTrib.Items[i-1].GetValue<real>('pRedIBS',0);
//                  Result[tamanho].CBSpRedAliq      := ListacClassTrib.Items[i-1].GetValue<real>('pRedCBS',0);
//                  Result[tamanho].anexo            := ListacClassTrib.Items[i-1].GetValue<integer>('Anexo',0);
//                  Result[tamanho].NFCe             := ListacClassTrib.Items[i-1].GetValue<boolean>('IndNFCe',false);
//                  Result[tamanho].NFe              := ListacClassTrib.Items[i-1].GetValue<boolean>('IndNFe',false);
//                  Result[tamanho].NFSe             := ListacClassTrib.Items[i-1].GetValue<boolean>('IndNFSE',false);
//                  Result[tamanho].TipoDestinatario := tpRTNormal;
//                  Result[tamanho].TipoTributacao   := tpRTIntegral;
//                  case strtointdef(RetornoJSON.Items[d-1].GetValue<string>('CST','000'),10) of
//                    000: Result[tamanho].TipoTributacao   := tpRTIntegral;
//                    010: Result[tamanho].TipoTributacao   := tpRTIntegral;
//                    011: Result[tamanho].TipoTributacao   := tpRTReducaoAliq;
//                    200: Result[tamanho].TipoTributacao   := tpRTReducaoAliq;
//                    220: Result[tamanho].TipoTributacao   := tpRTIntegral;
//                    221: Result[tamanho].TipoTributacao   := tpRTIntegral;
//                    222: Result[tamanho].TipoTributacao   := tpRTReducaoBC;
//                    410: Result[tamanho].TipoTributacao   := tpRTImune;
//                    510: Result[tamanho].TipoTributacao   := tpRTDiferimento;
//                    515: Result[tamanho].TipoTributacao   := tpRTDiferimentoReducaoAliq;
//                    550: Result[tamanho].TipoTributacao   := tpRTSuspensao;
//                    620: Result[tamanho].TipoTributacao   := tpRTMonofasica;
//                    //800,810,811,820,830 : Result[tamanho].TipoTributacao   := tpRTIntegral;
//                   end;
                end;
              end;
            end;
          end;
          DM.TBClassTrib.EnableControls;
          Screen.Cursor:=crDefault;
        end;
      end;
    end;
    MessageDlg('Atualização OK.',mtInformation,[mbOk],0);

  except on E:Exception do
    begin
      MessageDlg('Erro ao carregar a tabela ClassTrib. '+#13#10+E.Message,mtError,[mbOk],0);
    end;
  end;
  NFe.Free;
end;

initialization
  RegisterClass(TFormClassTrib);

finalization
  UnRegisterClass(TFormClassTrib);

end.
