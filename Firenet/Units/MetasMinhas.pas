unit MetasMinhas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormMetasMinhas = class(TForm)
    ProgressBar1: TProgressBar;
    DSMetas: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    QYMetas: TFDQuery;
    TRMetas: TFDTransaction;
    QYMetasMET_CODIGO: TIntegerField;
    QYMetasMET_DTBAIXA: TDateField;
    QYMetasMET_DTFIM: TDateField;
    QYMetasMET_DTINICIO: TDateField;
    QYMetasMET_METAATINGIDA: TFMTBCDField;
    QYMetasMET_METAVALOR: TFMTBCDField;
    QYMetasMET_STATUS: TStringField;
    QYMetasMET_TOTALVENDAS: TFMTBCDField;
    QYMetasMET_VENDEDOR: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMetasMinhas: TFormMetasMinhas;

implementation

{$R *.dfm}

uses DataMod, Funcoes1;

procedure TFormMetasMinhas.FormCreate(Sender: TObject);
var MetaAtingida, TotalVendas: Extended;
begin
  QYMetas.Close;
  QYMetas.ParamByName('vendedor').AsInteger:=DM.UsuarioVendedor;
  QYMetas.Open;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select first(1) MET_CODIGO, MET_DTFIM, MET_DTINICIO, MET_METAATINGIDA, MET_METAVALOR, MET_VENDEDOR from METAS '+
    'where MET_VENDEDOR=:vendedor and MET_STATUS=''A'' order by MET_CODIGO desc');
  DM.QYAux.ParamByName('vendedor').AsInteger:=DM.UsuarioVendedor;
  DM.QYAux.Open;

  DM.QYAux2.Close;
  DM.QYAux2.SQL.Clear;
  DM.QYAux2.SQL.Add(
    'select coalesce(sum(VED_TOTALCOMISSAO),0) as TOTALCOMISSAO, coalesce(sum(VED_TOTALITENS),0) as TOTALVENDAS from VENDAS '+
    'where VED_STATUS=''F'' and VED_ENTRADASAIDA=''S'' and VED_VENDEDOR=:vendedor and VED_DTEMISSAO between :datainicial and :datafinal');
  DM.QYAux2.ParamByName('vendedor').AsInteger:=DM.UsuarioVendedor;
  DM.QYAux2.ParamByName('datainicial').AsDate:=DM.QYAux.FieldByName('MET_DTINICIO').AsDateTime;
  DM.QYAux2.ParamByName('datafinal').AsDate:=DM.QYAux.FieldByName('MET_DTFIM').AsDateTime;
  DM.QYAux2.Open;

  Label2.Caption:=DM.QYAux.FieldByName('MET_DTINICIO').AsString;
  Label4.Caption:=DM.QYAux.FieldByName('MET_DTFIM').AsString;
  Label6.Caption:=Format('%m',[DM.QYAux.FieldByName('MET_METAVALOR').AsExtended]);

  MetaAtingida:=0;
  if DM.QYAux2.FieldByName('TOTALVENDAS').AsExtended > 0 then
  begin
    MetaAtingida:=Decimais( (DM.QYAux2.FieldByName('TOTALVENDAS').AsExtended * 100) / DM.QYAux.FieldByName('MET_METAVALOR').AsExtended, 2);
  end;

  Label8.Caption:=Format('%m',[DM.QYAux2.FieldByName('TOTALVENDAS').AsExtended]);
  Label10.Caption:=MetaAtingida.ToString+' %';

  if MetaAtingida>100 then
  ProgressBar1.Max:=Round(MetaAtingida);
  ProgressBar1.Position:=Round(MetaAtingida);

  DM.QYAux.Close;
  DM.QYAux2.Close;
end;

procedure TFormMetasMinhas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
