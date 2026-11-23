unit FuncoesDuimp;

interface

uses
  System.SysUtils, System.Classes, Xml.XMLDoc, Xml.XMLIntf,
  FireDAC.Comp.Client, Data.DB;

type
  TDUIMPImporter = class
  private
    FMemTableDuimp: TFDMemTable;
    FMemTableItens: TFDMemTable;
    FMemTableTributos: TFDMemTable;
    procedure ConfigureTables;
    procedure ClearTables;
    function GetNodeValue(ANode: IXMLNode; const ANodeName: string): string;
  public
    constructor Create;
    destructor Destroy; override;

    procedure LoadFromXMLFile(const AFileName: string);
    procedure LoadFromXMLString(const AXMLString: string);

    property MemTableDuimp: TFDMemTable read FMemTableDuimp;
    property MemTableItens: TFDMemTable read FMemTableItens;
    property MemTableTributos: TFDMemTable read FMemTableTributos;
  end;

implementation

uses Funcoes1;

constructor TDUIMPImporter.Create;
begin
  FMemTableDuimp   :=TFDMemTable.Create(nil);
  FMemTableItens   :=TFDMemTable.Create(nil);
  FMemTableTributos:=TFDMemTable.Create(nil);
  ConfigureTables;
end;

destructor TDUIMPImporter.Destroy;
begin
  FMemTableDuimp.Free;
  FMemTableItens.Free;
  FMemTableTributos.Free;
  inherited;
end;

procedure TDUIMPImporter.ConfigureTables;
begin
  // Tabela Mestre: DUIMP (Cabeçalho)
  with FMemTableDuimp.FieldDefs do
  begin
    Clear;
    Add('NumeroDuimp', ftString, 20);
    Add('Versao', ftString, 10);
    Add('CNPJImportador', ftString, 20);
    Add('NomeImportador', ftString, 150);
    Add('TipoCarga', ftString, 30);
    Add('VMLE_Dolar', ftFloat);
    Add('VMLE_Real', ftFloat);
  end;
  FMemTableDuimp.CreateDataSet;

  // Tabela Detalhe: Itens
  with FMemTableItens.FieldDefs do
  begin
    Clear;
    Add('NumeroDuimp', ftString, 20);
    Add('NumeroItem', ftInteger);
    Add('CodigoProduto', ftString, 30);
    Add('NCM', ftString, 10);
    Add('Denominacao', ftString, 255);
    Add('QtdeComercial', ftFloat);
    Add('UnidadeComercial', ftString, 20);
    Add('ValorUnitarioMoeda', ftFloat);
    Add('VMLE_Real', ftFloat);
    Add('FabricanteNome', ftString, 150);
  end;
  FMemTableItens.CreateDataSet;

  // Tabela Detalhe: Tributos Calculados por Item
  with FMemTableTributos.FieldDefs do
  begin
    Clear;
    Add('NumeroDuimp', ftString, 20);
    Add('NumeroItem', ftInteger);
    Add('CodigoTributo', ftString, 10);
    Add('DescricaoTributo', ftString, 50);
    Add('BaseCalculo', ftFloat);
    Add('Aliquota', ftFloat);
    Add('ValorCalculado', ftFloat);
    Add('ValorARecolher', ftFloat);
  end;
  FMemTableTributos.CreateDataSet;
end;

procedure TDUIMPImporter.ClearTables;
begin
  FMemTableTributos.EmptyDataSet;
  FMemTableItens.EmptyDataSet;
  FMemTableDuimp.EmptyDataSet;
end;

function TDUIMPImporter.GetNodeValue(ANode: IXMLNode; const ANodeName: string): string;
var ChildNode: IXMLNode;
begin
  Result:='';
  if Assigned(ANode) then
  begin
    ChildNode:=ANode.ChildNodes.FindNode(ANodeName);
    if Assigned(ChildNode) then
    Result:=ChildNode.Text;
  end;
end;

procedure TDUIMPImporter.LoadFromXMLString(const AXMLString: string);
var
  XMLDoc: IXMLDocument;
  RootNode, ExtratoGeralNode, ItemNode, ProdutoNode, FabricanteNode, TributoNode: IXMLNode;
  i, j: Integer;
  NumDuimp: string;
  NumItem: Integer;
  FormatSettings: TFormatSettings;
begin
  ClearTables;
  FormatSettings:=TFormatSettings.Create('en-US');

  XMLDoc  :=LoadXMLData(AXMLString);
  RootNode:=XMLDoc.DocumentElement; // <duimp>

  if not Assigned(RootNode) then Exit;

  // 1. Parsing do Extrato Geral (Cabeçalho)
  ExtratoGeralNode := RootNode.ChildNodes.FindNode('extratoGeral');
  if Assigned(ExtratoGeralNode) then
  begin
    NumDuimp:=GetNodeValue(ExtratoGeralNode, 'numeroDuimp');

    FMemTableDuimp.Append;
    FMemTableDuimp.FieldByName('NumeroDuimp').AsString:=NumDuimp;
    FMemTableDuimp.FieldByName('Versao').AsString     :=GetNodeValue(ExtratoGeralNode, 'versao');

    // Subnó identificacao/cpfCnpj
    if ExtratoGeralNode.ChildNodes.FindNode('identificacao')<>nil then
    begin
      var IdentNode := ExtratoGeralNode.ChildNodes.FindNode('identificacao').ChildNodes.FindNode('cpfCnpj');
      if Assigned(IdentNode) then
      begin
        FMemTableDuimp.FieldByName('CNPJImportador').AsString:=GetNodeValue(IdentNode, 'codigo');
        FMemTableDuimp.FieldByName('NomeImportador').AsString:=GetNodeValue(IdentNode, 'descricao');
      end;
    end;

    FMemTableDuimp.FieldByName('TipoCarga').AsString:=GetNodeValue(ExtratoGeralNode, 'tipoCarga');
    FMemTableDuimp.FieldByName('VMLE_Dolar').AsFloat:=StrToFloatDef(GetNodeValue(ExtratoGeralNode, 'vmleDolar'), 0, FormatSettings);
    FMemTableDuimp.FieldByName('VMLE_Real').AsFloat :=StrToFloatDef(GetNodeValue(ExtratoGeralNode, 'vmleReal'), 0, FormatSettings);
    FMemTableDuimp.Post;
  end;

  // 2. Parsing dos Itens e seus Tributos
  for i:=0 to RootNode.ChildNodes.Count-1 do
  begin
    ItemNode:=RootNode.ChildNodes[i];
    if ItemNode.NodeName = 'extratoItens' then
    begin
      NumItem:=StrToIntDef(GetNodeValue(ItemNode, 'numeroItem'), 0);

      FMemTableItens.Append;
      FMemTableItens.FieldByName('NumeroDuimp').AsString      :=NumDuimp;
      FMemTableItens.FieldByName('NumeroItem').AsInteger      :=NumItem;
      FMemTableItens.FieldByName('CodigoProduto').AsString    :=GetNodeValue(ItemNode, 'codigoProduto');

      // NCM
      var NcmNode:=ItemNode.ChildNodes.FindNode('ncm');
      if Assigned(NcmNode) then
      FMemTableItens.FieldByName('NCM').AsString              :=GetNodeValue(NcmNode, 'codigo');

      // Produto
      ProdutoNode:=ItemNode.ChildNodes.FindNode('produto');
      if Assigned(ProdutoNode) then
      FMemTableItens.FieldByName('Denominacao').AsString      :=UpperCase(RemoveAcentos(GetNodeValue(ProdutoNode, 'denominacao')));

      // Quantidades e Valores
      FMemTableItens.FieldByName('QtdeComercial').AsFloat     :=StrToFloatDef(GetNodeValue(ItemNode, 'quantidadeComercial'), 0, FormatSettings);
      FMemTableItens.FieldByName('UnidadeComercial').AsString :=GetNodeValue(ItemNode, 'unidadeComercial');
      FMemTableItens.FieldByName('ValorUnitarioMoeda').AsFloat:=StrToFloatDef(GetNodeValue(ItemNode, 'valorUnitarioMoedaNegociada'), 0, FormatSettings);
      FMemTableItens.FieldByName('VMLE_Real').AsFloat         :=StrToFloatDef(GetNodeValue(ItemNode, 'vmle'), 0, FormatSettings);

      // Fabricante
      FMemTableItens.FieldByName('FabricanteNome').AsString   :=GetNodeValue(ItemNode, 'fabricanteNome');
      FMemTableItens.Post;

      // 3. Parsing dos Tributos Calculados do Item
      for j:=0 to ItemNode.ChildNodes.Count-1 do
      begin
        TributoNode:=ItemNode.ChildNodes[j];
        if TributoNode.NodeName = 'tributosCalculados' then
        begin
          FMemTableTributos.Append;
          FMemTableTributos.FieldByName('NumeroDuimp').AsString:=NumDuimp;
          FMemTableTributos.FieldByName('NumeroItem').AsInteger:=NumItem;

          var InfoTributo := TributoNode.ChildNodes.FindNode('tributo');
          if Assigned(InfoTributo) then
          begin
            FMemTableTributos.FieldByName('CodigoTributo').AsString   :=GetNodeValue(InfoTributo, 'codigo');
            FMemTableTributos.FieldByName('DescricaoTributo').AsString:=GetNodeValue(InfoTributo, 'descricao');
          end;

          FMemTableTributos.FieldByName('BaseCalculo').AsFloat   :=StrToFloatDef(GetNodeValue(TributoNode, 'valorBaseCalculo'), 0, FormatSettings);
          FMemTableTributos.FieldByName('Aliquota').AsFloat      :=StrToFloatDef(GetNodeValue(TributoNode, 'valorAliquota'), 0, FormatSettings);
          FMemTableTributos.FieldByName('ValorCalculado').AsFloat:=StrToFloatDef(GetNodeValue(TributoNode, 'valorCalculado'), 0, FormatSettings);
          FMemTableTributos.FieldByName('ValorARecolher').AsFloat:=StrToFloatDef(GetNodeValue(TributoNode, 'valorARecolher'), 0, FormatSettings);
          FMemTableTributos.Post;
        end;
      end;
    end;
  end;
end;

procedure TDUIMPImporter.LoadFromXMLFile(const AFileName: string);
var SL: TStringList;
begin
  SL:=TStringList.Create;
  try
    SL.LoadFromFile(AFileName, TEncoding.UTF8);
    LoadFromXMLString(SL.Text);
  finally
    SL.Free;
  end;
end;

end.
