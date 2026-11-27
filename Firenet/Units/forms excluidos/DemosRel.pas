unit DemosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, PngBitBtn, IBDatabase, DB,
  IBCustomDataSet, IBQuery, PngSpeedButton;

type
  TFormDemosRel = class(TForm)
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    QYVendedores: TIBQuery;
    QYVendedoresVEN_CODIGO: TIntegerField;
    QYVendedoresVEN_NOME: TIBStringField;
    TRVendedores: TIBTransaction;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label7: TLabel;
    ComboBox4: TComboBox;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label24: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDemosRel: TFormDemosRel;

implementation
uses DataMod, DataMod2, Funcoes1, DemosQ01, VendedoresLoc;
{$R *.dfm}

procedure TFormDemosRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  case ComboBox4.ItemIndex of
    00: begin
          Application.CreateForm(TFormDemosQ01, FormDemosQ01);
          FormDemosQ01.QRLabel1.Caption:='Demonstrações agendadas no período de '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          FormDemosQ01.IBQuery1.Close;
          if ComboBox1.Text<>'TODOS' then Where:=' and DEM_STATUS='+QuotedStr(ComboBox1.Text);
          FormDemosQ01.IBQuery1.SQL.Clear;
          FormDemosQ01.IBQuery1.SQL.Add('select DEM_CLIENTE, DEM_AULADATA, DEM_AULAHORA, DEM_TESTEESCRITO, DEM_TESTEORAL, DEM_NIVELESCRITO, '+
                                        'DEM_NIVELORAL, DEM_STATUS, CLI_NOME, CLI_FONE1 from DEMOS '+
                                        'left join CLIENTES on DEM_CLIENTE=CLI_CODIGO '+
                                        'where DEM_AULADATA between :datainicial and :datafinal '+Where+' '+
                                        'order by DEM_AULADATA, DEM_AULAHORA, CLI_NOME');
          FormDemosQ01.IBQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormDemosQ01.IBQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormDemosQ01.IBQuery1.Open;
          FormDemosQ01.QuickRep1.PreviewModal;
          FormDemosQ01.Free;
          FormDemosQ01:=nil;
        end;
  end;
end;

procedure TFormDemosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDemosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormDemosRel.ComboBox4Change(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox1.Enabled:=True;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
        end;
  end;
end;

procedure TFormDemosRel.Edit3Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit3.Clear;
    Edit4.Clear;
    Exit;
  end;
  if (Sender as TEdit).Text<>'' then
  begin
    QYVendedores.Close;
    QYVendedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    QYVendedores.Open;
    if not QYVendedores.IsEmpty then
    begin
      Edit3.Text:=IntToStr(QYVendedoresVEN_CODIGO.Value);
      Edit4.Text:=QYVendedoresVEN_NOME.Value;
    end else
    begin
      Edit3.Clear;
      Edit4.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    QYVendedores.Close;
  end;
end;

procedure TFormDemosRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormDemosRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormDemosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox4Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
end;

procedure TFormDemosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDemosRel.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    Edit3.Text:=IntToStr(FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value);
    Edit4.Text:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

end.
