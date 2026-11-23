unit AtendimentosQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, QRExport, QRPDFFilt,
  QuickRpt, QRCtrls, ExtCtrls;

type
  TFormAtendimentosQ04 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRSysData3: TQRSysData;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText3: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtendimentosQ04: TFormAtendimentosQ04;
  Total, Aula, Escrito, Oral, Matriculado, TotalAula, TotalEscrito, TotalOral, TotalMatriculado: Integer;

implementation
uses DataMod, FuncoesFirenet, AtendimentosRel;
{$R *.dfm}

procedure TFormAtendimentosQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormAtendimentosQ04);
  QRLabel1.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  Aula:=0;
  Escrito:=0;
  Oral:=0;
  Matriculado:=0;
end;

procedure TFormAtendimentosQ04.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  TotalAula:=0;
  TotalEscrito:=0;
  TotalOral:=0;
  TotalMatriculado:=0;
end;

procedure TFormAtendimentosQ04.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total de Atendimentos: '+IntToStr(Total);
  QRLabel16.Caption:=IntToStr(TotalAula);
  QRLabel18.Caption:=IntToStr(TotalEscrito);
  QRLabel20.Caption:=IntToStr(TotalOral);
  QRLabel21.Caption:=IntToStr(TotalMatriculado);
end;

procedure TFormAtendimentosQ04.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Aula:=0;
  Escrito:=0;
  Oral:=0;
  Matriculado:=0;
end;

procedure TFormAtendimentosQ04.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel11.Caption:=IntToStr(Aula);
  QRLabel13.Caption:=IntToStr(Escrito);
  QRLabel14.Caption:=IntToStr(Oral);
  QRLabel15.Caption:=IntToStr(Matriculado);
end;

procedure TFormAtendimentosQ04.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total:=Total+1;

  if IBQuery1.FieldByName('ATE_AULA').AsString='S' then
  begin
    Aula:=Aula+1;
    TotalAula:=TotalAula+1;
  end;
  if IBQuery1.FieldByName('ATE_TESTEESCRITO').AsString='S' then
  begin
    Escrito:=Escrito+1;
    TotalEscrito:=TotalEscrito+1;
  end;
  if IBQuery1.FieldByName('ATE_TESTEORAL').AsString='S' then
  begin
    Oral:=Oral+1;
    TotalOral:=TotalOral+1;
  end;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select first(1) MAT_CODIGO from MATRICULAS where MAT_CLIENTE=:cliente and (MAT_DTCADASTRO between :datainicial and :datafinal) order by MAT_CODIGO desc');
  DM.QYAux.ParamByName('cliente').AsInteger:=IBQuery1.FieldByName('ATE_CLIENTE').AsInteger;
  DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(FormAtendimentosRel.MaskEdit1.Text,FS);
  DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(FormAtendimentosRel.MaskEdit2.Text,FS);
  DM.QYAux.Open;
  if not DM.QYAux.IsEmpty then
  begin
    QRLabel9.Caption:='S';
    Matriculado:=Matriculado+1;
    TotalMatriculado:=TotalMatriculado+1;
  end else
  QRLabel9.Caption:='N';
end;

end.
