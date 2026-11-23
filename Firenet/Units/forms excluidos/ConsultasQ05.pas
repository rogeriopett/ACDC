unit ConsultasQ05;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.FileCtrl, Datasnap.DBClient;

type
  TFormConsultasQ05 = class(TForm)
    IBQuery1: TIBQuery;
    IBQuery1COS_CLIENTE: TIntegerField;
    IBQuery1COS_CODIGO: TIntegerField;
    IBQuery1COS_CONVENIO: TIntegerField;
    IBQuery1COS_MEDICO: TIntegerField;
    IBQuery1COS_SOLICITANTE: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1CLI_NOMESOLICITANTE: TIBStringField;
    IBQuery1COV_DESCRICAO: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBTransaction1: TIBTransaction;
    QRPDFFilter1: TQRPDFFilter;
    FileListBox1: TFileListBox;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    DataSource1: TDataSource;
    TBImagens: TClientDataSet;
    DSImagens: TDataSource;
    TBImagensIMAGEM1: TStringField;
    TBImagensIMAGEM2: TStringField;
    TBImagensIMAGEM3: TStringField;
    TBImagensIMAGEM4: TStringField;
    TBImagensIMAGEM5: TStringField;
    TBImagensIMAGEM6: TStringField;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRImage4: TQRImage;
    QRImage3: TQRImage;
    QRImage6: TQRImage;
    QRImage5: TQRImage;
    QRGroup1: TQRGroup;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRShape9: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    TBImagensCODIGO: TAutoIncField;
    IBQuery1COS_DATAINICIO: TDateField;
    IBQuery1COS_HORAINICIO: TTimeField;
    procedure IBQuery1AfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultasQ05: TFormConsultasQ05;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormConsultasQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormConsultasQ05);
  QRLabel4.Caption:='Usuário: '+DataMod.UsuarioLogado;
end;

procedure TFormConsultasQ05.IBQuery1AfterOpen(DataSet: TDataSet);
var Pasta, Imagem1, Imagem2, Imagem3, Imagem4, Imagem5, Imagem6: String;
  I,X: Word;
begin
  Pasta:=DM.TBParametrosPAR_LOCALIMAGENSCONSULTAS.Value;
  if Copy(Pasta,Length(Pasta)-1,1)<>'\' then Pasta:=Pasta+'\';
  Pasta:=Pasta+AlignText(IntToStr(IBQuery1COS_CODIGO.Value),'0',8,taRight)+'\';
  if not System.SysUtils.DirectoryExists(Pasta) then
    if not System.SysUtils.ForceDirectories(Pasta) then
    begin
      MessageDlg('Não foi possível criar as pastas'+#13#13+Pasta,mtError,[mbOk],0);
      Close;
      Exit;
    end;
  FileListBox1.Directory:=Pasta;
  FileListBox1.ItemIndex:=0;

  TBImagens.Open;
  TBImagens.EmptyDataSet;
  X:=0;
  for I:=0 to FileListBox1.Items.Count-1 do
  begin
    //Inc(X);
    //if X>6 then
    //begin
    //  X:=1;
    FileListBox1.ItemIndex:=I;

      TBImagens.Insert;
      TBImagensIMAGEM1.Value:='c:\runtime\firenet\arquivos\consultas_imagens\00001499\00001499001.jpg';// FileListBox1.FileName;
      {TBImagensIMAGEM2.Value:=Imagem2;
      TBImagensIMAGEM3.Value:=Imagem3;
      TBImagensIMAGEM4.Value:=Imagem4;
      TBImagensIMAGEM5.Value:=Imagem5;
      TBImagensIMAGEM6.Value:=Imagem6;}
      TBImagens.Post;
      {Imagem1:='';
      Imagem2:='';
      Imagem3:='';
      Imagem4:='';
      Imagem5:='';
      Imagem6:='';
    end;
    FileListBox1.ItemIndex:=I;
    case X of
      01: Imagem1:=FileListBox1.FileName; //QRImage1.Picture.LoadFromFile(FileListBox1.FileName);
      02: Imagem2:=FileListBox1.FileName; //QRImage2.Picture.LoadFromFile(FileListBox1.FileName);
      03: Imagem3:=FileListBox1.FileName; //QRImage3.Picture.LoadFromFile(FileListBox1.FileName);
      04: Imagem4:=FileListBox1.FileName; //QRImage4.Picture.LoadFromFile(FileListBox1.FileName);
      05: Imagem5:=FileListBox1.FileName; //QRImage5.Picture.LoadFromFile(FileListBox1.FileName);
      06: Imagem6:=FileListBox1.FileName; //QRImage6.Picture.LoadFromFile(FileListBox1.FileName);
    end;}
  end;

  //ultimas imagens.
  {TBImagens.Insert;
  TBImagensIMAGEM1.Value:=Imagem1;
  TBImagensIMAGEM2.Value:=Imagem2;
  TBImagensIMAGEM3.Value:=Imagem3;
  TBImagensIMAGEM4.Value:=Imagem4;
  TBImagensIMAGEM5.Value:=Imagem5;
  TBImagensIMAGEM6.Value:=Imagem6;
  TBImagens.Post;}

  TBImagens.First;
end;

procedure TFormConsultasQ05.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRImage1.Picture.Assign(nil);
  QRImage2.Picture.Assign(nil);
  QRImage3.Picture.Assign(nil);
  QRImage4.Picture.Assign(nil);
  QRImage5.Picture.Assign(nil);
  QRImage6.Picture.Assign(nil);

  QRImage1.Picture.LoadFromFile(TBImagensIMAGEM1.Value);
  QRImage2.Picture.LoadFromFile(TBImagensIMAGEM2.Value);
  QRImage3.Picture.LoadFromFile(TBImagensIMAGEM3.Value);
  QRImage4.Picture.LoadFromFile(TBImagensIMAGEM4.Value);
  QRImage5.Picture.LoadFromFile(TBImagensIMAGEM5.Value);
  QRImage6.Picture.LoadFromFile(TBImagensIMAGEM6.Value);
end;

end.
