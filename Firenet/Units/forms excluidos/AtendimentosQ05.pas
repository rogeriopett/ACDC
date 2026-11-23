unit AtendimentosQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery,
  QuickRpt, QRCtrls, ExtCtrls;

type
  TFormAtendimentosQ05 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
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
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRGroup1: TQRGroup;
    QRBand5: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtendimentosQ05: TFormAtendimentosQ05;
  Total, Aula, Escrito, Oral, Matriculado, TotalAula, TotalEscrito, TotalOral, TotalMatriculado,
  TotalTotal, SubTotalAula, SubTotalEscrito, SubTotalOral, SubTotalMatriculado: Integer;

implementation
uses DataMod, FuncoesFirenet, AtendimentosRel;

{$R *.dfm}

procedure TFormAtendimentosQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormAtendimentosQ05);
  QRLabel1.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  Aula:=0;
  Escrito:=0;
  Oral:=0;
  Matriculado:=0;
end;

procedure TFormAtendimentosQ05.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalTotal:=0;
  TotalAula:=0;
  TotalEscrito:=0;
  TotalOral:=0;
  TotalMatriculado:=0;
end;

procedure TFormAtendimentosQ05.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel23.Caption:='Total de Atendimentos: '+IntToStr(TotalTotal);
  QRLabel24.Caption:=IntToStr(TotalAula);
  QRLabel25.Caption:=IntToStr(TotalEscrito);
  QRLabel26.Caption:=IntToStr(TotalOral);
  QRLabel27.Caption:=IntToStr(TotalMatriculado);
end;

procedure TFormAtendimentosQ05.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotalAula:=0;
  SubTotalEscrito:=0;
  SubTotalOral:=0;
  SubTotalMatriculado:=0;
end;

procedure TFormAtendimentosQ05.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel11.Caption:=IntToStr(SubTotalAula);
  QRLabel13.Caption:=IntToStr(SubTotalEscrito);
  QRLabel14.Caption:=IntToStr(SubTotalOral);
  QRLabel15.Caption:=IntToStr(SubTotalMatriculado);
end;

procedure TFormAtendimentosQ05.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  Aula:=0;
  Escrito:=0;
  Oral:=0;
  Matriculado:=0;
end;

procedure TFormAtendimentosQ05.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total de Atendimentos: '+IntToStr(Total);
  QRLabel16.Caption:=IntToStr(Aula);
  QRLabel18.Caption:=IntToStr(Escrito);
  QRLabel20.Caption:=IntToStr(Oral);
  QRLabel21.Caption:=IntToStr(Matriculado);
end;

procedure TFormAtendimentosQ05.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total:=Total+1;
  TotalTotal:=TotalTotal+1;

  if IBQuery1.FieldByName('ATE_AULA').AsString='S' then
  begin
    Aula:=Aula+1;
    TotalAula:=TotalAula+1;
    SubTotalAula:=SubTotalAula+1;
  end;
  if IBQuery1.FieldByName('ATE_TESTEESCRITO').AsString='S' then
  begin
    Escrito:=Escrito+1;
    TotalEscrito:=TotalEscrito+1;
    SubTotalEscrito:=SubTotalEscrito+1;
  end;
  if IBQuery1.FieldByName('ATE_TESTEORAL').AsString='S' then
  begin
    Oral:=Oral+1;
    TotalOral:=TotalOral+1;
    SubTotalOral:=SubTotalOral+1;
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
    SubTotalMatriculado:=SubTotalMatriculado+1;
  end else
  QRLabel9.Caption:='N';
end;

end.
