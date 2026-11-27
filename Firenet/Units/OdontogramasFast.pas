//Atualizacoes:
//2026.11.24 - Figuras dos dentes do ODO01 carregadas do arquivo do dente (ODO_Dnn na pasta PAR_LOCALDENTES), como no FormOdontogramas.
//2026.11.24 - Odontograma (ODO01, antigo FormOdontogramasQ01) e opcoes dos odontogramas (ODO02, antigo FormOdontogramasOpcoesQ01) no FastReport.
unit OdontogramasFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, frxClass, frxDBSet,
  frCoreClasses, frxExportCSV, frxExportXLSX, frxExportBaseDialog, frxExportPDF, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TFormOdontogramasFast = class(TForm)
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport2BeforePrint(Sender: TfrxReportComponent);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FEstilos: TStringList;
    FEstilosCodigo: Integer;
    FFiguras: TStringList; //figuras padrao dos dentes (do relatorio), para restaurar entre os registros.
    procedure CarregarDente(Pic: TfrxPictureView);
    procedure PintarShape(Shape: TfrxShapeView; Cor: TColor; Estilo: TBrushStyle);
  public
    { Public declarations }
    procedure Mostrar(Relatorio: TfrxReport; const Titulo: String);
  end;

var
  FormOdontogramasFast: TFormOdontogramasFast;

implementation
uses DataMod, FuncoesFirenet;

{$R *.dfm}

//preenche as variaveis do cabecalho e mostra o relatorio.
procedure TFormOdontogramasFast.Mostrar(Relatorio: TfrxReport; const Titulo: String);
begin
  Relatorio.Variables['TITULO']:=QuotedStr(Titulo);
  Relatorio.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  Relatorio.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  Relatorio.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  Relatorio.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  Relatorio.ShowReport;
end;

procedure TFormOdontogramasFast.FormDestroy(Sender: TObject);
begin
  FEstilos.Free;
  FFiguras.Free;
end;

//cor e estilo do preenchimento (solido usa a cor no fundo; hachurado usa a cor nas linhas).
procedure TFormOdontogramasFast.PintarShape(Shape: TfrxShapeView; Cor: TColor; Estilo: TBrushStyle);
var Fill: TfrxBrushFill;
begin
  if not (Shape.Fill is TfrxBrushFill) then Exit;
  Fill:=TfrxBrushFill(Shape.Fill);
  Fill.Style:=Estilo;
  if Estilo=bsSolid then
  begin
    Fill.BackColor:=Cor;
    Fill.ForeColor:=clBlack;
  end else
  begin
    Fill.BackColor:=clWhite;
    Fill.ForeColor:=Cor;
  end;
end;

//ODO01: figura do dente (PicDNN) igual ao FormOdontogramas: arquivo do campo ODO_DNN na pasta PAR_LOCALDENTES.
//sem arquivo informado o dente fica sem figura; se o arquivo nao existir, usa a figura padrao do relatorio.
procedure TFormOdontogramasFast.CarregarDente(Pic: TfrxPictureView);
var Arquivo: String;
    I: Integer;
    Padrao: TPicture;
begin
  if FFiguras=nil then
  begin
    FFiguras:=TStringList.Create;
    FFiguras.OwnsObjects:=True;
  end;
  I:=FFiguras.IndexOf(Pic.Name);
  if I<0 then
  begin
    Padrao:=TPicture.Create;
    Padrao.Assign(Pic.Picture);
    I:=FFiguras.AddObject(Pic.Name,Padrao);
  end;
  Padrao:=TPicture(FFiguras.Objects[I]);

  Arquivo:=QY01.FieldByName('ODO_D'+Copy(Pic.Name,5,2)).AsString;
  if Arquivo='' then
  Pic.Picture.Assign(nil) else
  if FileExists(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+Arquivo) then
  begin
    try
      Pic.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+Arquivo);
    except
      Pic.Picture.Assign(Padrao);
    end;
  end else
  Pic.Picture.Assign(Padrao);
end;

//ODO01: pinta as faces dos dentes (ShapeQRShapeNNX = campo ODO_DNNX) com a cor do campo e o estilo do ODO_ESTILOS.
procedure TFormOdontogramasFast.frxReport1BeforePrint(Sender: TfrxReportComponent);
var Nome: String;
    Campo: TField;
    Cor: TColor;
    Estilo: TBrushStyle;
    Idx: Integer;
begin
  if (Sender is TfrxPictureView) and (Length(Sender.Name)=6) and (Copy(Sender.Name,1,4)='PicD') then
  begin
    CarregarDente(TfrxPictureView(Sender));
    Exit;
  end;
  if not (Sender is TfrxShapeView) then Exit;
  Nome:=Sender.Name;
  if (Length(Nome)<>15) or (Copy(Nome,1,12)<>'ShapeQRShape') or (not CharInSet(Nome[15],['A'..'E'])) then Exit;

  //estilos do odontograma atual (|estilo 11A|11B|...|48E|...), lidos uma vez por registro.
  if FEstilos=nil then
  begin
    FEstilos:=TStringList.Create;
    FEstilos.StrictDelimiter:=True;
    FEstilos.Delimiter:='|';
    FEstilosCodigo:=-1;
  end;
  if FEstilosCodigo<>QY01.FieldByName('ODO_CODIGO').AsInteger then
  begin
    FEstilos.DelimitedText:=QY01.FieldByName('ODO_ESTILOS').AsString;
    FEstilosCodigo:=QY01.FieldByName('ODO_CODIGO').AsInteger;
  end;

  Campo:=QY01.FindField('ODO_D'+Copy(Nome,13,2)+Nome[15]);
  if (Campo=nil) or Campo.IsNull then Cor:=clWhite else Cor:=TColor(Campo.AsInteger);
  Idx:=((StrToInt(Nome[13])-1)*8+(StrToInt(Nome[14])-1))*5+(Ord(Nome[15])-Ord('A'))+1;
  if (Idx<FEstilos.Count) and (FEstilos.Strings[Idx]<>'') then Estilo:=StrToBrushStyle(FEstilos.Strings[Idx]) else Estilo:=bsSolid;
  PintarShape(TfrxShapeView(Sender),Cor,Estilo);
end;

//ODO02: amostra da cor/estilo de cada opcao.
procedure TFormOdontogramasFast.frxReport2BeforePrint(Sender: TfrxReportComponent);
begin
  if Sender.Name<>'ShapeQRShape1' then Exit;
  PintarShape(TfrxShapeView(Sender),TColor(QY02.FieldByName('ODP_COR').AsInteger),
    TBrushStyle(StrToIntDef(StrToBrushStyle2(QY02.FieldByName('ODP_ESTILO').AsString),0)));
end;

end.