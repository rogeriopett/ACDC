unit FciItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, PngBitBtn;

type
  TFormFciItens = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    Label21: TLabel;
    DBEdit99: TDBEdit;
    Label25: TLabel;
    DBEdit103: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBEdit32: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFciItens: TFormFciItens;

implementation
uses DataModSearch, DataMod, ProdutosLoc, DB, System.Generics.Collections;
{$R *.dfm}

//Nº Abreviatura Símbolos
//1 A ampère(s)
//2 Ah ampère(s)hora
//3 ASTM American Society for Testing Materials (Sociedade Americana de Ensaio de Materiais)
//4 Bq becquerel
//5 °C grau(s) Celsius
//6 CCD Charge Coupled Device (Dispositivo de Cargas Acopladas)
//7 cg centigrama(s)
//8 cm centímetro(s)
//9 cm2 centímetro(s) quadrado(s)
//10 cm3 centímetro(s) cúbico(s)
//11 cN centinewton(s)
//12 cSt centistokes
//13 DCI Denominação Comum Internacional
//14 g grama(s)
//15 Gbit gigabit(s)
//16 GHz gigahertz
//17 h hora(s)
//18 HP horse-power (cavalo-vapor)
//19 HRC rockwell C
//20 Hz hertz
//21 ISO Organização Internacional de Normalização
//22 IV infravermelho
//23 kbit quilobit(s)
//24 kcal quilocaloria(s)
//25 kg quilograma(s)
//26 kgf quilograma(s)-força
//27 kHz quilohertz
//28 kN quilonewton(s)
//29 kPa quilopascal(is)
//30 kV quilovolt(s)
//31 kVA quilovolt(s)-ampere(s)
//32 kvar quilovolt(s)-ampere(s) reativo(s)
//33 kW quilowatt(s)
//34 l litro(s)
//35 m metro(s)
//36 m- meta-
//37 m2 metro(s) quadrado(s)
//38 m3 metro(s) cúbico(s)
//39 mbar milibar(es)
//40 Mbit megabit(s)
//41 μCi microcurie(s)
//42 mg miligrama(s)
//43 MHz megahertz
//44 min minuto(s)
//45 mm milímetro(s)
//46 mN milinewton(s)
//47 MPa megapascal(is)
//48 MW megawatt(s)
//49 N newton(s)
//50 n° número
//51 nm nanometro(s)
//52 Nm newton(s)metro
//53 ns nanosegundo(s)
//54 o- orto-
//55 p- para-
//56 pH potencial hidrogeniônico
//57 s segundo(s)
//58 t tonelada(s)
//59 UV ultravioleta
//60 V volt(s)
//61 vol volume
//62 W watt(s)
//63 x° x grau(s)
//64 % por cento
//65 pç peça
//66 unid unidade
//67 99 Outras unidades

function TabelaUnidade(const Abreviatura: string): string;
var Unidades: TStringList;
begin
  Unidades:=TStringList.Create;
  Unidades.Values['a']    := 'A';
  Unidades.Values['ah']   := 'Ah';
  Unidades.Values['astm'] := 'ASTM';
  Unidades.Values['bq']   := 'Bq';
  Unidades.Values['°c']   := '°C';
  Unidades.Values['ccd']  := 'CCD';
  Unidades.Values['cg']   := 'cg';
  Unidades.Values['cm']   := 'cm';
  Unidades.Values['cm2']  := 'cm2';
  Unidades.Values['cm3']  := 'cm3';
  Unidades.Values['cn']   := 'cN';
  Unidades.Values['cst']  := 'cSt';
  Unidades.Values['dci']  := 'DCI';
  Unidades.Values['g']    := 'g';
  Unidades.Values['gr']   := 'g'; //gr=unidade nao oficial.
  Unidades.Values['gbit'] := 'Gbit';
  Unidades.Values['ghz']  := 'GHz';
  Unidades.Values['h']    := 'h';
  Unidades.Values['hp']   := 'HP';
  Unidades.Values['hrc']  := 'HRC';
  Unidades.Values['hz']   := 'Hz';
  Unidades.Values['iso']  := 'ISO';
  Unidades.Values['iv']   := 'IV';
  Unidades.Values['kbit'] := 'kbit';
  Unidades.Values['kcal'] := 'kcal';
  Unidades.Values['kg']   := 'kg';
  Unidades.Values['kgf']  := 'kgf';
  Unidades.Values['khz']  := 'kHz';
  Unidades.Values['kn']   := 'kN';
  Unidades.Values['kpa']  := 'kPa';
  Unidades.Values['kv']   := 'kV';
  Unidades.Values['kva']  := 'kVA';
  Unidades.Values['kvar'] := 'kvar';
  Unidades.Values['kw']   := 'kW';
  Unidades.Values['l']    := 'l';
  Unidades.Values['m']    := 'm';
  Unidades.Values['mt']   := 'm'; //mt=unidade nao oficial
  Unidades.Values['m-']   := 'm-';
  Unidades.Values['m2']   := 'm2';
  Unidades.Values['m3']   := 'm3';
  Unidades.Values['mbar'] := 'mbar';
  Unidades.Values['mbit'] := 'Mbit';
  Unidades.Values['μci']  := 'μCi';
  Unidades.Values['mg']   := 'mg';
  Unidades.Values['mhz']  := 'MHz';
  Unidades.Values['min']  := 'min';
  Unidades.Values['mm']   := 'mm';
  Unidades.Values['mn']   := 'mN';
  Unidades.Values['mpa']  := 'MPa';
  Unidades.Values['mw']   := 'MW';
  Unidades.Values['n']    := 'N';
  Unidades.Values['n°']   := 'n°';
  Unidades.Values['nm']   := 'nm';
  //Unidades.Values['nm']   := 'Nm'; //newton metro.. repetido em minusculo.
  Unidades.Values['ns']   := 'ns';
  Unidades.Values['o-']   := 'o-';
  Unidades.Values['p-']   := 'p-';
  Unidades.Values['ph']   := 'pH';
  Unidades.Values['s']    := 's';
  Unidades.Values['t']    := 't';
  Unidades.Values['uv']   := 'UV';
  Unidades.Values['v']    := 'V';
  Unidades.Values['vol']  := 'vol';
  Unidades.Values['w']    := 'W';
  Unidades.Values['x°']   := 'x°';
  Unidades.Values['%']    := '%';
  Unidades.Values['pç']   := 'pç';
  Unidades.Values['pc']   := 'pç'; //unidade nao oficial.
  Unidades.Values['pcs']  := 'pç'; //unidade nao oficial.
  Unidades.Values['unid'] := 'unid';
  Unidades.Values['und']  := 'unid'; //unidade nao oficial.
  Unidades.Values['un']   := 'unid'; //unidade nao oficial.
  Unidades.Values['99']   := '99';

  Result:=Unidades.Values[LowerCase(Abreviatura)];
  if Result='' then
  Result:='99';

  Unidades.Destroy;
end;

procedure TFormFciItens.BitBtn1Click(Sender: TObject);
begin
  DM.TBFciItens.Post;
  Close;
end;

procedure TFormFciItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFciItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormFciItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBFciItens.State in [dsInsert]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBFciItensFII_CLASSFISCAL.Clear;
    DM.TBFciItensFII_CODIGOBARRAS.Clear;
    DM.TBFciItensFII_NOME.Clear;
    DM.TBFciItensFII_UNIDADE.Clear;
    DM.TBFciItensFII_UNIDADEFCI.Clear;
    DM.TBFciItensFII_VALORSAIDA.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBFciItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin
      DM.TBFciItensFII_CLASSFISCAL.Value:=DMS.QYProdutosPRO_CLASSFISCAL.Value;
      DM.TBFciItensFII_CODIGOBARRAS.Value:=DMS.QYProdutosPRO_CODIGOBARRAS.Value;
      DM.TBFciItensFII_NOME.Value:=DMS.QYProdutosPRO_NOME.Value;
      DM.TBFciItensFII_UNIDADE.Value:=DMS.QYProdutosPRO_UNIDADE.Value;
      DM.TBFciItensFII_UNIDADEFCI.Value:=TabelaUnidade(DMS.QYProdutosPRO_UNIDADE.Value);
      DM.TBFciItensFII_VALORSAIDA.Value:=DMS.QYProdutosPRO_PRECOVENDA.Value;
    end else
    begin
      DM.TBFciItensFII_CLASSFISCAL.Clear;
      DM.TBFciItensFII_CODIGOBARRAS.Clear;
      DM.TBFciItensFII_NOME.Clear;
      DM.TBFciItensFII_UNIDADE.Clear;
      DM.TBFciItensFII_UNIDADEFCI.Clear;
      DM.TBFciItensFII_VALORSAIDA.Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormFciItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormFciItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormFciItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBFciItens.State in [dsInsert, dsEdit] then
  DM.TBFciItens.Cancel;
end;

procedure TFormFciItens.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    DM.TBFciItensFII_CLASSFISCAL.Value:=FormProdutosLoc.QYProdutosPRO_CLASSFISCAL.Value;
    DM.TBFciItensFII_CODIGOBARRAS.Value:=FormProdutosLoc.QYProdutosPRO_CODIGOBARRAS.Value;
    DM.TBFciItensFII_NOME.Value:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
    DM.TBFciItensFII_PRODUTO.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
    DM.TBFciItensFII_UNIDADE.Value:=FormProdutosLoc.QYProdutosPRO_UNIDADE.Value;
    DM.TBFciItensFII_UNIDADEFCI.Value:=TabelaUnidade(FormProdutosLoc.QYProdutosPRO_UNIDADE.Value);
    DM.TBFciItensFII_VALORSAIDA.Value:=FormProdutosLoc.QYProdutosPRO_PRECOVENDA.Value;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

end.
