unit NfceArquivosXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.FileCtrl, Vcl.ComCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls;

type
  TFormNfceArquivosXML = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    Bevel1: TBevel;
    BitBtn2: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    TreeView1: TTreeView;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    FileListBox1: TFileListBox;
    Panel4: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    PngImageList1: TPngImageList;
    XMLDocument1: TXMLDocument;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Expanded(Sender: TObject; Node: TTreeNode);
    procedure BitBtn2Click(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure GenerateTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
  public
    { Public declarations }
  end;

var
  FormNfceArquivosXML: TFormNfceArquivosXML;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormNfceArquivosXML.GenerateTree(XMLNode: IXMLNode; TreeNode: TTreeNode);
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

procedure TFormNfceArquivosXML.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfceArquivosXML.FileListBox1Change(Sender: TObject);
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

procedure TFormNfceArquivosXML.FormCreate(Sender: TObject);
var D,M,A: Word;
begin
  Label5.Caption:='';
  Label7.Caption:='';
  DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
  FileListBox1.Mask:=DM.TBNfceNFC_CHAVEACESSO.Value+'*.xml';
  FileListBox1.Directory:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
end;

procedure TFormNfceArquivosXML.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfceArquivosXML.PngBitBtn1Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfceArquivosXML.PngBitBtn2Click(Sender: TObject);
begin
  TreeView1.FullExpand;
end;

procedure TFormNfceArquivosXML.PngBitBtn3Click(Sender: TObject);
begin
  TreeView1.FullCollapse;
end;

procedure TFormNfceArquivosXML.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  //nao consegui fazer mudar o icone do item selecionado.
{  Node.ImageIndex:=1;
  if NodeIdx<>Node.AbsoluteIndex then
  TreeView1.Items[NodeIdx].ImageIndex:=0;
  NodeIdx:=Node.AbsoluteIndex;}
end;

procedure TFormNfceArquivosXML.TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
begin
  Node.ImageIndex:=2;
end;

procedure TFormNfceArquivosXML.TreeView1Expanded(Sender: TObject; Node: TTreeNode);
begin
  Node.ImageIndex:=3;
end;

initialization
  RegisterClass(TFormNfceArquivosXML);

finalization
  UnRegisterClass(TFormNfceArquivosXML);

end.
