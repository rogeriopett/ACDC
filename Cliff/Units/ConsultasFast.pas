unit ConsultasFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, frxClass, frxDBSet, frxExportPDF,
  frxExportXLSX, frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls,
  Datasnap.DBClient, Vcl.FileCtrl, frCoreClasses;

type
  TFormConsultasFast = class(TForm)
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    QY01: TIBQuery;
    TR01: TIBTransaction;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    QY02: TIBQuery;
    TR02: TIBTransaction;
    frxDBDataset3: TfrxDBDataset;
    frxReport3: TfrxReport;
    QY03: TIBQuery;
    TR03: TIBTransaction;
    frxDBDataset4: TfrxDBDataset;
    frxReport4: TfrxReport;
    QY04: TIBQuery;
    TR04: TIBTransaction;
    frxDBDataset5: TfrxDBDataset;
    frxReport5: TfrxReport;
    QY05: TIBQuery;
    TR05: TIBTransaction;
    TBImagens: TClientDataSet;
    TBImagensIMAGEM1: TStringField;
    TBImagensCODIGO: TAutoIncField;
    DSImagens: TDataSource;
    frxDBDataset6: TfrxDBDataset;
    FileListBox1: TFileListBox;
    frxReport6: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    frxReport7: TfrxReport;
    QY07: TIBQuery;
    TR07: TIBTransaction;
    procedure QY05AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultasFast: TFormConsultasFast;

implementation
uses DataModFirenet, Funcoes;

{$R *.dfm}

procedure TFormConsultasFast.QY05AfterOpen(DataSet: TDataSet);
//var Pasta, Imagem1, Imagem2, Imagem3, Imagem4, Imagem5, Imagem6: String;
//  I,X: Word;
begin
//  Pasta:=DM.TBParametrosPAR_LOCALIMAGENSCONSULTAS.Value;
//  if Copy(Pasta,Length(Pasta)-1,1)<>'\' then Pasta:=Pasta+'\';
//  Pasta:=Pasta+AlignText(QY05.FieldByName('COS_CODIGO').AsString,'0',8,taRight)+'\';
//  if not System.SysUtils.DirectoryExists(Pasta) then
//    if not System.SysUtils.ForceDirectories(Pasta) then
//    begin
//      MessageDlg('Não foi possível criar as pastas'+#13#13+Pasta,mtError,[mbOk],0);
//      //Close;
//      Exit;
//    end;
//  FileListBox1.Directory:=Pasta;
//  FileListBox1.ItemIndex:=0;
//
//  TBImagens.Open;
//  TBImagens.EmptyDataSet;
//  X:=0;
//  for I:=0 to FileListBox1.Items.Count-1 do
//  begin
//    FileListBox1.ItemIndex:=I;
//    TBImagens.Insert;
//    TBImagensIMAGEM1.Value:=FileListBox1.FileName;
//    TBImagens.Post;
//  end;
//  TBImagens.First;
end;

end.
