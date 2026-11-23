unit ConsultasMultiplicar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFormConsultasMultiplicar = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel1: TBevel;
    Label1: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    Label8: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    PngBitBtn1: TPngBitBtn;
    DSConsultas: TDataSource;
    TBConsultas: TClientDataSet;
    RadioGroup1: TRadioGroup;
    TBConsultasCOS_CLIENTE: TIntegerField;
    TBConsultasCOS_CONVENIO: TIntegerField;
    TBConsultasCOS_DATAINICIO: TDateField;
    TBConsultasCOS_DATAFIM: TDateField;
    TBConsultasCOS_HORAFIM: TTimeField;
    TBConsultasCOS_HORAINICIO: TTimeField;
    TBConsultasCOS_MEDICO: TIntegerField;
    TBConsultasCOS_SOLICITANTE: TIntegerField;
    TBConsultasCOS_VALORTOTAL: TFMTBCDField;
    TBConsultasCLI_NOME: TStringField;
    TBConsultasVEN_NOME: TStringField;
    TBConsultasItens: TClientDataSet;
    DSConsultasItens: TDataSource;
    TBConsultasItensCSI_CODIGO: TIntegerField;
    TBConsultasItensCSI_CONSULTA: TIntegerField;
    TBConsultasItensCSI_EXAME: TIntegerField;
    TBConsultasItensCSI_DESCRICAO: TStringField;
    TBConsultasItensCSI_SIGLA: TStringField;
    TBConsultasItensCSI_VALOR: TFMTBCDField;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultasMultiplicar: TFormConsultasMultiplicar;

implementation
uses DataMod2, DataMod, Funcoes1;
{$R *.dfm}

procedure TFormConsultasMultiplicar.BitBtn1Click(Sender: TObject);
begin
  AbortIf(TBConsultas.IsEmpty,'Nenhuma simulação gerada.');

  if MessageDlg('Confirma a multiplicação?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    TBConsultas.Last;
    TBConsultas.DisableControls;
    TBConsultasItens.DisableControls;
    DM2.TBConsultas.DisableControls;
    DM2.TBConsultasItens.DisableControls;
    while not TBConsultas.Bof do
    begin
      DM2.TBConsultas.Insert;
      //DM2.TBConsultasCOS_CODIGO.Value:=
      DM2.TBConsultasCOS_CLIENTE.Value:=TBConsultasCOS_CLIENTE.Value;
      DM2.TBConsultasCOS_CONVENIO.Value:=TBConsultasCOS_CONVENIO.Value;
      DM2.TBConsultasCOS_DATAFIM.Value:=TBConsultasCOS_DATAFIM.Value;
      DM2.TBConsultasCOS_DATAINICIO.Value:=TBConsultasCOS_DATAINICIO.Value;
      DM2.TBConsultasCOS_DTATUALIZACAO.Value:=Date;
      DM2.TBConsultasCOS_DTCADASTRO.Value:=Date;
      DM2.TBConsultasCOS_HORAFIM.Value:=TBConsultasCOS_HORAFIM.Value;
      DM2.TBConsultasCOS_HORAINICIO.Value:=TBConsultasCOS_HORAINICIO.Value;
      DM2.TBConsultasCOS_MEDICO.Value:=TBConsultasCOS_MEDICO.Value;
      DM2.TBConsultasCOS_SOLICITANTE.Value:=TBConsultasCOS_SOLICITANTE.Value;
      DM2.TBConsultasCOS_STATUS.Value:='A';
      DM2.TBConsultasCOS_USUARIO.Value:=DM.UsuarioLogin;
      DM2.TBConsultasCOS_VALORTOTAL.Value:=TBConsultasCOS_VALORTOTAL.Value;
      //DM2.TBConsultasCOS_FIM.Value:= //calculado no on before post
      //DM2.TBConsultasCOS_INICIO.Value:= //calculado no on before post
      //DM2.TBConsultasCLI_NOME.Value:=TBConsultasCLI_NOME.Value;
      //DM2.TBConsultasCLI_NOMESOLICITANTE.Value:=TBConsultasCLI_NOMESOLICITANTE.Value;
      //DM2.TBConsultasCOV_DESCRICAO.Value:=TBConsultasCOV_DESCRICAO.Value;
      //DM2.TBConsultasVEN_NOME.Value:=TBConsultasVEN_NOME.Value;
      DM2.TBConsultas.Post;

      //insere os itens da consulta.
      TBConsultasItens.First;
      while not TBConsultasItens.Eof do
      begin
        DM2.TBConsultasItens.Insert;
        //DM2.TBConsultasItensCSI_CODIGO.Value:=
        DM2.TBConsultasItensCSI_CONSULTA.Value:=DM2.TBConsultasCOS_CODIGO.Value;
        DM2.TBConsultasItensCSI_EXAME.Value:=TBConsultasItensCSI_EXAME.Value;
        DM2.TBConsultasItensCSI_DESCRICAO.Value:=TBConsultasItensCSI_DESCRICAO.Value;
        DM2.TBConsultasItensCSI_SIGLA.Value:=TBConsultasItensCSI_SIGLA.Value;
        DM2.TBConsultasItensCSI_VALOR.Value:=TBConsultasItensCSI_VALOR.Value;
        DM2.TBConsultasItens.Post;

        TBConsultasItens.Next;
      end;

      TBConsultas.Prior;
    end;
    DM2.TBConsultas.EnableControls;
    DM2.TBConsultasItens.EnableControls;
    TBConsultas.EnableControls;
    TBConsultasItens.EnableControls;

    Screen.Cursor:=crDefault;
    MessageDlg('Multiplicação concluída.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormConsultasMultiplicar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultasMultiplicar.Edit1Exit(Sender: TObject);
begin
  if Trim(Edit1.Text)<>'' then
  begin
    if (StrToInt(Edit1.Text)<1) or (StrToInt(Edit1.Text)>255) then
    begin
      MessageDlg('O número de cópias deve estar entre 1 e 255.',mtError,[mbOk],0);
      Edit1.Text:='1';
      Edit1.SetFocus;
    end;
  end;
end;

procedure TFormConsultasMultiplicar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormConsultasMultiplicar.FormCreate(Sender: TObject);
begin
  Edit1.Text:='1';
  RadioGroup1.ItemIndex:=0;

  //ja popula a tabela com os itens da consulta.
  TBConsultasItens.EmptyDataSet;
  DM2.TBConsultasItens.First;
  while not DM2.TBConsultasItens.Eof do
  begin
    TBConsultasItens.Insert;
    TBConsultasItensCSI_CODIGO.Value:=DM2.TBConsultasItensCSI_CODIGO.Value;
    TBConsultasItensCSI_CONSULTA.Value:=DM2.TBConsultasItensCSI_CONSULTA.Value;
    TBConsultasItensCSI_EXAME.Value:=DM2.TBConsultasItensCSI_EXAME.Value;
    TBConsultasItensCSI_DESCRICAO.Value:=DM2.TBConsultasItensCSI_DESCRICAO.Value;
    TBConsultasItensCSI_SIGLA.Value:=DM2.TBConsultasItensCSI_SIGLA.Value;
    TBConsultasItensCSI_VALOR.Value:=DM2.TBConsultasItensCSI_VALOR.Value;
    TBConsultasItens.Post;
    DM2.TBConsultasItens.Next;
  end;
end;

procedure TFormConsultasMultiplicar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultasMultiplicar.PngBitBtn1Click(Sender: TObject);
var I: Byte;
  Ini, Fim: TDate;
begin
  if Trim(Edit1.Text)='' then
  begin
    MessageDlg('Informe o número de cópias.',mtError,[mbOk],0);
    Edit1.SetFocus;
    Exit;
  end;
  TBConsultas.EmptyDataSet;
  Ini:=DM2.TBConsultasCOS_DATAINICIO.Value;
  Fim:=DM2.TBConsultasCOS_DATAFIM.Value;
  for I:=1 to StrToInt(Edit1.Text) do
  begin
    case RadioGroup1.ItemIndex of
      0: begin
           Ini:=Ini+7;
           Fim:=Fim+7;
         end;
      1: begin
           Ini:=IncMonth(Ini,1);
           Fim:=IncMonth(Fim,1);
         end;
    end;

    TBConsultas.Insert;
    TBConsultasCOS_CLIENTE.Value:=DM2.TBConsultasCOS_CLIENTE.Value;
    TBConsultasCOS_CONVENIO.Value:=DM2.TBConsultasCOS_CONVENIO.Value;
    TBConsultasCOS_DATAINICIO.Value:=Ini;
    TBConsultasCOS_DATAFIM.Value:=Fim;
    TBConsultasCOS_HORAFIM.Value:=DM2.TBConsultasCOS_HORAFIM.Value;
    TBConsultasCOS_HORAINICIO.Value:=DM2.TBConsultasCOS_HORAINICIO.Value;
    TBConsultasCOS_MEDICO.Value:=DM2.TBConsultasCOS_MEDICO.Value;
    TBConsultasCOS_SOLICITANTE.Value:=DM2.TBConsultasCOS_SOLICITANTE.Value;
    TBConsultasCOS_VALORTOTAL.Value:=DM2.TBConsultasCOS_VALORTOTAL.Value;
    TBConsultasCLI_NOME.Value:=DM2.TBConsultasCLI_NOME.Value;
    TBConsultasVEN_NOME.Value:=DM2.TBConsultasVEN_NOME.Value;
    TBConsultas.Post;
  end;
end;

end.
