unit HtmlEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  PngSpeedButton, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw;

type
  TFrameHtmlEditor = class(TFrame)
    Panel2: TPanel;
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Bevel4: TBevel;
    PngSpeedButton19: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    PngSpeedButton15: TPngSpeedButton;
    PngSpeedButton14: TPngSpeedButton;
    PngSpeedButton16: TPngSpeedButton;
    PngSpeedButton18: TPngSpeedButton;
    PngSpeedButton10: TPngSpeedButton;
    PngSpeedButton11: TPngSpeedButton;
    PngSpeedButton12: TPngSpeedButton;
    PngSpeedButton13: TPngSpeedButton;
    PngSpeedButton20: TPngSpeedButton;
    PngSpeedButton21: TPngSpeedButton;
    ComboBox1: TComboBox;
    PngSpeedButton1: TPngSpeedButton;
    ComboBox2: TComboBox;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    Bevel2: TBevel;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton6: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    Bevel3: TBevel;
    PngSpeedButton9: TPngSpeedButton;
    PngSpeedButton22: TPngSpeedButton;
    PngSpeedButton23: TPngSpeedButton;
    PngSpeedButton24: TPngSpeedButton;
    Bevel5: TBevel;
    PngSpeedButton17: TPngSpeedButton;
    ColorDialog1: TColorDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PngSpeedButton5: TPngSpeedButton;
    procedure PngSpeedButton10Click(Sender: TObject);
    procedure PngSpeedButton11Click(Sender: TObject);
    procedure PngSpeedButton12Click(Sender: TObject);
    procedure PngSpeedButton9Click(Sender: TObject);
    procedure PngSpeedButton20Click(Sender: TObject);
    procedure PngSpeedButton21Click(Sender: TObject);
    procedure PngSpeedButton19Click(Sender: TObject);
    procedure PngSpeedButton18Click(Sender: TObject);
    procedure PngSpeedButton14Click(Sender: TObject);
    procedure PngSpeedButton15Click(Sender: TObject);
    procedure PngSpeedButton16Click(Sender: TObject);
    procedure PngSpeedButton23Click(Sender: TObject);
    procedure PngSpeedButton22Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton24Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton17Click(Sender: TObject);
    procedure PngSpeedButton13Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const [Ref] URL: OleVariant);
  private
    { Private declarations }
    function GetIEHandle(WebBrowser: TWebbrowser; ClassName: String): HWND;
    procedure DocumentoEmBranco(WebBrowser: TWebBrowser);
  public
    { Public declarations }
    procedure InicializarFrame;
    procedure AlterarParaModoEdicao;
    procedure SalvarCodigoHTML(Arquivo: String);
    procedure CarregarCodigoHTML(HTMLCode: String);
  end;

implementation
uses Activex, MsHtml;
{$R *.dfm}

var
  HTMLDocumento:IHTMLDocument2;

const
  //https://github.com/danielfrimerman/Delphi-EmbeddedWB-XE3/blob/master/Source/EWB.IEConst.pas
  //https://searchcode.com/codesearch/view/4333371/
  //https://code.google.com/p/nadesiko/source/browse/trunk/vnako_unit/UIWebBrowser/ieconst.pas?r=259
  IDM_UNKNOWN                =  0;
  IDM_ALIGNBOTTOM            =  1;
  IDM_ALIGNHORIZONTALCENTERS =  2;
  IDM_ALIGNLEFT              =  3;
  IDM_ALIGNRIGHT             =  4;
  IDM_ALIGNTOGRID            =  5;
  IDM_ALIGNTOP               =  6;
  IDM_ALIGNVERTICALCENTERS   =  7;
  IDM_ARRANGEBOTTOM          =  8;
  IDM_ARRANGERIGHT           =  9;
  IDM_BRINGFORWARD           = 10;
  IDM_BRINGTOFRONT           = 11;
  IDM_CENTERHORIZONTALLY     = 12;
  IDM_CENTERVERTICALLY       = 13;
  IDM_CODE                   = 14;
  IDM_DELETE                 = 17;
  IDM_FONTNAME               = 18;
  IDM_FONTSIZE               = 19;
  IDM_GROUP                  = 20;
  IDM_HORIZSPACECONCATENATE  = 21;
  IDM_HORIZSPACEDECREASE     = 22;
  IDM_HORIZSPACEINCREASE     = 23;
  IDM_HORIZSPACEMAKEEQUAL    = 24;
  IDM_INSERTOBJECT           = 25;
  IDM_MULTILEVELREDO         = 30;
  IDM_SENDBACKWARD           = 32;
  IDM_SENDTOBACK             = 33;
  IDM_SHOWTABLE              = 34;
  IDM_SIZETOCONTROL          = 35;
  IDM_SIZETOCONTROLHEIGHT    = 36;
  IDM_SIZETOCONTROLWIDTH     = 37;
  IDM_SIZETOFIT              = 38;
  IDM_SIZETOGRID             = 39;
  IDM_SNAPTOGRID             = 40;
  IDM_TABORDER               = 41;
  IDM_TOOLBOX                = 42;
  IDM_MULTILEVELUNDO         = 44;
  IDM_UNGROUP                = 45;
  IDM_VERTSPACECONCATENATE   = 46;
  IDM_VERTSPACEDECREASE      = 47;
  IDM_VERTSPACEINCREASE      = 48;
  IDM_VERTSPACEMAKEEQUAL     = 49;
  IDM_JUSTIFYFULL            = 50;
  IDM_BACKCOLOR              = 51;
  IDM_BOLD                   = 52;
  IDM_BORDERCOLOR            = 53;
  IDM_FLAT                   = 54;
  IDM_FORECOLOR              = 55;
  IDM_ITALIC                 = 56;
  IDM_JUSTIFYCENTER          = 57;
  IDM_JUSTIFYGENERAL         = 58;
  IDM_JUSTIFYLEFT            = 59;
  IDM_JUSTIFYRIGHT           = 60;
  IDM_RAISED                 = 61;
  IDM_SUNKEN                 = 62;
  IDM_UNDERLINE              = 63;
  IDM_CHISELED               = 64;
  IDM_ETCHED                 = 65;
  IDM_SHADOWED               = 66;
  IDM_FIND                   = 67;
  IDM_SHOWGRID               = 69;
  IDM_OBJECTVERBLIST0        = 72;
  IDM_OBJECTVERBLIST1        = 73;
  IDM_OBJECTVERBLIST2        = 74;
  IDM_OBJECTVERBLIST3        = 75;
  IDM_OBJECTVERBLIST4        = 76;
  IDM_OBJECTVERBLIST5        = 77;
  IDM_OBJECTVERBLIST6        = 78;
  IDM_OBJECTVERBLIST7        = 79;
  IDM_OBJECTVERBLIST8        = 80;
  IDM_OBJECTVERBLIST9        = 81;
  IDM_CONVERTOBJECT          = 82;
  IDM_CUSTOMCONTROL          = 83;
  IDM_CUSTOMIZEITEM          = 84;
  IDM_RENAME                 = 85;
  IDM_IMPORT                 = 86;
  IDM_NEWPAGE                = 87;
  IDM_MOVE                   = 88;
  IDM_CANCEL                 = 89;
  IDM_FONT                   = 90;
  IDM_STRIKETHROUGH          = 91;
  IDM_DELETEWORD             = 92;

  IDM_FOLLOW_ANCHOR         =  2008;

  IDM_INSINPUTIMAGE         =  2114;
  IDM_INSINPUTBUTTON        =  2115;
  IDM_INSINPUTRESET         =  2116;
  IDM_INSINPUTSUBMIT        =  2117;
  IDM_INSINPUTUPLOAD        =  2118;
  IDM_INSFIELDSET           =  2119;

  IDM_PASTEINSERT           =  2120;
  IDM_REPLACE               =  2121;
  IDM_EDITSOURCE            =  2122;
  IDM_BOOKMARK              =  2123;
  IDM_HYPERLINK             =  2124;
  IDM_UNLINK                =  2125;
  IDM_BROWSEMODE            =  2126;
  IDM_EDITMODE              =  2127;
  IDM_UNBOOKMARK            =  2128;

  IDM_TOOLBARS              =  2130;
  IDM_STATUSBAR             =  2131;
  IDM_FORMATMARK            =  2132;
  IDM_TEXTONLY              =  2133;
  IDM_OPTIONS               =  2135;
  IDM_FOLLOWLINKC           =  2136;
  IDM_FOLLOWLINKN           =  2137;
  IDM_VIEWSOURCE            =  2139;
  IDM_ZOOMPOPUP             =  2140;

  // IDM_BASELINEFONT1, IDM_BASELINEFONT2, IDM_BASELINEFONT3, IDM_BASELINEFONT4,
  // and IDM_BASELINEFONT5 should be consecutive integers;
  //
  IDM_BASELINEFONT1         =  2141;
  IDM_BASELINEFONT2         =  2142;
  IDM_BASELINEFONT3         =  2143;
  IDM_BASELINEFONT4         =  2144;
  IDM_BASELINEFONT5         =  2145;

  IDM_HORIZONTALLINE        =  2150;
  IDM_LINEBREAKNORMAL       =  2151;
  IDM_LINEBREAKLEFT         =  2152;
  IDM_LINEBREAKRIGHT        =  2153;
  IDM_LINEBREAKBOTH         =  2154;
  IDM_NONBREAK              =  2155;
  IDM_SPECIALCHAR           =  2156;
  IDM_HTMLSOURCE            =  2157;
  IDM_IFRAME                =  2158;
  IDM_HTMLCONTAIN           =  2159;
  IDM_TEXTBOX               =  2161;
  IDM_TEXTAREA              =  2162;
  IDM_CHECKBOX              =  2163;
  IDM_RADIOBUTTON           =  2164;
  IDM_DROPDOWNBOX           =  2165;
  IDM_LISTBOX               =  2166;
  IDM_BUTTON                =  2167;
  IDM_IMAGE                 =  2168;
  IDM_OBJECT                =  2169;
  IDM_1D                    =  2170;
  IDM_IMAGEMAP              =  2171;
  IDM_FILE                  =  2172;
  IDM_COMMENT               =  2173;
  IDM_SCRIPT                =  2174;
  IDM_JAVAAPPLET            =  2175;
  IDM_PLUGIN                =  2176;
  IDM_PAGEBREAK             =  2177;

  IDM_PARAGRAPH             =  2180;
  IDM_FORM                  =  2181;
  IDM_MARQUEE               =  2182;
  IDM_LIST                  =  2183;
  IDM_ORDERLIST             =  2184;
  IDM_UNORDERLIST           =  2185;
  IDM_INDENT                =  2186;
  IDM_OUTDENT               =  2187;
  IDM_PREFORMATTED          =  2188;
  IDM_ADDRESS               =  2189;
  IDM_BLINK                 =  2190;
  IDM_DIV                   =  2191;

  IDM_TABLEINSERT           =  2200;
  IDM_RCINSERT              =  2201;
  IDM_CELLINSERT            =  2202;
  IDM_CAPTIONINSERT         =  2203;
  IDM_CELLMERGE             =  2204;
  IDM_CELLSPLIT             =  2205;
  IDM_CELLSELECT            =  2206;
  IDM_ROWSELECT             =  2207;
  IDM_COLUMNSELECT          =  2208;
  IDM_TABLESELECT           =  2209;
  IDM_TABLEPROPERTIES       =  2210;
  IDM_CELLPROPERTIES        =  2211;
  IDM_ROWINSERT             =  2212;
  IDM_COLUMNINSERT          =  2213;

  IDM_HELP_CONTENT          =  2220;
  IDM_HELP_ABOUT            =  2221;
  IDM_HELP_README           =  2222;

  IDM_REMOVEFORMAT          =  2230;
  IDM_PAGEINFO              =  2231;
  IDM_TELETYPE              =  2232;
  IDM_GETBLOCKFMTS          =  2233;
  IDM_BLOCKFMT              =  2234;
  IDM_SHOWHIDE_CODE         =  2235;
  IDM_TABLE                 =  2236;

  IDM_COPYFORMAT            =  2237;
  IDM_PASTEFORMAT           =  2238;
  IDM_GOTO                  =  2239;

  IDM_CHANGEFONT            =  2240;
  IDM_CHANGEFONTSIZE        =  2241;
  IDM_INCFONTSIZE           =  2242;
  IDM_DECFONTSIZE           =  2243;
  IDM_INCFONTSIZE1PT        =  2244;
  IDM_DECFONTSIZE1PT        =  2245;
  IDM_CHANGECASE            =  2246;
  IDM_SUBSCRIPT             =  2247;
  IDM_SUPERSCRIPT           =  2248;
  IDM_SHOWSPECIALCHAR       =  2249;

  IDM_CENTERALIGNPARA       =  2250;
  IDM_LEFTALIGNPARA         =  2251;
  IDM_RIGHTALIGNPARA        =  2252;
  IDM_REMOVEPARAFORMAT      =  2253;
  IDM_APPLYNORMAL           =  2254;
  IDM_APPLYHEADING1         =  2255;
  IDM_APPLYHEADING2         =  2256;
  IDM_APPLYHEADING3         =  2257;

  IDM_DOCPROPERTIES         =  2260;
  IDM_ADDFAVORITES          =  2261;
  IDM_COPYSHORTCUT          =  2262;
  IDM_SAVEBACKGROUND        =  2263;
  IDM_SETWALLPAPER          =  2264;
  IDM_COPYBACKGROUND        =  2265;
  IDM_CREATESHORTCUT        =  2266;
  IDM_PAGE                  =  2267;
  IDM_SAVETARGET            =  2268;
  IDM_SHOWPICTURE           =  2269;
  IDM_SAVEPICTURE           =  2270;
  IDM_DYNSRCPLAY            =  2271;
  IDM_DYNSRCSTOP            =  2272;
  IDM_PRINTTARGET           =  2273;
  IDM_IMGARTPLAY            =  2274;
  IDM_IMGARTSTOP            =  2275;
  IDM_IMGARTREWIND          =  2276;
  IDM_PRINTQUERYJOBSPENDING =  2277;

  IDM_CONTEXTMENU           =  2280;
  IDM_GOBACKWARD            =  2282;
  IDM_GOFORWARD             =  2283;
  IDM_PRESTOP               =  2284;

  IDM_CREATELINK            =  2290;
  IDM_COPYCONTENT           =  2291;

  IDM_LANGUAGE              =  2292;

  IDM_REFRESH               =  2300;
  IDM_STOPDOWNLOAD          =  2301;

  IDM_ENABLE_INTERACTION    =  2302;

  IDM_LAUNCHDEBUGGER        =  2310;
  IDM_BREAKATNEXT           =  2311;

  IDM_INSINPUTHIDDEN        =  2312;
  IDM_INSINPUTPASSWORD      =  2313;

  IDM_OVERWRITE             =  2314;

  IDM_PARSECOMPLETE         =  2315;

  IDM_HTMLEDITMODE          =  2316;

  IDM_REGISTRYREFRESH       =  2317;
  IDM_COMPOSESETTINGS       =  2318;

  IDM_SHOWALLTAGS           =  2320;
  IDM_SHOWALIGNEDSITETAGS   =  2321;
  IDM_SHOWSCRIPTTAGS        =  2322;
  IDM_SHOWSTYLETAGS         =  2323;
  IDM_SHOWCOMMENTTAGS       =  2324;
  IDM_SHOWAREATAGS          =  2325;
  IDM_SHOWUNKNOWNTAGS       =  2326;
  IDM_SHOWMISCTAGS          =  2327;
  IDM_SHOWZEROBORDERATDESIGNTIME       =  2328;

  IDM_AUTODETECT            =  2329;

  IDM_SCRIPTDEBUGGER        =  2330;

  IDM_GETBYTESDOWNLOADED    =  2331;

  IDM_NOACTIVATENORMALOLECONTROLS      =  2332;
  IDM_NOACTIVATEDESIGNTIMECONTROLS     =  2333;
  IDM_NOACTIVATEJAVAAPPLETS            =  2334;

  IDM_SHOWWBRTAGS           =  2340;

  IDM_PERSISTSTREAMSYNC     =  2341;
  IDM_SETDIRTY              =  2342;


  IDM_MIMECSET__FIRST__         =  3609;
  IDM_MIMECSET__LAST__          =  3640;

  IDM_MENUEXT_FIRST__     =  3700;
  IDM_MENUEXT_LAST__      =  3732;
  IDM_MENUEXT_COUNT       =  3733;

  ID_EDITMODE = 32801;

  IDM_OPEN                  =  2000;
  IDM_NEW                   =  2001;
  IDM_SAVE                  =  70;
  IDM_SAVEAS                =  71;
  IDM_SAVECOPYAS            =  2002;
  IDM_PRINTPREVIEW          =  2003;
  IDM_PRINT                 =  27;
  IDM_PAGESETUP             =  2004;
  IDM_SPELL                 =  2005;
  IDM_PASTESPECIAL          =  2006;
  IDM_CLEARSELECTION        =  2007;
  IDM_PROPERTIES            =  28;
  IDM_REDO                  =  29;
  IDM_UNDO                  =  43;
  IDM_SELECTALL             =  31;
  IDM_ZOOMPERCENT           =  50;
  IDM_GETZOOM               =  68;
  IDM_STOP                  =  2138;
  IDM_COPY                  =  15;
  IDM_CUT                   =  16;
  IDM_PASTE                 =  26;

  IDM_TRIED_IS_1D_ELEMENT       = 0;   //[out,VT_BOOL]
  IDM_TRIED_IS_2D_ELEMENT       = 1;   //[out,VT_BOOL]
  IDM_TRIED_NUDGE_ELEMENT       = 2;   //[in,VT_BYREF VARIANT.byref=LPPOINT]
  IDM_TRIED_SET_ALIGNMENT       = 3;   //[in,VT_BYREF VARIANT.byref=LPPOINT]
  IDM_TRIED_MAKE_ABSOLUTE       = 4;
  IDM_TRIED_LOCK_ELEMENT        = 5;
  IDM_TRIED_SEND_TO_BACK        = 6;
  IDM_TRIED_SEND_TO_FRONT       = 7;
  IDM_TRIED_SEND_BACKWARD       = 8;
  IDM_TRIED_SEND_FORWARD        = 9;
  IDM_TRIED_SEND_BEHIND_1D      = 10;
  IDM_TRIED_SEND_FRONT_1D       = 11;
  IDM_TRIED_CONSTRAIN           = 12;   //[in,VT_BOOL]
  IDM_TRIED_SET_2D_DROP_MODE    = 13;   //[in,VT_BOOL]
  IDM_TRIED_INSERTROW           = 14;
  IDM_TRIED_INSERTCOL           = 15;
  IDM_TRIED_DELETEROWS          = 16;
  IDM_TRIED_DELETECOLS          = 17;
  IDM_TRIED_MERGECELLS          = 18;
  IDM_TRIED_SPLITCELL           = 19;
  IDM_TRIED_INSERTCELL          = 20;
  IDM_TRIED_DELETECELLS         = 21;
  IDM_TRIED_INSERTTABLE         = 22;   //[in, VT_ARRAY]

//WARNING WARNING WARNING!!! Don't forget to modify IDM_TRIED_LAST_CID
//when you add new Command IDs

  IDM_TRIED_LAST_CID           = IDM_TRIED_INSERTTABLE;

//Função responsável para a execução de comandos internos no webbrowser, esses que serão de grande
//importância para o funcionamento de nosso Editor, ou seja: Negrito, Italico, Inserir imagem, etc.
function TFrameHtmlEditor.GetIEHandle(WebBrowser: TWebbrowser; ClassName: String): HWND;
var HandleChild, HandleTemp: HWND;
  OleCtrl: TOleControl;
  szClass: array [0..255] of Char;
begin
  OleCtrl:=WebBrowser;
  HandleTemp:=OleCtrl.Handle;
  while (true) do
  begin
    HandleChild:=GetWindow(HandleTemp, GW_CHILD);
    GetClassName(HandleChild, szClass, SizeOf(szClass));
    if (String(szClass)=ClassName) then
    begin
      Result:=HandleChild;
      Exit;
    end;
    HandleTemp:=HandleChild;
  end;
  Result:=0;
end;

procedure TFrameHtmlEditor.PngSpeedButton1Click(Sender: TObject);
begin
  (WebBrowser1.Document as IHTMLDocument2).DesignMode := 'On';
  //AlterarParaModoEdicao;
  //DocumentoEmBranco(WebBrowser1);
end;

procedure TFrameHtmlEditor.PngSpeedButton2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  WebBrowser1.Navigate(OpenDialog1.FileName);
end;

procedure TFrameHtmlEditor.PngSpeedButton3Click(Sender: TObject);
var
  HTMLDocument: IHTMLDocument2;
  PersistFile: IPersistFile;
begin
  HTMLDocument:=WebBrowser1.Document as IHTMLDocument2;
  if SaveDialog1.Execute then
  begin
    PersistFile:=HTMLDocument as IPersistFile;
    PersistFile.Save(StringToOleStr(SaveDialog1.FileName),System.True);
  end;
end;

procedure TFrameHtmlEditor.PngSpeedButton4Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_UNDO,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton5Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_REDO,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton6Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_CUT,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton7Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_COPY,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton8Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_PASTE,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton9Click(Sender: TObject);
begin
  HTMLDocumento:=WebBrowser1.Document as IHTMLDocument2;
  if ColorDialog1.Execute then
  HTMLDocumento.execCommand('ForeColor',False,ColorDialog1.Color);
end;

procedure TFrameHtmlEditor.SalvarCodigoHTML(Arquivo: String);
var
  HTMLDocument: IHTMLDocument2;
  PersistFile: IPersistFile;
begin
  HTMLDocument:=WebBrowser1.Document as IHTMLDocument2;
  PersistFile:=HTMLDocument as IPersistFile;
  PersistFile.Save(StringToOleStr(Arquivo),System.True);
end;

procedure TFrameHtmlEditor.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const [Ref] URL: OleVariant);
begin
  //AlterarParaModoEdicao;
end;

procedure TFrameHtmlEditor.PngSpeedButton10Click(Sender: TObject);
begin
  HTMLDocumento:=WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Bold',False,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton11Click(Sender: TObject);
begin
  HTMLDocumento:=WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Italic',False,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton12Click(Sender: TObject);
begin
 // HTMLDocumento:=WebBrowser1.Document as IHTMLDocument2;
 // HTMLDocumento.execCommand('Underline',False,0);
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_UNDERLINE,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton13Click(Sender: TObject);
begin
// SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_STRIKETHROUGH,0);
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,48,10);
//  HTMLDocumento:=WebBrowser1.Document as IHTMLDocument2;
//  HTMLDocumento.execCommand('strikethrough',False,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton14Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_JUSTIFYLEFT,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton15Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_JUSTIFYGENERAL,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton16Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_JUSTIFYRIGHT,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton17Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_JUSTIFYFULL,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton18Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_INDENT,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton19Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_OUTDENT,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton20Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_ORDERLIST,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton21Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_UNORDERLIST,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton22Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_HORIZONTALLINE,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton23Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_IMAGE,0);
end;

procedure TFrameHtmlEditor.PngSpeedButton24Click(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1,'Internet Explorer_Server'),WM_COMMAND,IDM_HYPERLINK,0);
end;

procedure TFrameHtmlEditor.DocumentoEmBranco(WebBrowser: TWebBrowser);
begin
  WebBrowser.Navigate('about:blank');
end;

procedure TFrameHtmlEditor.CarregarCodigoHTML(HTMLCode: String);
var SL: TStringList;
  MS: TMemoryStream;
begin
   //WebBrowser1.Navigate('about:blank') ;
   //while WebBrowser1.ReadyState < READYSTATE_INTERACTIVE do
   // Application.ProcessMessages;
   (WebBrowser1.Document as IHTMLDocument2).designMode:='On';

   if Assigned(WebBrowser1.Document) then
   begin
     SL:=TStringList.Create;
     try
       MS:=TMemoryStream.Create;
       try
         SL.Text:=HTMLCode;
         SL.SaveToStream(MS);
         MS.Seek(0,0);
         (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(MS));
       finally
         MS.Free;
       end;
     finally
       SL.Free;
     end;
   end;
end;

procedure TFrameHtmlEditor.ComboBox1Change(Sender: TObject);
begin
  HTMLDocumento:=WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('FontName',False,ComboBox1.Text);
end;

procedure TFrameHtmlEditor.ComboBox2Change(Sender: TObject);
begin
  HTMLDocumento:=WebBrowser1.Document as IHTMLDocument2;
  case ComboBox2.ItemIndex of
    0: HTMLDocumento.execCommand('FontSize',False,1);
    1: HTMLDocumento.execCommand('FontSize',False,2);
    2: HTMLDocumento.execCommand('FontSize',False,3);
    3: HTMLDocumento.execCommand('FontSize',False,5);
    4: HTMLDocumento.execCommand('FontSize',False,6);
    5: HTMLDocumento.execCommand('FontSize',False,7);
  end;
end;

procedure TFrameHtmlEditor.InicializarFrame;
var I: Integer;
begin
  DocumentoEmBranco(WebBrowser1);
  //altera o modo design do webbrowse para ON, ou seja, toda página que abrirmos poderemos alterar, selecionar, excluir, inserir...
//  (WebBrowser1.Document as IHTMLDocument2).DesignMode := 'On';

  //Insere todas as fontes instaladas no computador dentro do combobox.
  ComboBox1.Items:=Screen.Fonts;
  I:=ComboBox1.Items.IndexOf('Arial');
  ComboBox1.ItemIndex:=I;
  ComboBox1Change(Self);

  ComboBox2.ItemIndex:=2; //tamanho normal.
  ComboBox2Change(Self);
end;

procedure TFrameHtmlEditor.AlterarParaModoEdicao;
begin
  //altera o modo design do webbrowse para ON, ou seja, toda página que abrirmos poderemos alterar, selecionar, excluir, inserir...
  (WebBrowser1.Document as IHTMLDocument2).DesignMode := 'On';
  Application.ProcessMessages;
end;

end.
