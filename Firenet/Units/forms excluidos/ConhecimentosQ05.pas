unit ConhecimentosQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, QRPDFFilt, QRExport, IBCustomDataSet, IBQuery,
  IBDatabase, QRCtrls, QuickRpt, ExtCtrls;

type
  TFormConhecimentosQ05 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    TBCte: TClientDataSet;
    TBCteDescricao: TStringField;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBQuery1CTE_CODIGO: TIntegerField;
    IBQuery2CIN_CODIGO: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabela;
  end;

var
  FormConhecimentosQ05: TFormConhecimentosQ05;
  Total, Contador: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormConhecimentosQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormConhecimentosQ05);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
end;

procedure TFormConhecimentosQ05.CriarTabela;
begin
  TBCte.EmptyDataSet;
  TBCte.Open;
  IBQuery1.First;
  Contador:=IBQuery1CTE_CODIGO.Value-1; //numero da primeira NFe menos um.
  while not IBQuery1.Eof do
  begin
    Inc(Contador);
    if Contador<>IBQuery1CTE_CODIGO.Value then
    begin
      repeat //vai incluido os códigos até contador ficar igual ao codigo da NFe.
        //verifica se existe algum registro na tabela de nfe inutilizadas.
        IBQuery2.Close;
        IBQuery2.ParamByName('numero').AsInteger:=Contador;
        IBQuery2.Open;
        if IBQuery2.IsEmpty then //se estiver vazio é pq não foi encontrado na tabela de inutilizacoes, então inclui na tabela temporaria.
        begin
          TBCte.Insert;
          TBCteDescricao.Value:=IntToStr(Contador);
          TBCte.Post;
        end;
        Inc(Contador);
      until Contador=IBQuery1CTE_CODIGO.Value;
    end;
    IBQuery1.Next;
  end;
  IBQuery2.Close;
  TBCte.First;
end;

end.
