unit ConsultasReagendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  PngBitBtn, Vcl.ExtCtrls;

type
  TFormConsultasReagendar = class(TForm)
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultasReagendar: TFormConsultasReagendar;

implementation
uses DataMod, DataMod2, Funcoes1;
{$R *.dfm}

procedure TFormConsultasReagendar.BitBtn1Click(Sender: TObject);
begin
  AbortIf((MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    '),'Digite as datas inicial e final');

  if MessageDlg('Deseja reagendar a consulta?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBConsultas.Edit;
    DM2.TBConsultasCOS_STATUS.Value:='R';
    DM2.TBConsultas.Post;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from CONSULTAS where COS_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBConsultasCOS_CODIGO.Value;
    DM.QYAux.Open;

    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select * from CONSULTASITENS where CSI_CONSULTA=:codigo order by CSI_CODIGO');
    DM.QYAux2.ParamByName('codigo').AsInteger:=DM2.TBConsultasCOS_CODIGO.Value;
    DM.QYAux2.Open;

    DM2.TBConsultas.Insert;
    DM2.TBConsultasCOS_CLIENTE.Value:=DM.QYAux.FieldByName('COS_CLIENTE').AsInteger;
    //DM2.TBConsultasCOS_CODIGO.Value:=
    DM2.TBConsultasCOS_CONVENIO.Value:=DM.QYAux.FieldByName('COS_CONVENIO').AsInteger;
    DM2.TBConsultasCOS_DATAFIM.Value:=StrToDate(MaskEdit2.Text);
    DM2.TBConsultasCOS_DATAINICIO.Value:=StrToDate(MaskEdit1.Text);
    //DM2.TBConsultasCOS_DTATUALIZACAO.Value:=
    //DM2.TBConsultasCOS_DTCADASTRO.Value:=
    //DM2.TBConsultasCOS_FIM.Value:=
    DM2.TBConsultasCOS_HORAFIM.Value:=StrToTime(MaskEdit4.Text);
    DM2.TBConsultasCOS_HORAINICIO.Value:=StrToTime(MaskEdit3.Text);
    //DM2.TBConsultasCOS_HRATUALIZACAO.Value:=
    //DM2.TBConsultasCOS_HRCADASTRO.Value:=
    //DM2.TBConsultasCOS_INICIO.Value:=
    DM2.TBConsultasCOS_MEDICO.Value:=DM.QYAux.FieldByName('COS_MEDICO').AsInteger;
    DM2.TBConsultasCOS_SOLICITANTE.Value:=DM.QYAux.FieldByName('COS_SOLICITANTE').AsInteger;
    DM2.TBConsultasCOS_STATUS.Value:='A';
    //DM2.TBConsultasCOS_USUARIO.Value:=
    DM2.TBConsultasCOS_VALORTOTAL.Value:=DM.QYAux.FieldByName('COS_VALORTOTAL').AsExtended;
    DM2.TBConsultas.Post;

    DM.QYAux2.First;
    while not DM.QYAux2.Eof do
    begin
      DM2.TBConsultasItens.Insert;
      //DM2.TBConsultasItensCSI_CODIGO
      DM2.TBConsultasItensCSI_CONSULTA.Value:=DM.QYAux2.FieldByName('CSI_CONSULTA').AsInteger;
      DM2.TBConsultasItensCSI_DESCRICAO.Value:=DM.QYAux2.FieldByName('CSI_DESCRICAO').AsString;
      DM2.TBConsultasItensCSI_EXAME.Value:=DM.QYAux2.FieldByName('CSI_EXAME').AsInteger;
      DM2.TBConsultasItensCSI_SIGLA.Value:=DM.QYAux2.FieldByName('CSI_SIGLA').AsString;
      DM2.TBConsultasItensCSI_VALOR.Value:=DM.QYAux2.FieldByName('CSI_VALOR').AsExtended;
      DM2.TBConsultasItens.Post;
      DM.QYAux2.Next;
    end;

    DM2.TBConsultas.Close;
    DM2.TBConsultas.ParamByName('COS_CODIGO').AsInteger:=DM.QYAux.FieldByName('COS_CODIGO').AsInteger;
    DM2.TBConsultas.Open;

    DM.QYAux2.Close;
    DM.QYAux.Close;
  end;
end;

procedure TFormConsultasReagendar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultasReagendar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

initialization
  RegisterClass(TFormConsultasReagendar);

finalization
  UnRegisterClass(TFormConsultasReagendar);

end.
