unit NfeArquivosXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, PngBitBtn, DBCtrls, Menus,
  ImgList, PngImageList, System.ImageList, Vcl.FileCtrl, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TFormNfeArquivosXML = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    TreeView1: TTreeView;
    Label1: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    BitBtn2: TPngBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PngBitBtn1: TPngBitBtn;
    PngImageList1: TPngImageList;
    FileListBox1: TFileListBox;
    XMLDocument1: TXMLDocument;
    Label6: TLabel;
    Label7: TLabel;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Expanded(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
    procedure FileListBox1Change(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure GenerateTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
  public
    { Public declarations }
  end;

var
  FormNfeArquivosXML: TFormNfeArquivosXML;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormNfeArquivosXML.GenerateTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
var
  NodeText, AttrText: String;
  NewTreeNode: TTreeNode;
  I: Integer;
  AttrNode: IXMLNode;
begin
  if XMLNode.NodeType <> ntElement then
  Exit;
  NodeText:=XMLNode.NodeName;

  //prepara texto com os atributos de um nó.
  AttrText:='';
  for I := 0 to xmlNode.AttributeNodes.Count - 1 do
  begin
    AttrNode := xmlNode.AttributeNodes.Nodes[I];
    AttrText:=AttrText+' '+AttrNode.NodeName+'="'+AttrNode.Text+'"';
  end;
  Delete(AttrText,1,1); //elimina primeiro espaço.

  //concatena os atributos do nó com o nome do nó.
  if AttrText<>'' then
  NodeText:=NodeText+' ('+AttrText+')';

  //concatena o valor do elemento.
  if XMLNode.IsTextElement then
  NodeText:=NodeText+' = '+XMLNode.NodeValue;
  NewTreeNode:=TreeView1.Items.AddChild(TreeNode, NodeText);

  if XMLNode.HasChildNodes then
  for I:=0 to XMLNode.ChildNodes.Count-1 do
  GenerateTree(XMLNode.ChildNodes[I], NewTreeNode);
end;

procedure TFormNfeArquivosXML.PngBitBtn1Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfeArquivosXML.PngBitBtn2Click(Sender: TObject);
begin
  TreeView1.FullExpand;
end;

procedure TFormNfeArquivosXML.PngBitBtn3Click(Sender: TObject);
begin
  TreeView1.FullCollapse;
end;

procedure TFormNfeArquivosXML.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  //nao consegui fazer mudar o icone do item selecionado.
{  Node.ImageIndex:=1;
  if NodeIdx<>Node.AbsoluteIndex then
  TreeView1.Items[NodeIdx].ImageIndex:=0;
  NodeIdx:=Node.AbsoluteIndex;}
end;

procedure TFormNfeArquivosXML.TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
begin
  Node.ImageIndex:=2;
end;

procedure TFormNfeArquivosXML.TreeView1Expanded(Sender: TObject; Node: TTreeNode);
begin
  Node.ImageIndex:=3;
end;

procedure TFormNfeArquivosXML.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeArquivosXML.FileListBox1Change(Sender: TObject);
begin
  if FileListBox1.ItemIndex<>-1 then
  begin
    Label5.Caption:=ExtractFileName(FileListBox1.FileName);
    XMLDocument1.LoadFromFile(FileListBox1.FileName);
    XMLDocument1.Active:=True;
    TreeView1.Items.Clear;
    GenerateTree(XMLDocument1.DocumentElement, nil);
    Label7.Caption:=XMLDocument1.Encoding;
    TreeView1.FullExpand;
    TreeView1.Items[0].Selected:=True;
  end;
end;

procedure TFormNfeArquivosXML.FormCreate(Sender: TObject);
var D,M,A: Word;
begin
  Label5.Caption:='';
  Label7.Caption:='';
  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  FileListBox1.Mask:=DM.TBNfeNFE_CHAVEACESSO.Value+'*.xml';
  FileListBox1.Directory:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
end;

procedure TFormNfeArquivosXML.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

initialization
  RegisterClass(TFormNfeArquivosXML);

finalization
  UnRegisterClass(TFormNfeArquivosXML);

end.
