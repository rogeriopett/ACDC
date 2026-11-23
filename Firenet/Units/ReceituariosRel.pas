unit ReceituariosRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.StdCtrls, PngBitBtn, Vcl.ExtCtrls, Data.DB, System.UITypes;

type
  TFormReceituariosRel = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceituariosRel: TFormReceituariosRel;

implementation
uses DataMod, Funcoes1, ClientesLoc, ReceituariosQ01, DataModSearch;
{$R *.dfm}

procedure TFormReceituariosRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          Application.CreateForm(TFormReceituariosQ01, FormReceituariosQ01);
          if Edit2.Text<>'' then
          Where:='where RCT_CLIENTE='+Edit1.Text;
          FormReceituariosQ01.FDQuery1.SQL.Clear;
          FormReceituariosQ01.FDQuery1.SQL.Add('select RCT_CLIENTE, RCT_DIA01, RCT_DIA02, RCT_DIA03, RCT_DIA04, RCT_DIA05, RCT_DIA06, '+
                                               'RCT_DIA07, RCT_DIA08, RCT_DIA09, RCT_DIA10, RCT_DIA11, RCT_DIA12, RCT_DIA13, RCT_DIA14, '+
                                               'RCT_DIA15, RCT_DIA16, RCT_DIA17, RCT_DIA18, RCT_DIA19, RCT_DIA20, RCT_DIA21, RCT_DIA22, '+
                                               'RCT_DIA23, RCT_DIA24, RCT_DIA25, RCT_DIA26, RCT_DIA27, RCT_DIA28, RCT_DIA29, RCT_DIA30, '+
                                               'RCT_DIA31, RCT_DOSAGEM, RCT_MEDICAMENTO, RCT_ORDEM, CLI_CONTATO, CLI_FONE1, '+
                                               'CLI_FONE2, CLI_NOME, CLI_DTNASC, MTO_NOME from RECEITUARIOS '+
                                               'left join CLIENTES on RCT_CLIENTE=CLI_CODIGO '+
                                               'left join MEDICAMENTOS on RCT_MEDICAMENTO=MTO_CODIGO '+Where+' '+
                                               'order by CLI_NOME, RCT_ORDEM, RCT_CODIGO');
          FormReceituariosQ01.FDQuery1.Open;
          FormReceituariosQ01.QuickRep1.PreviewModal;
          FormReceituariosQ01.Free;
          FormReceituariosQ01:=nil;
        end;
  end;
end;

procedure TFormReceituariosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceituariosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormReceituariosRel.ComboBox1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
  end;
end;

procedure TFormReceituariosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormReceituariosRel.Edit1Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit1.Clear;
    Edit2.Clear;
    Exit;
  end;
  if (Sender as TEdit).Text=DataMod.DM.CodigosOld then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      Edit1.Text:=IntToStr(DMS.QYClientesCLI_CODIGO.Value);
      Edit2.Text:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      Edit1.Clear;
      Edit2.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormReceituariosRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormReceituariosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceituariosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  if not DM.TBClientes.IsEmpty then
  begin
    Edit1.Text:=IntToStr(DM.TBClientesCLI_CODIGO.Value);
    Edit2.Text:=DM.TBClientesCLI_NOME.Value;
  end;
end;

procedure TFormReceituariosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceituariosRel.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    Edit1.Text:=IntToStr(FormClientesLoc.QYClientesCLI_CODIGO.Value);
    Edit2.Text:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

end.
