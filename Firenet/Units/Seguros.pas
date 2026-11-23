unit Seguros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Data.DB,
  PngBitBtn, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormSeguros = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
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
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    PngSpeedButton2: TPngSpeedButton;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    PngSpeedButton3: TPngSpeedButton;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    PngSpeedButton4: TPngSpeedButton;
    Label9: TLabel;
    DBEdit13: TDBEdit;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    Label12: TLabel;
    DBEdit16: TDBEdit;
    Label13: TLabel;
    DBEdit17: TDBEdit;
    Label14: TLabel;
    DBEdit18: TDBEdit;
    Label15: TLabel;
    DBEdit19: TDBEdit;
    Label16: TLabel;
    DBEdit20: TDBEdit;
    Label17: TLabel;
    DBEdit21: TDBEdit;
    Label18: TLabel;
    DBEdit22: TDBEdit;
    Label19: TLabel;
    DBEdit23: TDBEdit;
    Label20: TLabel;
    DBEdit24: TDBEdit;
    Label21: TLabel;
    DBEdit25: TDBEdit;
    Label22: TLabel;
    DBEdit26: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    TabSheet3: TTabSheet;
    DBMemo3: TDBMemo;
    Label23: TLabel;
    DBComboBox5: TDBComboBox;
    DBText7: TDBText;
    Bevel2: TBevel;
    Anexos1Button: TPngSpeedButton;
    Anexos1: TMenuItem;
    Clientes1Button: TPngSpeedButton;
    Fornecedores1Button: TPngSpeedButton;
    CadastroDeClientes1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    CadastroDeCondicoesDePagamento1: TMenuItem;
    CadastroDeTiposDeSeguros1: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    Cadastros1: TMenuItem;
    Finalizar1: TMenuItem;
    Cancelar1: TMenuItem;
    Inutilizar1: TMenuItem;
    Vendedores1Button: TPngSpeedButton;
    Condicoes1Button: TPngSpeedButton;
    SegurosTipos1Button: TPngSpeedButton;
    Cancelar1Button: TPngSpeedButton;
    Finalizar1Button: TPngSpeedButton;
    Inutilizar1Button: TPngSpeedButton;
    Bevel3: TBevel;
    Label24: TLabel;
    DBEdit27: TDBEdit;
    Label25: TLabel;
    DBComboBox1: TDBComboBox;
    Label26: TLabel;
    DBEdit28: TDBEdit;
    Label27: TLabel;
    DBEdit29: TDBEdit;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    GerarParcelas1Button: TPngBitBtn;
    EditarParcela1Button: TPngBitBtn;
    N4: TMenuItem;
    SegurosPorSeguradora1: TMenuItem;
    SegurosPorVendedor1: TMenuItem;
    TabSheet5: TTabSheet;
    DBGrid2: TDBGrid;
    InserirEndosso1Button: TPngBitBtn;
    N6: TMenuItem;
    InserirEndosso1: TMenuItem;
    Label28: TLabel;
    DBEdit30: TDBEdit;
    PngSpeedButton5: TPngSpeedButton;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit31: TDBEdit;
    ComissoesNoPeriodo1: TMenuItem;
    BaixarParcelas1Button: TPngSpeedButton;
    N7: TMenuItem;
    BaixarParcelas1: TMenuItem;
    SegurosNoPeriodo1: TMenuItem;
    QYSeguros: TFDQuery;
    TRSeguros: TFDTransaction;
    QYSegurosSEG_APOLICE: TStringField;
    QYSegurosSEG_CLIENTE: TIntegerField;
    QYSegurosSEG_CODIGO: TIntegerField;
    QYSegurosSEG_COMISSAO: TFMTBCDField;
    QYSegurosSEG_COMISSAOVENDEDOR: TFMTBCDField;
    QYSegurosSEG_CONDICAO: TIntegerField;
    QYSegurosSEG_DESCRICAOAPOLICE: TMemoField;
    QYSegurosSEG_DESCRICAOCANCELAMENTO: TMemoField;
    QYSegurosSEG_DESCRICAOPERDA: TMemoField;
    QYSegurosSEG_DIAPREFERENCIAL: TIntegerField;
    QYSegurosSEG_DTATUALIZACAO: TDateField;
    QYSegurosSEG_DTCADASTRO: TDateField;
    QYSegurosSEG_DTCANCELAMENTO: TDateField;
    QYSegurosSEG_DTEMISSAO: TDateField;
    QYSegurosSEG_DTINICIO: TDateField;
    QYSegurosSEG_DTLEMBRETE: TDateField;
    QYSegurosSEG_DTTERMINO: TDateField;
    QYSegurosSEG_ENDOSSO: TStringField;
    QYSegurosSEG_ORIGEM: TStringField;
    QYSegurosSEG_ORIGINAL: TIntegerField;
    QYSegurosSEG_PROPOSTA: TStringField;
    QYSegurosSEG_SEGURADORA: TIntegerField;
    QYSegurosSEG_SEGUROTIPO: TIntegerField;
    QYSegurosSEG_STATUS: TStringField;
    QYSegurosSEG_USUARIO: TStringField;
    QYSegurosSEG_VALORADICIONAL: TFMTBCDField;
    QYSegurosSEG_VALORCOMISSAO: TFMTBCDField;
    QYSegurosSEG_VALORCOMISSAOVENDEDOR: TFMTBCDField;
    QYSegurosSEG_VALORFRANQUIA: TFMTBCDField;
    QYSegurosSEG_VALORIOF: TFMTBCDField;
    QYSegurosSEG_VALORIOFPORC: TFMTBCDField;
    QYSegurosSEG_VALORPREMIO: TFMTBCDField;
    QYSegurosSEG_VALORTOTAL: TFMTBCDField;
    QYSegurosSEG_VENDEDOR: TIntegerField;
    QYSegurosCLI_NOME: TStringField;
    QYSegurosCPG_DESCRICAO: TStringField;
    QYSegurosFOR_NOME: TStringField;
    QYSegurosSGT_DESCRICAO: TStringField;
    QYSegurosVEN_NOME: TStringField;
    UPSeguros: TFDUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Anexos1Click(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Inutilizar1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure CadastroDeCondicoesDePagamento1Click(Sender: TObject);
    procedure CadastroDeTiposDeSeguros1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure LocalizarNoContasAReceber1Click(Sender: TObject);
    procedure GerarParcelas1ButtonClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure EditarParcela1ButtonClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure SegurosPorSeguradora1Click(Sender: TObject);
    procedure SegurosPorVendedor1Click(Sender: TObject);
    procedure InserirEndosso1Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure ComissoesNoPeriodo1Click(Sender: TObject);
    procedure BaixarParcelas1Click(Sender: TObject);
    procedure SegurosNoPeriodo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSeguros: TFormSeguros;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, Main, DataModSearch, DataMod2,
  ClientesLoc, VendedoresLoc, SegurosTiposLoc, SegurosAnexos, Clientes,
  Fornecedores, Vendedores, Condicoes, SegurosTipos, SegurosLoc,
  SegurosRel, InputDate, InputBlob, SegurosParcelas, SegurosParcelasBaixar;
{$R *.dfm}

procedure TFormSeguros.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormSeguros.Anexos1Click(Sender: TObject);
var Pasta: String;
begin
  AbortIf(DM2.TBSeguros.IsEmpty,'Nenhuma proposta/apólice selecionada.');
  AbortIf(DM.TBParametrosPAR_LOCALANEXOSSEGUROS.Value='','Parâmetro de localização dos anexos não definido.'+#13+'Defina em Parâmetros do Sistema.');

  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALANEXOSSEGUROS.Value);
  Pasta:=Pasta+AlignText(IntToStr(DM2.TBSegurosSEG_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormSegurosAnexos, FormSegurosAnexos);
  FormSegurosAnexos.Pasta:=Pasta;
  FormSegurosAnexos.FileListBox1.Directory:=Pasta;
  FormSegurosAnexos.FileListBox1.ItemIndex:=0;
  FormSegurosAnexos.OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormSegurosAnexos.ShowModal;
  FormSegurosAnexos.Free;
  FormSegurosAnexos:=nil;
end;

procedure TFormSeguros.BaixarParcelas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosParcelasBaixar, FormSegurosParcelasBaixar);
  FormSegurosParcelasBaixar.ShowModal;
  FormSegurosParcelasBaixar.Free;
  FormSegurosParcelasBaixar:=nil;
end;

procedure TFormSeguros.GerarParcelas1ButtonClick(Sender: TObject);
var I: Integer;
  D,M,A: Word;
  Vencimento: TDate;
begin
  AbortIf(DM2.TBSeguros.IsEmpty,'Nenhuma proposta/apólice selecionada.');

  { TODO -oRogerio : checar se já tem alguma baixada }

  if MessageDlg('Deseja gerar as parcelas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin

    DM2.TBSegurosParcelas.Close;

    //elimina as parcelas atuais.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from SEGUROSPARCELAS where SGP_SEGURO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBSegurosSEG_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM2.TBSegurosParcelas.Open;

    //cria novamente as parcelas.
    I:=0;
    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM2.TBSegurosSEG_CONDICAO.Value;
    DM.TBCondicoes.Open;
    DM.TBCondicoesItens.First;
    while not DM.TBCondicoesItens.Eof do
    begin
      I:=I+1;
      if DM2.TBSegurosSEG_DIAPREFERENCIAL.Value<>0 then
      begin
        DecodeDate(DM2.TBSegurosSEG_DTEMISSAO.Value,A,M,D);
        Vencimento:=EncodeDate(A,M,DM2.TBSegurosSEG_DIAPREFERENCIAL.Value);
      end else
      Vencimento:=DM2.TBSegurosSEG_DTEMISSAO.Value;
      DM2.TBSegurosParcelas.Insert;
      DM2.TBSegurosParcelasSGP_DTVENCIMENTO.Value:=Vencimento+DM.TBCondicoesItensCPI_DIAS.Value;
      DM2.TBSegurosParcelasSGP_VALOR.Value:=Decimais((DM2.TBSegurosSEG_VALORTOTAL.AsExtended / 100.00) * DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended,2);
      DM2.TBSegurosParcelasSGP_COMISSAO.Value:=Decimais((DM2.TBSegurosSEG_VALORCOMISSAO.AsExtended / 100.0) * DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended,2);
      DM2.TBSegurosParcelasSGP_COMISSAOVENDEDOR.Value:=Decimais((DM2.TBSegurosSEG_VALORCOMISSAOVENDEDOR.AsExtended / 100.0) * DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended,2);
      DM2.TBSegurosParcelasSGP_PARCELA.Value:=I;
      DM2.TBSegurosParcelas.Post;
      DM.TBCondicoesItens.Next;
    end;

    //tras na ordem correta.
    DM2.TBSegurosParcelas.Close;
    DM2.TBSegurosParcelas.Open;
  end;
end;

procedure TFormSeguros.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormSeguros.CadastroDeCondicoesDePagamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormSeguros.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormSeguros.CadastroDeTiposDeSeguros1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosTipos, FormSegurosTipos);
  FormSegurosTipos.ShowModal;
  FormSegurosTipos.Free;
  FormSegurosTipos:=nil;
end;

procedure TFormSeguros.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormSeguros.Cancelar1Click(Sender: TObject);
var DtCancelamento, Motivo: String;
begin
  AbortIf(DM2.TBSeguros.IsEmpty,'Nenhuma apólice selecionada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='P','Esta proposta está em aberto. Só pode ser inutilizada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='C','Esta apólice já está cancelada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='I','Esta proposta já foi inutilizada e não pode ser cancelada.');

  Application.CreateForm(TFormInputDate, FormInputDate);
  FormInputDate.Caption:='Informe a Data';
  FormInputDate.Label1.Caption:='Dt. Cancelamento';
  FormInputDate.ShowModal;
  if InputDate.Retorno then
  DtCancelamento:=FormInputDate.MaskEdit1.Text;
  FormInputDate.Free;
  FormInputDate:=nil;

  Application.CreateForm(TFormInputBlob, FormInputBlob);
  FormInputBlob.Caption:='Digite o motivo';
  FormInputBlob.Label1.Caption:='Digite o motivo para o cancelamento. (mínimo 15 caracteres)';
  FormInputBlob.ShowModal;
  Motivo:=FormInputBlob.Memo1.Text;
  FormInputBlob.Free;
  FormInputBlob:=nil;

  if (Motivo<>'') and (Length(Motivo)>=15) then
  begin
    DM2.TBSeguros.Edit;
    DM2.TBSegurosSEG_DTCANCELAMENTO.Value:=StrToDate(DtCancelamento);
    DM2.TBSegurosSEG_DESCRICAOCANCELAMENTO.Value:=Motivo;
    DM2.TBSegurosSEG_STATUS.Value:='C';
    DM2.TBSeguros.Post;
  end;
end;

procedure TFormSeguros.DBEdit11Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormSeguros.DBEdit11Exit(Sender: TObject);
begin
  LocCondicoesExit(DBEdit11,DBEdit12,DM2.TBSeguros);
end;

procedure TFormSeguros.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormSeguros.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormSeguros.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBSegurosSEG_DTEMISSAO.Clear;
end;

procedure TFormSeguros.DBEdit16Exit(Sender: TObject);
begin
  if DM2.TBSeguros.State in [dsInsert, dsEdit] then
  begin
    DM2.TBSegurosSEG_DTTERMINO.Value:=IncMonth(DM2.TBSegurosSEG_DTINICIO.Value,12);
    DM2.TBSegurosSEG_DTLEMBRETE.Value:=IncMonth(DM2.TBSegurosSEG_DTINICIO.Value,11);
  end;
end;

procedure TFormSeguros.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBSegurosSEG_DTINICIO.Clear;
end;

procedure TFormSeguros.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBSegurosSEG_DTTERMINO.Clear;
end;

procedure TFormSeguros.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBSegurosSEG_DTLEMBRETE.Clear;
end;

procedure TFormSeguros.DBEdit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormSeguros.DBEdit3Exit(Sender: TObject);
begin
  if (DM2.TBSeguros.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBSegurosSEG_CLIENTE.Clear;
    DM2.TBSegurosCLI_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBSeguros.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBSegurosSEG_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBSegurosCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      DM2.TBSegurosSEG_CLIENTE.Clear;
      DM2.TBSegurosCLI_NOME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormSeguros.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormSeguros.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormSeguros.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormSeguros.DBEdit5Exit(Sender: TObject);
begin
  LocFornecedoresExit(DBEdit5,DBEdit6,nil,DM2.TBSeguros);
end;

procedure TFormSeguros.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormSeguros.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormSeguros.DBEdit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormSeguros.DBEdit7Exit(Sender: TObject);
begin
  if (DM2.TBSeguros.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBSegurosSEG_SEGUROTIPO.Clear;
    DM2.TBSegurosSGT_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBSeguros.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYSegurosTipos.Close;
    DMS.QYSegurosTipos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYSegurosTipos.Open;
    if not DMS.QYSegurosTipos.IsEmpty then
    begin
      DM2.TBSegurosSEG_SEGUROTIPO.Value:=DMS.QYSegurosTiposSGT_CODIGO.Value;
      DM2.TBSegurosSGT_DESCRICAO.Value:=DMS.QYSegurosTiposSGT_DESCRICAO.Value;
    end else
    begin
      DM2.TBSegurosSEG_SEGUROTIPO.Clear;
      DM2.TBSegurosSGT_DESCRICAO.Clear;
      MessageDlg('Tipo de seguro não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYSegurosTipos.Close;
  end;
end;

procedure TFormSeguros.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormSeguros.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormSeguros.DBEdit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormSeguros.DBEdit9Exit(Sender: TObject);
begin
  if (DM2.TBSeguros.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBSegurosSEG_COMISSAOVENDEDOR.Value:=0;
    DM2.TBSegurosSEG_VENDEDOR.Clear;
    DM2.TBSegurosVEN_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBSeguros.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYVendedores.Close;
    DMS.QYVendedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYVendedores.Open;
    if not DMS.QYVendedores.IsEmpty then
    begin
      DM2.TBSegurosSEG_COMISSAOVENDEDOR.Value:=DMS.QYVendedoresVEN_COMISSAO.Value;
      DM2.TBSegurosSEG_VENDEDOR.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
      DM2.TBSegurosVEN_NOME.Value:=DMS.QYVendedoresVEN_NOME.Value;
    end else
    begin
      DM2.TBSegurosSEG_COMISSAOVENDEDOR.Value:=0;
      DM2.TBSegurosSEG_VENDEDOR.Clear;
      DM2.TBSegurosVEN_NOME.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYVendedores.Close;
  end;
end;

procedure TFormSeguros.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormSeguros.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormSeguros.DBGrid1DblClick(Sender: TObject);
begin
  EditarParcela1Button.Click;
end;

procedure TFormSeguros.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    EditarParcela1Button.Click;
  end;
end;

procedure TFormSeguros.DBGrid2DblClick(Sender: TObject);
begin
  if DM2.TBSeguros.State in [dsInsert, dsEdit] then
  Exit;
  if not DM2.TBSegurosEndossos.IsEmpty then
  begin
    DM2.TBSeguros.Close;
    DM2.TBSeguros.ParamByName('codigo').AsInteger:=DM2.TBSegurosEndossosSGE_ENDOSSO.Value;
    DM2.TBSeguros.Open;
  end;
end;

procedure TFormSeguros.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if DM2.TBSeguros.State in [dsInsert, dsEdit] then
    Exit;
    if not DM2.TBSegurosEndossos.IsEmpty then
    begin
      DM2.TBSeguros.Close;
      DM2.TBSeguros.ParamByName('codigo').AsInteger:=DM2.TBSegurosEndossosSGE_ENDOSSO.Value;
      DM2.TBSeguros.Open;
    end;
  end;
end;

procedure TFormSeguros.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSeguros.Finalizar1Click(Sender: TObject);
begin
  AbortIf(DM2.TBSeguros.IsEmpty,'Nenhuma proposta selecionada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='A','Esta proposta já está finalizada. Só pode ser cancelada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='C','Esta apólice já está cancelada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='I','Esta proposta já foi inutilizada e não pode ser finalizada.');

  if MessageDlg('Deseja finalizar a proposta?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBSeguros.Edit;
    DM2.TBSegurosSEG_STATUS.Value:='A';
    DM2.TBSeguros.Post;
  end;
end;

procedure TFormSeguros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBSeguros.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormSeguros.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormSeguros.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSeguros.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormSeguros);
end;

procedure TFormSeguros.InserirEndosso1Click(Sender: TObject);
var NovoCodigo: Integer;
  Endosso: String;
begin
  AbortIf(DM2.TBSeguros.IsEmpty,'Nenhuma apólice selecionada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='C','Esta apólice já está cancelada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='I','Esta proposta já está inutilizada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='P','Esta proposta ainda não gerou apólice.');
  AbortIf(DM2.TBSegurosSEG_ORIGINAL.Value > 0,'Não é possível inserir endosso em um endosso.');

  if MessageDlg('Deseja inserir um endosso para essa apólice?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin

    Endosso:=InputBox('Endosso','Digite o número do endosso.','');
    if (Endosso<>'') and (Length(Endosso)>=3) then
    begin
      Screen.Cursor:=crHourGlass;
      DM2.TBSeguros.DisableControls;
      QYSeguros.Open; //foi colocado ibdataset para nao gerar os totais da nota e impedir de dar a msg de venda já finaliza, nao pode ser alterada.
      QYSeguros.Insert;
      {$REGION 'DUPLICACAO_SEGURO'}
      { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
      QYSegurosSEG_APOLICE.Value:=DM2.TBSegurosSEG_APOLICE.Value;
      QYSegurosSEG_CLIENTE.Value:=DM2.TBSegurosSEG_CLIENTE.Value;
      //QYSegurosSEG_CODIGO.Value:=
      QYSegurosSEG_COMISSAO.Value:=DM2.TBSegurosSEG_COMISSAO.Value;
      QYSegurosSEG_COMISSAOVENDEDOR.Value:=DM2.TBSegurosSEG_COMISSAOVENDEDOR.Value;
      QYSegurosSEG_CONDICAO.Value:=DM2.TBSegurosSEG_CONDICAO.Value;
      QYSegurosSEG_DESCRICAOAPOLICE.Value:=DM2.TBSegurosSEG_DESCRICAOAPOLICE.Value;
      //QYSegurosSEG_DESCRICAOCANCELAMENTO.Value:=
      //QYSegurosSEG_DESCRICAOPERDA.Value:=
      QYSegurosSEG_DIAPREFERENCIAL.Value:=DM2.TBSegurosSEG_DIAPREFERENCIAL.Value;
      QYSegurosSEG_DTATUALIZACAO.Value:=DM.ServerDate;
      QYSegurosSEG_DTCADASTRO.Value:=DM.ServerDate;
      //QYSegurosSEG_DTCANCELAMENTO.Value:=
      QYSegurosSEG_DTEMISSAO.Value:=DM.ServerDate;
      QYSegurosSEG_DTINICIO.Value:=DM2.TBSegurosSEG_DTINICIO.Value;
      QYSegurosSEG_DTLEMBRETE.Value:=DM2.TBSegurosSEG_DTLEMBRETE.Value;
      QYSegurosSEG_DTTERMINO.Value:=DM2.TBSegurosSEG_DTTERMINO.Value;
      QYSegurosSEG_ENDOSSO.Value:=Endosso;
      QYSegurosSEG_ORIGEM.Value:=DM2.TBSegurosSEG_ORIGEM.Value;
      QYSegurosSEG_ORIGINAL.Value:=DM2.TBSegurosSEG_CODIGO.Value; //codigo do seguro que deu origem aos endossos.
      QYSegurosSEG_PROPOSTA.Value:=DM2.TBSegurosSEG_PROPOSTA.Value;
      QYSegurosSEG_SEGURADORA.Value:=DM2.TBSegurosSEG_SEGURADORA.Value;
      QYSegurosSEG_SEGUROTIPO.Value:=DM2.TBSegurosSEG_SEGUROTIPO.Value;
      QYSegurosSEG_STATUS.Value:='A';
      QYSegurosSEG_USUARIO.Value:=DM.UsuarioLogin;
      QYSegurosSEG_VALORADICIONAL.Value:=DM2.TBSegurosSEG_VALORADICIONAL.Value;
      QYSegurosSEG_VALORCOMISSAO.Value:=DM2.TBSegurosSEG_VALORCOMISSAO.Value;
      QYSegurosSEG_VALORCOMISSAOVENDEDOR.Value:=DM2.TBSegurosSEG_VALORCOMISSAOVENDEDOR.Value;
      QYSegurosSEG_VALORFRANQUIA.Value:=DM2.TBSegurosSEG_VALORFRANQUIA.Value;
      QYSegurosSEG_VALORIOF.Value:=DM2.TBSegurosSEG_VALORIOF.Value;
      QYSegurosSEG_VALORIOFPORC.Value:=DM2.TBSegurosSEG_VALORIOFPORC.Value;
      QYSegurosSEG_VALORPREMIO.Value:=DM2.TBSegurosSEG_VALORPREMIO.Value;
      QYSegurosSEG_VALORTOTAL.Value:=DM2.TBSegurosSEG_VALORTOTAL.Value;
      QYSegurosSEG_VENDEDOR.Value:=DM2.TBSegurosSEG_VENDEDOR.Value;
      {$ENDREGION}
      QYSeguros.Post;
      NovoCodigo:=QYSegurosSEG_CODIGO.Value;

      //insere o endosso criado... o seguro original lista os endossos.
      DM2.TBSegurosEndossos.Insert;
      DM2.TBSegurosEndossosSGE_SEGURO.Value:=DM2.TBSegurosSEG_CODIGO.Value;
      DM2.TBSegurosEndossosSGE_ENDOSSO.Value:=NovoCodigo;
      DM2.TBSegurosEndossosSGE_NUMERO.Value:=Endosso;
      DM2.TBSegurosEndossos.Post;

      //localiza o novo seguro (endosso) criado.
      DM2.TBSeguros.Close;
      DM2.TBSeguros.ParamByName('codigo').AsInteger:=NovoCodigo;
      DM2.TBSeguros.Open;

      QYSeguros.Close;
      DM2.TBSeguros.EnableControls;
      Screen.Cursor:=crDefault;
      MessageDlg('Endosso gerado com sucesso! Código: '+IntToStr(NovoCodigo),mtInformation,[mbOk],0);
    end;

  end;
end;

procedure TFormSeguros.Inutilizar1Click(Sender: TObject);
begin
  AbortIf(DM2.TBSeguros.IsEmpty,'Nenhuma apólice selecionada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='A','Esta apólice nao pode ser inutilizada. Só pode ser cancelada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='C','Esta apólice já está cancelada.');
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='I','Esta proposta já está inutilizada.');

  if MessageDlg('Deseja inutilizar a proposta?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBSeguros.Edit;
    DM2.TBSegurosSEG_STATUS.Value:='P';
    DM2.TBSeguros.Post;
  end;
end;

procedure TFormSeguros.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosLoc, FormSegurosLoc);
  FormSegurosLoc.ShowModal;
  if SegurosLoc.Procurar then
  begin
    DM2.TBSeguros.Close;
    DM2.TBSeguros.ParamByName('codigo').AsInteger:=FormSegurosLoc.QYSegurosSEG_CODIGO.Value;
    DM2.TBSeguros.Open;

    DM2.TBSegurosEndossos.Close;
    DM2.TBSegurosEndossos.Open;

    DM2.TBSegurosParcelas.Close;
    DM2.TBSegurosParcelas.Open;
  end;
  FormSegurosLoc.Free;
  FormSegurosLoc:=nil;
end;

procedure TFormSeguros.LocalizarNoContasAReceber1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormSeguros.EditarParcela1ButtonClick(Sender: TObject);
begin
  AbortIf(DM2.TBSegurosParcelas.IsEmpty,'Nenhuma parcela selecionada.');

  DM2.TBSegurosParcelas.Edit;
  Application.CreateForm(TFormSegurosParcelas, FormSegurosParcelas);
  FormSegurosParcelas.ShowModal;
  FormSegurosParcelas.Free;
  FormSegurosParcelas:=nil;
end;

procedure TFormSeguros.PngSpeedButton1Click(Sender: TObject);
begin
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='F','Não é possível alterar um seguro finalizado.');

  LocFornecedoresBotao(DBEdit5,DBEdit6,nil,DM2.TBSeguros);
end;

procedure TFormSeguros.PngSpeedButton2Click(Sender: TObject);
begin
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='F','Não é possível alterar um seguro finalizado.');

  Application.CreateForm(TFormSegurosTiposLoc, FormSegurosTiposLoc);
  FormSegurosTiposLoc.ShowModal;
  if SegurosTiposLoc.Procurar then
  begin
    DM2.TBSeguros.Edit;
    DM2.TBSegurosSEG_SEGUROTIPO.Value:=FormSegurosTiposLoc.QYSegurosTiposSGT_CODIGO.Value;
    DM2.TBSegurosSGT_DESCRICAO.Value:=FormSegurosTiposLoc.QYSegurosTiposSGT_DESCRICAO.Value;
  end;
  FormSegurosTiposLoc.Free;
  FormSegurosTiposLoc:=nil;
end;

procedure TFormSeguros.PngSpeedButton3Click(Sender: TObject);
begin
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='F','Não é possível alterar um seguro finalizado.');

  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBSeguros.Edit;
    DM2.TBSegurosSEG_COMISSAOVENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_COMISSAO.Value;
    DM2.TBSegurosSEG_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    DM2.TBSegurosVEN_NOME.Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure TFormSeguros.PngSpeedButton4Click(Sender: TObject);
begin
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='F','Não é possível alterar um seguro finalizado.');

  LocCondicoesBotao(DBEdit11,DBEdit12,DM2.TBSeguros);
end;

procedure TFormSeguros.PngSpeedButton5Click(Sender: TObject);
var I: Integer;
begin
  if DM2.TBSeguros.IsEmpty then
  Exit;
  if DM2.TBSegurosSEG_ORIGINAL.Value > 0 then
  begin
    I:=DM2.TBSegurosSEG_ORIGINAL.Value;
    DM2.TBSeguros.Close;
    DM2.TBSeguros.ParamByName('codigo').AsInteger:=I;
    DM2.TBSeguros.Open;
  end else
  MessageDlg('Não existe registro original para esta apólice.',mtInformation,[mbOk],0);
end;

procedure TFormSeguros.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosRel, FormSegurosRel);
  FormSegurosRel.ShowModal;
  FormSegurosRel.Free;
  FormSegurosRel:=nil;
end;

procedure TFormSeguros.SegurosNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosRel, FormSegurosRel);
  FormSegurosRel.ComboBox1.Enabled:=False;
  FormSegurosRel.ComboBox1.ItemIndex:=0;
  FormSegurosRel.ComboBox1Change(Self);
  FormSegurosRel.ShowModal;
  FormSegurosRel.Free;
  FormSegurosRel:=nil;
end;

procedure TFormSeguros.SegurosPorSeguradora1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosRel, FormSegurosRel);
  FormSegurosRel.ComboBox1.Enabled:=False;
  FormSegurosRel.ComboBox1.ItemIndex:=1;
  FormSegurosRel.ComboBox1Change(Self);
  FormSegurosRel.ShowModal;
  FormSegurosRel.Free;
  FormSegurosRel:=nil;
end;

procedure TFormSeguros.SegurosPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosRel, FormSegurosRel);
  FormSegurosRel.ComboBox1.Enabled:=False;
  FormSegurosRel.ComboBox1.ItemIndex:=2;
  FormSegurosRel.ComboBox1Change(Self);
  FormSegurosRel.ShowModal;
  FormSegurosRel.Free;
  FormSegurosRel:=nil;
end;

procedure TFormSeguros.ComissoesNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosRel, FormSegurosRel);
  FormSegurosRel.ComboBox1.Enabled:=False;
  FormSegurosRel.ComboBox1.ItemIndex:=3;
  FormSegurosRel.ComboBox1Change(Self);
  FormSegurosRel.ShowModal;
  FormSegurosRel.Free;
  FormSegurosRel:=nil;
end;

procedure TFormSeguros.SpeedButton3Click(Sender: TObject);
begin
  AbortIf(DM2.TBSegurosSEG_STATUS.Value='F','Não é possível alterar um seguro finalizado.');

  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBSeguros.Edit;
    DM2.TBSegurosSEG_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBSegurosCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

initialization
  RegisterClass(TFormSeguros);

finalization
  UnRegisterClass(TFormSeguros);

end.
