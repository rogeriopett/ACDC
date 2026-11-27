//Atualizacoes:
//2026.11.24 - Relatorio de MDFe emitidos no FastReport (FormMdfeFast, MDF02); o QuickReport (FormMdfeQ02) ficou comentado.
unit MdfeRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.Mask, PngSpeedButton, Vcl.ExtCtrls;

type
  TFormMdfeRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    ComboBox2: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMdfeRel: TFormMdfeRel;

implementation
uses DataMod, DataMod2, Funcoes1, MdfeFast;
{$R *.dfm}

procedure TFormMdfeRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  case ComboBox1.ItemIndex of
    00: begin
          //QuickReport antigo (FormMdfeQ02), trocado pelo FastReport (FormMdfeFast, MDF02) em 2026.11.24:
          //Application.CreateForm(TFormMdfeQ02, FormMdfeQ02);
          //FormMdfeQ02.QRLabel1.Caption:='MDFe emitidos de '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          //FormMdfeQ02.FDQuery1.Close;
          //Where:='';
          //if ComboBox2.Text='TODOS' then Where:='';
          //if ComboBox2.Text='ABERTOS' then Where:=' and MDF_STATUS=''A''';
          //if ComboBox2.Text='CANCELADOS' then Where:=' and MDF_STATUS=''C''';
          //if ComboBox2.Text='FINALIZADOS' then Where:=' and MDF_STATUS=''F''';
          //if ComboBox2.Text='VIGENCIA' then Where:=' and MDF_STATUS=''V''';
          //FormMdfeQ02.FDQuery1.SQL.Clear;
          //FormMdfeQ02.FDQuery1.SQL.Add('select MDF_CHAVEACESSO, MDF_CODIGO, MDF_DTEMISSAO, MDF_PESOBRUTO, MDF_QTDECTE, MDF_QTDENFE, MDF_QTDEMDFE, MDF_STATUS, '+
          //                             'case MDF_STATUS '+
          //                             '  when ''A'' then ''ABERTO'' '+
          //                             '  when ''C'' then ''CANCELADO'' '+
          //                             '  when ''F'' then ''FINALIZADO'' '+
          //                             '  when ''V'' then ''VIGENCIA'' '+
          //                             'end as MDF_STATUSDESC, MDF_VALORCARGA from MDFE where MDF_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
          //                             'order by MDF_STATUS, MDF_DTEMISSAO, MDF_CODIGO desc');
          //FormMdfeQ02.FDQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          //FormMdfeQ02.FDQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          //FormMdfeQ02.FDQuery1.Open;
          //FormMdfeQ02.QuickRep1.PreviewModal;
          //FormMdfeQ02.Free;
          //FormMdfeQ02:=nil;
          Where:='';
          if ComboBox2.Text='ABERTOS' then Where:=' and MDF_STATUS=''A''';
          if ComboBox2.Text='CANCELADOS' then Where:=' and MDF_STATUS=''C''';
          if ComboBox2.Text='FINALIZADOS' then Where:=' and MDF_STATUS=''F''';
          if ComboBox2.Text='VIGENCIA' then Where:=' and MDF_STATUS=''V''';
          Application.CreateForm(TFormMdfeFast, FormMdfeFast);
          FormMdfeFast.QY02.SQL.Clear;
          FormMdfeFast.QY02.SQL.Add(
            'select MDF_CHAVEACESSO, MDF_CODIGO, MDF_DTEMISSAO, MDF_PESOBRUTO, MDF_QTDECTE, MDF_QTDENFE, MDF_QTDEMDFE, MDF_STATUS, '+
            'case MDF_STATUS when ''A'' then ''ABERTO'' when ''C'' then ''CANCELADO'' when ''F'' then ''FINALIZADO'' when ''V'' then ''VIGENCIA'' end as MDF_STATUSDESC, '+
            'MDF_VALORCARGA '+
            'from MDFE '+
            'where MDF_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by MDF_STATUS, MDF_DTEMISSAO, MDF_CODIGO desc ');
          FormMdfeFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormMdfeFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormMdfeFast.QY02.Open;
          FormMdfeFast.Mostrar(FormMdfeFast.frxReport2,'MDFe emitidos de '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormMdfeFast.Free;
          FormMdfeFast:=nil;
        end;
  end;
end;

procedure TFormMdfeRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMdfeRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMdfeRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          //nada.
        end;
  end;
end;

procedure TFormMdfeRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormMdfeRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
