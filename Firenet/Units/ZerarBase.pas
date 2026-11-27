unit ZerarBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Grids, DBGrids, DBClient, Menus,
  PngBitBtn, ComCtrls, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormZerarBase = class(TForm)
    DBGrid1: TDBGrid;
    DSTabelas: TDataSource;
    BitBtn5: TPngBitBtn;
    Bevel1: TBevel;
    BitBtn2: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    DBGrid2: TDBGrid;
    TBGenerators: TClientDataSet;
    DSGenerators: TDataSource;
    PopupMenu1: TPopupMenu;
    ZerarGenerator1: TMenuItem;
    AjustarValor1: TMenuItem;
    PngBitBtn1: TPngBitBtn;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    QYTabelas: TFDQuery;
    TRTabelas: TFDTransaction;
    QYGenAux: TFDQuery;
    TRGenAux: TFDTransaction;
    QYGenerators: TFDQuery;
    TRGenerators: TFDTransaction;
    QYTabAux: TFDQuery;
    TRTabAux: TFDTransaction;
    QYTabelasRDBVIEW_BLR: TBlobField;
    QYTabelasRDBVIEW_SOURCE: TMemoField;
    QYTabelasRDBDESCRIPTION: TMemoField;
    QYTabelasRDBRELATION_ID: TSmallintField;
    QYTabelasRDBSYSTEM_FLAG: TSmallintField;
    QYTabelasRDBDBKEY_LENGTH: TSmallintField;
    QYTabelasRDBFORMAT: TSmallintField;
    QYTabelasRDBFIELD_ID: TSmallintField;
    QYTabelasRDBRELATION_NAME: TWideStringField;
    QYTabelasRDBSECURITY_CLASS: TWideStringField;
    QYTabelasRDBEXTERNAL_FILE: TStringField;
    QYTabelasRDBRUNTIME: TBlobField;
    QYTabelasRDBEXTERNAL_DESCRIPTION: TBlobField;
    QYTabelasRDBOWNER_NAME: TWideStringField;
    QYTabelasRDBDEFAULT_CLASS: TWideStringField;
    QYTabelasRDBFLAGS: TSmallintField;
    QYTabelasRDBRELATION_TYPE: TSmallintField;
    QYTabelasRDBSQL_SECURITY: TBooleanField;
    QYGeneratorsRDBGENERATOR_NAME: TWideStringField;
    QYGeneratorsRDBGENERATOR_ID: TSmallintField;
    QYGeneratorsRDBSYSTEM_FLAG: TSmallintField;
    QYGeneratorsRDBDESCRIPTION: TMemoField;
    QYGeneratorsRDBSECURITY_CLASS: TWideStringField;
    QYGeneratorsRDBOWNER_NAME: TWideStringField;
    QYGeneratorsRDBINITIAL_VALUE: TLargeintField;
    QYGeneratorsRDBGENERATOR_INCREMENT: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure AjustarValor1Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Sql(SQL: String);
  public
    { Public declarations }
  end;

var
  FormZerarBase: TFormZerarBase;

implementation

uses DataMod, DataMod2, Funcoes1;

{$R *.dfm}

procedure TFormZerarBase.FormCreate(Sender: TObject);
begin
  Label1.Caption:='';
  TBGenerators.CreateDataSet; //cria a estrutura da tabela.
  TBGenerators.IndexFieldNames:='Generator';
  TBGenerators.Open;
  DBGrid2.Columns[0].Width:=200;
  DBGrid2.Columns[1].Width:=60;
  QYTabelas.Open;
  QYGenerators.Open;
  while not QYGenerators.Eof do
  begin
    QYGenAux.SQL.Clear;
    QYGenAux.SQL.Add('select gen_id('+Trim(QYGeneratorsRDBGENERATOR_NAME.Value)+',0) as VALOR from RDB$DATABASE');
    QYGenAux.Open;
    TBGenerators.Insert;
    TBGenerators.FieldByName('Generator').AsString:=Trim(QYGeneratorsRDBGENERATOR_NAME.Value);
    TBGenerators.FieldByName('Valor').AsInteger:=QYGenAux.FieldByName('VALOR').AsInteger;
    TBGenerators.Post;
    QYGenerators.Next;
  end;
end;

procedure TFormZerarBase.BitBtn1Click(Sender: TObject);
begin
  AbortIf(
    (Trim(QYTabelasRDBRELATION_NAME.Value)='VERSAO') or
    (Trim(QYTabelasRDBRELATION_NAME.Value)='PARAMETROS') or
    (Trim(QYTabelasRDBRELATION_NAME.Value)='CAIXASALDO') or
    (Trim(QYTabelasRDBRELATION_NAME.Value)='ALIQUOTAS') or
    (Trim(QYTabelasRDBRELATION_NAME.Value)='TABPRECO') or
    (Trim(QYTabelasRDBRELATION_NAME.Value)='NOTASNSU') or
    (Trim(QYTabelasRDBRELATION_NAME.Value)='NFENSU') or
    (Trim(QYTabelasRDBRELATION_NAME.Value)='TELAS'),
    'Os dados desta tabela não podem ser excluídos.'
  );

  if MessageDlg('Eliminar os dados da tabela '+Trim(QYTabelasRDBRELATION_NAME.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYTabAux.SQL.Clear;
    QYTabAux.SQL.Add('delete from '+Trim(QYTabelasRDBRELATION_NAME.Value));
    QYTabAux.ExecSQL;
    //zera o generator tb.
    if TBGenerators.Locate('Generator','GEN_'+Trim(QYTabelasRDBRELATION_NAME.Value),[]) then
    begin
      QYGenAux.SQL.Clear;
      QYGenAux.SQL.Add('set generator '+TBGenerators.FieldByName('Generator').AsString+' to 0;');
      QYGenAux.ExecSQL;
      TBGenerators.Edit;
      TBGenerators.FieldByName('Valor').AsInteger:=0;
      TBGenerators.Post;
    end;
  end;
end;

procedure TFormZerarBase.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Zerar generator '+TBGenerators.FieldByName('Generator').AsString+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYGenAux.SQL.Clear;
    QYGenAux.SQL.Add('set generator '+TBGenerators.FieldByName('Generator').AsString+' to 0;');
    QYGenAux.ExecSQL;
    TBGenerators.Edit;
    TBGenerators.FieldByName('Valor').AsInteger:=0;
    TBGenerators.Post;
  end;
end;

procedure TFormZerarBase.AjustarValor1Click(Sender: TObject);
var S: String;
begin
  S:=InputBox('Novo Valor','Digite o valor para generator','0');
  if MessageDlg('Ajustar o valor do generator '+TBGenerators.FieldByName('Generator').AsString+' para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYGenAux.SQL.Clear;
    QYGenAux.SQL.Add('set generator '+TBGenerators.FieldByName('Generator').AsString+' to '+S+';');
    QYGenAux.ExecSQL;
    TBGenerators.Edit;
    TBGenerators.FieldByName('Valor').AsInteger:=StrToInt(S);
    TBGenerators.Post;
  end;
end;

procedure TFormZerarBase.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    BitBtn2.Click;
  end;
end;

procedure TFormZerarBase.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    BitBtn1.Click;
  end;
end;

procedure TFormZerarBase.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TFormZerarBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormZerarBase.PngBitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Este procedimento eliminará todos os dados de todas as tabelas. Deseja continuar?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if MessageDlg('Tem certeza?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
      //listagem de tabelas... ao criar uma tabela nova, atualizar esta lista.//
      //tabelas marcadas com X na frente não podem ter os dados eliminados.   //
      //                                                                      //
      // X  ACESSOS                                                           //
      // -  ACOES                                                             //
      // -  AGRUPADORES                                                       //
      // X  ALIQUOTAS                                                         //
      // -  ALMOXARIFADOS                                                     //
      // -  ASSUNTOS                                                          //
      // -  ATENDIMENTOS                                                      //
      // -  ATIVIDADES                                                        //
      // -  AVALIACOES                                                        //
      // -  AVALIACOESTIPO                                                    //
      // X  BAIRROS                                                           //
      // X  BANCOS                                                            //
      // -  BENEFICIOS                                                        //
      // -  BOLETOS                                                           //
      // -  BOLETOSITENS                                                      //
      // -  CAIXAMOV                                                          //
      // X  CAIXASALDO                                                        //
      // -  CALENDARIOS                                                       //
      // -  CHAMADAS                                                          //
      // -  CHECKLISTS                                                        //
      // -  CHECKLISTSITENS                                                   //
      // -  CHEQUES                                                           //
      // X  CIDADES                                                           //
      // -  CLASSES                                                           //
      // -  CLASSFISCAL                                                       //
      // -  CLASSIFICADOS                                                     //
      // X  CLASSTRIB                                                         //
      // -  CLIENTES                                                          //
      // -  COMANDAS                                                          //
      // -  COMANDASITENS                                                     //
      // X  COMPONENTES                                                       //
      // -  COMPRAS                                                           //
      // -  COMPRASITENS                                                      //
      // -  CONDICOES                                                         //
      // -  CONDICOESITENS                                                    //
      // -  CONSULTAS                                                         //
      // -  CONSULTASITENS                                                    //
      // -  CONTAS                                                            //
      // -  CONTASMOV                                                         //
      // -  CONTATOS                                                          //
      // -  CONTEUDOS                                                         //
      // -  CONTRATOS                                                         //
      // -  CONTRATOSPARTES                                                   //
      // -  CONVENIOS                                                         //
      // X  CREDITOPRES                                                       //
      // X  CST                                                               //
      // -  CTE                                                               //
      // X  CTECAMPOS                                                         //
      // -  CTECARGA                                                          //
      // -  CTECCE                                                            //
      // -  CTECCEITENS                                                       //
      // X  CTECODIGO                                                         //
      // -  CTEINUTILIZADOS                                                   //
      // -  CTENOTAS                                                          //
      // -  CTEVEICULOS                                                       //
      // -  CUPOM                                                             //
      // -  CUPOMITENS                                                        //
      // -  CURSOS                                                            //
      // -  DELIVERYS                                                         //
      // -  DELIVERYSITENS                                                    //
      // -  DESPESAS                                                          //
      // -  ECF                                                               //
      // -  EMAILS                                                            //
      // -  EMAILSCONTAS                                                      //
      // X  EMPRESA                                                           //
      // -  EQUIPAMENTOS                                                      //
      // X  ESTADOS                                                           //
      // -  ESTOQUE                                                           //
      // -  ETAPAS                                                            //
      // -  ETIQUETAS                                                         //
      // -  EVOLUCOES                                                         //
      // -  EXAMESTIPOS                                                       //
      // -  EXERCICIOS                                                        //
      // -  FAMILIAS                                                          //
      // -  FASES                                                             //
      // -  FCI                                                               //
      // -  FCIITENS                                                          //
      // -  FERIADOS                                                          //
      // -  FORMS                                                             //
      // -  FORNECEDORES                                                      //
      // -  FOROS                                                             //
      // -  FROTAS                                                            //
      // -  GNRE                                                              //
      // -  GRUPOS                                                            //
      // -  HORAS                                                             //
      // X  ICMS                                                              //
      // -  IMOVEIS                                                           //
      // -  IMOVEISTIPOS                                                      //
      // X  IPI                                                               //
      // X  ISS                                                               //
      // -  LOCACOES                                                          //
      // -  LOCAIS                                                            //
      // X  LOCS                                                              //
      // -  LOTES                                                             //
      // -  MAILINGS                                                          //
      // -  MANIFESTACOES                                                     //
      // -  MARCAS                                                            //
      // -  MARKUPS                                                           //
      // -  MARKUPSITENS                                                      //
      // -  MATRICULAS                                                        //
      // -  MDFE                                                              //
      // -  MDFECARREGA                                                       //
      // -  MDFEDESCARREGA                                                    //
      // -  MDFEDOCS                                                          //
      // -  MDFEMOTORISTAS                                                    //
      // -  MDFEPERCURSOS                                                     //
      // -  MEDICAMENTOS                                                      //
      // -  MEDICOES                                                          //
      // -  MENSAGENS                                                         //
      // -  MENSALIDADES                                                      //
      // -  METAS                                                             //
      // -  METASCONFIG                                                       //
      // X  MODULOS                                                           //
      // -  MOTIVOS                                                           //
      // -  MOVIMENTOS                                                        //
      // X  NATUREZAS                                                         //
      // -  NFCE                                                              //
      // -  NFCEINUTILIZADAS                                                  //
      // -  NFCEITENS                                                         //
      // -  NFCELOGS                                                          //
      // -  NFCEPAGAMENTOS                                                    //
      // -  NFE                                                               //
      // -  NFECCE                                                            //
      // X  NFECODIGO                                                         //
      // -  NFEINUTILIZADAS                                                   //
      // -  NFEITENS                                                          //
      // -  NFEITENSADICOES                                                   //
      // -  NFEREF                                                            //
      // -  NFSE                                                              //
      // X  NFSECODIGO                                                        //
      // -  NFSEITENS                                                         //
      // -  NOTAS                                                             //
      // X  NOTASCODIGO                                                       //
      // -  NOTASITENS                                                        //
      // -  OBJETOS                                                           //
      // -  ODONTOGRAMAS                                                      //
      // -  ODONTOGRAMASOPCOES                                                //
      // -  OPCIONAIS                                                         //
      // -  PAGAR                                                             //
      // X  PAISES                                                            //
      // X  PARAMETROS                                                        //
      // X  PISCOFINS                                                         //
      // -  PONTOS                                                            //
      // -  PROCESSOS                                                         //
      // -  PROCESSOSCUSTAS                                                   //
      // -  PROCESSOSHIST                                                     //
      // -  PROCESSOSPARTES                                                   //
      // -  PRODUCAO                                                          //
      // -  PRODUCAOITENS                                                     //
      // -  PRODUCAOITENSCOMP                                                 //
      // -  PRODUTOS                                                          //
      // -  PRODUTOSCODIGOS                                                   //
      // -  PRODUTOSCOMP                                                      //
      // -  PRODUTOSETAPAS                                                    //
      // -  PRODUTOSFOTOS                                                     //
      // -  PRODUTOSQTDE                                                      //
      // -  PROJETOS                                                          //
      // -  PROJETOSFASES                                                     //
      // -  PROJETOSHISTORICO                                                 //
      // -  PROJETOSITENS                                                     //
      // -  PROJETOSTIPOS                                                     //
      // -  PROMISSORIAS                                                      //
      // -  PRONTUARIOS                                                       //
      // -  RECEBER                                                           //
      // -  RECEBERITENS                                                      //
      // -  RECEITAS                                                          //
      // -  RECEITUARIOS                                                      //
      // -  RECIBOS                                                           //
      // -  REGRASFISCAIS                                                     //
      // -  REMESSAS                                                          //
      // -  REMESSASITENS                                                     //
      // X  RUAS                                                              //
      // -  SEGUROS                                                           //
      // -  SEGUROSENDOSSOS                                                   //
      // -  SEGUROSPARCELAS                                                   //
      // -  SEGUROSTIPOS                                                      //
      // -  SERVICOS                                                          //
      // -  SERVICOSCHECK                                                     //
      // -  SERVICOSHORAS                                                     //
      // -  SERVICOSITENS                                                     //
      // -  SQLS                                                              //
      // X  TABPRECO                                                          //
      // -  TAXAS                                                             //
      // X  TELAS                                                             //
      // -  TELEVENDAS                                                        //
      // -  TRIBUTOS                                                          //
      // -  TURMAS                                                            //
      // -  UNIDADES                                                          //
      // -  USUARIOS - somente os diferentes de RUNTIME                       //
      // -  VEICULOS                                                          //
      // -  VEICULOSCLIENTE                                                   //
      // -  VEICULOSVENDA                                                     //
      // -  VENDAS                                                            //
      // -  VENDASITENS                                                       //
      // -  VENDEDORES                                                        //
      // -  VENDEDORESHIST                                                    //
      // -  VENDEDORESHISTTIPOS                                               //
      // X  VERSAO                                                            //
      // -  ZAPINSTANCIAS                                                     //
      // -  ZAPMENSAGENS                                                      //
      //----------------------------------------------------------------------//
      Screen.Cursor:=crHourGlass;
      QYTabelas.Close;
      QYGenerators.Close;
      ProgressBar1.Max:=170; //corresponde a quantidade de tabelas que não estão marcadas com X na lista acima.
      ProgressBar1.Position:=0;

      ProgressBar1.StepIt;
      Label1.Caption:='Atendimentos';              Application.ProcessMessages; Sql('delete from ATENDIMENTOS;');        Sql('set generator GEN_ATENDIMENTOS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Avaliações';                Application.ProcessMessages; Sql('delete from AVALIACOES;');          Sql('set generator GEN_AVALIACOES to 0;');          ProgressBar1.StepIt;
      Label1.Caption:='Avaliações Tipos';          Application.ProcessMessages; Sql('delete from AVALIACOESTIPO;');      Sql('set generator GEN_AVALIACOESTIPO to 0;');      ProgressBar1.StepIt;
      Label1.Caption:='Benefícios Fiscais';        Application.ProcessMessages; Sql('delete from BENEFICIOS;');          {nao tem}                                           ProgressBar1.StepIt;
      Label1.Caption:='Boletos Itens';             Application.ProcessMessages; Sql('delete from BOLETOSITENS;');        Sql('set generator GEN_BOLETOSITENS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Caixa Mov';                 Application.ProcessMessages; Sql('delete from CAIXAMOV;');            Sql('set generator GEN_CAIXAMOV to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Caixa Saldo';               Application.ProcessMessages; Sql('update CAIXASALDO set CAS_SALDOATUAL=0;');
      Label1.Caption:='Chamadas';                  Application.ProcessMessages; Sql('delete from CHAMADAS;');            Sql('set generator GEN_CHAMADAS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Cheques';                   Application.ProcessMessages; Sql('delete from CHEQUES;');             Sql('set generator GEN_CHEQUES to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Classificados';             Application.ProcessMessages; Sql('delete from CLASSIFICADOS;');       Sql('set generator GEN_CLASSIFICADOS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Classificação Fiscal';      Application.ProcessMessages; Sql('delete from CLASSFISCAL;');         {nao tem.}                                          ProgressBar1.StepIt;
      Label1.Caption:='Comandas Itens';            Application.ProcessMessages; Sql('delete from COMANDASITENS;');       Sql('set generator GEN_COMANDASITENS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Comandas';                  Application.ProcessMessages; Sql('delete from COMANDAS;');            Sql('set generator GEN_COMANDAS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Compras Itens';             Application.ProcessMessages; Sql('delete from COMPRASITENS;');        Sql('set generator GEN_COMPRASITENS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Compras';                   Application.ProcessMessages; Sql('delete from COMPRAS;');             Sql('set generator GEN_COMPRAS to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Condições Itens';           Application.ProcessMessages; Sql('delete from CONDICOESITENS;');      Sql('set generator GEN_CONDICOESITENS to 0;');      ProgressBar1.StepIt;
      Label1.Caption:='ConsultasItens';            Application.ProcessMessages; Sql('delete from CONSULTASITENS;');      Sql('set generator GEN_CONSULTASITENS to 0;');      ProgressBar1.StepIt;
      Label1.Caption:='Consultas';                 Application.ProcessMessages; Sql('delete from CONSULTAS;');           Sql('set generator GEN_CONSULTAS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Contas Mov';                Application.ProcessMessages; Sql('delete from CONTASMOV;');           Sql('set generator GEN_CONTASMOV to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Conteudos';                 Application.ProcessMessages; Sql('delete from CONTEUDOS;');           Sql('set generator GEN_CONTEUDOS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Contratos Partes';          Application.ProcessMessages; Sql('delete from CONTRATOSPARTES;');     Sql('set generator GEN_CONTRATOSPARTES to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='Contratos';                 Application.ProcessMessages; Sql('delete from CONTRATOS;');           Sql('set generator GEN_CONTRATOS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Convenios';                 Application.ProcessMessages; Sql('delete from CONVENIOS;');           Sql('set generator GEN_CONVENIOS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Conhecimentos Carga';       Application.ProcessMessages; Sql('delete from CTECARGA;');            Sql('set generator GEN_CTECARGA to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Conhecimentos CCE Itens';   Application.ProcessMessages; Sql('delete from CTECCEITENS;');         Sql('set generator GEN_CTECCEITENS to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='Conhecimentos CCE';         Application.ProcessMessages; Sql('delete from CTECCE;');              Sql('set generator GEN_CTECCE to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Conhecimentos Inut.';       Application.ProcessMessages; Sql('delete from CTEINUTILIZADOS;');     Sql('set generator GEN_CTEINUTILIZADOS to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='Conhecimentos Notas';       Application.ProcessMessages; Sql('delete from CTENOTAS;');            Sql('set generator GEN_CTENOTAS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Conhecimentos Veic.';       Application.ProcessMessages; Sql('delete from CTEVEICULOS;');         Sql('set generator GEN_CTEVEICULOS to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='Conhecimentos';             Application.ProcessMessages; Sql('delete from CTE;');                 Sql('set generator GEN_CTE to 900000;');            Sql('update CTECODIGO set CTE_CODIGO=0;'); ProgressBar1.StepIt;
      Label1.Caption:='Cupom Itens';               Application.ProcessMessages; Sql('delete from CUPOMITENS;');          Sql('set generator GEN_CUPOMITENS to 0;');          ProgressBar1.StepIt;
      Label1.Caption:='Cupom';                     Application.ProcessMessages; Sql('delete from CUPOM;');               Sql('set generator GEN_CUPOM to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Deliverys Itens';           Application.ProcessMessages; Sql('delete from DELIVERYSITENS;');      Sql('set generator GEN_DELIVERYSITENS to 0;');      ProgressBar1.StepIt;
      Label1.Caption:='Deliverys';                 Application.ProcessMessages; Sql('delete from DELIVERYS;');           Sql('set generator GEN_DELIVERYS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Impressoras ECF';           Application.ProcessMessages; Sql('delete from ECF;');                 Sql('set generator GEN_ECF to 0;');                 ProgressBar1.StepIt;
      Label1.Caption:='Emails';                    Application.ProcessMessages; Sql('delete from EMAILS;');              Sql('set generator GEN_EMAILS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Estoque';                   Application.ProcessMessages; Sql('delete from ESTOQUE;');             Sql('set generator GEN_ESTOQUE to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Etiquetas';                 Application.ProcessMessages; Sql('delete from ETIQUETAS;');           Sql('set generator GEN_ETIQUETAS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Evoluções';                 Application.ProcessMessages; Sql('delete from EVOLUCOES;');           Sql('set generator GEN_EVOLUCOES to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Exames Tipos';              Application.ProcessMessages; Sql('delete from EXAMESTIPOS;');         Sql('set generator GEN_EXAMESTIPOS to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='Exercícios';                Application.ProcessMessages; Sql('delete from EXERCICIOS;');          Sql('set generator GEN_EXERCICIOS to 0;');          ProgressBar1.StepIt;
      Label1.Caption:='Feriados';                  Application.ProcessMessages; Sql('delete from FERIADOS;');            {nao tem.}                                          ProgressBar1.StepIt;
      Label1.Caption:='Forms';                     Application.ProcessMessages; Sql('delete from FORMS;');               Sql('set generator GEN_FORMS to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Frotas';                    Application.ProcessMessages; Sql('delete from FROTAS;');              Sql('set generator GEN_FROTAS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='GNRE';                      Application.ProcessMessages; Sql('delete from GNRE;');                Sql('set generator GEN_GNRE to 0;');                ProgressBar1.StepIt;
      Label1.Caption:='Horas';                     Application.ProcessMessages; Sql('delete from HORAS;');               Sql('set generator GEN_HORAS to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Imoveis';                   Application.ProcessMessages; Sql('delete from IMOVEIS;');             Sql('set generator GEN_IMOVEIS to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Imoveis Tipos';             Application.ProcessMessages; Sql('delete from IMOVEISTIPOS;');        Sql('set generator GEN_IMOVEISTIPO to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='Locações';                  Application.ProcessMessages; Sql('delete from LOCACOES;');            Sql('set generator GEN_LOCACOES to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Lotes';                     Application.ProcessMessages; Sql('delete from LOTES;');               Sql('set generator GEN_LOTES to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Manifestações';             Application.ProcessMessages; Sql('delete from MANIFESTACOES;');       Sql('set generator GEN_MANIFESTACOES to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Markups Itens';             Application.ProcessMessages; Sql('delete from MARKUPSITENS;');        Sql('set generator GEN_MARKUPSITENS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Markups';                   Application.ProcessMessages; Sql('delete from MARKUPS;');             Sql('set generator GEN_MARKUPS to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Matrículas';                Application.ProcessMessages; Sql('delete from MATRICULAS;');          Sql('set generator GEN_MATRICULAS to 0;');          ProgressBar1.StepIt;
      Label1.Caption:='MDFe Carregamnetos';        Application.ProcessMessages; Sql('delete from MDFECARREGA;');         Sql('set generator GEN_MDFECARREGA to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='MDFe Descarregamnetos';     Application.ProcessMessages; Sql('delete from MDFEDESCARREGA;');      Sql('set generator GEN_MDFEDESCARREGA to 0;');      ProgressBar1.StepIt;
      Label1.Caption:='MDFe Documentos';           Application.ProcessMessages; Sql('delete from MDFEDOCS;');            Sql('set generator GEN_MDFEDOCS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='MDFe Motoristas';           Application.ProcessMessages; Sql('delete from MDFEMOTORISTAS;');      Sql('set generator GEN_MDFEMOTORISTAS to 0;');      ProgressBar1.StepIt;
      Label1.Caption:='MDFe Percursos';            Application.ProcessMessages; Sql('delete from MDFEPERCURSOS;');       Sql('set generator GEN_MDFEPERCURSOS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='MDFe';                      Application.ProcessMessages; Sql('delete from MDFE;');                Sql('set generator GEN_MDFE to 0;');                ProgressBar1.StepIt;
      Label1.Caption:='Medições';                  Application.ProcessMessages; Sql('delete from MEDICOES;');            Sql('set generator GEN_MEDICOES to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Mensagens';                 Application.ProcessMessages; Sql('delete from MENSAGENS;');           Sql('set generator GEN_MENSAGENS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Mensalidades';              Application.ProcessMessages; Sql('delete from MENSALIDADES;');        Sql('set generator GEN_MENSALIDADES to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Metas Config';              Application.ProcessMessages; Sql('delete from METASCONFIG;');         Sql('set generator GEN_METASCONFIG to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='Metas';                     Application.ProcessMessages; Sql('delete from METAS;');               Sql('set generator GEN_METAS to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Movimentos';                Application.ProcessMessages; Sql('delete from MOVIMENTOS;');          Sql('set generator GEN_MOVIMENTOS to 0;');          ProgressBar1.StepIt;
      Label1.Caption:='NFCe Pagamentos';           Application.ProcessMessages; Sql('delete from NFCEPAGAMENTOS;');      Sql('set generator GEN_NFCEPAGAMENTOS to 0;');      ProgressBar1.StepIt;
      Label1.Caption:='NFCe Inutilizadas';         Application.ProcessMessages; Sql('delete from NFCEINUTILIZADAS;');    Sql('set generator GEN_NFCEINUTILIZADAS to 0;');    ProgressBar1.StepIt;
      Label1.Caption:='NFCe Itens';                Application.ProcessMessages; Sql('delete from NFCEITENS;');           Sql('set generator GEN_NFCEITENS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='NFCe Logs';                 Application.ProcessMessages; Sql('delete from NFCELOGS;');            Sql('set generator GEN_NFCELOGS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='NFCe';                      Application.ProcessMessages; Sql('delete from NFCE;');                Sql('set generator GEN_NFCE to 0;');                ProgressBar1.StepIt;
      Label1.Caption:='NFe CCe';                   Application.ProcessMessages; Sql('delete from NFECCE;');              Sql('set generator GEN_NFECCE to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='NFe Inutilizadas';          Application.ProcessMessages; Sql('delete from NFEINUTILIZADAS;');     Sql('set generator GEN_NFEINUTILIZADAS to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='NFe Itens Adicoes';         Application.ProcessMessages; Sql('delete from NFEITENSADICOES;');     Sql('set generator GEN_NFEITENSADICOES to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='NFe Itens';                 Application.ProcessMessages; Sql('delete from NFEITENS;');            Sql('set generator GEN_NFEITENS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='NFe Ref';                   Application.ProcessMessages; Sql('delete from NFEREF;');              Sql('set generator GEN_NFEREF to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='NFe';                       Application.ProcessMessages; Sql('delete from NFE;');                 Sql('set generator GEN_NFE to 900000;');            Sql('update NFECODIGO set NFE_CODIGO=0;'); ProgressBar1.StepIt;
      Label1.Caption:='NFSe Itens';                Application.ProcessMessages; Sql('delete from NFSEITENS;');           Sql('set generator GEN_NFSEITENS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='NFSe';                      Application.ProcessMessages; Sql('delete from NFSE;');                Sql('set generator GEN_NFSE to 0;');                Sql('update NFSECODIGO set NFS_CODIGO=0;'); ProgressBar1.StepIt;
      Label1.Caption:='Notas Itens';               Application.ProcessMessages; Sql('delete from NOTASITENS;');          Sql('set generator GEN_NOTASITENS to 0;');          ProgressBar1.StepIt;
      Label1.Caption:='Notas';                     Application.ProcessMessages; Sql('delete from NOTAS;');               Sql('set generator GEN_NOTAS to 900000;');          Sql('update NOTASCODIGO set NOT_CODIGO=0;'); ProgressBar1.StepIt;
      Label1.Caption:='Objetos';                   Application.ProcessMessages; Sql('delete from OBJETOS;');             Sql('set generator GEN_OBJETOS to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Odontogramas';              Application.ProcessMessages; Sql('delete from ODONTOGRAMAS;');        Sql('set generator GEN_ODONTOGRAMAS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Odontogramas Opções';       Application.ProcessMessages; Sql('delete from ODONTOGRAMASOPCOES;');  Sql('set generator GEN_ODONTOGRAMASOPCOES to 0;');  ProgressBar1.StepIt;
      Label1.Caption:='Opcionais';                 Application.ProcessMessages; Sql('delete from OPCIONAIS;');           Sql('set generator GEN_OPCIONAIS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Pagar';                     Application.ProcessMessages; Sql('delete from PAGAR;');               Sql('set generator GEN_PAGAR to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Pontos';                    Application.ProcessMessages; Sql('delete from PONTOS;');              Sql('set generator GEN_PONTOS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Processos Custas';          Application.ProcessMessages; Sql('delete from PROCESSOSCUSTAS;');     Sql('set generator GEN_PROCESSOSCUSTAS to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='Processos Histórico';       Application.ProcessMessages; Sql('delete from PROCESSOSHIST;');       Sql('set generator GEN_PROCESSOSHIST to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Processos Partes';          Application.ProcessMessages; Sql('delete from PROCESSOSPARTES;');     Sql('set generator GEN_PROCESSOSPARTES to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='Processos';                 Application.ProcessMessages; Sql('delete from PROCESSOS;');           Sql('set generator GEN_PROCESSOS to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Produção Itens Comp.';      Application.ProcessMessages; Sql('delete from PRODUCAOITENSCOMP;');   Sql('set generator GEN_PRODUCAOITENSCOMP to 0;');   ProgressBar1.StepIt;
      Label1.Caption:='Produção Itens';            Application.ProcessMessages; Sql('delete from PRODUCAOITENS;');       Sql('set generator GEN_PRODUCAOITENS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Produção';                  Application.ProcessMessages; Sql('delete from PRODUCAO;');            Sql('set generator GEN_PRODUCAO to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Produtos Codigos';          Application.ProcessMessages; Sql('delete from PRODUTOSCODIGOS;');     Sql('set generator GEN_PRODUTOSCODIGOS to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='Produtos Composicoes';      Application.ProcessMessages; Sql('delete from PRODUTOSCOMP;');        Sql('set generator GEN_PRODUTOSCOMP to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Produtos Fotos';            Application.ProcessMessages; Sql('delete from PRODUTOSFOTOS;');       Sql('set generator GEN_PRODUTOSFOTOS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Produtos Etapas';           Application.ProcessMessages; Sql('delete from PRODUTOSETAPAS;');      Sql('set generator GEN_PRODUTOSETAPAS to 0;');      ProgressBar1.StepIt;
      Label1.Caption:='Produtos Quantidade';       Application.ProcessMessages; Sql('delete from PRODUTOSQTDE;');        {nao tem.}                                          ProgressBar1.StepIt;
      Label1.Caption:='Produtos FCI Itens';        Application.ProcessMessages; Sql('delete from FCIITENS;');            Sql('set generator GEN_FCIITENS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Produtos FCI';              Application.ProcessMessages; Sql('delete from FCI;');                 Sql('set generator GEN_FCI to 0;');                 ProgressBar1.StepIt;
      Label1.Caption:='Projetos Fases';            Application.ProcessMessages; Sql('delete from PROJETOSFASES;');       Sql('set generator GEN_PROJETOSFASES to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Projetos Históricos';       Application.ProcessMessages; Sql('delete from PROJETOSHISTORICO;');   Sql('set generator GEN_PROJETOSHISTORICO to 0;');   ProgressBar1.StepIt;
      Label1.Caption:='Projetos Itens';            Application.ProcessMessages; Sql('delete from PROJETOSITENS;');       Sql('set generator GEN_PROJETOSITENS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Projetos';                  Application.ProcessMessages; Sql('delete from PROJETOS;');            Sql('set generator GEN_PROJETOS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Projetos Tipos';            Application.ProcessMessages; Sql('delete from PROJETOSTIPOS;');       Sql('set generator GEN_PROJETOSTIPOS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Promissórias';              Application.ProcessMessages; Sql('delete from PROMISSORIAS;');        Sql('set generator GEN_PROMISSORIAS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Prontuários';               Application.ProcessMessages; Sql('delete from PRONTUARIOS;');         Sql('set generator GEN_PRONTUARIOS to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='Receber Itens';             Application.ProcessMessages; Sql('delete from RECEBERITENS;');        Sql('set generator GEN_RECEBERITENS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Receber';                   Application.ProcessMessages; Sql('delete from RECEBER;');             Sql('set generator GEN_RECEBER to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Receitas';                  Application.ProcessMessages; Sql('delete from RECEITAS;');            Sql('set generator GEN_RECEITAS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Receituários';              Application.ProcessMessages; Sql('delete from RECEITUARIOS;');        Sql('set generator GEN_RECEITUARIOS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Recibos';                   Application.ProcessMessages; Sql('delete from RECIBOS;');             Sql('set generator GEN_RECIBOS to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Remessas Itens';            Application.ProcessMessages; Sql('delete from REMESSASITENS;');       Sql('set generator GEN_REMESSASITENS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Remessas';                  Application.ProcessMessages; Sql('delete from REMESSAS;');            Sql('set generator GEN_REMESSAS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Seguros Endossos';          Application.ProcessMessages; Sql('delete from SEGUROSENDOSSOS;');     Sql('set generator GEN_SEGUROSENDOSSOS to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='Seguros Parcelas';          Application.ProcessMessages; Sql('delete from SEGUROSPARCELAS;');     Sql('set generator GEN_SEGUROSPARCELAS to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='Seguros';                   Application.ProcessMessages; Sql('delete from SEGUROS;');             Sql('set generator GEN_SEGUROS to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Seguros Tipos';             Application.ProcessMessages; Sql('delete from SEGUROSTIPOS;');        Sql('set generator GEN_SEGUROSTIPOS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Serviços Itens';            Application.ProcessMessages; Sql('delete from SERVICOSITENS;');       Sql('set generator GEN_SERVICOSITENS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Serviços Horas';            Application.ProcessMessages; Sql('delete from SERVICOSHORAS;');       Sql('set generator GEN_SERVICOSHORAS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Serviços Checks';           Application.ProcessMessages; Sql('delete from SERVICOSCHECK;');       Sql('set generator GEN_SERVICOSCHECK to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Serviços';                  Application.ProcessMessages; Sql('delete from SERVICOS;');            Sql('set generator GEN_SERVICOS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Sqls';                      Application.ProcessMessages; Sql('delete from SQLS;');                Sql('set generator GEN_SQLS to 0;');                ProgressBar1.StepIt;
      Label1.Caption:='Televendas';                Application.ProcessMessages; Sql('delete from TELEVENDAS;');          Sql('set generator GEN_TELEVENDAS to 0;');          ProgressBar1.StepIt;
      Label1.Caption:='Usuários';                  Application.ProcessMessages; Sql('delete from USUARIOS;');            Sql('set generator GEN_USUARIOS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Veiculos Cliente';          Application.ProcessMessages; Sql('delete from VEICULOSCLIENTE;');     Sql('set generator GEN_VEICULOSCLIENTE to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='Veiculos Venda';            Application.ProcessMessages; Sql('delete from VEICULOSVENDA;');       Sql('set generator GEN_VEICULOSVENDA to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Veiculos';                  Application.ProcessMessages; Sql('delete from VEICULOS;');            Sql('set generator GEN_VEICULOS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Vendas Itens';              Application.ProcessMessages; Sql('delete from VENDASITENS;');         Sql('set generator GEN_VENDASITENS to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='Vendas';                    Application.ProcessMessages; Sql('delete from VENDAS;');              Sql('set generator GEN_VENDAS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Zap Mensagens';             Application.ProcessMessages; Sql('delete from ZAPMENSAGENS;');        Sql('set generator GEN_ZAPMENSAGENS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Zap Instancias';            Application.ProcessMessages; Sql('delete from ZAPINSTANCIAS;');       Sql('set generator GEN_ZAPINSTANCIAS to 0;');       ProgressBar1.StepIt;

      Label1.Caption:='Ações Tipos';               Application.ProcessMessages; Sql('delete from ACOES;');               Sql('set generator GEN_ACOES to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Almoxarifados';             Application.ProcessMessages; Sql('delete from ALMOXARIFADOS;');       Sql('set generator GEN_ALMOXARIFADOS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Assuntos';                  Application.ProcessMessages; Sql('delete from ASSUNTOS;');            Sql('set generator GEN_ASSUNTOS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Boletos';                   Application.ProcessMessages; Sql('delete from BOLETOS;');             Sql('set generator GEN_BOLETOS to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Calendários';               Application.ProcessMessages; Sql('delete from CALENDARIOS;');         Sql('set generator GEN_CALENDARIOS to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='Checklists Itens';          Application.ProcessMessages; Sql('delete from CHECKLISTSITENS;');     Sql('set generator GEN_CHECKLISTSITENS to 0;');     ProgressBar1.StepIt;
      Label1.Caption:='Checklists';                Application.ProcessMessages; Sql('delete from CHECKLISTS;');          Sql('set generator GEN_CHECKLISTS to 0;');          ProgressBar1.StepIt;
      Label1.Caption:='Classes';                   Application.ProcessMessages; Sql('delete from CLASSES;');             Sql('set generator GEN_CLASSES to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Contatos';                  Application.ProcessMessages; Sql('delete from CONTATOS;');            Sql('set generator GEN_CONTATOS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Equipamentos';              Application.ProcessMessages; Sql('delete from EQUIPAMENTOS');         Sql('set generator GEN_EQUIPAMENTOS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Etapas';                    Application.ProcessMessages; Sql('delete from ETAPAS;');              Sql('set generator GEN_ETAPAS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Clientes';                  Application.ProcessMessages; Sql('delete from CLIENTES;');            Sql('set generator GEN_CLIENTES to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Condições';                 Application.ProcessMessages; Sql('delete from CONDICOES;');           Sql('set generator GEN_CONDICOES to 0;');           ProgressBar1.StepIt;
      Label1.Caption:='Contas';                    Application.ProcessMessages; Sql('delete from CONTAS;');              Sql('set generator GEN_CONTAS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Despesas';                  Application.ProcessMessages; Sql('delete from DESPESAS;');            Sql('set generator GEN_DESPESAS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Fases';                     Application.ProcessMessages; Sql('delete from FASES;');               Sql('set generator GEN_FASES to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Foros';                     Application.ProcessMessages; Sql('delete from FOROS;');               Sql('set generator GEN_FOROS to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Locais';                    Application.ProcessMessages; Sql('delete from LOCAIS;');              Sql('set generator GEN_LOCAIS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Mailings';                  Application.ProcessMessages; Sql('delete from MAILINGS;');            Sql('set generator GEN_MAILINGS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Medicamentos';              Application.ProcessMessages; Sql('delete from MEDICAMENTOS;');        Sql('set generator GEN_MEDICAMENTOS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Motivos';                   Application.ProcessMessages; Sql('delete from MOTIVOS;');             Sql('set generator GEN_MOTIVOS to 0;');             ProgressBar1.StepIt;
      Label1.Caption:='Produtos';                  Application.ProcessMessages; Sql('delete from PRODUTOS;');            Sql('set generator GEN_PRODUTOS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Regras Fiscais';            Application.ProcessMessages; Sql('delete from REGRASFISCAIS;');       Sql('set generator GEN_REGRASFISCAIS to 0;');       ProgressBar1.StepIt;
      Label1.Caption:='Taxas';                     Application.ProcessMessages; Sql('delete from TAXAS;');               Sql('set generator GEN_TAXAS to 0;');               ProgressBar1.StepIt;
      Label1.Caption:='Turmas';                    Application.ProcessMessages; Sql('delete from TURMAS;');              Sql('set generator GEN_TURMAS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Unidades';                  Application.ProcessMessages; Sql('delete from UNIDADES;');            {nao tem.}                                          ProgressBar1.StepIt;
      Label1.Caption:='Vendedores Histórico';      Application.ProcessMessages; Sql('delete from VENDEDORESHIST;');      Sql('set generator GEN_VENDEDORESHIST to 0;');      ProgressBar1.StepIt;
      Label1.Caption:='Vendedores Tipo Histórico'; Application.ProcessMessages; Sql('delete from VENDEDORESHISTTIPOS;'); Sql('set generator GEN_VENDEDORESHISTTIPOS to 0;'); ProgressBar1.StepIt;
      Label1.Caption:='Vendedores';                Application.ProcessMessages; Sql('delete from VENDEDORES;');          Sql('set generator GEN_VENDEDORES to 0;');          ProgressBar1.StepIt;

      Label1.Caption:='Agrupadores';               Application.ProcessMessages; Sql('delete from AGRUPADORES;');         Sql('set generator GEN_AGRUPADORES to 0;');         ProgressBar1.StepIt;
      Label1.Caption:='Atividades';                Application.ProcessMessages; Sql('delete from ATIVIDADES;');          Sql('set generator GEN_ATIVIDADES to 0;');          ProgressBar1.StepIt;
      Label1.Caption:='Cursos';                    Application.ProcessMessages; Sql('delete from CURSOS;');              Sql('set generator GEN_CURSOS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Emails Contas';             Application.ProcessMessages; Sql('delete from EMAILSCONTAS;');        Sql('set generator GEN_EMAILSCONTAS to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Familias';                  Application.ProcessMessages; Sql('delete from FAMILIAS;');            Sql('set generator GEN_FAMILIAS to 0;');            ProgressBar1.StepIt;
      Label1.Caption:='Fornecedores';              Application.ProcessMessages; Sql('delete from FORNECEDORES;');        Sql('set generator GEN_FORNECEDORES to 0;');        ProgressBar1.StepIt;
      Label1.Caption:='Grupos';                    Application.ProcessMessages; Sql('delete from GRUPOS;');              Sql('set generator GEN_GRUPOS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Marcas';                    Application.ProcessMessages; Sql('delete from MARCAS;');              Sql('set generator GEN_MARCAS to 0;');              ProgressBar1.StepIt;
      Label1.Caption:='Tributos';                  Application.ProcessMessages; Sql('delete from TRIBUTOS;');            Sql('set generator GEN_TRIBUTOS to 0;');            ProgressBar1.StepIt;

      Label1.Caption:='';
      ProgressBar1.Position:=0;
      DM.FDConnection1.Connected:=True;
      DM.TBVersao.Open;
      DM.AbrirTabelas;

      DM.TBParametros.Edit;
      DM.TBParametrosPAR_ABRIRLOCPRODUTOS.Value:='S';
      DM.TBParametrosPAR_ACRESCIMOPOR.Value:='P';
      DM.TBParametrosPAR_ACRESCIMOPORC.Value:=0;
      DM.TBParametrosPAR_ACRESCIMOVALOR.Value:=0;
      DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value:=1;
      DM.TBParametrosPAR_APIBRASILDEVICETOKEN.Clear;
      DM.TBParametrosPAR_APIBRASILLOGIN.Clear;
      DM.TBParametrosPAR_APIBRASILPLACA.Value:='https://cluster.apigratis.com/api/v2';
      DM.TBParametrosPAR_APIBRASILSENHA.Clear;
      DM.TBParametrosPAR_ATUALIZADOR.Value:='\\servidor\atualizacoes\atualizador.exe';
      DM.TBParametrosPAR_AULASFERIADOS.Value:='N';
      DM.TBParametrosPAR_BAIRROPADRAO.Value:='CENTRO';
      DM.TBParametrosPAR_BLOQUEARCLIENTEDIAS.Value:=0;
      DM.TBParametrosPAR_BOLETOPADRAO.Value:='BOLETO COM RECIBO DE ENTREGA';
      DM.TBParametrosPAR_BOLETOSEMAILASSUNTO.Value:=6;
      DM.TBParametrosPAR_BOLETOSZAPASSUNTO.Value:=16;
      DM.TBParametrosPAR_CALCULARPESOLIQUIDO.Value:='N';
      DM.TBParametrosPAR_CALCULARPONTUACAO.Value:='N';
      DM.TBParametrosPAR_CFOPFORAPADRAO.Value:=6102;
      DM.TBParametrosPAR_CFOPPADRAO.Value:=5102;
      DM.TBParametrosPAR_CHATHABILITADO.Value:='S';
      DM.TBParametrosPAR_CIDADEPADRAO.Value:='JARAGUA DO SUL';
      DM.TBParametrosPAR_CLASSFISCALPADRAO.Value:=12345678;
      DM.TBParametrosPAR_CLIENTESANEXOSEMAIL.Value:=19;
      DM.TBParametrosPAR_CLI_ATIVIDADE.Value:=1;
      DM.TBParametrosPAR_CLI_BLOQUEARVENDA.Value:='N';
      DM.TBParametrosPAR_CLI_MAILING.Value:=1;
      DM.TBParametrosPAR_CLI_TELEVENDA.Value:=1;
      DM.TBParametrosPAR_CLI_VENDEDOR.Value:=1;
      DM.TBParametrosPAR_CNPJCERTIFICADO.Clear;
      DM.TBParametrosPAR_COBRARDESCONTO.Value:='N';
      DM.TBParametrosPAR_COMANDASCLIENTE.Value:=1;
      DM.TBParametrosPAR_COMANDASLF.Value:=3;
      DM.TBParametrosPAR_COMANDASLI.Value:=2;
      DM.TBParametrosPAR_COMANDASQL.Value:=15;
      DM.TBParametrosPAR_COMANDASRP.Value:='Obrigado pela preferencia!!!';
      DM.TBParametrosPAR_COMISSAOPOR.Value:='V';
      DM.TBParametrosPAR_COMPRAEMAILASSUNTO.Value:=2;
      DM.TBParametrosPAR_COMPRASEMAILBCC.Clear;
      DM.TBParametrosPAR_CONCEITOAFINAL.Value:=95.99;
      DM.TBParametrosPAR_CONCEITOAINICIAL.Value:=95;
      DM.TBParametrosPAR_CONCEITOAMINUSFINAL.Value:=94.99;
      DM.TBParametrosPAR_CONCEITOAMINUSINICIAL.Value:=90;
      DM.TBParametrosPAR_CONCEITOAPLUSFINAL.Value:=100;
      DM.TBParametrosPAR_CONCEITOAPLUSINICIAL.Value:=96;
      DM.TBParametrosPAR_CONCEITOBFINAL.Value:=85.99;
      DM.TBParametrosPAR_CONCEITOBINICIAL.Value:=85;
      DM.TBParametrosPAR_CONCEITOBMINUSFINAL.Value:=84.99;
      DM.TBParametrosPAR_CONCEITOBMINUSINICIAL.Value:=80;
      DM.TBParametrosPAR_CONCEITOBPLUSFINAL.Value:=89.99;
      DM.TBParametrosPAR_CONCEITOBPLUSINICIAL.Value:=86;
      DM.TBParametrosPAR_CONCEITOCFINAL.Value:=75.99;
      DM.TBParametrosPAR_CONCEITOCINICIAL.Value:=75;
      DM.TBParametrosPAR_CONCEITOCMINUSFINAL.Value:=74.99;
      DM.TBParametrosPAR_CONCEITOCMINUSINICIAL.Value:=70;
      DM.TBParametrosPAR_CONCEITOCPLUSFINAL.Value:=79.99;
      DM.TBParametrosPAR_CONCEITOCPLUSINICIAL.Value:=76;
      DM.TBParametrosPAR_CONCEITODFINAL.Value:=65.99;
      DM.TBParametrosPAR_CONCEITODINICIAL.Value:=65;
      DM.TBParametrosPAR_CONCEITODMINUSFINAL.Value:=64.99;
      DM.TBParametrosPAR_CONCEITODMINUSINICIAL.Value:=60;
      DM.TBParametrosPAR_CONCEITODPLUSFINAL.Value:=69.99;
      DM.TBParametrosPAR_CONCEITODPLUSINICIAL.Value:=66;
      DM.TBParametrosPAR_CONCEITOEFINAL.Value:=59.99;
      DM.TBParametrosPAR_CONCEITOEINICIAL.Value:=0;
      DM.TBParametrosPAR_CONDICAOPADRAO.Value:=1;
      DM.TBParametrosPAR_CONSULTASANEXOSEMAIL.Value:=11;
      DM.TBParametrosPAR_CONTALOCALPADRAO.Value:=1;
      DM.TBParametrosPAR_CONTAPADRAO.Value:=1;
      DM.TBParametrosPAR_CORTEPAPEL.Value:='29,86,1';
      DM.TBParametrosPAR_COTACAOPONTOS.Value:=1;
      DM.TBParametrosPAR_CREDITOICMSSN.Value:=0;
      DM.TBParametrosPAR_CSRT.Clear;
      DM.TBParametrosPAR_CSRTID.Clear;
      DM.TBParametrosPAR_CSTCOFINSPADRAO.Value:=49;
      DM.TBParametrosPAR_CSTICMSPADRAO.Value:=101;
      DM.TBParametrosPAR_CSTIPIPADRAO.Value:=99;
      DM.TBParametrosPAR_CSTPISPADRAO.Value:=49;
      DM.TBParametrosPAR_CTE_CSTICMS.Value:=1;
      DM.TBParametrosPAR_CTE_VEICULO.Value:=1;
      DM.TBParametrosPAR_CTEALIQTRIBUTOS.Value:=20;
      DM.TBParametrosPAR_CTECCEEMAILASSUNTO.Value:=8;
      DM.TBParametrosPAR_CTEEMAILASSUNTO.Value:=5;
      DM.TBParametrosPAR_CTEEMAILSISTEMA.Value:='S';
      DM.TBParametrosPAR_CTEMODELO.Value:=57;
      DM.TBParametrosPAR_CTESERIE.Value:=1;
      DM.TBParametrosPAR_CTEVISUALIZARDACTE.Value:='S';
      DM.TBParametrosPAR_DDDPADRAO.Value:='(047)';
      DM.TBParametrosPAR_DESCMAXPADRAO.Value:=100;
      DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value:='S';
      DM.TBParametrosPAR_DESPESAPADRAO.Value:=1;
      DM.TBParametrosPAR_DIAPREFERENCIAL01.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL02.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL03.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL04.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL05.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL06.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL07.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL08.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL09.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL10.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL11.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL12.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL13.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL14.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL15.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL16.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL17.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL18.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL19.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL20.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL21.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL22.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL23.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL24.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL25.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL26.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL27.Value:='S';
      DM.TBParametrosPAR_DIAPREFERENCIAL28.Value:='S';
      DM.TBParametrosPAR_ENQUADRAMENTOIPI.Value:=999;
      DM.TBParametrosPAR_ESPECIEPADRAO.Clear;
      DM.TBParametrosPAR_ESTADOPADRAO.Value:='SANTA CATARINA';
      DM.TBParametrosPAR_ESTOQUEESPADRAO.Value:='S';
      DM.TBParametrosPAR_ETIQUETAEMBALAGEM.Value:=1;
      DM.TBParametrosPAR_ETIQUETAMODELO1.Value:=2;
      DM.TBParametrosPAR_EXIBIRTELARESUMO.Value:='S';
      DM.TBParametrosPAR_EXPEDIDOPORVENDEDOR.Value:='S';
      DM.TBParametrosPAR_EXPEDIDOR.Value:=1;
      DM.TBParametrosPAR_FAMILIACURSOS.Value:=1;
      DM.TBParametrosPAR_FAMILIAMATERIAIS.Value:=1;
      DM.TBParametrosPAR_FORNECEDORESANEXOSEMAIL.Value:=10;
      DM.TBParametrosPAR_FRETEPORCONTA.Value:='0 - EMITENTE';
      DM.TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value:='N';
      DM.TBParametrosPAR_FUSOHORARIO.Value:='-03:00';
      DM.TBParametrosPAR_GNRECONVENIO.Value:='123';
      DM.TBParametrosPAR_GNRERECEITA.Value:='100099 - ICMS SUBSTITUICAO TRIBUTARIA POR OPERACAO';
      DM.TBParametrosPAR_GNRESCHEMAS.Value:='\\servidor\arquivos\gnre\schemas';
      DM.TBParametrosPAR_HIGHHEIGHT.Value:=2000;
      DM.TBParametrosPAR_HIGHWIDTH.Value:=2000;
      DM.TBParametrosPAR_HORAAULA.Value:='01:10';
      DM.TBParametrosPAR_HRCOMERCIALFIM.Value:=StrToTime('18:00');
      DM.TBParametrosPAR_HRCOMERCIALINICIO.Value:=StrToTime('08:00');
      DM.TBParametrosPAR_IDENTIFICACAOSISTEMA.Value:='IDENTIFICACAO SISTEMA';
      DM.TBParametrosPAR_IMPRIMIRCANHOTOPEDIDO.Value:='S';
      DM.TBParametrosPAR_IMPRIMIRCONDICAO.Value:='N';
      DM.TBParametrosPAR_IMPRIMIRLOGOTIPO.Value:='S';
      DM.TBParametrosPAR_IMPRIMIRNOMEFANTASIA.Value:='N';
      DM.TBParametrosPAR_IMPRIMIRNUMPEDIDO.Value:='N';
      DM.TBParametrosPAR_IMPRIMIRRECEBER.Value:='N';
      DM.TBParametrosPAR_IMPRIMIRSALDOAC.Value:='N';
      DM.TBParametrosPAR_INFOCOBRANCAXML.Value:='S';
      DM.TBParametrosPAR_JURIDICOSITE1.Clear;
      DM.TBParametrosPAR_JURIDICOSITE2.Clear;
      DM.TBParametrosPAR_JURIDICOSITE3.Clear;
      DM.TBParametrosPAR_JUROSMENSAL.Value:=4;
      DM.TBParametrosPAR_LICENCADLL.Clear;
      DM.TBParametrosPAR_LICENCADLLCTE.Clear;
      DM.TBParametrosPAR_LICENCADLLMDFE.Clear;
      DM.TBParametrosPAR_LIMITECREDITO.Value:=1000;
      DM.TBParametrosPAR_LINHASFINALRECIBO.Value:=3;
      DM.TBParametrosPAR_LINHASINICIORECIBO.Value:=1;
      DM.TBParametrosPAR_LOCACOESDIAS.Value:=3;
      DM.TBParametrosPAR_LOCACOESHORALIMITE.Value:='17:00';
      DM.TBParametrosPAR_LOCALANEXOSCLIENTES.Value:='\\servidor\arquivos\clientes_anexos';
      DM.TBParametrosPAR_LOCALANEXOSCONSULTAS.Value:='\\servidor\arquivos\consultas_anexos';
      DM.TBParametrosPAR_LOCALANEXOSFORNECEDORES.Value:='\\servidor\arquivos\fornecedores_anexos';
      DM.TBParametrosPAR_LOCALANEXOSPROCESSOS.Value:='\\servidor\arquivos\processos_anexos';
      DM.TBParametrosPAR_LOCALANEXOSPRODUTOS.Value:='\\servidor\arquivos\produtos_anexos';
      DM.TBParametrosPAR_LOCALANEXOSSEGUROS.Value:='\\servidor\arquivos\seguros_anexos';
      DM.TBParametrosPAR_LOCALANEXOSVENDEDORES.Value:='\\servidor\arquivos\vendedores_anexos';
      DM.TBParametrosPAR_LOCALATUALIZACOES.Value:='\\servidor\atualizacoes\';
      DM.TBParametrosPAR_LOCALESTUDAPADRAO.Value:=1;
      DM.TBParametrosPAR_LOCALFOTOSIMOVEIS.Value:='\\servidor\arquivos\imoveis_fotos';
      DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value:='\\servidor\arquivos\produtos_fotos';
      DM.TBParametrosPAR_LOCALIMAGENSCONSULTAS.Value:='\\servidor\arquivos\consultas_imagens';
      DM.TBParametrosPAR_LOCALMODELOSDOC.Value:='\\servidor\arquivos\modelos';
      DM.TBParametrosPAR_LOCALPADRAO.Value:=1;
      DM.TBParametrosPAR_LOCALPRONTUARIOS.Value:='\\servidor\arquivos\prontuarios';
      DM.TBParametrosPAR_LOCPRODUTOSPRECOS.Value:='S';
      DM.TBParametrosPAR_LOWHEIGHT.Value:=200;
      DM.TBParametrosPAR_LOWWIDTH.Value:=200;
      DM.TBParametrosPAR_MARCAPADRAO.Clear;
      DM.TBParametrosPAR_MARGEMPADRAO.Value:=100;
      DM.TBParametrosPAR_MATRICULASEMMATERIAL.Value:='S';
      DM.TBParametrosPAR_MDFEMODELO.Value:=58;
      DM.TBParametrosPAR_MDFESERIE.Value:=1;
      DM.TBParametrosPAR_MULTAPORC.Value:=2;
      DM.TBParametrosPAR_MULTATIPO.Value:='P';
      DM.TBParametrosPAR_NFCECONTINGENCIADATA.Clear;
      DM.TBParametrosPAR_NFCECONTINGENCIAHORA.Clear;
      DM.TBParametrosPAR_NFCECONTINGENCIAJUST.Clear;
      DM.TBParametrosPAR_NFCECSC.Clear;
      DM.TBParametrosPAR_NFCECSCHOMOLOGACAO.Clear;
      DM.TBParametrosPAR_NFCECSCID.Clear;
      DM.TBParametrosPAR_NFCECSCIDHOMOLOGACAO.Clear;
      DM.TBParametrosPAR_NFCEIMPRIMIR.Value:='N';
      DM.TBParametrosPAR_NFCEIMPRIMIRLOGO.Value:='S';
      DM.TBParametrosPAR_NFCEMODELO.Value:=65;
      DM.TBParametrosPAR_NFCESCHEMAS.Value:='C:\Runtime\Firenet\Schemas\NFE\';
      DM.TBParametrosPAR_NFCESERIE.Value:=1;
      DM.TBParametrosPAR_NFCETEMPOMSG.Value:=5;
      DM.TBParametrosPAR_NFCETIMEOUT.Value:=50000;
      DM.TBParametrosPAR_NFCETIPOEMISSAO.Value:='1 - NORMAL';
      DM.TBParametrosPAR_NFECCEEMAILASSUNTO.Value:=7;
      DM.TBParametrosPAR_NFECONTINGENCIADATA.Clear;
      DM.TBParametrosPAR_NFECONTINGENCIAHORA.Clear;
      DM.TBParametrosPAR_NFECONTINGENCIAJUST.Clear;
      DM.TBParametrosPAR_NFEEMAILASSUNTO.Value:=3;
      DM.TBParametrosPAR_NFEEMAILAUTOMATICO.Value:='N';
      DM.TBParametrosPAR_NFEEMAILBCC.Clear;
      DM.TBParametrosPAR_NFEEMAILTRANSP.Value:='N';
      DM.TBParametrosPAR_NFEMODELO.Value:=55;
      DM.TBParametrosPAR_NFESERIE.Value:=1;
      DM.TBParametrosPAR_NFETIPOATENDIMENTO.Value:='1 - OPERACAO PRESENCIAL';
      DM.TBParametrosPAR_NFETIPOCONSUMIDOR.Value:='0 - NORMAL';
      DM.TBParametrosPAR_NFETIPOEMISSAO.Value:='1 - NORMAL';
      DM.TBParametrosPAR_NFEVISUALIZARDANFE.Value:='S';
      DM.TBParametrosPAR_NFEZAPASSUNTO.Value:=14;
      DM.TBParametrosPAR_NFSEEMAILASSUNTO.Value:=4;
      DM.TBParametrosPAR_NFSEEMAILAUTOMATICO.Value:='N';
      DM.TBParametrosPAR_NFSEINFOADICIONAIS.Value:='Esta NFS-e foi emitida com respaldo nas leis 17.407/2008 e 17.408/2008. Documento emitido por ME ou EPP optante pelo simples Nacional.';
      DM.TBParametrosPAR_NFSEPROVEDOR.Value:='proBetha';
      DM.TBParametrosPAR_NFSERETENCAO.Value:='N - NORMAL';
      DM.TBParametrosPAR_NFSERETENCAORESP.Value:='1 - PRESTADOR';
      DM.TBParametrosPAR_NFSESCHEMAS.Value:='\\servidor\arquivos\nfse_schemas\BethaV2\';
      DM.TBParametrosPAR_NFSESERIE.Value:='RPSE';
      DM.TBParametrosPAR_NFSESERVICO.Value:='14.01';
      DM.TBParametrosPAR_NFSEVERSAO.Value:='2.02';
      DM.TBParametrosPAR_NFSETIMEOUT.Value:=50000;
      DM.TBParametrosPAR_NOMECERTIFICADO.Clear;
      DM.TBParametrosPAR_NOTASLF.Value:=1;
      DM.TBParametrosPAR_NOTASLI.Value:=10;
      DM.TBParametrosPAR_NOTASQL.Value:=30;
      DM.TBParametrosPAR_NOTASQLOBS.Value:=6;
      DM.TBParametrosPAR_PASTAHIGH.Value:='high';
      DM.TBParametrosPAR_PASTALOW.Value:='low';
      DM.TBParametrosPAR_PREVISUALIZARVENDA.Value:='S';
      DM.TBParametrosPAR_PRODUCAODTPREVISAO.Value:=3;
      DM.TBParametrosPAR_PRODUTOCODIGOLIVRE.Value:='N';
      DM.TBParametrosPAR_PRODUTOSCODIGOFAB.Value:='N';
      DM.TBParametrosPAR_PRODUTOMAODEOBRA.Value:=1;
      DM.TBParametrosPAR_PRODUTOSLF.Value:=3;
      DM.TBParametrosPAR_PRODUTOSLI.Value:=1;
      DM.TBParametrosPAR_PRODUTOSQL.Value:=50;
      DM.TBParametrosPAR_PROFAMILIA.Value:=1;
      DM.TBParametrosPAR_PROFORNECEDOR.Value:=1;
      DM.TBParametrosPAR_PROGRUPO.Value:=1;
      DM.TBParametrosPAR_PROMARCA.Value:=1;
      DM.TBParametrosPAR_PROMISSORIASCODIGO.Value:='S';
      DM.TBParametrosPAR_PROUNIDADE.Value:='UND';
      DM.TBParametrosPAR_PROXY.Value:='N';
      DM.TBParametrosPAR_PROXYENDERECO.Clear;
      DM.TBParametrosPAR_PROXYPASSWORD.Clear;
      DM.TBParametrosPAR_PROXYPORTA.Clear;
      DM.TBParametrosPAR_PROXYUSER.Clear;
      DM.TBParametrosPAR_QTDENIVEISCOMPOSTO.Value:=2;
      DM.TBParametrosPAR_RECEITAPADRAO.Value:=1;
      DM.TBParametrosPAR_RECIBOSEMAILASSUNTO.Value:=13;
      DM.TBParametrosPAR_REE_DTJUROSAPOS.Value:=0;
      DM.TBParametrosPAR_REFORMATRIBUTARIA.Value:='N';
      DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value:='\\servidor\arquivos\boletos';
      DM.TBParametrosPAR_REPOSITORIOCTE.Value:='\\servidor\arquivos\cte_geradas';
      DM.TBParametrosPAR_REPOSITORIOMDFE.Value:='\\servidor\arquivos\mdfe_geradas';
      DM.TBParametrosPAR_REPOSITORIONFCE.Value:='\\servidor\arquivos\nfce_geradas';
      DM.TBParametrosPAR_REPOSITORIONFE.Value:='\\servidor\arquivos\nfe_geradas';
      DM.TBParametrosPAR_REPOSITORIONFSE.Value:='\\servidor\arquivos\nfse_geradas';
      DM.TBParametrosPAR_RNTRC.Value:='1234567890123';
      DM.TBParametrosPAR_SERIALCERTIFICADO.Clear;
      DM.TBParametrosPAR_SERVICOSCLIENTEDIFERENTE.Value:='N';
      DM.TBParametrosPAR_SERVICOSDTPREVISAO.Value:=2;
      DM.TBParametrosPAR_SERVICOSEMAILASSUNTO.Value:=12;
      DM.TBParametrosPAR_SERVICOSLF.Value:=3;
      DM.TBParametrosPAR_SERVICOSLI.Value:=1;
      DM.TBParametrosPAR_SERVICOSORCLF.Clear;
      DM.TBParametrosPAR_SERVICOSORCLI.Clear;
      DM.TBParametrosPAR_SERVICOSORCRP.Clear;
      DM.TBParametrosPAR_SERVICOSPRINTPADRAO.Value:='A5 RETRATO';
      DM.TBParametrosPAR_SERVICOSPV.Value:='S';
      DM.TBParametrosPAR_SERVICOSRPA.Value:='Obrigado pela preferencia!!!';
      DM.TBParametrosPAR_SERVICOSRPF.Value:='Garantia de 90 dias nas peças e mão de obra';
      DM.TBParametrosPAR_SERVICOSSERIEMASK.Clear;
      DM.TBParametrosPAR_SERVICOSTIMBRADA.Value:='N';
      DM.TBParametrosPAR_SIGLAUF.Value:='SC';
      DM.TBParametrosPAR_SIGLAUFCTE.Value:='SC';
      DM.TBParametrosPAR_SIGLAUFMDFE.Value:='SC';
      DM.TBParametrosPAR_SIGLAWS.Value:='SVRS';
      DM.TBParametrosPAR_SIGLAWSCTE.Value:='RS';
      DM.TBParametrosPAR_SIGLAWSGNRE.Value:='SC';
      DM.TBParametrosPAR_SIGLAWSMDFE.Value:='RS';
      DM.TBParametrosPAR_STPRIMEIRAPARCELA.Value:='S';
      DM.TBParametrosPAR_TABELAPRECO.Value:='V';
      DM.TBParametrosPAR_TAXAPADRAO.Value:=1;
      DM.TBParametrosPAR_TELEVENDAPROXCONTATO.Value:=7;
      DM.TBParametrosPAR_TEMPERATURA1.Value:=1;
      DM.TBParametrosPAR_TEMPERATURA2.Value:=3;
      DM.TBParametrosPAR_TEMPERATURA3.Value:=10;
      DM.TBParametrosPAR_TEMPERATURA4.Value:=30;
      DM.TBParametrosPAR_TEMPERATURA5.Value:=180;
      DM.TBParametrosPAR_TIPOAMBIENTE.Value:='2';
      DM.TBParametrosPAR_TIPOAMBIENTECTE.Value:='2';
      DM.TBParametrosPAR_TIPOAMBIENTEGNRE.Value:='2';
      DM.TBParametrosPAR_TIPOAMBIENTEMDFE.Value:='2';
      DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value:='2';
      DM.TBParametrosPAR_TIPOAMBIENTENFSE.Value:='2';
      DM.TBParametrosPAR_TIPOCODIGOEXPRESSO.Value:='FABRICANTE';
      DM.TBParametrosPAR_TRANSPORTADORAPADRAO.Value:=1;
      DM.TBParametrosPAR_USARCODIGOFAB.Value:='N';
      DM.TBParametrosPAR_USARMARKUP.Value:='N';
      DM.TBParametrosPAR_VALFINALCERTIFICADO.Clear;
      DM.TBParametrosPAR_VALINICIALCERTIFICADO.Clear;
      DM.TBParametrosPAR_VALORBOLETO.Value:=0;
      DM.TBParametrosPAR_VALORMULTA.Value:=0;
      DM.TBParametrosPAR_VEICULOSPORCLUCRO.Value:=10;
      DM.TBParametrosPAR_VENDAEMAILASSUNTO.Value:=1;
      DM.TBParametrosPAR_VENDASLF.Value:=4;
      DM.TBParametrosPAR_VENDASLF2.Value:=0;
      DM.TBParametrosPAR_VENDASLI.Value:=0;
      DM.TBParametrosPAR_VENDASQL.Value:=12;
      DM.TBParametrosPAR_VENDASQL2.Value:=18;
      DM.TBParametrosPAR_VENDASRP.Value:='Agradecemos a preferência! Volte sempre!';
      DM.TBParametrosPAR_VENDAZAPASSUNTO.Value:=15;
      DM.TBParametrosPAR_VENDEESTOQUEZERO.Value:='S';
      DM.TBParametrosPAR_VENDERCOMPOSTO.Value:='P';
      DM.TBParametrosPAR_VERSAOXML.Value:='4.00';
      DM.TBParametrosPAR_VERSAOXMLCTE.Value:='3.00';
      DM.TBParametrosPAR_VERSAOXMLMDFE.Value:='3.00';
      DM.TBParametros.Post;

      DM.TBEmpresa.Edit;
      DM.TBEmpresaEMP_BAIRRO.Clear;
      DM.TBEmpresaEMP_CEP.Clear;
      DM.TBEmpresaEMP_CIDADE.Clear;
      DM.TBEmpresaEMP_CNAE.Clear;
      DM.TBEmpresaEMP_CONTABILIDADE.Value:=1;
      DM.TBEmpresaEMP_EMAIL.Value:='email@domain.com';
      DM.TBEmpresaEMP_EMAILSUPORTE.Clear;
      DM.TBEmpresaEMP_ENDERECO.Clear;
      DM.TBEmpresaEMP_ESTADO.Clear;
      DM.TBEmpresaEMP_ESTADOCODIGO.Clear;
      DM.TBEmpresaEMP_FONE1.Clear;
      DM.TBEmpresaEMP_FONE2.Clear;
      DM.TBEmpresaEMP_HOMEPAGE.Value:='www.seusite.com.br';
      DM.TBEmpresaEMP_IE.Clear;
      DM.TBEmpresaEMP_IM.Clear;
      DM.TBEmpresaEMP_IMINFORMAR.Value:='EM AMBAS';
      DM.TBEmpresaEMP_NOME.Value:='NOME DA EMPRESA';
      DM.TBEmpresaEMP_NOMEFANTASIA.Value:='NOME FANTASIA';
      DM.TBEmpresaEMP_NUMERO.Clear;
      DM.TBEmpresaEMP_PAIS.Value:='BRASIL';
      DM.TBEmpresaEMP_PAISCODIGO.Value:=1058;
      DM.TBEmpresaEMP_SUPERSENHA.Value:='123';
      DM.TBEmpresa.Post;

      DM.TRScript.StartTransaction;
      DM.FDScript.SQLScripts.Clear;
      DM.FDScript.SQLScripts.Add;
      DM.FDScript.SQLScripts.Items[0].SQL.Text:=
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''AC'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''AL'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''AM'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''AP'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''BA'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''CE'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''DF'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''ES'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''GO'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''MA'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''MT'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''MS'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=12, ALI_IEST='''' where ALI_ESTADO=''MG'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''PA'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''PB'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=12, ALI_IEST='''' where ALI_ESTADO=''PR'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''PE'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''PI'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''RN'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=12, ALI_IEST='''' where ALI_ESTADO=''RS'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=12, ALI_IEST='''' where ALI_ESTADO=''RJ'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''RO'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''RR'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=17, ALI_IEST='''' where ALI_ESTADO=''SC'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=12, ALI_IEST='''' where ALI_ESTADO=''SP'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''SE'';'+
        'update ALIQUOTAS set ALI_ALIQCBS=0, ALI_ALIQFCP=0, ALI_ALIQFCPST=0, ALI_ALIQIBSMUN=0, ALI_ALIQIBSUF=0, ALI_ALIQICMSADICST=0, ALI_ALIQICMSINTER=0, ALI_ALIQICMSINTERPART=100, ALI_ALIQICMSRED=0, ALI_ALIQICMSST=0, ALI_ALIQUOTA=7,  ALI_IEST='''' where ALI_ESTADO=''TO'';'
      ;
      DM.FDScript.ExecuteAll;
      DM.TRScript.Commit;

      DM2.TBAcoes.Insert;
      DM2.TBAcoesACO_DESCRICAO.Value:='TIPO DE ACAO NAO DEFINIDO';
      DM2.TBAcoes.Post;

      DM.TBAlmoxarifados.Insert;
      DM.TBAlmoxarifadosALM_DESCRICAO.Value:='ALMOXARIFADO PADRAO';
      DM.TBAlmoxarifados.Post;

      DM.TBAgrupadores.Insert;
      DM.TBAgrupadoresAGR_DESCRICAO.Value:='AGRUPADOR PADRAO';
      DM.TBAgrupadores.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Pedido de Venda/Orçamento';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro |VED_CONTATO|,<BR><BR>'+
        'Segue anexo orçamento/pedido solicitado.<BR><BR>'+
        'Número Pedido/Orçamento: <STRONG>|VED_CODIGO|</STRONG><BR>'+
        'Nome do Cliente: <STRONG>|VED_NOME|<BR></STRONG>'+
        'Nome do Vendedor: <STRONG>|VEN_NOME|</STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Pedido de Compra/Orçamento';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro |COM_CONTATO|,<BR><BR>'+
        'Segue anexo orçamento/pedido.<BR><BR>'+
        'Número Pedido/Orçamento: <STRONG>|COM_CODIGO|</STRONG><BR>'+
        'Nome do Fornecedor: <STRONG>|COM_NOME|<BR></STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Nota Fiscal Eletrônica';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro Cliente,<BR><BR>'+
        'Segue abaixo os dados da NFe emitida e em anexo o <STRONG>DANFE</STRONG> para seu armazenamento.<BR>'+
        'Para verificar a autenticidade da NFe acesse <A href="http://www.nfe.fazenda.gov.br">http://www.nfe.fazenda.gov.br</A> e consulte pela chave de acesso informada abaixo.<BR><BR>'+
        'Emitente: <STRONG>|EMP_NOME|</STRONG><BR>'+
        'Destinatário: <STRONG>|NFE_CLIENTE| - |NFE_NOME|</STRONG><BR>'+
        'Número da NFe: <STRONG>|NFE_CODIGO|</STRONG><BR>'+
        'Data de Emissão: <STRONG>|NFE_PROTOCOLODH|</STRONG><BR>'+
        'Protocolo Autorização: <STRONG>|NFE_PROTOCOLO|</STRONG><BR>'+
        'Chave de acesso: <STRONG>|NFE_CHAVEACESSO|</STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Nota Fiscal de Serviços Eletrônica';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro Cliente,<BR><BR>'+
        'Segue abaixo os dados da NFSe emitida e em anexo o <STRONG>DANFSE</STRONG> para seu armazenamento.<BR>'+
        'Para verificar a autenticidade da NFSe acesse o site da prefeitura e consulte pelo código de verificação informado abaixo.<BR><BR>'+
        'Emitente: <STRONG>|EMP_NOME|</STRONG><BR>'+
        'Destinatário: <STRONG>|NFS_CLIENTE| - |NFS_NOME|</STRONG><BR>'+
        'Número do RPS: <STRONG>|NFS_CODIGO|</STRONG><BR>'+
        'Número da NFSe: <STRONG>|NFS_NUMERONOTA|</STRONG><BR>'+
        'Data de Emissão: <STRONG>|NFS_PROTOCOLODH|</STRONG><BR>'+
        'Código de Verificação: <STRONG>|NFS_PROTOCOLO|</STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Conhecimento de Transporte Eletrônico';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro Cliente,<BR><BR>'+
        'Segue abaixo os dados do CTe emitido e em anexo o <STRONG>DACTE</STRONG> para seu armazenamento.<BR>'+
        'Para verificar a autenticidade do CTe acesse <A href="http://www.cte.fazenda.gov.br">http://www.cte.fazenda.gov.br</A> e consulte pela chave de acesso informada abaixo.<br/><br/>'+
        'Emitente: <STRONG>|EMP_NOME|</STRONG><BR>'+
        'Remetente: <STRONG>|CTE_REMNOME|</STRONG><BR>'+
        'Destinatário: <STRONG>|CTE_DESNOME|</STRONG><BR>'+
        'Número do CTe: <STRONG>|CTE_CODIGO|</STRONG><BR>'+
        'Data de Emissão: <STRONG>|CTE_PROTOCOLODH|</STRONG><BR>'+
        'Protocolo Autorização: <STRONG>|CTE_PROTOCOLO|</STRONG><BR>'+
        'Chave de acesso: <STRONG>|CTE_CHAVEACESSO|</STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Boleto';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro Cliente,<BR><BR>'+
        'Segue anexo boleto enviado por nosso sistema.<BR><BR>'+
        'Emitente: <STRONG>|EMP_NOME|</STRONG><BR>'+
        'Destinatário: <STRONG>|BOL_CLIENTE| - |BOL_NOME|</STRONG><BR>'+
        'Número do Boleto: <STRONG>|BOL_CODIGO|</STRONG><BR>'+
        'Data de Vencimento: <STRONG>|BOL_DTVENCIMENTO|</STRONG><BR>'+
        'Descrição: <STRONG>|BOL_OBSERVACOES|</STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Carta de Correção da NFe';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro cliente,<BR><BR>'+
        'Segue abaixo os dados da CCe emitida e em anexo o XML para seu armazenamento.<BR><BR><BR>'+
        'Emitente: <STRONG>|EMP_NOME|</STRONG><BR>'+
        'Destinatário: <STRONG>|NFE_NOME|</STRONG><BR>'+
        'Número da NFe: <STRONG>|NFE_CODIGO|</STRONG><BR>'+
        'Chave de acesso da NFe: <STRONG>|NFE_CHAVEACESSO|</STRONG><BR>'+
        'Data de Emissão da CCe: <STRONG>|NCC_PROTOCOLODH|</STRONG><BR>'+
        'Protocolo Autorização da CCe: <STRONG>|NCC_PROTOCOLO|</STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação, '+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Carta de Correção do CTe';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro cliente,<BR><BR>'+
        'Segue abaixo os dados da CCe emitida e em anexo o XML para seu armazenamento.<BR><BR><BR>'+
        'Emitente: <STRONG>|EMP_NOME|</STRONG><BR>'+
        'Remetente: <STRONG>|CTE_REMNOME|</STRONG><BR>'+
        'Destinatário: <STRONG>|CTE_DESNOME|</STRONG><BR>'+
        'Número do CTe: <STRONG>|CTE_CODIGO|</STRONG><BR>'+
        'Chave de acesso: <STRONG>|CTE_CHAVEACESSO|</STRONG><BR>'+
        'Data de Emissão da CCe: <STRONG>|CTC_PROTOCOLODH|</STRONG><BR>'+
        'Protocolo Autorização da CCe: <STRONG>|CTC_PROTOCOLO|</STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação, '+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Anexos de Cliente';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro cliente,<BR><BR>'+
        'Segue anexo...<BR><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação, '+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Anexos de Fornecedor';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro cliente,<BR><BR>'+
        'Segue anexo...<BR><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação, '+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Anexos de Consultas';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro cliente,<BR><BR>'+
        'Segue anexo...<BR><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação, '+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Ordem de Serviço';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro |CLI_NOME|,<BR><BR>'+
        'Segue anexo ordem de serviço solicitado.<BR><BR>'+
        'Número OS: <STRONG>|SER_CODIGO|</STRONG><BR>'+
        'Produto: <STRONG>|EQP_DESCRICAO|<BR></STRONG>'+
        'Marca: <STRONG>|EQP_MARCA|</STRONG><BR>'+
        'Modelo: <STRONG>|EQP_MODELO|</STRONG><BR>'+
        'Serial: <STRONG>|EQP_SERIE|</STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Recibo';
      DM2.TBAssuntosASS_TEXTO.Value:='<FONT size=2 face=Arial>Caro |RCB_SNOME|,<BR><BR>'+
        'Segue anexo recibo solicitado.<BR><BR>'+
        'Número: <STRONG>|RCB_CODIGO|</STRONG><BR>'+
        'Valor: <STRONG>|RCB_VALOR|<BR></STRONG>'+
        'Proveniente: <STRONG>|RCB_PROVENIENTE|</STRONG><BR>'+
        'Sacado: <STRONG>|RCB_SNOME|</STRONG><BR>'+
        'Cedente: <STRONG>|RCB_CNOME|</STRONG><BR><BR>'+
        'Esta mensagem foi gerada automaticamente pelo sistema.<BR><BR>'+
        '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
        'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
        'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>';
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Nota Fiscal Eletrônica zap';
      DM2.TBAssuntosASS_TEXTO.Value:=
        'Caro Cliente,'+#13#10+#13#10+
        'Segue abaixo os dados da NFe emitida o DANFE para seu armazenamento.'+#13#10+
        'Para verificar a autenticidade da NFe acesse http://www.nfe.fazenda.gov.br e consulte pela chave de acesso informada abaixo.'+#13#10+
        'Emitente: *|EMP_NOME|*'+#13#10+
        'Destinatário: *|NFE_CLIENTE| - |NFE_NOME|*'+#13#10+
        'Número da NFe: *|NFE_CODIGO|*'+#13#10+
        'Data de Emissão: *|NFE_PROTOCOLODH|*'+#13#10+
        'Protocolo Autorização: *|NFE_PROTOCOLO|*'+#13#10+
        'Chave de acesso: *|NFE_CHAVEACESSO|*'+#13#10;
      DM2.TBAssuntos.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Pedido de Venda/Orçamento zap';
      DM2.TBAssuntosASS_TEXTO.Value:=
        'Caro Cliente,'+#13#10+#13#10+
        'Segue anexo orçamento/pedido solicitado.'+#13#10+#13#10+
        'Número Pedido/Orçamento: *|VED_CODIGO|*'+#13#10+
        'Nome do Cliente: *|VED_NOME|*'+#13#10+
        'Nome do Vendedor: *|VEN_NOME|*'+#13#10;
      DM2.TBAssuntos.Post;
      DM.TBAtividades.Insert;
      DM.TBAtividadesATI_DESCRICAO.Value:='NAO INFORMADO';
      DM.TBAtividades.Post;

      DM2.TBAssuntos.Insert;
      DM2.TBAssuntosASS_DESCRICAO.Value:='[firenet] Boleto zap';
      DM2.TBAssuntosASS_TEXTO.Value:=
        'Caro Cliente,'+#13#10+#13#10+
        'Segue anexo boleto enviado por nosso sistema.'+#13#10+#13#10+
        'Emitente: *|EMP_NOME|*'+#13#10+
        'Destinatário: *|BOL_CLIENTE| - |BOL_NOME|*'+#13#10+
        'Número do Boleto: *|BOL_CODIGO|*'+#13#10+
        'Data de Vencimento: *|BOL_DTVENCIMENTO|*'+#13#10+
        'Descrição: *|BOL_OBSERVACOES|*'+#13#10;
      DM2.TBAssuntos.Post;

      DM.TBAtividades.Insert;
      DM.TBAtividadesATI_DESCRICAO.Value:='NAO INFORMADO';
      DM.TBAtividades.Post;

      DM2.TBAvaliacoesTipo.Insert;
      DM2.TBAvaliacoesTipoAVT_DESCRICAO.Value:='NAO INFORMADO';
      DM2.TBAvaliacoesTipo.Post;

      DM2.TBClasses.Insert;
      DM2.TBClassesCLS_DESCRICAO.Value:='CLASSE PADRAO';
      DM2.TBClasses.Post;

      DM.TBClassFiscal.Insert;
      DM.TBClassFiscalCLF_DESCRICAO.Value:='DESCRICAO CLASSIFICACAO FISCAL';
      DM.TBClassFiscalCLF_CODIGO.Value:='12345678';
      DM.TBClassFiscalCLF_EXCECAO.Value:=0;
      DM.TBClassFiscal.Post;

      DM.TBContas.Insert;
      DM.TBContasCON_NOME.Value:='CAIXA INTERNO';
      DM.TBContasCON_CEDENTENOME.Value:='CAIXA INTERNO';
      DM.TBContasCON_BANCO.Value:=0; //BANCO INTERNO.
      DM.TBContas.Post;

      DM.TRScript.StartTransaction;
      DM.FDScript.SQLScripts.Clear;
      DM.FDScript.SQLScripts.Add;
      DM.FDScript.SQLScripts.Items[0].SQL.Text:=
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''S'', 1, 1, ''N'', 0, ''A VISTA'', ''DINHEIRO'', ''2025-11-19'', ''2025-11-19'', ''DINHEIRO'', ''14:15:38'', ''13:59:04'', ''15 - BOLETO BANCARIO'', ''N'', ''S'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''0 - PAGAMENTO A VISTA'', 1, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''S'', 2, 1, ''S'', 0, ''CARTAO CREDITO'', ''CARTAO CREDITO'', ''2025-11-19'', ''2025-11-19'', ''CARTAO CREDITO'', ''14:15:29'', ''14:13:27'', ''03 - CARTAO DE CREDITO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''0 - PAGAMENTO A VISTA'', 1, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''S'', 3, 1, ''N'', 0, ''CARTAO DEBITO'', ''CARTAO DEBITO'', ''2025-11-19'', ''2025-11-19'', ''CARTAO DEBITO'', ''14:15:19'', ''14:14:46'', ''04 - CARTAO DE DEBITO'', ''N'', ''S'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''0 - PAGAMENTO A VISTA'', 1, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''N'', 4, 1, ''N'', 0, ''28 DIAS'', ''28'', ''2025-11-19'', ''2025-11-19'', ''BOLETO'', ''14:29:26'', ''14:15:54'', ''15 - BOLETO BANCARIO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''1 - PAGAMENTO A PRAZO'', 1, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''S'', 5, 1, ''N'', 0, ''ENTRADA + 30 DIAS'', ''E/30'', ''2025-11-19'', ''2025-11-19'', ''BOLETO'', ''14:23:20'', ''14:16:56'', ''15 - BOLETO BANCARIO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''1 - PAGAMENTO A PRAZO'', 2, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''S'', 6, 1, ''N'', 0, ''ENTRADA + 30/60 DIAS'', ''E/30/60'', ''2025-11-19'', ''2025-11-19'', ''BOLETO'', ''14:23:25'', ''14:17:50'', ''15 - BOLETO BANCARIO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''1 - PAGAMENTO A PRAZO'', 3, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''S'', 7, 1, ''N'', 0, ''ENTRADA + 30/60/90 DIAS'', ''E/30/60/90'', ''2025-11-19'', ''2025-11-19'', ''BOLETO'', ''14:23:30'', ''14:18:41'', ''15 - BOLETO BANCARIO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''1 - PAGAMENTO A PRAZO'', 4, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''S'', 8, 1, ''N'', 0, ''ENTRADA + 30/60/90/120 DIAS'', ''E/30/60/90/120'', ''2025-11-19'', ''2025-11-19'', ''BOLETO'', ''14:23:35'', ''14:19:16'', ''15 - BOLETO BANCARIO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''1 - PAGAMENTO A PRAZO'', 5, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''N'', 9, 1, ''N'', 0, ''30/60 DIAS'', ''30/60'', ''2025-11-19'', ''2025-11-19'', ''BOLETO'', ''14:24:31'', ''14:23:53'', ''15 - BOLETO BANCARIO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''1 - PAGAMENTO A PRAZO'', 2, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''N'', 10, 1, ''N'', 0, ''30/60/90 DIAS'', ''30/60/90'', ''2025-11-19'', ''2025-11-19'', ''BOLETO'', ''14:25:23'', ''14:24:34'', ''15 - BOLETO BANCARIO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''1 - PAGAMENTO A PRAZO'', 3, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''N'', 11, 1, ''N'', 0, ''30/60/90/120 DIAS'', ''30/60/90/120'', ''2025-11-19'', ''2025-11-19'', ''BOLETO'', ''14:26:30'', ''14:25:44'', ''15 - BOLETO BANCARIO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''1 - PAGAMENTO A PRAZO'', 4, 100, ''RUNTIME'');'+#13#10+
        'INSERT INTO CONDICOES (CPG_ATUALIZAR, CPG_BAIXARPRIMEIRAPARC, CPG_CODIGO, CPG_CONTA, CPG_CUPOM, CPG_DESCPORC, CPG_DESCRICAO, CPG_DESCRICAOCUPOM, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_HRATUALIZACAO, CPG_HRCADASTRO, CPG_MEIOPAGAMENTO, CPG_MENSAL, CPG_MOBILE, CPG_PARCELASIGUAIS, CPG_STATUS, CPG_TIPOINTEGRACAO, CPG_TIPOPAGAMENTO, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO) VALUES (''S'', ''N'', 12, 1, ''N'', 0, ''30/60/90/120/150 DIAS'', ''30/60/90/120/150'', ''2025-11-19'', ''2025-11-19'', ''BOLETO'', ''14:27:38'', ''14:26:49'', ''15 - BOLETO BANCARIO'', ''N'', ''N'', ''S'', ''A'', ''2 - PAGAMENTO NAO INTEGRADO'', ''1 - PAGAMENTO A PRAZO'', 5, 100, ''RUNTIME'');'+#13#10+

        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (1, 1, 0, 100);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (2, 2, 0, 100);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (3, 3, 0, 100);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (4, 4, 28, 100);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (5, 5, 0, 50);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (6, 5, 30, 50);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (7, 6, 0, 33.34);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (8, 6, 30, 33.33);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (9, 6, 60, 33.33);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (10, 7, 0, 25);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (11, 7, 30, 25);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (12, 7, 60, 25);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (13, 7, 90, 25);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (14, 8, 0, 20);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (15, 8, 30, 20);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (16, 8, 60, 20);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (17, 8, 90, 20);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (18, 8, 120, 20);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (19, 9, 30, 50);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (20, 9, 60, 50);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (21, 10, 30, 33.34);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (22, 10, 60, 33.33);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (23, 10, 90, 33.33);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (24, 11, 30, 25);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (25, 11, 60, 25);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (26, 11, 90, 25);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (27, 11, 120, 25);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (28, 12, 30, 20);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (29, 12, 60, 20);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (30, 12, 90, 20);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (31, 12, 120, 20);'+#13#10+
        'INSERT INTO CONDICOESITENS (CPI_CODIGO, CPI_CONDICAO, CPI_DIAS, CPI_PORCENTAGEM) VALUES (32, 12, 150, 20);'+#13#10+

        'SET GENERATOR GEN_CONDICOES TO 12;'+#13#10+
        'SET GENERATOR GEN_CONDICOESITENS TO 32;'+#13#10
      ;
      DM.FDScript.ExecuteAll;
      DM.TRScript.Commit;

      DM2.TBCursos.Insert;
      DM2.TBCursosCUR_DESCRICAO.Value:='CURSO PADRAO';
      DM2.TBCursos.Post;

      DM.TBDespesas.Insert;
      DM.TBDespesasDES_DESCRICAO.Value:='DIVERSOS';
      DM.TBDespesasDES_AGRUPADOR.Value:=1;
      DM.TBDespesas.Post;

      DM2.TBEmailsContas.Insert;
      DM2.TBEmailsContasEMC_CONFIRMACAO.Value:='N';
      DM2.TBEmailsContasEMC_EMAIL.Value:='seuemail@seudominio.com.br';
      DM2.TBEmailsContasEMC_LOGIN.Value:='seuemail@seudominio.com.br';
      DM2.TBEmailsContasEMC_NOME.Value:='Conta de email padrão';
      DM2.TBEmailsContasEMC_POP.Value:='pop.dominio.com';
      DM2.TBEmailsContasEMC_POPPORTA.Value:=110;
      DM2.TBEmailsContasEMC_REPLYTO.Value:='seuemail@seudominio.com.br';
      DM2.TBEmailsContasEMC_SENHA.Value:='1234';
      DM2.TBEmailsContasEMC_SMTP.Value:='smtp.dominio.com';
      DM2.TBEmailsContasEMC_SMTPPORTA.Value:=587;
      DM2.TBEmailsContasEMC_SSL.Value:='S';
      DM2.TBEmailsContasEMC_TIMEOUT.Value:=20000;
      DM2.TBEmailsContasEMC_TLS.Value:='S';
      DM2.TBEmailsContas.Post;

      DM.TBEtiquetas.Insert;
      DM.TBEtiquetasETQ_DESCRICAO.Value:='ETIQUETAS DE PRODUTOS MODELO 01';
      DM.TBEtiquetasETQ_CONTEUDO.Value:='N'+
                                        'Q240,24'+
                                        'A40,30,0,3,1,1,N,"|EMP_NOMEFANTASIA|"'+
                                        'A40,50,0,2,1,1,N,"Codigo: |PRO_CODIGO|"'+
                                        'A40,70,0,2,1,1,N,"|PRO_NOME1|"'+
                                        'A40,90,0,2,1,1,N,"|PRO_NOME2|"'+
                                        'B55,110,0,3,2,4,70,B,"|PRO_CODIGOBARRAS|"'+
                                        'A470,30,0,3,1,1,N,"|EMP_NOMEFANTASIA|"'+
                                        'A470,50,0,2,1,1,N,"Codigo: |PRO_CODIGO|"'+
                                        'A470,70,0,2,1,1,N,"|PRO_NOME1|"'+
                                        'A470,90,0,2,1,1,N,"|PRO_NOME2|"'+
                                        'B485,110,0,3,2,4,70,B,"|PRO_CODIGOBARRAS|"'+
                                        'P|ETQ_QUANTIDADE|'+
                                        ''+
                                        'A40,90,0,2,1,1,N,"|PRO_NOME|"'+
                                        'A40,90,0,2,1,1,N,"|LOT_LOTE|"'+
                                        'A40,90,0,2,1,1,N,"|LOT_VALIDADE|"'+
                                        'A40,90,0,2,1,1,N,"|LOT_FABRICACAO|"'+
                                        'A40,90,0,2,1,1,N,"|PRO_CODIGOFAB|"'+
                                        'A40,90,0,2,1,1,N,"|PRO_PRECO|"';
      DM.TBEtiquetas.Post;

      DM.TBEtiquetas.Insert;
      DM.TBEtiquetasETQ_DESCRICAO.Value:='ETIQUETA PARA EMBALAGEM DE VENDA';
      DM.TBEtiquetasETQ_CONTEUDO.Value:='N'+
                                        'Q400,24'+
                                        'A5,20,0,4,1,2,R,"|EMP_NOMEFANTASIA|"'+
                                        'A5,80,0,3,1,1,N,"PEDIDO/NFE....: |VED_CODIGO|/|VED_NFE|"'+
                                        'A5,105,0,3,1,1,N,"PESO BRUTO....: |VED_PESOBRUTO| KG"'+
                                        'A5,130,0,3,1,1,N,"PESO LIQUIDO..: |VED_PESOLIQ| KG"'+
                                        'A5,155,0,3,1,1,N,"TRANSPORTADORA: |VED_TRANSPNOME|"'+
                                        'A5,180,0,3,1,1,N,"VOLUMES.......: |VED_VOLUMENUMERO|/|VED_VOLUMES|"'+
                                        'A5,205,0,3,1,1,N,"CLIENTE....: |VED_NOME|"'+
                                        'A5,230,0,3,1,1,N,"CNPJ/CPF...: |VED_CNPJCPF|"'+
                                        'A5,255,0,3,1,1,N,"ENDERECO...: |VED_ENDERECO|, |VED_NUMERO|"'+
                                        'A5,280,0,3,1,1,N,"BAIRRO.....: |VED_BAIRRO|"'+
                                        'A5,305,0,3,1,1,N,"CIDADE/UF..: |VED_CIDADE| - |VED_ESTADO|"'+
                                        'A5,330,0,3,1,1,N,"COMPLEMENTO: |VED_COMPLEMENTO|"'+
                                        'A5,355,0,3,1,1,N,"FONES......: |CLI_FONE1| / |CLI_FONE2|"'+
                                        'P1';
      DM.TBEtiquetas.Post;

      DM.TBFamilias.Insert;
      DM.TBFamiliasFAM_DESCRICAO.Value:='FAMILIA PADRAO';
      DM.TBFamilias.Post;

      DM2.TBFases.Insert;
      DM2.TBFasesFAS_DESCRICAO.Value:='FASE PADRAO';
      DM2.TBFases.Post;

      DM2.TBForos.Insert;
      DM2.TBForosFRS_NOME.Value:='FORO NAO INFORMADO';
      DM2.TBForos.Post;

      DM.TBGrupos.Insert;
      DM.TBGruposGRU_DESCRICAO.Value:='GRUPO PADRAO';
      DM.TBGrupos.Post;

      DM2.TBImoveisTipos.Insert;
      DM2.TBImoveisTiposIMT_DESCRICAO.Value:='CASA';
      DM2.TBImoveisTipos.Post;

      DM2.TBLocais.Insert;
      DM2.TBLocaisLCA_DESCRICAO.Value:='NAO INFORMADO';
      DM2.TBLocais.Post;

      DM.TBMailings.Insert;
      DM.TBMailingsMAI_DESCRICAO.Value:='MAILING NAO INFORMADO';
      DM.TBMailings.Post;

      DM2.TBMarcas.Insert;
      DM2.TBMarcasMAR_DESCRICAO.Value:='NAO DEFINIDA';
      DM2.TBMarcas.Post;

      DM2.TBMarkups.Insert;
      DM2.TBMarkupsMKP_DESCRICAO.Value:='MARKUP PADRAO';
      DM2.TBMarkups.Post;

      DM2.TBMarkupsItens.Insert;
      DM2.TBMarkupsItensMKI_MARKUP.Value:=DM2.TBMarkupsMKP_CODIGO.Value;
      DM2.TBMarkupsItensMKI_DESCRICAO.Value:='MARGEM DE LUCRO DESEJADA';
      DM2.TBMarkupsItensMKI_PORCENTAGEM.Value:=60;
      DM2.TBMarkupsItens.Post;

      DM2.TBMotivos.Insert;
      DM2.TBMotivosMOT_DESCRICAO.Value:='NAO INFORMADO';
      DM2.TBMotivos.Post;

      DM.TBReceitas.Insert;
      DM.TBReceitasREC_DESCRICAO.Value:='RECEITA PADRAO';
      DM.TBReceitasREC_AGRUPADOR.Value:=1;
      DM.TBReceitas.Post;

      DM.TBRegrasFiscais.Insert;
      DM.TBRegrasFiscaisRGF_ALIQCBS.Value:=0.9;
      DM.TBRegrasFiscaisRGF_ALIQIBSMUN.Value:=0;
      DM.TBRegrasFiscaisRGF_ALIQIBSUF.Value:=0.1;
      DM.TBRegrasFiscaisRGF_ALIQIS.Value:=0;
      DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value:='000001';
      DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value:='000001';
      DM.TBRegrasFiscaisRGF_CREDITOPRES.Value:=0;
      DM.TBRegrasFiscaisRGF_CSTIBSCBS.Value:='000';
      DM.TBRegrasFiscaisRGF_CSTIS.Value:='000';
      DM.TBRegrasFiscaisRGF_DESCRICAO.Value:='REGRA TRIBUTACAO INTEGRAL';
      DM.TBRegrasFiscais.Post;

      DM2.TBSegurosTipos.Insert;
      DM2.TBSegurosTiposSGT_DESCRICAO.Value:='NAO DEFINIDO';
      DM2.TBSegurosTiposSGT_STATUS.Value:='A';
      DM2.TBSegurosTipos.Post;

      DM.TBTaxas.Insert;
      DM.TBTaxasTAX_DESCRICAO.Value:='TAXA ZERO';
      DM.TBTaxasTAX_TIPO.Value:='V';
      DM.TBTaxasTAX_VALOR.Value:=0;
      DM.TBTaxas.Post;

      DM2.TBUnidades.Insert;
      DM2.TBUnidadesUNI_CODIGO.Value:='UND';
      DM2.TBUnidadesUNI_DESCRICAO.Value:='UNIDADES';
      DM2.TBUnidades.Post;

      DM2.TBUnidades.Insert;
      DM2.TBUnidadesUNI_CODIGO.Value:='HRS';
      DM2.TBUnidadesUNI_DESCRICAO.Value:='HORAS';
      DM2.TBUnidades.Post;

      DM2.TBUnidades.Insert;
      DM2.TBUnidadesUNI_CODIGO.Value:='KG';
      DM2.TBUnidadesUNI_DESCRICAO.Value:='QUILOGRAMAS';
      DM2.TBUnidades.Post;

      DM2.TBUnidades.Insert;
      DM2.TBUnidadesUNI_CODIGO.Value:='MT';
      DM2.TBUnidadesUNI_DESCRICAO.Value:='METROS';
      DM2.TBUnidades.Post;

      DM2.TBUnidades.Insert;
      DM2.TBUnidadesUNI_CODIGO.Value:='PC';
      DM2.TBUnidadesUNI_DESCRICAO.Value:='PECAS';
      DM2.TBUnidades.Post;

      DM2.TBUnidades.Insert;
      DM2.TBUnidadesUNI_CODIGO.Value:='CX';
      DM2.TBUnidadesUNI_DESCRICAO.Value:='CAIXAS';
      DM2.TBUnidades.Post;

      DM.TBVendedores.Insert;
      DM.TBVendedoresVEN_NOME.Value:='VENDEDOR 1';
      DM.TBVendedoresVEN_EMAILCONTA.Value:=1;
      DM.TBVendedores.Post;

      DM.TBVendedoresHistTipos.Insert;
      DM.TBVendedoresHistTiposVHT_DESCRICAO.Value:='NAO DEFINIDO';
      DM.TBVendedoresHistTipos.Post;

      DM.TBFornecedores.Insert;
      DM.TBFornecedoresFOR_ATIVIDADE.Value:=1;
      DM.TBFornecedoresFOR_CEP.Value:=DM.TBEmpresaEMP_CEP.Value;
      DM.TBFornecedoresFOR_NOME.Value:='FORNECEDOR LOCAL';
      DM.TBFornecedores.Post;

      DM.TBClientes.Insert;
      DM.TBClientesCLI_NOME.Value:='CONSUMIDOR FINAL';
      DM.TBClientesCLI_CEP.Value:=DM.TBEmpresaEMP_CEP.Value;
      DM.TBClientes.Post;

      DM.TBUsuarios.Insert;
      DM.TBUsuariosUSU_LOGIN.Value:='RUNTIME';
      DM.TBUsuariosUSU_NOME.Value:='RUNTIME SISTEMAS';
      DM.TBUsuariosUSU_VENDEDOR.Value:=1;
      DM.TBUsuarios.Post;

      QYGenerators.Open;
      QYTabelas.Open;
      Screen.Cursor:=crDefault;
      MessageDlg('Processo terminado.',mtInformation,[mbOk],0);
    end;
  end;
end;

procedure TFormZerarBase.Sql(SQL: String);
begin
  QYTabAux.SQL.Clear;
  QYTabAux.SQL.Add(SQL);
  QYTabAux.ExecSQL;
end;

end.
