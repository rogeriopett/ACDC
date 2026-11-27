unit Parametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ComCtrls, Buttons, ExtCtrls, DBSBtn, Menus,
  DB, PngSpeedButton, ACBrCTe, ImgList, PngImageList, Grids, DBGrids, System.ImageList,
  PngBitBtn, DBNavBtn, ACBrBase, ACBrDFe, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.CheckLst;

type
  TFormParametros = class(TForm)
    PageControl1: TPageControl;
    MainMenu1: TMainMenu;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    GroupBox2: TGroupBox;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    DBEdit28: TDBEdit;
    DBEdit33: TDBEdit;
    ComboBox2: TComboBox;
    GroupBox7: TGroupBox;
    Label50: TLabel;
    Label16: TLabel;
    Label77: TLabel;
    ComboBox12: TComboBox;
    ComboBox3: TComboBox;
    GroupBox9: TGroupBox;
    Label66: TLabel;
    Label67: TLabel;
    Label69: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    ComboBox5: TComboBox;
    Edit3: TEdit;
    GroupBox8: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label68: TLabel;
    Label78: TLabel;
    Label83: TLabel;
    ComboBox4: TComboBox;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Edit2: TEdit;
    DBEdit24: TDBEdit;
    DBComboBox29: TDBComboBox;
    DBComboBox30: TDBComboBox;
    Label76: TLabel;
    DBEdit27: TDBEdit;
    Label70: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label48: TLabel;
    Label53: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    TabSheet1: TTabSheet;
    Label51: TLabel;
    DBEdit36: TDBEdit;
    Label43: TLabel;
    TabSheet5: TTabSheet;
    Label82: TLabel;
    DBEdit34: TDBEdit;
    Label23: TLabel;
    DBEdit37: TDBEdit;
    Label44: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label45: TLabel;
    DBComboBox20: TDBComboBox;
    Label87: TLabel;
    Locadora: TTabSheet;
    Label90: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    Label92: TLabel;
    Label100: TLabel;
    Edit7: TEdit;
    DBEdit45: TDBEdit;
    Label105: TLabel;
    TabSheet6: TTabSheet;
    Label116: TLabel;
    DBEdit48: TDBEdit;
    DBComboBox45: TDBComboBox;
    Label117: TLabel;
    TabSheet8: TTabSheet;
    Label121: TLabel;
    DBEdit49: TDBEdit;
    Label122: TLabel;
    GroupBox10: TGroupBox;
    Label126: TLabel;
    DBComboBox52: TDBComboBox;
    SpeedButton1: TPngSpeedButton;
    Edit9: TEdit;
    Label127: TLabel;
    DBEdit50: TDBEdit;
    Label128: TLabel;
    TabSheet11: TTabSheet;
    Label132: TLabel;
    Label134: TLabel;
    Label136: TLabel;
    Label138: TLabel;
    DBEdit51: TDBEdit;
    Label141: TLabel;
    DBComboBox59: TDBComboBox;
    GroupBox13: TGroupBox;
    Label75: TLabel;
    DBComboBox28: TDBComboBox;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    OpenDialog1: TOpenDialog;
    Label25: TLabel;
    Label179: TLabel;
    DBComboBox76: TDBComboBox;
    Label97: TLabel;
    DBEdit71: TDBEdit;
    DBEdit74: TDBEdit;
    Label176: TLabel;
    DBEdit52: TDBEdit;
    Label155: TLabel;
    TabSheet13: TTabSheet;
    Label157: TLabel;
    DBEdit53: TDBEdit;
    GroupBox5: TGroupBox;
    Label158: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    Label159: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    Label185: TLabel;
    Label186: TLabel;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    Label187: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    Label191: TLabel;
    Label192: TLabel;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    Label193: TLabel;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    Label197: TLabel;
    Label198: TLabel;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    Label199: TLabel;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    Label203: TLabel;
    Label204: TLabel;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    Label205: TLabel;
    GroupBox11: TGroupBox;
    Label207: TLabel;
    DBComboBox89: TDBComboBox;
    DBEdit91: TDBEdit;
    Label208: TLabel;
    TabSheet14: TTabSheet;
    Label209: TLabel;
    DBEdit92: TDBEdit;
    GroupBox15: TGroupBox;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    Label224: TLabel;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit98: TDBEdit;
    Edit11: TEdit;
    DBEdit99: TDBEdit;
    Label226: TLabel;
    Label227: TLabel;
    DBComboBox97: TDBComboBox;
    DBComboBox99: TDBComboBox;
    Label229: TLabel;
    DBEdit100: TDBEdit;
    Label230: TLabel;
    Label231: TLabel;
    DBEdit101: TDBEdit;
    SpeedButton4: TPngSpeedButton;
    DBEdit12: TDBEdit;
    Label24: TLabel;
    TabSheet12: TTabSheet;
    Label242: TLabel;
    Label243: TLabel;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    Label246: TLabel;
    DBEdit109: TDBEdit;
    PngImageList1: TPngImageList;
    DBComboBox104: TDBComboBox;
    Label247: TLabel;
    Label279: TLabel;
    DBEdit110: TDBEdit;
    PngSpeedButton4: TPngSpeedButton;
    TabSheet15: TTabSheet;
    DBEdit117: TDBEdit;
    PngSpeedButton5: TPngSpeedButton;
    Label287: TLabel;
    DBComboBox137: TDBComboBox;
    Label289: TLabel;
    DBComboBox138: TDBComboBox;
    Label290: TLabel;
    DBEdit120: TDBEdit;
    PngSpeedButton7: TPngSpeedButton;
    Label292: TLabel;
    DBEdit123: TDBEdit;
    DBComboBox139: TDBComboBox;
    Label293: TLabel;
    Label294: TLabel;
    Label295: TLabel;
    DBEdit124: TDBEdit;
    DBEdit125: TDBEdit;
    TabSheet16: TTabSheet;
    DBEdit126: TDBEdit;
    Label297: TLabel;
    Label298: TLabel;
    DBEdit127: TDBEdit;
    PngSpeedButton8: TPngSpeedButton;
    DBComboBox142: TDBComboBox;
    Label300: TLabel;
    TabSheet17: TTabSheet;
    Label303: TLabel;
    DBEdit128: TDBEdit;
    PngSpeedButton9: TPngSpeedButton;
    TabSheet18: TTabSheet;
    Label308: TLabel;
    DBEdit130: TDBEdit;
    GroupBox20: TGroupBox;
    Label309: TLabel;
    Label310: TLabel;
    Label311: TLabel;
    Label312: TLabel;
    Label313: TLabel;
    Label314: TLabel;
    DBEdit131: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit134: TDBEdit;
    ComboBox9: TComboBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox5: TDBComboBox;
    Label26: TLabel;
    Label31: TLabel;
    DBEdit136: TDBEdit;
    PngSpeedButton10: TPngSpeedButton;
    DBEdit137: TDBEdit;
    Label32: TLabel;
    PngSpeedButton11: TPngSpeedButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    TabSheet19: TTabSheet;
    Label13: TLabel;
    DBEdit138: TDBEdit;
    PngSpeedButton12: TPngSpeedButton;
    DBEdit139: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit140: TDBEdit;
    Label35: TLabel;
    DBEdit141: TDBEdit;
    Label37: TLabel;
    DBEdit143: TDBEdit;
    Label38: TLabel;
    TabSheet20: TTabSheet;
    Label40: TLabel;
    DBEdit145: TDBEdit;
    Label110: TLabel;
    Label111: TLabel;
    Label144: TLabel;
    DBEdit146: TDBEdit;
    DBEdit147: TDBEdit;
    DBComboBox8: TDBComboBox;
    Label145: TLabel;
    DBComboBox9: TDBComboBox;
    GroupBox3: TGroupBox;
    Label146: TLabel;
    Label149: TLabel;
    DBEdit148: TDBEdit;
    DBEdit149: TDBEdit;
    DBEdit150: TDBEdit;
    Label150: TLabel;
    DBComboBox10: TDBComboBox;
    Label151: TLabel;
    DBEdit151: TDBEdit;
    Label153: TLabel;
    DBEdit152: TDBEdit;
    DBComboBox12: TDBComboBox;
    Label154: TLabel;
    DBEdit153: TDBEdit;
    Label156: TLabel;
    PngSpeedButton13: TPngSpeedButton;
    ListBox5: TListBox;
    ScrollBox1: TScrollBox;
    GroupBox4: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    TabSheet2: TTabSheet;
    GroupBox14: TGroupBox;
    SpeedButton2: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    DBMemo1: TDBMemo;
    DBEdit106: TDBEdit;
    GroupBox16: TGroupBox;
    Label148: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBComboBox68: TDBComboBox;
    DBComboBox66: TDBComboBox;
    DBEdit72: TDBEdit;
    GroupBox17: TGroupBox;
    Label47: TLabel;
    Label232: TLabel;
    Label233: TLabel;
    Label234: TLabel;
    Label235: TLabel;
    Label236: TLabel;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBComboBox23: TDBComboBox;
    DBComboBox100: TDBComboBox;
    DBEdit104: TDBEdit;
    Label21: TLabel;
    Label170: TLabel;
    TabSheet21: TTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label85: TLabel;
    Label99: TLabel;
    Label123: TLabel;
    Label10: TLabel;
    Label217: TLabel;
    Label219: TLabel;
    Label220: TLabel;
    Label291: TLabel;
    Label307: TLabel;
    Label316: TLabel;
    Label36: TLabel;
    Label164: TLabel;
    Label169: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBEdit35: TDBEdit;
    DBEdit42: TDBEdit;
    DBComboBox49: TDBComboBox;
    DBEdit73: TDBEdit;
    DBComboBox92: TDBComboBox;
    DBComboBox94: TDBComboBox;
    DBComboBox95: TDBComboBox;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    DBEdit129: TDBEdit;
    DBComboBox149: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit142: TDBEdit;
    DBEdit154: TDBEdit;
    DBEdit155: TDBEdit;
    GroupBox1: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label288: TLabel;
    ComboBox11: TComboBox;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Edit5: TEdit;
    DBEdit16: TDBEdit;
    DBEdit119: TDBEdit;
    GroupBox6: TGroupBox;
    Label101: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label102: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit46: TDBEdit;
    Edit8: TEdit;
    DBEdit47: TDBEdit;
    ComboBox6: TComboBox;
    GroupBox18: TGroupBox;
    Label244: TLabel;
    Label245: TLabel;
    ComboBox8: TComboBox;
    Edit12: TEdit;
    GroupBox21: TGroupBox;
    Label30: TLabel;
    Edit6: TEdit;
    GroupBox19: TGroupBox;
    Label249: TLabel;
    Label250: TLabel;
    Label251: TLabel;
    Label252: TLabel;
    Label253: TLabel;
    Label254: TLabel;
    Label255: TLabel;
    Label256: TLabel;
    Label257: TLabel;
    Label258: TLabel;
    Label259: TLabel;
    Label260: TLabel;
    Label261: TLabel;
    Label262: TLabel;
    Label263: TLabel;
    Label264: TLabel;
    Label265: TLabel;
    Label266: TLabel;
    Label267: TLabel;
    Label268: TLabel;
    Label269: TLabel;
    Label270: TLabel;
    Label271: TLabel;
    Label272: TLabel;
    Label273: TLabel;
    Label274: TLabel;
    Label275: TLabel;
    Label276: TLabel;
    DBComboBox106: TDBComboBox;
    DBComboBox107: TDBComboBox;
    DBComboBox108: TDBComboBox;
    DBComboBox109: TDBComboBox;
    DBComboBox110: TDBComboBox;
    DBComboBox111: TDBComboBox;
    DBComboBox112: TDBComboBox;
    DBComboBox113: TDBComboBox;
    DBComboBox114: TDBComboBox;
    DBComboBox115: TDBComboBox;
    DBComboBox116: TDBComboBox;
    DBComboBox117: TDBComboBox;
    DBComboBox118: TDBComboBox;
    DBComboBox119: TDBComboBox;
    DBComboBox120: TDBComboBox;
    DBComboBox121: TDBComboBox;
    DBComboBox122: TDBComboBox;
    DBComboBox123: TDBComboBox;
    DBComboBox124: TDBComboBox;
    DBComboBox125: TDBComboBox;
    DBComboBox126: TDBComboBox;
    DBComboBox127: TDBComboBox;
    DBComboBox128: TDBComboBox;
    DBComboBox129: TDBComboBox;
    DBComboBox130: TDBComboBox;
    DBComboBox131: TDBComboBox;
    DBComboBox132: TDBComboBox;
    DBComboBox133: TDBComboBox;
    Label296: TLabel;
    DBComboBox140: TDBComboBox;
    Bevel1: TBevel;
    dbNavBtnSave: TDBNavigationButton;
    dbNavBtnCancel: TDBNavigationButton;
    BitBtn1: TPngBitBtn;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Label171: TLabel;
    Label172: TLabel;
    GroupBox22: TGroupBox;
    Label173: TLabel;
    PngSpeedButton14: TPngSpeedButton;
    Label174: TLabel;
    Edit13: TEdit;
    DBEdit156: TDBEdit;
    GroupBox23: TGroupBox;
    Label175: TLabel;
    PngSpeedButton15: TPngSpeedButton;
    Label180: TLabel;
    Edit14: TEdit;
    DBEdit157: TDBEdit;
    GroupBox24: TGroupBox;
    Label181: TLabel;
    PngSpeedButton16: TPngSpeedButton;
    Label206: TLabel;
    Edit15: TEdit;
    DBEdit158: TDBEdit;
    DBComboBox13: TDBComboBox;
    Label218: TLabel;
    Label165: TLabel;
    SpeedButton3: TPngSpeedButton;
    DBEdit68: TDBEdit;
    Label240: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit105: TDBEdit;
    Label131: TLabel;
    DBComboBox55: TDBComboBox;
    Label89: TLabel;
    DBComboBox33: TDBComboBox;
    Label27: TLabel;
    DBComboBox7: TDBComboBox;
    DBComboBox14: TDBComboBox;
    Label225: TLabel;
    Label228: TLabel;
    DBComboBox15: TDBComboBox;
    Label237: TLabel;
    DBComboBox16: TDBComboBox;
    FileOpenDialog1: TFileOpenDialog;
    Label277: TLabel;
    DBEdit161: TDBEdit;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    DBEdit162: TDBEdit;
    Label315: TLabel;
    DBEdit163: TDBEdit;
    Label317: TLabel;
    Label318: TLabel;
    DBComboBox21: TDBComboBox;
    Label49: TLabel;
    DBEdit164: TDBEdit;
    Label52: TLabel;
    Label73: TLabel;
    DBEdit165: TDBEdit;
    DBEdit166: TDBEdit;
    DBEdit167: TDBEdit;
    Label74: TLabel;
    PngSpeedButton18: TPngSpeedButton;
    GroupBox26: TGroupBox;
    Label84: TLabel;
    Label86: TLabel;
    Label88: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    DBEdit168: TDBEdit;
    DBEdit169: TDBEdit;
    DBComboBox24: TDBComboBox;
    DBComboBox25: TDBComboBox;
    DBEdit170: TDBEdit;
    Label96: TLabel;
    DBComboBox26: TDBComboBox;
    DBComboBox27: TDBComboBox;
    Label98: TLabel;
    TabSheet7: TTabSheet;
    Label108: TLabel;
    Label319: TLabel;
    Label321: TLabel;
    Label320: TLabel;
    Label322: TLabel;
    DBEdit171: TDBEdit;
    DBComboBox31: TDBComboBox;
    DBEdit172: TDBEdit;
    DBComboBox32: TDBComboBox;
    DBEdit173: TDBEdit;
    Label323: TLabel;
    PngSpeedButton19: TPngSpeedButton;
    TabSheet22: TTabSheet;
    Label324: TLabel;
    PngSpeedButton20: TPngSpeedButton;
    DBEdit174: TDBEdit;
    Label325: TLabel;
    DBEdit175: TDBEdit;
    DBComboBox34: TDBComboBox;
    Label327: TLabel;
    Label328: TLabel;
    DBComboBox35: TDBComboBox;
    Label329: TLabel;
    Label330: TLabel;
    PngSpeedButton21: TPngSpeedButton;
    DBEdit177: TDBEdit;
    Label332: TLabel;
    DBEdit179: TDBEdit;
    Label333: TLabel;
    DBComboBox36: TDBComboBox;
    Label334: TLabel;
    DBComboBox37: TDBComboBox;
    DBMemo3: TDBMemo;
    Label335: TLabel;
    Label336: TLabel;
    DBComboBox38: TDBComboBox;
    Label39: TLabel;
    DBEdit144: TDBEdit;
    GroupBox27: TGroupBox;
    Label152: TLabel;
    PngSpeedButton23: TPngSpeedButton;
    Label238: TLabel;
    Edit17: TEdit;
    DBEdit176: TDBEdit;
    Label239: TLabel;
    DBEdit180: TDBEdit;
    Label326: TLabel;
    DBComboBox11: TDBComboBox;
    Label337: TLabel;
    DBComboBox17: TDBComboBox;
    Label338: TLabel;
    DBEdit181: TDBEdit;
    DBEdit182: TDBEdit;
    Label339: TLabel;
    Label12: TLabel;
    DBEdit135: TDBEdit;
    DBEdit7: TDBEdit;
    Label340: TLabel;
    DBEdit183: TDBEdit;
    DBComboBox18: TDBComboBox;
    Label341: TLabel;
    Label342: TLabel;
    DBEdit184: TDBEdit;
    Label343: TLabel;
    DBEdit185: TDBEdit;
    Label344: TLabel;
    DBEdit186: TDBEdit;
    Label345: TLabel;
    DBEdit187: TDBEdit;
    Label346: TLabel;
    DBComboBox39: TDBComboBox;
    Label91: TLabel;
    DBComboBox40: TDBComboBox;
    Label347: TLabel;
    DBEdit118: TDBEdit;
    Label139: TLabel;
    DBEdit188: TDBEdit;
    Label140: TLabel;
    DBEdit189: TDBEdit;
    Label348: TLabel;
    DBComboBox41: TDBComboBox;
    DBComboBox42: TDBComboBox;
    Label349: TLabel;
    Label278: TLabel;
    DBComboBox43: TDBComboBox;
    Label286: TLabel;
    DBEdit190: TDBEdit;
    TabSheet23: TTabSheet;
    Label109: TLabel;
    DBEdit160: TDBEdit;
    PngSpeedButton6: TPngSpeedButton;
    DBComboBox2: TDBComboBox;
    Label112: TLabel;
    TabSheet24: TTabSheet;
    Label113: TLabel;
    DBEdit191: TDBEdit;
    Label114: TLabel;
    DBEdit192: TDBEdit;
    Label115: TLabel;
    DBEdit193: TDBEdit;
    Label118: TLabel;
    DBEdit194: TDBEdit;
    Label119: TLabel;
    DBEdit195: TDBEdit;
    Label120: TLabel;
    DBEdit196: TDBEdit;
    DBEdit197: TDBEdit;
    Label124: TLabel;
    Label125: TLabel;
    PngSpeedButton24: TPngSpeedButton;
    DBEdit198: TDBEdit;
    Label129: TLabel;
    PngSpeedButton25: TPngSpeedButton;
    DBEdit199: TDBEdit;
    Label130: TLabel;
    DBEdit200: TDBEdit;
    Label137: TLabel;
    PngSpeedButton26: TPngSpeedButton;
    DBEdit201: TDBEdit;
    Label142: TLabel;
    DBEdit202: TDBEdit;
    PngSpeedButton27: TPngSpeedButton;
    TabSheet25: TTabSheet;
    Label248: TLabel;
    DBEdit204: TDBEdit;
    PngSpeedButton29: TPngSpeedButton;
    Label299: TLabel;
    DBEdit205: TDBEdit;
    Label301: TLabel;
    DBEdit206: TDBEdit;
    DBEdit207: TDBEdit;
    Label302: TLabel;
    Label304: TLabel;
    DBEdit208: TDBEdit;
    Label305: TLabel;
    DBComboBox19: TDBComboBox;
    Label306: TLabel;
    PngSpeedButton30: TPngSpeedButton;
    Label350: TLabel;
    DBEdit209: TDBEdit;
    DBEdit210: TDBEdit;
    Label351: TLabel;
    DBComboBox44: TDBComboBox;
    DBEdit211: TDBEdit;
    Label352: TLabel;
    Label353: TLabel;
    Label354: TLabel;
    DBComboBox46: TDBComboBox;
    DBComboBox47: TDBComboBox;
    Label355: TLabel;
    PngSpeedButton31: TPngSpeedButton;
    DBEdit212: TDBEdit;
    DBEdit213: TDBEdit;
    Label356: TLabel;
    Label357: TLabel;
    DBComboBox48: TDBComboBox;
    Label358: TLabel;
    DBComboBox50: TDBComboBox;
    DBComboBox51: TDBComboBox;
    Label359: TLabel;
    DBComboBox53: TDBComboBox;
    Label360: TLabel;
    Label361: TLabel;
    DBEdit214: TDBEdit;
    PngSpeedButton32: TPngSpeedButton;
    DBEdit215: TDBEdit;
    Label362: TLabel;
    Label363: TLabel;
    DBComboBox54: TDBComboBox;
    Label364: TLabel;
    DBEdit216: TDBEdit;
    Label22: TLabel;
    DBComboBox6: TDBComboBox;
    Label365: TLabel;
    DBComboBox56: TDBComboBox;
    DBEdit217: TDBEdit;
    Label366: TLabel;
    Label367: TLabel;
    DBEdit218: TDBEdit;
    GroupBox29: TGroupBox;
    Label368: TLabel;
    Label369: TLabel;
    Label370: TLabel;
    Label371: TLabel;
    DBEdit219: TDBEdit;
    DBEdit220: TDBEdit;
    DBEdit221: TDBEdit;
    DBEdit222: TDBEdit;
    DBEdit223: TDBEdit;
    DBEdit224: TDBEdit;
    Label372: TLabel;
    Label373: TLabel;
    GroupBox30: TGroupBox;
    Label20: TLabel;
    DBEdit225: TDBEdit;
    Label374: TLabel;
    Label375: TLabel;
    Label376: TLabel;
    DBEdit226: TDBEdit;
    DBEdit227: TDBEdit;
    Label377: TLabel;
    Label378: TLabel;
    DBComboBox4: TDBComboBox;
    Label379: TLabel;
    DBComboBox57: TDBComboBox;
    Label331: TLabel;
    DBComboBox58: TDBComboBox;
    DBComboBox60: TDBComboBox;
    Label380: TLabel;
    GroupBox31: TGroupBox;
    Label381: TLabel;
    Label382: TLabel;
    Label383: TLabel;
    Label386: TLabel;
    DBEdit178: TDBEdit;
    DBEdit228: TDBEdit;
    DBEdit229: TDBEdit;
    DBEdit230: TDBEdit;
    QYGenerators: TFDQuery;
    TRGenerators: TFDTransaction;
    QYProdutosGen: TFDQuery;
    TRProdutosGen: TFDTransaction;
    TabSheet26: TTabSheet;
    GroupBox32: TGroupBox;
    Label390: TLabel;
    Label391: TLabel;
    Label392: TLabel;
    Label393: TLabel;
    DBEdit237: TDBEdit;
    DBEdit238: TDBEdit;
    DBEdit239: TDBEdit;
    DBComboBox61: TDBComboBox;
    Label385: TLabel;
    DBEdit232: TDBEdit;
    DBEdit233: TDBEdit;
    Label387: TLabel;
    DBEdit234: TDBEdit;
    Label388: TLabel;
    DBEdit235: TDBEdit;
    DBEdit236: TDBEdit;
    Label389: TLabel;
    DBEdit231: TDBEdit;
    Label384: TLabel;
    Label394: TLabel;
    Edit19: TEdit;
    Label46: TLabel;
    DBComboBox22: TDBComboBox;
    Label143: TLabel;
    DBEdit111: TDBEdit;
    Label214: TLabel;
    Label215: TLabel;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    PngSpeedButton33: TPngSpeedButton;
    PngSpeedButton22: TPngSpeedButton;
    Label210: TLabel;
    DBComboBox62: TDBComboBox;
    Label211: TLabel;
    DBComboBox63: TDBComboBox;
    Label212: TLabel;
    Label213: TLabel;
    DBEdit93: TDBEdit;
    Label216: TLabel;
    DBEdit94: TDBEdit;
    Label280: TLabel;
    DBEdit97: TDBEdit;
    CheckListBox1: TCheckListBox;
    CheckListBox2: TCheckListBox;
    Label133: TLabel;
    DBComboBox64: TDBComboBox;
    Label135: TLabel;
    DBComboBox65: TDBComboBox;
    Label281: TLabel;
    Label282: TLabel;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    WhatsApp: TTabSheet;
    Label147: TLabel;
    DBEdit159: TDBEdit;
    Label283: TLabel;
    DBEdit203: TDBEdit;
    Label284: TLabel;
    DBEdit240: TDBEdit;
    Label285: TLabel;
    DBEdit241: TDBEdit;
    Label395: TLabel;
    Label396: TLabel;
    DBEdit242: TDBEdit;
    Label397: TLabel;
    DBEdit243: TDBEdit;
    Label398: TLabel;
    DBEdit244: TDBEdit;
    Label399: TLabel;
    DBEdit245: TDBEdit;
    Label400: TLabel;
    DBEdit246: TDBEdit;
    PngSpeedButton28: TPngSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox11Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure DBEdit124KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit125KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure PngSpeedButton9Click(Sender: TObject);
    procedure PngSpeedButton10Click(Sender: TObject);
    procedure PngSpeedButton11Click(Sender: TObject);
    procedure PngSpeedButton12Click(Sender: TObject);
    procedure Label38Click(Sender: TObject);
    procedure DBEdit152KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton13Click(Sender: TObject);
    procedure ListBox5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PngSpeedButton14Click(Sender: TObject);
    procedure PngSpeedButton16Click(Sender: TObject);
    procedure PngSpeedButton15Click(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure PngSpeedButton18Click(Sender: TObject);
    procedure PngSpeedButton19Click(Sender: TObject);
    procedure PngSpeedButton20Click(Sender: TObject);
    procedure PngSpeedButton21Click(Sender: TObject);
    procedure PngSpeedButton23Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton24Click(Sender: TObject);
    procedure PngSpeedButton25Click(Sender: TObject);
    procedure PngSpeedButton26Click(Sender: TObject);
    procedure PngSpeedButton27Click(Sender: TObject);
    procedure PngSpeedButton29Click(Sender: TObject);
    procedure PngSpeedButton30Click(Sender: TObject);
    procedure PngSpeedButton31Click(Sender: TObject);
    procedure PngSpeedButton32Click(Sender: TObject);
    procedure Label375Click(Sender: TObject);
    procedure PngSpeedButton22Click(Sender: TObject);
    procedure PngSpeedButton33Click(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure CheckListBox2ClickCheck(Sender: TObject);
    procedure PngSpeedButton28Click(Sender: TObject);
  private
    { Private declarations }
    procedure RetornarGenProdutos;
    procedure LerCriarConfiguracaoBotoes;
    procedure SalvarConfiguracaoBotoes;
  public
    { Public declarations }
  end;

var
  FormParametros: TFormParametros;

implementation
uses DataMod, DataMod2, IniFiles, Main, NFe_Util_2G_TLB, Funcoes1, ShellAPI, Certificados;
{$R *.dfm}

procedure TFormParametros.RetornarGenProdutos;
begin
  QYProdutosGen.Close;
  QYProdutosGen.SQL.Clear;
  QYProdutosGen.SQL.Add('select gen_id(GEN_PRODUTOS,0) as GENPRO from RDB$DATABASE');
  QYProdutosGen.Open;
  Edit9.Text:=QYProdutosGen.FieldByName('GENPRO').asString;
end;

procedure TFormParametros.Label375Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('https://cnpja.com'),nil,nil,sw_ShowNormal);
end;

procedure TFormParametros.Label38Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('http://deolhonoimposto.ibpt.org.br/'),nil,nil,sw_ShowNormal);
end;

procedure TFormParametros.LerCriarConfiguracaoBotoes;
var I: Integer;
  F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);

  //Cria a listagem dos botoes disponíveis conforme os botoes visíveis no FormMain.
  CheckListBox1.Items.Clear;
  CheckListBox2.Items.Clear;
  //TOOLBAR1
  for I:=0 to FormMain.ToolBar1.ButtonCount-1 do
  begin
    //se for visivel, terá no parametros.ini
    if FormMain.ToolBar1.Buttons[I].Visible then
    begin
      CheckListBox1.Items.Add(FormMain.ToolBar1.Buttons[I].Caption);
      CheckListBox1.Checked[CheckListBox1.Items.IndexOf(FormMain.ToolBar1.Buttons[I].Caption)]:=True; //FormMain.ToolBar1.Buttons[I].Visible;
    end else

    //se nao for visivel, checa se existe no parametros.ini, se tiver, adiciona, se nao tem, é pq o módulo está desabilitado.
    if F.ReadString('BOTOES1',FormMain.ToolBar1.Buttons[I].Caption,'')<>'' then //se for diferente de nada é pq tem no parametros.ini
    begin
      CheckListBox1.Items.Add(FormMain.ToolBar1.Buttons[I].Caption);
      CheckListBox1.Checked[CheckListBox1.Items.IndexOf(FormMain.ToolBar1.Buttons[I].Caption)]:=False;
    end;
  end;

  //TOOLBAR2
  for I:=0 to FormMain.ToolBar2.ButtonCount-1 do
  begin
     //se for visivel, terá no parametros.ini
    if FormMain.ToolBar2.Buttons[I].Visible then
    begin
      CheckListBox2.Items.Add(FormMain.ToolBar2.Buttons[I].Caption);
      CheckListBox2.Checked[CheckListBox2.Items.IndexOf(FormMain.ToolBar2.Buttons[I].Caption)]:=True; //FormMain.ToolBar2.Buttons[I].Visible;
    end else

    //se nao for visivel, checa se existe no parametros.ini, se tiver, adiciona, se nao tem, é pq o módulo está desabilitado.
    if F.ReadString('BOTOES2',FormMain.ToolBar2.Buttons[I].Caption,'')<>'' then //se for diferente de nada é pq tem no parametros.ini
    begin
      CheckListBox2.Items.Add(FormMain.ToolBar2.Buttons[I].Caption);
      CheckListBox2.Checked[CheckListBox2.Items.IndexOf(FormMain.ToolBar2.Buttons[I].Caption)]:=False;
    end;
  end;

//  //TOOLBAR 1.
//  for I:=0 to FormMain.ToolBar1.ButtonCount-1 do
//  begin
//    if FormMain.ToolBar1.Buttons[I].Visible then
//    begin
//      ListBox1.Items.Add(FormMain.ToolBar1.Buttons[I].Caption);
//      ListBox2.Items.Add('SIM')
//    end else
//    begin
//      if F.ReadString('BOTOES1',FormMain.ToolBar1.Buttons[I].Caption,'NAO EXISTE')<>'NAO EXISTE' then
//      begin
//        ListBox1.Items.Add(FormMain.ToolBar1.Buttons[I].Caption);
//        ListBox2.Items.Add('NAO');
//      end;
//    end;
//  end;
//  //TOOLBAR 2.
//  for I:=0 to FormMain.ToolBar2.ButtonCount-1 do
//  begin
//    if FormMain.ToolBar2.Buttons[I].Visible then
//    begin
//      ListBox3.Items.Add(FormMain.ToolBar2.Buttons[I].Caption);
//      ListBox4.Items.Add('SIM')
//    end else
//    begin
//      if F.ReadString('BOTOES2',FormMain.ToolBar2.Buttons[I].Caption,'NAO EXISTE')<>'NAO EXISTE' then
//      begin
//        ListBox3.Items.Add(FormMain.ToolBar2.Buttons[I].Caption);
//        ListBox4.Items.Add('NAO');
//      end;
//    end;
//  end;
  F.Free;
end;

procedure TFormParametros.SalvarConfiguracaoBotoes;
var F: TIniFile;
  I: Integer;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);

  //TOOLBAR 1.
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    F.WriteString('BOTOES1',CheckListBox1.Items[I], ift(CheckListBox1.Checked[I],'SIM','NAO') );
  end;

  //TOOLBAR 2.
  for I:=0 to CheckListBox2.Items.Count-1 do
  begin
    F.WriteString('BOTOES2',CheckListBox2.Items[I], ift(CheckListBox2.Checked[I],'SIM','NAO') );
  end;
  F.Free;
end;

procedure TFormParametros.FormCreate(Sender: TObject);
var I: Word;
begin
  ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(DM.ReciboEstilo);
  ComboBox2.ItemIndex:=ComboBox2.Items.IndexOf(DM.ChecarAtualizacoes);
  ComboBox3.ItemIndex:=ComboBox3.Items.IndexOf(DM.Commandcom);
  ComboBox4.ItemIndex:=ComboBox4.Items.IndexOf(DM.ServicosEstilo);
  ComboBox5.ItemIndex:=ComboBox5.Items.IndexOf(DM.ServicosOrcEstilo);
  ComboBox6.ItemIndex:=ComboBox6.Items.IndexOf(DM.NotasModelo);
  ComboBox8.ItemIndex:=ComboBox8.Items.IndexOf(DM.EntregaEstilo);
  ComboBox9.ItemIndex:=ComboBox9.Items.IndexOf(DM.ComandasEstilo);
  ComboBox11.ItemIndex:=ComboBox11.Items.IndexOf(DM.VendasEstilo);
  ComboBox12.ItemIndex:=ComboBox12.Items.IndexOf(DM.DebugPrint);
  Edit1.Text:=DM.ComandasPorta;
  Edit2.Text:=DM.ServicosPorta;
  Edit3.Text:=DM.ServicosOrcPorta;
  Edit4.Text:=DM.ReciboPorta;
  Edit5.Text:=DM.VendasPorta;
  Edit6.Text:=DM.EtiquetasEmbalagemPorta;
  Edit7.Text:=DM.ProdutosEtiquetasPorta;
  Edit8.Text:=DM.NotasPorta;
  Edit11.Text:=DM.ProdutosPorta;
  Edit12.Text:=DM.EntregaPorta;
  Edit19.Text:=DM.ImpressoraNfce;
  PageControl1.ActivePageIndex:=0;

  RetornarGenProdutos;
  LerCriarConfiguracaoBotoes;

  //Esconde todas as tabs... o Listview é que controla.
  for I:=0 to PageControl1.PageCount-1 do
  begin
    PageControl1.Pages[I].TabVisible:=False;
  end;
  PageControl1.ActivePageIndex:=10;

  ListBox5.Items.Clear;
  ListBox5.Items.Add('Geral');
  ListBox5.Items.Add('Botões');
  ListBox5.Items.Add('Certificado Digital');
  ListBox5.Items.Add('Clientes / Fornecedores');
  ListBox5.Items.Add('Códigos Fiscais');

  DM.TBModulos.Locate('MOD_NOME','Comandas',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Comandas');

  ListBox5.Items.Add('Compras');

  DM.TBModulos.Locate('MOD_NOME','Conhecimentos',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Conhecimentos');

  DM.TBModulos.Locate('MOD_NOME','Corretora',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Corretora');

  ListBox5.Items.Add('Cupom Fiscal');

  DM.TBModulos.Locate('MOD_NOME','Escolar',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Escolar');

  ListBox5.Items.Add('Financeiro');
  ListBox5.Items.Add('GNRE');

  DM.TBModulos.Locate('MOD_NOME','Imobiliária',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Imobiliária');

  DM.TBModulos.Locate('MOD_NOME','Locadora',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Locações');

  ListBox5.Items.Add('NFe');

  DM.TBModulos.Locate('MOD_NOME','Cupom Fiscal',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('NFCe');

  ListBox5.Items.Add('NFSe');
  ListBox5.Items.Add('Ordem de Produção');

  DM.TBModulos.Locate('MOD_NOME','Ordens de Servico',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Ordem de Serviço');

  DM.TBModulos.Locate('MOD_NOME','Juridico',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Processos');

  ListBox5.Items.Add('Produtos');

  DM.TBModulos.Locate('MOD_NOME','Saúde',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Saúde');

  ListBox5.Items.Add('Telas de Consultas');
  ListBox5.Items.Add('Televendas');

  DM.TBModulos.Locate('MOD_NOME','Veiculos',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Veículos');

  DM.TBModulos.Locate('MOD_NOME','Vendas',[]);
  if DM.TBModulosMOD_ACESSO.Value='S' then
  ListBox5.Items.Add('Vendas');

  ListBox5.Items.Add('WhatsApp');

  ListBox5.Selected[0]:=True;

  //para a aba códigos fiscais.
  QYGenerators.Close;
  QYGenerators.SQL.Clear;
  QYGenerators.SQL.Add('select max(NFE_CODIGO) as MAX_NFE_CODIGO from NFE');
  QYGenerators.Open;
  Edit13.Text:=QYGenerators.FieldByName('MAX_NFE_CODIGO').asString;

  QYGenerators.Close;
  QYGenerators.SQL.Clear;
  QYGenerators.SQL.Add('select max(NOT_CODIGO) as MAX_NOT_CODIGO from NOTAS');
  QYGenerators.Open;
  Edit14.Text:=QYGenerators.FieldByName('MAX_NOT_CODIGO').asString;

  QYGenerators.Close;
  QYGenerators.SQL.Clear;
  QYGenerators.SQL.Add('select max(CTE_CODIGO) as MAX_CTE_CODIGO from CTE');
  QYGenerators.Open;
  Edit15.Text:=QYGenerators.FieldByName('MAX_CTE_CODIGO').asString;

  QYGenerators.Close;
  QYGenerators.SQL.Clear;
  QYGenerators.SQL.Add('select max(NFS_LOTE) as MAX_NFS_LOTE from NFSE');
  QYGenerators.Open;
  Edit17.Text:=QYGenerators.FieldByName('MAX_NFS_LOTE').asString;

  ListBox5.ItemIndex:=0;
  ListBox5Click(Self);
end;

procedure TFormParametros.FormClose(Sender: TObject; var Action: TCloseAction);
var S: String;
begin
  if DM.TBParametros.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
  if DM.TBLocs.State in [dsEdit] then
  DM.TBLocs.Post;
  //atualiza o caption do formmain.
  S:=FileVersion(Application.ExeName);
  FormMain.Caption:=Application.Title+' - Versão: '+S+' / '+DM.TBVersaoVER_VERSAOBASE.Value;
  if DM.TBParametrosPAR_IDENTIFICACAOSISTEMA.Value<>'' then
  FormMain.Caption:=FormMain.Caption+' - '+DM.TBParametrosPAR_IDENTIFICACAOSISTEMA.Value;
  //...
  DM.ChecarAtualizacoes     :=ComboBox2.Text;
  DM.ComandasEstilo         :=ComboBox9.Text;
  DM.ComandasPorta          :=Edit1.Text;
  DM.Commandcom             :=ComboBox3.Text;
  DM.DebugPrint             :=ComboBox12.Text;
  DM.EntregaEstilo          :=ComboBox8.Text;
  DM.EntregaPorta           :=Edit12.Text;
  DM.EtiquetasEmbalagemPorta:=Edit6.Text;
  DM.ImpressoraNfce         :=Edit19.Text;
  DM.NotasModelo            :=ComboBox6.Text;
  DM.NotasPorta             :=Edit8.Text;
  DM.ProdutosEtiquetasPorta :=Edit7.Text;
  DM.ProdutosPorta          :=Edit11.Text;
  DM.ReciboEstilo           :=ComboBox1.Text;
  DM.ReciboPorta            :=Edit4.Text;
  DM.ServicosEstilo         :=ComboBox4.Text;
  DM.ServicosPorta          :=Edit2.Text;
  DM.ServicosOrcEstilo      :=ComboBox5.Text;
  DM.ServicosOrcPorta       :=Edit3.Text;
  DM.VendasEstilo           :=ComboBox11.Text;
  DM.VendasPorta            :=Edit5.Text;

  DM.Variaveis('SAVE');
  SalvarConfiguracaoBotoes;
end;

procedure TFormParametros.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormParametros.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  if (ScrollBox1.VertScrollBar.Position <= (ScrollBox1.VertScrollBar.Range - ScrollBox1.VertScrollBar.Increment)) then
  ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position + ScrollBox1.VertScrollBar.Increment*5 else
  ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Range - ScrollBox1.VertScrollBar.Increment*5;
end;

procedure TFormParametros.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if (ScrollBox1.VertScrollBar.Position >= ScrollBox1.VertScrollBar.Increment) then
  ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position - ScrollBox1.VertScrollBar.Increment*5 else
  ScrollBox1.VertScrollBar.Position := 0;
end;

procedure TFormParametros.DBEdit124KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormParametros.DBEdit125KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormParametros.DBEdit152KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['a'..'z','A'..'Z','0'..'9','@','-','_',',','.',#8,#13,#3,#22,#26]) then Key:=#0; //#3=CTRL+C - #22=CTRL+V - #26=CTRL+Z.
end;

procedure TFormParametros.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormParametros.CheckListBox1ClickCheck(Sender: TObject);
var I: Word;
begin
  for I:=0 to FormMain.ToolBar1.ButtonCount-1 do  //procura o botao com o mesmo caption.
  if FormMain.ToolBar1.Buttons[I].Caption=CheckListBox1.Items[CheckListBox1.ItemIndex] then
  FormMain.ToolBar1.Buttons[I].Visible:=CheckListBox1.Checked[CheckListBox1.ItemIndex]
end;

procedure TFormParametros.CheckListBox2ClickCheck(Sender: TObject);
var I: Word;
begin
  for I:=0 to FormMain.ToolBar2.ButtonCount-1 do  //procura o botao com o mesmo caption.
  if FormMain.ToolBar2.Buttons[I].Caption=CheckListBox2.Items[CheckListBox2.ItemIndex] then
  FormMain.ToolBar2.Buttons[I].Visible:=CheckListBox2.Checked[CheckListBox2.ItemIndex]
end;

procedure TFormParametros.ComboBox11Change(Sender: TObject);
begin
  case ComboBox11.ItemIndex of
  00 : begin //DOS
         Edit5.Enabled:=True;
         DBEdit29.Enabled:=True;
         DBEdit30.Enabled:=True;
         DBEdit32.Enabled:=True;
         DBEdit16.Enabled:=True;
       end;
  01 : begin //Windows
         Edit5.Enabled:=False;
         DBEdit29.Enabled:=False;
         DBEdit30.Enabled:=False;
         DBEdit32.Enabled:=False;
         DBEdit16.Enabled:=False;
       end;
  end; //case
end;

procedure TFormParametros.SpeedButton1Click(Sender: TObject);
var I: Integer;
begin
  if MessageDlg('Atualizar o valor do gerador de código?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYProdutosGen.Close;
    QYProdutosGen.SQL.Clear;
    QYProdutosGen.SQL.Add('select max(PRO_CODIGO) as MAXCODIGO from PRODUTOS');
    QYProdutosGen.Open;
    I:=QYProdutosGen.FieldByName('MAXCODIGO').AsInteger;
    QYProdutosGen.Close;
    QYProdutosGen.SQL.Clear;
    QYProdutosGen.SQL.Add('set generator GEN_PRODUTOS to '+IntToStr(I));
    QYProdutosGen.ExecSQL;
    RetornarGenProdutos;
  end;
end;

procedure TFormParametros.ListBox5Click(Sender: TObject);
begin
  if ListBox5.Items[ListBox5.ItemIndex]='Botões'                  then PageControl1.ActivePageIndex:=0;
  if ListBox5.Items[ListBox5.ItemIndex]='Certificado Digital'     then PageControl1.ActivePageIndex:=1;
  if ListBox5.Items[ListBox5.ItemIndex]='Clientes / Fornecedores' then PageControl1.ActivePageIndex:=2;
  if ListBox5.Items[ListBox5.ItemIndex]='Códigos Fiscais'         then PageControl1.ActivePageIndex:=3;
  if ListBox5.Items[ListBox5.ItemIndex]='Comandas'                then PageControl1.ActivePageIndex:=4;
  if ListBox5.Items[ListBox5.ItemIndex]='Compras'                 then PageControl1.ActivePageIndex:=5;
  if ListBox5.Items[ListBox5.ItemIndex]='Conhecimentos'           then PageControl1.ActivePageIndex:=6;
  if ListBox5.Items[ListBox5.ItemIndex]='Corretora'               then PageControl1.ActivePageIndex:=7;
  if ListBox5.Items[ListBox5.ItemIndex]='Cupom Fiscal'            then PageControl1.ActivePageIndex:=8;
  if ListBox5.Items[ListBox5.ItemIndex]='Escolar'                 then PageControl1.ActivePageIndex:=9;
  if ListBox5.Items[ListBox5.ItemIndex]='Financeiro'              then PageControl1.ActivePageIndex:=10;
  if ListBox5.Items[ListBox5.ItemIndex]='Geral'                   then PageControl1.ActivePageIndex:=11;
  if ListBox5.Items[ListBox5.ItemIndex]='GNRE'                    then PageControl1.ActivePageIndex:=12;
  if ListBox5.Items[ListBox5.ItemIndex]='Imobiliária'             then PageControl1.ActivePageIndex:=13;
  if ListBox5.Items[ListBox5.ItemIndex]='Locações'                then PageControl1.ActivePageIndex:=14;
  if ListBox5.Items[ListBox5.ItemIndex]='NFe'                     then PageControl1.ActivePageIndex:=15;
  if ListBox5.Items[ListBox5.ItemIndex]='NFCe'                    then PageControl1.ActivePageIndex:=16;
  if ListBox5.Items[ListBox5.ItemIndex]='NFSe'                    then PageControl1.ActivePageIndex:=17;
  if ListBox5.Items[ListBox5.ItemIndex]='Ordem de Produção'       then PageControl1.ActivePageIndex:=18;
  if ListBox5.Items[ListBox5.ItemIndex]='Ordem de Serviço'        then PageControl1.ActivePageIndex:=19;
  if ListBox5.Items[ListBox5.ItemIndex]='Processos'               then PageControl1.ActivePageIndex:=20;
  if ListBox5.Items[ListBox5.ItemIndex]='Produtos'                then PageControl1.ActivePageIndex:=21;
  if ListBox5.Items[ListBox5.ItemIndex]='Saúde'                   then PageControl1.ActivePageIndex:=22;
  if ListBox5.Items[ListBox5.ItemIndex]='Telas de Consultas'      then PageControl1.ActivePageIndex:=23;
  if ListBox5.Items[ListBox5.ItemIndex]='Televendas'              then PageControl1.ActivePageIndex:=24;
  if ListBox5.Items[ListBox5.ItemIndex]='Veículos'                then PageControl1.ActivePageIndex:=25;
  if ListBox5.Items[ListBox5.ItemIndex]='Vendas'                  then PageControl1.ActivePageIndex:=26;
  if ListBox5.Items[ListBox5.ItemIndex]='WhatsApp'                then PageControl1.ActivePageIndex:=27;
end;

procedure TFormParametros.PngSpeedButton10Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde será salvo os anexos dos clientes.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALANEXOSCLIENTES.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton11Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde estão os modelos de documentos.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALMODELOSDOC.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton12Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta serão salvos os anexos de processos.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALANEXOSPROCESSOS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton13Click(Sender: TObject);
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('delete from SQLS');
  DM.QYAux.ExecSQL;

  DM2.TBSqls.Close;
  DM2.TBSqls.Open;
  MessageDlg('Histórico de consultas eliminado.',mtInformation,[mbOk],0);
end;

procedure TFormParametros.PngSpeedButton14Click(Sender: TObject);
var I: Integer;
begin
  I:=StrToInt(InputBox('Alterar Valor','Digite o valor desejado',IntToStr(DM.TBNfeCodigoNFE_CODIGO.Value)));
  if MessageDlg('Deseja realmente alterar o valor para '+IntToStr(I)+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    DM.TBNfeCodigo.Edit;
    DM.TBNfeCodigoNFE_CODIGO.Value:=I;
    DM.TBNfeCodigo.Post;
  end;
end;

procedure TFormParametros.PngSpeedButton15Click(Sender: TObject);
var I: Integer;
begin
  I:=StrToInt(InputBox('Alterar Valor','Digite o valor desejado',IntToStr(DM.TBNotasCodigoNOT_CODIGO.Value)));
  if MessageDlg('Deseja realmente alterar o valor para '+IntToStr(I)+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    DM.TBNotasCodigo.Edit;
    DM.TBNotasCodigoNOT_CODIGO.Value:=I;
    DM.TBNotasCodigo.Post;
  end;
end;

procedure TFormParametros.PngSpeedButton16Click(Sender: TObject);
var I: Integer;
begin
  I:=StrToInt(InputBox('Alterar Valor','Digite o valor desejado',IntToStr(DM2.TBCteCodigoCTE_CODIGO.Value)));
  if MessageDlg('Deseja realmente alterar o valor para '+IntToStr(I)+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    DM2.TBCteCodigo.Edit;
    DM2.TBCteCodigoCTE_CODIGO.Value:=I;
    DM2.TBCteCodigo.Post;
  end;
end;

procedure TFormParametros.PngSpeedButton23Click(Sender: TObject);
var I: Integer;
begin
  I:=StrToInt(InputBox('Alterar Valor','Digite o valor desejado',IntToStr(DM.TBNfseCodigoNFS_CODIGO.Value)));
  if MessageDlg('Deseja realmente alterar o valor para '+IntToStr(I)+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    DM.TBNfseCodigo.Edit;
    DM.TBNfseCodigoNFS_CODIGO.Value:=I;
    DM.TBNfseCodigo.Post;
  end;
end;

procedure TFormParametros.PngSpeedButton24Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos anexos das consultas.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALANEXOSCONSULTAS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton25Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos de imagens das consultas.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALIMAGENSCONSULTAS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton26Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Integrador Malcolm - Pasta Req.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_MALCOLMREQ.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton27Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Integrador Malcolm - Pasta Resp.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_MALCOLMRESP.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton28Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde será salvo os anexos dos vendedores.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALANEXOSVENDEDORES.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton29Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta serão salvos os anexos de seguros.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALANEXOSSEGUROS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton18Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos do MDFe.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_REPOSITORIOMDFE.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton19Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos da NFe.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_GNRESCHEMAS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton1Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos do CTe.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_REPOSITORIOCTE.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton20Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos da NFSe.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_REPOSITORIONFSE.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton21Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde estão os arquivos de Schemas do provedor da NFSe.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_NFSESCHEMAS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton22Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos da NFCe.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_REPOSITORIONFCE.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton2Click(Sender: TObject);
begin
  DM.TBParametros.Edit;
  DM.TBParametrosPAR_CNPJCERTIFICADO.Clear;
  DM.TBParametrosPAR_NOMECERTIFICADO.Clear;
  DM.TBParametrosPAR_SERIALCERTIFICADO.Clear;
  DM.TBParametrosPAR_VALINICIALCERTIFICADO.Clear;
  DM.TBParametrosPAR_VALFINALCERTIFICADO.Clear;
  DBMemo1.Clear;
end;

procedure TFormParametros.PngSpeedButton30Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde será salvo os anexos dos fornecedores.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALANEXOSFORNECEDORES.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton31Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde estão salvos os arquivos de imagens de dentes.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALDENTES.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton32Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_ARQUIVOCERTIFICADO.Value:=OpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton33Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde estão os arquivos de Schemas da NFCe.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_NFCESCHEMAS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton3Click(Sender: TObject);
begin
//  DM.TBParametros.Edit;
//  DM.TBParametrosPAR_SERIALCERTIFICADO.Value:=ACBrCTe1.SSL.SelecionarCertificado;
  Application.CreateForm(TFormCertificados, FormCertificados);
  FormCertificados.ShowModal;
  if Certificados.Procurar then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_SERIALCERTIFICADO.Value:=FormCertificados.TBCertificadosCER_NUMEROSERIE.Value;
  end;
  FormCertificados.Free;
  FormCertificados:=nil;
end;

procedure TFormParametros.PngSpeedButton4Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos dos boletos.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton5Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos as imagens dos produtos.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton6Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos dos prontuarios.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALPRONTUARIOS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton7Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os anexos dos produtos.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALANEXOSPRODUTOS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.PngSpeedButton8Click(Sender: TObject);
begin
  if MessageDlg('Deseja restaurar as colunas das telas de consultas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    ZapFiles(GetTempDir+'Form*.txt');
    //elimina as info de tamanho do form para o usuário logado.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from FORMS where FMS_USUARIO=:usuario');
    DM.QYAux.ParamByName('usuario').AsInteger:=DM.UsuarioLogado;
    DM.QYAux.ExecSQL;
    MessageDlg('Restauração OK.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormParametros.PngSpeedButton9Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos as imagens dos imóveis.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALFOTOSIMOVEIS.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.SpeedButton2Click(Sender: TObject);
var
  U: NFe_Util_2G_Interface;
  Nome, MsgResultado, Titular, CNPJ, Serial, Emissor, ValidadeInicio, ValidadeFim: Widestring;
  I: Integer;
begin
  U:=CoUtil.Create;
  //I:=U.PegaNomeCertificado(S,M);
  I:=U.PegaDadosCertificado(Nome,MsgResultado,Titular,CNPJ,Serial,Emissor,ValidadeInicio,ValidadeFim);
  //if (I<>5401) and (I<>5402) then
  if (I<>6001) and (I<>6002) and (I<>6003) then
  MessageDlg('Ocorreu uma falha no acesso ao repositório de certificados digitais...'+#13#13+MsgResultado,mtError,[mbOk],0) else
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_NOMECERTIFICADO.Value:=Nome;
    DM.TBParametrosPAR_CNPJCERTIFICADO.Value:=CNPJ;
    DM.TBParametrosPAR_SERIALCERTIFICADO.Value:=Serial;
    DM.TBParametrosPAR_VALINICIALCERTIFICADO.Value:=StrToDate(Copy(ValidadeInicio,1,10));
    DM.TBParametrosPAR_VALFINALCERTIFICADO.Value:=StrToDate(Copy(ValidadeFim,1,10));
  end;
end;

procedure TFormParametros.SpeedButton3Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde serão salvos os arquivos da NFe.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_REPOSITORIONFE.Value:=FileOpenDialog1.FileName;
  end;
end;

procedure TFormParametros.SpeedButton4Click(Sender: TObject);
begin
  FileOpenDialog1.Title:='Selecione a pasta onde estão os modelos de documentos.';
  if FileOpenDialog1.Execute then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_LOCALMODELOSDOC.Value:=FileOpenDialog1.FileName;
  end;
end;

end.
