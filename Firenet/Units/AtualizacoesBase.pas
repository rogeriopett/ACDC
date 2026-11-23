unit AtualizacoesBase;

interface

uses
  SysUtils, Dialogs, DataMod, Forms, System.UITypes, System.Classes;

procedure CriarSenhasClientes();
procedure ConverterSenhasParaMD5();
procedure VerificarTelas();
procedure Tela(Formulario, Descricao: String; Modulo: Integer);

procedure ChecarVersaoBase;
procedure ReordenarTabelas(Tabelas: TStringList);
procedure ReordenarTabelasTodas;
procedure AtualizarBaseDados;
{$REGION 'atualizacoes antigas'}
procedure AtualizarVersao153;
procedure AtualizarVersao154;
procedure AtualizarVersao155;
procedure AtualizarVersao156;
procedure AtualizarVersao157;
procedure AtualizarVersao158;
procedure AtualizarVersao159;
procedure AtualizarVersao160;
procedure AtualizarVersao161;
procedure AtualizarVersao162;
procedure AtualizarVersao163;
procedure AtualizarVersao164;
procedure AtualizarVersao165;
procedure AtualizarVersao166;
procedure AtualizarVersao167;
procedure AtualizarVersao168;
procedure AtualizarVersao169;
procedure AtualizarVersao170;
procedure AtualizarVersao171;
procedure AtualizarVersao172;
procedure AtualizarVersao173;
procedure AtualizarVersao174;
procedure AtualizarVersao175;
procedure AtualizarVersao176;
procedure AtualizarVersao177;
procedure AtualizarVersao178;
procedure AtualizarVersao179;
procedure AtualizarVersao180;
procedure AtualizarVersao181;
procedure AtualizarVersao182;
procedure AtualizarVersao183;
procedure AtualizarVersao184;
procedure AtualizarVersao185;
procedure AtualizarVersao186;
procedure AtualizarVersao187;
procedure AtualizarVersao188;
procedure AtualizarVersao189;
procedure AtualizarVersao190;
procedure AtualizarVersao191;
procedure AtualizarVersao192;
procedure AtualizarVersao193;
procedure AtualizarVersao194;
procedure AtualizarVersao195;
procedure AtualizarVersao196;
procedure AtualizarVersao197;
procedure AtualizarVersao198;
procedure AtualizarVersao199;
procedure AtualizarVersao200;
procedure AtualizarVersao201;
procedure AtualizarVersao202;
procedure AtualizarVersao203;
procedure AtualizarVersao204;
procedure AtualizarVersao205;
procedure AtualizarVersao206;
procedure AtualizarVersao207;
procedure AtualizarVersao208;
procedure AtualizarVersao209;
procedure AtualizarVersao210;
procedure AtualizarVersao211;
procedure AtualizarVersao212;
procedure AtualizarVersao213;
procedure AtualizarVersao214;
procedure AtualizarVersao215;
procedure AtualizarVersao216;
procedure AtualizarVersao217;
procedure AtualizarVersao218;
procedure AtualizarVersao219;
procedure AtualizarVersao220;
procedure AtualizarVersao221;
procedure AtualizarVersao222;
procedure AtualizarVersao223;
procedure AtualizarVersao224;
procedure AtualizarVersao225;
procedure AtualizarVersao226;
procedure AtualizarVersao227;
procedure AtualizarVersao228;
procedure AtualizarVersao229;
procedure AtualizarVersao230;
procedure AtualizarVersao231;
procedure AtualizarVersao232;
procedure AtualizarVersao233;
procedure AtualizarVersao234;
procedure AtualizarVersao235;
procedure AtualizarVersao236;
procedure AtualizarVersao237;
procedure AtualizarVersao238;
procedure AtualizarVersao239;
procedure AtualizarVersao240;
procedure AtualizarVersao241;
procedure AtualizarVersao242;
procedure AtualizarVersao243;
procedure AtualizarVersao244;
procedure AtualizarVersao245;
procedure AtualizarVersao246;
procedure AtualizarVersao247;
procedure AtualizarVersao248;
procedure AtualizarVersao249;
procedure AtualizarVersao250;
procedure AtualizarVersao251;
procedure AtualizarVersao252;
procedure AtualizarVersao253;
procedure AtualizarVersao254;
procedure AtualizarVersao255;
procedure AtualizarVersao256;
procedure AtualizarVersao257;
procedure AtualizarVersao258;
procedure AtualizarVersao259;
procedure AtualizarVersao260;
procedure AtualizarVersao261;
procedure AtualizarVersao262;
procedure AtualizarVersao263;
procedure AtualizarVersao264;
procedure AtualizarVersao265;
procedure AtualizarVersao266;
procedure AtualizarVersao267;
procedure AtualizarVersao268;
procedure AtualizarVersao269;
procedure AtualizarVersao270;
procedure AtualizarVersao271;
procedure AtualizarVersao272;
procedure AtualizarVersao273;
procedure AtualizarVersao274;
procedure AtualizarVersao275;
procedure AtualizarVersao276;
procedure AtualizarVersao277;
procedure AtualizarVersao278;
procedure AtualizarVersao279;
procedure AtualizarVersao280;
procedure AtualizarVersao281;
procedure AtualizarVersao282;
procedure AtualizarVersao283;
procedure AtualizarVersao284;
procedure AtualizarVersao285;
procedure AtualizarVersao286;
procedure AtualizarVersao287;
procedure AtualizarVersao288;
procedure AtualizarVersao289;
procedure AtualizarVersao290;
procedure AtualizarVersao291;
procedure AtualizarVersao292;
procedure AtualizarVersao293;
procedure AtualizarVersao294;
procedure AtualizarVersao295;
procedure AtualizarVersao296;
procedure AtualizarVersao297;
procedure AtualizarVersao298;
procedure AtualizarVersao299;
procedure AtualizarVersao300;
procedure AtualizarVersao301;
procedure AtualizarVersao302;
procedure AtualizarVersao303;
procedure AtualizarVersao304;
procedure AtualizarVersao305;
procedure AtualizarVersao306;
procedure AtualizarVersao307;
procedure AtualizarVersao308;
procedure AtualizarVersao309;
procedure AtualizarVersao310;
procedure AtualizarVersao311;
procedure AtualizarVersao312;
procedure AtualizarVersao313;
procedure AtualizarVersao314;
procedure AtualizarVersao315;
procedure AtualizarVersao316;
procedure AtualizarVersao317;
procedure AtualizarVersao318;
procedure AtualizarVersao319;
procedure AtualizarVersao320;
procedure AtualizarVersao321;
procedure AtualizarVersao322;
procedure AtualizarVersao323;
procedure AtualizarVersao324;
procedure AtualizarVersao325;
procedure AtualizarVersao326;
procedure AtualizarVersao327;
procedure AtualizarVersao328;
procedure AtualizarVersao329;
procedure AtualizarVersao330;
procedure AtualizarVersao331;
procedure AtualizarVersao332;
procedure AtualizarVersao333;
procedure AtualizarVersao334;
procedure AtualizarVersao335;
procedure AtualizarVersao336;
procedure AtualizarVersao337;
procedure AtualizarVersao338;
procedure AtualizarVersao339;
procedure AtualizarVersao340;
procedure AtualizarVersao341;
procedure AtualizarVersao342;
procedure AtualizarVersao343;
procedure AtualizarVersao344;
procedure AtualizarVersao345;
procedure AtualizarVersao346;
procedure AtualizarVersao347;
procedure AtualizarVersao348;
procedure AtualizarVersao349;
procedure AtualizarVersao350;
procedure AtualizarVersao351;
procedure AtualizarVersao352;
procedure AtualizarVersao353;
procedure AtualizarVersao354;
procedure AtualizarVersao355;
procedure AtualizarVersao356;
procedure AtualizarVersao357;
procedure AtualizarVersao358;
procedure AtualizarVersao359;
procedure AtualizarVersao360;
procedure AtualizarVersao361;
procedure AtualizarVersao362;
procedure AtualizarVersao363;
{$ENDREGION}
procedure AtualizarVersao364;
procedure AtualizarVersao365;
procedure AtualizarVersao366;
procedure AtualizarVersao367;
procedure AtualizarVersao368;
procedure AtualizarVersao369;
procedure AtualizarVersao370;
procedure AtualizarVersao371;
procedure AtualizarVersao372;
procedure AtualizarVersao373;
procedure AtualizarVersao374;
procedure AtualizarVersao375;
procedure AtualizarVersao376;
procedure AtualizarVersao377;
procedure AtualizarVersao378;
procedure AtualizarVersao379;
procedure AtualizarVersao380;
procedure AtualizarVersao381;
procedure AtualizarVersao382;
procedure AtualizarVersao383;
procedure AtualizarVersao384;
procedure AtualizarVersao385;
procedure AtualizarVersao386;
procedure AtualizarVersao387;
procedure AtualizarVersao388;
procedure AtualizarVersao389;
procedure AtualizarVersao390;
procedure AtualizarVersao391;
procedure AtualizarVersao392;
procedure AtualizarVersao393;
procedure AtualizarVersao394;
procedure AtualizarVersao395;
procedure AtualizarVersao396;
procedure AtualizarVersao397;
procedure AtualizarVersao398;
procedure AtualizarVersao399;
procedure AtualizarVersao400;
procedure AtualizarVersao401;
procedure AtualizarVersao402;
procedure AtualizarVersao403;
procedure AtualizarVersao404;
procedure AtualizarVersao405;
procedure AtualizarVersao406;

var
  TabelasParaReordenar: TStringList;

implementation
uses Main, Funcoes1, FuncoesFirenet, MD5, Reorder, Atualizacoes, FireDAC.Comp.Client,
  TelasAtualizarComponentes, UsuariosAcessosAtualizar;

procedure ChecarVersaoBase;
begin
  if not DM.TBVersao.Active then
  Exit;

  if StrToInt(DM.TBVersaoVER_VERSAOBASE.Value) > VersaoBase then
  begin
    Application.ShowMainForm := False;

    raise Exception.Create(sLineBreak+
      'A versão da base de dados é superior à versão do executável.' + sLineBreak +
      'É necessário atualizar o executável para utilização com a versão ' +
      DM.TBVersaoVER_VERSAOBASE.Value + ' da base de dados.' + sLineBreak + sLineBreak +
      'Após atualizar, verifique os parâmetros para atualizações automáticas futuras.'
    );
  end;
end;

procedure AtualizarBaseDados;
var Conexoes, VersaoAtual, VersaoOriginal: Integer;
begin
  //##################################################################################
  // NAO ESQUECER DE ATUALIZAR A CONSTANTE VersaoBase NO DATAMOD.                   //
  //##################################################################################
  VersaoOriginal:=DM.TBVersaoVER_VERSAOBASE.AsInteger;

  if VersaoOriginal >= VersaoBase then
  Exit;

  {$REGION 'Verifica Conexões abertas.'}
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from MON$ATTACHMENTS where MON$SYSTEM_FLAG=0');
  DM.QYAux.Open;
  try
    Conexoes:=DM.QYAux.FieldByName('QTDE').AsInteger;
  finally
    DM.QYAux.Close;
  end;

  if Conexoes > 1 then
  raise Exception.CreateFmt(
    'É necessário atualizar a base de dados, mas existem %d conexões abertas.'#13#13+'Encerre o Firenet em todas as outras estações e tente novamente.',[Conexoes]
  );
  {$ENDREGION}

  MessageDlg('A base de dados será atualizada da versão '+VersaoOriginal.ToString+' até a versão '+VersaoBase.ToString+'.'+#13#10+'Clique OK para prosseguir.',mtInformation,[mbOk],0);
  Application.CreateForm(TFormAtualizacoes, FormAtualizacoes);
  try
    Screen.Cursor:=crHourGlass;
    FormAtualizacoes.Label1.Caption:='Atualização de base de dados... ';
    FormAtualizacoes.Show;
    Application.ProcessMessages;
    TabelasParaReordenar:=TStringList.Create;

    try
      repeat
        VersaoAtual:=DM.TBVersaoVER_VERSAOBASE.AsInteger;
        FormAtualizacoes.Label1.Caption:=Format('Atualizando base de dados versão %d de %d...',[VersaoAtual+1, VersaoBase]);
        FormAtualizacoes.Repaint; //no lugar de processmessages.

        case VersaoAtual of
          //quando tiver novas atualizacoes, incluir "AtualizarVersao3,4,5..." aqui.
          {$REGION 'atualizacoes antigas'}
          152: AtualizarVersao153;
          153: AtualizarVersao154;
          154: AtualizarVersao155;
          155: AtualizarVersao156;
          156: AtualizarVersao157;
          157: AtualizarVersao158;
          158: AtualizarVersao159;
          159: AtualizarVersao160;
          160: AtualizarVersao161;
          161: AtualizarVersao162;
          162: AtualizarVersao163;
          163: AtualizarVersao164;
          164: AtualizarVersao165;
          165: AtualizarVersao166;
          166: AtualizarVersao167;
          167: AtualizarVersao168;
          168: AtualizarVersao169;
          169: AtualizarVersao170;
          170: AtualizarVersao171;
          171: AtualizarVersao172;
          172: AtualizarVersao173;
          173: AtualizarVersao174;
          174: AtualizarVersao175;
          175: AtualizarVersao176;
          176: AtualizarVersao177;
          177: AtualizarVersao178;
          178: AtualizarVersao179;
          179: AtualizarVersao180;
          180: AtualizarVersao181;
          181: AtualizarVersao182;
          182: AtualizarVersao183;
          183: AtualizarVersao184;
          184: AtualizarVersao185;
          185: AtualizarVersao186;
          186: AtualizarVersao187;
          187: AtualizarVersao188;
          188: AtualizarVersao189;
          189: AtualizarVersao190;
          190: AtualizarVersao191;
          191: AtualizarVersao192;
          192: AtualizarVersao193;
          193: AtualizarVersao194;
          194: AtualizarVersao195;
          195: AtualizarVersao196;
          196: AtualizarVersao197;
          197: AtualizarVersao198;
          198: AtualizarVersao199;
          199: AtualizarVersao200;
          200: AtualizarVersao201;
          201: AtualizarVersao202;
          202: AtualizarVersao203;
          203: AtualizarVersao204;
          204: AtualizarVersao205;
          205: AtualizarVersao206;
          206: AtualizarVersao207;
          207: AtualizarVersao208;
          208: AtualizarVersao209;
          209: AtualizarVersao210;
          210: AtualizarVersao211;
          211: AtualizarVersao212;
          212: AtualizarVersao213;
          213: AtualizarVersao214;
          214: AtualizarVersao215;
          215: AtualizarVersao216;
          216: AtualizarVersao217;
          217: AtualizarVersao218;
          218: AtualizarVersao219;
          219: AtualizarVersao220;
          220: AtualizarVersao221;
          221: AtualizarVersao222;
          222: AtualizarVersao223;
          223: AtualizarVersao224;
          224: AtualizarVersao225;
          225: AtualizarVersao226;
          226: AtualizarVersao227;
          227: AtualizarVersao228;
          228: AtualizarVersao229;
          229: AtualizarVersao230;
          230: AtualizarVersao231;
          231: AtualizarVersao232;
          232: AtualizarVersao233;
          233: AtualizarVersao234;
          234: AtualizarVersao235;
          235: AtualizarVersao236;
          236: AtualizarVersao237;
          237: AtualizarVersao238;
          238: AtualizarVersao239;
          239: AtualizarVersao240;
          240: AtualizarVersao241;
          241: AtualizarVersao242;
          242: AtualizarVersao243;
          243: AtualizarVersao244;
          244: AtualizarVersao245;
          245: AtualizarVersao246;
          246: AtualizarVersao247;
          247: AtualizarVersao248;
          248: AtualizarVersao249;
          249: AtualizarVersao250;
          250: AtualizarVersao251;
          251: AtualizarVersao252;
          252: AtualizarVersao253;
          253: AtualizarVersao254;
          254: AtualizarVersao255;
          255: AtualizarVersao256;
          256: AtualizarVersao257;
          257: AtualizarVersao258;
          258: AtualizarVersao259;
          259: AtualizarVersao260;
          260: AtualizarVersao261;
          261: AtualizarVersao262;
          262: AtualizarVersao263;
          263: AtualizarVersao264;
          264: AtualizarVersao265;
          265: AtualizarVersao266;
          266: AtualizarVersao267;
          267: AtualizarVersao268;
          268: AtualizarVersao269;
          269: AtualizarVersao270;
          270: AtualizarVersao271;
          271: AtualizarVersao272;
          272: AtualizarVersao273;
          273: AtualizarVersao274;
          274: AtualizarVersao275;
          275: AtualizarVersao276;
          276: AtualizarVersao277;
          277: AtualizarVersao278;
          278: AtualizarVersao279;
          279: AtualizarVersao280;
          280: AtualizarVersao281;
          281: AtualizarVersao282;
          282: AtualizarVersao283;
          283: AtualizarVersao284;
          284: AtualizarVersao285;
          285: AtualizarVersao286;
          286: AtualizarVersao287;
          287: AtualizarVersao288;
          288: AtualizarVersao289;
          289: AtualizarVersao290;
          290: AtualizarVersao291;
          291: AtualizarVersao292;
          292: AtualizarVersao293;
          293: AtualizarVersao294;
          294: AtualizarVersao295;
          295: AtualizarVersao296;
          296: AtualizarVersao297;
          297: AtualizarVersao298;
          298: AtualizarVersao299;
          299: AtualizarVersao300;
          300: AtualizarVersao301;
          301: AtualizarVersao302;
          302: AtualizarVersao303;
          303: AtualizarVersao304;
          304: AtualizarVersao305;
          305: AtualizarVersao306;
          306: AtualizarVersao307;
          307: AtualizarVersao308;
          308: AtualizarVersao309;
          309: AtualizarVersao310;
          310: AtualizarVersao311;
          311: AtualizarVersao312;
          312: AtualizarVersao313;
          313: AtualizarVersao314;
          314: AtualizarVersao315;
          315: AtualizarVersao316;
          316: AtualizarVersao317;
          317: AtualizarVersao318;
          318: AtualizarVersao319;
          319: AtualizarVersao320;
          320: AtualizarVersao321;
          321: AtualizarVersao322;
          322: AtualizarVersao323;
          323: AtualizarVersao324;
          324: AtualizarVersao325;
          325: AtualizarVersao326;
          326: AtualizarVersao327;
          327: AtualizarVersao328;
          328: AtualizarVersao329;
          329: AtualizarVersao330;
          330: AtualizarVersao331;
          331: AtualizarVersao332;
          332: AtualizarVersao333;
          333: AtualizarVersao334;
          334: AtualizarVersao335;
          335: AtualizarVersao336;
          336: AtualizarVersao337;
          337: AtualizarVersao338;
          338: AtualizarVersao339;
          339: AtualizarVersao340;
          340: AtualizarVersao341;
          341: AtualizarVersao342;
          342: AtualizarVersao343;
          343: AtualizarVersao344;
          344: AtualizarVersao345;
          345: AtualizarVersao346;
          346: AtualizarVersao347;
          347: AtualizarVersao348;
          348: AtualizarVersao349;
          349: AtualizarVersao350;
          350: AtualizarVersao351;
          351: AtualizarVersao352;
          352: AtualizarVersao353;
          353: AtualizarVersao354;
          354: AtualizarVersao355;
          355: AtualizarVersao356;
          356: AtualizarVersao357;
          357: AtualizarVersao358;
          358: AtualizarVersao359;
          359: AtualizarVersao360;
          360: AtualizarVersao361;
          361: AtualizarVersao362;
          {$ENDREGION}
          362: AtualizarVersao363;
          363: AtualizarVersao364;
          364: AtualizarVersao365;
          365: AtualizarVersao366;
          366: AtualizarVersao367;
          367: AtualizarVersao368;
          368: AtualizarVersao369;
          369: AtualizarVersao370;
          370: AtualizarVersao371;
          371: AtualizarVersao372;
          372: AtualizarVersao373;
          373: AtualizarVersao374;
          374: AtualizarVersao375;
          375: AtualizarVersao376;
          376: AtualizarVersao377;
          377: AtualizarVersao378;
          378: AtualizarVersao379;
          379: AtualizarVersao380;
          380: AtualizarVersao381;
          381: AtualizarVersao382;
          382: AtualizarVersao383;
          383: AtualizarVersao384;
          384: AtualizarVersao385;
          385: AtualizarVersao386;
          386: AtualizarVersao387;
          387: AtualizarVersao388;
          388: AtualizarVersao389;
          389: AtualizarVersao390;
          390: AtualizarVersao391;
          391: AtualizarVersao392;
          392: AtualizarVersao393;
          393: AtualizarVersao394;
          394: AtualizarVersao395;
          395: AtualizarVersao396;
          396: AtualizarVersao397;
          397: AtualizarVersao398;
          398: AtualizarVersao399;
          399: AtualizarVersao400;
          400: AtualizarVersao401;
          401: AtualizarVersao402;
          402: AtualizarVersao403;
          403: AtualizarVersao404;
          404: AtualizarVersao405;
          405: AtualizarVersao406;
          else raise Exception.CreateFmt('Não existe rotina de atualização da versão %d.',[VersaoAtual+1]);
        end;
      until DM.TBVersaoVER_VERSAOBASE.AsInteger=VersaoBase;

      if TabelasParaReordenar.IndexOf('TODAS') >= 0 then
      ReordenarTabelasTodas else
      if TabelasParaReordenar.Count > 0 then
      ReordenarTabelas(TabelasParaReordenar);

    finally
      FreeAndNil(TabelasParaReordenar);
    end;

  finally
    Screen.Cursor:=crDefault;
    FreeAndNil(FormAtualizacoes);
  end;
end;

procedure ReordenarTabelas(Tabelas: TStringList);
var I: Word;
  Anterior: String;
begin
  Tabelas.Sort; //ordem alfabetica.
  Anterior:='';
  FormReorder:=TFormReorder.Create(nil);
  try
    for I:=0 to Tabelas.Count-1 do
    begin
      if Tabelas[I]=Anterior then
      Continue;

      FormAtualizacoes.Label1.Caption:='Reordenando tabela '+Tabelas[I]+'...';
      Application.ProcessMessages;
      FormReorder.QYTabelas.Close;
      FormReorder.QYTabelas.SQL.Clear;
      FormReorder.QYTabelas.SQL.Add('select * from RDB$RELATIONS where RDB$FLAGS=1 and RDB$RELATION_NAME=:tabela order by RDB$RELATION_NAME');
      FormReorder.QYTabelas.ParamByName('tabela').AsString:=Tabelas[I];
      FormReorder.QYTabelas.Open;
      FormReorder.PngBitBtn1.Click;
      Anterior:=Tabelas[I];
    end;
  finally
    FreeAndNil(FormReorder);
  end;
end;

procedure ReordenarTabelasTodas;
begin
  Application.CreateForm(TFormAtualizacoes, FormAtualizacoes);
  FormAtualizacoes.Show;
  Application.ProcessMessages;

  Application.CreateForm(TFormReorder, FormReorder);
  FormReorder.QYTabelas.First;
  while not FormReorder.QYTabelas.Eof do
  begin
    FormAtualizacoes.Label1.Caption:='Reordenando tabela '+Trim(FormReorder.QYTabelasRDBRELATION_NAME.Value)+'...';
    Application.ProcessMessages;
    FormReorder.BitBtn1.Click;
    FormReorder.BitBtn3.Click;
    FormReorder.QYTabelas.Next;
  end;
  FormReorder.Free;
  FormReorder:=nil;
  FormAtualizacoes.Free;
  FormAtualizacoes:=nil;
end;

procedure ExecutarScript(ANovaVersao: Integer; const ASQL: String);
begin
  //DM.FDScript.ScriptOptions.OnError := oeStop;
  DM.TRScript.StartTransaction;
  try
    DM.FDScript.SQLScripts.Clear;
    DM.FDScript.SQLScripts.Add;
    DM.FDScript.SQLScripts[0].SQL.Text:=ASQL+sLineBreak+Format('UPDATE VERSAO SET VER_VERSAOBASE = %d;',[ANovaVersao]);
    DM.FDScript.ValidateAll;
    DM.FDScript.ExecuteAll;

    DM.TRScript.Commit;
    DM.TBVersao.Close;
    DM.TBVersao.Open;
  except on E:Exception do
    begin
      if DM.TRScript.Active then
      DM.TRScript.Rollback;
      raise Exception.CreateFmt('Erro ao atualizar a base para a versão %d.'#13#13'%s',[ANovaVersao, E.Message]);
    end;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
// ROTINAS DE ATUALIZACOES DE BASE.                                           //
////////////////////////////////////////////////////////////////////////////////
// Exemplos de SQL.
//   'update LOCS set LOS_PICKLIST=''CODIGO;CLIENTE;BANCO;AGENCIA;CONTA;NUMERO;VALOR;DATA INICIAL;DATA FINAL;'' where LOS_TELA=''Cheques'';'
//   'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Seguros'',''TFormSeguros'',''NOME CLIENTE'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME CLIENTE;PROPOSTA;APOLICE;CODIGO SEGURADORA;SEGURADORA;'');'+
//   'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormFornecedoresAnexos'',''Cadastro de Fornecedores - Anexos'',''A'',100);'
//   'delete from SQLS where SQL_FORM=''FormClientesLoc'';'
////////////////////////////////////////////////////////////////////////////////
procedure AtualizarVersao406;
begin
  ExecutarScript(406,
    'ALTER TABLE EMPRESA ADD EMP_LOGOSVG DN_BLOBTEXTO;'+#13#10
  );
  TabelasParaReordenar.Add('EMPRESA');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao405;
begin
  ExecutarScript(405,
    'ALTER TABLE IASMINLOGS ADD IAL_EXPLICACAO DN_BLOBTEXTO;'+#13#10
  );
  TabelasParaReordenar.Add('IASMINLOGS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao404;
begin
  ExecutarScript(404,
    'UPDATE METAS SET MET_REPRESENTANTE=''N'';'+#13#10
  );
  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao403;
begin
  ExecutarScript(403,
    'ALTER TABLE NFE ADD CONSTRAINT FK_NFE_REPRESENTANTE FOREIGN KEY (NFE_REPRESENTANTE) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+#13#10+
    'ALTER TABLE VENDAS ADD CONSTRAINT FK_VED_REPRESENTANTE FOREIGN KEY (VED_REPRESENTANTE) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+#13#10+
    'ALTER TABLE RECEBER ADD CONSTRAINT FK_REE_REPRESENTANTE FOREIGN KEY (REE_REPRESENTANTE) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+#13#10+
    'ALTER TABLE METAS ADD MET_REPRESENTANTE DN_FLAG;'+#13#10
  );
  TabelasParaReordenar.Add('METAS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao402;
begin
  ExecutarScript(402,
    'ALTER TABLE NFE ALTER NFE_REPRESENTANTE TYPE DN_CODIGO;'+#13#10+
    'ALTER TABLE VENDAS ALTER VED_REPRESENTANTE TYPE DN_CODIGO;'+#13#10+
    'ALTER TABLE RECEBER ALTER REE_REPRESENTANTE TYPE DN_CODIGO;'+#13#10
  );
  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao401;
begin
  ExecutarScript(401,
    'UPDATE NFE SET NFE_REPRESENTANTE=NFE_VENDEDOR, NFE_COMISSAOREP=NFE_COMISSAO, NFE_TOTALCOMISSAOREP=NFE_TOTALCOMISSAO;'+#13#10+
    'UPDATE NFEITENS SET NFI_COMISSAOREP=NFI_COMISSAO, NFI_VALORCOMISSAOREP=NFI_VALORCOMISSAO;'+#13#10+

    'UPDATE VENDAS SET VED_REPRESENTANTE=VED_VENDEDOR, VED_COMISSAOREP=VED_COMISSAO, VED_TOTALCOMISSAOREP=VED_TOTALCOMISSAO;'+#13#10+
    'UPDATE VENDASITENS SET VEI_COMISSAOREP=VEI_COMISSAO, VEI_VALORCOMISSAOREP=VEI_VALORCOMISSAO;'+#13#10+

    'UPDATE RECEBER SET REE_REPRESENTANTE=REE_VENDEDOR;'
  );
  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao400;
begin
  ExecutarScript(400,
    'ALTER TABLE NFE '+#13#10+
    '  ADD NFE_REPRESENTANTE DN_NUMERO,'+#13#10+
    '  ADD NFE_COMISSAOREP DN_VALOR,'+#13#10+
    '  ADD NFE_TOTALCOMISSAOREP DN_MONEY;'+#13#10+

    'ALTER TABLE NFEITENS'+#13#10+
    '  ADD NFI_COMISSAOREP DN_VALOR,'+#13#10+
    '  ADD NFI_VALORCOMISSAOREP DN_MONEY;'+#13#10+

    'ALTER TABLE VENDAS '+#13#10+
    '  ADD VED_REPRESENTANTE DN_NUMERO,'+#13#10+
    '  ADD VED_COMISSAOREP DN_VALOR,'+#13#10+
    '  ADD VED_TOTALCOMISSAOREP DN_MONEY;'+#13#10+

    'ALTER TABLE VENDASITENS'+#13#10+
    '  ADD VEI_COMISSAOREP DN_VALOR,'+#13#10+
    '  ADD VEI_VALORCOMISSAOREP DN_MONEY;'+#13#10+

    'ALTER TABLE RECEBER ADD REE_REPRESENTANTE DN_NUMERO;'+#13#10
  );
  TabelasParaReordenar.Add('NFE');
  TabelasParaReordenar.Add('NFEITENS');
  TabelasParaReordenar.Add('VENDAS');
  TabelasParaReordenar.Add('VENDASITENS');
  TabelasParaReordenar.Add('RECEBER');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao399;
begin
  ExecutarScript(399,
    'ALTER TABLE BOLETOS'+#13#10+
    '  ALTER BOL_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER BOL_VALORBOLETO TYPE DN_MONEY,'+#13#10+
    '  ALTER BOL_VALORITENS TYPE DN_MONEY,'+#13#10+
    '  ALTER BOL_VALORJUROS TYPE DN_MONEY,'+#13#10+
    '  ALTER BOL_VALORMULTA TYPE DN_MONEY,'+#13#10+
    '  ALTER BOL_VALORPAGO TYPE DN_MONEY,'+#13#10+
    '  ALTER BOL_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CAIXAMOV'+#13#10+
    '  ALTER CAI_SALDOANTERIOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CAI_SALDOPOSTERIOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CAI_VALOR TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CAIXASALDO ALTER CAS_SALDOATUAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CHEQUES ALTER CHE_VALOR TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CLIENTES ALTER CLI_LIMITECREDITO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE COMANDAS'+#13#10+
    '  ALTER CMD_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CMD_DINHEIRO TYPE DN_MONEY,'+#13#10+
    '  ALTER CMD_TOTALITENS TYPE DN_MONEY,'+#13#10+
    '  ALTER CMD_TROCO TYPE DN_MONEY,'+#13#10+
    '  ALTER CMD_VALORCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER CMD_VALORPAGAR TYPE DN_MONEY,'+#13#10+
    '  ALTER CMD_VALORPAGO TYPE DN_MONEY,'+#13#10+
    '  ALTER CMD_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE COMANDASITENS'+#13#10+
    '  ALTER CDI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER CDI_VALORUNITARIO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE COMPRAS'+#13#10+
    '  ALTER COM_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALISS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALITENS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALPRODUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALSERVICOS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_TOTALTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_VALORDESPACES TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER COM_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE COMPRASITENS'+#13#10+
    '  ALTER COI_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_BASEICMSRED TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORACESSORIAS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORISS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORTOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER COI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CONSULTAS ALTER COS_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CONSULTASITENS ALTER CSI_VALOR TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CONTAS'+#13#10+
    '  ALTER CON_SALDO TYPE DN_MONEY,'+#13#10+
    '  ALTER CON_VALORBOLETO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CONTASMOV'#13#10+
    '  ALTER CMO_SALDOANTERIOR TYPE DN_MONEY,'#13#10+
    '  ALTER CMO_SALDOPOSTERIOR TYPE DN_MONEY,'#13#10+
    '  ALTER CMO_VALOR TYPE DN_MONEY;'#13#10+

    'ALTER TABLE CONTRATOS'+#13#10+
    '  ALTER CTI_DESCPARCELAVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CTI_VALORALUGUEL TYPE DN_MONEY,'+#13#10+
    '  ALTER CTI_VALORALUGUELVECTO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CTE'+#13#10+
    '  ALTER CTE_AEREOTARIFAVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_BASEICMSRED TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_SEGUROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_TOTALCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_TOTALFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_TOTALICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_TOTALICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_TOTALICMSUFFIM TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_TOTALICMSUFINI TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_TOTALTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_VALORCREDITOICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_VALORNOTAS TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_VALOROUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER CTE_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CTENOTAS'+#13#10+
    '  ALTER CTN_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER CTN_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER CTN_TOTALICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER CTN_TOTALICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER CTN_TOTALPRODUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER CTN_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CUPOM'+#13#10+
    '  ALTER CUP_ACREVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CUP_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CUP_TOTALITENS TYPE DN_MONEY,'+#13#10+
    '  ALTER CUP_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE CUPOMITENS'+#13#10+
    '  ALTER CUI_ACREVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CUI_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER CUI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER CUI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE DELIVERYS'+#13#10+
    '  ALTER DLV_CARTAO TYPE DN_MONEY,'+#13#10+
    '  ALTER DLV_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER DLV_DINHEIRO TYPE DN_MONEY,'+#13#10+
    '  ALTER DLV_TOTALITENS TYPE DN_MONEY,'+#13#10+
    '  ALTER DLV_TOTALTAXA TYPE DN_MONEY,'+#13#10+
    '  ALTER DLV_TROCO TYPE DN_MONEY,'+#13#10+
    '  ALTER DLV_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE DELIVERYSITENS'+#13#10+
    '  ALTER DLI_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER DLI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER DLI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE ESTOQUE ALTER EST_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE EXAMESTIPOS ALTER EXT_VALOR TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE FCIITENS'+#13#10+
    '  ALTER FII_VALORPARCELA TYPE DN_MONEY,'+#13#10+
    '  ALTER FII_VALORSAIDA TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE GNRE'+#13#10+
    '  ALTER GNR_VALORATUALIZACAO TYPE DN_MONEY,'+#13#10+
    '  ALTER GNR_VALORJUROS TYPE DN_MONEY,'+#13#10+
    '  ALTER GNR_VALORMULTA TYPE DN_MONEY,'+#13#10+
    '  ALTER GNR_VALORPRINCIPAL TYPE DN_MONEY,'+#13#10+
    '  ALTER GNR_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE IMOVEIS'+#13#10+
    '  ALTER IMO_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER IMO_VALORALUGUEL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE LOCACOES'+#13#10+
    '  ALTER LOC_VALORLOCACAO TYPE DN_MONEY,'+#13#10+
    '  ALTER LOC_VALOROBJETO TYPE DN_MONEY,'+#13#10+
    '  ALTER LOC_VALORPAGO TYPE DN_MONEY,'+#13#10+
    '  ALTER LOC_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE MANIFESTACOES ALTER MAN_VALORNOTA TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE MDFE ALTER MDF_VALORCARGA TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE MENSALIDADES ALTER MNS_VALOR TYPE DN_MONEY;'#13#10+

    'ALTER TABLE METAS'+#13#10+
    '  ALTER MET_BONUSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER MET_METAVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER MET_SALARIOBASE TYPE DN_MONEY,'+#13#10+
    '  ALTER MET_TOTALCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER MET_TOTALLIQUIDADO TYPE DN_MONEY,'+#13#10+
    '  ALTER MET_TOTALVENDAS TYPE DN_MONEY,'+#13#10+
    '  ALTER MET_TOTALVENDASCOMISSIONADAS TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE MOVIMENTOS'+#13#10+
    '  ALTER MOV_TOTALACRESCIMO TYPE DN_MONEY,'+#13#10+
    '  ALTER MOV_TOTALCANCELADO TYPE DN_MONEY,'+#13#10+
    '  ALTER MOV_TOTALDESCONTO TYPE DN_MONEY,'+#13#10+
    '  ALTER MOV_TOTALFINAL TYPE DN_MONEY,'+#13#10+
    '  ALTER MOV_TOTALNAOFISCAL TYPE DN_MONEY,'+#13#10+
    '  ALTER MOV_TOTALRECEBIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER MOV_TOTALSANGRIA TYPE DN_MONEY,'+#13#10+
    '  ALTER MOV_TOTALSUPRIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER MOV_TOTALTROCO TYPE DN_MONEY,'+#13#10+
    '  ALTER MOV_TOTALVENDA TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE NFCE'+#13#10+
    '  ALTER NFC_ACREVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_CBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_CBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_CBSDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_CBSDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_CBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_CBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_CBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_CBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_CUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSMUNDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSMUNDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSMUNVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSUFDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSUFDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSUFVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_IBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALPRODUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_TOTALTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_VALORRECEBIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_VALORTOTALRTC TYPE DN_MONEY,'+#13#10+
    '  ALTER NFC_VALORTROCO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE NFCEITENS'+#13#10+
    '  ALTER NCI_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_BASEICMSRED TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_PRECOCUSTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_PRECOCUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORACESSORIAS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORCBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORCBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORCBSDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORCBSDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIBSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIBSMUNDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIBSMUNDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIBSUF TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIBSUFDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIBSUFDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORTOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NCI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE NFCEPAGAMENTOS ALTER NCP_VALOR TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE NFE'+#13#10+
    '  ALTER NFE_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEII TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEIRRF TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_CBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_CBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_CBSDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_CBSDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_CBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_CBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_CBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_CBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_CUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSMUNDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSMUNDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSMUNVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSUFDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSUFDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSUFVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_IBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALADUANA TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALII TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALIOF TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALIRRF TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALITENS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALPRODUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALSERVICOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_TOTALTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_VALORDESPACES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NFE_VALORTOTALRTC TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE NFEITENS'+#13#10+
    '  ALTER NFI_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEICMSRED TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEICMSSTRET TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEII TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_DIVALORAFRMM TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_PRECOCUSTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_PRECOCUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORACESSORIAS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORADUANA TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORCBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORCBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORCBSDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORCBSDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIBSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIBSMUNDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIBSMUNDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIBSUF TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIBSUFDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIBSUFDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORICMSDESONERADO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORICMSSTRET TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORICMSSUBSTITUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORII TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIOF TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORTOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NFI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE NFSE'+#13#10+
    '  ALTER NFS_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_CBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_CBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_CBSDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_CBSDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_CBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_CBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_CBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_CBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSMUNDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSMUNDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSMUNVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSUFDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSUFDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSUFVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_IBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALDEDUCOES TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALSERVICOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_TOTALTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALORCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALORCREDITO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALORCSLL TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALORINSS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALORIR TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALORISSRETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALORLIQUIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALOROUTRASRET TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALORPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NFS_VALORTOTALRTC TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE NFSEITENS'+#13#10+
    '  ALTER NSI_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORCBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORCBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORCBSDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORCBSDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORDEDUCOES TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIBS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIBSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIBSMUNDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIBSMUNDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIBSUF TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIBSUFDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIBSUFDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NSI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE NOTAS'+#13#10+
    '  ALTER NOT_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_BASEII TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_CUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALADUANA TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALII TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALIOF TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALITENS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALPRODUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALSERVICOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_TOTALTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_VALORDESPACES TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOT_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE NOTASITENS'+#13#10+
    '  ALTER NOI_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASEICMSRED TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASEICMSSTRET TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASEII TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_DIVALORAFRMM TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_PRECOCUSTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_PRECOCUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORACESSORIAS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORADUANA TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORICMSDESONERADO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORICMSSTRET TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORICMSSUBSTITUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORII TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORIOF TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORISS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORTOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER NOI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE OBJETOS'+#13#10+
    '  ALTER OBJ_VALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER OBJ_VALORLOCACAO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE PAGAR'+#13#10+
    '  ALTER PAG_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER PAG_JUROSPAGO TYPE DN_MONEY,'+#13#10+
    '  ALTER PAG_MULTAPAGO TYPE DN_MONEY,'+#13#10+
    '  ALTER PAG_VALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER PAG_VALORJUROS TYPE DN_MONEY,'+#13#10+
    '  ALTER PAG_VALORMULTA TYPE DN_MONEY,'+#13#10+
    '  ALTER PAG_VALORORIGINAL TYPE DN_MONEY,'+#13#10+
    '  ALTER PAG_VALORPAGO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE PARAMETROS'+#13#10+
    '  ALTER PAR_ACRESCIMOVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER PAR_LIMITECREDITO TYPE DN_MONEY,'+#13#10+
    '  ALTER PAR_VALORBOLETO TYPE DN_MONEY,'+#13#10+
    '  ALTER PAR_VALORMULTA TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE PROCESSOS ALTER PCS_TOTALLANCAMENTOS TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE PROCESSOSCUSTAS'+#13#10+
    '  ALTER PSC_VALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER PSC_VALORANTERIOR TYPE DN_MONEY,'+#13#10+
    '  ALTER PSC_VALORPOSTERIOR TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE PRODUTOS'+#13#10+
    '  ALTER PRO_PRECO1 TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECO2 TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECO3 TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECO4 TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECO5 TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECO6 TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECOCUSTO TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECOCUSTOCOMP TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECOCUSTOMEDIO TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECOCUSTOULT TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECOVENDA TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECOVENDAMEDIO TYPE DN_MONEY,'+#13#10+
    '  ALTER PRO_PRECOVENDAULT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE PROJETOS'+#13#10+
    '  ALTER PRJ_TOTALPRODUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER PRJ_TOTALSERVICOS TYPE DN_MONEY,'+#13#10+
    '  ALTER PRJ_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER PRJ_VALORTOTALCUSTO TYPE DN_MONEY,'+#13#10+
    '  ALTER PRJ_VALORTOTALUP TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE PROJETOSITENS'+#13#10+
    '  ALTER PJI_PRECOCUSTO TYPE DN_MONEY,'+#13#10+
    '  ALTER PJI_PRECOCUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER PJI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER PJI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE PROMISSORIAS'+#13#10+
    '  ALTER PRM_VALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER PRM_VALORBAIXADO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE RECEBER'+#13#10+
    '  ALTER REE_ACRESCIMOVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_ACRESCIMOVALORPAGO TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_JUROSPAGO TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_MULTAPAGO TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_VALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_VALORACESSORIAS TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_VALORJUROS TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_VALORMULTA TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_VALORORIGINAL TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_VALORPAGO TYPE DN_MONEY,'+#13#10+
    '  ALTER REE_VALORSEMDESCONTO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE RECEBERITENS ALTER REI_VALOR TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE RECIBOS ALTER RCB_VALOR TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE SEGUROS'+#13#10+
    '  ALTER SEG_VALORADICIONAL TYPE DN_MONEY,'+#13#10+
    '  ALTER SEG_VALORCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SEG_VALORCOMISSAOVENDEDOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SEG_VALORFRANQUIA TYPE DN_MONEY,'+#13#10+
    '  ALTER SEG_VALORIOF TYPE DN_MONEY,'+#13#10+
    '  ALTER SEG_VALORPREMIO TYPE DN_MONEY,'+#13#10+
    '  ALTER SEG_VALORTOTAL TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE SEGUROSPARCELAS ALTER SGP_VALOR TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE SERVICOS'+#13#10+
    '  ALTER SER_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_CBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_CBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_CBSDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_CBSDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_CBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_CBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_CBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_CBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_CUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSMUNDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSMUNDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSMUNVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSUFDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSUFDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSUFVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_IBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALIS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALISS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALITENS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALPRODUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALSERVICOS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_TOTALTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_VALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_VALORDESPACES TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER SER_VALORTOTALRTC TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE SERVICOSITENS'+#13#10+
    '  ALTER SEI_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASEICMSRED TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_PRECOCUSTO TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_PRECOCUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORACESSORIAS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORCBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORCBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORCBSDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORCBSDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIBS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIBSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIBSMUNDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIBSMUNDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIBSUF TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIBSUFDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIBSUFDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORIS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORISS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORTOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER SEI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE VEICULOSCLIENTE ALTER VEC_VALORVENDA TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE VEICULOSVENDA'+#13#10+
    '  ALTER VEV_DESPESAS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEV_VALORCOMPRA TYPE DN_MONEY,'+#13#10+
    '  ALTER VEV_VALORSUGERIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER VEV_VALORVENDA TYPE DN_MONEY,'+#13#10+
    '  ALTER VEV_VALORVENDIDO TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE VENDAS'+#13#10+
    '  ALTER VED_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASEII TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_CBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_CBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_CBSDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_CBSDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_CBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_CBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_CBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_CBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_CUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSMONO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSMONORETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSMONORETIDO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSMUNDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSMUNDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSMUNVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSUFDEVOLUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSUFDIFERIMENTO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSUFVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_IBSVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALADUANA TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALII TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALIOF TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALIS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALISS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALITENS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALPRODUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALSERVICOS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_TOTALTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_VALORDESPACES TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER VED_VALORTOTALRTC TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE VENDASITENS'+#13#10+
    '  ALTER VEI_BASECOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASECOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEIBSCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEICMSRED TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEICMSSTRET TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEII TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEIS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEISS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_BASEPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_DESCVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_DIVALORAFRMM TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_LUCROVALOR TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_PRECOCUSTO TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_PRECOCUSTOTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORACESSORIAS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORADUANA TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORCBS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORCBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORCBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORCBSDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORCBSDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORCOFINS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORCOFINSST TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORCOMISSAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORFCP TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORFCPST TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORFRETE TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIBS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIBSCREDPRES TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIBSCREDPRESSUS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIBSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIBSMUNDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIBSMUNDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIBSUF TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIBSUFDEV TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIBSUFDIF TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORICMS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORICMSCREDSN TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORICMSDESONERADO TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORICMSST TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORICMSSTRET TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORICMSSUBSTITUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORICMSUFDEST TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORICMSUFREMET TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORII TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIOF TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIPI TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORIS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORISS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORISSDEDUCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORISSDESCCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORISSDESCINCOND TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORISSOUTROS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORISSRETENCAO TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORPIS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORPISST TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORSEGURO TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORTOTAL TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORTOTALBRUTO TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORTRIBUTOS TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORTRIBUTOSEST TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORTRIBUTOSFED TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORTRIBUTOSIMP TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORTRIBUTOSMUN TYPE DN_MONEY,'+#13#10+
    '  ALTER VEI_VALORUNIT TYPE DN_MONEY;'+#13#10+

    'ALTER TABLE VENDEDORES'+#13#10+
    '  ALTER VEN_SALARIOBASE TYPE DN_MONEY,'+#13#10+
    '  ALTER VEN_SALDOATUAL TYPE DN_MONEY;'+#13#10

  );
  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao398;
begin
  ExecutarScript(398,
    'ALTER TABLE IASMINLOGS ADD IAL_USUARIO DN_LOGIN;'+#13#10+
    'CREATE DOMAIN DN_MONEY AS NUMERIC(18,8);'+#13#10
  );
  TabelasParaReordenar.Add('IASMINLOGS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao397;
begin
  ExecutarScript(397,
    'INSERT INTO IASMIN VALUES ('''',1,''Duas etapas (mais barato)'',''2026-11-09'',''padrão do modelo'',''11:00:00'',500,''borland'',''C:\RUNTIME\FIRENET\IASMIN\'',''Google Gemini'',''gemini-flash-lite-latest'',60,180,'''',''IASMIN'',''RUNTIME'');'+#13#10
  );
  TabelasParaReordenar.Add('IASMIN');
  TabelasParaReordenar.Add('IASMINLOGS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao396;
begin
  ExecutarScript(396,
    'CREATE TABLE IASMINLOGS ('+#13#10+
    '  IAL_CACHE DN_NUMERO,'+#13#10+
    '  IAL_CODIGO DN_CODIGO,'+#13#10+
    '  IAL_DTCADASTRO DN_DATA,'+#13#10+
    '  IAL_ENTRADA DN_NUMERO,'+#13#10+
    '  IAL_ERRO DN_BLOBTEXTO,'+#13#10+
    '  IAL_ETAPA DN_ALEATORIO,'+#13#10+
    '  IAL_HRCADASTRO DN_HORA,'+#13#10+
    '  IAL_MODELO DN_MODELO,'+#13#10+
    '  IAL_PERGUNTA DN_BLOBTEXTO,'+#13#10+
    '  IAL_SAIDA DN_NUMERO,'+#13#10+
    '  IAL_SQL DN_BLOBTEXTO);'+#13#10+

    'ALTER TABLE IASMINLOGS ADD CONSTRAINT PK_IAL_CODIGO PRIMARY KEY (IAL_CODIGO);'+#13#10+

    'CREATE TABLE IASMIN ('+#13#10+
    '  IAS_CHAVEAPI DN_TEXTOLONGO,'+#13#10+
    '  IAS_CODIGO DN_CODIGO,'+#13#10+
    '  IAS_CONTEXTO DN_DESCRICAO,'+#13#10+
    '  IAS_DTATUALIZACAO DN_DATA,'+#13#10+
    '  IAS_ESFORCO DN_ACESSORIOS,'+#13#10+
    '  IAS_HRATUALIZACAO DN_HORA,'+#13#10+
    '  IAS_MAXLINHAS DN_NUMERO,'+#13#10+
    '  IAS_PASSWORD DN_TEXTOLONGO,'+#13#10+
    '  IAS_PASTACONTEXTO DN_PATH,'+#13#10+
    '  IAS_PROVEDOR DN_DESCRICAO,'+#13#10+
    '  IAS_MODELO DN_MODELO,'+#13#10+
    '  IAS_TEMPOLIMITECONSULTA DN_NUMERO,'+#13#10+
    '  IAS_TEMPOLIMITEIA DN_NUMERO,'+#13#10+
    '  IAS_URLBASE DN_PATH,'+#13#10+
    '  IAS_USER DN_LOGIN,'+#13#10+
    '  IAS_USUARIO DN_LOGIN);'+#13#10+

    'ALTER TABLE IASMIN ADD CONSTRAINT PK_IAS_CODIGO PRIMARY KEY (IAS_CODIGO);'+#13#10+
    'CREATE SEQUENCE GEN_IASMINLOGS;'
  );
  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao395;
begin
  ExecutarScript(395,
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Lotes'',''TFormLotes'',''CODIGO'',''CODIGO;LOTE;CODIGO PRODUTO;NOME PRODUTO;'');'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Lotes com Status'',''TFormLotes'',''ABERTOS'',''TODOS;ABERTOS;BAIXADOS;'');'+#13#10
  );
  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao394;
begin
  ExecutarScript(394,
    'UPDATE EMPRESA SET EMP_IMINFORMAR=''EM AMBAS'';'+#13#10
  );
  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao393;
begin
  ExecutarScript(393,
    'ALTER TABLE EMPRESA ADD EMP_IMINFORMAR DN_ALEATORIO;'+#13#10
  );
  TabelasParaReordenar.Add('EMPRESA');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao392;
begin
  ExecutarScript(392,
    'UPDATE NFE SET NFE_BASEIRRF=0, NFE_TOTALIRRF=0;'+#13#10
  );
  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao391;
begin
  ExecutarScript(391,
    'ALTER TABLE NFE ADD NFE_BASEIRRF DN_VALOR, ADD NFE_TOTALIRRF DN_VALOR;'+#13#10
  );
  TabelasParaReordenar.Add('NFE');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao390;
begin
  ExecutarScript(390,
    'UPDATE EMPRESA SET EMP_REGIMEAPURACAOISS=''1 - REGIME DE APURACAO DOS TRIBUTOS FEDERAIS E MUNICIPAL PELO SN'';'+#13#10
  );
  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao389;
begin
  ExecutarScript(389,
    'CREATE DOMAIN DN_REGIME AS VARCHAR(150);'+#13#10+
    'ALTER TABLE EMPRESA ADD EMP_REGIMEAPURACAOISS DN_REGIME;'
  );
  TabelasParaReordenar.Add('EMPRESA');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao388;
begin
  ExecutarScript(388,
    'update NFSE set NFS_GOVERNAMENTAL=''0 - NENHUM'', NFS_GOVERNAMENTALOP=''0 - NENHUM'';'
  );
  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao387;
begin
  ExecutarScript(387,
    'ALTER DOMAIN DN_OPERACAOENTE TYPE VARCHAR(70) CHARACTER SET WIN1252;'+#13#10+
    'ALTER TABLE NFSEITENS'+#13#10+
    '  ADD NSI_ALIQCBS DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQCBSDIF DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQCBSEFE DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQCBSRED DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIBSMUN DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIBSMUNEFE DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIBSMUNRED DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIBSUF DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIBSUFEFE DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIBSUFRED DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQIS DN_VALOR,'+#13#10+
    '  ADD NSI_ALIQISESP DN_VALOR,'+#13#10+
    '  ADD NSI_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD NSI_BASEIS DN_VALOR,'+#13#10+
    '  ADD NSI_CBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD NSI_CLASSTRIBIBSCBS DN_NUMEROCHAR,'+#13#10+
    '  ADD NSI_CLASSTRIBIS DN_NUMEROCHAR,'+#13#10+
    '  ADD NSI_CSTIBSCBS DN_NUMEROCHAR,'+#13#10+
    '  ADD NSI_CSTIS DN_NUMEROCHAR,'+#13#10+
    '  ADD NSI_IBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD NSI_VALORCBS DN_VALOR,'+#13#10+
    '  ADD NSI_VALORCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NSI_VALORCBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NSI_VALORCBSDEV DN_VALOR,'+#13#10+
    '  ADD NSI_VALORCBSDIF DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIBS DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIBSMUN DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIBSMUNDEV DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIBSUF DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIBSUFDEV DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD NSI_VALORIS DN_VALOR;'+#13#10+

    'ALTER TABLE NFSE'+#13#10+
    '  ADD NFS_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD NFS_BASEIS DN_VALOR,'+#13#10+
    '  ADD NFS_CBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFS_CBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NFS_CBSDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD NFS_CBSDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD NFS_CBSMONO DN_VALOR,'+#13#10+
    '  ADD NFS_CBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD NFS_CBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD NFS_CBSVALOR DN_VALOR,'+#13#10+
    '  ADD NFS_FINALIDADE DN_FINALIDADE,'+#13#10+
    '  ADD NFS_GOVERNAMENTAL DN_TIPOENTE,'+#13#10+
    '  ADD NFS_GOVERNAMENTALALIQRED DN_VALOR,'+#13#10+
    '  ADD NFS_GOVERNAMENTALOP DN_OPERACAOENTE,'+#13#10+
    '  ADD NFS_IBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFS_IBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NFS_IBSMONO DN_VALOR,'+#13#10+
    '  ADD NFS_IBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD NFS_IBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD NFS_IBSMUNDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD NFS_IBSMUNDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD NFS_IBSMUNVALOR DN_VALOR,'+#13#10+
    '  ADD NFS_IBSUFDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD NFS_IBSUFDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD NFS_IBSUFVALOR DN_VALOR,'+#13#10+
    '  ADD NFS_IBSVALOR DN_VALOR,'+#13#10+
    '  ADD NFS_TOTALIS DN_VALOR,'+#13#10+
    '  ADD NFS_VALORTOTALRTC DN_VALOR;'+#13#10+

    'ALTER TABLE CLASSTRIB'+#13#10+
    '  ADD CLT_DOCDIR DN_FLAG,'+#13#10+
    '  ADD CLT_DOCDUIMP DN_FLAG,'+#13#10+
    '  ADD CLT_DTPUBLICACAO DN_DATA,'+#13#10+
    '  ADD CLT_DTVIGENCIAINICIO DN_DATA,'+#13#10+
    '  ADD CLT_DTVIGENCIAFIM DN_DATA,'+#13#10+
    '  ADD CLT_LINK DN_PATH,'+#13#10+
    '  ADD CLT_TIPORECEITA DN_DESCRICAO;'+#13#10
 );

  TabelasParaReordenar.Add('NFSE');
  TabelasParaReordenar.Add('NFSEITENS');
  TabelasParaReordenar.Add('CLASSTRIB');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao386;
begin
  ExecutarScript(386,
    'ALTER TABLE NFCEITENS'+#13#10+
    '  ADD NCI_ALIQCBS DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQCBSDIF DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQCBSEFE DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQCBSRED DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIBSMUN DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIBSMUNEFE DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIBSMUNRED DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIBSUF DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIBSUFEFE DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIBSUFRED DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQIS DN_VALOR,'+#13#10+
    '  ADD NCI_ALIQISESP DN_VALOR,'+#13#10+
    '  ADD NCI_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD NCI_BASEIS DN_VALOR,'+#13#10+
    '  ADD NCI_CBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD NCI_CLASSTRIBIBSCBS DN_NUMEROCHAR,'+#13#10+
    '  ADD NCI_CLASSTRIBIS DN_NUMEROCHAR,'+#13#10+
    '  ADD NCI_CSTIBSCBS DN_NUMEROCHAR,'+#13#10+
    '  ADD NCI_CSTIS DN_NUMEROCHAR,'+#13#10+
    '  ADD NCI_IBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD NCI_SOMACOFINSST DN_FLAG,'+#13#10+
    '  ADD NCI_SOMAPISST DN_FLAG,'+#13#10+
    '  ADD NCI_VALORCBS DN_VALOR,'+#13#10+
    '  ADD NCI_VALORCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NCI_VALORCBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NCI_VALORCBSDEV DN_VALOR,'+#13#10+
    '  ADD NCI_VALORCBSDIF DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIBS DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIBSMUN DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIBSMUNDEV DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIBSUF DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIBSUFDEV DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD NCI_VALORIS DN_VALOR;'+#13#10+

    'ALTER TABLE NFCE'+#13#10+
    '  ADD NFC_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD NFC_BASEIS DN_VALOR,'+#13#10+
    '  ADD NFC_CBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFC_CBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NFC_CBSDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD NFC_CBSDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD NFC_CBSMONO DN_VALOR,'+#13#10+
    '  ADD NFC_CBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD NFC_CBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD NFC_CBSVALOR DN_VALOR,'+#13#10+
    '  ADD NFC_GOVERNAMENTAL DN_TIPOENTE,'+#13#10+
    '  ADD NFC_GOVERNAMENTALALIQRED DN_VALOR,'+#13#10+
    '  ADD NFC_GOVERNAMENTALOP DN_OPERACAOENTE,'+#13#10+
    '  ADD NFC_IBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFC_IBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NFC_IBSMONO DN_VALOR,'+#13#10+
    '  ADD NFC_IBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD NFC_IBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD NFC_IBSMUNDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD NFC_IBSMUNDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD NFC_IBSMUNVALOR DN_VALOR,'+#13#10+
    '  ADD NFC_IBSUFDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD NFC_IBSUFDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD NFC_IBSUFVALOR DN_VALOR,'+#13#10+
    '  ADD NFC_IBSVALOR DN_VALOR,'+#13#10+
    '  ADD NFC_NOTACREDITO DN_NOTADEBCRED,'+#13#10+
    '  ADD NFC_NOTADEBITO DN_NOTADEBCRED,'+#13#10+
    '  ADD NFC_TOTALIS DN_VALOR,'+#13#10+
    '  ADD NFC_VALORTOTALRTC DN_VALOR;'
  );

  TabelasParaReordenar.Add('NFCE');
  TabelasParaReordenar.Add('NFCEITENS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao385;
begin
  ExecutarScript(385,
    'update CONDICOES set CPG_SOMENTEDIASUTEIS=''S'';'+#13#10+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormZapMensagens'',''Cadastro de Zap - Mensagens'',''A'',100);'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Zap Mensagens'',''TFormZapMensagens'',''DESTINO'',''CODIGO;DESTINO;VENDEDOR;NOME VENDEDOR;CONTEUDO;'');'+#13#10
  );

  TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao384;
begin
  ExecutarScript(384,
    'ALTER TABLE ZAPMENSAGENS'+#13#10+
    '  ADD ZAM_DTSTATUSWPP DN_DATA,'+#13#10+
    '  ADD ZAM_HRSTATUSWPP DN_HORA,'+#13#10+
    '  ADD ZAM_STATUSWPP DN_ACESSORIOS;'+#13#10+

    'ALTER TABLE ZAPINSTANCIAS ADD ZIN_WEBHOOKTOKEN DN_HASH;'+#13#10+

    'ALTER TABLE CONDICOES ADD CPG_SOMENTEDIASUTEIS DN_FLAG;'+#13#10+

    'ALTER TABLE CONDICOES ALTER CPG_DESCRICAO SET NOT NULL;'+#13#10
  );

  TabelasParaReordenar.Add('CONDICOES');
  TabelasParaReordenar.Add('ZAPMENSAGENS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;


procedure AtualizarVersao383;
begin
  ExecutarScript(383,
    'update CONDICOES set CPG_DESCRICAO=CPG_CODIGO where CPG_DESCRICAO is null or CPG_DESCRICAO='''' ;'+#13#10
  );

  //TabelasParaReordenar.Add('CONDICOES');
  //TabelasParaReordenar.Add('ZAPMENSAGENS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao382;
begin
  ExecutarScript(382,
    'alter table VENDEDORES alter VEN_ZAPINSTANCIA type DN_CODIGO;'+#13#10
  );

  //TabelasParaReordenar.Add('');
  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao381;
begin
  ExecutarScript(381,
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormZapInstancias'',''Cadastro de Zap - Instancias'',''A'',100);'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Zap Instancias'',''TFormZapInstancias'',''NOME'',''CODIGO;NOME;'');'+#13#10+
    'insert into ZAPINSTANCIAS (ZIN_CLIENTTOKEN, ZIN_CODIGO, ZIN_DTATUALIZACAO, ZIN_DTCADASTRO, ZIN_HRATUALIZACAO,'+#13#10+
    ' ZIN_HRCADASTRO, ZIN_INSTANCIAID, ZIN_INSTANCIATOKEN, ZIN_NOME, ZIN_NUMERO, ZIN_STATUS, ZIN_USUARIO) values ('+#13#10+
    QuotedStr('')+', gen_id(GEN_ZAPINSTANCIAS,1), ''2026-07-07'', ''2026-07-07'', ''07:30:00'', ''07:30:00'', '+QuotedStr('')+', '+QuotedStr('')+', ''INSTANCIA PADRAO'','+#13#10+
    QuotedStr('')+', ''A'', ''RUNTIME'');'+#13#10+
    'update VENDEDORES set VEN_ZAPINSTANCIA=1;'
  );

  TabelasParaReordenar.Add('VENDEDORES');
  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao380;
begin
  ExecutarScript(380,
    'CREATE SEQUENCE GEN_ZAPINSTANCIAS;'+#13#10+
    'CREATE SEQUENCE GEN_ZAPMENSAGENS;'+#13#10+
    'CREATE TABLE ZAPINSTANCIAS ('+#13#10+
    '  ZIN_CLIENTTOKEN DN_HASH,'+#13#10+
    '  ZIN_CODIGO DN_CODIGO,'+#13#10+
    '  ZIN_DTATUALIZACAO DN_DATA,'+#13#10+
    '  ZIN_DTCADASTRO DN_DATA,'+#13#10+
    '  ZIN_HRATUALIZACAO DN_HORA,'+#13#10+
    '  ZIN_HRCADASTRO DN_HORA,'+#13#10+
    '  ZIN_INSTANCIAID DN_HASH,'+#13#10+
    '  ZIN_INSTANCIATOKEN DN_HASH,'+#13#10+
    '  ZIN_NOME DN_NOME,'+#13#10+
    '  ZIN_NUMERO DN_FONE,'+#13#10+
    '  ZIN_STATUS DN_FLAG,'+#13#10+
    '  ZIN_USUARIO DN_LOGIN);'+#13#10+
    'ALTER TABLE ZAPINSTANCIAS ADD CONSTRAINT PK_ZIN_CODIGO PRIMARY KEY (ZIN_CODIGO);'+#13#10+

    'CREATE TABLE ZAPMENSAGENS ('+#13#10+
    '  ZAM_ARQUIVO DN_BLOBIMAGEM,'+#13#10+
    '  ZAM_ARQUIVONOME DN_NOME,'+#13#10+
    '  ZAM_CODIGO DN_CODIGO,'+#13#10+
    '  ZAM_CONTEUDO DN_TEXTOLONGO,'+#13#10+
    '  ZAM_DESTINO DN_FONE,'+#13#10+
    '  ZAM_DTATUALIZACAO DN_DATA,'+#13#10+
    '  ZAM_DTCADASTRO DN_DATA,'+#13#10+
    '  ZAM_DTENVIO DN_DATA,'+#13#10+
    '  ZAM_HRATUALIZACAO DN_HORA,'+#13#10+
    '  ZAM_HRCADASTRO DN_HORA,'+#13#10+
    '  ZAM_HRENVIO DN_HORA,'+#13#10+
    '  ZAM_MESSAGEID DN_HASH,'+#13#10+
    '  ZAM_STATUS DN_FLAG,'+#13#10+
    '  ZAM_USUARIO DN_LOGIN,'+#13#10+
    '  ZAM_VENDEDOR DN_CODIGO,'+#13#10+
    '  ZAM_ZAAPID DN_HASH,'+#13#10+
    '  ZAM_ZAPINSTANCIA DN_CODIGO);'+#13#10+
    'ALTER TABLE ZAPMENSAGENS ADD CONSTRAINT PK_ZAM_CODIGO PRIMARY KEY (ZAM_CODIGO);'+#13#10+
    'ALTER TABLE ZAPMENSAGENS ADD CONSTRAINT FK_ZAM_ZAPINSTANCIA FOREIGN KEY (ZAM_ZAPINSTANCIA) REFERENCES ZAPINSTANCIAS(ZIN_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+#13#10+
    'ALTER TABLE ZAPMENSAGENS ADD CONSTRAINT FK_ZAM_VENDEDOR FOREIGN KEY (ZAM_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+#13#10+

    'ALTER TABLE VENDEDORES ADD VEN_ZAPINSTANCIA DN_NUMERO;'
  );

  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao379;
begin
  ExecutarScript(379,
    'ALTER TABLE PARAMETROS ADD PAR_LOCALANEXOSVENDEDORES DN_PATH;'+#13#10+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormVendedoresAnexos'',''Cadastro de Vendedores - Anexos'',''A'',100);'
  );

  TabelasParaReordenar.Add('PARAMETROS');
  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao378;
begin
  ExecutarScript(378,
    'ALTER TABLE MANIFESTACOES'+#13#10+
    '  DROP MAN_XMLCIENCIA,'+#13#10+
    '  DROP MAN_XMLNFE, '+#13#10+
    '  ADD MAN_CHAVEACESSO DN_CHAVEACESSO,'+#13#10+
    '  ADD MAN_CNPJ DN_DOCUMENTO,'+#13#10+
    '  ADD MAN_DESCRICAO DN_DESCRICAO,'+#13#10+
    '  ADD MAN_DHEMISSAO DN_DATAHORA,'+#13#10+
    '  ADD MAN_DHRECEBIMENTO DN_DATAHORA,'+#13#10+
    '  ADD MAN_IE DN_DOCUMENTO,'+#13#10+
    '  ADD MAN_NOME DN_NOME,'+#13#10+
    '  ADD MAN_PROTOCOLO DN_PROTOCOLO,'+#13#10+
    '  ADD MAN_SEQUENCIAEVENTO DN_NUMERO,'+#13#10+
    '  ADD MAN_STATUSNOTA DN_NUMERO,'+#13#10+
    '  ADD MAN_TIPOEVENTO DN_NUMERO,'+#13#10+
    '  ADD MAN_TIPONOTA DN_NUMERO,'+#13#10+
    '  ADD MAN_VALORNOTA DN_VALOR;'+#13#10
  );
  TabelasParaReordenar.Add('MANIFESTACOES');
  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao377;
begin
  ExecutarScript(377,
    'ALTER TABLE MANIFESTACOES ADD MAN_XMLCIENCIA DN_BLOBTEXTO;'+#13#10
  );
  TabelasParaReordenar.Add('MANIFESTACOES');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao376;
begin
  ExecutarScript(376,
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormDashboard'',''Dashboard'',''A'',2);'+#13#10
  );
  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao375;
begin
  ExecutarScript(375,
    'ALTER TABLE VENDAS'+#13#10+
    '  ADD VED_DTENTREGA DN_DATA,'+#13#10+
    '  ADD VED_PRODUCAO DN_NUMERO;'+#13#10+

    'ALTER TABLE VENDASITENS'+#13#10+
    '  ADD VEI_DTENTREGA DN_DATA;'+#13#10+

    'ALTER TABLE COMPRAS ADD COM_DTENTREGA DN_DATA;'+#13#10+
    'ALTER TABLE COMPRASITENS ADD COI_DTENTREGA DN_DATA;'+#13#10
  );

  TabelasParaReordenar.Add('COMPRAS');
  TabelasParaReordenar.Add('COMPRASITENS');
  TabelasParaReordenar.Add('VENDAS');
  TabelasParaReordenar.Add('VENDASITENS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao374;
begin
  ExecutarScript(374,
    'UPDATE EMPRESA SET EMP_ENQUADRAMENTOISS2=EMP_ENQUADRAMENTOISS;'+#13#10
  );

  //TabelasParaReordenar.Add('CLIENTES');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao373;
begin
  ExecutarScript(373,
    'ALTER TABLE EMPRESA ADD EMP_ENQUADRAMENTOISS2 DN_DESCRICAO;'+#13#10
  );
  TabelasParaReordenar.Add('EMPRESA');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao372;
begin
  ExecutarScript(372,
    'UPDATE CLIENTES SET CLI_REPOSICOES=0;'+#13#10
  );
  //TabelasParaReordenar.Add('CLIENTES');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao371;
begin
  ExecutarScript(371,
    'ALTER TABLE CLIENTES ADD CLI_REPOSICOES DN_NUMERO;'+#13#10
  );

  TabelasParaReordenar.Add('CLIENTES');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao370;
begin
  ExecutarScript(370,
    'ALTER TABLE SERVICOS'+#13#10+
    '  ADD SER_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD SER_BASEIS DN_VALOR,'+#13#10+
    '  ADD SER_CBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD SER_CBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD SER_CBSDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD SER_CBSDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD SER_CBSMONO DN_VALOR,'+#13#10+
    '  ADD SER_CBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD SER_CBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD SER_CBSVALOR DN_VALOR,'+#13#10+
    '  ADD SER_IBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD SER_IBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD SER_IBSMONO DN_VALOR,'+#13#10+
    '  ADD SER_IBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD SER_IBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD SER_IBSMUNDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD SER_IBSMUNDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD SER_IBSMUNVALOR DN_VALOR,'+#13#10+
    '  ADD SER_IBSUFDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD SER_IBSUFDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD SER_IBSUFVALOR DN_VALOR,'+#13#10+
    '  ADD SER_IBSVALOR DN_VALOR,'+#13#10+
    '  ADD SER_TOTALIS DN_VALOR,'+#13#10+
    '  ADD SER_VALORTOTALRTC DN_VALOR;'+#13#10+

    'ALTER TABLE SERVICOSITENS'+#13#10+
    '  ADD SEI_ALIQCBS DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQCBSDIF DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQCBSEFE DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQCBSRED DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIBSMUN DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIBSMUNEFE DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIBSMUNRED DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIBSUF DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIBSUFEFE DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIBSUFRED DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQICMSSTRET DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQIS DN_VALOR,'+#13#10+
    '  ADD SEI_ALIQISESP DN_VALOR,'+#13#10+
    '  ADD SEI_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD SEI_BASEIS DN_VALOR,'+#13#10+
    '  ADD SEI_CBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD SEI_CLASSTRIBIBSCBS DN_NUMEROCHAR,'+#13#10+
    '  ADD SEI_CLASSTRIBIS DN_NUMEROCHAR,'+#13#10+
    '  ADD SEI_CSTIBSCBS DN_NUMEROCHAR,'+#13#10+
    '  ADD SEI_CSTIS DN_NUMEROCHAR,'+#13#10+
    '  ADD SEI_IBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD SEI_VALORCBS DN_VALOR,'+#13#10+
    '  ADD SEI_VALORCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD SEI_VALORCBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD SEI_VALORCBSDEV DN_VALOR,'+#13#10+
    '  ADD SEI_VALORCBSDIF DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIBS DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIBSMUN DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIBSMUNDEV DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIBSUF DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIBSUFDEV DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD SEI_VALORIS DN_VALOR;'+#13#10
  );

  TabelasParaReordenar.Add('SERVICOS');
  TabelasParaReordenar.Add('SERVICOSITENS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao369;
begin
  ExecutarScript(369,
    'UPDATE EMPRESA SET EMP_CNPJPREFEITURA=''83.102.459/0001-23'';'+#13#10
  );

  //TabelasParaReordenar.Add('EMPRESA');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao368;
begin
  ExecutarScript(368,
    'ALTER TABLE EMPRESA ADD EMP_CNPJPREFEITURA DN_DOCUMENTO;'+#13#10
  );

  TabelasParaReordenar.Add('EMPRESA');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao367;
begin
  ExecutarScript(367,
    'ALTER TABLE BOLETOS ADD BOL_CODIGOSOLICITACAO DN_DESCRICAO;'+#13#10+
    'ALTER TABLE CONTAS ADD CON_CEDENTEDOC DN_DOCUMENTO;'+#13#10+
    'ALTER TABLE NFSE '+#13#10+
    '  ADD NFS_CHAVEACESSO DN_CHAVEACESSO,'+#13#10+
    '  ADD NFS_IDDPS DN_CHAVEACESSO;'+#13#10
  );

  TabelasParaReordenar.Add('CONTAS');
  TabelasParaReordenar.Add('BOLETOS');
  TabelasParaReordenar.Add('NFSE');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao366;
begin
  ExecutarScript(366,
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormNbs'',''Cadastro de NBS'',''A'',100);'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''NBS'',''TFormNbs'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+#13#10+
    'update PRODUTOS SET PRO_NBS=''999999999'';'+#13#10+
    'update NFSEITENS SET NSI_NBS=''999999999'';'+#13#10+
    'delete from SQLS;'+#13#10
  );

  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao365;
begin
  ExecutarScript(365,
    'CREATE TABLE NBS ('+#13#10+
    '  NBS_CODIGO DN_TIPOISS NOT NULL,'+#13#10+
    '  NBS_DESCRICAO DN_TEXTOLONGO,'+#13#10+
    '  NBS_DTATUALIZACAO DN_DATA,'+#13#10+
    '  NBS_DTCADASTRO DN_DATA,'+#13#10+
    '  NBS_HRATUALIZACAO DN_HORA,'+#13#10+
    '  NBS_HRCADASTRO DN_HORA,'+#13#10+
    '  NBS_USUARIO DN_LOGIN);'+#13#10+

    'ALTER TABLE NBS ADD CONSTRAINT PK_NBS_CODIGO PRIMARY KEY (NBS_CODIGO);'+#13#10+

    'ALTER TABLE PRODUTOS ADD PRO_NBS DN_TIPOISS;'+#13#10+

    'ALTER TABLE NFSEITENS ADD NSI_NBS DN_TIPOISS;'+#13#10
  );

  TabelasParaReordenar.Add('NBS');
  TabelasParaReordenar.Add('PRODUTOS');
  TabelasParaReordenar.Add('NFSEITENS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao364;
begin
  ExecutarScript(364,
    'update PARAMETROS set '+#13#10+
    '  PAR_BOLETOSZAPASSUNTO=1, '+#13#10+
    '  PAR_NFEZAPASSUNTO=1, '+#13#10+
    '  PAR_NFSEZAPASSUNTO=1, '+#13#10+
    '  PAR_VENDAZAPASSUNTO=1, '+#13#10+
    '  PAR_ZAPBASE=''C:\RUNTIME\FIREZAP\DADOS\FIREZAP.FDP'', '+#13#10+
    '  PAR_ZAPSENHA=''borland'', '+#13#10+
    '  PAR_ZAPSERVIDOR=''servidor'', '+#13#10+
    '  PAR_ZAPUSUARIO=''SYSDBA''; '+#13#10
  );

  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao363;
begin
  ExecutarScript(363,
    'CREATE DOMAIN DN_SERVIDOR AS VARCHAR(20);'+#13#10+

    'ALTER TABLE PARAMETROS'+#13#10+
    '  ADD PAR_BOLETOSZAPASSUNTO DN_NUMERO,'+#13#10+
    '  ADD PAR_NFEZAPASSUNTO DN_NUMERO,'+#13#10+
    '  ADD PAR_NFSEZAPASSUNTO DN_NUMERO,'+#13#10+
    '  ADD PAR_VENDAZAPASSUNTO DN_NUMERO,'+#13#10+
    '  ADD PAR_ZAPBASE DN_PATH,'+#13#10+
    '  ADD PAR_ZAPSENHA DN_PASSWORD,'+#13#10+
    '  ADD PAR_ZAPSERVIDOR DN_SERVIDOR,'+#13#10+
    '  ADD PAR_ZAPUSUARIO DN_LOGIN;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao362;
begin
  ExecutarScript(362,
    'UPDATE PARAMETROS SET PAR_NFCEIMPRIMIRLOGO=''S'';'+#13#10+
    'UPDATE CONDICOES SET CPG_PADRAO=''N'';'+#13#10+

    'UPDATE CONDICOES SET CPG_PADRAO=''S'' WHERE CPG_CODIGO=(SELECT CPG_CODIGO FROM CONDICOES WHERE CPG_CUPOM=''S'' ORDER BY CPG_CODIGO ROWS 1);'+#13#10
  );

  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao361;
begin
  ExecutarScript(361,
    'ALTER TABLE PARAMETROS'+#13#10+
    '  ADD PAR_NFCECSCHOMOLOGACAO DN_SERIE,'+#13#10+
    '  ADD PAR_NFCECSCIDHOMOLOGACAO DN_SERIE,'+#13#10+
    '  ADD PAR_NFCEIMPRIMIRLOGO DN_FLAG;'+#13#10+

    'ALTER TABLE CONDICOES ADD CPG_PADRAO DN_FLAG;'+#13#10
  );

  TabelasParaReordenar.Add('CONDICOES');
  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao360;
begin
  ExecutarScript(360,
    'UPDATE PARAMETROS SET PAR_NFCETIPODANFCE=''ACBRPOSPRINTER'';'+#13#10
  );

  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao359;
begin
  ExecutarScript(359,
    'ALTER TABLE PARAMETROS ADD PAR_NFCETIPODANFCE DN_TIPODOCTO;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao358;
begin
  ExecutarScript(358,
    'UPDATE REGRASFISCAIS SET RGF_ALIQIS=0;'+#13#10
  );

  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao357;
begin
  ExecutarScript(357,
    'ALTER TABLE REGRASFISCAIS ADD RGF_ALIQIS DN_VALOR;'+#13#10
  );

  TabelasParaReordenar.Add('REGRASFISCAIS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao356;
begin
  ExecutarScript(356,
    'ALTER TABLE NFEITENS'+#13#10+
    '  ADD NFI_DFEREF DN_CHAVEACESSO,'+#13#10+
    '  ADD NFI_DFEREFITEM DN_NUMERO;'+#13#10+

    'ALTER TABLE VENDASITENS'+#13#10+
    '  ADD VEI_DFEREF DN_CHAVEACESSO,'+#13#10+
    '  ADD VEI_DFEREFITEM DN_NUMERO;'+#13#10
  );

  TabelasParaReordenar.Add('NFEITENS');
  TabelasParaReordenar.Add('VENDASITENS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao355;
begin
  ExecutarScript(355,
    'CREATE DOMAIN DN_ALIQUOTATIPO AS VARCHAR(25);'+#13#10+
    'ALTER TABLE CLASSTRIB ADD CLT_TIPOALIQUOTA DN_ALIQUOTATIPO;'
  );

  TabelasParaReordenar.Add('CLASSTRIB');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao354;
begin
  ExecutarScript(354,
    'ALTER TABLE NFCEITENS ADD NCI_VALORFRETE DN_VALOR;'+#13#10+
    'ALTER TABLE NFCE ADD NFC_VALORFRETE DN_VALOR;'
  );

  TabelasParaReordenar.Add('NFCE');
  TabelasParaReordenar.Add('NFCEITENS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao353;
begin
  ExecutarScript(353,
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Geracao de arquivo FCI'',''TFormFci'',''DATA INICIAL'',''CODIGO;DATA INICIAL;'');'+#13#10+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormFci'',''Cadastro de Geracao de Arquivos FCI'',''A'',1);'
  );

  //TabelasParaReordenar.Add('CST');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao352;
begin
  ExecutarScript(352,
    'CREATE TABLE FCI ('+#13#10+
    '  PFI_CODIGO DN_CODIGO,'+#13#10+
    '  PFI_DTATUALIZACAO DN_DATA,'+#13#10+
    '  PFI_DTCADASTRO DN_DATA,'+#13#10+
    '  PFI_DTENVIO DN_DATA,'+#13#10+
    '  PFI_HRATUALIZACAO DN_HORA,'+#13#10+
    '  PFI_HRCADASTRO DN_HORA,'+#13#10+
    '  PFI_HRENVIO DN_HORA,'+#13#10+
    '  PFI_PROTOCOLO DN_PROTOCOLO,'+#13#10+
    '  PFI_QUANTIDADEITENS DN_NUMERO,'+#13#10+
    '  PFI_STATUS DN_FLAG,'+#13#10+
    '  PFI_USUARIO DN_LOGIN);'+#13#10+

    'CREATE TABLE FCIITENS ('+#13#10+
    '  FII_CLASSFISCAL DN_CLASSFISCAL,'+#13#10+
    '  FII_CODIGO DN_CODIGO,'+#13#10+
    '  FII_CODIGOBARRAS DN_CODIGOBARRAS,'+#13#10+
    '  FII_CODIGOFCI DN_FCI,'+#13#10+
    '  FII_COEFICIENTE DN_VALOR,'+#13#10+
    '  FII_FCI DN_CODIGO,'+#13#10+
    '  FII_NOME DN_NOMEPLUS,'+#13#10+
    '  FII_PRODUTO DN_CODIGO,'+#13#10+
    '  FII_VALORPARCELA DN_VALOR,'+#13#10+
    '  FII_VALORSAIDA DN_VALOR,'+#13#10+
    '  FII_UNIDADE DN_UNIDADE,'+#13#10+
    '  FII_UNIDADEFCI DN_SIGLA5);'+#13#10+

    'ALTER TABLE FCI ADD CONSTRAINT PK_PFI_CODIGO PRIMARY KEY (PFI_CODIGO);'+#13#10+
    'ALTER TABLE FCIITENS ADD CONSTRAINT PK_FII_CODIGO PRIMARY KEY (FII_CODIGO);'+#13#10+
    'ALTER TABLE FCIITENS ADD CONSTRAINT FK_FII_PRODUTO FOREIGN KEY (FII_PRODUTO) REFERENCES PRODUTOS(PRO_CODIGO) ON UPDATE CASCADE;'+#13#10+

    'CREATE SEQUENCE GEN_FCI;'+#13#10+
    'CREATE SEQUENCE GEN_FCIITENS;'+#13#10
  );

  //TabelasParaReordenar.Add('CST');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao351;
begin
  ExecutarScript(351,
    'ALTER TABLE CST'+#13#10+
    '  DROP CST_DOCBPE,'+#13#10+
    '  DROP CST_DOCBPETM,'+#13#10+
    '  DROP CST_DOCCTE,'+#13#10+
    '  DROP CST_DOCCTEOS,'+#13#10+
    '  DROP CST_DOCNF3E,'+#13#10+
    '  DROP CST_DOCNFCE,'+#13#10+
    '  DROP CST_DOCNFCOM,'+#13#10+
    '  DROP CST_DOCNFE,'+#13#10+
    '  DROP CST_DOCNFSE,'+#13#10+
    '  ADD CST_AJUSTECREDITO DN_FLAG,'+#13#10+
    '  ADD CST_CREDPRESIBSZFM DN_FLAG;'+#13#10+

    'ALTER TABLE CLASSTRIB'+#13#10+
    '  ADD CLT_DOCBPE DN_FLAG,'+#13#10+
    '  ADD CLT_DOCBPETA DN_FLAG,'+#13#10+
    '  ADD CLT_DOCBPETM DN_FLAG,'+#13#10+
    '  ADD CLT_DOCCTE DN_FLAG,'+#13#10+
    '  ADD CLT_DOCCTEOS DN_FLAG,'+#13#10+
    '  ADD CLT_DOCDERE DN_FLAG,'+#13#10+
    '  ADD CLT_DOCNFAG DN_FLAG,'+#13#10+
    '  ADD CLT_DOCNFCE DN_FLAG,'+#13#10+
    '  ADD CLT_DOCNFCOM DN_FLAG,'+#13#10+
    '  ADD CLT_DOCNFEABI DN_FLAG,'+#13#10+
    '  ADD CLT_DOCNFE DN_FLAG,'+#13#10+
    '  ADD CLT_DOCNFGAS DN_FLAG,'+#13#10+
    '  ADD CLT_DOCNFSE DN_FLAG,'+#13#10+
    '  ADD CLT_DOCNFSEVIA DN_FLAG,'+#13#10+
    '  ADD CLT_DOCNF3E DN_FLAG,'+#13#10+
    '  ADD CLT_ESTORNOCREDITO DN_FLAG;'+#13#10
  );

  TabelasParaReordenar.Add('CST');
  TabelasParaReordenar.Add('CLASSTRIB');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao350;
begin
  ExecutarScript(350,
    'UPDATE PARAMETROS SET PAR_REGRAFISCALPADRAO=1;'+#13#10
  );

  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao349;
begin
  ExecutarScript(349,
    'ALTER TABLE PARAMETROS ADD PAR_REGRAFISCALPADRAO DN_NUMERO;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao348;
begin
  ExecutarScript(348,
    'UPDATE PARAMETROS SET PAR_NFSETIMEOUT=50000, PAR_TIPOAMBIENTENFCE=''1'', PAR_NFCETEMPOMSG=''5'', PAR_NFCEIMPRIMIR=''N'';'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao347;
begin
  ExecutarScript(347,
    'ALTER TABLE PARAMETROS '+#13#10+
    '  ADD PAR_NFCEIMPRIMIR DN_FLAG,'+#13#10+
    '  ADD PAR_NFCETEMPOMSG DN_NUMERO,'+#13#10+
    '  ADD PAR_NFSETIMEOUT DN_NUMERO,'+#13#10+
    '  ADD PAR_TIPOAMBIENTENFCE DN_FLAG;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao346;
begin
  ExecutarScript(346,
    'ALTER TABLE VENDASITENS ALTER VEI_CLASSTRIBIBSCBS TYPE DN_NUMEROCHAR;'+#13#10+
    'ALTER TABLE NFEITENS ALTER NFI_CLASSTRIBIBSCBS TYPE DN_NUMEROCHAR;'+#13#10
  );

  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao345;
begin
  ExecutarScript(345,
    'ALTER DOMAIN DN_NOTADEBCRED TYPE VARCHAR(100) CHARACTER SET WIN1252;'+#13#10
  );

  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao344;
begin
  ExecutarScript(344,
    'ALTER TABLE VENDAS'+#13#10+
    '  ADD VED_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD VED_BASEIS DN_VALOR,'+#13#10+
    '  ADD VED_CBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD VED_CBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD VED_CBSDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD VED_CBSDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD VED_CBSMONO DN_VALOR,'+#13#10+
    '  ADD VED_CBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD VED_CBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD VED_CBSVALOR DN_VALOR,'+#13#10+
    '  ADD VED_GOVERNAMENTAL DN_TIPOENTE,'+#13#10+
    '  ADD VED_GOVERNAMENTALALIQRED DN_VALOR,'+#13#10+
    '  ADD VED_GOVERNAMENTALOP DN_OPERACAOENTE,'+#13#10+
    '  ADD VED_IBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD VED_IBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD VED_IBSMONO DN_VALOR,'+#13#10+
    '  ADD VED_IBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD VED_IBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD VED_IBSMUNDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD VED_IBSMUNDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD VED_IBSMUNVALOR DN_VALOR,'+#13#10+
    '  ADD VED_IBSUFDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD VED_IBSUFDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD VED_IBSUFVALOR DN_VALOR,'+#13#10+
    '  ADD VED_IBSVALOR DN_VALOR,'+#13#10+
    '  ADD VED_NOTACREDITO DN_NOTADEBCRED,'+#13#10+
    '  ADD VED_NOTADEBITO DN_NOTADEBCRED,'+#13#10+
    '  ADD VED_TOTALIS DN_VALOR,'+#13#10+
    '  ADD VED_VALORTOTALRTC DN_VALOR;'+#13#10+

    'ALTER TABLE VENDASITENS'+#13#10+
    '  ADD VEI_ALIQCBS DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQCBSDIF DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQCBSEFE DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQCBSRED DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIBSMUN DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIBSMUNEFE DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIBSMUNRED DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIBSUF DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIBSUFEFE DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIBSUFRED DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQIS DN_VALOR,'+#13#10+
    '  ADD VEI_ALIQISESP DN_VALOR,'+#13#10+
    '  ADD VEI_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD VEI_BASEIS DN_VALOR,'+#13#10+
    '  ADD VEI_CBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD VEI_CLASSTRIBIBSCBS DN_NUMERO,'+#13#10+
    '  ADD VEI_CLASSTRIBIS DN_NUMEROCHAR,'+#13#10+
    '  ADD VEI_CSTIBSCBS DN_NUMEROCHAR,'+#13#10+
    '  ADD VEI_CSTIS DN_NUMEROCHAR,'+#13#10+
    '  ADD VEI_IBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD VEI_VALORCBS DN_VALOR,'+#13#10+
    '  ADD VEI_VALORCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD VEI_VALORCBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD VEI_VALORCBSDEV DN_VALOR,'+#13#10+
    '  ADD VEI_VALORCBSDIF DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIBS DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIBSMUN DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIBSMUNDEV DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIBSUF DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIBSUFDEV DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD VEI_VALORIS DN_VALOR;'+#13#10

  );

  TabelasParaReordenar.Add('VENDAS');
  TabelasParaReordenar.Add('VENDASITENS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao343;
begin
  ExecutarScript(343,
    'ALTER TABLE PRODUTOS ALTER PRO_REGRAFISCAL TYPE DN_CODIGO;'+#13#10+
    'ALTER TABLE PRODUTOS ADD CONSTRAINT FK_PRO_REGRAFISCAL FOREIGN KEY (PRO_REGRAFISCAL) REFERENCES REGRASFISCAIS(RGF_CODIGO) ON UPDATE CASCADE;'+#13#10+
    'DROP TABLE SINTEGRA60M;'+#13#10+
    'DROP TABLE SINTEGRA60A;'+#13#10+
    'DROP TABLE BLOCOX;'+#13#10
  );

  //TabelasParaReordenar.Add('PRODUTOS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao342;
begin
  ExecutarScript(342,
    'INSERT INTO REGRASFISCAIS '+#13#10+
    '(RGF_ALIQCBS, RGF_ALIQIBSMUN, RGF_ALIQIBSUF, RGF_CLASSTRIBIBSCBS, RGF_CLASSTRIBIS, RGF_CODIGO, RGF_CREDITOPRES, RGF_CSTIBSCBS, RGF_CSTIS, RGF_DESCRICAO, RGF_DTATUALIZACAO, RGF_DTCADASTRO, RGF_HRATUALIZACAO, RGF_HRCADASTRO, RGF_OBSERVACOES, RGF_USUARIO) '+#13#10+
    'VALUES (0.9, 0, 0.1, ''000001'', ''000001'', 1, 0, ''000'', ''000'', ''REGRA TRIBUTACAO INTEGRAL'', ''2025-09-26'', ''2025-09-26'', ''11:15:00'', ''11:15:00'', NULL, ''RUNTIME'');'+#13#10+

    'set generator GEN_REGRASFISCAIS to 1;'+#13#10+

    'update PRODUTOS set PRO_REGRAFISCAL=1;'+#13#10+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormRegrasFiscais'',''Cadastro de Regras Fiscais'',''A'',2);'+#13#10+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormCreditoPresumido'',''Cadastro de Credito Presumido'',''A'',2);'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Regras Fiscais'',''TFormRegrasFiscais'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Credito Presumido'',''TFormCreditoPresumido'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+#13#10
  );

  //TabelasParaReordenar.Add('PRODUTOS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao341;
begin
  ExecutarScript(341,
    'CREATE TABLE REGRASFISCAIS ('+#13#10+
    '  RGF_ALIQCBS DN_VALOR NOT NULL,'+#13#10+
    '  RGF_ALIQIBSMUN DN_VALOR NOT NULL,'+#13#10+
    '  RGF_ALIQIBSUF DN_VALOR NOT NULL,'+#13#10+
    '  RGF_CLASSTRIBIBSCBS DN_NUMEROCHAR NOT NULL,'+#13#10+
    '  RGF_CLASSTRIBIS DN_NUMEROCHAR NOT NULL,'+#13#10+
    '  RGF_CODIGO DN_CODIGO,'+#13#10+
    '  RGF_CREDITOPRES DN_NUMERO NOT NULL,'+#13#10+
    '  RGF_CSTIBSCBS DN_NUMEROCHAR NOT NULL,'+#13#10+
    '  RGF_CSTIS DN_NUMEROCHAR NOT NULL,'+#13#10+
    '  RGF_DESCRICAO DN_DESCRICAO NOT NULL,'+#13#10+
    '  RGF_DTATUALIZACAO DN_DATA,'+#13#10+
    '  RGF_DTCADASTRO DN_DATA,'+#13#10+
    '  RGF_HRATUALIZACAO DN_HORA,'+#13#10+
    '  RGF_HRCADASTRO DN_HORA,'+#13#10+
    '  RGF_OBSERVACOES DN_BLOBTEXTO,'+#13#10+
    '  RGF_USUARIO DN_LOGIN);'+#13#10+

    'ALTER TABLE REGRASFISCAIS ADD CONSTRAINT PK_RGF_CODIGO PRIMARY KEY (RGF_CODIGO);'+#13#10+
    'CREATE SEQUENCE GEN_REGRASFISCAIS;'+#13#10+

    'ALTER TABLE PRODUTOS ADD PRO_REGRAFISCAL DN_NUMERO;'+#13#10+
    'ALTER TABLE PRODUTOS DROP PRO_ECFICMS;'+#13#10+
    'ALTER TABLE PRODUTOS DROP PRO_TOTALIZADORPARCIAL;'+#13#10+

    'ALTER TABLE SINTEGRA60A DROP CONSTRAINT FK_SII_SINTEGRA60M;'+#13#10+
    'ALTER TABLE SINTEGRA60A DROP CONSTRAINT PK_SII_CODIGO;'+#13#10+
    'ALTER TABLE SINTEGRA60M DROP CONSTRAINT PK_SIN_CODIGO;'+#13#10+
    'ALTER TABLE BLOCOX DROP CONSTRAINT PK_BLX_CODIGO;'+#13#10+
    'DROP SEQUENCE GEN_BLOCOX;'+#13#10+
    'DROP SEQUENCE GEN_SINTEGRAITENS;'+#13#10+
    'DROP SEQUENCE GEN_SINTEGRA;'+#13#10
  );

  TabelasParaReordenar.Add('PRODUTOS');
  TabelasParaReordenar.Add('REGRASFISCAIS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao340;
begin
  ExecutarScript(340,
    'ALTER TABLE PRODUCAOITENSCOMP ADD PDC_ORDEM DN_NUMERO, ADD PDC_QUANTIDADEUNITARIA DN_VALOR;'+#13#10
  );

  TabelasParaReordenar.Add('PRODUCAOITENSCOMP');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao339;
begin
  ExecutarScript(339,
    'UPDATE NATUREZAS SET NAT_DEVOLUCAO=''N'';'+#13#10+
    'UPDATE NATUREZAS SET NAT_DEVOLUCAO=''S'' where NAT_DESCRICAO like ''%DEVOLUC%'';'+#13#10
  );

  //TabelasParaReordenar.Add('NATUREZAS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao338;
begin
  ExecutarScript(338,
    'ALTER TABLE NATUREZAS ADD NAT_DEVOLUCAO DN_FLAG;'+#13#10
  );

  TabelasParaReordenar.Add('NATUREZAS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao337;
begin
  ExecutarScript(337,
    'ALTER TABLE PARAMETROS '+#13#10+
    '  DROP PAR_PRODUCAOLF,'+#13#10+
    '  DROP PAR_PRODUCAOLI,'+#13#10+
    '  DROP PAR_PRODUCAOQL;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao336;
begin
  ExecutarScript(336,
    'ALTER TABLE PRODUCAOITENSCOMP ADD PDC_COR DN_CORSABOR;'+#13#10
  );

  TabelasParaReordenar.Add('PRODUCAOITENSCOMP');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao335;
begin
  ExecutarScript(335,
    'UPDATE CONDICOES SET CPG_TIPOPAGAMENTO='+QuotedStr('0 - PAGAMENTO A VISTA')+';'+#13#10
  );

  //TabelasParaReordenar.Add('CONDICOES');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao334;
begin
  ExecutarScript(334,
    'ALTER TABLE CONDICOES ADD CPG_TIPOPAGAMENTO DN_TIPOOPERACAO;'+#13#10
  );

  TabelasParaReordenar.Add('CONDICOES');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao333;
begin
  ExecutarScript(333,
    'UPDATE PARAMETROS SET PAR_LOCALLOGOMARCA=''\\servidor\arquivos\logomarca\'';  '+#13#10+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormLogomarca'',''Cadastro de Logomarca'',''A'',100);'
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao332;
begin
  ExecutarScript(332,
    'ALTER TABLE PARAMETROS'+#13#10+
    '  ADD PAR_LOCALLOGOMARCA DN_PATH;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao331;
begin
  ExecutarScript(331,
    'ALTER TABLE PARAMETROS'+#13#10+
    '  ADD PAR_CSRT DN_ACESSORIOS,'+#13#10+
    '  ADD PAR_CSRTID DN_NUMERO;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao330;
begin
  ExecutarScript(330,
    'UPDATE PARAMETROS SET PAR_NFCETIMEOUT=30000;'+#13#10
  );

  //TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao329;
begin
  ExecutarScript(329,
    'ALTER TABLE PARAMETROS ADD PAR_NFCETIMEOUT DN_NUMERO;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao328;
begin
  ExecutarScript(328,
    'CREATE DOMAIN DN_NOTADEBCRED AS VARCHAR(60);'+#13#10+
    'CREATE DOMAIN DN_TIPOENTE AS VARCHAR(20);'+#13#10+
    'CREATE DOMAIN DN_OPERACAOENTE AS VARCHAR(30);'+#13#10+

    'ALTER TABLE ALIQUOTAS'+#13#10+
    '  ADD ALI_ALIQCBS DN_VALOR,'+#13#10+
    '  ADD ALI_ALIQIBSMUN DN_VALOR,'+#13#10+
    '  ADD ALI_ALIQIBSUF DN_VALOR;'+#13#10+

    'CREATE TABLE CREDITOPRES ('+#13#10+
    '  CPR_APROPRIADFE DN_FLAG,'+#13#10+
    '  CPR_APROPRIAEVENTO DN_FLAG,'+#13#10+
    '  CPR_CBS DN_FLAG,'+#13#10+
    '  CPR_CODIGO DN_CODIGO,'+#13#10+
    '  CPR_DEDUZTOTAL DN_FLAG,'+#13#10+
    '  CPR_DESCRICAO DN_DESCRICAOLONGA,'+#13#10+
    '  CPR_DTATUALIZACAO DN_DATA,'+#13#10+
    '  CPR_DTCADASTRO DN_DATA,'+#13#10+
    '  CPR_HRATUALIZACAO DN_HORA,'+#13#10+
    '  CPR_HRCADASTRO DN_HORA,'+#13#10+
    '  CPR_IBS DN_FLAG,'+#13#10+
    '  CPR_USUARIO DN_LOGIN);'+#13#10+

    'ALTER TABLE CREDITOPRES ADD CONSTRAINT PK_CPR_CODIGO PRIMARY KEY (CPR_CODIGO);'+#13#10+

    'ALTER TABLE NFE'+#13#10+
    '  ADD NFE_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD NFE_BASEIS DN_VALOR,'+#13#10+
    '  ADD NFE_CBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFE_CBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NFE_CBSDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD NFE_CBSDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD NFE_CBSMONO DN_VALOR,'+#13#10+
    '  ADD NFE_CBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD NFE_CBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD NFE_CBSVALOR DN_VALOR,'+#13#10+
    '  ADD NFE_GOVERNAMENTAL DN_TIPOENTE,'+#13#10+
    '  ADD NFE_GOVERNAMENTALALIQRED DN_VALOR,'+#13#10+
    '  ADD NFE_GOVERNAMENTALOP DN_OPERACAOENTE,'+#13#10+
    '  ADD NFE_IBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFE_IBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NFE_IBSMONO DN_VALOR,'+#13#10+
    '  ADD NFE_IBSMONORETENCAO DN_VALOR,'+#13#10+
    '  ADD NFE_IBSMONORETIDO DN_VALOR,'+#13#10+
    '  ADD NFE_IBSMUNDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD NFE_IBSMUNDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD NFE_IBSMUNVALOR DN_VALOR,'+#13#10+
    '  ADD NFE_IBSUFDEVOLUCAO DN_VALOR,'+#13#10+
    '  ADD NFE_IBSUFDIFERIMENTO DN_VALOR,'+#13#10+
    '  ADD NFE_IBSUFVALOR DN_VALOR,'+#13#10+
    '  ADD NFE_IBSVALOR DN_VALOR,'+#13#10+
    '  ADD NFE_NOTACREDITO DN_NOTADEBCRED,'+#13#10+
    '  ADD NFE_NOTADEBITO DN_NOTADEBCRED,'+#13#10+
    '  ADD NFE_TOTALIS DN_VALOR,'+#13#10+
    '  ADD NFE_VALORTOTALRTC DN_VALOR;'+#13#10+

    'ALTER TABLE NFEITENS'+#13#10+
    '  ADD NFI_ALIQCBS DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQCBSDIF DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQCBSEFE DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQCBSRED DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIBSMUN DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIBSMUNEFE DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIBSMUNRED DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIBSUF DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIBSUFEFE DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIBSUFRED DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQIS DN_VALOR,'+#13#10+
    '  ADD NFI_ALIQISESP DN_VALOR,'+#13#10+
    '  ADD NFI_BASEIBSCBS DN_VALOR,'+#13#10+
    '  ADD NFI_BASEIS DN_VALOR,'+#13#10+
    '  ADD NFI_CBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD NFI_CLASSTRIBIBSCBS DN_NUMERO,'+#13#10+
    '  ADD NFI_CLASSTRIBIS DN_NUMEROCHAR,'+#13#10+
    '  ADD NFI_CSTIBSCBS DN_NUMEROCHAR,'+#13#10+
    '  ADD NFI_CSTIS DN_NUMEROCHAR,'+#13#10+
    '  ADD NFI_IBSCREDITOPRES DN_NUMERO,'+#13#10+
    '  ADD NFI_VALORCBS DN_VALOR,'+#13#10+
    '  ADD NFI_VALORCBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFI_VALORCBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NFI_VALORCBSDEV DN_VALOR,'+#13#10+
    '  ADD NFI_VALORCBSDIF DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIBS DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIBSCREDPRES DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIBSCREDPRESSUS DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIBSMUN DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIBSMUNDEV DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIBSMUNDIF DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIBSUF DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIBSUFDEV DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIBSUFDIF DN_VALOR,'+#13#10+
    '  ADD NFI_VALORIS DN_VALOR;'+#13#10+

    'ALTER TABLE CLASSTRIB'+#13#10+
    '  ADD CLT_MONODIFERIMENTO DN_FLAG,'+#13#10+
    '  ADD CLT_MONOFASICO DN_FLAG,'+#13#10+
    '  ADD CLT_MONORETENCAO DN_FLAG,'+#13#10+
    '  ADD CLT_MONORETIDO DN_FLAG;'+#13#10
  );

  TabelasParaReordenar.Add('ALIQUOTAS');
  TabelasParaReordenar.Add('CLASSTRIB');
  TabelasParaReordenar.Add('NFE');
  TabelasParaReordenar.Add('NFEITENS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao327;
begin
  ExecutarScript(327,
    'update PARAMETROS set PAR_REFORMATRIBUTARIA='+QuotedStr('N')+';'+#13#10+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormCst'',''Cadastro de CSTs'',''A'',1);'+#13#10+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormClassTrib'',''Cadastro de Classificacoes Tributarias'',''A'',1);'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''CST'',''TFormCst'',''CODIGO'',''CODIGO;DESCRICAO;'');'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Classificacoes Tributarias'',''TFormClassTrib'',''CODIGO'',''CODIGO;DESCRICAO;'');'+#13#10
  );

  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao326;
begin
  ExecutarScript(326,
    'CREATE DOMAIN DN_CRT AS VARCHAR(35);'+#13#10+
    'ALTER DOMAIN DN_CNPJIECPFRG TO DN_DOCUMENTO;'+#13#10+
    'ALTER DOMAIN DN_BOOLEAN TO DN_FLAG;'+#13#10+

    'ALTER TABLE PARAMETROS ADD PAR_REFORMATRIBUTARIA DN_FLAG;'+#13#10+

    'ALTER TABLE EMPRESA'+#13#10+
    '  DROP EMP_PAFLAUDO,'+#13#10+
    '  DROP EMP_PAFMD5,'+#13#10+
    '  DROP EMP_PAFNOME,'+#13#10+
    '  DROP EMP_PAFVERSAO,'+#13#10+
    '  DROP EMP_LIMITEMOBILES,'+#13#10+
    '  ALTER EMP_ENQUADRAMENTO TYPE DN_CRT;'+#13#10+

    'DROP TABLE NFCECODIGO;'+#13#10+
    'DROP TABLE PREVENDASITENS;'+#13#10+
    'DROP TABLE PREVENDAS;'+#13#10+
    'DROP TABLE PREVENDASCODIGO;'+#13#10+
    'DROP TABLE FORMASPAGAMENTO;'+#13#10+
    'DROP TABLE MOBILESLOGS;'+#13#10+
    'DROP TABLE MOBILES;'+#13#10+

    'DROP SEQUENCE GEN_FORMASPAGAMENTO;'+#13#10+
    'DROP SEQUENCE GEN_MOBILES;'+#13#10+
    'DROP SEQUENCE GEN_PREVENDASITENS;'+#13#10+
    'DROP SEQUENCE GEN_PREVENDAS;'+#13#10+

    'delete from TELAS where TEL_NOMEFORM='+QuotedStr('TFormPrevendas')+';'+#13#10+
    'delete from TELAS where TEL_NOMEFORM='+QuotedStr('TFormPrevendasItens')+';'+#13#10+
    'delete from TELAS where TEL_NOMEFORM='+QuotedStr('TFormFormasPagamento')+';'+#13#10+

    'delete from LOCS where LOS_NOMEFORM='+QuotedStr('TFormPrevendas')+';'+#13#10+
    'delete from LOCS where LOS_NOMEFORM='+QuotedStr('TFormFormasPagamento')+';'+#13#10+

    'CREATE TABLE CST ('+#13#10+
    '  CST_CODIGO DN_NUMEROCHAR NOT NULL,'+#13#10+
    '  CST_DESCRICAO DN_DESCRICAO,'+#13#10+
    '  CST_DIFERIMENTO DN_FLAG,'+#13#10+
    '  CST_DOCBPE DN_FLAG,'+#13#10+
    '  CST_DOCBPETM DN_FLAG,'+#13#10+
    '  CST_DOCCTE DN_FLAG,'+#13#10+
    '  CST_DOCCTEOS DN_FLAG,'+#13#10+
    '  CST_DOCNF3E DN_FLAG,'+#13#10+
    '  CST_DOCNFCE DN_FLAG,'+#13#10+
    '  CST_DOCNFCOM DN_FLAG,'+#13#10+
    '  CST_DOCNFE DN_FLAG,'+#13#10+
    '  CST_DOCNFSE DN_FLAG,'+#13#10+
    '  CST_DTATUALIZACAO DN_DATA,'+#13#10+
    '  CST_DTCADASTRO DN_DATA,'+#13#10+
    '  CST_EXIGETRIBUTACAO DN_FLAG,'+#13#10+
    '  CST_HRATUALIZACAO DN_HORA,'+#13#10+
    '  CST_HRCADASTRO DN_HORA,'+#13#10+
    '  CST_MONOFASICA DN_FLAG,'+#13#10+
    '  CST_REDALIQUOTA DN_FLAG,'+#13#10+
    '  CST_REDBASE DN_FLAG,'+#13#10+
    '  CST_TRANSFCREDITO DN_FLAG,'+#13#10+
    '  CST_USUARIO DN_LOGIN);'+#13#10+

    'CREATE TABLE CLASSTRIB ('+#13#10+
    '  CLT_ALIQCBSRED DN_VALOR,'+#13#10+
    '  CLT_ALIQIBSRED DN_VALOR,'+#13#10+
    '  CLT_CODIGO DN_NUMEROCHAR NOT NULL,'+#13#10+
    '  CLT_CREDITOPRESUMIDO DN_FLAG,'+#13#10+
    '  CLT_DESCRICAO DN_DESCRICAOLONGA,'+#13#10+
    '  CLT_DTATUALIZACAO DN_DATA,'+#13#10+
    '  CLT_DTCADASTRO DN_DATA,'+#13#10+
    '  CLT_HRATUALIZACAO DN_HORA,'+#13#10+
    '  CLT_HRCADASTRO DN_HORA,'+#13#10+
    '  CLT_REDBASE DN_FLAG,'+#13#10+
    '  CLT_TRIBUTACAOREGULAR DN_FLAG,'+#13#10+
    '  CLT_USUARIO DN_LOGIN);'+#13#10+

    'ALTER TABLE CST ADD CONSTRAINT PK_CST_CODIGO PRIMARY KEY (CST_CODIGO);'+#13#10+
    'ALTER TABLE CLASSTRIB ADD CONSTRAINT PK_CLT_CODIGO PRIMARY KEY (CLT_CODIGO);'+#13#10
  );

  TabelasParaReordenar.Add('EMPRESA');
  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao325;
begin
  ExecutarScript(325,
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Clientes com Status'',''TFormClientes'',''ATIVOS'',''TODOS;ATIVOS;INATIVOS;'');'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Produtos com Status'',''TFormProdutos'',''ATIVOS'',''TODOS;ATIVOS;INATIVOS;'');'+#13#10
  );

  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao324;
begin
  ExecutarScript(324,
    'UPDATE PARAMETROS SET PAR_PRODUTOSCODIGOFAB=''N'';'+#13#10
  );

  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao323;
begin
  ExecutarScript(323,
    'ALTER TABLE PARAMETROS '+#13#10+
    '  DROP PAR_ALERTAKG, '+#13#10+
    '  DROP PAR_ECFCFOP, '+#13#10+
    '  DROP PAR_ECFCFOPNF2, '+#13#10+
    '  DROP PAR_ECFDESCSANGRIA, '+#13#10+
    '  DROP PAR_ECFDESCSUPRIMENTO, '+#13#10+
    '  DROP PAR_ECFMENSAGEMCUPOM, '+#13#10+
    '  DROP PAR_ECFTITULOTELA, '+#13#10+
    '  ADD PAR_PRODUTOSCODIGOFAB DN_BOOLEAN;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao322;
begin
  ExecutarScript(322,
    'UPDATE CONTAS set'+#13#10+
    '  CON_DESCONTOTIPO=''SEM DESCONTO'','+#13#10+
    '  CON_MORATIPO=''VALOR DIA'','+#13#10+
    '  CON_MULTATIPO=''PERCENTUAL'','+#13#10+
    '  CON_PROTESTOTIPO=''NEGATIVAR CORRIDO'';'+#13#10+

    'UPDATE BOLETOS set'+#13#10+
    '  BOL_DESCONTOTIPO=''SEM DESCONTO'','+#13#10+
    '  BOL_MORATIPO=''VALOR DIA'','+#13#10+
    '  BOL_MULTATIPO=''PERCENTUAL'','+#13#10+
    '  BOL_PROTESTOTIPO=''NEGATIVAR CORRIDO'';'+#13#10
  );

  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao321;
begin
  ExecutarScript(321,
    'CREATE DOMAIN DN_PROTESTO AS VARCHAR(20);'+#13#10+
    'CREATE DOMAIN DN_MORA AS VARCHAR(15);'+#13#10+
    'CREATE DOMAIN DN_DESCONTO AS VARCHAR(15);'+#13#10+
    'CREATE DOMAIN DN_MULTA AS VARCHAR(10);'+#13#10+

    'ALTER TABLE CONTAS'+#13#10+
    '  ADD CON_DESCONTOTIPO DN_DESCONTO,'+#13#10+
    '  ADD CON_MORATIPO DN_MORA,'+#13#10+
    '  ADD CON_MULTATIPO DN_MULTA,'+#13#10+
    '  ADD CON_PROTESTOTIPO DN_PROTESTO;'+#13#10+

    'ALTER TABLE BOLETOS'+#13#10+
    '  ADD BOL_DESCONTOTIPO DN_DESCONTO,'+#13#10+
    '  ADD BOL_MORATIPO DN_MORA,'+#13#10+
    '  ADD BOL_MULTATIPO DN_MULTA,'+#13#10+
    '  ADD BOL_PROTESTOTIPO DN_PROTESTO;'+#13#10
  );

  TabelasParaReordenar.Add('BOLETOS');
  TabelasParaReordenar.Add('CONTAS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao320;
begin
  ExecutarScript(320,
    'ALTER TABLE NFCE ADD NFC_CONTINGENCIA DN_BOOLEAN;'+#13#10
  );

  TabelasParaReordenar.Add('NFCE');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao319;
begin
  ExecutarScript(319,
    'UPDATE PARAMETROS SET PAR_NFCETIPOEMISSAO=''1 - NORMAL'';'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao318;
begin
  ExecutarScript(318,
    'CREATE TABLE NFCELOGS ('+#13#10+
    '  NCL_CODIGO DN_CODIGO,'+#13#10+
    '  NCL_DATA DN_DATA,'+#13#10+
    '  NCL_DESCRICAO DN_BLOBTEXTO,'+#13#10+
    '  NCL_HORA DN_HORA,'+#13#10+
    '  NCL_NFCE DN_NUMERO,'+#13#10+
    '  NCL_NOME DN_NOME,'+#13#10+
    '  NCL_USUARIO DN_LOGIN);'+#13#10+
    'ALTER TABLE NFCELOGS ADD CONSTRAINT PK_NCL_CODIGO PRIMARY KEY (NCL_CODIGO);'+#13#10+
    'CREATE SEQUENCE GEN_NFCELOGS;'+#13#10+

    'ALTER TABLE PARAMETROS'+#13#10+
    '  ADD PAR_NFCECONTINGENCIADATA DN_DATA,'+#13#10+
    '  ADD PAR_NFCECONTINGENCIAHORA DN_HORA,'+#13#10+
    '  ADD PAR_NFCECONTINGENCIAJUST DN_DESCRICAO,'+#13#10+
    '  ADD PAR_NFCETIPOEMISSAO DN_TIPOEMISSAO;'+#13#10
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao317;
begin
  ExecutarScript(317,
    'CREATE TABLE NFCEPAGAMENTOS ('+#13#10+
    '  NCP_CODIGO DN_CODIGO,'+#13#10+
    '  NCP_NFCE DN_CODIGO,'+#13#10+
    '  NCP_CONDICAO DN_CODIGO,'+#13#10+
    '  NCP_VALOR DN_VALOR);'+#13#10+
    'ALTER TABLE NFCEPAGAMENTOS ADD CONSTRAINT PK_NFCEPAGAMENTOS PRIMARY KEY (NCP_CODIGO);'+#13#10+
    'ALTER TABLE NFCEPAGAMENTOS ADD CONSTRAINT FK_NCP_NFCE FOREIGN KEY (NCP_NFCE) REFERENCES NFCE(NFC_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+#13#10+
    'ALTER TABLE NFCEPAGAMENTOS ADD CONSTRAINT FK_NCP_CONDICAO FOREIGN KEY (NCP_CONDICAO) REFERENCES CONDICOES(CPG_CODIGO) ON UPDATE CASCADE;'+#13#10+
    'CREATE SEQUENCE GEN_NFCEPAGAMENTOS;'
  );

  //TabelasParaReordenar.Add('USUARIOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao316;
begin
  ExecutarScript(316,
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormNfce'',''Cadastro de Notas Fiscais de Consumidor Eletronicas'',''A'',111);'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Notas Fiscais de Consumidor Eletronicas'',''TFormNfce'',''DATA INICIAL'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME;CHAVE DE ACESSO;'');'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Notas Fiscais de Consumidor Eletronicas com Status'',''TFormNfce'',''TODAS'',''TODAS;ABERTAS;FINALIZADAS;CANCELADAS;INUTILIZADAS;'');'+#13#10
  );

  TabelasParaReordenar.Add('ACESSOS');
  TabelasParaReordenar.Add('FORMS');
  TabelasParaReordenar.Add('MENSAGENS');
  TabelasParaReordenar.Add('NFCE');
  TabelasParaReordenar.Add('SQLS');
  TabelasParaReordenar.Add('TELAS');
  TabelasParaReordenar.Add('USUARIOS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao315;
begin
  ExecutarScript(315,
    'ALTER TABLE NFCE'+#13#10+
    '  ADD NFC_CODIGONFCE DN_NUMERO,'+#13#10+
    '  ADD NFC_MOTIVOINUTILIZACAO DN_DESCRICAOPLUS,'+#13#10+
    '  ADD NFC_PROTOCOLOINUT DN_PROTOCOLO,'+#13#10+
    '  ADD NFC_PROTOCOLOINUTDH DN_DATAHORA;'+#13#10+

    'ALTER TABLE TELAS ALTER TEL_DESCRICAO TYPE DN_NOME;'+#13#10+

    'delete from SQLS;'+#13#10
  );

  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao314;
begin
  ExecutarScript(314,
    'ALTER TABLE ACESSOS ADD CONSTRAINT FK_ACE_USUARIO FOREIGN KEY (ACE_USUARIO) REFERENCES USUARIOS(USU_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+#13#10+
    'ALTER TABLE FORMS ADD CONSTRAINT FK_FMS_USUARIO FOREIGN KEY (FMS_USUARIO) REFERENCES USUARIOS(USU_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+#13#10+
    'ALTER TABLE SQLS ADD CONSTRAINT FK_SQL_USUARIO FOREIGN KEY (SQL_USUARIO) REFERENCES USUARIOS(USU_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+#13#10+
    'ALTER TABLE MENSAGENS ADD CONSTRAINT FK_MEN_REMETENTE FOREIGN KEY (MEN_REMETENTE) REFERENCES USUARIOS(USU_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+#13#10
  );

  //TabelasParaReordenar.Add('USUARIOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao313;
begin
  ExecutarScript(313,
    'ALTER TABLE USUARIOS ADD CONSTRAINT PK_USU_CODIGO PRIMARY KEY (USU_CODIGO);'+#13#10
  );

  //TabelasParaReordenar.Add('USUARIOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao312;
begin
  ExecutarScript(312,
    'ALTER TABLE USUARIOS DROP CONSTRAINT PK_USU_LOGIN;'+#13#10+
    'CREATE UNIQUE INDEX IX_USU_LOGIN ON USUARIOS (USU_LOGIN);'+#13#10
  );

  //TabelasParaReordenar.Add('USUARIOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao311;
begin
  ExecutarScript(311,
    'ALTER TABLE SQLS ALTER SQL_USUARIO2 TO SQL_USUARIO;'+#13#10+
    'ALTER TABLE SQLS ALTER SQL_USUARIO TYPE DN_CODIGO;'+#13#10+
    'ALTER TABLE FORMS ALTER FMS_USUARIO2 TO FMS_USUARIO;'+#13#10+
    'ALTER TABLE FORMS ALTER FMS_USUARIO TYPE DN_CODIGO;'+#13#10+
    'ALTER TABLE ACESSOS ALTER ACE_USUARIO2 TO ACE_USUARIO;'+#13#10+
    'ALTER TABLE ACESSOS ALTER ACE_USUARIO TYPE DN_CODIGO;'+#13#10+
    'ALTER TABLE MENSAGENS ALTER MEN_REMETENTE2 TO MEN_REMETENTE;'+#13#10+
    'ALTER TABLE MENSAGENS ALTER MEN_REMETENTE TYPE DN_CODIGO;'+#13#10
  );

  //TabelasParaReordenar.Add('USUARIOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao310;
begin
  ExecutarScript(310,
    'ALTER TABLE ACESSOS DROP ACE_USUARIO;'+#13#10+
    'ALTER TABLE FORMS DROP FMS_USUARIO;'+#13#10+
    'ALTER TABLE SQLS DROP SQL_USUARIO;'+#13#10+
    'ALTER TABLE MENSAGENS DROP MEN_REMETENTE;'+#13#10
  );

  //TabelasParaReordenar.Add('USUARIOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao309;
begin
  ExecutarScript(309,
    'ALTER TABLE SQLS DROP CONSTRAINT FK_SQL_USUARIO;'+#13#10+
    'ALTER TABLE FORMS DROP CONSTRAINT FK_FMS_USUARIO;'+#13#10+
    'ALTER TABLE ACESSOS DROP CONSTRAINT FK_ACE_USUARIO;'+#13#10+
    'ALTER TABLE MENSAGENS DROP CONSTRAINT FK_MEN_REMETENTE;'+#13#10+
    'ALTER TABLE USUARIOS ALTER USU_CODIGO SET NOT NULL;'+#13#10
  );

  //TabelasParaReordenar.Add('USUARIOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao308;
begin
  ExecutarScript(308,
    'update ACESSOS set ACE_USUARIO2=(select USU_CODIGO from USUARIOS where USU_LOGIN=ACE_USUARIO);'+#13#10+
    'update FORMS set FMS_USUARIO2=(select USU_CODIGO from USUARIOS where USU_LOGIN=FMS_USUARIO);'+#13#10+
    'update MENSAGENS set MEN_REMETENTE2=(select USU_CODIGO from USUARIOS where USU_LOGIN=MEN_REMETENTE);'+#13#10+
    'update SQLS set SQL_USUARIO2=(select USU_CODIGO from USUARIOS where USU_LOGIN=SQL_USUARIO);'+#13#10
  );

  //TabelasParaReordenar.Add('USUARIOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao307;
begin
  ExecutarScript(307,
    'ALTER TABLE ACESSOS ADD ACE_USUARIO2 DN_NUMERO;'+#13#10+
    'ALTER TABLE FORMS ADD FMS_USUARIO2 DN_NUMERO;'+#13#10+
    'ALTER TABLE MENSAGENS ADD MEN_REMETENTE2 DN_NUMERO;'+#13#10+
    'ALTER TABLE SQLS ADD SQL_USUARIO2 DN_NUMERO;'+#13#10+
    'DELETE FROM MENSAGENS;'+#13#10 //resetamos a tabela.
  );

  TabelasParaReordenar.Add('ACESSOS');
  TabelasParaReordenar.Add('FORMS');
  TabelasParaReordenar.Add('MENSAGENS');
  TabelasParaReordenar.Add('SQLS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao306;
begin
  ExecutarScript(306,
    'EXECUTE BLOCK AS '+#13#10+
    'DECLARE VARIABLE iCODIGO INTEGER = 1; '+#13#10+
    'DECLARE VARIABLE vLOGIN VARCHAR(100); '+#13#10+
    'BEGIN '+#13#10+
    '  FOR SELECT USU_LOGIN FROM USUARIOS ORDER BY CASE WHEN USU_LOGIN = ''RUNTIME'' THEN 0 ELSE 1 END '+#13#10+
    '  INTO :vLOGIN DO '+#13#10+
    '  BEGIN '+#13#10+
    '    IF (vLOGIN = ''RUNTIME'') THEN '+#13#10+
    '      UPDATE USUARIOS SET USU_CODIGO = 1, USU_TEMA=''00 - Windows'' WHERE USU_LOGIN = :vLOGIN; '+#13#10+
    '    ELSE '+#13#10+
    '    BEGIN '+#13#10+
    '      iCODIGO = iCODIGO + 1; '+#13#10+
    '      UPDATE USUARIOS SET USU_CODIGO = :iCODIGO, USU_TEMA=''00 - Windows'' WHERE USU_LOGIN = :vLOGIN; '+#13#10+
    '    END '+#13#10+
    '  END '+#13#10+
    '  EXECUTE STATEMENT ''SET GENERATOR GEN_USUARIOS TO '' || iCODIGO; '+#13#10+
    'END; '+#13#10
  );

  //TabelasParaReordenar.Add('USUARIOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao305;
begin
  ExecutarScript(305,
    'CREATE SEQUENCE GEN_USUARIOS;'+#13#10+

    'ALTER TABLE USUARIOS '+#13#10+
    '  ADD USU_CODIGO DN_NUMERO, '+#13#10+
    '  ADD USU_TEMA DN_DESCRICAO;'+#13#10
  );

  TabelasParaReordenar.Add('USUARIOS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao304;
begin
  ExecutarScript(304,
    'ALTER TABLE NFCEITENS ADD NCI_VALORACESSORIAS DN_VALOR;'+#13#10
  );

  TabelasParaReordenar.Add('NFCEITENS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao303;
begin
  ExecutarScript(303,
    'ALTER DOMAIN DN_PROPRIEDADE TYPE VARCHAR(25) CHARACTER SET WIN1252;'+#13#10+
    'CREATE INDEX IX_ACE_COMPONENTE ON ACESSOS (ACE_COMPONENTE);'+#13#10
  );

  //TabelasParaReordenar.Add('');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao302;
begin
  ExecutarScript(302,
    'ALTER TABLE PARAMETROS'+#13#10+
    '  ADD PAR_NFCECSC DN_SERIE,'+#13#10+
    '  ADD PAR_NFCECSCID DN_SERIE,'+#13#10+
    '  ADD PAR_NFCEMODELO DN_NUMERO,'+#13#10+
    '  ADD PAR_NFCESCHEMAS DN_PATH,'+#13#10+
    '  ADD PAR_NFCESERIE DN_NUMERO,'+#13#10+
    '  ADD PAR_REPOSITORIONFCE DN_PATH;'+#13#10+

    'ALTER TABLE NFCE '+#13#10+
    '  ADD NFC_ACREPORC DN_VALOR,'+#13#10+
    '  ADD NFC_ACREVALOR DN_VALOR,'+#13#10+
    '  ADD NFC_QRCODE DN_QRCODE,'+#13#10+
    '  ADD NFC_SEQUENCIAITEM DN_NUMERO,'+#13#10+
    '  ADD NFC_TOTALFCPST DN_VALOR,'+#13#10+
    '  ADD NFC_VALORRECEBIDO DN_VALOR,'+#13#10+
    '  ADD NFC_VALORTROCO DN_VALOR;'+#13#10+

    'ALTER TABLE NFCE DROP CONSTRAINT FK_NFC_EXPEDIDOPOR;'+#13#10+

    'ALTER TABLE NFCE DROP NFC_BAIXADATA;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_BAIXAPOR;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_BASEISS;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_CFOPDESC;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_CONDICAOMEMO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_CONSULTADA;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_DESCPORCCLIENTE;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_DESCPORCCONDICAO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_DESTACARIMPOSTOS;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_DIAPREFERENCIAL;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_DPEC;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_DPECDH;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_DTPRESTSERVICO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_DTSAIDA;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_ENTRADASAIDA;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_ENVIADA;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_ESPECIE;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_EXPEDIDOPOR;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_FRETE;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_LACRES;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_LOTE;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_MARCA;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_MOTIVOINUTILIZACAO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_PROTOCOLOINUT;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_PROTOCOLOINUTDH;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_REBOQUEPLACA;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_REBOQUEPLACAUF;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_REBOQUERNTC;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_RECIBO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_RECIBODH;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_RG;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALBRUTO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALCCE;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALISS;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALISSDEDUCAO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALISSDESCCOND;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALISSDESCINCOND;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALISSOUTROS;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALISSRETENCAO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALITENS;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TOTALSERVICOS;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TRANSPCIDADE;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TRANSPCNPJ;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TRANSPCPF;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TRANSPENDERECO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TRANSPESTADO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TRANSPFONE;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TRANSPIE;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TRANSPNOME;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_TRANSPORTADORA;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_VALORDESPACES;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_VALORFRETE;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_VALORSEGURO;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_VEICULOPLACA;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_VEICULOPLACAUF;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_VEICULORNTC;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_VOLUMES;'+#13#10+
    'ALTER TABLE NFCE DROP NFC_VOLUMESNUM;'+#13#10+

    'ALTER TABLE NFCEITENS '+#13#10+
    '  ADD NCI_BENEFICIO DN_CLASSFISCAL,'+#13#10+
    '  ADD NCI_CODIGOBARRAS DN_CODIGOBARRAS,'+#13#10+
    '  ADD NCI_SEQUENCIA DN_NUMERO,'+#13#10+
    '  ADD NCI_ALIQFCPST DN_VALOR,'+#13#10+
    '  ADD NCI_VALORFCPST DN_VALOR;'+#13#10+

    'ALTER TABLE NFCEITENS DROP NCI_ALIQISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_BASEISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_CIDADEISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_CODFAB;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_DESCMAX;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_FCI;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_INCENTIVOISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_INDICADORISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_INFOADICIONAL;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_LOCALIZACAO;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_LOTE;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_PAISISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_PROCESSOISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_SERVICOISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_TIPOISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_VALORACESSORIAS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_VALORFRETE;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_VALORISS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_VALORISSDEDUCAO;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_VALORISSDESCCOND;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_VALORISSDESCINCOND;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_VALORISSOUTROS;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_VALORISSRETENCAO;'+#13#10+
    'ALTER TABLE NFCEITENS DROP NCI_VALORSEGURO;'#13#10
  );

  ExecutarScript(302,
    'UPDATE PARAMETROS SET PAR_NFCEMODELO=65, PAR_NFCESERIE=1 WHERE PAR_CODIGO=1;'+#13#10
  );

  TabelasParaReordenar.Add('NFCE');
  TabelasParaReordenar.Add('NFCEITENS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao301;
begin
  ExecutarScript(301,
    'CREATE SEQUENCE GEN_VENDEDORESHIST;'+#13#10+
    'CREATE SEQUENCE GEN_VENDEDORESHISTTIPOS;'+#13#10+

    'CREATE TABLE VENDEDORESHIST ('+#13#10+
    '  VEH_CODIGO DN_CODIGO,'+#13#10+
    '  VEH_DATA DN_DATA,'+#13#10+
    '  VEH_DESCRICAO DN_DESCRICAO,'+#13#10+
    '  VEH_DTATUALIZACAO DN_DATA,'+#13#10+
    '  VEH_DTCADASTRO DN_DATA,'+#13#10+
    '  VEH_HRATUALIZACAO DN_HORA,'+#13#10+
    '  VEH_HRCADASTRO DN_HORA,'+#13#10+
    '  VEH_OBSERVACOES DN_BLOBTEXTO,'+#13#10+
    '  VEH_TIPO DN_CODIGO,'+#13#10+
    '  VEH_USUARIO DN_LOGIN,'+#13#10+
    '  VEH_VENDEDOR DN_CODIGO);'+#13#10+

    'CREATE TABLE VENDEDORESHISTTIPOS ('+#13#10+
    '  VHT_CODIGO DN_CODIGO,'+#13#10+
    '  VHT_DESCRICAO DN_DESCRICAO,'+#13#10+
    '  VHT_DTATUALIZACAO DN_DATA,'+#13#10+
    '  VHT_DTCADASTRO DN_DATA,'+#13#10+
    '  VHT_HRATUALIZACAO DN_HORA,'+#13#10+
    '  VHT_HRCADASTRO DN_HORA,'+#13#10+
    '  VHT_STATUS DN_BOOLEAN,'+#13#10+
    '  VHT_USUARIO DN_LOGIN);'+#13#10+

    'ALTER TABLE VENDEDORESHISTTIPOS ADD CONSTRAINT PK_VHT_CODIGO PRIMARY KEY (VHT_CODIGO);'+#13#10+
    'ALTER TABLE VENDEDORESHIST ADD CONSTRAINT PK_VEH_CODIGO PRIMARY KEY (VEH_CODIGO);'+#13#10+
    'ALTER TABLE VENDEDORESHIST ADD CONSTRAINT FK_VEH_TIPO FOREIGN KEY (VEH_TIPO) REFERENCES VENDEDORESHISTTIPOS(VHT_CODIGO) ON UPDATE CASCADE;'+#13#10+
    'ALTER TABLE VENDEDORESHIST ADD CONSTRAINT FK_VEH_VENDEDOR FOREIGN KEY (VEH_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+#13#10
  );

  ExecutarScript(301,
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormVendedoresHist'',''Cadastro de Vendedores - Historicos'',''A'',100);'+#13#10+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormVendedoresHistTipos'',''Cadastro de Vendedores - Historicos Tipo'',''A'',100);'+#13#10+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Vendedores Tipo Historico'',''TFormVendedoresHistTipos'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+#13#10
  );

  TabelasParaReordenar.Add('VENDEDORES');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao300;
begin
  ExecutarScript(300,
    'ALTER TABLE VENDAS'+#13#10+
    '  ADD VED_DAV DN_BOOLEAN,'+#13#10+
    '  ADD VED_NFCE DN_CODIGONULL;'+#13#10
  );

  ExecutarScript(300,
    'UPDATE VENDAS SET VED_DAV=''N'';'+#13#10
  );

  TabelasParaReordenar.Add('VENDAS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao299;
begin
  ExecutarScript(299,
    'CREATE TABLE TRIBUTOS ('+
    '  TRI_ALIQCOFINS DN_VALOR,'+
    '  TRI_ALIQICMS DN_VALOR,'+
    '  TRI_ALIQIPI DN_VALOR,'+
    '  TRI_ALIQPIS DN_VALOR,'+
    '  TRI_CODIGO DN_CODIGO,'+
    '  TRI_CSTPIS DN_NUMERO,'+
    '  TRI_SERVICO DN_BOOLEAN);'+

    'ALTER TABLE TRIBUTOS ADD CONSTRAINT PK_TRI_CODIGO PRIMARY KEY (TRI_CODIGO);'+
    'CREATE SEQUENCE GEN_TRIBUTOS;'
  );

  TabelasParaReordenar.Add('TRIBUTOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao298;
begin
  ExecutarScript(298,
    'ALTER TABLE PRODUTOS ADD PRO_BENEFICIO DN_CLASSFISCAL;'+
    'ALTER TABLE SERVICOSITENS ADD SEI_BENEFICIO DN_CLASSFISCAL;'
  );

  TabelasParaReordenar.Add('PRODUTOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao297;
begin
  ExecutarScript(297,
    'ALTER TABLE EMPRESA ADD EMP_LOGO DN_NOME;'
  );

  TabelasParaReordenar.Add('TODAS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao296;
begin
  ExecutarScript(296,
    'ALTER TABLE ACOES ADD ACO_HRATUALIZACAO DN_HORA, ADD ACO_HRCADASTRO DN_HORA;'+
    'ALTER TABLE AGRUPADORES ADD AGR_HRATUALIZACAO DN_HORA, ADD AGR_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ALMOXARIFADOS ADD ALM_HRATUALIZACAO DN_HORA, ADD ALM_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ASSUNTOS ADD ASS_HRATUALIZACAO DN_HORA, ADD ASS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ATENDIMENTOS ADD ATE_HRATUALIZACAO DN_HORA, ADD ATE_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ATIVIDADES ADD ATI_HRATUALIZACAO DN_HORA, ADD ATI_HRCADASTRO DN_HORA;'+
    'ALTER TABLE AVALIACOES ADD AVA_HRATUALIZACAO DN_HORA, ADD AVA_HRCADASTRO DN_HORA;'+
    'ALTER TABLE AVALIACOESTIPO ADD AVT_HRATUALIZACAO DN_HORA, ADD AVT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE BANCOS ADD BAN_HRATUALIZACAO DN_HORA, ADD BAN_HRCADASTRO DN_HORA;'+
    'ALTER TABLE BENEFICIOS ADD BEN_HRCADASTRO DN_HORA;'+
    'ALTER TABLE BOLETOS ADD BOL_HRATUALIZACAO DN_HORA, ADD BOL_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CAIXAMOV ADD CAI_HRATUALIZACAO DN_HORA, ADD CAI_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CHEQUES ADD CHE_HRATUALIZACAO DN_HORA, ADD CHE_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CLASSES ADD CLS_HRATUALIZACAO DN_HORA, ADD CLS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CLASSFISCAL ADD CLF_HRATUALIZACAO DN_HORA, ADD CLF_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CLASSIFICADOS ADD CLA_HRATUALIZACAO DN_HORA, ADD CLA_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CLIENTES ADD CLI_HRATUALIZACAO DN_HORA, ADD CLI_HRCADASTRO DN_HORA;'+
    'ALTER TABLE COMANDAS ADD CMD_DTCADASTRO DN_DATA, ADD CMD_HRATUALIZACAO DN_HORA, ADD CMD_HRCADASTRO DN_HORA;'+
    'ALTER TABLE COMPRAS ADD COM_HRATUALIZACAO DN_HORA, ADD COM_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CONDICOES ADD CPG_HRATUALIZACAO DN_HORA, ADD CPG_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CONSULTAS ADD COS_HRATUALIZACAO DN_HORA, ADD COS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CONTAS ADD CON_HRATUALIZACAO DN_HORA, ADD CON_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CONTASMOV ADD CMO_HRATUALIZACAO DN_HORA, ADD CMO_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CONTATOS ADD CTT_HRATUALIZACAO DN_HORA, ADD CTT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CONTEUDOS ADD CTO_HRATUALIZACAO DN_HORA, ADD CTO_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CONTRATOS ADD CTI_HRATUALIZACAO DN_HORA, ADD CTI_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CONVENIOS ADD COV_HRATUALIZACAO DN_HORA, ADD COV_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CTE ADD CTE_HRATUALIZACAO DN_HORA, ADD CTE_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CTECCE ADD CTC_HRATUALIZACAO DN_HORA;'+
    'ALTER TABLE CTEINUTILIZADOS ADD CIN_HRATUALIZACAO DN_HORA, ADD CIN_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CUPOM ADD CUP_DTCADASTRO DN_DATA, ADD CUP_HRATUALIZACAO DN_HORA, ADD CUP_HRCADASTRO DN_HORA;'+
    'ALTER TABLE CURSOS ADD CUR_HRATUALIZACAO DN_HORA, ADD CUR_HRCADASTRO DN_HORA;'+
    'ALTER TABLE DESPESAS ADD DES_HRATUALIZACAO DN_HORA, ADD DES_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ECF ADD ECF_HRATUALIZACAO DN_HORA, ADD ECF_HRCADASTRO DN_HORA;'+
    'ALTER TABLE EMAILS ADD EMA_HRATUALIZACAO DN_HORA, ADD EMA_HRCADASTRO DN_HORA;'+
    'ALTER TABLE EMAILSCONTAS ADD EMC_HRATUALIZACAO DN_HORA, ADD EMC_HRCADASTRO DN_HORA;'+
    'ALTER TABLE EMPRESA ADD EMP_HRATUALIZACAO DN_HORA;'+
    'ALTER TABLE ESTOQUE ADD EST_HRATUALIZACAO DN_HORA, ADD EST_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ETIQUETAS ADD ETQ_HRATUALIZACAO DN_HORA, ADD ETQ_HRCADASTRO DN_HORA;'+
    'ALTER TABLE EVOLUCOES ADD EVO_HRATUALIZACAO DN_HORA;'+
    'ALTER TABLE EXAMESTIPOS ADD EXT_HRATUALIZACAO DN_HORA, ADD EXT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE EXERCICIOS ADD EXE_HRATUALIZACAO DN_HORA, ADD EXE_HRCADASTRO DN_HORA;'+
    'ALTER TABLE FAMILIAS ADD FAM_HRATUALIZACAO DN_HORA, ADD FAM_HRCADASTRO DN_HORA;'+
    'ALTER TABLE FASES ADD FAS_HRATUALIZACAO DN_HORA, ADD FAS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE FERIADOS ADD FRD_HRATUALIZACAO DN_HORA, ADD FRD_HRCADASTRO DN_HORA;'+
    'ALTER TABLE FORMASPAGAMENTO ADD FPG_HRATUALIZACAO DN_HORA, ADD FPG_HRCADASTRO DN_HORA;'+
    'ALTER TABLE FORNECEDORES ADD FOR_HRATUALIZACAO DN_HORA, ADD FOR_HRCADASTRO DN_HORA;'+
    'ALTER TABLE FOROS ADD FRS_HRATUALIZACAO DN_HORA, ADD FRS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE FROTAS ADD FRO_HRATUALIZACAO DN_HORA, ADD FRO_HRCADASTRO DN_HORA;'+
    'ALTER TABLE GNRE ADD GNR_HRATUALIZACAO DN_HORA, ADD GNR_HRCADASTRO DN_HORA;'+
    'ALTER TABLE GRUPOS ADD GRU_HRATUALIZACAO DN_HORA, ADD GRU_HRCADASTRO DN_HORA;'+
    'ALTER TABLE HORAS ADD HOR_HRATUALIZACAO DN_HORA, ADD HOR_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ICMS ADD ICM_HRATUALIZACAO DN_HORA, ADD ICM_HRCADASTRO DN_HORA;'+
    'ALTER TABLE IMOVEIS ADD IMO_HRATUALIZACAO DN_HORA, ADD IMO_HRCADASTRO DN_HORA;'+
    'ALTER TABLE IMOVEISTIPOS ADD IMT_HRATUALIZACAO DN_HORA, ADD IMT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE IPI ADD IPI_HRATUALIZACAO DN_HORA, ADD IPI_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ISS ADD ISS_HRATUALIZACAO DN_HORA, ADD ISS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE LOCACOES ADD LOC_DTCADASTRO DN_DATA, ADD LOC_HRATUALIZACAO DN_HORA, ADD LOC_HRCADASTRO DN_HORA;'+
    'ALTER TABLE LOCAIS ADD LCA_HRATUALIZACAO DN_HORA, ADD LCA_HRCADASTRO DN_HORA;'+
    'ALTER TABLE LOTES ADD LOT_HRATUALIZACAO DN_HORA, ADD LOT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE MAILINGS ADD MAI_HRATUALIZACAO DN_HORA, ADD MAI_HRCADASTRO DN_HORA;'+
    'ALTER TABLE MARCAS ADD MAR_HRATUALIZACAO DN_HORA, ADD MAR_HRCADASTRO DN_HORA;'+
    'ALTER TABLE MARKUPS ADD MKP_HRATUALIZACAO DN_HORA, ADD MKP_HRCADASTRO DN_HORA;'+
    'ALTER TABLE MATRICULAS ADD MAT_HRATUALIZACAO DN_HORA, ADD MAT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE MDFE ADD MDF_DTCADASTRO DN_DATA, ADD MDF_HRATUALIZACAO DN_HORA, ADD MDF_HRCADASTRO DN_HORA;'+
    'ALTER TABLE MEDICAMENTOS ADD MTO_HRATUALIZACAO DN_HORA, ADD MTO_HRCADASTRO DN_HORA;'+
    'ALTER TABLE MEDICOES ADD MED_HRATUALIZACAO DN_HORA;'+
    'ALTER TABLE MENSALIDADES ADD MNS_HRATUALIZACAO DN_HORA, ADD MNS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE METAS ADD MET_HRCADASTRO DN_HORA;'+
    'ALTER TABLE MOBILES ADD MOB_HRATUALIZACAO DN_HORA, ADD MOB_HRCADASTRO DN_HORA;'+
    'ALTER TABLE MOVIMENTOS ADD MOV_DTCADASTRO DN_DATA, ADD MOV_HRATUALIZACAO DN_HORA, ADD MOV_HRCADASTRO DN_HORA;'+
    'ALTER TABLE NATUREZAS ADD NAT_HRATUALIZACAO DN_HORA, ADD NAT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE NFCE ADD NFC_HRATUALIZACAO DN_HORA, ADD NFC_HRCADASTRO DN_HORA;'+
    'ALTER TABLE NFCEINUTILIZADAS ADD FCI_HRATUALIZACAO DN_HORA, ADD FCI_HRCADASTRO DN_HORA;'+
    'ALTER TABLE NFE ADD NFE_CODIGONFE DN_NUMERO, ADD NFE_HRATUALIZACAO DN_HORA, ADD NFE_HRCADASTRO DN_HORA;'+
    'ALTER TABLE NFECCE ADD NCC_DTCADASTRO DN_DATA, ADD NCC_HRATUALIZACAO DN_HORA, ADD NCC_HRCADASTRO DN_HORA;'+
    'ALTER TABLE NFEINUTILIZADAS ADD NIN_HRATUALIZACAO DN_HORA, ADD NIN_HRCADASTRO DN_HORA;'+
    'ALTER TABLE NFSE ADD NFS_HRATUALIZACAO DN_HORA, ADD NFS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE NOTAS ADD NOT_HRATUALIZACAO DN_HORA, ADD NOT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE OBJETOS ADD OBJ_HRATUALIZACAO DN_HORA, ADD OBJ_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ODONTOGRAMAS ADD ODO_HRCADASTRO DN_HORA;'+
    'ALTER TABLE ODONTOGRAMASOPCOES ADD ODP_HRCADASTRO DN_HORA;'+
    'ALTER TABLE OPCIONAIS ADD OPC_HRATUALIZACAO DN_HORA, ADD OPC_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PAGAR ADD PAG_HRATUALIZACAO DN_HORA, ADD PAG_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PISCOFINS ADD PIS_HRATUALIZACAO DN_HORA, ADD PIS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PONTOS ADD PTS_HRATUALIZACAO DN_HORA, ADD PTS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PREVENDAS ADD PRE_DTCADASTRO DN_DATA, ADD PRE_HRATUALIZACAO DN_HORA, ADD PRE_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PREVENDASITENS ADD PRI_DTATUALIZACAO DN_DATA, ADD PRI_HRATUALIZACAO DN_HORA, ADD PRI_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PROCESSOS ADD PCS_HRATUALIZACAO DN_HORA, ADD PCS_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PROCESSOSCUSTAS ADD PSC_HRATUALIZACAO DN_HORA, ADD PSC_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PROCESSOSHIST ADD PSH_HRATUALIZACAO DN_HORA, ADD PSH_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PRODUCAO ADD PRD_HRATUALIZACAO DN_HORA, ADD PRD_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PRODUTOS ADD PRO_HRATUALIZACAO DN_HORA, ADD PRO_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PRODUTOSCODIGOS ADD PCO_HRATUALIZACAO DN_HORA, ADD PCO_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PRODUTOSCOMP ADD PRC_HRATUALIZACAO DN_HORA, ADD PRC_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PRODUTOSFOTOS ADD PRF_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PROJETOS ADD PRJ_HRATUALIZACAO DN_HORA, ADD PRJ_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PROJETOSFASES ADD PJF_HRATUALIZACAO DN_HORA, ADD PJF_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PROJETOSHISTORICO ADD PJH_DTCADASTRO DN_DATA, ADD PJH_HRATUALIZACAO DN_HORA, ADD PJH_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PROJETOSTIPOS ADD PJT_HRATUALIZACAO DN_HORA, ADD PJT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PROMISSORIAS ADD PRM_HRATUALIZACAO DN_HORA, ADD PRM_HRCADASTRO DN_HORA;'+
    'ALTER TABLE PRONTUARIOS ADD PEP_HRCADASTRO DN_HORA;'+
    'ALTER TABLE RECEBER ADD REE_HRATUALIZACAO DN_HORA, ADD REE_HRCADASTRO DN_HORA;'+
    'ALTER TABLE RECEITAS ADD REC_HRATUALIZACAO DN_HORA, ADD REC_HRCADASTRO DN_HORA;'+
    'ALTER TABLE RECEITUARIOS ADD RCT_HRATUALIZACAO DN_HORA, ADD RCT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE RECIBOS ADD RCB_DTCADASTRO DN_DATA, ADD RCB_HRATUALIZACAO DN_HORA, ADD RCB_HRCADASTRO DN_HORA;'+
    'ALTER TABLE SEGUROS ADD SEG_HRATUALIZACAO DN_HORA, ADD SEG_HRCADASTRO DN_HORA;'+
    'ALTER TABLE SEGUROSPARCELAS ADD SGP_HRATUALIZACAO DN_HORA, ADD SGP_HRCADASTRO DN_HORA;'+
    'ALTER TABLE SEGUROSTIPOS ADD SGT_HRATUALIZACAO DN_HORA, ADD SGT_HRCADASTRO DN_HORA;'+
    'ALTER TABLE SERVICOS ADD SER_DTCADASTRO DN_DATA, ADD SER_HRATUALIZACAO DN_HORA, ADD SER_HRCADASTRO DN_HORA;'+
    'ALTER TABLE SERVICOSHORAS ADD SEH_HRATUALIZACAO DN_HORA, ADD SEH_HRCADASTRO DN_HORA;'+
    'ALTER TABLE TABPRECO ADD TAB_HRATUALIZACAO DN_HORA;'+
    'ALTER TABLE TAXAS ADD TAX_HRATUALIZACAO DN_HORA, ADD TAX_HRCADASTRO DN_HORA;'+
    'ALTER TABLE TURMAS ADD TUR_HRATUALIZACAO DN_HORA, ADD TUR_HRCADASTRO DN_HORA;'+
    'ALTER TABLE UNIDADES ADD UNI_HRATUALIZACAO DN_HORA, ADD UNI_HRCADASTRO DN_HORA;'+
    'ALTER TABLE USUARIOS ADD USU_DTATUALIZACAO DN_DATA, ADD USU_DTCADASTRO DN_DATA, ADD USU_HRATUALIZACAO DN_HORA, ADD USU_HRCADASTRO DN_HORA;'+
    'ALTER TABLE VEICULOS ADD VEL_HRATUALIZACAO DN_HORA, ADD VEL_HRCADASTRO DN_HORA;'+
    'ALTER TABLE VEICULOSCLIENTE ADD VEC_DTCADASTRO DN_DATA, ADD VEC_HRATUALIZACAO DN_HORA, ADD VEC_HRCADASTRO DN_HORA;'+
    'ALTER TABLE VEICULOSVENDA ADD VEV_HRATUALIZACAO DN_HORA, ADD VEV_HRCADASTRO DN_HORA;'+
    'ALTER TABLE VENDAS ADD VED_HRATUALIZACAO DN_HORA, ADD VED_HRCADASTRO DN_HORA;'+
    'ALTER TABLE VENDEDORES ADD VEN_HRATUALIZACAO DN_HORA, ADD VEN_HRCADASTRO DN_HORA;'+
    'ALTER TABLE VIAS ADD VIA_HRATUALIZACAO DN_HORA, ADD VIA_HRCADASTRO DN_HORA;'
  );

  TabelasParaReordenar.Add('ACOES');
  TabelasParaReordenar.Add('AGRUPADORES');
  TabelasParaReordenar.Add('ALMOXARIFADOS');
  TabelasParaReordenar.Add('ASSUNTOS');
  TabelasParaReordenar.Add('ATENDIMENTOS');
  TabelasParaReordenar.Add('ATIVIDADES');
  TabelasParaReordenar.Add('AVALIACOES');
  TabelasParaReordenar.Add('AVALIACOESTIPO');
  TabelasParaReordenar.Add('BANCOS');
  TabelasParaReordenar.Add('BENEFICIOS');
  TabelasParaReordenar.Add('BOLETOS');
  TabelasParaReordenar.Add('CAIXAMOV');
  TabelasParaReordenar.Add('CHEQUES');
  TabelasParaReordenar.Add('CLASSES');
  TabelasParaReordenar.Add('CLASSFISCAL');
  TabelasParaReordenar.Add('CLIENTES');
  TabelasParaReordenar.Add('COMANDAS');
  TabelasParaReordenar.Add('COMPRAS');
  TabelasParaReordenar.Add('CONDICOES');
  TabelasParaReordenar.Add('CONSULTAS');
  TabelasParaReordenar.Add('CONTAS');
  TabelasParaReordenar.Add('CONTASMOV');
  TabelasParaReordenar.Add('CONTATOS');
  TabelasParaReordenar.Add('CONTEUDOS');
  TabelasParaReordenar.Add('CONTRATOS');
  TabelasParaReordenar.Add('CONVENIOS');
  TabelasParaReordenar.Add('CTE');
  TabelasParaReordenar.Add('CTECCE');
  TabelasParaReordenar.Add('CTEINUTILIZADOS');
  TabelasParaReordenar.Add('CUPOM');
  TabelasParaReordenar.Add('CURSOS');
  TabelasParaReordenar.Add('DESPESAS');
  TabelasParaReordenar.Add('ECF');
  TabelasParaReordenar.Add('EMAILS');
  TabelasParaReordenar.Add('EMAILSCONTAS');
  TabelasParaReordenar.Add('EMPRESA');
  TabelasParaReordenar.Add('ESTOQUE');
  TabelasParaReordenar.Add('ETIQUETAS');
  TabelasParaReordenar.Add('EVOLUCOES');
  TabelasParaReordenar.Add('EXAMESTIPOS');
  TabelasParaReordenar.Add('EXERCICIOS');
  TabelasParaReordenar.Add('FAMILIAS');
  TabelasParaReordenar.Add('FASES');
  TabelasParaReordenar.Add('FERIADOS');
  TabelasParaReordenar.Add('FORMASPAGAMENTO');
  TabelasParaReordenar.Add('FORNECEDORES');
  TabelasParaReordenar.Add('FOROS');
  TabelasParaReordenar.Add('FROTAS');
  TabelasParaReordenar.Add('GNRE');
  TabelasParaReordenar.Add('GRUPOS');
  TabelasParaReordenar.Add('HORAS');
  TabelasParaReordenar.Add('ICMS');
  TabelasParaReordenar.Add('IMOVEIS');
  TabelasParaReordenar.Add('IMOVEISTIPOS');
  TabelasParaReordenar.Add('IPI');
  TabelasParaReordenar.Add('ISS');
  TabelasParaReordenar.Add('LOCACOES');
  TabelasParaReordenar.Add('LOCAIS');
  TabelasParaReordenar.Add('LOTES');
  TabelasParaReordenar.Add('MAILINGS');
  TabelasParaReordenar.Add('MARCAS');
  TabelasParaReordenar.Add('MARKUPS');
  TabelasParaReordenar.Add('MATRICULAS');
  TabelasParaReordenar.Add('MDFE');
  TabelasParaReordenar.Add('MEDICAMENTOS');
  TabelasParaReordenar.Add('MEDICOES');
  TabelasParaReordenar.Add('MENSALIDADES');
  TabelasParaReordenar.Add('METAS');
  TabelasParaReordenar.Add('MOBILES');
  TabelasParaReordenar.Add('MOVIMENTOS');
  TabelasParaReordenar.Add('NATUREZAS');
  TabelasParaReordenar.Add('NFCE');
  TabelasParaReordenar.Add('NFCEINUTILIZADAS');
  TabelasParaReordenar.Add('NFE');
  TabelasParaReordenar.Add('NFECCE');
  TabelasParaReordenar.Add('NFEINUTILIZADAS');
  TabelasParaReordenar.Add('NFSE');
  TabelasParaReordenar.Add('NOTAS');
  TabelasParaReordenar.Add('OBJETOS');
  TabelasParaReordenar.Add('ODONTOGRAMAS');
  TabelasParaReordenar.Add('ODONTOGRAMASOPCOES');
  TabelasParaReordenar.Add('OPCIONAIS');
  TabelasParaReordenar.Add('PAGAR');
  TabelasParaReordenar.Add('PISCOFINS');
  TabelasParaReordenar.Add('PONTOS');
  TabelasParaReordenar.Add('PREVENDAS');
  TabelasParaReordenar.Add('PREVENDASITENS');
  TabelasParaReordenar.Add('PROCESSOS');
  TabelasParaReordenar.Add('PROCESSOSCUSTAS');
  TabelasParaReordenar.Add('PROCESSOSHIST');
  TabelasParaReordenar.Add('PRODUCAO');
  TabelasParaReordenar.Add('PRODUTOS');
  TabelasParaReordenar.Add('PRODUTOSCODIGOS');
  TabelasParaReordenar.Add('PRODUTOSCOMP');
  TabelasParaReordenar.Add('PRODUTOSFOTOS');
  TabelasParaReordenar.Add('PROJETOS');
  TabelasParaReordenar.Add('PROJETOSFASES');
  TabelasParaReordenar.Add('PROJETOSHISTORICO');
  TabelasParaReordenar.Add('PROJETOSTIPOS');
  TabelasParaReordenar.Add('PROMISSORIAS');
  TabelasParaReordenar.Add('PRONTUARIOS');
  TabelasParaReordenar.Add('RECEBER');
  TabelasParaReordenar.Add('RECEITAS');
  TabelasParaReordenar.Add('RECEITUARIOS');
  TabelasParaReordenar.Add('RECIBOS');
  TabelasParaReordenar.Add('SEGUROS');
  TabelasParaReordenar.Add('SEGUROSPARCELAS');
  TabelasParaReordenar.Add('SEGUROSTIPOS');
  TabelasParaReordenar.Add('SERVICOS');
  TabelasParaReordenar.Add('SERVICOSHORAS');
  TabelasParaReordenar.Add('TABPRECO');
  TabelasParaReordenar.Add('TAXAS');
  TabelasParaReordenar.Add('TURMAS');
  TabelasParaReordenar.Add('UNIDADES');
  TabelasParaReordenar.Add('USUARIOS');
  TabelasParaReordenar.Add('VEICULOS');
  TabelasParaReordenar.Add('VEICULOSCLIENTE');
  TabelasParaReordenar.Add('VEICULOSVENDA');
  TabelasParaReordenar.Add('VENDAS');
  TabelasParaReordenar.Add('VENDEDORES');
  TabelasParaReordenar.Add('VIAS');

  //  DM.AtualizarComponentes:=True;
  //  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao295;
begin
  ExecutarScript(295,
    'ALTER TABLE METAS ADD MET_TOTALVENDASCOMISSIONADAS DN_VALOR;'
  );

  TabelasParaReordenar.Add('METAS');

  //  DM.AtualizarComponentes:=True;
  //  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao294;
begin
  ExecutarScript(294,
    'ALTER TABLE EVOLUCOES'+
    '  ADD EVO_DATA DN_DATA,'+
    '  ADD EVO_HORA DN_HORA;'
  );

  TabelasParaReordenar.Add('EVOLUCOES');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao293;
begin
  ExecutarScript(293,
    'ALTER TABLE CONDICOES ADD CPG_TIPOINTEGRACAO DN_TIPOOPERACAO;'
  );

  ExecutarScript(293,
    'UPDATE CONDICOES SET CPG_TIPOINTEGRACAO='+QuotedStr('2 - PAGAMENTO NAO INTEGRADO')+';'
  );

  TabelasParaReordenar.Add('CONDICOES');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao292;
begin
  ExecutarScript(292,
    'ALTER DOMAIN DN_COMBUSTIVEL TYPE VARCHAR(30);'
  );

  ExecutarScript(292,
    'CREATE SEQUENCE GEN_CHECKLISTS;'+
    'CREATE SEQUENCE GEN_CHECKLISTSITENS;'+
    'CREATE SEQUENCE GEN_SERVICOSCHECK;'+

    'CREATE TABLE CHECKLISTS ('+
    '  CHK_CODIGO DN_CODIGO,'+
    '  CHK_DESCRICAO DN_DESCRICAO,'+
    '  CHK_DTATUALIZACAO DN_DATA,'+
    '  CHK_DTCADASTRO DN_DATA,'+
    '  CHK_HRATUALIZACAO DN_HORA,'+
    '  CHK_HRCADASTRO DN_HORA,'+
    '  CHK_STATUS DN_BOOLEAN,'+
    '  CHK_USUARIO DN_LOGIN);'+
    'ALTER TABLE CHECKLISTS ADD CONSTRAINT PK_CHK_CODIGO PRIMARY KEY (CHK_CODIGO);'+

    'CREATE TABLE CHECKLISTSITENS ('+
    '  CKI_CHECKLIST DN_CODIGO,'+
    '  CKI_CODIGO DN_CODIGO,'+
    '  CKI_DESCRICAO DN_DESCRICAO,'+
    '  CKI_STATUS DN_BOOLEAN);'+
    'ALTER TABLE CHECKLISTSITENS ADD CONSTRAINT PK_CKI_CODIGO PRIMARY KEY (CKI_CODIGO);'+
    'ALTER TABLE CHECKLISTSITENS ADD CONSTRAINT FK_CKI_CHECKLIST FOREIGN KEY (CKI_CHECKLIST) REFERENCES CHECKLISTS(CHK_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE TABLE SERVICOSCHECK ('+
    '  SCK_CHECKLIST DN_CODIGO,'+
    '  SCK_CHECKLISTITEM DN_CODIGO,'+
    '  SCK_CODIGO DN_CODIGO,'+
    '  SCK_OBSERVACOES DN_BLOBTEXTO,'+
    '  SCK_SERVICO DN_CODIGO,'+
    '  SCK_STATUS DN_BOOLEAN);'+
    'ALTER TABLE SERVICOSCHECK ADD CONSTRAINT PK_SCK_CODIGO PRIMARY KEY (SCK_CODIGO);'+
    'ALTER TABLE SERVICOSCHECK ADD CONSTRAINT FK_SCK_CHECKLIST FOREIGN KEY (SCK_CHECKLIST) REFERENCES CHECKLISTS(CHK_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE SERVICOSCHECK ADD CONSTRAINT FK_SCK_CHECKLISTITEM FOREIGN KEY (SCK_CHECKLISTITEM) REFERENCES CHECKLISTSITENS(CKI_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE SERVICOSCHECK ADD CONSTRAINT FK_SCK_SERVICO FOREIGN KEY (SCK_SERVICO) REFERENCES SERVICOS(SER_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'ALTER TABLE SERVICOS'+
    '  ADD SER_ANDAMENTO DN_DESCRICAOPEQUENA;'+

    'ALTER TABLE EQUIPAMENTOS'+
    '  ADD EQP_ANOFAB DN_NUMERO,'+
    '  ADD EQP_ANOMOD DN_NUMERO,'+
    '  ADD EQP_CHASSI DN_HASH,'+
    '  ADD EQP_COMBUSTIVEL DN_COMBUSTIVEL,'+
    '  ADD EQP_COR DN_CORSABOR;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_APIBRASILDEVICETOKEN DN_ACESSORIOS,'+
    '  ADD PAR_APIBRASILLOGIN DN_EMAIL,'+
    '  ADD PAR_APIBRASILPLACA DN_PATH,'+
    '  ADD PAR_APIBRASILSENHA DN_PASSWORD;'
  );

  ExecutarScript(292,
    'update SERVICOS set SER_ANDAMENTO=''FINALIZADA'';'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormChecklists'',''Cadastro de Checklists'',''A'',4);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormServicosCheck'',''Cadastro de Ordens de Serviço - Checklist'',''A'',4);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Checklists'',''TFormChecklists'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+
    'update PARAMETROS set PAR_APIBRASILPLACA='+QuotedStr('https://cluster.apigratis.com/api/v2')+' where PAR_CODIGO=1;'
  );

  TabelasParaReordenar.Add('EQUIPAMENTOS');
  TabelasParaReordenar.Add('PARAMETROS');
  TabelasParaReordenar.Add('SERVICOS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao291;
begin
  ExecutarScript(291,
    'ALTER TABLE TELEVENDAS'+
    '  ADD TEV_FIXA DN_BOOLEAN,'+
    '  ADD TEV_HRATUALIZACAO DN_HORA,'+
    '  ADD TEV_HRCADASTRO DN_HORA,'+
    '  ADD TEV_MOTIVO DN_NUMERO,'+
    '  ALTER TEV_HORARIO TYPE DN_DESCRICAO,'+
    '  ALTER TEV_HORARIO TO TEV_DESCRICAO;'+

    'ALTER TABLE PARAMETROS ADD PAR_FRETEPRIMEIRAPARCELA DN_BOOLEAN;'+

    'ALTER TABLE MOTIVOS '+
    '  ADD MOT_HRATUALIZACAO DN_HORA,'+
    '  ADD MOT_HRCADASTRO DN_HORA,'+
    '  ADD MOT_STATUS DN_BOOLEAN;'
  );

  DM.TBVersao.Open;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select MOT_CODIGO from MOTIVOS where MOT_CODIGO=1');
  DM.QYAux.Open;
  if DM.QYAux.IsEmpty then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'insert into MOTIVOS (MOT_CODIGO, MOT_DESCRICAO, MOT_DTATUALIZACAO, MOT_DTCADASTRO, MOT_HRATUALIZACAO, MOT_HRCADASTRO, MOT_USUARIO) values '+
      '(:codigo, :descricao, :dtatualizacao, :dtcadastro, :hratualizacao, :hrcadastro, :usuario)'
    );
    DM.QYAux.ParamByName('codigo').AsInteger:=1;
    DM.QYAux.ParamByName('descricao').AsString:='NAO INFORMADO';
    DM.QYAux.ParamByName('dtatualizacao').AsDate:=Date;
    DM.QYAux.ParamByName('dtcadastro').AsDate:=Date;
    DM.QYAux.ParamByName('hratualizacao').AsTime:=Time;
    DM.QYAux.ParamByName('hrcadastro').AsTime:=Time;
    DM.QYAux.ParamByName('usuario').AsString:='RUNTIME';
    DM.QYAux.ExecSQL;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'EXECUTE BLOCK AS '+
      'DECLARE V_MAX INTEGER;'+
      'BEGIN'+
      '  SELECT MAX(MOT_CODIGO) FROM MOTIVOS INTO :V_MAX;'+
      '  EXECUTE STATEMENT ''SET GENERATOR GEN_MOTIVOS TO '' || V_MAX;'+
      'END;'
    );
    DM.QYAux.ExecSQL;
  end;
  DM.QYAux.Close;

  ExecutarScript(291,
    'UPDATE TELEVENDAS SET TEV_FIXA=''N'', TEV_MOTIVO=1;'+
    'UPDATE PARAMETROS SET PAR_FRETEPRIMEIRAPARCELA=''N'' where PAR_CODIGO=1;'
  );

  ExecutarScript(291,
    'ALTER TABLE TELEVENDAS ALTER TEV_MOTIVO TYPE DN_CODIGO;'+
    'ALTER TABLE TELEVENDAS ADD CONSTRAINT FK_TEV_MOTIVO FOREIGN KEY (TEV_MOTIVO) REFERENCES MOTIVOS(MOT_CODIGO) ON UPDATE CASCADE;'
  );

  TabelasParaReordenar.Add('MOTIVOS');
  TabelasParaReordenar.Add('PARAMETROS');
  TabelasParaReordenar.Add('TELEVENDAS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao290;
begin
  ExecutarScript(290,
    'ALTER TABLE SERVICOS '+
    '  ADD SER_ACESSORIOS DN_ACESSORIOS, '+
    '  ADD SER_KMATUAL DN_NUMERO;'+
    'ALTER TABLE PARAMETROS ADD PAR_SERVICOSCLIENTEDIFERENTE DN_BOOLEAN;'
  );

  ExecutarScript(290,
    'UPDATE PARAMETROS SET PAR_SERVICOSCLIENTEDIFERENTE=''N'' where PAR_CODIGO=1;'
  );

  TabelasParaReordenar.Add('SERVICOS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao289;
begin
  ExecutarScript(289,
    'ALTER TABLE VENDASITENS ADD VEI_PEDIDOCLIENTE DN_NUMEROCHAR;'+
    'ALTER TABLE NOTASITENS ADD NOI_PEDIDOCLIENTE DN_NUMEROCHAR;'+
    'ALTER TABLE NFEITENS ADD NFI_PEDIDOCLIENTE DN_NUMEROCHAR;'
  );

  ExecutarScript(289,
    'UPDATE VENDASITENS SET VEI_PEDIDOCLIENTE=(SELECT VED_PEDIDOCLIENTE FROM VENDAS WHERE VED_CODIGO=VEI_VENDA);'+
    'UPDATE NOTASITENS SET NOI_PEDIDOCLIENTE=(SELECT NOT_PEDIDOCLIENTE FROM NOTAS WHERE NOT_CODIGO=NOI_NOTA);'+
    'UPDATE NFEITENS SET NFI_PEDIDOCLIENTE=(SELECT NFE_PEDIDOCLIENTE FROM NFE WHERE NFE_CODIGO=NFI_NOTA);'
  );

  TabelasParaReordenar.Add('VENDASITENS');
  TabelasParaReordenar.Add('NOTASITENS');
  TabelasParaReordenar.Add('NFEITENS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao288;
begin
  ExecutarScript(288,
    'CREATE DOMAIN DN_HASH AS VARCHAR(35);'+

    'ALTER TABLE PARAMETROS'+
    '  DROP PAR_NFSEINI,'+
    '  ADD PAR_NFSEPROVEDOR DN_DESCRICAOPEQUENA,'+
    '  ADD PAR_NFSEVERSAO DN_SIGLA5;'+

    'ALTER TABLE SERVICOS ADD SER_EQUIPAMENTO DN_NUMERO;'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormEquipamentos'',''Cadastro de Equipamentos'',''A'',4);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Equipamentos'',''TFormEquipamentos'',''NOME CLIENTE'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME CLIENTE;DESCRICAO;MARCA;MODELO;SERIE;'');'+
    'delete from SQLS where SQL_FORM=''FormServicosLoc'';'
  );

  ExecutarScript(288,
    'CREATE TABLE EQUIPAMENTOS ( '+
    '  EQP_ACESSORIOS DN_ACESSORIOS,'+
    '  EQP_CLIENTE DN_CODIGO,'+
    '  EQP_CODIGO DN_CODIGO,'+
    '  EQP_DESCRICAO DN_DESCRICAO,'+
    '  EQP_DTATUALIZACAO DN_DATA,'+
    '  EQP_DTCADASTRO DN_DATA,'+
    '  EQP_DTFILTRO DN_DATA,'+
    '  EQP_DTGERAL DN_DATA,'+
    '  EQP_DTLIMPEZA DN_DATA,'+
    '  EQP_DTNOTA DN_DATA,'+
    '  EQP_HASH DN_HASH,'+
    '  EQP_HRATUALIZACAO DN_HORA,'+
    '  EQP_HRCADASTRO DN_HORA,'+
    '  EQP_LOCALIZACAO DN_DESCRICAO,'+
    '  EQP_MARCA DN_MARCA,'+
    '  EQP_MODELO DN_MODELO,'+
    '  EQP_NOTA DN_NUMERO,'+
    '  EQP_OBSERVACOES DN_BLOBTEXTO,'+
    '  EQP_REVENDEDOR DN_NOME,'+
    '  EQP_SERIE DN_SERIE,'+
    '  EQP_STATUS DN_BOOLEAN,'+
    '  EQP_TAMANHO DN_NUMEROCHAR,'+
    '  EQP_TOTALFOTOS DN_NUMERO,'+
    '  EQP_USUARIO DN_LOGIN);'+

    'ALTER TABLE EQUIPAMENTOS ADD CONSTRAINT PK_EQP_CODIGO PRIMARY KEY (EQP_CODIGO);'+
    'ALTER TABLE EQUIPAMENTOS ADD CONSTRAINT FK_EQP_CLIENTE FOREIGN KEY (EQP_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+
    'CREATE SEQUENCE GEN_EQUIPAMENTOS;'+

    'UPDATE PARAMETROS SET PAR_NFSEPROVEDOR='+QuotedStr('proBetha')+', PAR_NFSEVERSAO='+QuotedStr('ve202')+' WHERE PAR_CODIGO=1;'
  );

  //atualiza a tabela de servicos criando o cadastro dos equipamentos.
  DM.QYAux2.Close;
  DM.QYAux2.SQL.Clear;
  DM.QYAux2.SQL.Add('update SERVICOS set SER_EQUIPAMENTO=:equipamento where SER_CODIGO=:servico');

  //DM.TBEquipamentos.Open;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select SER_ACESSORIOS, SER_CLIENTE, SER_CODIGO, SER_DTNOTAFISCAL, SER_LOCALIZACAO, SER_MARCA, SER_MODELO, SER_NUMERONF, SER_PRODUTO, SER_REVENDEDOR, SER_SERIE from SERVICOS order by SER_CLIENTE, SER_CODIGO'
  );
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    //cria novo equipamento.
    DM.QYAux3.Close;
    DM.QYAux3.SQL.Clear;
    DM.QYAux3.SQL.Add(
      'insert into EQUIPAMENTOS (EQP_ACESSORIOS, EQP_CLIENTE, EQP_CODIGO, EQP_DESCRICAO, EQP_DTNOTA, EQP_LOCALIZACAO, EQP_MARCA, EQP_MODELO, EQP_REVENDEDOR, EQP_SERIE) values '+
      '(:acessorios, :cliente, gen_id(GEN_EQUIPAMENTOS,1), :descricao, :dtnota, :localizacao, :marca, :modelo, :revendedor, :serie) returning EQP_CODIGO;'
    );
    DM.QYAux3.ParamByName('acessorios').AsString:=DM.QYAux.FieldByName('SER_ACESSORIOS').AsString;
    DM.QYAux3.ParamByName('cliente').AsInteger:=DM.QYAux.FieldByName('SER_CLIENTE').AsInteger;
    if DM.QYAux.FieldByName('SER_PRODUTO').AsString<>'' then
    DM.QYAux3.ParamByName('descricao').AsString:=DM.QYAux.FieldByName('SER_PRODUTO').AsString else
    DM.QYAux3.ParamByName('descricao').AsString:='DESCRICAO '+DM.QYAux.FieldByName('SER_CODIGO').AsString;
    DM.QYAux3.ParamByName('dtnota').AsDate:=DM.QYAux.FieldByName('SER_DTNOTAFISCAL').AsDateTime;
    DM.QYAux3.FieldByName('localizacao').AsString:=DM.QYAux.FieldByName('SER_LOCALIZACAO').AsString;
    DM.QYAux3.FieldByName('marca').AsString:=DM.QYAux.FieldByName('SER_MARCA').AsString;
    DM.QYAux3.FieldByName('modelo').AsString:=DM.QYAux.FieldByName('SER_MODELO').AsString;
    DM.QYAux3.FieldByName('revendedor').AsString:=DM.QYAux.FieldByName('SER_REVENDEDOR').AsString;
    DM.QYAux3.FieldByName('serie').AsString:=DM.QYAux.FieldByName('SER_SERIE').AsString;
    DM.QYAux3.Open;

//    DM.TBEquipamentos.Insert;
//    DM.TBEquipamentosEQP_ACESSORIOS.Value:=DM.QYAux.FieldByName('SER_ACESSORIOS').AsString;
//    DM.TBEquipamentosEQP_CLIENTE.Value:=DM.QYAux.FieldByName('SER_CLIENTE').AsInteger;
//    if DM.QYAux.FieldByName('SER_PRODUTO').AsString<>'' then
//    DM.TBEquipamentosEQP_DESCRICAO.Value:=DM.QYAux.FieldByName('SER_PRODUTO').AsString else
//    DM.TBEquipamentosEQP_DESCRICAO.Value:='DESCRICAO '+DM.QYAux.FieldByName('SER_CODIGO').AsString;
//    DM.TBEquipamentosEQP_DTNOTA.Value:=DM.QYAux.FieldByName('SER_DTNOTAFISCAL').AsDateTime;
//    DM.TBEquipamentosEQP_LOCALIZACAO.Value:=DM.QYAux.FieldByName('SER_LOCALIZACAO').AsString;
//    DM.TBEquipamentosEQP_MARCA.Value:=DM.QYAux.FieldByName('SER_MARCA').AsString;
//    DM.TBEquipamentosEQP_MODELO.Value:=DM.QYAux.FieldByName('SER_MODELO').AsString;
//    DM.TBEquipamentosEQP_NOTA.Value:=DM.QYAux.FieldByName('SER_NUMERONF').AsInteger;
//    DM.TBEquipamentosEQP_REVENDEDOR.Value:=DM.QYAux.FieldByName('SER_REVENDEDOR').AsString;
//    DM.TBEquipamentosEQP_SERIE.Value:=DM.QYAux.FieldByName('SER_SERIE').AsString;
//    DM.TBEquipamentos.Post;

    //atualiza a tabela de servicos com o código do equipamento.
    DM.QYAux2.Close;
    DM.QYAux2.ParamByName('servico').AsInteger:=DM.QYAux.FieldByName('SER_CODIGO').AsInteger;
    DM.QYAux2.ParamByName('equipamento').AsInteger:=DM.QYAux3.FieldByName('EQP_CODIGO').AsInteger; //  DM.TBEquipamentosEQP_CODIGO.Value;
    DM.QYAux2.ExecSQL; //autocommit.

    DM.QYAux3.Close;

    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  //DM.TBEquipamentos.Close;
  //...

  ExecutarScript(288,
    'ALTER TABLE SERVICOS '+
    '  DROP SER_ACESSORIOS,'+
    '  DROP SER_DTNOTAFISCAL,'+
    '  DROP SER_PRODUTO,'+
    '  DROP SER_MARCA,'+
    '  DROP SER_MODELO,'+
    '  DROP SER_NUMERONF,'+
    '  DROP SER_REVENDEDOR,'+
    '  DROP SER_SERIE;'+

    'ALTER TABLE SERVICOS ALTER SER_EQUIPAMENTO TYPE DN_CODIGO;'+
    'ALTER TABLE SERVICOS ADD CONSTRAINT FK_SER_EQUIPAMENTO FOREIGN KEY (SER_EQUIPAMENTO) REFERENCES EQUIPAMENTOS(EQP_CODIGO) ON UPDATE CASCADE;'
  );

  TabelasParaReordenar.Add('EQUIPAMENTOS');
  TabelasParaReordenar.Add('PARAMETROS');
  TabelasParaReordenar.Add('SERVICOS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao287;
begin
  ExecutarScript(287,
    'ALTER TABLE PARAMETROS ADD PAR_RECIBOSEMAILASSUNTO DN_NUMERO;'
  );

  ExecutarScript(287,
    'INSERT INTO ASSUNTOS (ASS_CODIGO, ASS_DESCRICAO, ASS_DTATUALIZACAO, ASS_DTCADASTRO, ASS_HTML, ASS_STATUS, ASS_USUARIO, ASS_TEXTO) VALUES '+
    '(gen_id(GEN_ASSUNTOS,1), ''[firenet] Recibo'', ''2024-02-06'', ''2024-02-06'', ''S'', ''A'', ''RUNTIME'', '+QuotedStr(
    '<FONT size=2 face=Arial>Caro |RCB_SNOME|,<BR><BR>'+
    'Segue anexo recibo solicitado.<BR><BR>'+
    'Número: <STRONG>|RCB_CODIGO|</STRONG><BR>'+
    'Valor: <STRONG>|RCB_VALOR|<BR></STRONG>'+
    'Proveniente: <STRONG>|RCB_PROVENIENTE|</STRONG><BR>'+
    'Sacado: <STRONG>|RCB_SNOME|</STRONG><BR>'+
    'Cedente: <STRONG>|RCB_CNOME|</STRONG><BR><BR>'+
    'Esta mensagem foi gerada automaticamente pelo sistema.<BR><BR>'+
    '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
    'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
    'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>')+');'
  );

  ExecutarScript(287,
    'update PARAMETROS set PAR_RECIBOSEMAILASSUNTO=(select ASS_CODIGO from ASSUNTOS where ASS_DESCRICAO='+QuotedStr('[firenet] Recibo')+');'
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao286;
begin
  ExecutarScript(286,
    'ALTER DOMAIN DN_DESCRICAOLONGA TYPE VARCHAR(300) CHARACTER SET WIN1252;'
  );

  //TabelasParaReordenar.Add('CONTAS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao285;
begin
  ExecutarScript(285,
    'CREATE DOMAIN DN_QRCODE AS VARCHAR(250);'
  );

  ExecutarScript(285,
    'ALTER TABLE CONTAS ADD CON_CHAVEPIXTIPO DN_ALEATORIO;'+
    'ALTER TABLE BOLETOS ADD BOL_QRCODEPIX DN_QRCODE;'
  );

  ExecutarScript(285,
    'update CONTAS set CON_CHAVEPIXTIPO='+QuotedStr('NENHUMA')+';'
  );

  TabelasParaReordenar.Add('CONTAS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao284;
begin
  ExecutarScript(284,
    'ALTER TABLE CONTAS '+
    '  ADD CON_CHAVEPIX DN_DESCRICAO,'+
    '  ADD CON_CLIENTID DN_DESCRICAOLONGA,'+
    '  ADD CON_CLIENTSECRET DN_DESCRICAOLONGA,'+
    '  ADD CON_KEYUSER DN_DESCRICAOLONGA;'
  );

  TabelasParaReordenar.Add('CONTAS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao283;
begin
  ExecutarScript(283,
    'ALTER TABLE PRODUTOS ADD PRO_ENQUADRAMENTOIPI DN_NUMERO;'+
    'ALTER TABLE PARAMETROS ADD PAR_ENQUADRAMENTOIPI DN_NUMERO;'+
    'ALTER TABLE VENDASITENS ADD VEI_ENQUADRAMENTOIPI DN_NUMERO;'+
    'ALTER TABLE NFEITENS ADD NFI_ENQUADRAMENTOIPI DN_NUMERO;'+
    'ALTER TABLE NOTASITENS ADD NOI_ENQUADRAMENTOIPI DN_NUMERO;'+
    'ALTER TABLE COMPRASITENS ADD COI_ENQUADRAMENTOIPI DN_NUMERO;'+
    'ALTER TABLE SERVICOSITENS ADD SEI_ENQUADRAMENTOIPI DN_NUMERO;'
  );

  ExecutarScript(283,
    'update PRODUTOS set PRO_ENQUADRAMENTOIPI=999;'+
    'update PARAMETROS set PAR_ENQUADRAMENTOIPI=999;'+
    'update VENDASITENS set VEI_ENQUADRAMENTOIPI=999;'+
    'update NFEITENS set NFI_ENQUADRAMENTOIPI=999;'+
    'update NOTASITENS set NOI_ENQUADRAMENTOIPI=999;'+
    'update COMPRASITENS set COI_ENQUADRAMENTOIPI=999;'+
    'update SERVICOSITENS set SEI_ENQUADRAMENTOIPI=999;'
  );

  TabelasParaReordenar.Add('PRODUTOS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao282;
begin
  ExecutarScript(282,
    'ALTER TABLE PARAMETROS ADD PAR_CHAVECNPJA DN_COMPLEMENTO;'
  );

  TabelasParaReordenar.Add('PARAMETROS');

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao281;
begin
  ExecutarScript(281,
    'ALTER TABLE PARAMETROS DROP PAR_ICMSALIQUOTAPOR;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormManifestacoes'',''Cadastro de Manifestacoes do destinatario'',''A'',2);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Manifestacoes do destinatario'',''TFormManifestacoes'',''CODIGO'',''CODIGO;DATA INICIAL;'');'
  );

  TabelasParaReordenar.Add('PARAMETROS');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao280;
begin
  ExecutarScript(280,
    'CREATE TABLE MANIFESTACOES ('+
    '  MAN_CIENCIA DN_BOOLEAN,'+
    '  MAN_CIENCIADH DN_DATAHORA,'+
    '  MAN_CIENCIAPROTOCOLO DN_PROTOCOLO,'+
    '  MAN_CIENCIAPROTOCOLODH DN_DATAHORA,'+
    '  MAN_CODIGO DN_CODIGO,'+
    '  MAN_CONCLUSAO DN_DESCRICAO,'+
    '  MAN_CONCLUSAODH DN_DATAHORA,'+
    '  MAN_CONCLUSAOPROTOCOLO DN_PROTOCOLO,'+
    '  MAN_CONCLUSAOPROTOCOLODH DN_DATAHORA,'+
    '  MAN_DTATUALIZACAO DN_DATA,'+
    '  MAN_DTCONSULTA DN_DATA,'+
    '  MAN_HRATUALIZACAO DN_HORA,'+
    '  MAN_HRCONSULTA DN_HORA,'+
    '  MAN_JUSTIFICATIVA DN_DESCRICAOPLUS,'+
    '  MAN_NSU DN_NUMDOCTO,'+
    '  MAN_SCHEMA DN_PROTOCOLO,'+
    '  MAN_USUARIO DN_LOGIN,'+
    '  MAN_XML DN_BLOBTEXTO,'+
    '  MAN_XMLNFE DN_BLOBTEXTO);'+

    'ALTER TABLE MANIFESTACOES ADD CONSTRAINT PK_MAN_CODIGO PRIMARY KEY (MAN_CODIGO);'+
    'CREATE SEQUENCE GEN_MANIFESTACOES;'
  );

  //TabelasParaReordenar.Add('');

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao279;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='279';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOS ADD PRO_ICMSALIQUOTAPOR DN_BOOLEAN;'+
    'ALTER TABLE COMPRAS '+
    '  DROP COM_ICMSPOR, '+
    '  DROP COM_ICMSALIQUOTAUF;'+

    'ALTER TABLE NFCE '+
    '  DROP NFC_ICMSALIQUOTAUF, '+
    '  DROP NFC_ICMSPOR;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PRODUTOS set PRO_ICMSALIQUOTAPOR=(select PAR_ICMSALIQUOTAPOR from PARAMETROS where PAR_CODIGO=1)'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PRODUTOS');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.3245 - 07.06.2023'+#13#10+
//    '- Alterado o parametro "Aliquota ICMS Por" para dentro do cadastro do produto.'+#13#10+#13#10);
end;

procedure AtualizarVersao278;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='278';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE TABLE BENEFICIOS ( '+
    '  BEN_CODIGO DN_CLASSFISCAL NOT NULL,'+
    '  BEN_DESCRICAO DN_BLOBTEXTO,'+
    '  BEN_DTATUALIZACAO DN_DATA,'+
    '  BEN_DTCADASTRO DN_DATA,'+
    '  BEN_HRATUALIZACAO DN_HORA,'+
    '  BEN_TIPO DN_DESCRICAO,'+
    '  BEN_USUARIO DN_LOGIN);'+

    'ALTER TABLE BENEFICIOS ADD CONSTRAINT PK_BEN_CODIGO PRIMARY KEY (BEN_CODIGO);'+

    'ALTER TABLE VENDASITENS ADD VEI_BENEFICIO DN_CLASSFISCAL;'+
    'ALTER TABLE NOTASITENS ADD NOI_BENEFICIO DN_CLASSFISCAL;'+
    'ALTER TABLE NFEITENS ADD NFI_BENEFICIO DN_CLASSFISCAL;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormBeneficios'',''Cadastro de Beneficios Fiscais'',''A'',2);'+
    'update EMPRESA set EMP_NOSSOSITE='+QuotedStr('https://runtimesistemas.com.br')+', EMP_NOSSOSITESENHA='+QuotedStr('https://runtimesistemas.com.br/senhaperiodica')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('VENDASITENS');
  TabelasParaReordenar.Add('NOTASITENS');
  TabelasParaReordenar.Add('NFEITENS');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.3235 - 26.04.2023'+#13#10+
//    '- Criado cadastro de códigos de benefícios fiscais.'+#13#10+#13#10);
end;

procedure AtualizarVersao277;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='277';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE VENDAS ADD VED_INFOCOMPLEMENTAR DN_BLOBTEXTO;'+
    'ALTER TABLE NFE ADD NFE_INFOCOMPLEMENTAR DN_BLOBTEXTO;'+
    'ALTER TABLE NOTAS ADD NOT_INFOCOMPLEMENTAR DN_BLOBTEXTO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('NFE');
  TabelasParaReordenar.Add('VENDAS');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.3220 - 23.03.2023'+#13#10+
//    '- Criado campo Informações Complementares no pedido de vendas e NFe.'+#13#10+#13#10);
end;

procedure AtualizarVersao276;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='276';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CONTAS ADD CON_CNPJ DN_CNPJIECPFRG;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PRODUTOS set PRO_NOME=''PRODUTO SEM NOME ''||PRO_CODIGO where PRO_NOME is null or PRO_NOME='+QuotedStr('')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOS ALTER PRO_NOME SET NOT NULL;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CONTAS');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.3200 - 21.02.2023'+#13#10+
//    '- Criado campo CNPJ no cadastro de contas.'+#13#10+#13#10);
end;

procedure AtualizarVersao275;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='275';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CONDICOES ADD CPG_CONTA DN_NUMERO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE CONDICOES SET CPG_CONTA=(select min(CON_CODIGO) from CONTAS)'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CONDICOES ALTER CPG_CONTA TYPE DN_CODIGO;'+
    'ALTER TABLE CONDICOES ADD CONSTRAINT FK_CPG_CONTA FOREIGN KEY (CPG_CONTA) REFERENCES CONTAS(CON_CODIGO) ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CONDICOES');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.3194 - 20.02.2023'+#13#10+
//    '- Criado campo conta no cadastro de condições de pagamento.'+#13#10+#13#10);
end;

procedure AtualizarVersao274;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='274';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER DOMAIN DN_COMISSAOSOBRE TO DN_COMISSAOTIPO;'+
    'CREATE TABLE METAS ('+
    '  MET_BONUSPORC DN_VALOR,'+
    '  MET_BONUSVALOR DN_VALOR,'+
    '  MET_CODIGO DN_CODIGO,'+
    '  MET_COMISSAO DN_VALOR,'+
    '  MET_COMISSAOTIPO DN_COMISSAOTIPO,'+
    '  MET_DTATUALIZACAO DN_DATA,'+
    '  MET_DTBAIXA DN_DATA,'+
    '  MET_DTCADASTRO DN_DATA,'+
    '  MET_DTFIM DN_DATA,'+
    '  MET_DTINICIO DN_DATA,'+
    '  MET_HRATUALIZACAO DN_HORA,'+
    '  MET_METAATINGIDA DN_VALOR,'+
    '  MET_METAVALOR DN_VALOR,'+
    '  MET_SALARIOBASE DN_VALOR,'+
    '  MET_STATUS DN_BOOLEAN,'+
    '  MET_TOTALCOMISSAO DN_VALOR,'+
    '  MET_TOTALLIQUIDADO DN_VALOR,'+
    '  MET_TOTALVENDAS DN_VALOR,'+
    '  MET_USUARIO DN_LOGIN,'+
    '  MET_VENDEDOR DN_CODIGO);'+
    'ALTER TABLE METAS ADD CONSTRAINT PK_MET_CODIGO PRIMARY KEY (MET_CODIGO);'+
    'ALTER TABLE METAS ADD CONSTRAINT FK_MET_VENDEDOR FOREIGN KEY (MET_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+

    'CREATE TABLE METASCONFIG ('+
    '  MTG_CODIGO DN_CODIGO,'+
    '  MTG_INICIO DN_VALOR,'+
    '  MTG_FIM DN_VALOR,'+
    '  MTG_PORCENTAGEM DN_VALOR);'+
    'ALTER TABLE METASCONFIG ADD CONSTRAINT PK_MTG_CODIGO PRIMARY KEY (MTG_CODIGO);'+

    'CREATE SEQUENCE GEN_METAS;'+
    'CREATE SEQUENCE GEN_METASCONFIG;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE VENDEDORES '+
    '  ADD VEN_COMISSAOTIPO DN_COMISSAOTIPO,'+
    '  ADD VEN_SALARIOBASE DN_VALOR;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE VENDEDORES SET VEN_COMISSAOTIPO=''RECEBIMENTO'', VEN_SALARIOBASE=1000;'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Metas'',''TFormMetas'',''NOME'',''CODIGO;CODIGO VENDEDOR;NOME;'');'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormMetas'',''Cadastro de Metas'',''A'',100);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormMetasConfig'',''Cadastro de Metas - Configuracao'',''A'',100);'+
    'delete from SQLS where SQL_FORM=''FormVendedoresLoc'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('VENDEDORES');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.3121 - 10.11.2022'+#13#10+
//    '- Criado cadastro de metas.'+#13#10+#13#10);
end;

procedure AtualizarVersao273;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='273';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER DOMAIN DN_NOME TYPE VARCHAR(80) CHARACTER SET WIN1252;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  //TabelasParaReordenar.Add('');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.3105 - 24.10.2022'+#13#10+
//    '- Aumentado tamanho do campo nome nos cadastros.'+#13#10+#13#10);
end;

procedure AtualizarVersao272;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='272';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOSCOMP ADD PRC_BAIXAR DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  //atualiza a tabela de produtos compostos setando o campo baixar de acordo com o tipo do produto... se servico=S entao baixar=N.
  //produtos do tipo servico nao precisam ser baixadas na ordem de produção.
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'merge into PRODUTOSCOMP PC '+
    'using ( '+
    '  with X as ( '+
    '    select PRC_PRODUTOCOMP, PRC_BAIXAR, iif(PRO_TIPO=''P'',''S'',''N'') as TIPOXBAIXAR from PRODUTOSCOMP'+
    '    left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO '+
    '  ) '+
    'select * from X) A on PC.PRC_PRODUTOCOMP = A.PRC_PRODUTOCOMP '+
    'when matched then update set PC.PRC_BAIXAR = A.TIPOXBAIXAR'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PRODUTOSCOMP');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.3100 - 24.10.2022'+#13#10+
//    '- Acrescentado campo baixar (S ou N) na tela de composição do produto.'+#13#10+#13#10);
end;

procedure AtualizarVersao271;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='271';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE VENDAS ADD VED_VIAINTERNETSTATUS DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE VENDAS SET VED_VIAINTERNETSTATUS=''F'';'+
    'delete from SQLS where SQL_FORM=''FormVendasLoc'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');
  TabelasParaReordenar.Add('VENDAS');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.3080 - 18.10.2022'+#13#10+
//    '- Criado parametrização para listar todos os clientes no mobile.'+#13#10+#13#10);
end;

procedure AtualizarVersao270;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='270';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE INDEX IX_REE_DTVENCIMENTO ON RECEBER (REE_DTVENCIMENTO);'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_HIGHWIDTH DN_NUMERO,'+
    '  ADD PAR_HIGHHEIGHT DN_NUMERO,'+
    '  ADD PAR_LOWWIDTH DN_NUMERO,'+
    '  ADD PAR_LOWHEIGHT DN_NUMERO,'+
    '  ADD PAR_PASTAHIGH DN_LOCALIZACAO,'+
    '  ADD PAR_PASTALOW DN_LOCALIZACAO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE PARAMETROS SET PAR_HIGHWIDTH=2000, PAR_HIGHHEIGHT=2000, PAR_LOWWIDTH=200, PAR_LOWHEIGHT=200, PAR_PASTAHIGH=''high'', PAR_PASTALOW=''low'' where PAR_CODIGO=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.3070 - 18.08.2022'+#13#10+
    '- Alterado o cadastro de fotos de produtos para dimensionar as imagens e criar também uma versão miniatura.'+#13#10+#13#10);
end;

procedure AtualizarVersao269;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='269';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CUPOM'+
    '  ADD CUP_NFCE DN_NUMERO,'+
    '  ADD CUP_CHAVEACESSO DN_CHAVEACESSO,'+
    '  ADD CUP_PROTOCOLO DN_PROTOCOLO,'+
    '  ADD CUP_PROTOCOLODH DN_DATAHORA;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CUPOM');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2680 - 13.12.2021'+#13#10+
  //  '- Criado campos tipo consumidor e frete no cadastro de clientes.'+#13#10+#13#10);
end;

procedure AtualizarVersao268;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='268';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CUPOM ADD CUP_TOTALITENS DN_VALOR;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE CUPOM SET CUP_TOTALITENS=CUP_VALORTOTAL;'+
    'UPDATE CUPOM SET CUP_VALORTOTAL=CUP_TOTALITENS-CUP_DESCVALOR;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CUPOM');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2680 - 13.12.2021'+#13#10+
  //  '- Criado campos tipo consumidor e frete no cadastro de clientes.'+#13#10+#13#10);
end;

procedure AtualizarVersao267;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='267';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFE '+
    '  ADD NFE_INTERMEDIADORCNPJ DN_CNPJIECPFRG,'+
    '  ADD NFE_INTERMEDIADORCAD DN_DESCRICAO,'+
    '  ADD NFE_INTERMEDIADOR DN_TIPOATENDIMENTO;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_INTERMEDIADOR DN_TIPOATENDIMENTO,'+
    '  ADD PAR_INTERMEDIADORCNPJ DN_CNPJIECPFRG,'+
    '  ADD PAR_INTERMEDIADORCAD DN_DESCRICAO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update NFE set NFE_INTERMEDIADOR=''0 - OPERACAO SEM INTERMEDIADOR'';'+
    'update PARAMETROS set PAR_INTERMEDIADOR=''0 - OPERACAO SEM INTERMEDIADOR'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('NFE');
  TabelasParaReordenar.Add('PARAMETROS');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2680 - 13.12.2021'+#13#10+
  //  '- Criado campos tipo consumidor e frete no cadastro de clientes.'+#13#10+#13#10);
end;

procedure AtualizarVersao266;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='266';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE MENSALIDADES ADD MNS_STATUS DN_BOOLEAN;'+
    'ALTER TABLE MENSALIDADES ALTER MNS_DESCRICAO TYPE DN_DESCRICAOPLUS;'+
    'ALTER TABLE RECEBER ALTER REE_DESCRICAO TYPE DN_DESCRICAOPLUS;'+
    'ALTER TABLE CAIXAMOV ALTER CAI_DESCRICAO TYPE DN_DESCRICAOPLUS;'+
    'ALTER TABLE CONTASMOV ALTER CMO_DESCRICAO TYPE DN_DESCRICAOPLUS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update MENSALIDADES set MNS_STATUS=''A'';'+
    'delete from SQLS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('MENSALIDADES');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2680 - 13.12.2021'+#13#10+
  //  '- Criado campos tipo consumidor e frete no cadastro de clientes.'+#13#10+#13#10);
end;

procedure AtualizarVersao265;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='265';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CONDICOES ADD CPG_MEIOPAGAMENTO DN_DESCRICAO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE CONDICOES SET CPG_MEIOPAGAMENTO=''01 - DINHEIRO'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CONDICOES');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2680 - 13.12.2021'+#13#10+
  //  '- Criado campos tipo consumidor e frete no cadastro de clientes.'+#13#10+#13#10);
end;

procedure AtualizarVersao264;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='264';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CLIENTES ADD CLI_TIPOCONSUMIDOR DN_TIPOCONSUMIDOR, ADD CLI_FRETE DN_FRETE;'+

    'CREATE TABLE ETAPAS ('+
    '  ETP_CODIGO DN_CODIGO,'+
    '  ETP_DESCRICAO DN_DESCRICAO,'+
    '  ETP_DTATUALIZACAO DN_DATA,'+
    '  ETP_DTCADASTRO DN_DATA,'+
    '  ETP_HRATUALIZACAO DN_HORA,'+
    '  ETP_HRCADASTRO DN_HORA,'+
    '  ETP_SIGLA DN_SIGLA15,'+
    '  ETP_TEMPO DN_HORARIO,'+
    '  ETP_TEMPODEC DN_VALOR,'+
    '  ETP_TEMPOMIN DN_NUMERO,'+
    '  ETP_USUARIO DN_LOGIN);'+
    'ALTER TABLE ETAPAS ADD CONSTRAINT PK_ETP_CODIGO PRIMARY KEY (ETP_CODIGO);'+
    'CREATE SEQUENCE GEN_ETAPAS;' +

    'CREATE TABLE PRODUTOSETAPAS ('+
    '  PET_CODIGO DN_CODIGO,'+
    '  PET_DTATUALIZACAO DN_DATA,'+
    '  PET_DTCADASTRO DN_DATA,'+
    '  PET_ETAPA DN_CODIGO,'+
    '  PET_HRATUALIZACAO DN_HORA,'+
    '  PET_HRCADASTRO DN_HORA,'+
    '  PET_PRODUTO DN_CODIGO,'+
    '  PET_OBSERVACOES DN_BLOBTEXTO,'+
    '  PET_ORDEM DN_NUMERO,'+
    '  PET_USUARIO DN_LOGIN);'+
    'ALTER TABLE PRODUTOSETAPAS ADD CONSTRAINT PK_PET_CODIGO PRIMARY KEY (PET_CODIGO);'+
    'ALTER TABLE PRODUTOSETAPAS ADD CONSTRAINT FK_PET_PRODUTO FOREIGN KEY (PET_PRODUTO) REFERENCES PRODUTOS(PRO_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'ALTER TABLE PRODUTOSETAPAS ADD CONSTRAINT FK_PET_ETAPA FOREIGN KEY (PET_ETAPA) REFERENCES ETAPAS(ETP_CODIGO) ON UPDATE CASCADE;'+
    'CREATE SEQUENCE GEN_PRODUTOSETAPAS;'+

    'ALTER TABLE USUARIOS ALTER USU_VENDEDOR TYPE DN_CODIGO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE CLIENTES SET CLI_TIPOCONSUMIDOR=''0 - NORMAL'', CLI_FRETE=''0 - EMITENTE'';'+
    'DELETE FROM SQLS;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormEtapas'',''Cadastro de Etapas'',''A'',100);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormProdutosEtapas'',''Cadastro de Produtos - Etapas'',''A'',100);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (gen_id(GEN_LOCS,1),''Etapas'',''TFormEtapas'',''DESCRICAO'',''CODIGO;DESCRICAO;SIGLA;'');'+
    'ALTER TABLE USUARIOS ADD CONSTRAINT FK_USU_VENDEDOR FOREIGN KEY (USU_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CLIENTES');

  EnviarMensagemParaTodos(1,
    'Versão 12.2680 - 13.12.2021'+#13#10+
    '- Criado campos tipo consumidor e frete no cadastro de clientes.'+#13#10+#13#10);
end;

procedure AtualizarVersao263;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='263';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFEITENS'+
    '  ADD NFI_SOMACOFINSST DN_BOOLEAN,'+
    '  ADD NFI_SOMAPISST DN_BOOLEAN;'+

    'ALTER TABLE VENDASITENS'+
    '  ADD VEI_SOMACOFINSST DN_BOOLEAN,'+
    '  ADD VEI_SOMAPISST DN_BOOLEAN;'+

    'ALTER TABLE NOTASITENS'+
    '  ADD NOI_SOMACOFINSST DN_BOOLEAN,'+
    '  ADD NOI_SOMAPISST DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE VENDASITENS SET VEI_SOMAPISST=''N'', VEI_SOMACOFINSST=''N'';'+
    'UPDATE NFEITENS SET NFI_SOMAPISST=''N'', NFI_SOMACOFINSST=''N'';'+
    'UPDATE NOTASITENS SET NOI_SOMAPISST=''N'', NOI_SOMACOFINSST=''N'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('VENDASITENS');
  TabelasParaReordenar.Add('NFEITENS');
  TabelasParaReordenar.Add('NOTASITENS');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2680 - 10.05.2021'+#13#10+
  //  '- Melhorias no sistema mobile.'+#13#10+#13#10);
end;

procedure AtualizarVersao262;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='262';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DESCENDING INDEX IX_NFE_CODIGO ON NFE (NFE_CODIGO);'+

    'ALTER TABLE PARAMETROS ADD PAR_SERVICOSEMAILASSUNTO DN_NUMERO;'+

    'ALTER TABLE PRODUTOS'+
    '  ADD PRO_ALTURA DN_NUMERO,'+
    '  ADD PRO_LARGURA DN_NUMERO,'+
    '  ADD PRO_PROFUNDIDADE DN_NUMERO,'+
    '  ADD PRO_CUBICO DN_NUMERO;'+

    'CREATE TABLE CONTATOS ('+
    '  CTT_CLIENTE DN_CODIGO,'+
    '  CTT_CODIGO DN_CODIGO,'+
    '  CTT_DTATUALIZACAO DN_DATA,'+
    '  CTT_DTCADASTRO DN_DATA,'+
    '  CTT_EMAIL DN_EMAIL,'+
    '  CTT_FONE DN_FONE,'+
    '  CTT_NOME DN_NOME,'+
    '  CTT_USUARIO DN_LOGIN);'+

    'ALTER TABLE CONTATOS ADD CONSTRAINT PK_CTT_CODIGO PRIMARY KEY (CTT_CODIGO);'+
    'ALTER TABLE CONTATOS ADD CONSTRAINT FK_CTT_CLIENTE FOREIGN KEY (CTT_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'CREATE SEQUENCE GEN_CONTATOS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE PRODUTOS SET PRO_ALTURA=0, PRO_LARGURA=0, PRO_PROFUNDIDADE=0, PRO_CUBICO=0;'+
    'UPDATE PARAMETROS SET PAR_SERVICOSEMAILASSUNTO=1;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormContatos'',''Cadastro de Contatos do Cliente'',''A'',100);'+
    'update USUARIOS set USU_VENDEDOR=(select min(VEN_CODIGO) from VENDEDORES) where USU_VENDEDOR is null;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');
  TabelasParaReordenar.Add('PRODUTOS');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2680 - 10.05.2021'+#13#10+
  //  '- Melhorias no sistema mobile.'+#13#10+#13#10);
end;

procedure AtualizarVersao261;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='261';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update LOCS set LOS_PICKLIST=''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME;CODIGO CONTA;CODIGO RECEITA;RECEITA;DESCRICAO;'' where LOS_TELA=''Mensalidades'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  //TabelasParaReordenar.Add('PARAMETROS');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2680 - 10.05.2021'+#13#10+
  //  '- Melhorias no sistema mobile.'+#13#10+#13#10);
end;

procedure AtualizarVersao260;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='260';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_CLIENTESTODOS DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE PARAMETROS SET PAR_CLIENTESTODOS=''S'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2680 - 10.05.2021'+#13#10+
    '- Melhorias no sistema mobile.'+#13#10+#13#10);
end;

procedure AtualizarVersao259;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='259';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOSCODIGOS ADD CONSTRAINT FK_PCO_PRODUTO FOREIGN KEY (PCO_PRODUTO) REFERENCES PRODUTOS(PRO_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'ALTER TABLE PRODUTOSCODIGOS ADD CONSTRAINT FK_PCO_FORNECEDOR FOREIGN KEY (PCO_FORNECEDOR) REFERENCES FORNECEDORES(FOR_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  //TabelasParaReordenar.Add('NOTAS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2658 - 08.03.2021'+#13#10+
    '- Desenvolvido tela de importação de XML no pedido de vendas.'+#13#10+#13#10);
end;

procedure AtualizarVersao258;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='258';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE VENDAS'+
    '  ADD VED_TIPOATENDIMENTO DN_TIPOATENDIMENTO,'+
    '  ADD VED_TIPOCONSUMIDOR DN_TIPOCONSUMIDOR,'+
    '  ADD VED_TIPOOPERACAO DN_TIPOOPERACAO;'+

    'ALTER TABLE NOTAS'+
    '  ADD NOT_TIPOATENDIMENTO DN_TIPOATENDIMENTO,'+
    '  ADD NOT_TIPOCONSUMIDOR DN_TIPOCONSUMIDOR,'+
    '  ADD NOT_TIPOOPERACAO DN_TIPOOPERACAO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE VENDAS'+
    '  SET VED_TIPOATENDIMENTO='+QuotedStr('1 - OPERACAO PRESENCIAL')+','+
    '  VED_TIPOCONSUMIDOR='+QuotedStr('0 - NORMAL')+','+
    '  VED_TIPOOPERACAO='+QuotedStr('1 - OPERACAO INTERNA')+';'+

    'UPDATE NOTAS'+
    '  SET NOT_TIPOATENDIMENTO='+QuotedStr('1 - OPERACAO PRESENCIAL')+','+
    '  NOT_TIPOCONSUMIDOR='+QuotedStr('0 - NORMAL')+','+
    '  NOT_TIPOOPERACAO='+QuotedStr('1 - OPERACAO INTERNA')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('NOTAS');
  TabelasParaReordenar.Add('VENDAS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2614 - 11.12.2020'+#13#10+
    '- Ajustes nos cálculos de ICMS.'+#13#10+#13#10);
end;

procedure AtualizarVersao257;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='257';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_COORDENADAS AS FLOAT;'+
    'ALTER TABLE MDFE'+
    '  ADD MDF_PRODUTOPREDOM DN_DESCRICAO,'+
    '  ADD MDF_TIPOCARGA DN_MODELO,'+
    '  ADD MDF_CODIGOBARRAS DN_CODIGOBARRAS,'+
    '  ADD MDF_CLASSFISCAL DN_CLASSFISCAL,'+
    '  ADD MDF_LOCALCARREGACEP DN_CEP,'+
    '  ADD MDF_LOCALCARREGALAT DN_COORDENADAS,'+
    '  ADD MDF_LOCALCARREGALON DN_COORDENADAS,'+
    '  ADD MDF_LOCALDESCARREGACEP DN_CEP,'+
    '  ADD MDF_LOCALDESCARREGALAT DN_COORDENADAS,'+
    '  ADD MDF_LOCALDESCARREGALON DN_COORDENADAS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('MDFE');

  EnviarMensagemParaTodos(1,
    'Versão 12.2610 - 27.10.2020'+#13#10+
    '- Atualizado emissão de MDFe.'+#13#10+#13#10);
end;

procedure AtualizarVersao256;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='256';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOSFOTOS ADD PRF_PRINCIPAL DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PRODUTOSFOTOS');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2595 - 21.10.2020'+#13#10+
  //  '- Atualizado cadastro de fotos de produtos.'+#13#10+#13#10);
end;

procedure AtualizarVersao255;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='255';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_ARQUIVO AS VARCHAR(30);'+
    'CREATE SEQUENCE GEN_PRODUTOSFOTOS;'+

    'CREATE TABLE PRODUTOSFOTOS ('+
    '  PRF_ARQUIVO DN_ARQUIVO,'+
    '  PRF_CODIGO DN_CODIGO,'+
    '  PRF_DESCRICAO DN_NOME,'+
    '  PRF_DTATUALIZACAO DN_DATA,'+
    '  PRF_DTCADASTRO DN_DATA,'+
    '  PRF_HRATUALIZACAO DN_HORA,'+
    '  PRF_PRODUTO DN_CODIGO,'+
    '  PRF_USUARIO DN_LOGIN);'+

    'ALTER TABLE PRODUTOSFOTOS ADD CONSTRAINT PK_PRF_CODIGO PRIMARY KEY (PRF_CODIGO);'+
    'ALTER TABLE PRODUTOSFOTOS ADD CONSTRAINT FK_PRF_PRODUTO FOREIGN KEY (PRF_PRODUTO) REFERENCES PRODUTOS(PRO_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  //TabelasParaReordenar.Add('NFSE');

  EnviarMensagemParaTodos(1,
    'Versão 12.2595 - 21.10.2020'+#13#10+
    '- Atualizado cadastro de fotos de produtos.'+#13#10+#13#10);
end;

procedure AtualizarVersao254;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='254';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFSE ALTER NFS_CANCELAMENTOCODIGO TYPE DN_NUMEROCHAR;'+
    'ALTER TABLE NFSE ALTER NFS_TOMPAIS TO NFS_TOMPAISCODIGO;'+
    'delete from SQLS;' //apaga as consultas já feitas, pois foram adicionados campos novos nas consultas de clientes e produtos.
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFSE ADD NFS_TOMPAIS DN_NOME;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE NFSE SET NFS_TOMPAIS='+QuotedStr('BRASIL')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('NFSE');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2544 - 25.06.2020'+#13#10+
  //  '- '+#13#10+#13#10);
end;

procedure AtualizarVersao253;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='253';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER DOMAIN DN_PROTOCOLO TYPE VARCHAR(40) CHARACTER SET WIN1252;'+
    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_ARQUIVOCERTIFICADO DN_PATH,'+
    '  ADD PAR_SENHACERTIFICADO DN_PASSWORD,'+
    '  ADD PAR_LIBSSL DN_REFERENCIA,'+
    '  ADD PAR_LIBCRYPT DN_REFERENCIA,'+
    '  ADD PAR_LIBHTTP DN_REFERENCIA,'+
    '  ADD PAR_LIBXMLSIGN DN_REFERENCIA;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PARAMETROS set '+
    '  PAR_LIBSSL='+QuotedStr('libCustom')+
    ', PAR_LIBCRYPT='+QuotedStr('cryWinCrypt')+
    ', PAR_LIBHTTP='+QuotedStr('httpWinHttp')+
    ', PAR_LIBXMLSIGN='+QuotedStr('xsMsXml')+
    ' where PAR_CODIGO=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2544 - 25.06.2020'+#13#10+
  //  '- '+#13#10+#13#10);
end;

procedure AtualizarVersao252;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='252';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_ETIQUETACONFERENCIA DN_NUMERO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PARAMETROS set PAR_ETIQUETACONFERENCIA=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  //EnviarMensagemParaTodos(1,
  //  'Versão 12.2544 - 25.06.2020'+#13#10+
  //  '- '+#13#10+#13#10);
end;

procedure AtualizarVersao251;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='251';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CLASSFISCAL DROP CONSTRAINT PK_CLF_CODIGO;'+

    'ALTER TABLE CLASSFISCAL'+
    '  ALTER CLF_CODIGO TYPE DN_CLASSFISCAL,'+
    '  ADD CLF_VIGENCIAINI DN_DATA,'+
    '  ADD CLF_VIGENCIAFIM DN_DATA,'+
    '  ADD CLF_EXCECAO DN_NUMERO,'+
    '  ADD CLF_VERSAO DN_SIGLA10;'+

    'ALTER TABLE PRODUTOS '+
    '  ADD PRO_EXCECAO DN_NUMERO,'+
    '  ALTER PRO_CLASSFISCAL TYPE DN_CLASSFISCAL;'+

    'ALTER TABLE VENDASITENS'+
    '  ADD VEI_EXCECAO DN_NUMERO,'+
    '  ALTER VEI_CLASSFISCAL TYPE DN_CLASSFISCAL;'+

    'ALTER TABLE SERVICOSITENS'+
    '  ADD SEI_EXCECAO DN_NUMERO,'+
    '  ALTER SEI_CLASSFISCAL TYPE DN_CLASSFISCAL;'+

    'ALTER TABLE NOTASITENS'+
    '  ADD NOI_EXCECAO DN_NUMERO,'+
    '  ALTER NOI_CLASSFISCAL TYPE DN_CLASSFISCAL;'+

    'ALTER TABLE NFEITENS'+
    '  ADD NFI_EXCECAO DN_NUMERO,'+
    '  ALTER NFI_CLASSFISCAL TYPE DN_CLASSFISCAL;'+

    'ALTER TABLE COMPRASITENS'+
    '  ADD COI_EXCECAO DN_NUMERO,'+
    '  ALTER COI_CLASSFISCAL TYPE DN_CLASSFISCAL;'+

    'ALTER TABLE NFCEITENS'+
    '  ADD NCI_EXCECAO DN_NUMERO,'+
    '  ALTER NCI_CLASSFISCAL TYPE DN_CLASSFISCAL;'+

    'ALTER TABLE NOTAS ADD NOT_SUFRAMA DN_SUFRAMA;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;
  //...
  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PARAMETROS set PAR_CLASSFISCALPADRAO='+QuotedStr('00000000')+';'+
    'delete from SQLS;'+
    'delete from CLASSFISCAL;'+
    'update PRODUTOS set PRO_EXCECAO=0;'+
    'update NFEITENS set NFI_EXCECAO=0;'+
    'update NOTASITENS set NOI_EXCECAO=0;'+
    'update VENDASITENS set VEI_EXCECAO=0;'+
    'update SERVICOSITENS set SEI_EXCECAO=0;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;
  //...
  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    //testar com essas duas linhas ao invés das ultimas duas.
    'ALTER TABLE CLASSFISCAL ALTER CLF_CODIGO SET NOT NULL;'+
    'ALTER TABLE CLASSFISCAL ALTER CLF_EXCECAO SET NOT NULL;'

    //'update RDB$RELATION_FIELDS set RDB$NULL_FLAG = 1 where (RDB$FIELD_NAME = ''CLF_CODIGO'') and (RDB$RELATION_NAME = ''CLASSFISCAL'');'+
    //'update RDB$RELATION_FIELDS set RDB$NULL_FLAG = 1 where (RDB$FIELD_NAME = ''CLF_EXCECAO'') and (RDB$RELATION_NAME = ''CLASSFISCAL'');'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CLASSFISCAL ADD CONSTRAINT PK_CLF_CODIGOEXCECAO PRIMARY KEY (CLF_CODIGO,CLF_EXCECAO);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CLASSFISCAL');
  TabelasParaReordenar.Add('COMPRASITENS');
  TabelasParaReordenar.Add('PRODUTOS');
  TabelasParaReordenar.Add('NOTAS');
  TabelasParaReordenar.Add('NFEITENS');
  TabelasParaReordenar.Add('NFCEITENS');
  TabelasParaReordenar.Add('NOTASITENS');
  TabelasParaReordenar.Add('VENDASITENS');
  TabelasParaReordenar.Add('SERVICOSITENS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2535 - 12.06.2020'+#13#10+
    '- Incluído campo código de exceção no cadastro de classificações fiscais.'+#13#10+#13#10);
end;

procedure AtualizarVersao250;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='250';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE ODONTOGRAMASOPCOES'+
    '  ADD ODP_D11 DN_NOME,'+
    '  ADD ODP_D12 DN_NOME,'+
    '  ADD ODP_D13 DN_NOME,'+
    '  ADD ODP_D14 DN_NOME,'+
    '  ADD ODP_D15 DN_NOME,'+
    '  ADD ODP_D16 DN_NOME,'+
    '  ADD ODP_D17 DN_NOME,'+
    '  ADD ODP_D18 DN_NOME,'+
    '  ADD ODP_D21 DN_NOME,'+
    '  ADD ODP_D22 DN_NOME,'+
    '  ADD ODP_D23 DN_NOME,'+
    '  ADD ODP_D24 DN_NOME,'+
    '  ADD ODP_D25 DN_NOME,'+
    '  ADD ODP_D26 DN_NOME,'+
    '  ADD ODP_D27 DN_NOME,'+
    '  ADD ODP_D28 DN_NOME,'+
    '  ADD ODP_D31 DN_NOME,'+
    '  ADD ODP_D32 DN_NOME,'+
    '  ADD ODP_D33 DN_NOME,'+
    '  ADD ODP_D34 DN_NOME,'+
    '  ADD ODP_D35 DN_NOME,'+
    '  ADD ODP_D36 DN_NOME,'+
    '  ADD ODP_D37 DN_NOME,'+
    '  ADD ODP_D38 DN_NOME,'+
    '  ADD ODP_D41 DN_NOME,'+
    '  ADD ODP_D42 DN_NOME,'+
    '  ADD ODP_D43 DN_NOME,'+
    '  ADD ODP_D44 DN_NOME,'+
    '  ADD ODP_D45 DN_NOME,'+
    '  ADD ODP_D46 DN_NOME,'+
    '  ADD ODP_D47 DN_NOME,'+
    '  ADD ODP_D48 DN_NOME,'+
    '  ADD ODP_D51 DN_NOME,'+
    '  ADD ODP_D52 DN_NOME,'+
    '  ADD ODP_D53 DN_NOME,'+
    '  ADD ODP_D54 DN_NOME,'+
    '  ADD ODP_D55 DN_NOME,'+
    '  ADD ODP_D61 DN_NOME,'+
    '  ADD ODP_D62 DN_NOME,'+
    '  ADD ODP_D63 DN_NOME,'+
    '  ADD ODP_D64 DN_NOME,'+
    '  ADD ODP_D65 DN_NOME,'+
    '  ADD ODP_D71 DN_NOME,'+
    '  ADD ODP_D72 DN_NOME,'+
    '  ADD ODP_D73 DN_NOME,'+
    '  ADD ODP_D74 DN_NOME,'+
    '  ADD ODP_D75 DN_NOME,'+
    '  ADD ODP_D81 DN_NOME,'+
    '  ADD ODP_D82 DN_NOME,'+
    '  ADD ODP_D83 DN_NOME,'+
    '  ADD ODP_D84 DN_NOME,'+
    '  ADD ODP_D85 DN_NOME;'+

    'ALTER TABLE ODONTOGRAMAS'+
    '  DROP ODO_CORES,'+
    '  DROP ODO_DESCRICOES,'+
    '  DROP ODO_ESTILOS,'+
    '  ADD ODO_D11 DN_NOME,'+
    '  ADD ODO_D12 DN_NOME,'+
    '  ADD ODO_D13 DN_NOME,'+
    '  ADD ODO_D14 DN_NOME,'+
    '  ADD ODO_D15 DN_NOME,'+
    '  ADD ODO_D16 DN_NOME,'+
    '  ADD ODO_D17 DN_NOME,'+
    '  ADD ODO_D18 DN_NOME,'+
    '  ADD ODO_D21 DN_NOME,'+
    '  ADD ODO_D22 DN_NOME,'+
    '  ADD ODO_D23 DN_NOME,'+
    '  ADD ODO_D24 DN_NOME,'+
    '  ADD ODO_D25 DN_NOME,'+
    '  ADD ODO_D26 DN_NOME,'+
    '  ADD ODO_D27 DN_NOME,'+
    '  ADD ODO_D28 DN_NOME,'+
    '  ADD ODO_D31 DN_NOME,'+
    '  ADD ODO_D32 DN_NOME,'+
    '  ADD ODO_D33 DN_NOME,'+
    '  ADD ODO_D34 DN_NOME,'+
    '  ADD ODO_D35 DN_NOME,'+
    '  ADD ODO_D36 DN_NOME,'+
    '  ADD ODO_D37 DN_NOME,'+
    '  ADD ODO_D38 DN_NOME,'+
    '  ADD ODO_D41 DN_NOME,'+
    '  ADD ODO_D42 DN_NOME,'+
    '  ADD ODO_D43 DN_NOME,'+
    '  ADD ODO_D44 DN_NOME,'+
    '  ADD ODO_D45 DN_NOME,'+
    '  ADD ODO_D46 DN_NOME,'+
    '  ADD ODO_D47 DN_NOME,'+
    '  ADD ODO_D48 DN_NOME,'+
    '  ADD ODO_D51 DN_NOME,'+
    '  ADD ODO_D52 DN_NOME,'+
    '  ADD ODO_D53 DN_NOME,'+
    '  ADD ODO_D54 DN_NOME,'+
    '  ADD ODO_D55 DN_NOME,'+
    '  ADD ODO_D61 DN_NOME,'+
    '  ADD ODO_D62 DN_NOME,'+
    '  ADD ODO_D63 DN_NOME,'+
    '  ADD ODO_D64 DN_NOME,'+
    '  ADD ODO_D65 DN_NOME,'+
    '  ADD ODO_D71 DN_NOME,'+
    '  ADD ODO_D72 DN_NOME,'+
    '  ADD ODO_D73 DN_NOME,'+
    '  ADD ODO_D74 DN_NOME,'+
    '  ADD ODO_D75 DN_NOME,'+
    '  ADD ODO_D81 DN_NOME,'+
    '  ADD ODO_D82 DN_NOME,'+
    '  ADD ODO_D83 DN_NOME,'+
    '  ADD ODO_D84 DN_NOME,'+
    '  ADD ODO_D85 DN_NOME,'+
    '  ADD ODO_D11A DN_NUMERO,'+
    '  ADD ODO_D11B DN_NUMERO,'+
    '  ADD ODO_D11C DN_NUMERO,'+
    '  ADD ODO_D11D DN_NUMERO,'+
    '  ADD ODO_D11E DN_NUMERO,'+
    '  ADD ODO_D12A DN_NUMERO,'+
    '  ADD ODO_D12B DN_NUMERO,'+
    '  ADD ODO_D12C DN_NUMERO,'+
    '  ADD ODO_D12D DN_NUMERO,'+
    '  ADD ODO_D12E DN_NUMERO,'+
    '  ADD ODO_D13A DN_NUMERO,'+
    '  ADD ODO_D13B DN_NUMERO,'+
    '  ADD ODO_D13C DN_NUMERO,'+
    '  ADD ODO_D13D DN_NUMERO,'+
    '  ADD ODO_D13E DN_NUMERO,'+
    '  ADD ODO_D14A DN_NUMERO,'+
    '  ADD ODO_D14B DN_NUMERO,'+
    '  ADD ODO_D14C DN_NUMERO,'+
    '  ADD ODO_D14D DN_NUMERO,'+
    '  ADD ODO_D14E DN_NUMERO,'+
    '  ADD ODO_D15A DN_NUMERO,'+
    '  ADD ODO_D15B DN_NUMERO,'+
    '  ADD ODO_D15C DN_NUMERO,'+
    '  ADD ODO_D15D DN_NUMERO,'+
    '  ADD ODO_D15E DN_NUMERO,'+
    '  ADD ODO_D16A DN_NUMERO,'+
    '  ADD ODO_D16B DN_NUMERO,'+
    '  ADD ODO_D16C DN_NUMERO,'+
    '  ADD ODO_D16D DN_NUMERO,'+
    '  ADD ODO_D16E DN_NUMERO,'+
    '  ADD ODO_D17A DN_NUMERO,'+
    '  ADD ODO_D17B DN_NUMERO,'+
    '  ADD ODO_D17C DN_NUMERO,'+
    '  ADD ODO_D17D DN_NUMERO,'+
    '  ADD ODO_D17E DN_NUMERO,'+
    '  ADD ODO_D18A DN_NUMERO,'+
    '  ADD ODO_D18B DN_NUMERO,'+
    '  ADD ODO_D18C DN_NUMERO,'+
    '  ADD ODO_D18D DN_NUMERO,'+
    '  ADD ODO_D18E DN_NUMERO,'+
    '  ADD ODO_D21A DN_NUMERO,'+
    '  ADD ODO_D21B DN_NUMERO,'+
    '  ADD ODO_D21C DN_NUMERO,'+
    '  ADD ODO_D21D DN_NUMERO,'+
    '  ADD ODO_D21E DN_NUMERO,'+
    '  ADD ODO_D22A DN_NUMERO,'+
    '  ADD ODO_D22B DN_NUMERO,'+
    '  ADD ODO_D22C DN_NUMERO,'+
    '  ADD ODO_D22D DN_NUMERO,'+
    '  ADD ODO_D22E DN_NUMERO,'+
    '  ADD ODO_D23A DN_NUMERO,'+
    '  ADD ODO_D23B DN_NUMERO,'+
    '  ADD ODO_D23C DN_NUMERO,'+
    '  ADD ODO_D23D DN_NUMERO,'+
    '  ADD ODO_D23E DN_NUMERO,'+
    '  ADD ODO_D24A DN_NUMERO,'+
    '  ADD ODO_D24B DN_NUMERO,'+
    '  ADD ODO_D24C DN_NUMERO,'+
    '  ADD ODO_D24D DN_NUMERO,'+
    '  ADD ODO_D24E DN_NUMERO,'+
    '  ADD ODO_D25A DN_NUMERO,'+
    '  ADD ODO_D25B DN_NUMERO,'+
    '  ADD ODO_D25C DN_NUMERO,'+
    '  ADD ODO_D25D DN_NUMERO,'+
    '  ADD ODO_D25E DN_NUMERO,'+
    '  ADD ODO_D26A DN_NUMERO,'+
    '  ADD ODO_D26B DN_NUMERO,'+
    '  ADD ODO_D26C DN_NUMERO,'+
    '  ADD ODO_D26D DN_NUMERO,'+
    '  ADD ODO_D26E DN_NUMERO,'+
    '  ADD ODO_D27A DN_NUMERO,'+
    '  ADD ODO_D27B DN_NUMERO,'+
    '  ADD ODO_D27C DN_NUMERO,'+
    '  ADD ODO_D27D DN_NUMERO,'+
    '  ADD ODO_D27E DN_NUMERO,'+
    '  ADD ODO_D28A DN_NUMERO,'+
    '  ADD ODO_D28B DN_NUMERO,'+
    '  ADD ODO_D28C DN_NUMERO,'+
    '  ADD ODO_D28D DN_NUMERO,'+
    '  ADD ODO_D28E DN_NUMERO,'+
    '  ADD ODO_D31A DN_NUMERO,'+
    '  ADD ODO_D31B DN_NUMERO,'+
    '  ADD ODO_D31C DN_NUMERO,'+
    '  ADD ODO_D31D DN_NUMERO,'+
    '  ADD ODO_D31E DN_NUMERO,'+
    '  ADD ODO_D32A DN_NUMERO,'+
    '  ADD ODO_D32B DN_NUMERO,'+
    '  ADD ODO_D32C DN_NUMERO,'+
    '  ADD ODO_D32D DN_NUMERO,'+
    '  ADD ODO_D32E DN_NUMERO,'+
    '  ADD ODO_D33A DN_NUMERO,'+
    '  ADD ODO_D33B DN_NUMERO,'+
    '  ADD ODO_D33C DN_NUMERO,'+
    '  ADD ODO_D33D DN_NUMERO,'+
    '  ADD ODO_D33E DN_NUMERO,'+
    '  ADD ODO_D34A DN_NUMERO,'+
    '  ADD ODO_D34B DN_NUMERO,'+
    '  ADD ODO_D34C DN_NUMERO,'+
    '  ADD ODO_D34D DN_NUMERO,'+
    '  ADD ODO_D34E DN_NUMERO,'+
    '  ADD ODO_D35A DN_NUMERO,'+
    '  ADD ODO_D35B DN_NUMERO,'+
    '  ADD ODO_D35C DN_NUMERO,'+
    '  ADD ODO_D35D DN_NUMERO,'+
    '  ADD ODO_D35E DN_NUMERO,'+
    '  ADD ODO_D36A DN_NUMERO,'+
    '  ADD ODO_D36B DN_NUMERO,'+
    '  ADD ODO_D36C DN_NUMERO,'+
    '  ADD ODO_D36D DN_NUMERO,'+
    '  ADD ODO_D36E DN_NUMERO,'+
    '  ADD ODO_D37A DN_NUMERO,'+
    '  ADD ODO_D37B DN_NUMERO,'+
    '  ADD ODO_D37C DN_NUMERO,'+
    '  ADD ODO_D37D DN_NUMERO,'+
    '  ADD ODO_D37E DN_NUMERO,'+
    '  ADD ODO_D38A DN_NUMERO,'+
    '  ADD ODO_D38B DN_NUMERO,'+
    '  ADD ODO_D38C DN_NUMERO,'+
    '  ADD ODO_D38D DN_NUMERO,'+
    '  ADD ODO_D38E DN_NUMERO,'+
    '  ADD ODO_D41A DN_NUMERO,'+
    '  ADD ODO_D41B DN_NUMERO,'+
    '  ADD ODO_D41C DN_NUMERO,'+
    '  ADD ODO_D41D DN_NUMERO,'+
    '  ADD ODO_D41E DN_NUMERO,'+
    '  ADD ODO_D42A DN_NUMERO,'+
    '  ADD ODO_D42B DN_NUMERO,'+
    '  ADD ODO_D42C DN_NUMERO,'+
    '  ADD ODO_D42D DN_NUMERO,'+
    '  ADD ODO_D42E DN_NUMERO,'+
    '  ADD ODO_D43A DN_NUMERO,'+
    '  ADD ODO_D43B DN_NUMERO,'+
    '  ADD ODO_D43C DN_NUMERO,'+
    '  ADD ODO_D43D DN_NUMERO,'+
    '  ADD ODO_D43E DN_NUMERO,'+
    '  ADD ODO_D44A DN_NUMERO,'+
    '  ADD ODO_D44B DN_NUMERO,'+
    '  ADD ODO_D44C DN_NUMERO,'+
    '  ADD ODO_D44D DN_NUMERO,'+
    '  ADD ODO_D44E DN_NUMERO,'+
    '  ADD ODO_D45A DN_NUMERO,'+
    '  ADD ODO_D45B DN_NUMERO,'+
    '  ADD ODO_D45C DN_NUMERO,'+
    '  ADD ODO_D45D DN_NUMERO,'+
    '  ADD ODO_D45E DN_NUMERO,'+
    '  ADD ODO_D46A DN_NUMERO,'+
    '  ADD ODO_D46B DN_NUMERO,'+
    '  ADD ODO_D46C DN_NUMERO,'+
    '  ADD ODO_D46D DN_NUMERO,'+
    '  ADD ODO_D46E DN_NUMERO,'+
    '  ADD ODO_D47A DN_NUMERO,'+
    '  ADD ODO_D47B DN_NUMERO,'+
    '  ADD ODO_D47C DN_NUMERO,'+
    '  ADD ODO_D47D DN_NUMERO,'+
    '  ADD ODO_D47E DN_NUMERO,'+
    '  ADD ODO_D48A DN_NUMERO,'+
    '  ADD ODO_D48B DN_NUMERO,'+
    '  ADD ODO_D48C DN_NUMERO,'+
    '  ADD ODO_D48D DN_NUMERO,'+
    '  ADD ODO_D48E DN_NUMERO,'+
    '  ADD ODO_D51A DN_NUMERO,'+
    '  ADD ODO_D51B DN_NUMERO,'+
    '  ADD ODO_D51C DN_NUMERO,'+
    '  ADD ODO_D51D DN_NUMERO,'+
    '  ADD ODO_D51E DN_NUMERO,'+
    '  ADD ODO_D52A DN_NUMERO,'+
    '  ADD ODO_D52B DN_NUMERO,'+
    '  ADD ODO_D52C DN_NUMERO,'+
    '  ADD ODO_D52D DN_NUMERO,'+
    '  ADD ODO_D52E DN_NUMERO,'+
    '  ADD ODO_D53A DN_NUMERO,'+
    '  ADD ODO_D53B DN_NUMERO,'+
    '  ADD ODO_D53C DN_NUMERO,'+
    '  ADD ODO_D53D DN_NUMERO,'+
    '  ADD ODO_D53E DN_NUMERO,'+
    '  ADD ODO_D54A DN_NUMERO,'+
    '  ADD ODO_D54B DN_NUMERO,'+
    '  ADD ODO_D54C DN_NUMERO,'+
    '  ADD ODO_D54D DN_NUMERO,'+
    '  ADD ODO_D54E DN_NUMERO,'+
    '  ADD ODO_D55A DN_NUMERO,'+
    '  ADD ODO_D55B DN_NUMERO,'+
    '  ADD ODO_D55C DN_NUMERO,'+
    '  ADD ODO_D55D DN_NUMERO,'+
    '  ADD ODO_D55E DN_NUMERO,'+
    '  ADD ODO_D61A DN_NUMERO,'+
    '  ADD ODO_D61B DN_NUMERO,'+
    '  ADD ODO_D61C DN_NUMERO,'+
    '  ADD ODO_D61D DN_NUMERO,'+
    '  ADD ODO_D61E DN_NUMERO,'+
    '  ADD ODO_D62A DN_NUMERO,'+
    '  ADD ODO_D62B DN_NUMERO,'+
    '  ADD ODO_D62C DN_NUMERO,'+
    '  ADD ODO_D62D DN_NUMERO,'+
    '  ADD ODO_D62E DN_NUMERO,'+
    '  ADD ODO_D63A DN_NUMERO,'+
    '  ADD ODO_D63B DN_NUMERO,'+
    '  ADD ODO_D63C DN_NUMERO,'+
    '  ADD ODO_D63D DN_NUMERO,'+
    '  ADD ODO_D63E DN_NUMERO,'+
    '  ADD ODO_D64A DN_NUMERO,'+
    '  ADD ODO_D64B DN_NUMERO,'+
    '  ADD ODO_D64C DN_NUMERO,'+
    '  ADD ODO_D64D DN_NUMERO,'+
    '  ADD ODO_D64E DN_NUMERO,'+
    '  ADD ODO_D65A DN_NUMERO,'+
    '  ADD ODO_D65B DN_NUMERO,'+
    '  ADD ODO_D65C DN_NUMERO,'+
    '  ADD ODO_D65D DN_NUMERO,'+
    '  ADD ODO_D65E DN_NUMERO,'+
    '  ADD ODO_D71A DN_NUMERO,'+
    '  ADD ODO_D71B DN_NUMERO,'+
    '  ADD ODO_D71C DN_NUMERO,'+
    '  ADD ODO_D71D DN_NUMERO,'+
    '  ADD ODO_D71E DN_NUMERO,'+
    '  ADD ODO_D72A DN_NUMERO,'+
    '  ADD ODO_D72B DN_NUMERO,'+
    '  ADD ODO_D72C DN_NUMERO,'+
    '  ADD ODO_D72D DN_NUMERO,'+
    '  ADD ODO_D72E DN_NUMERO,'+
    '  ADD ODO_D73A DN_NUMERO,'+
    '  ADD ODO_D73B DN_NUMERO,'+
    '  ADD ODO_D73C DN_NUMERO,'+
    '  ADD ODO_D73D DN_NUMERO,'+
    '  ADD ODO_D73E DN_NUMERO,'+
    '  ADD ODO_D74A DN_NUMERO,'+
    '  ADD ODO_D74B DN_NUMERO,'+
    '  ADD ODO_D74C DN_NUMERO,'+
    '  ADD ODO_D74D DN_NUMERO,'+
    '  ADD ODO_D74E DN_NUMERO,'+
    '  ADD ODO_D75A DN_NUMERO,'+
    '  ADD ODO_D75B DN_NUMERO,'+
    '  ADD ODO_D75C DN_NUMERO,'+
    '  ADD ODO_D75D DN_NUMERO,'+
    '  ADD ODO_D75E DN_NUMERO,'+
    '  ADD ODO_D81A DN_NUMERO,'+
    '  ADD ODO_D81B DN_NUMERO,'+
    '  ADD ODO_D81C DN_NUMERO,'+
    '  ADD ODO_D81D DN_NUMERO,'+
    '  ADD ODO_D81E DN_NUMERO,'+
    '  ADD ODO_D82A DN_NUMERO,'+
    '  ADD ODO_D82B DN_NUMERO,'+
    '  ADD ODO_D82C DN_NUMERO,'+
    '  ADD ODO_D82D DN_NUMERO,'+
    '  ADD ODO_D82E DN_NUMERO,'+
    '  ADD ODO_D83A DN_NUMERO,'+
    '  ADD ODO_D83B DN_NUMERO,'+
    '  ADD ODO_D83C DN_NUMERO,'+
    '  ADD ODO_D83D DN_NUMERO,'+
    '  ADD ODO_D83E DN_NUMERO,'+
    '  ADD ODO_D84A DN_NUMERO,'+
    '  ADD ODO_D84B DN_NUMERO,'+
    '  ADD ODO_D84C DN_NUMERO,'+
    '  ADD ODO_D84D DN_NUMERO,'+
    '  ADD ODO_D84E DN_NUMERO,'+
    '  ADD ODO_D85A DN_NUMERO,'+
    '  ADD ODO_D85B DN_NUMERO,'+
    '  ADD ODO_D85C DN_NUMERO,'+
    '  ADD ODO_D85D DN_NUMERO,'+
    '  ADD ODO_D85E DN_NUMERO;'+

    'ALTER TABLE PARAMETROS ADD PAR_LOCALDENTES DN_PATH;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE ODONTOGRAMAS ADD ODO_ESTILOS DN_TEXTOLONGO;'+
    'DROP DOMAIN DN_MATRIZ;'+
    'DROP DOMAIN DN_MATRIZ2;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('ODONTOGRAMAS');
  TabelasParaReordenar.Add('ODONTOGRAMASOPCOES');
  TabelasParaReordenar.Add('PARAMETROS');

//  EnviarMensagemParaTodos(1,
//    'Versão 12.2520 - 06.05.2020'+#13#10+
//    '- Correções diversas.'+#13#10+#13#10);
end;

procedure AtualizarVersao249;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='249';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE VENDEDORES ADD VEN_MOSTRARAGENDA DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update VENDEDORES set VEN_MOSTRARAGENDA='+QuotedStr('N')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('VENDEDORES');

  EnviarMensagemParaTodos(1,
    'Versão 12.2503 - 16.04.2020'+#13#10+
    '- Criado filtro para mostrar os vendedores na tela de agendamentos.'+#13#10+#13#10);
end;

procedure AtualizarVersao248;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='248';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_MATRIZ AS VARCHAR(1500);'+
    'CREATE DOMAIN DN_MATRIZ2 AS VARCHAR(5000);'+
    'CREATE DOMAIN DN_ESTILO AS VARCHAR(10);'+
    'CREATE DOMAIN DN_DESCRICAOPEQUENA AS VARCHAR(30);'+
    'CREATE SEQUENCE GEN_ODONTOGRAMAS;'+
    'CREATE SEQUENCE GEN_ODONTOGRAMASOPCOES;'+

    'CREATE TABLE ODONTOGRAMAS ('+
    '  ODO_CLIENTE DN_CODIGO,'+
    '  ODO_CODIGO DN_CODIGO,'+
    '  ODO_CORES DN_MATRIZ,'+
    '  ODO_DATA DN_DATA,'+
    '  ODO_DESCRICOES DN_MATRIZ2,'+
    '  ODO_DTATUALIZACAO DN_DATA,'+
    '  ODO_DTCADASTRO DN_DATA,'+
    '  ODO_ESTILOS DN_MATRIZ,'+
    '  ODO_HRATUALIZACAO DN_HORA,'+
    '  ODO_OBSERVACOES DN_BLOBTEXTO,'+
    '  ODO_USUARIO DN_LOGIN);'+

    'ALTER TABLE ODONTOGRAMAS ADD CONSTRAINT PK_ODO_CODIGO PRIMARY KEY (ODO_CODIGO);'+
    'ALTER TABLE ODONTOGRAMAS ADD CONSTRAINT FK_ODO_CLIENTE FOREIGN KEY (ODO_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE TABLE ODONTOGRAMASOPCOES ('+
    '  ODP_CODIGO DN_CODIGO,'+
    '  ODP_COR DN_NUMERO,'+
    '  ODP_DESCRICAO DN_DESCRICAOPEQUENA,'+
    '  ODP_DTATUALIZACAO DN_DATA,'+
    '  ODP_DTCADASTRO DN_DATA,'+
    '  ODP_ESTILO DN_ESTILO,'+
    '  ODP_HRATUALIZACAO DN_HORA,'+
    '  ODP_PADRAO DN_BOOLEAN,'+
    '  ODP_USUARIO DN_LOGIN);'+

    'ALTER TABLE ODONTOGRAMASOPCOES ADD CONSTRAINT PK_ODP_CODIGO PRIMARY KEY (ODP_CODIGO);'+
    'CREATE UNIQUE INDEX IX_ODP_COR ON ODONTOGRAMASOPCOES (ODP_COR);'+

    'ALTER TABLE CONSULTAS'+
    '  ADD COS_DATAFIM DN_DATA,'+
    '  ADD COS_HORAFIM DN_HORA,'+
    '  ADD COS_INICIO DN_DATAHORASTAMP,'+
    '  ADD COS_FIM DN_DATAHORASTAMP,'+
    '  ALTER COS_DTCONSULTA TO COS_DATAINICIO,'+
    '  ALTER COS_HRCONSULTA TO COS_HORAINICIO;'+

    'ALTER TABLE VENDEDORES ADD VEN_COR DN_CORSABOR;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_TEMPOPADRAO DN_NUMERO,'+
    '  ADD PAR_HRCOMERCIALINICIO DN_HORA,'+
    '  ADD PAR_HRCOMERCIALFIM DN_HORA;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PARAMETROS set PAR_TEMPOPADRAO=60, PAR_HRCOMERCIALINICIO='+QuotedStr('08:00:00')+', PAR_HRCOMERCIALFIM='+QuotedStr('18:30:00')+';'+
    'update CONSULTAS set COS_INICIO=COS_DATAINICIO||'+QuotedStr(' ')+'||COS_HORAINICIO, COS_FIM=COS_DATAINICIO||'+QuotedStr(' ')+'||(COS_HORAINICIO + 3600);'+
    'update VENDEDORES set VEN_COR='+QuotedStr('255')+';'+ //atualiza a cor com vermelho.

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormOdontogramas'',''Cadastro de Odontogramas'',''I'',120);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormOdontogramasOpcoes'',''Cadastro de Odontogramas - Opções'',''I'',120);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (135,''Odontogramas'',''TFormOdontogramas'',''NOME CLIENTE'',''CODIGO;CODIGO CLIENTE;NOME CLIENTE;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (136,''Odontogramas Opcoes'',''TFormOdontogramasOpcoes'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+
    'set generator GEN_LOCS to 136;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CONSULTAS');
  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2495 - 25.03.2020'+#13#10+
    '- Criado cadastro de odontogramas.'+#13#10+
    '- Criado tela de consulta de exames com componente DBPlanner.'+#13#10+#13#10);
end;

procedure AtualizarVersao247;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='247';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_CHECARSPED DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PARAMETROS SET PAR_CHECARSPED='+QuotedStr('S')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2473 - 17.03.2020'+#13#10+
    '- Parametrizado a checagem de chave de acesso de pedido de compras.'+#13#10+#13#10);
end;

procedure AtualizarVersao246;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='246';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE EMPRESA ADD EMP_LEITURA DN_BOOLEAN'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update EMPRESA set EMP_LEITURA='+QuotedStr(SenhaEncode('N',ChaveSenhaNEW))+', EMP_HASH='+QuotedStr(TodaysPassword)+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TBEmpresa.Open;
  DM.TBEmpresa.Edit;
  DM.TBEmpresaEMP_DATALIBERACAO.Value:=SenhaEncode(Senha(AnsiString(DM.TBEmpresaEMP_DATALIBERACAO.Value),ChaveSenha),ChaveSenhaNEW);
  DM.TBEmpresaEMP_DATAULTUTILIZACAO.Value:=SenhaEncode(Senha(AnsiString(DM.TBEmpresaEMP_DATAULTUTILIZACAO.Value),ChaveSenha),ChaveSenhaNEW);
  DM.TBEmpresaEMP_DIASLIBERACAO.Value:=SenhaEncode(Senha(AnsiString(DM.TBEmpresaEMP_DIASLIBERACAO.Value),ChaveSenha),ChaveSenhaNEW);
  //DM.TBEmpresaEMP_LEITURA.Value:=SenhaEncode(Senha(AnsiString(DM.TBEmpresaEMP_LEITURA.Value),ChaveSenha),ChaveSenhaNEW);
  DM.TBEmpresaEMP_LIBERADO.Value:=SenhaEncode(Senha(AnsiString(DM.TBEmpresaEMP_LIBERADO.Value),ChaveSenha),ChaveSenhaNEW);
  DM.TBEmpresaEMP_LIMITEUSUARIOS.Value:=SenhaEncode(Senha(AnsiString(DM.TBEmpresaEMP_LIMITEUSUARIOS.Value),ChaveSenha),ChaveSenhaNEW);
  // nao tem mais... qual a versao do marcio? DM.TBEmpresaEMP_LIMITEMOBILES.Value:=SenhaEncode(Senha(AnsiString(DM.TBEmpresaEMP_LIMITEMOBILES.Value),ChaveSenha),ChaveSenhaNEW);
  DM.TBEmpresa.Post;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('EMPRESA');

  EnviarMensagemParaTodos(1,
    'Versão 12.2464 - 12.03.2020'+#13#10+
    '- Melhorias diversas.'+#13#10+#13#10);
end;

procedure AtualizarVersao245;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='245';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFEITENS'+
    '  ADD NFI_BASEICMSSTRET DN_VALOR,'+
    '  ADD NFI_VALORICMSSTRET DN_VALOR,'+
    '  ADD NFI_VALORICMSSUBSTITUTO DN_VALOR,'+
    '  ADD NFI_ALIQICMSSTRET DN_VALOR,'+
    '  ADD NFI_DESONERACAO DN_COMPLEMENTO,'+
    '  ADD NFI_VALORICMSDESONERADO DN_VALOR;'+

    'ALTER TABLE NOTASITENS'+
    '  ADD NOI_BASEICMSSTRET DN_VALOR,'+
    '  ADD NOI_VALORICMSSTRET DN_VALOR,'+
    '  ADD NOI_VALORICMSSUBSTITUTO DN_VALOR,'+
    '  ADD NOI_ALIQICMSSTRET DN_VALOR,'+
    '  ADD NOI_DESONERACAO DN_COMPLEMENTO,'+
    '  ADD NOI_VALORICMSDESONERADO DN_VALOR;'+

    'ALTER TABLE VENDASITENS'+
    '  ADD VEI_BASEICMSSTRET DN_VALOR,'+
    '  ADD VEI_VALORICMSSTRET DN_VALOR,'+
    '  ADD VEI_VALORICMSSUBSTITUTO DN_VALOR,'+
    '  ADD VEI_ALIQICMSSTRET DN_VALOR,'+
    '  ADD VEI_DESONERACAO DN_COMPLEMENTO,'+
    '  ADD VEI_VALORICMSDESONERADO DN_VALOR;'+

    'ALTER TABLE VENDAS ADD VED_SUFRAMA DN_SUFRAMA;'+
    'ALTER TABLE NFE ADD NFE_SUFRAMA DN_SUFRAMA;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update NFEITENS set NFI_DESONERACAO='+QuotedStr('00 - NENHUM')+', NFI_ALIQICMSSTRET=0, NFI_BASEICMSSTRET=0, NFI_VALORICMSSTRET=0, NFI_VALORICMSSUBSTITUTO=0, NFI_VALORICMSDESONERADO=0;'+
    'update NOTASITENS set NOI_DESONERACAO='+QuotedStr('00 - NENHUM')+', NOI_ALIQICMSSTRET=0, NOI_BASEICMSSTRET=0, NOI_VALORICMSSTRET=0, NOI_VALORICMSSUBSTITUTO=0, NOI_VALORICMSDESONERADO=0;'+
    'update VENDASITENS set VEI_DESONERACAO='+QuotedStr('00 - NENHUM')+', VEI_ALIQICMSSTRET=0, VEI_BASEICMSSTRET=0, VEI_VALORICMSSTRET=0, VEI_VALORICMSSUBSTITUTO=0, VEI_VALORICMSDESONERADO=0;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('NFEITENS');
  TabelasParaReordenar.Add('NOTASITENS');
  TabelasParaReordenar.Add('VENDASITENS');
  TabelasParaReordenar.Add('VENDAS');
  TabelasParaReordenar.Add('NOTAS');
  TabelasParaReordenar.Add('NFE');

  EnviarMensagemParaTodos(1,
    'Versão 12.2450 - 23.01.2020'+#13#10+
    '- Inclusão de campos relacionados ao ICMS ST Retido.'+#13#10+#13#10);
end;

procedure AtualizarVersao244;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='244';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_FORNECEDORESANEXOSEMAIL DN_NUMERO,'+
    '  ADD PAR_LOCALANEXOSFORNECEDORES DN_PATH;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PARAMETROS set PAR_FORNECEDORESANEXOSEMAIL=1;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormFornecedoresAnexos'',''Cadastro de Fornecedores - Anexos'',''A'',100);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2435 - 23.01.2020'+#13#10+
    '- Criado opção para anexar arquivos no cadastro do fornecedor.'+#13#10+#13#10);
end;

procedure AtualizarVersao243;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='243';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CLIENTES ADD CLI_SUFRAMA DN_SUFRAMA;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update FORNECEDORES set FOR_ESTADOCIVIL='+QuotedStr('NAO TEM')+' where FOR_ESTADOCIVIL is null;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CLIENTES');
  TabelasParaReordenar.Add('EMPRESA');

  EnviarMensagemParaTodos(1,
    'Versão 12.2430 - 22.01.2020'+#13#10+
    '- Criado relatório de apólices sem agrupamento.'+#13#10+
    '- Criado campo Suframa no cadastro de clientes.'+#13#10+
    '- Ajustes na geração do arquivo SPED Fiscal.'+#13#10+#13#10);
end;

procedure AtualizarVersao242;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='242';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE TABLE BLOCOX ('+
    '  BLX_ANO DN_NUMERO,'+
    '  BLX_CODIGO DN_CODIGO,'+
    '  BLX_DTCADASTRO DN_DATA,'+
    '  BLX_HRCADASTRO DN_HORA,'+
    '  BLX_MES DN_NUMERO);'+

    'ALTER TABLE BLOCOX ADD CONSTRAINT PK_BLX_CODIGO PRIMARY KEY (BLX_CODIGO);'+

    'CREATE SEQUENCE GEN_BLOCOX;'+

    'ALTER TABLE EMPRESA ADD EMP_HASH DN_ACESSORIOS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update EMPRESA set EMP_HASH='+QuotedStr(TodaysPassword)+';'+
    'update LOCS set LOS_PICKLIST=''CODIGO;CLIENTE;BANCO;AGENCIA;CONTA;NUMERO;VALOR;DATA INICIAL;DATA FINAL;'' where LOS_TELA=''Cheques'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('BLOCOX');
  TabelasParaReordenar.Add('EMPRESA');
  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2422 - 14.01.2020'+#13#10+
    '- Atualizado a DLL NFE_UTIL para versão 4.07h.'+#13#10+
    '- Atualizado o ACBr.'+#13#10+
    '- Atualizado rotina de geração do arquivo SPED.'+#13#10+
    '- Criado tabela para registro do Bloco X no módulo de cupom fiscal.'+#13#10+#13#10);
end;

procedure AtualizarVersao241;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='241';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_CORICONE DN_CORSABOR;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE PARAMETROS SET PAR_CORICONE=''VERMELHO'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2380 - 19.11.2019'+#13#10+
    '- Implementado baixas de parcelas de seguros.'+#13#10+
    '- Incluído totais na tela de localização de compras.'+#13#10+
    '- Implementado opção para diferenciar por cor o ícone do sistema.'+#13#10+#13#10);
end;

procedure AtualizarVersao240;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='240';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS '+
    '  ADD PAR_CLIENTESANEXOSEMAIL DN_NUMERO,'+
    '  ADD PAR_CONSULTASANEXOSEMAIL DN_NUMERO,'+
    '  ADD PAR_SEGUROSANEXOSEMAIL DN_NUMERO,'+
    '  ADD PAR_PRODUTOSANEXOSEMAIL DN_NUMERO;'+

    'UPDATE PARAMETROS SET PAR_CLIENTESANEXOSEMAIL=1, PAR_CONSULTASANEXOSEMAIL=1, PAR_SEGUROSANEXOSEMAIL=1, PAR_PRODUTOSANEXOSEMAIL=1;'+

    'INSERT INTO ASSUNTOS (ASS_CODIGO, ASS_DESCRICAO, ASS_DTATUALIZACAO, ASS_DTCADASTRO, ASS_HTML, ASS_USUARIO, ASS_TEXTO) VALUES '+
    '(gen_id(GEN_ASSUNTOS,1), ''Anexos'', ''2019-01-15'', ''2019-10-15'', ''S'', ''RUNTIME'', '+QuotedStr(
    'Segue anexo...<BR><BR><BR>'+
    'Esta mensagem foi gerada automaticamente pelo sistema.<BR><BR>'+
    '<STRONG>Aviso Legal:</STRONG> Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer disseminação,'+
    'distribuição ou cópia não autorizada é estritamente proibida.<BR><BR>'+
    'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.</FONT>')+');'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE PARAMETROS SET '+
    'PAR_CLIENTESANEXOSEMAIL=gen_id(GEN_ASSUNTOS,0), '+
    'PAR_CONSULTASANEXOSEMAIL=gen_id(GEN_ASSUNTOS,0), '+
    'PAR_SEGUROSANEXOSEMAIL=gen_id(GEN_ASSUNTOS,0), '+
    'PAR_PRODUTOSANEXOSEMAIL=gen_id(GEN_ASSUNTOS,0)'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2375 - 15.10.2019'+#13#10+
    '- Implementado envio de anexos por email.'+#13#10+#13#10);
end;

procedure AtualizarVersao239;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='239';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE SEGUROS ADD SEG_ORIGINAL DN_NUMERO;'+

    'CREATE TABLE SEGUROSENDOSSOS ('+
    '  SGE_CODIGO DN_CODIGO,'+
    '  SGE_ENDOSSO DN_CODIGO,'+
    '  SGE_SEGURO DN_CODIGO,'+
    '  SGE_NUMERO DN_ALVARA);'+

    'ALTER TABLE SEGUROSENDOSSOS ADD CONSTRAINT PK_SGE_CODIGO PRIMARY KEY (SGE_CODIGO);'+
    'ALTER TABLE SEGUROSENDOSSOS ADD CONSTRAINT FK_SGE_SEGURO FOREIGN KEY (SGE_SEGURO) REFERENCES SEGUROS(SEG_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'ALTER TABLE SEGUROSENDOSSOS ADD CONSTRAINT FK_SGE_ENDOSSO FOREIGN KEY (SGE_ENDOSSO) REFERENCES SEGUROS(SEG_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'CREATE SEQUENCE GEN_SEGUROSENDOSSOS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('SEGUROS');
  TabelasParaReordenar.Add('SEGUROSENDOSSOS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2350 - 25.09.2019'+#13#10+
    '- Implementado cadastro de endossos de seguros.'+#13#10+#13#10);
end;

procedure AtualizarVersao238;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='238';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE SEGUROS '+
    '  ADD SEG_VALORCOMISSAO DN_VALOR,'+
    '  ADD SEG_VALORCOMISSAOVENDEDOR DN_VALOR,'+
    '  ADD SEG_VALORTOTAL DN_VALOR,'+
    '  ADD SEG_ORIGEM DN_BOOLEAN;'+

    'CREATE TABLE SEGUROSPARCELAS ('+
    '  SGP_CODIGO DN_CODIGO,'+
    '  SGP_COMISSAO DN_VALOR,'+
    '  SGP_COMISSAOVENDEDOR DN_VALOR,'+
    '  SGP_DTATUALIZACAO DN_DATA,'+
    '  SGP_DTCADASTRO DN_DATA,'+
    '  SGP_DTPAGAMENTO DN_DATA,'+
    '  SGP_DTRECEBIMENTO DN_DATA,'+
    '  SGP_DTVENCIMENTO DN_DATA,'+
    '  SGP_PARCELA DN_NUMERO,'+
    '  SGP_SEGURO DN_CODIGO,'+
    '  SGP_STATUS DN_BOOLEAN,'+
    '  SGP_VALOR DN_VALOR,'+
    '  SGP_USUARIO DN_LOGIN);'+

    'ALTER TABLE SEGUROSPARCELAS ADD CONSTRAINT PK_SGP_CODIGO PRIMARY KEY (SGP_CODIGO);'+
    'ALTER TABLE SEGUROSPARCELAS ADD CONSTRAINT FK_SGP_SEGURO FOREIGN KEY (SGP_SEGURO) REFERENCES SEGUROS(SEG_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'CREATE SEQUENCE GEN_SEGUROSPARCELAS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update LOCS SET LOS_PICKLIST=''TODOS;PROPOSTAS;INUTILIZADAS;APOLICES;CANCELADAS;'' where LOS_CODIGO=133;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('SEGUROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2350 - 25.09.2019'+#13#10+
    '- Ajustes no cadastro de seguros.'+#13#10+#13#10);
end;

procedure AtualizarVersao237;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='237';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE SEQUENCE GEN_SEGUROSTIPOS;'+
    'CREATE SEQUENCE GEN_SEGUROS;'+

    'ALTER DOMAIN DN_COMPLEMENTO TYPE VARCHAR(80) CHARACTER SET WIN1252;'+

    'ALTER TABLE GRUPOS ADD GRU_STATUS DN_BOOLEAN;'+

    'ALTER TABLE PARAMETROS ADD PAR_LOCALANEXOSSEGUROS DN_PATH;'+

    'CREATE TABLE SEGUROSTIPOS ('+
    '  SGT_CODIGO DN_CODIGO,'+
    '  SGT_DESCRICAO DN_DESCRICAO,'+
    '  SGT_DTATUALIZACAO DN_DATA,'+
    '  SGT_DTCADASTRO DN_DATA,'+
    '  SGT_STATUS DN_BOOLEAN,'+
    '  SGT_USUARIO DN_LOGIN);'+

    'ALTER TABLE SEGUROSTIPOS ADD CONSTRAINT PK_SGT_CODIGO PRIMARY KEY (SGT_CODIGO);'+

    'CREATE TABLE SEGUROS ('+
    '  SEG_APOLICE DN_APOLICE,'+
    '  SEG_CLIENTE DN_CODIGO,'+
    '  SEG_CODIGO DN_CODIGO,'+
    '  SEG_COMISSAO DN_VALOR,'+
    '  SEG_COMISSAOVENDEDOR DN_VALOR,'+
    '  SEG_CONDICAO DN_CODIGO,'+
    '  SEG_DESCRICAOAPOLICE DN_BLOBTEXTO,'+
    '  SEG_DESCRICAOCANCELAMENTO DN_BLOBTEXTO,'+
    '  SEG_DESCRICAOPERDA DN_BLOBTEXTO,'+
    '  SEG_DIAPREFERENCIAL DN_NUMERO,'+
    '  SEG_DTATUALIZACAO DN_DATA,'+
    '  SEG_DTCADASTRO DN_DATA,'+
    '  SEG_DTCANCELAMENTO DN_DATA,'+
    '  SEG_DTEMISSAO DN_DATA,'+
    '  SEG_DTINICIO DN_DATA,'+
    '  SEG_DTLEMBRETE DN_DATA,'+
    '  SEG_DTTERMINO DN_DATA,'+
    '  SEG_ENDOSSO DN_ALVARA,'+
    '  SEG_PROPOSTA DN_APOLICE,'+
    '  SEG_SEGURADORA DN_CODIGO,'+
    '  SEG_SEGUROTIPO DN_CODIGO,'+
    '  SEG_STATUS DN_BOOLEAN,'+
    '  SEG_USUARIO DN_LOGIN,'+
    '  SEG_VALORADICIONAL DN_VALOR,'+
    '  SEG_VALORFRANQUIA DN_VALOR,'+
    '  SEG_VALORIOF DN_VALOR,'+
    '  SEG_VALORIOFPORC DN_VALOR,'+
    '  SEG_VALORPREMIO DN_VALOR,'+
    '  SEG_VENDEDOR DN_CODIGO);'+

    'ALTER TABLE SEGUROS ADD CONSTRAINT PK_SEG_CODIGO PRIMARY KEY (SEG_CODIGO);'+
    'ALTER TABLE SEGUROS ADD CONSTRAINT FK_SEG_CLIENTE FOREIGN KEY (SEG_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE SEGUROS ADD CONSTRAINT FK_SEG_CONDICAO FOREIGN KEY (SEG_CONDICAO) REFERENCES CONDICOES(CPG_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE SEGUROS ADD CONSTRAINT FK_SEG_SEGURADORA FOREIGN KEY (SEG_SEGURADORA) REFERENCES FORNECEDORES(FOR_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE SEGUROS ADD CONSTRAINT FK_SEG_VENDEDOR FOREIGN KEY (SEG_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE SEGUROS ADD CONSTRAINT FK_SEG_SEGUROTIPO FOREIGN KEY (SEG_SEGUROTIPO) REFERENCES SEGUROSTIPOS(SGT_CODIGO) ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE GRUPOS SET GRU_STATUS=''A'';'+

    'insert into MODULOS (MOD_CODIGO, MOD_NOME, MOD_MENUITEM, MOD_BOTAO, MOD_ACESSO) values (125,''Corretora'',''Corretora'','''',''N'');'+
    'set generator GEN_MODULOS to 125;'+

    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (132,''Seguros'',''TFormSeguros'',''NOME CLIENTE'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME CLIENTE;PROPOSTA;APOLICE;CODIGO SEGURADORA;SEGURADORA;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (133,''Seguros com Status'',''TFormSeguros'',''TODOS'',''TODOS;ABERTOS;FINALIZADOS;CANCELADOS;INUTILIZADOS;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (134,''Seguros Tipos'',''TFormSegurosTipos'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+
    'set generator GEN_LOCS to 134;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormSeguros'',''Cadastro de Seguros'',''A'',125);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormSegurosTipos'',''Cadastro de Seguros Tipos'',''A'',125);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('GRUPOS');
  TabelasParaReordenar.Add('SEGUROS');
  TabelasParaReordenar.Add('SEGUROSTIPOS');
  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2340 - 22.08.2019'+#13#10+
    '- Criado módulo para corretoras de seguros.'+#13#10+
    '- Criado cadastro de seguros.'+#13#10+
    '- Adicionado campo status no cadastro de grupos.'+#13#10+#13#10);
end;

procedure AtualizarVersao236;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='236';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE SEQUENCE GEN_PREVENDAS;'+
    'CREATE SEQUENCE GEN_PREVENDASITENS;'+

    'CREATE TABLE PREVENDAS ('+
    '  PRE_CLIENTE DN_CODIGO,'+
    '  PRE_CNPJ DN_CNPJIECPFRG,'+
    '  PRE_CODIGO DN_CODIGO,'+
    '  PRE_CONDICAO DN_CODIGO,'+
    '  PRE_CPF DN_CNPJIECPFRG,'+
    '  PRE_DTATUALIZACAO DN_DATA,'+
    '  PRE_DTEMISSAO DN_DATA,'+
    '  PRE_MENSAGEM DN_DESCRICAO,'+
    '  PRE_NOME DN_NOME,'+
    '  PRE_SEQUENCIAITEM DN_NUMERO,'+
    '  PRE_STATUS DN_BOOLEAN,'+
    '  PRE_TIPOPESSOA DN_BOOLEAN,'+
    '  PRE_TITULO DN_ORIGEM,'+
    '  PRE_TOTALACRESCIMO DN_VALOR,'+
    '  PRE_TOTALACRESCIMOPORC DN_VALOR,'+
    '  PRE_TOTALBRUTO DN_VALOR,'+
    '  PRE_TOTALDESCONTO DN_VALOR,'+
    '  PRE_TOTALDESCONTOPORC DN_VALOR,'+
    '  PRE_USUARIO DN_LOGIN,'+
    '  PRE_VALORTOTAL DN_VALOR);'+

    'ALTER TABLE PREVENDAS ADD CONSTRAINT PK_PRE_CODIGO PRIMARY KEY (PRE_CODIGO);'+
    'ALTER TABLE PREVENDAS ADD CONSTRAINT FK_PRE_CLIENTE FOREIGN KEY (PRE_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+

    'CREATE TABLE PREVENDASITENS ('+
    '  PRI_ALMOXARIFADO DN_CODIGO,'+
    '  PRI_CANCELADO DN_STATUS,'+
    '  PRI_CODIGO DN_CODIGO,'+
    '  PRI_DTCADASTRO DN_DATA,'+
    '  PRI_NOME DN_NOMEPLUS,'+
    '  PRI_PREVENDA DN_CODIGO,'+
    '  PRI_PRODUTO DN_CODIGO,'+
    '  PRI_QUANTIDADE DN_VALOR,'+
    '  PRI_SEQUENCIA DN_NUMERO,'+
    '  PRI_VALORACRESCIMO DN_VALOR,'+
    '  PRI_VALORACRESCIMOPORC DN_VALOR,'+
    '  PRI_VALORBRUTO DN_VALOR,'+
    '  PRI_VALORDESCONTO DN_VALOR,'+
    '  PRI_VALORDESCONTOPORC DN_VALOR,'+
    '  PRI_VALORTOTAL DN_VALOR,'+
    '  PRI_VALORUNIT DN_VALOR);'+

    'ALTER TABLE PREVENDASITENS ADD CONSTRAINT PK_PRI_CODIGO PRIMARY KEY (PRI_CODIGO);'+
    'ALTER TABLE PREVENDASITENS ADD CONSTRAINT FK_PRI_PRODUTO FOREIGN KEY (PRI_PRODUTO) REFERENCES PRODUTOS(PRO_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE PREVENDASITENS ADD CONSTRAINT FK_PRI_PREVENDA FOREIGN KEY (PRI_PREVENDA) REFERENCES PREVENDAS(PRE_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE TABLE PREVENDASCODIGO (PRE_CODIGO DN_CODIGO);'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_MALCOLMREQ DN_PATH,'+
    '  ADD PAR_MALCOLMRESP DN_PATH;'+

    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (130,''Pre Vendas'',''TFormPrevendas'',''NOME CLIENTE'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME CLIENTE;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (131,''Pre Vendas com Status'',''TFormPrevendas'',''TODOS'',''TODOS;ABERTAS;EMITIDAS;FINALIZADAS;CANCELADAS;'');'+
    'set generator GEN_LOCS to 131;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormPrevendas'',''Cadastro de Pre Vendas'',''A'',111);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormPrevendasItens'',''Cadastro de Pre Vendas - Itens'',''A'',111);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('DELIVERYS');
  TabelasParaReordenar.Add('DELIVERYSITENS');
  TabelasParaReordenar.Add('PARAMETROS');
  TabelasParaReordenar.Add('PREVENDAS');
  TabelasParaReordenar.Add('PREVENDASITENS');
  TabelasParaReordenar.Add('TAXAS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2320 - 22.07.2019'+#13#10+
    '- Criado tela de pré-venda.'+#13#10+#13#10);
end;

procedure AtualizarVersao235;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='235';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE DELIVERYS'+
    '  ADD DLV_MOTIVOINUTILIZACAO DN_DESCRICAO,'+
    '  ADD DLV_MOTIVOCANCELAMENTO DN_DESCRICAO;'+

    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (128,''Deliverys'',''TFormDelivery'',''NOME CLIENTE'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME CLIENTE;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (129,''Deliverys com Status'',''TFormDelivery'',''TODOS'',''TODOS;ABERTOS;PRODUCAO;ENTREGA;FINALIZADAS;CANCELADAS;INUTILIZADAS;'');'+
    'set generator GEN_LOCS to 129;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormDelivery'',''Cadastro de Deliverys'',''A'',100);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormDeliveryDetalhes'',''Cadastro de Deliverys - Detalhes'',''A'',100);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('DELIVERYS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2320 - 22.07.2019'+#13#10+
    '- Implementado envio de mensagens via WhatsApp Web.'+#13#10+
    '- Ajustes nas rotinas do chat.'+#13#10+
    '- Ajustes na localização de clientes por telefone.'+#13#10+
    '- Ajustes no sistema de delivery.'+#13#10+#13#10);
end;

procedure AtualizarVersao234;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='234';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE DELIVERYS'+
    '  ADD DLV_CARTAO DN_VALOR,'+
    '  ADD DLV_VIAAPP DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //inserir tela de delivery na proxima atualizacao.

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('DELIVERYS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2315 - 18.07.2019'+#13#10+
    '- Ajustes no sistema de delivery.'+#13#10+#13#10);
end;

procedure AtualizarVersao233;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='233';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE DELIVERYS'+
    '  ADD DLV_ESTADO DN_ESTADO,'+
    '  ADD DLV_ESTADOCODIGO DN_NUMERO,'+
    '  ADD DLV_CIDADECODIGO DN_NUMERO,'+
    '  ADD DLV_TROCO DN_VALOR,'+
    '  ADD DLV_DINHEIRO DN_VALOR,'+
    '  ADD DLV_RETIRA DN_BOOLEAN,'+
    '  ADD DLV_SEQUENCIAITEM DN_NUMERO,'+
    '  ADD DLV_OBSERVACOES DN_BLOBTEXTO,'+
    '  ADD DLV_TAXAVALOR DN_VALOR,'+
    '  ADD DLV_TOTALTAXA DN_VALOR,'+
    '  ADD DLV_USUARIO DN_LOGIN;'+

    'ALTER TABLE DELIVERYSITENS ADD DLI_ALMOXARIFADO DN_CODIGO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('DELIVERYS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2307 - 01.07.2019'+#13#10+
    '- Atualizado conjunto de ícones.'+#13#10+#13#10);
end;

procedure AtualizarVersao232;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='232';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE TABLE DELIVERYS ('+
    '  DLV_BAIRRO DN_BAIRRO,'+
    '  DLV_CEP DN_CEP,'+
    '  DLV_CIDADE DN_CIDADE,'+
    '  DLV_CLIENTE DN_CODIGO,'+
    '  DLV_CODIGO DN_CODIGO,'+
    '  DLV_COMPLEMENTO DN_COMPLEMENTO,'+
    '  DLV_DESCPORC DN_VALOR,'+
    '  DLV_DESCVALOR DN_VALOR,'+
    '  DLV_DTATUALIZACAO DN_DATA,'+
    '  DLV_DTCADASTRO DN_DATA,'+
    '  DLV_ENDERECO DN_ENDERECO,'+
    '  DLV_ENTREGADOR DN_CODIGO,'+
    '  DLV_FONE1 DN_FONE,'+
    '  DLV_FONE2 DN_FONE,'+
    '  DLV_HRATUALIZACAO DN_HORA,'+
    '  DLV_HRCADASTRO DN_HORA,'+
    '  DLV_NUMERO DN_NUMEROCHAR,'+
    '  DLV_STATUS DN_BOOLEAN,'+
    '  DLV_TAXA DN_VALOR,'+
    '  DLV_TAXATIPO DN_BOOLEAN,'+
    '  DLV_TOTALITENS DN_VALOR,'+
    '  DLV_VALORTOTAL DN_VALOR,'+
    '  DLV_VENDEDOR DN_CODIGO);'+

    'ALTER TABLE DELIVERYS ADD CONSTRAINT PK_DLV_CODIGO PRIMARY KEY (DLV_CODIGO);'+
    'ALTER TABLE DELIVERYS ADD CONSTRAINT FK_DLV_VENDEDOR FOREIGN KEY (DLV_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE DELIVERYS ADD CONSTRAINT FK_DLV_CLIENTE FOREIGN KEY (DLV_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE DELIVERYS ADD CONSTRAINT FK_DLV_ENTREGADOR FOREIGN KEY (DLV_ENTREGADOR) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+

    'CREATE TABLE DELIVERYSITENS ('+
    '  DLI_CODIGO DN_CODIGO,'+
    '  DLI_COMPLEMENTO DN_DESCRICAO,'+
    '  DLI_DELIVERY DN_CODIGO,'+
    '  DLI_DESCPORC DN_VALOR,'+
    '  DLI_DESCVALOR DN_VALOR,'+
    '  DLI_NOME DN_DESCRICAO,'+
    '  DLI_PRODUTO DN_CODIGO,'+
    '  DLI_QUANTIDADE DN_VALOR,'+
    '  DLI_SEQUENCIA DN_NUMERO,'+
    '  DLI_VALORTOTAL DN_VALOR,'+
    '  DLI_VALORUNIT DN_VALOR);'+

    'ALTER TABLE DELIVERYSITENS ADD CONSTRAINT PK_DLI_CODIGO PRIMARY KEY (DLI_CODIGO);'+
    'ALTER TABLE DELIVERYSITENS ADD CONSTRAINT FK_DLI_PRODUTO FOREIGN KEY (DLI_PRODUTO) REFERENCES PRODUTOS(PRO_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE DELIVERYSITENS ADD CONSTRAINT FK_DLI_DELIVERY FOREIGN KEY (DLI_DELIVERY) REFERENCES DELIVERYS(DLV_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE SEQUENCE GEN_DELIVERYS;'+
    'CREATE SEQUENCE GEN_DELIVERYSITENS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE PARAMETROS SET PAR_TAXAPADRAO = 1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2300 - 01.07.2019'+#13#10+
    '- Criado atalho para fornecedores na tela de envio de email.'+#13#10+
    '- Alterado relatório de vendas por tipo de frete para trazer a transportadora e o valor do frete.'+#13#10+
    '- Incluído o CNPJ da contabilidade na autorização de baixa dos XMLs de NFe.'+#13#10+
    '- Criado tela para delivery.'+#13#10+#13#10);
end;

procedure AtualizarVersao231;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='231';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE TABLE TAXAS ('+
    '  TAX_CODIGO DN_CODIGO,'+
    '  TAX_DESCRICAO DN_DESCRICAO,'+
    '  TAX_DTATUALIZACAO DN_DATA,'+
    '  TAX_DTCADASTRO DN_DATA,'+
    '  TAX_STATUS DN_BOOLEAN,'+
    '  TAX_TIPO DN_BOOLEAN,'+
    '  TAX_USUARIO DN_LOGIN,'+
    '  TAX_VALOR DN_VALOR);'+

    'ALTER TABLE TAXAS ADD CONSTRAINT PK_TAX_CODIGO PRIMARY KEY (TAX_CODIGO);'+
    'CREATE SEQUENCE GEN_TAXAS;'+

    'ALTER TABLE CLIENTES ADD CLI_TAXA DN_CODIGO;'+
    'ALTER TABLE PARAMETROS ADD PAR_TAXAPADRAO DN_NUMERO;'+

    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (127,''Taxas'',''TFormTaxas'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+
    'set generator GEN_LOCS to 127;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormTaxas'',''Cadastro de Taxas'',''A'',100);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'INSERT INTO TAXAS (TAX_CODIGO, TAX_DESCRICAO, TAX_DTATUALIZACAO, TAX_DTCADASTRO, TAX_STATUS, TAX_TIPO, TAX_USUARIO, TAX_VALOR) VALUES '+
    '(GEN_ID(GEN_TAXAS,1), ''TAXA ZERO'', ''2019-06-16'', ''2019-06-16'', ''A'', ''V'', ''RUNTIME'', 0);'+
    'UPDATE CLIENTES SET CLI_TAXA = 1;'+
    'UPDATE PARAMETROS SET PAR_TAXAPADRAO = 1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CLIENTES ADD CONSTRAINT FK_CLI_TAXA FOREIGN KEY (CLI_TAXA) REFERENCES TAXAS(TAX_CODIGO) ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;


  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CLIENTES');
  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2290 - 17.06.2019'+#13#10+
    '- Atualizado DLL NFE_UTIL para 2Gv4.07b.'+#13#10+
    '- Criado cadastro de Taxas.'+#13#10+
    '- Criado campo taxa no cadastro de Clientes.'+#13#10+#13#10);
end;

procedure AtualizarVersao230;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='230';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update LOCS set LOS_PICKLIST=''CODIGO;NOME;NOME FANTASIA;ENDERECO;BAIRRO;CIDADE;SETOR;TELEFONE;CPF;CNPJ;EMAIL;REG PROFISSIONAL;'' where LOS_TELA=''Clientes'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  //TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2275 - 20.04.2019'+#13#10+
    '- Feito ajustes nas rotinas de envio de email de compras.'+#13#10+#13#10);
end;

procedure AtualizarVersao229;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='229';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_SIGLA15 AS VARCHAR(15);'+
    'CREATE SEQUENCE GEN_EXAMESTIPOS;'+
    'CREATE SEQUENCE GEN_CONVENIOS;'+
    'CREATE SEQUENCE GEN_CONSULTAS;'+
    'CREATE SEQUENCE GEN_CONSULTASITENS;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_LOCALANEXOSCONSULTAS DN_PATH,'+
    '  ADD PAR_LOCALIMAGENSCONSULTAS DN_PATH;'+

    'ALTER TABLE LOCACOES'+
    '  ALTER LOC_VALORUNITARIO TO LOC_VALORLOCACAO,'+
    '  ADD LOC_VALOROBJETO DN_VALOR,'+
    '  ADD LOC_VALORPAGO DN_VALOR;'+

    'ALTER TABLE OBJETOS ADD OBJ_VALORLOCACAO DN_VALOR;'+

    'CREATE TABLE EXAMESTIPOS ('+
    '  EXT_CODIGO DN_CODIGO,'+
    '  EXT_CODIGO2 DN_SIGLA15,'+
    '  EXT_DESCRICAO DN_DESCRICAOPLUS,'+
    '  EXT_DTATUALIZACAO DN_DATA,'+
    '  EXT_DTCADASTRO DN_DATA,'+
    '  EXT_OBSERVACOES DN_BLOBTEXTO,'+
    '  EXT_SIGLA DN_SIGLA10,'+
    '  EXT_STATUS DN_BOOLEAN,'+
    '  EXT_USUARIO DN_LOGIN,'+
    '  EXT_VALOR DN_VALOR);'+

    'ALTER TABLE EXAMESTIPOS ADD CONSTRAINT PK_EXT_CODIGO PRIMARY KEY (EXT_CODIGO);'+

    'CREATE TABLE CONVENIOS ('+
    '  COV_CODIGO DN_CODIGO,'+
    '  COV_DESCRICAO DN_DESCRICAO,'+
    '  COV_DTATUALIZACAO DN_DATA,'+
    '  COV_DTCADASTRO DN_DATA,'+
    '  COV_OBSERVACOES DN_BLOBTEXTO,'+
    '  COV_STATUS DN_BOOLEAN,'+
    '  COV_USUARIO DN_LOGIN);'+

    'ALTER TABLE CONVENIOS ADD CONSTRAINT PK_COV_CODIGO PRIMARY KEY (COV_CODIGO);'+

    'CREATE TABLE CONSULTAS ('+
    '  COS_CODIGO DN_CODIGO,'+
    '  COS_CLIENTE DN_CODIGO,'+
    '  COS_CONVENIO DN_CODIGO,'+
    '  COS_DTATUALIZACAO DN_DATA,'+
    '  COS_DTCADASTRO DN_DATA,'+
    '  COS_DTCONSULTA DN_DATA,'+
    '  COS_HRCONSULTA DN_HORA,'+
    '  COS_MEDICO DN_CODIGO,'+
    '  COS_SOLICITANTE DN_CODIGO,'+
    '  COS_STATUS DN_BOOLEAN,'+
    '  COS_USUARIO DN_LOGIN,'+
    '  COS_VALORTOTAL DN_VALOR);'+

    'ALTER TABLE CONSULTAS ADD CONSTRAINT PK_COS_CODIGO PRIMARY KEY (COS_CODIGO);'+
    'ALTER TABLE CONSULTAS ADD CONSTRAINT FK_COS_CLIENTE FOREIGN KEY (COS_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE CONSULTAS ADD CONSTRAINT FK_COS_CONVENIO FOREIGN KEY (COS_CONVENIO) REFERENCES CONVENIOS(COV_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE CONSULTAS ADD CONSTRAINT FK_COS_MEDICO FOREIGN KEY (COS_MEDICO) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE CONSULTAS ADD CONSTRAINT FK_COS_SOLICITANTE FOREIGN KEY (COS_SOLICITANTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+

    'CREATE TABLE CONSULTASITENS ('+
    '  CSI_CODIGO DN_CODIGO,'+
    '  CSI_CONSULTA DN_CODIGO,'+
    '  CSI_EXAME DN_CODIGO,'+
    '  CSI_DESCRICAO DN_DESCRICAOPLUS,'+
    '  CSI_SIGLA DN_SIGLA10,'+
    '  CSI_VALOR DN_VALOR);'+

    'ALTER TABLE CONSULTASITENS ADD CONSTRAINT PK_CSI_CODIGO PRIMARY KEY (CSI_CODIGO);'+
    'ALTER TABLE CONSULTASITENS ADD CONSTRAINT FK_CSI_CONSULTA FOREIGN KEY (CSI_CONSULTA) REFERENCES CONSULTAS(COS_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'ALTER TABLE CONSULTASITENS ADD CONSTRAINT FK_CSI_EXAME FOREIGN KEY (CSI_EXAME) REFERENCES EXAMESTIPOS(EXT_CODIGO) ON UPDATE CASCADE;'+

    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (123,''Convenios'',''TFormConvenios'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (124,''Exames Tipos'',''TFormExamesTipos'',''DESCRICAO'',''CODIGO;CODIGO ALT.;SIGLA;DESCRICAO;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (125,''Consultas'',''TFormConsultas'',''DATA INICIAL'',''CODIGO;DATA INICIAL;DATA FINAL;CODIGO CLIENTE;NOME CLIENTE;CODIGO MEDICO;NOME MEDICO;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (126,''Consultas com Status'',''TFormConsultas'',''TODAS'',''TODAS;ABERTAS;BAIXADAS;CANCELADAS;'');'+
    'set generator GEN_LOCS to 126;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormConvenios'',''Cadastro de Convenios'',''A'',100);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormExamesTipos'',''Cadastro de Exames Tipos'',''I'',120);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormConsultas'',''Cadastro de Consultas'',''I'',120);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormConsultasAnexos'',''Cadastro de Consultas - Anexos'',''I'',120);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormConsultasImagens'',''Cadastro de Consultas - Imagens'',''I'',120);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('LOCACOES');
  TabelasParaReordenar.Add('OBJETOS');
  TabelasParaReordenar.Add('PARAMETROS');
  TabelasParaReordenar.Add('EXAMESTIPOS');
  TabelasParaReordenar.Add('CONSULTAS');
  TabelasParaReordenar.Add('CONSULTASITENS');
  TabelasParaReordenar.Add('CONVENIOS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2263 - 02.04.2019'+#13#10+
    '- Criado cadastro de agendamento de consultas médicas.'+#13#10+
    '- Criado cadastro de convênios.'+#13#10+
    '- Criado cadastro de tipos de exames.'+#13#10+
    '- Correção em relatórios diversos.'+#13#10+
    '- Melhorias no controle de locações de objetos.'+#13#10+#13#10);
end;

procedure AtualizarVersao228;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='228';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_COMPRASEMAILBCC DN_EMAIL;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2229 - 08.03.2019'+#13#10+
    '- Feito ajustes nas rotinas de envio de email de compras.'+#13#10+#13#10);
end;

procedure AtualizarVersao227;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='227';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CAIXASALDO ADD CAS_CODIGO DN_CODIGO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE CAIXASALDO SET CAS_CODIGO=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CAIXASALDO ADD CONSTRAINT PK_CAS_CODIGO PRIMARY KEY (CAS_CODIGO);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CAIXASALDO');

  EnviarMensagemParaTodos(1,
    'Versão 12.2204 - 22.02.2019'+#13#10+
    '- Liberado filtro de Tipo Pessoa em alguns relatórios de Clientes.'+#13#10+
    '- Liberado filtro de Familia no reltório de Produtos por Marca e Grupo.'+#13#10+
    '- Alterado inclusão de itens na Ordem de Produção para perguntar se quer produzir o produto em si ou a composição.'+#13#10+
    '- Feito ajustes nas rotinas de fluxo de caixa.'+#13#10+#13#10);
end;

procedure AtualizarVersao226;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='226';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_TEMPERATURACHAR AS VARCHAR(20);'+

    'CREATE SEQUENCE GEN_VIAS;'+
    'ALTER SEQUENCE GEN_VIAS RESTART WITH 7;'+

    'CREATE TABLE VIAS ('+
    '  VIA_CODIGO DN_CODIGO,'+
    '  VIA_DESCRICAO DN_DESCRICAO,'+
    '  VIA_DTATUALIZACAO DN_DATA,'+
    '  VIA_DTCADASTRO DN_DATA,'+
    '  VIA_STATUS DN_BOOLEAN,'+
    '  VIA_USUARIO DN_LOGIN);'+

    'ALTER TABLE VIAS ADD CONSTRAINT PK_VIA_CODIGO PRIMARY KEY (VIA_CODIGO);'+

    'ALTER TABLE TELEVENDAS '+
    '  ADD TEV_DTCADASTRO DN_DATA,'+
    '  ADD TEV_VIA DN_CODIGO,'+
    '  ADD TEV_TEMPERATURA DN_TEMPERATURACHAR,'+
    '  ADD TEV_TEMPERATURADATA DN_DATA;'+

    'UPDATE TELEVENDAS SET TEV_VIA=1, TEV_DTCADASTRO=TEV_DATA, TEV_TEMPERATURA=''02 - QUENTE'', TEV_TEMPERATURADATA=TEV_DATA+3;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_TEMPERATURA1 DN_NUMERO,'+
    '  ADD PAR_TEMPERATURA2 DN_NUMERO,'+
    '  ADD PAR_TEMPERATURA3 DN_NUMERO,'+
    '  ADD PAR_TEMPERATURA4 DN_NUMERO,'+
    '  ADD PAR_TEMPERATURA5 DN_NUMERO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'INSERT INTO VIAS (VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCADASTRO, VIA_STATUS, VIA_USUARIO) VALUES (1,''PESSOALMENTE'',''2019-01-25'',''2019-01-25'',''A'',''RUNTIME'');'+
    'INSERT INTO VIAS (VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCADASTRO, VIA_STATUS, VIA_USUARIO) VALUES (2,''TELEFONE'',''2019-01-25'',''2019-01-25'',''A'',''RUNTIME'');'+
    'INSERT INTO VIAS (VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCADASTRO, VIA_STATUS, VIA_USUARIO) VALUES (3,''CELULAR'',''2019-01-25'',''2019-01-25'',''A'',''RUNTIME'');'+
    'INSERT INTO VIAS (VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCADASTRO, VIA_STATUS, VIA_USUARIO) VALUES (4,''EMAIL'',''2019-01-25'',''2019-01-25'',''A'',''RUNTIME'');'+
    'INSERT INTO VIAS (VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCADASTRO, VIA_STATUS, VIA_USUARIO) VALUES (5,''WHATSAPP'',''2019-01-25'',''2019-01-25'',''A'',''RUNTIME'');'+
    'INSERT INTO VIAS (VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCADASTRO, VIA_STATUS, VIA_USUARIO) VALUES (6,''SKYPE'',''2019-01-25'',''2019-01-25'',''A'',''RUNTIME'');'+
    'INSERT INTO VIAS (VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCADASTRO, VIA_STATUS, VIA_USUARIO) VALUES (7,''FACEBOOK MESSENGER'',''2019-01-25'',''2019-01-25'',''A'',''RUNTIME'');'+

    'UPDATE PARAMETROS SET '+
    '  PAR_TEMPERATURA1=1,'+
    '  PAR_TEMPERATURA2=3,'+
    '  PAR_TEMPERATURA3=10,'+
    '  PAR_TEMPERATURA4=30,'+
    '  PAR_TEMPERATURA5=180;'+

    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (122,''Vias'',''TFormVias'',''CODIGO'',''CODIGO;DESCRICAO;'');'+
    'set generator GEN_LOCS to 122;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormVias'',''Cadastro de Vias de Contato'',''A'',100);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;


  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE TELEVENDAS ADD CONSTRAINT FK_TEV_VIA FOREIGN KEY (TEV_VIA) REFERENCES VIAS(VIA_CODIGO) ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');
  TabelasParaReordenar.Add('TELEVENDAS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2185 - 25.01.2019'+#13#10+
    '- Bloqueado campos Limite de Crédito e Bloquear Venda no cadastro de clientes.'+#13#10+
    '- Criado rotinas para alterar esses campos.'+#13#10+
    '- Implementado checagem do limite de crédito na hora de gerar NFe.'+#13#10+
    '- Criado relatório de trocas realizadas no período por vendedor.'+#13#10+
    '- Criado cadastro de vias de contato.'+#13#10+
    '- Criado campo Via de Contato e Temperatura no cadastro de televendas.'+#13#10+
    '- Criado relatório de atendimentos por temperatura.'+#13#10+
    '- Criado relatório de atendimentos por via de contato.'+#13#10+
    '- Criado parâmetros de temperatura para uso no televendas.'+#13#10+#13#10);
end;

procedure AtualizarVersao225;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='225';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE OBJETOS'+
    '  ADD OBJ_CAPACIDADE DN_VALOR,'+
    '  ADD OBJ_LOCADO DN_BOOLEAN,'+
    '  ADD OBJ_LOCACAO DN_NUMERO,'+
    '  ADD OBJ_VALOR DN_VALOR,'+
    '  ADD OBJ_UNIDADE DN_UNIDADE,'+
    '  ADD OBJ_OBSERVACOES DN_BLOBTEXTO;'+

    'ALTER TABLE OBJETOS ADD CONSTRAINT FK_OBJ_UNIDADE FOREIGN KEY (OBJ_UNIDADE) REFERENCES UNIDADES(UNI_CODIGO) ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE OBJETOS SET OBJ_LOCADO=''N'', OBJ_UNIDADE=(SELECT FIRST(1) UNI_CODIGO FROM UNIDADES);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('OBJETOS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2185 - 25.12.2018'+#13#10+
    '- Criado novos campos no cadastro de objetos.'+#13#10+
    '- Melhorado controle de locações.'+#13#10+#13#10);
end;

procedure AtualizarVersao224;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='224';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOSCOMP ADD PRC_ORDEM DN_NUMERO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PRODUTOSCOMP set PRC_ORDEM=PRC_CODIGO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PRODUTOSCOMP');

  EnviarMensagemParaTodos(1,
    'Versão 12.2181 - 03.12.2018'+#13#10+
    '- Criado campo "Ordem" no cadastro da composição do produto.'+#13#10+
    '- Criado novo modelo de impressão de Plano de Produção.'+#13#10+#13#10);
end;

procedure AtualizarVersao223;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='223';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'insert into UNIDADES (UNI_CODIGO, UNI_DESCRICAO, UNI_ATUALIZAR, UNI_DTCADASTRO, UNI_DTATUALIZACAO, UNI_USUARIO)'+
    'select PRO_UNIDADE, PRO_UNIDADE as UNI_DESCRICAO, ''S'', ''2018-12-02'', ''2018-12-02'', ''RUNTIME'''+
    'from PRODUTOS where PRO_UNIDADE not in (select UNI_CODIGO from UNIDADES) group by PRO_UNIDADE'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOS ADD CONSTRAINT FK_PRO_UNIDADE FOREIGN KEY (PRO_UNIDADE) REFERENCES UNIDADES(UNI_CODIGO) ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PRODUTOS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2180 - 01.12.2018'+#13#10+
    '- Criado campo "Troca" no cadastro de produtos.'+#13#10+#13#10);
end;

procedure AtualizarVersao222;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='222';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOS ADD PRO_TROCA DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PRODUTOS set PRO_TROCA=''N'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PRODUTOS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2180 - 01.12.2018'+#13#10+
    '- Criado campo "Troca" no cadastro de produtos.'+#13#10+#13#10);
end;

procedure AtualizarVersao221;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='221';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER DOMAIN DN_VALOR TYPE NUMERIC(18,8);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  EnviarMensagemParaTodos(1,
    'Versão 12.2153 - 15.10.2018'+#13#10+
    '- Aumentado a precisão dos campos de valor para 8 casas decimais.'+#13#10+#13#10);
end;

procedure AtualizarVersao220;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='220';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_COMPRAEMAILASSUNTO DN_NUMERO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update PARAMETROS set PAR_COMPRAEMAILASSUNTO=0;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2131 - 10.09.2018'+#13#10+
    '- Alterado rotina de envio de pedido de compra por email para utilizar o email do sistema.'+#13#10+
    '- Criado impressão de tabela de preços modelo 5.'+#13#10+
    '- Atualizado NFE_UTIL para versão 2G4.05a.'+#13#10+#13#10);
end;

procedure AtualizarVersao219;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='219';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFE ADD NFE_TOTALFCPST DN_VALOR, DROP NFE_ICMSALIQUOTAUF, DROP NFE_ICMSPOR;'+
    'ALTER TABLE NOTAS ADD NOT_TOTALFCPST DN_VALOR, DROP NOT_ICMSALIQUOTAUF, DROP NOT_ICMSPOR;'+
    'ALTER TABLE VENDAS ADD VED_TOTALFCPST DN_VALOR, DROP VED_ICMSALIQUOTAUF, DROP VED_ICMSPOR;'+
    'ALTER TABLE SERVICOS ADD SER_TOTALFCPST DN_VALOR, DROP SER_ICMSALIQUOTAUF, DROP SER_ICMSPOR;'+

    'ALTER TABLE NFEITENS'+
    '  ADD NFI_CODIGOBARRAS DN_CODIGOBARRAS,'+
    '  ADD NFI_COMPOETOTAL DN_BOOLEAN,'+
    '  ADD NFI_ALIQFCPST DN_VALOR,'+
    '  ADD NFI_VALORFCPST DN_VALOR,'+
    '  ALTER NFI_CODFAB TO NFI_CODIGOFAB;'+

    'ALTER TABLE NOTASITENS'+
    '  ADD NOI_CODIGOBARRAS DN_CODIGOBARRAS,'+
    '  ADD NOI_COMPOETOTAL DN_BOOLEAN,'+
    '  ADD NOI_ALIQFCPST DN_VALOR,'+
    '  ADD NOI_VALORFCPST DN_VALOR,'+
    '  ALTER NOI_CODFAB TO NOI_CODIGOFAB;'+

    'ALTER TABLE VENDASITENS'+
    '  ADD VEI_CODIGOBARRAS DN_CODIGOBARRAS,'+
    '  ADD VEI_COMPOETOTAL DN_BOOLEAN,'+
    '  ADD VEI_ALIQFCPST DN_VALOR,'+
    '  ADD VEI_VALORFCPST DN_VALOR,'+
    '  ALTER VEI_CODFAB TO VEI_CODIGOFAB;'+

    'ALTER TABLE SERVICOSITENS'+
    '  ADD SEI_CODIGOBARRAS DN_CODIGOBARRAS,'+
    '  ADD SEI_COMPOETOTAL DN_BOOLEAN,'+
    '  ADD SEI_ALIQFCPST DN_VALOR,'+
    '  ADD SEI_VALORFCPST DN_VALOR,'+
    '  ALTER SEI_CODFAB TO SEI_CODIGOFAB;'+

    'ALTER TABLE ALIQUOTAS ADD ALI_ALIQFCPST DN_VALOR;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    //'update NFEITENS set NFI_COMPOETOTAL=''S'';'+
    //'update NOTASITENS set NOI_COMPOETOTAL=''S'';'+
    //'update VENDASITENS set VEI_COMPOETOTAL=''S'';'+
    //'update SERVICOSITENS set SEI_COMPOETOTAL=''S'';'+
    'update ALIQUOTAS set ALI_ALIQFCPST=0;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('FORNECEDORES');
  TabelasParaReordenar.Add('VENDASITENS');
  TabelasParaReordenar.Add('NOTASITENS');
  TabelasParaReordenar.Add('NFEITENS');
  TabelasParaReordenar.Add('SERVICOSITENS');
  TabelasParaReordenar.Add('ALIQUOTAS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2090 - 09.07.2018'+#13#10+
    '- Incluído coluna Entrada/Saída na localização de CFOP.'+#13#10+
    '- Atualizado NFe para versão 4.00.'+#13#10+
    '- Atualizado NFE_UTIL para versão 2G4.04.'+#13#10+
    '- Incluído informações sobre o FCP nos dados adicionais do DANFE.'+#13#10);
end;

procedure AtualizarVersao218;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='218';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE FORNECEDORES'+
    '  ADD FOR_PAIS DN_NOME,'+
    '  ADD FOR_PAISCODIGO DN_NUMERO;'+
    'UPDATE FORNECEDORES SET FOR_PAIS='+QuotedStr('BRASIL')+', FOR_PAISCODIGO=1058;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('FORNECEDORES'); //repetir essa tabela na próxima atualizacao.

  EnviarMensagemParaTodos(1,
    'Versão 12.2055 - 09.04.2018'+#13#10+
    '- Melhorado rotina de cancelamento de NFe.'+#13#10+
	  '- Criado opção para consulta de NFe pela DLL e Cancelamento de NFe Denegada.'+#13#10+
    '- Reformulado relatórios de boletos para informar o status e indicar qual campo data considerar no relatório e incluído total de itens.'+#13#10+
    '- Criado campo País no cadastro de fornecedores.'+#13#10+
    '- Melhorado rotina de consulta de CNPJ evitando erros quando os campos não estão totalmente preenchidos.'+#13#10);
end;

procedure AtualizarVersao217;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='217';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_BOLETOPADRAO DN_FINALIDADE;'+
    'UPDATE PARAMETROS SET PAR_BOLETOPADRAO='+QuotedStr('BOLETO PADRAO')+' WHERE PAR_CODIGO=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2044 - 18.02.2018'+#13#10+
    '- Criado modelo de boleto com Recibo de Entrega.'+#13#10+
    '- Criado parâmetro para selecionar o modelo padrão de boleto que o botão de imprimir boleto deve utilizar.'+#13#10+
    '- Alterado tela de geração de boletos para possibilitar a impressão ou envio dos boletos recém gerados.'+#13#10);
end;

procedure AtualizarVersao216;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='216';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE LOTES ADD LOT_FABRICACAO DN_DATA;'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (121,''Prontuarios'',''TFormProntuarios'',''DATA INICIAL'',''CODIGO;NUMERO ATENDIMENTO;DATA INICIAL;CODIGO CLIENTE;CLIENTE;NUMERO CNS;NUMERO SAME;'');'+
    'set generator GEN_LOCS to 121;'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormProntuariosArquivos'',''Cadastro de Prontuários - Arquivos'',''I'',120);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormClientesAnexos'',''Cadastro de Clientes - Anexos'',''A'',100);'+
    'delete from SQLS where SQL_FORM=''FormClientesLoc'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('LOTES');
  //TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2030 - 02.02.2018'+#13#10+
    '- Criado campo no data de fabricação no cadastro de lotes.'+#13#10+
    '- Implementado opções de informar o lote na impressão de etiquetas de produtos.'+#13#10+
    '- Alterado tela de impressão de etiquetas de produtos para informar os dados de lote nas etiquetas PPLB.'+#13#10);
end;

procedure AtualizarVersao215;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='215';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_SEXO AS VARCHAR(1);'+
    'CREATE DOMAIN DN_CNS AS VARCHAR(20);'+
    'CREATE DOMAIN DN_SAME AS VARCHAR(20);'+
    'CREATE SEQUENCE GEN_PRONTUARIOS;'+

    'ALTER TABLE CLIENTES'+
    '  ADD CLI_TRANSPORTADORA DN_CODIGO,'+
    '  ADD CLI_SEXO DN_SEXO,'+
    '  ADD CLI_OBITO DN_BOOLEAN,'+
    '  ADD CLI_DTOBITO DN_DATA,'+
    '  ADD CLI_SAME DN_SAME,'+
    '  ADD CLI_CNS DN_CNS;'+

    'ALTER TABLE CLIENTES ADD CONSTRAINT FK_CLI_TRANSPORTADORA FOREIGN KEY (CLI_TRANSPORTADORA) REFERENCES FORNECEDORES(FOR_CODIGO) ON UPDATE CASCADE;'+

    'CREATE TABLE PRONTUARIOS ('+
    '  PEP_ATENDIMENTO DN_NUMERO,'+
    '  PEP_CODIGO DN_CODIGO,'+
    '  PEP_CLIENTE DN_CODIGO,'+
    '  PEP_DTATENDIMENTO DN_DATA,'+
    '  PEP_DTATUALIZACAO DN_DATA,'+
    '  PEP_DTCADASTRO DN_DATA,'+
    '  PEP_HRATUALIZACAO DN_HORA,'+
    '  PEP_OBITO DN_BOOLEAN,'+
    '  PEP_STATUS DN_BOOLEAN,'+
    '  PEP_USUARIO DN_LOGIN);'+

    'ALTER TABLE PRONTUARIOS ADD CONSTRAINT PK_PEP_CODIGO PRIMARY KEY (PEP_CODIGO);'+
    'ALTER TABLE PRONTUARIOS ADD CONSTRAINT FK_PEP_CLIENTE FOREIGN KEY (PEP_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+

    'ALTER TABLE PARAMETROS '+
    '  ADD PAR_LOCALPRONTUARIOS DN_PATH,'+
    '  ADD PAR_TRANSPORTADORAPADRAO DN_NUMERO,'+
    '  DROP PAR_NFEEMAILSISTEMA,'+
    '  DROP PAR_VENDAEMAILCONTA,'+
    '  DROP PAR_VENDAEMAILSISTEMA;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE CLIENTES SET CLI_SEXO=''-'', CLI_OBITO=''N'', CLI_TRANSPORTADORA=(SELECT MIN(FOR_CODIGO) FROM FORNECEDORES);'+
    'UPDATE PARAMETROS SET PAR_TRANSPORTADORAPADRAO=(SELECT MIN(FOR_CODIGO) FROM FORNECEDORES);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormProntuarios'',''Cadastro de Prontuários'',''I'',120);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('CLIENTES');
  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2026 - 27.01.2018'+#13#10+
    '- Criado campo no cadastro de clientes para informar a transportadora usada pelo cliente.'+#13#10+
    '- Incluído botão na tela de vendas para buscar a transportadora do cliente.'+#13#10+
    '- Criado campos sexo, número carteira nacional de saúde e número SAME, além de campos para informar óbito no cadastro do cliente.'+#13#10+
    '- Adicionado o fuso horário no cancelamento de CTe.'+#13#10);
end;

procedure AtualizarVersao214;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='214';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_TIPOCODIGOEXPRESSO DN_ALEATORIO;'+
    'UPDATE PARAMETROS SET PAR_TIPOCODIGOEXPRESSO=''SISTEMA'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');

  EnviarMensagemParaTodos(1,
    'Versão 12.2019 - 23.01.2018'+#13#10+
    '- Criado parâmetro para selecionar qual código de produto utilizar na tela de vendas rápidas.'+#13#10+
    '- Alterado tela de vendas rápidas para localizar o produto conforme o parâmetro acima.'+#13#10+
    '- Corrigido dimensionamento dos grids na tela de localização de produtos.'+#13#10);
end;

procedure AtualizarVersao213;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='213';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_USARCODIGOFAB DN_BOOLEAN;'+
    'UPDATE PARAMETROS SET PAR_USARCODIGOFAB=''N'''
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');
end;

procedure AtualizarVersao212;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='212';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE VENDAS ADD VED_MANUAL DN_BOOLEAN;'+
    'ALTER TABLE NFE ADD NFE_MANUAL DN_BOOLEAN;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('VENDAS');
  TabelasParaReordenar.Add('NFE');
end;

procedure AtualizarVersao211;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='211';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFSEITENS ADD NSI_PRODUTO DN_CODIGO;'+
    'update NFSEITENS set NSI_PRODUTO=(select min(PRO_CODIGO) from PRODUTOS);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFSEITENS ADD CONSTRAINT FK_NSI_PRODUTO FOREIGN KEY (NSI_PRODUTO) REFERENCES PRODUTOS(PRO_CODIGO) ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('NFSEITENS');
end;

procedure AtualizarVersao210;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='210';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_CALCULARPESOLIQUIDO DN_BOOLEAN;'+
    'UPDATE PARAMETROS SET PAR_CALCULARPESOLIQUIDO='+QuotedStr('S')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('PARAMETROS');
end;

procedure AtualizarVersao209;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='209';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_SIGLA5 AS VARCHAR(5);'+
    'ALTER TABLE MDFE'+
    '  ADD MDF_AERONAVENAC DN_SIGLA5,'+
    '  ADD MDF_AERONAVEMAT DN_SIGLA10,'+
    '  ADD MDF_AEROPORTOEMB DN_SIGLA5,'+
    '  ADD MDF_AEROPORTODES DN_SIGLA5,'+
    '  ADD MDF_VOONUMERO DN_SIGLA10,'+
    '  ADD MDF_VOODATA DN_DATA;'+

    'ALTER TABLE PARAMETROS '+
    '  ADD PAR_ETIQUETAEMBALAGEM DN_NUMERO,'+
    '  ADD PAR_ETIQUETAMODELO1 DN_NUMERO;'+
    'UPDATE PARAMETROS SET PAR_ETIQUETAEMBALAGEM=1, PAR_ETIQUETAMODELO1=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('MDFE');
  TabelasParaReordenar.Add('PARAMETROS');
end;

procedure AtualizarVersao208;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='208';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE MEDICOES ADD MED_PERIODO DN_DIASEMANA;'+
    'ALTER TABLE VENDEDORES ADD VEN_REGPROFISSIONAL DN_REGPROFISSIONAL;'+

    'ALTER TABLE RECEITUARIOS'+
    '  DROP RCT_DIASEMANA,'+
    '  DROP RCT_HORA01,'+
    '  DROP RCT_HORA02,'+
    '  DROP RCT_HORA03,'+
    '  DROP RCT_HORA04,'+
    '  DROP RCT_HORA05,'+
    '  DROP RCT_HORA06,'+
    '  DROP RCT_HORA07,'+
    '  DROP RCT_HORA08,'+
    '  DROP RCT_HORA09,'+
    '  DROP RCT_HORA10,'+
    '  DROP RCT_HORA11,'+
    '  DROP RCT_HORA12,'+
    '  DROP RCT_HORA13,'+
    '  DROP RCT_HORA14,'+
    '  DROP RCT_HORA15,'+
    '  DROP RCT_HORA16,'+
    '  DROP RCT_HORA17,'+
    '  DROP RCT_HORA18,'+
    '  DROP RCT_HORA19,'+
    '  DROP RCT_HORA20,'+
    '  DROP RCT_HORA21,'+
    '  DROP RCT_HORA22,'+
    '  DROP RCT_HORA23,'+
    '  DROP RCT_HORA24,'+
    '  ADD RCT_ORDEM DN_NUMERO,'+
    '  ADD RCT_DIA01 DN_SIGLA3,'+
    '  ADD RCT_DIA02 DN_SIGLA3,'+
    '  ADD RCT_DIA03 DN_SIGLA3,'+
    '  ADD RCT_DIA04 DN_SIGLA3,'+
    '  ADD RCT_DIA05 DN_SIGLA3,'+
    '  ADD RCT_DIA06 DN_SIGLA3,'+
    '  ADD RCT_DIA07 DN_SIGLA3,'+
    '  ADD RCT_DIA08 DN_SIGLA3,'+
    '  ADD RCT_DIA09 DN_SIGLA3,'+
    '  ADD RCT_DIA10 DN_SIGLA3,'+
    '  ADD RCT_DIA11 DN_SIGLA3,'+
    '  ADD RCT_DIA12 DN_SIGLA3,'+
    '  ADD RCT_DIA13 DN_SIGLA3,'+
    '  ADD RCT_DIA14 DN_SIGLA3,'+
    '  ADD RCT_DIA15 DN_SIGLA3,'+
    '  ADD RCT_DIA16 DN_SIGLA3,'+
    '  ADD RCT_DIA17 DN_SIGLA3,'+
    '  ADD RCT_DIA18 DN_SIGLA3,'+
    '  ADD RCT_DIA19 DN_SIGLA3,'+
    '  ADD RCT_DIA20 DN_SIGLA3,'+
    '  ADD RCT_DIA21 DN_SIGLA3,'+
    '  ADD RCT_DIA22 DN_SIGLA3,'+
    '  ADD RCT_DIA23 DN_SIGLA3,'+
    '  ADD RCT_DIA24 DN_SIGLA3,'+
    '  ADD RCT_DIA25 DN_SIGLA3,'+
    '  ADD RCT_DIA26 DN_SIGLA3,'+
    '  ADD RCT_DIA27 DN_SIGLA3,'+
    '  ADD RCT_DIA28 DN_SIGLA3,'+
    '  ADD RCT_DIA29 DN_SIGLA3,'+
    '  ADD RCT_DIA30 DN_SIGLA3,'+
    '  ADD RCT_DIA31 DN_SIGLA3;'+

    'CREATE TABLE ETIQUETAS ('+
    '  ETQ_CODIGO DN_CODIGO,'+
    '  ETQ_CONTEUDO DN_BLOBTEXTO,'+
    '  ETQ_DESCRICAO DN_DESCRICAO,'+
    '  ETQ_DTATUALIZACAO DN_DATA,'+
    '  ETQ_DTCADASTRO DN_DATA,'+
    '  ETQ_STATUS DN_BOOLEAN,'+
    '  ETQ_USUARIO DN_LOGIN);'+

    'ALTER TABLE ETIQUETAS ADD CONSTRAINT PK_ETQ_CODIGO PRIMARY KEY (ETQ_CODIGO);'+
    'CREATE SEQUENCE GEN_ETIQUETAS;'+

    'ALTER TABLE MENSALIDADES ADD MNS_PERIODO DN_SIGLA10;'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormEtiquetas'',''Cadastro de Etiquetas - Configuracao'',''A'',100);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (120,''Etiquetas'',''TFormEtiquetas'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+
    'set generator GEN_LOCS to 120;'

  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  TabelasParaReordenar.Add('MEDICOES');
  TabelasParaReordenar.Add('RECEITUARIOS');
  TabelasParaReordenar.Add('VENDEDORES');
end;

procedure AtualizarVersao207;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='207';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_INTERMEDIO AS VARCHAR(35);'+
    'CREATE DOMAIN DN_TRANSPORTE AS VARCHAR(30);'+
    'CREATE SEQUENCE GEN_NFEITENSADICOES;'+

    'CREATE TABLE NFEITENSADICOES ('+
    '  NFA_CODIGO DN_CODIGO,'+
    '  NFA_DESCONTODI DN_VALOR,'+
    '  NFA_DRAWBACK DN_NUMEROCHAR,'+
    '  NFA_FABRICANTE DN_NOME,'+
    '  NFA_NFEITEM DN_CODIGO,'+
    '  NFA_NUMERO DN_NUMERO,'+
    '  NFA_SEQUENCIA DN_NUMERO);'+

    'ALTER TABLE NFEITENSADICOES ADD CONSTRAINT PK_NFA_CODIGO PRIMARY KEY (NFA_CODIGO);'+
    'ALTER TABLE NFEITENSADICOES ADD CONSTRAINT FK_NFA_NFEITEM FOREIGN KEY (NFA_NFEITEM) REFERENCES NFEITENS(NFI_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'ALTER TABLE EMPRESA'+
    '  ADD EMP_PAIS DN_NOME,'+
    '  ADD EMP_PAISCODIGO DN_NUMERO;'+

    'ALTER TABLE CLIENTES'+
    '  ADD CLI_IDESTRANGEIRO DN_CNPJIECPFRG,'+
    '  ADD CLI_PAIS DN_NOME,'+
    '  ADD CLI_PAISCODIGO DN_NUMERO,'+
    '  ADD CLI_PAISCOB DN_NOME,'+
    '  ADD CLI_PAISCODIGOCOB DN_NUMERO;'+

    'ALTER TABLE NOTAS'+
    '  ADD NOT_BASEII DN_VALOR,'+
    '  ADD NOT_EXLOCAL DN_NOME,'+
    '  ADD NOT_EXUFSAIDA DN_ESTADO,'+
    '  ADD NOT_IDESTRANGEIRO DN_CNPJIECPFRG,'+
    '  ADD NOT_PAIS DN_NOME,'+
    '  ADD NOT_PAISCODIGO DN_NUMERO,'+
    '  ADD NOT_SEQUENCIAITEM DN_NUMERO,'+
    '  ADD NOT_TOTALADUANA DN_VALOR,'+
    '  ADD NOT_TOTALII DN_VALOR,'+
    '  ADD NOT_TOTALIOF DN_VALOR;'+

    'ALTER TABLE NFE'+
    '  ADD NFE_BASEII DN_VALOR,'+
    '  ADD NFE_EXLOCAL DN_NOME,'+
    '  ADD NFE_EXUFSAIDA DN_ESTADO,'+
    '  ADD NFE_IDESTRANGEIRO DN_CNPJIECPFRG,'+
    '  ADD NFE_PAIS DN_NOME,'+
    '  ADD NFE_PAISCODIGO DN_NUMERO,'+
    '  ADD NFE_SEQUENCIAITEM DN_NUMERO,'+
    '  ADD NFE_TOTALADUANA DN_VALOR,'+
    '  ADD NFE_TOTALII DN_VALOR,'+
    '  ADD NFE_TOTALIOF DN_VALOR;'+

    'ALTER TABLE VENDAS'+
    '  ADD VED_BASEII DN_VALOR,'+
    '  ADD VED_EXLOCAL DN_NOME,'+
    '  ADD VED_EXUFSAIDA DN_ESTADO,'+
    '  ADD VED_IDESTRANGEIRO DN_CNPJIECPFRG,'+
    '  ADD VED_PAIS DN_NOME,'+
    '  ADD VED_PAISCODIGO DN_NUMERO,'+
    '  ADD VED_SEQUENCIAITEM DN_NUMERO,'+
    '  ADD VED_TOTALADUANA DN_VALOR,'+
    '  ADD VED_TOTALII DN_VALOR,'+
    '  ADD VED_TOTALIOF DN_VALOR;'+

    'ALTER TABLE SERVICOS'+
    '  ADD SER_SEQUENCIAITEM DN_NUMERO;'+

    'ALTER TABLE SERVICOSITENS'+
    '  ADD SEI_SEQUENCIA DN_NUMERO;'+

    'ALTER TABLE CTE'+
    '  ADD CTE_TOMADORPAIS DN_NOME,'+
    '  ADD CTE_TOMADORPAISCODIGO DN_NUMERO,'+
    '  ADD CTE_DESPAIS DN_NOME,'+
    '  ADD CTE_DESPAISCODIGO DN_NUMERO,'+
    '  ADD CTE_EXPPAIS DN_NOME,'+
    '  ADD CTE_EXPPAISCODIGO DN_NUMERO,'+
    '  ADD CTE_RECPAIS DN_NOME,'+
    '  ADD CTE_RECPAISCODIGO DN_NUMERO,'+
    '  ADD CTE_REMPAIS DN_NOME,'+
    '  ADD CTE_REMPAISCODIGO DN_NUMERO;'+

    'ALTER TABLE VENDASITENS'+
    '  ADD VEI_ALIQII DN_VALOR,'+
    '  ADD VEI_BASEII DN_VALOR,'+
    '  ADD VEI_DICNPJ DN_CNPJIECPFRG,'+
    '  ADD VEI_DIDATA DN_DATA,'+
    '  ADD VEI_DIDESEMBARACODATA DN_DATA,'+
    '  ADD VEI_DIDESEMBARACOLOCAL DN_NOME,'+
    '  ADD VEI_DIDESEMBARACOUF DN_ESTADO,'+
    '  ADD VEI_DIEXPORTADORCOD DN_DESCRICAO,'+
    '  ADD VEI_DIINTERMEDIO DN_INTERMEDIO,'+
    '  ADD VEI_DINUMERO DN_SIGLA10,'+
    '  ADD VEI_DITERCEIROUF DN_ESTADO,'+
    '  ADD VEI_DITRANSPORTE DN_TRANSPORTE,'+
    '  ADD VEI_DIVALORAFRMM DN_VALOR,'+
    '  ADD VEI_EXCHAVEACESSO DN_CHAVEACESSO,'+
    '  ADD VEI_EXDRAWBACK DN_NUMEROCHAR,'+
    '  ADD VEI_EXQUANTIDADE DN_VALOR,'+
    '  ADD VEI_EXREGISTRO DN_NUMEROCHAR,'+
    '  ADD VEI_SEQUENCIA DN_NUMERO,'+
    '  ADD VEI_VALORADUANA DN_VALOR,'+
    '  ADD VEI_VALORII DN_VALOR,'+
    '  ADD VEI_VALORIOF DN_VALOR;'+

    'ALTER TABLE NOTASITENS'+
    '  ADD NOI_ALIQII DN_VALOR,'+
    '  ADD NOI_BASEII DN_VALOR,'+
    '  ADD NOI_DICNPJ DN_CNPJIECPFRG,'+
    '  ADD NOI_DIDATA DN_DATA,'+
    '  ADD NOI_DIDESEMBARACODATA DN_DATA,'+
    '  ADD NOI_DIDESEMBARACOLOCAL DN_NOME,'+
    '  ADD NOI_DIDESEMBARACOUF DN_ESTADO,'+
    '  ADD NOI_DIEXPORTADORCOD DN_DESCRICAO,'+
    '  ADD NOI_DIINTERMEDIO DN_INTERMEDIO,'+
    '  ADD NOI_DINUMERO DN_SIGLA10,'+
    '  ADD NOI_DITERCEIROUF DN_ESTADO,'+
    '  ADD NOI_DITRANSPORTE DN_TRANSPORTE,'+
    '  ADD NOI_DIVALORAFRMM DN_VALOR,'+
    '  ADD NOI_EXCHAVEACESSO DN_CHAVEACESSO,'+
    '  ADD NOI_EXDRAWBACK DN_NUMEROCHAR,'+
    '  ADD NOI_EXQUANTIDADE DN_VALOR,'+
    '  ADD NOI_EXREGISTRO DN_NUMEROCHAR,'+
    '  ADD NOI_SEQUENCIA DN_NUMERO,'+
    '  ADD NOI_VALORADUANA DN_VALOR,'+
    '  ADD NOI_VALORII DN_VALOR,'+
    '  ADD NOI_VALORIOF DN_VALOR;'+

    'ALTER TABLE NFEITENS'+
    '  ADD NFI_ALIQII DN_VALOR,'+
    '  ADD NFI_BASEII DN_VALOR,'+
    '  ADD NFI_DICNPJ DN_CNPJIECPFRG,'+
    '  ADD NFI_DIDATA DN_DATA,'+
    '  ADD NFI_DIDESEMBARACODATA DN_DATA,'+
    '  ADD NFI_DIDESEMBARACOLOCAL DN_NOME,'+
    '  ADD NFI_DIDESEMBARACOUF DN_ESTADO,'+
    '  ADD NFI_DIEXPORTADORCOD DN_DESCRICAO,'+
    '  ADD NFI_DIINTERMEDIO DN_INTERMEDIO,'+
    '  ADD NFI_DINUMERO DN_SIGLA10,'+
    '  ADD NFI_DITERCEIROUF DN_ESTADO,'+
    '  ADD NFI_DITRANSPORTE DN_TRANSPORTE,'+
    '  ADD NFI_DIVALORAFRMM DN_VALOR,'+
    '  ADD NFI_EXCHAVEACESSO DN_CHAVEACESSO,'+
    '  ADD NFI_EXDRAWBACK DN_NUMEROCHAR,'+
    '  ADD NFI_EXQUANTIDADE DN_VALOR,'+
    '  ADD NFI_EXREGISTRO DN_NUMEROCHAR,'+
    '  ADD NFI_SEQUENCIA DN_NUMERO,'+
    '  ADD NFI_VALORADUANA DN_VALOR,'+
    '  ADD NFI_VALORII DN_VALOR,'+
    '  ADD NFI_VALORIOF DN_VALOR;'+

    'update EMPRESA set EMP_PAISCODIGO=1058, EMP_PAIS='+QuotedStr('BRASIL')+';'+

    //update CLIENTES set CLI_PAISCODIGO=1058, CLI_PAISCODIGOCOB=1058, CLI_PAIS='BRASIL', CLI_PAISCOB='BRASIL';
    //update SERVICOS set SER_SEQUENCIAITEM=1;
    //update VENDAS set VED_PAISCODIGO=1058, VED_PAIS='BRASIL', VED_BASEII=0, VED_TOTALII=0, VED_TOTALIOF=0, VED_TOTALADUANA=0, VED_SEQUENCIAITEM=1;
    //update NOTAS set NFE_PAISCODIGO=1058, NFE_PAIS='BRASIL', NFE_BASEII=0, NFE_TOTALII=0, NFE_TOTALIOF=0, NFE_TOTALADUANA=0, NFE_SEQUENCIAITEM=1;
    //update NFE set NFE_PAISCODIGO=1058, NFE_PAIS='BRASIL', NFE_BASEII=0, NFE_TOTALII=0, NFE_TOTALIOF=0, NFE_TOTALADUANA=0, NFE_SEQUENCIAITEM=1;
    //update SERVICOSITENS set SEI_SEQUENCIA=1, SEI_VALORADUANA=0, SEI_VALORII=0, SEI_VALORIOF=0, SEI_ALIQII=0;
    //update VENDASITENS set VEI_SEQUENCIA=1, VEI_VALORADUANA=0, VEI_VALORII=0, VEI_VALORIOF=0, VEI_ALIQII=0;
    //update NOTASITENS set NOI_SEQUENCIA=1, NOI_VALORADUANA=0, NOI_VALORII=0, NOI_VALORIOF=0, NOI_ALIQII=0;
    //update NFEITENS set NFI_SEQUENCIA=1, NFI_VALORADUANA=0, NFI_VALORII=0, NFI_VALORIOF=0, NFI_ALIQII=0;
    
    'update CTE set'+
    '  CTE_TOMADORPAISCODIGO=1058,'+
    '  CTE_DESPAISCODIGO=1058,'+
    '  CTE_EXPPAISCODIGO=1058,'+
    '  CTE_RECPAISCODIGO=1058,'+
    '  CTE_REMPAISCODIGO=1058,'+
    '  CTE_TOMADORPAIS='+QuotedStr('BRASIL')+','+
    '  CTE_DESPAIS='+QuotedStr('BRASIL')+','+
    '  CTE_EXPPAIS='+QuotedStr('BRASIL')+','+
    '  CTE_RECPAIS='+QuotedStr('BRASIL')+','+
    '  CTE_REMPAIS='+QuotedStr('BRASIL')+';'+

    'delete from SQLS;'+
    'delete from FORMS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;

  ZapFiles(GetTempDir+'Form*.txt'); //elimina as info de tamanho do form para o usuário logado.

  TabelasParaReordenar.Add('CLIENTES');
  TabelasParaReordenar.Add('CTE');
  TabelasParaReordenar.Add('EMPRESA');
  TabelasParaReordenar.Add('NFE');
  TabelasParaReordenar.Add('NFEITENS');
  TabelasParaReordenar.Add('NOTAS');
  TabelasParaReordenar.Add('NOTASITENS');
  TabelasParaReordenar.Add('SERVICOS');
  TabelasParaReordenar.Add('SERVICOSITENS');
  TabelasParaReordenar.Add('VENDAS');
  TabelasParaReordenar.Add('VENDASITENS');
end;

procedure AtualizarVersao206;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='206';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE TABLE MENSALIDADES ('+
    '  MNS_CLIENTE DN_CODIGO,'+
    '  MNS_CODIGO DN_CODIGO,'+
    '  MNS_CONTA DN_CODIGO,'+
    '  MNS_DESCRICAO DN_DESCRICAO,'+
    '  MNS_DTATUALIZACAO DN_DATA,'+
    '  MNS_DTCADASTRO DN_DATA,'+
    '  MNS_RECEITA DN_CODIGO,'+
    '  MNS_TIPODOCTO DN_TIPODOCTO,'+
    '  MNS_USUARIO DN_LOGIN,'+
    '  MNS_VALOR DN_VALOR,'+
    '  MNS_VENCIMENTO DN_NUMERO);'+

    'ALTER TABLE MENSALIDADES ADD CONSTRAINT PK_MNS_CODIGO PRIMARY KEY (MNS_CODIGO);'+
    'ALTER TABLE MENSALIDADES ADD CONSTRAINT FK_MNS_CLIENTE FOREIGN KEY (MNS_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'ALTER TABLE MENSALIDADES ADD CONSTRAINT FK_MNS_CONTA FOREIGN KEY (MNS_CONTA) REFERENCES CONTAS(CON_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'ALTER TABLE MENSALIDADES ADD CONSTRAINT FK_MNS_RECEITA FOREIGN KEY (MNS_RECEITA) REFERENCES RECEITAS(REC_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE SEQUENCE GEN_MENSALIDADES;'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormMensalidades'',''Cadastro de Mensalidades'',''A'',3);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (119,''Mensalidades'',''TFormMensalidades'',''NOME'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME;CODIGO RECEITA;RECEITA;CODIGO CONTA;'');'+
    'set generator GEN_LOCS to 119;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  //TabelasParaReordenar.Add('MDFE');
end;

procedure AtualizarVersao205;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='205';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CONTAS ADD CON_BAIXACODIGO DN_NUMERO;'+
    'ALTER TABLE BOLETOS ADD BOL_BAIXACODIGO DN_NUMERO;'+

    'update CONTAS set CON_BAIXACODIGO=2 where CON_BANCO=85;'+  //cecred.
    'update CONTAS set CON_BAIXACODIGO=1 where CON_BANCO=104;'+ //caixa.
    'update CONTAS set CON_BAIXACODIGO=0 where CON_BANCO=756;'+ //sicoob.
    'update CONTAS set CON_BAIXACODIGO=1, CON_DIASBAIXA=60 where CON_BANCO=748;'+ //sicredi.
    'update CONTAS set CON_BAIXACODIGO=0 where CON_BANCO=341;'+ //itau.
    'update CONTAS set CON_BAIXACODIGO=1 where CON_BAIXACODIGO is null;'+ //demais contas.

    'update BOLETOS set BOL_BAIXACODIGO=1;'+
    //'update BOLETOS set BOL_BAIXACODIGO=2 where BOL_BANCO=85;'+
    //'update BOLETOS set BOL_BAIXACODIGO=1 where BOL_BANCO=104;'+
    //'update BOLETOS set BOL_BAIXACODIGO=0 where BOL_BANCO=756;'+
    //'update BOLETOS set BOL_BAIXACODIGO=1 where BOL_BANCO=748;'+
    //'update BOLETOS set BOL_BAIXACODIGO=0 where BOL_BANCO=341;'+

    'update LOCS set LOS_PICKLIST=''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME;PEDIDO CLIENTE;'' where LOS_TELA=''Vendas'';'+
    'delete from SQLS;'+
    'delete from FORMS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  ZapFiles(GetTempDir+'Form*.txt'); //elimina as info de tamanho do form para o usuário logado.

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  //ReordenarTabela('MDFE');
end;

procedure AtualizarVersao204;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='204';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE MDFE'+
    '  ADD MDF_CLIENTE DN_CODIGO,'+
    '  ADD MDF_CNPJ DN_CNPJIECPFRG,'+
    '  ADD MDF_NOME DN_NOME,'+
    '  ADD MDF_CPF DN_CNPJIECPFRG,'+
    '  ADD MDF_SEGURO DN_TOMADOR,'+
    '  ADD MDF_SEGUROAPOLICE DN_APOLICE,'+
    '  ADD MDF_SEGUROAVERBACAO DN_AVERBACAO,'+
    '  ADD MDF_SEGUROCNPJ DN_CNPJIECPFRG,'+
    '  ADD MDF_SEGUROCPF DN_CNPJIECPFRG,'+
    '  ADD MDF_SEGURADORA DN_CODIGONULL,'+
    '  ADD MDF_SEGURADORANOME DN_NOME,'+
    '  ADD MDF_SEGURADORACNPJ DN_CNPJIECPFRG,'+
    '  ADD MDF_TIPOTRANSPORTADOR DN_ALEATORIO;'+

    'update MDFE set MDF_CLIENTE=1, MDF_TIPOTRANSPORTADOR='+QuotedStr('1 - ETC')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
  //ReordenarTabela('MDFE');
  TabelasParaReordenar.Add('MDFE');
end;

procedure AtualizarVersao203;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='203';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_HORADEC AS NUMERIC(6,2);'+
    'CREATE SEQUENCE GEN_HORAS;'+

    'CREATE TABLE HORAS ('+
    '  HOR_CODIGO DN_CODIGO,'+
    '  HOR_DESCRICAO DN_DESCRICAO,'+
    '  HOR_DTATUALIZACAO DN_DATA,'+
    '  HOR_DTCADASTRO DN_DATA,'+
    '  HOR_QUANTIDADE DN_HORADEC NOT NULL,'+
    '  HOR_SALDOANTERIOR DN_HORADEC,'+
    '  HOR_SALDOPOSTERIOR DN_HORADEC,'+
    '  HOR_TRANSACAO DN_BOOLEAN,'+
    '  HOR_USUARIO DN_LOGIN,'+
    '  HOR_VENDEDOR DN_CODIGO);'+

    'ALTER TABLE HORAS ADD CONSTRAINT PK_HOR_CODIGO PRIMARY KEY (HOR_CODIGO);'+
    'ALTER TABLE HORAS ADD CONSTRAINT FK_HOR_VENDEDOR FOREIGN KEY (HOR_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'ALTER TABLE VENDEDORES ADD VEN_SALDOHORAS DN_HORADEC;'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormHoras'',''Cadastro de Banco de Horas'',''A'',100);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (118,''Banco de Horas'',''TFormHoras'',''VENDEDOR'',''CODIGO;DATA INICIAL;DATA FINAL;CODIGO VENDEDOR;VENDEDOR;'');'+
    'set generator GEN_LOCS to 118;'+

    'update VENDEDORES set VEN_SALDOHORAS=0;'

  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
  //ReordenarTabela('VENDEDORES');
  TabelasParaReordenar.Add('VENDEDORES');
end;

procedure AtualizarVersao202;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='202';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_PRESSAO AS VARCHAR(10);'+
    'CREATE DOMAIN DN_TEMPERATURA AS NUMERIC(5,2);'+
    'CREATE DOMAIN DN_DIASEMANA AS VARCHAR(10);'+

    'CREATE TABLE MEDICOES ('+
    '  MED_BATIMENTOS DN_NUMERO,'+
    '  MED_CODIGO DN_CODIGO,'+
    '  MED_CLIENTE DN_CODIGO,'+
    '  MED_DTATUALIZACAO DN_DATA,'+
    '  MED_DTCADASTRO DN_DATA,'+
    '  MED_GLICEMIA DN_NUMERO,'+
    '  MED_HRCADASTRO DN_HORA,'+
    '  MED_PESO DN_PESO,'+
    '  MED_PRESSAO DN_PRESSAO,'+
    '  MED_SATURACAO DN_NUMERO,'+
    '  MED_TEMPERATURA DN_TEMPERATURA,'+
    '  MED_USUARIO DN_LOGIN);'+

    'ALTER TABLE MEDICOES ADD CONSTRAINT PK_MED_CODIGO PRIMARY KEY (MED_CODIGO);'+
    'ALTER TABLE MEDICOES ADD CONSTRAINT FK_MED_CLIENTE FOREIGN KEY (MED_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+

    'CREATE SEQUENCE GEN_MEDICOES;'+

    'CREATE TABLE EVOLUCOES ('+
    '  EVO_CODIGO DN_CODIGO,'+
    '  EVO_CLIENTE DN_CODIGO,'+
    '  EVO_DTATUALIZACAO DN_DATA,'+
    '  EVO_DTCADASTRO DN_DATA,'+
    '  EVO_DESCRICAO DN_BLOBTEXTO,'+
    '  EVO_HRCADASTRO DN_HORA,'+
    '  EVO_STATUS DN_BOOLEAN,'+
    '  EVO_USUARIO DN_LOGIN,'+
    '  EVO_VENDEDOR DN_CODIGO);'+

    'ALTER TABLE EVOLUCOES ADD CONSTRAINT PK_EVO_CODIGO PRIMARY KEY (EVO_CODIGO);'+
    'ALTER TABLE EVOLUCOES ADD CONSTRAINT FK_EVO_CLIENTE FOREIGN KEY (EVO_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE EVOLUCOES ADD CONSTRAINT FK_EVO_VENDEDOR FOREIGN KEY (EVO_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO)ON UPDATE CASCADE;'+

    'CREATE SEQUENCE GEN_EVOLUCOES;'+

    'CREATE TABLE MEDICAMENTOS ('+
    '  MTO_CODIGO DN_CODIGO,'+
    '  MTO_DTATUALIZACAO DN_DATA,'+
    '  MTO_DTCADASTRO DN_DATA,'+
    '  MTO_NOME DN_NOME,'+
    '  MTO_STATUS DN_BOOLEAN,'+
    '  MTO_USUARIO DN_LOGIN);'+

    'ALTER TABLE MEDICAMENTOS ADD CONSTRAINT PK_MTO_CODIGO PRIMARY KEY (MTO_CODIGO);'+

    'CREATE SEQUENCE GEN_MEDICAMENTOS;'+

    'CREATE TABLE RECEITUARIOS ('+
    '  RCT_CODIGO DN_CODIGO,'+
    '  RCT_CLIENTE DN_CODIGO,'+
    '  RCT_DIASEMANA DN_DIASEMANA,'+
    '  RCT_DOSAGEM DN_DESCRICAO,'+
    '  RCT_DTATUALIZACAO DN_DATA,'+
    '  RCT_DTCADASTRO DN_DATA,'+
    '  RCT_HORA01 DN_BOOLEAN,'+
    '  RCT_HORA02 DN_BOOLEAN,'+
    '  RCT_HORA03 DN_BOOLEAN,'+
    '  RCT_HORA04 DN_BOOLEAN,'+
    '  RCT_HORA05 DN_BOOLEAN,'+
    '  RCT_HORA06 DN_BOOLEAN,'+
    '  RCT_HORA07 DN_BOOLEAN,'+
    '  RCT_HORA08 DN_BOOLEAN,'+
    '  RCT_HORA09 DN_BOOLEAN,'+
    '  RCT_HORA10 DN_BOOLEAN,'+
    '  RCT_HORA11 DN_BOOLEAN,'+
    '  RCT_HORA12 DN_BOOLEAN,'+
    '  RCT_HORA13 DN_BOOLEAN,'+
    '  RCT_HORA14 DN_BOOLEAN,'+
    '  RCT_HORA15 DN_BOOLEAN,'+
    '  RCT_HORA16 DN_BOOLEAN,'+
    '  RCT_HORA17 DN_BOOLEAN,'+
    '  RCT_HORA18 DN_BOOLEAN,'+
    '  RCT_HORA19 DN_BOOLEAN,'+
    '  RCT_HORA20 DN_BOOLEAN,'+
    '  RCT_HORA21 DN_BOOLEAN,'+
    '  RCT_HORA22 DN_BOOLEAN,'+
    '  RCT_HORA23 DN_BOOLEAN,'+
    '  RCT_HORA24 DN_BOOLEAN,'+
    '  RCT_MEDICAMENTO DN_CODIGO,'+
    '  RCT_USUARIO DN_LOGIN);'+

    'ALTER TABLE RECEITUARIOS ADD CONSTRAINT PK_RCT_CODIGO PRIMARY KEY (RCT_CODIGO);'+
    'ALTER TABLE RECEITUARIOS ADD CONSTRAINT FK_RCT_MEDICAMENTO FOREIGN KEY (RCT_MEDICAMENTO) REFERENCES MEDICAMENTOS(MTO_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE RECEITUARIOS ADD CONSTRAINT FK_RCT_CLIENTE FOREIGN KEY (RCT_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE SEQUENCE GEN_RECEITUARIOS;'+

    'insert into MODULOS (MOD_CODIGO, MOD_NOME, MOD_MENUITEM, MOD_BOTAO, MOD_ACESSO) values (120,''Saúde'',''Saúde'','''',''N'');'+
    'set generator GEN_MODULOS to 120;'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormEvolucoes'',''Cadastro de Evolucoes'',''I'',120);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormMedicoes'',''Cadastro de Medicoes'',''I'',120);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormMedicamentos'',''Cadastro de Medicamentos'',''I'',120);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormReceituarios'',''Cadastro de Receituarios'',''I'',120);'+

    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (114,''Evolucoes'',''TFormEvolucoes'',''DATA INICIAL'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;CLIENTE;CODIGO VENDEDOR;VENDEDOR;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (115,''Medicoes'',''TFormMedicoes'',''DATA INICIAL'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;CLIENTE;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (116,''Medicamentos'',''TFormMedicamentos'',''NOME'',''CODIGO;NOME;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (117,''Receituarios'',''TFormReceituarios'',''NOME'',''CODIGO;CODIGO MEDICAMENTO;MEDICAMENTO;CODIGO CLIENTE;CLIENTE;'');'+
    'set generator GEN_LOCS to 117;'+

    'update LOCS set LOS_PICKLIST=''CODIGO;NUM DOCTO;DATA INICIAL;CODIGO CLIENTE;CLIENTE;VALOR;'' where LOS_TELA=''Fluxo de Caixa'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
  TabelasParaReordenar.Add('RECEBER');
end;

procedure AtualizarVersao201;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='201';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE RECEBER ADD REE_BOLETO DN_NUMERO;'+

    'update LOCS set LOS_PICKLIST=''CODIGO;NUM DOCTO;VENDA;BOLETO;DATA INICIAL;CODIGO CLIENTE;CLIENTE;VALOR;'' where LOS_TELA=''Contas a Receber'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  TabelasParaReordenar.Add('RECEBER');
end;

procedure AtualizarVersao200;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='200';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_CNAB AS VARCHAR(8);'+

    'ALTER TABLE CONTAS'+
    '  ADD CON_PROTESTOCODIGO DN_NUMERO,'+
    '  ADD CON_LAYOUT DN_CNAB,'+
    '  ALTER CON_LOCALPAGTO TYPE DN_DESCRICAOPLUS;'+

    'ALTER TABLE BOLETOS ADD BOL_PROTESTOCODIGO DN_NUMERO;'+

    'UPDATE BOLETOS SET BOL_PROTESTOCODIGO=3;'+
    'UPDATE CONTAS SET CON_PROTESTOCODIGO=3, CON_LAYOUT='+QuotedStr('CNAB 240')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  TabelasParaReordenar.Add('CONTAS');
  TabelasParaReordenar.Add('BOLETOS');
end;

procedure AtualizarVersao199;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='199';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'insert into BANCOS (BAN_CODIGO, BAN_NOME, BAN_DTCADASTRO, BAN_DTATUALIZACAO, BAN_STATUS, BAN_USUARIO) values (0,''CAIXA INTERNO'',''2017-06-23'',''2017-06-23'',''A'',''RUNTIME'');'+
    'insert into CONTAS (CON_CODIGO, CON_NOME, CON_BANCO, CON_ESPECIEDOC, CON_SALDO, CON_STATUS, CON_DTATUALIZACAO, CON_DTCADASTRO, CON_USUARIO) values (gen_id(GEN_CONTAS,1),''CAIXA LOCAL'',0,''99 - XX - OUTROS'',0,''A'',''2017-06-23'',''2017-06-23'',''RUNTIME'');'+

    'update RECEBER set REE_CONTA=gen_id(GEN_CONTAS,0) where REE_CONTA is null;'+
    'update RECEBER set REE_CONTA=gen_id(GEN_CONTAS,0) where REE_CONTA not in (select CON_CODIGO from CONTAS);'+

    'update PAGAR set PAG_CONTA=gen_id(GEN_CONTAS,0) where PAG_CONTA is null;'+
    'update PAGAR set PAG_CONTA=gen_id(GEN_CONTAS,0) where PAG_CONTA not in (select CON_CODIGO from CONTAS);'+

    'update CAIXAMOV set CAI_CONTA=gen_id(GEN_CONTAS,0) where CAI_CONTA is null;'+
    'update CAIXAMOV set CAI_CONTA=gen_id(GEN_CONTAS,0) where CAI_CONTA not in (select CON_CODIGO from CONTAS);'+

    'update CLIENTES set CLI_ESTADOCIVIL=''NAO TEM'' where CLI_ESTADOCIVIL is null;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE RECEBER '+
    '  DROP REE_DESTINOBAIXA,'+
    '  ALTER REE_CONTA TYPE DN_CODIGO;'+
    'ALTER TABLE RECEBER ADD CONSTRAINT FK_REE_CONTA FOREIGN KEY (REE_CONTA) REFERENCES CONTAS(CON_CODIGO) ON UPDATE CASCADE;'+

    'ALTER TABLE PAGAR '+
    '  DROP PAG_DESTINOBAIXA,'+
    '  ALTER PAG_CONTA TYPE DN_CODIGO;'+
    'ALTER TABLE PAGAR ADD CONSTRAINT FK_PAG_CONTA FOREIGN KEY (PAG_CONTA) REFERENCES CONTAS(CON_CODIGO) ON UPDATE CASCADE;'+

    'ALTER TABLE CAIXAMOV ALTER CAI_CONTA TYPE DN_CODIGO;'+
    'ALTER TABLE CAIXAMOV ADD CONSTRAINT FK_CAI_CONTA FOREIGN KEY (CAI_CONTA) REFERENCES CONTAS(CON_CODIGO) ON UPDATE CASCADE;'+

    'ALTER TABLE PARAMETROS '+
    '  DROP PAR_REE_DESTINOBAIXA,'+
    '  DROP PAR_PAG_DESTINOBAIXA,'+
    '  ADD PAR_CONTALOCALPADRAO DN_NUMERO;'+
    'update PARAMETROS set PAR_CONTALOCALPADRAO=gen_id(GEN_CONTAS,0);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  TabelasParaReordenar.Add('CONTAS');
  TabelasParaReordenar.Add('PAGAR');
  TabelasParaReordenar.Add('RECEBER');
  TabelasParaReordenar.Add('CAIXAMOV');
  TabelasParaReordenar.Add('PARAMETROS');
end;

procedure AtualizarVersao198;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='198';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_MATRICULASEMMATERIAL DN_BOOLEAN;'+
    'UPDATE PARAMETROS SET PAR_MATRICULASEMMATERIAL=''N'' where PAR_CODIGO=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  TabelasParaReordenar.Add('PARAMETROS');
end;

procedure AtualizarVersao197;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='197';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE BOLETOS'+
    '  ADD BOL_DESCTIPO DN_DESCRICAO,'+
    '  ADD BOL_DESCPORC DN_VALOR,'+
    '  ADD BOL_DTDESCONTO DN_DATA,'+
    '  ADD BOL_DESCVALOR DN_VALOR;'+

    'UPDATE BOLETOS SET BOL_DESCVALOR=0, BOL_DESCPORC=0, BOL_DESCTIPO='+QuotedStr('0 - SEM DESCONTO')+', BOL_DTDESCONTO=BOL_DTVENCIMENTO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  TabelasParaReordenar.Add('BOLETOS');
end;

procedure AtualizarVersao196;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='196';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE SEQUENCE GEN_MARKUPS;'+
    'CREATE SEQUENCE GEN_MARKUPSITENS;'+

    'CREATE TABLE MARKUPS ('+
    '  MKP_CODIGO DN_CODIGO,'+
    '  MKP_DESCRICAO DN_DESCRICAO,'+
    '  MKP_DTCADASTRO DN_DATA,'+
    '  MKP_DTATUALIZACAO DN_DATA,'+
    '  MKP_USUARIO DN_LOGIN,'+
    '  MKP_MARKUP DN_VALOR);'+

    'ALTER TABLE MARKUPS ADD CONSTRAINT PK_MKP_CODIGO PRIMARY KEY (MKP_CODIGO);'+

    'CREATE TABLE MARKUPSITENS ('+
    '  MKI_CODIGO DN_CODIGO,'+
    '  MKI_MARKUP DN_CODIGO,'+
    '  MKI_DESCRICAO DN_DESCRICAO,'+
    '  MKI_PORCENTAGEM DN_VALOR);'+

    'ALTER TABLE MARKUPSITENS ADD CONSTRAINT PK_MKI_CODIGO PRIMARY KEY (MKI_CODIGO);'+
    'ALTER TABLE MARKUPSITENS ADD CONSTRAINT FK_MKI_MARKUP FOREIGN KEY (MKI_MARKUP) REFERENCES MARKUPS(MKP_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'ALTER TABLE PRODUTOS'+
    '  ADD PRO_MARKUP DN_VALOR,'+
    '  ADD PRO_MARKUPCODIGO DN_NUMERO;'+

    'ALTER TABLE PARAMETROS'+
    '  DROP PAR_LOCALFOTOSFILMES,'+
    '  ADD PAR_NFEEMAILTRANSP DN_BOOLEAN,'+
    '  ADD PAR_USARMARKUP DN_BOOLEAN,'+
    '  ADD PAR_PROFAMILIA DN_NUMERO,'+
    '  ADD PAR_PROGRUPO DN_NUMERO,'+
    '  ADD PAR_PROMARCA DN_NUMERO,'+
    '  ADD PAR_PROFORNECEDOR DN_NUMERO,'+
    '  ADD PAR_PROUNIDADE DN_UNIDADE;'+

    'ALTER TABLE VENDAS'+
    '  ADD VED_CONFERIDO DN_BOOLEAN,'+
    '  ADD VED_CONFERIDODATA DN_DATA,'+
    '  ADD VED_CONFERIDOPOR DN_LOGIN,'+
    '  ADD VED_TRANSPEMAIL DN_EMAIL;'+

    'ALTER TABLE NFE ADD NFE_TRANSPEMAIL DN_EMAIL;'+
    'ALTER TABLE NOTAS ADD NOT_TRANSPEMAIL DN_EMAIL;'+

    'ALTER TABLE LOCACOES'+
    '  DROP LOC_TIPO,'+
    '  DROP LOC_FILME,'+
    '  ALTER LOC_OBJETO TYPE DN_CODIGO;'+

    'ALTER TABLE LOCACOES ADD CONSTRAINT FK_LOC_OBJETO FOREIGN KEY (LOC_OBJETO) REFERENCES OBJETOS(OBJ_CODIGO) ON UPDATE CASCADE;'+

    'UPDATE VENDAS SET VED_CONFERIDO=''N'';'+

    'UPDATE PARAMETROS SET PAR_USARMARKUP=''N'', PAR_PROFAMILIA=1, PAR_PROGRUPO=1, PAR_PROFORNECEDOR=1, PAR_PROMARCA=1, PAR_PROUNIDADE=''UND'', PAR_NFEEMAILTRANSP=''N'' WHERE PAR_CODIGO=1;'+
    'UPDATE PRODUTOS SET PRO_MARKUP=1, PRO_MARKUPCODIGO=0;'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormMarkups'',''Cadastro de Markups'',''A'',1);'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormProdutosComp'',''Cadastro de Produtos - Composicao'',''A'',1);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (113,''Markups'',''TFormMarkups'',''DESCRICAO'',''CODIGO;DESCRICAO;'');'+
    'set generator GEN_LOCS to 113;'+

    'INSERT INTO MARKUPS (MKP_CODIGO, MKP_DESCRICAO, MKP_MARKUP, MKP_DTCADASTRO, MKP_DTATUALIZACAO, MKP_USUARIO) VALUES (1,''MARKUP PADRAO'',0.6,''2017-04-15'',''2017-04-15'',''RUNTIME'');'+
    'INSERT INTO MARKUPSITENS (MKI_CODIGO, MKI_MARKUP, MKI_DESCRICAO, MKI_PORCENTAGEM) VALUES (1,1,''MARGEM DE LUCRO DESEJADO'',60);'+
    'SET GENERATOR GEN_MARKUPS TO 1;'+
    'SET GENERATOR GEN_MARKUPSITENS TO 1;'+

    //retira modulo de locadora...
    'ALTER TABLE FILMES DROP CONSTRAINT FK_FIL_MIDIA;'+
    'ALTER TABLE FILMES DROP CONSTRAINT FK_FIL_GENERO;'+
    'ALTER TABLE FILMES DROP CONSTRAINT PK_FIL_CODIGO;'+
    'ALTER TABLE MIDIAS DROP CONSTRAINT PK_MID_CODIGO;'+
    'ALTER TABLE GENEROS DROP CONSTRAINT PK_GEN_CODIGO;'+
    'DROP SEQUENCE GEN_GENEROS;'+
    'DROP SEQUENCE GEN_MIDIAS;'+
    'DROP SEQUENCE GEN_FILMES;'+
    'DROP TABLE MIDIAS;'+
    'DROP TABLE GENEROS;'+
    'DROP TABLE FILMES;'+

    'DELETE FROM TELAS WHERE TEL_NOMEFORM=''TFormGeneros'';'+
    'DELETE FROM TELAS WHERE TEL_NOMEFORM=''TFormMidias'';'+
    'DELETE FROM TELAS WHERE TEL_NOMEFORM=''TFormFilmes'';'+
    'DELETE FROM TELAS WHERE TEL_NOMEFORM=''TFormLocacoes'';'+
    'UPDATE TELAS SET TEL_NOMEFORM=''TFormLocacoes'' WHERE TEL_NOMEFORM=''TFormLocacoesOBJ'';'+
    'DELETE FROM MODULOS WHERE MOD_CODIGO=7;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
  //DataMod.ReordenarTabelas:=True;
  TabelasParaReordenar.Add('PARAMETROS');
  TabelasParaReordenar.Add('PRODUTOS');
  TabelasParaReordenar.Add('LOCACOES');
  TabelasParaReordenar.Add('MARKUPS');
  TabelasParaReordenar.Add('MARKUPSITENS');
  TabelasParaReordenar.Add('NFE');
  TabelasParaReordenar.Add('NOTAS');
  TabelasParaReordenar.Add('VENDAS');
end;

procedure AtualizarVersao195;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='195';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_SERVICOSSERIEMASK DN_SERIE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  //DataMod.ReordenarTabelas:=True;
  TabelasParaReordenar.Add('PARAMETROS');
end;

procedure AtualizarVersao194;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='194';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_NFSESERVICO DN_CODIGOCHAR;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  //DataMod.ReordenarTabelas:=True;
  TabelasParaReordenar.Add('PARAMETROS');
end;

procedure AtualizarVersao193;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='193';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE BOLETOS'+
    '  ADD BOL_VALORMULTA DN_VALOR,'+
    '  ADD BOL_VALORJUROS DN_VALOR;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
  TabelasParaReordenar.Add('BOLETOS');
end;

procedure AtualizarVersao192;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='192';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFSE '+
    '  ADD NFS_RETENCAORESP DN_CONDICAO,'+
    '  ADD NFS_VALORCREDITO DN_VALOR;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_NFSERETENCAO DN_DESCRICAO,'+
    '  ADD PAR_NFSERETENCAORESP DN_CONDICAO;'+

    'UPDATE PARAMETROS SET PAR_NFSERETENCAO='+QuotedStr('N - NORMAL')+', PAR_NFSERETENCAORESP='+QuotedStr('1 - PRESTADOR')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
  TabelasParaReordenar.Add('NFSE');
  TabelasParaReordenar.Add('PARAMETROS');
end;

procedure AtualizarVersao191;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='191';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS '+
    '  DROP PAR_NFEEMAILHTML,'+
    '  DROP PAR_NFEEMAILCONTA,'+
    '  DROP PAR_NFEEMAILDLL,'+
    '  DROP PAR_CTEEMAILHTML,'+
    '  DROP PAR_CTEEMAILCONTA,'+
    '  DROP PAR_NFSEEMAILCONTA,'+
    '  ADD PAR_CTECCEEMAILASSUNTO DN_NUMERO,'+
    '  ADD PAR_NFECCEEMAILASSUNTO DN_NUMERO,'+
    '  ADD PAR_NFSESERIE DN_SERIE;'+

    'ALTER TABLE NFSE '+
    '  ADD NFS_LINK DN_DESCRICAOLONGA,'+
    '  ADD NFS_LOTE DN_NUMERO,'+
    '  ALTER NFS_SERIE TYPE DN_SERIE;'+

    'CREATE TABLE NFSECODIGO (NFS_CODIGO DN_CODIGO);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
  TabelasParaReordenar.Add('NFSE');
  TabelasParaReordenar.Add('PARAMETROS');
end;

procedure AtualizarVersao190;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='190';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS '+
    '  ADD PAR_NFSEINFOADICIONAIS DN_BLOBTEXTO,'+
    '  ADD PAR_IMPRIMIRCANHOTOPEDIDO DN_BOOLEAN;'+

    'UPDATE PARAMETROS SET PAR_IMPRIMIRCANHOTOPEDIDO='+QuotedStr('N')+';'+
    'update LOCS set LOS_PICKLIST=''CEP;NOME;COD. CIDADE;CIDADE;'' where LOS_TELA=''Ruas'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao189;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='189';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER DOMAIN DN_DATAHORA TYPE VARCHAR(30) CHARACTER SET WIN1252;'+
    'ALTER TABLE NFSE ADD NFS_NUMERONOTA DN_NUMERO;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_NFETIPOCONSUMIDOR DN_TIPOCONSUMIDOR,'+
    '  ADD PAR_NFETIPOATENDIMENTO DN_TIPOATENDIMENTO;'+

    'ALTER TABLE PRODUTOS ADD PRO_CFOPFORA DN_NUMERO;'+
    'UPDATE PRODUTOS SET PRO_CFOPFORA=PRO_CFOP+1000;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao188;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='188';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NFSE'+
    '  ADD NFS_CONSULTADA DN_BOOLEAN,'+
    '  ADD NFS_RECIBO DN_PROTOCOLO,'+
    '  ADD NFS_RECIBODH DN_DATAHORA;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao187;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='187';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CONTAS ADD CON_MODALIDADE DN_NUMERO;'+
    'ALTER TABLE BOLETOS ADD BOL_MODALIDADE DN_NUMERO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao186;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='186';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE SEQUENCE GEN_NFSE;'+
    'CREATE SEQUENCE GEN_NFSEITENS;'+
    'CREATE DOMAIN DN_CODIGOCHAR AS VARCHAR(10);'+

    'ALTER DOMAIN DN_NOSSONUMERO TYPE VARCHAR(30) CHARACTER SET WIN1252;'+

    'ALTER TABLE BOLETOS ADD BOL_OBSERVACOES DN_BLOBTEXTO;'+

    'ALTER TABLE ISS '+
    '  ADD ISS_ALIQUOTAMUNICIPAL DN_VALOR,'+
    '  ADD ISS_ALIQUOTAESTADUAL DN_VALOR,'+
    '  ADD ISS_ALIQUOTAIMPORTACAO DN_VALOR,'+
    '  ADD ISS_ALIQUOTANACIONAL DN_VALOR;'+
    'ALTER TABLE ISS ALTER ISS_DESCRICAO TYPE DN_TEXTOLONGO;'+

    {'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''01.01'',''2.500'',''ANALISE E DESENVOLVIMENTO DE SISTEMAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''01.02'',''2.500'',''PROGRAMACAO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''01.03'',''2.500'',''PROCESSAMENTO DE DADOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''01.04'',''2.500'',''ELABORACAO DE PROGRAMAS DE COMPUTADORES, INCLUSIVE DE JOGOS ELETRONICOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''01.05'',''2.500'',''LICENCIAMENTO OU CESSAO DE DIREITO DE USO DE PROGRAMAS DE COMPUTACAO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''01.06'',''2.500'',''ASSESSORIA E CONSULTORIA EM INFORMATICA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''01.07'',''2.500'',''SUPORTE TECNICO EM INFORMATICA, INCLUSIVE INSTALACAO, CONFIGURACAO E MANUTENCAO DE PROGRAMAS DE COMPUTACAO E BANCOS DE DADOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''01.08'',''2.500'',''PLANEJAMENTO, CONFECCAO, MANUTENCAO E ATUALIZACAO DE PAGINAS ELETRONICAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''02.01'',''2.500'',''SERVICOS DE PESQUISAS E DESENVOLVIMENTO DE QUALQUER NATUREZA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''03.01'',''0.000'',''(VETADO) CONFORME LEI COMPLEMENTAR FEDERAL NR. 116/2003'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''03.02'',''2.000'',''CESSAO DE DIREITO DE USO DE MARCAS E DE SINAIS DE PROPAGANDA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''03.03'',''2.500'',''EXPLORACAO DE SALOES DE FESTAS, CENTRO DE CONVENCOES, ESCRITORIOS VIRTUAIS, STANDS, QUADRAS ESPORTIVAS, ESTADIOS, GINASIOS, AUDITORIOS,'+
    'CASAS DE ESPETACULOS, PARQUES DE DIVERSOES, CANCHAS E CONGENERES, PARA REALIZACAO DE EVENTOS OU NEGOCIOS DE QUALQUER NATUREZA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''03.04'',''5.000'',''LOCACAO, SUBLOCACAO, ARRENDAMENTO, DIREITO DE PASSAGEM OU PERMISSAO DE USO, COMPARTILHADO OU NAO, DE FERROVIA, RODOVIA, POSTES, CABOS, DUTOS'+
    ' E CONDUTOS DE QUALQUER NATUREZA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''03.05'',''5.000'',''CESSAO DE ANDAIMES, PALCOS, COBERTURAS E OUTRAS ESTRUTURAS DE USO TEMPORARIO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.01'',''3.000'',''MEDICINA E BIOMEDICINA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.02'',''3.000'',''ANALISES CLINICAS, PATOLOGIA, ELETRICIDADE MEDICA, RADIOTERAPIA, QUIMIOTERAPIA, ULTRASSONOGRAFIA, RESSONANCIA MAGNETICA, RADIOLOGIA, TOMOGRAFIA E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.03'',''2.000'',''HOSPITAIS, CLINICAS, LABORATORIOS, SANATORIOS, MANICOMIOS, CASAS DE SAUDE, PRONTOS-SOCORROS, AMBULATORIOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.04'',''3.000'',''INSTRUMENTACAO CIRURGICA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.05'',''3.000'',''ACUPUNTURA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.06'',''3.000'',''ENFERMAGEM, INCLUSIVE SERVICOS AUXILIARES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.07'',''3.000'',''SERVICOS FARMACEUTICOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.08'',''3.000'',''TERAPIA OCUPACIONAL, FISIOTERAPIA E FONOAUDIOLOGIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.09'',''3.000'',''TERAPIAS DE QUALQUER ESPECIE DESTINADAS AO TRATAMENTO FISICO, ORGANICO E MENTAL.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.10'',''3.000'',''NUTRICAO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.11'',''3.000'',''OBSTETRICIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.12'',''3.000'',''ODONTOLOGIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.13'',''3.000'',''ORTOPTICA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.14'',''3.000'',''PROTESES SOB ENCOMENDA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.15'',''3.000'',''PSICANALISE.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.16'',''3.000'',''PSICOLOGIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.17'',''3.000'',''CASAS DE REPOUSO E DE RECUPERACAO, CRECHES, ASILOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.18'',''3.000'',''INSEMINACAO ARTIFICIAL, FERTILIZACAO IN VITRO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.19'',''3.000'',''BANCOS DE SANGUE, LEITE, PELE, OLHOS, OVULOS, SEMEN E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.20'',''3.000'',''COLETA DE SANGUE, LEITE, TECIDOS, SEMEN, ORGAOS E MATERIAIS BIOLOGICOS DE QUALQUER ESPECIE.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.21'',''3.000'',''UNIDADE DE ATENDIMENTO, ASSISTENCIA OU TRATAMENTO MOVEL E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.22'',''2.000'',''PLANOS DE MEDICINA DE GRUPO OU INDIVIDUAL E CONVENIOS PARA PRESTACAO DE ASSISTENCIA MEDICA, HOSPITALAR, ODONTOLOGICA E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''04.23'',''2.000'',''OUTROS PLANOS DE SAUDE QUE SE CUMPRAM ATRAVES DE SERVICOS DE TERCEIROS CONTRATADOS, CREDENCIADOS, COOPERADOS OU APENAS PAGOS PELO OPERADOR DO PLANO MEDIANTE '+
    'INDICACAO DO BENEFICIARIO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''05.01'',''3.000'',''MEDICINA VETERINARIA E ZOOTECNIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''05.02'',''3.000'',''HOSPITAIS, CLINICAS, AMBULATORIOS, PRONTOS-SOCORROS E CONGENERES, NA AREA VETERINARIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''05.03'',''3.000'',''LABORATORIOS DE ANALISE NA AREA VETERINARIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''05.04'',''3.000'',''INSEMINACAO ARTIFICIAL, FERTILIZACAO IN VITRO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''05.05'',''3.000'',''BANCOS DE SANGUE E DE ORGAOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''05.06'',''3.000'',''COLETA DE SANGUE, LEITE, TECIDOS, SEMEN, ORGAOS E MATERIAIS BIOLOGICOS DE QUALQUER ESPECIE.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''05.07'',''3.000'',''UNIDADE DE ATENDIMENTO, ASSISTENCIA OU TRATAMENTO MOVEL E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''05.08'',''3.000'',''GUARDA, TRATAMENTO, AMESTRAMENTO, EMBELEZAMENTO, ALOJAMENTO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''05.09'',''3.000'',''PLANOS DE ATENDIMENTO E ASSISTENCIA MEDICO-VETERINARIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''06.01'',''2.000'',''BARBEARIA, CABELEIREIROS, MANICUROS, PEDICUROS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''06.02'',''3.000'',''ESTETICISTAS, TRATAMENTO DE PELE, DEPILACAO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''06.03'',''3.000'',''BANHOS, DUCHAS, SAUNA, MASSAGENS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''06.04'',''3.000'',''GINASTICA, DANCA, ESPORTES, NATACAO, ARTES MARCIAIS E DEMAIS ATIVIDADES FISICAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''06.05'',''3.000'',''CENTROS DE EMAGRECIMENTO, SPA E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.01'',''3.000'',''ENGENHARIA, AGRONOMIA, AGRIMENSURA, ARQUITETURA, GEOLOGIA, URBANISMO,PAISAGISMO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.02'',''2.000'',''EXECUCAO, POR ADMINISTRACAO, EMPREITADA OU SUBEMPREITADA, DE OBRAS DECONSTRUCAO CIVIL, HIDRAULICA OU ELETRICA E DE OUTRAS OBRAS SEMELHANTES, INCLUSIVE SONDAGEM, '+
    'PERFURACAO DE POCOS, ESCAVACAO, DRENAGEM E IRRIGACAO, TERRAPLANAGEM, PAVIMENTACAO, CONCRETAGEM E A INSTALACAO E MONTAGEM DE PRODUTOS, PECAS E EQUIPAMENTOS (EXCETO O FORNECIMENTO DE MERCADORIAS PRODUZIDAS PELO PRESTADOR DE SERVICOS FORA DO LOCAL '+
    'DA PRESTACAODOS SERVICOS, QUE FICA SUJEITO AO ICMS).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.03'',''2.000'',''ELABORACAO DE PLANOS DIRETORES, ESTUDOS DE VIABILIDADE, ESTUDOS ORGANIZACIONAIS E OUTROS, RELACIONADOS COM OBRAS E SERVICOS DE ENGENHARIA, ELABORACAO DE '+
    'ANTEPROJETOS, PROJETOS BASICOS E PROJETOS EXECUTIVOS PARA TRABALHOS DE ENGENHARIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.04'',''2.000'',''DEMOLICAO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.05'',''2.000'',''REPARACAO, CONSERVACAO E REFORMA DE EDIFICIOS, ESTRADAS, PONTES, PORTOS E CONGENERES (EXCETO O FORNECIMENTO DE MERCADORIAS PRODUZIDAS PELO PRESTADOR DOS '+
    'SERVICOS, FORA DO LOCAL DA PRESTACAO DOS SERVICOS, QUE FICA SUJEITO AO ICMS).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.06'',''3.000'',''COLOCACAO E INSTALACAO DE TAPETES, CARPETES, ASSOALHOS, CORTINAS, REVESTIMENTOS DE PAREDE, VIDROS, DIVISORIAS, PLACAS DE GESSO E CONGENERES, COM MATERIAL '+
    'FORNECIDO PELO TOMADOR DO SERVICO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.07'',''3.000'',''RECUPERACAO, RASPAGEM, POLIMENTO E LUSTRACAO DE PISOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.08'',''3.000'',''CALAFETACAO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.09'',''5.000'',''VARRICAO, COLETA, REMOCAO, INCINERACAO, TRATAMENTO, RECICLAGEM, SEPARACAO E DESTINACAO FINAL DE LIXO, REJEITOS E OUTROS RESIDUOS QUAISQUER.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.10'',''5.000'',''LIMPEZA, MANUTENCAO E CONSERVACAO DE VIAS E LOGRADOUROS PUBLICOS, IMOVEIS, CHAMINES, PISCINAS, PARQUES, JARDINS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.11'',''3.000'',''DECORACAO E JARDINAGEM, INCLUSIVE CORTE E PODA DE ARVORES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.12'',''3.000'',''CONTROLE E TRATAMENTO DE EFLUENTES DE QUALQUER NATUREZA E DE AGENTES FISICOS, QUIMICOS E BIOLOGICOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.13'',''3.000'',''DEDETIZACAO, DESINFECCAO, DESINSETIZACAO, IMUNIZACAO, HIGIENIZACAO, DESRATIZACAO, PULVERIZACAO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.14'',''0.000'',''(VETADO) CONFORME LEI COMPLEMENTAR FEDERAL NR. 116/2003'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.15'',''0.000'',''(VETADO) CONFORME LEI COMPLEMENTAR FEDERAL NR. 116/2003'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.16'',''3.000'',''FLORESTAMENTO, REFLORESTAMENTO, SEMEADURA, ADUBACAO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.17'',''3.000'',''ESCORAMENTO, CONTENCAO DE ENCOSTAS E SERVICOS CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.18'',''3.000'',''LIMPEZA E DRAGAGEM DE RIOS, PORTOS, CANAIS, BAIAS, LAGOS, LAGOAS, REPRESAS, ACUDES E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.19'',''3.000'',''ACOMPANHAMENTO E FISCALIZACAO DA EXECUCAO DE OBRAS DE ENGENHARIA, ARQUITETURA E URBANISMO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.20'',''3.000'',''AEROFOTOGRAMETRIA (INCLUSIVE INTERPRETACAO), CARTOGRAFIA, MAPEAMENTO,LEVANTAMENTOS TOPOGRAFICOS, BATIMETRICOS, GEOGRAFICOS, GEODESICOS, GEOLOGICOS, GEOFISICOS '+
    'E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.21'',''3.000'',''PESQUISA, PERFURACAO, CIMENTACAO, MERGULHO, PERFILAGEM, CONCRETACAO, TESTEMUNHAGEM, PESCARIA, ESTIMULACAO E OUTROS SERVICOS RELACIONADOS COM A EXPLORACAO E '+
    'EXPLORACAO DE PETROLEO, GAS NATURAL E DE OUTROS RECURSOS MINERAIS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''07.22'',''3.000'',''NUCLEACAO E BOMBARDEAMENTO DE NUVENS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''08.01'',''2.000'',''ENSINO REGULAR PRE-ESCOLAR, FUNDAMENTAL, MEDIO E SUPERIOR.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''08.02'',''2.000'',''INSTRUCAO, TREINAMENTO, ORIENTACAO PEDAGOGICA E EDUCACIONAL, AVALIACAO DE CONHECIMENTOS DE QUALQUER NATUREZA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''09.01'',''2.500'',''HOSPEDAGEM DE QUALQUER NATUREZA EM HOTEIS, APART-SERVICE CONDOMINIAIS, FLAT, APART-HOTEIS, HOTEIS RESIDENCIA, RESIDENCE-SERVICE, SUITE SERVICE, HOTELARIA '+
    'MARITIMA, MOTEIS, PENSOES E CONGENERES, OCUPACAO POR TEMPORADA COM FORNECIMENTO DE SERVICO (O VALOR DA ALIMENTACAO E GORJETA,QUANDO INCLUIDO NO PRECO DA DIARIA, FICA SUJEITO AO IMPOSTO SOBRE SERVICOS).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''09.02'',''2.500'',''AGENCIAMENTO, ORGANIZACAO, PROMOCAO, INTERMEDIACAO E EXECUCAO DE PROGRAMAS DE TURISMO, PASSEIOS, VIAGENS, EXCURSOES, HOSPEDAGENS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''09.03'',''2.500'',''GUIAS DE TURISMO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.01'',''2.000'',''AGENCIAMENTO, CORRETAGEM OU INTERMEDIACAO DE CAMBIO, DE SEGUROS, DE CARTOES DE CREDITO, DE PLANOS DE SAUDE E DE PLANOS DE PREVIDENCIA PRIVADA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.02'',''2.000'',''AGENCIAMENTO, CORRETAGEM OU INTERMEDIACAO DE TITULOS EM GERAL, VALORES MOBILIARIOS E CONTRATOS QUAISQUER.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.03'',''2.000'',''AGENCIAMENTO, CORRETAGEM OU INTERMEDIACAO DE DIREITOS DE PROPRIEDADE INDUSTRIAL, ARTISTICA OU LITERARIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.04'',''5.000'',''AGENCIAMENTO, CORRETAGEM OU INTERMEDIACAO DE CONTRATOS DE ARRENDAMENTO MERCANTIL (LEASING), DE FRANQUIA (FRANCHISING) E DE FATURIZACAO (FACTORING).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.05'',''2.000'',''AGENCIAMENTO, CORRETAGEM OU INTERMEDIACAO DE BENS MOVEIS OU IMOVEIS, NAO ABRANGIDOS EM OUTROS ITENS OU SUBITENS, INCLUSIVE AQUELES REALIZADOS NO AMBITO '+
    'DE BOLSAS DE MERCADORIAS E FUTUROS, POR QUAISQUER MEIOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.06'',''2.000'',''AGENCIAMENTO MARITIMO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.07'',''2.000'',''AGENCIAMENTO DE NOTICIAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.08'',''2.000'',''AGENCIAMENTO DE PUBLICIDADE E PROPAGANDA, INCLUSIVE O AGENCIAMENTO DEVEICULACAO POR QUAISQUER MEIOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.09'',''2.000'',''REPRESENTACAO DE QUALQUER NATUREZA, INCLUSIVE COMERCIAL.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''10.10'',''2.000'',''DISTRIBUICAO DE BENS DE TERCEIROS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''11.01'',''3.000'',''GUARDA E ESTACIONAMENTO DE VEICULOS TERRESTRES AUTOMOTORES, DE AERONAVES E DE EMBARCACOES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''11.02'',''2.000'',''VIGILANCIA, SEGURANCA OU MONITORAMENTO DE BENS E PESSOAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''11.03'',''3.000'',''ESCOLTA, INCLUSIVE DE VEICULOS E CARGAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''11.04'',''3.000'',''ARMAZENAMENTO, DEPOSITO, CARGA, DESCARGA, ARRUMACAO E GUARDA DE BENS DE QUALQUER ESPECIE.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.01'',''2.000'',''ESPETACULOS TEATRAIS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.02'',''2.000'',''EXIBICOES CINEMATOGRAFICAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.03'',''2.000'',''ESPETACULOS CIRCENSES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.04'',''2.000'',''PROGRAMAS DE AUDITORIO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.05'',''2.000'',''PARQUES DE DIVERSOES, CENTROS DE LAZER E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.06'',''3.000'',''BOATES, TAXI-DANCING E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.07'',''2.000'',''SHOWS, BALLET, DANCAS, DESFILES, BAILES, OPERAS, CONCERTOS, RECITAIS,FESTIVAIS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.08'',''2.000'',''FEIRAS, EXPOSICOES, CONGRESSOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.09'',''5.000'',''BILHARES, BOLICHES E DIVERSOES ELETRONICAS OU NAO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.10'',''2.000'',''CORRIDAS E COMPETICOES DE ANIMAIS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.11'',''2.000'',''COMPETICOES ESPORTIVAS OU DE DESTREZA FISICA OU INTELECTUAL, COM OU SEM A PARTICIPACAO DO ESPECTADOR.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.12'',''2.000'',''EXECUCAO DE MUSICA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.13'',''2.000'',''PRODUCAO, MEDIANTE OU SEM ENCOMENDA PREVIA, DE EVENTOS, ESPETACULOS, ENTREVISTAS, SHOWS, BALLET, DANCAS, DESFILES, BAILES, TEATROS, OPERAS, CONCERTOS, RECITAIS, '+
    'FESTIVAIS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.14'',''3.000'',''FORNECIMENTO DE MUSICA PARA AMBIENTES FECHADOS OU NAO, MEDIANTE TRANSMISSAO POR QUALQUER PROCESSO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.15'',''2.000'',''DESFILES DE BLOCOS CARNAVALESCOS OU FOLCLORICOS, TRIOS ELETRICOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.16'',''2.000'',''EXIBICAO DE FILMES, ENTREVISTAS, MUSICAIS, ESPETACULOS, SHOWS, CONCERTOS, DESFILES, OPERAS, COMPETICOES ESPORTIVAS, DE DESTREZA INTELECTUALOU CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''12.17'',''2.000'',''RECREACAO E ANIMACAO, INCLUSIVE EM FESTAS E EVENTOS DE QUALQUER NATUREZA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''13.01'',''0.000'',''(VETADO) CONFORME LEI COMPLEMENTAR FEDERAL NR. 116/2003'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''13.02'',''3.000'',''FONOGRAFIA OU GRAVACAO DE SONS, INCLUSIVE TRUCAGEM, DUBLAGEM, MIXAGEME CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''13.03'',''3.000'',''FOTOGRAFIA E CINEMATOGRAFIA, INCLUSIVE REVELACAO, AMPLIACAO, COPIA, REPRODUCAO, TRUCAGEM E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''13.04'',''3.000'',''REPROGRAFIA, MICROFILMAGEM E DIGITALIZACAO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''13.05'',''3.000'',''COMPOSICAO GRAFICA, FOTOCOMPOSICAO, CLICHERIA, ZINCOGRAFIA, LITOGRAFIA, FOTOLITOGRAFIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.01'',''3.000'',''LUBRIFICACAO, LIMPEZA, LUSTRACAO, REVISAO, CARGA E RECARGA, CONSERTO,RESTAURACAO, BLINDAGEM, MANUTENCAO E CONSERVACAO DE MAQUINAS, VEICULOS, APARELHOS, '+
    'EQUIPAMENTOS, MOTORES, ELEVADORES OU DE QUALQUER OBJETO (EXCETO PECAS E PARTES EMPREGADAS, QUE FICAM SUJEITAS AO ICMS).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.02'',''3.000'',''ASSISTENCIA TECNICA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.03'',''3.000'',''RECONDICIONAMENTO DE MOTORES (EXCETO PECAS E PARTES EMPREGADAS, QUE FICAM SUJEITAS AO ICMS).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.04'',''3.000'',''RECAUCHUTAGEM OU REGENERACAO DE PNEUS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.05'',''3.000'',''RESTAURACAO, RECONDICIONAMENTO, ACONDICIONAMENTO, PINTURA, BENEFICIAMENTO, LAVAGEM, SECAGEM, TINGIMENTO, GALVANOPLASTIA, ANODIZACAO, CORTE,RECORTE, POLIMENTO, '+
    'PLASTIFICACAO E CONGENERES, DE OBJETOS QUAISQUER.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.06'',''3.000'',''INSTALACAO E MONTAGEM DE APARELHOS, MAQUINAS E EQUIPAMENTOS, INCLUSIVE MONTAGEM INDUSTRIAL, PRESTADOS AO USUARIO FINAL, EXCLUSIVAMENTE COM MATERIAL POR ELE FORNECIDO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.07'',''3.000'',''COLOCACAO DE MOLDURAS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.08'',''3.000'',''ENCADERNACAO, GRAVACAO E DOURACAO DE LIVROS, REVISTAS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.09'',''3.000'',''ALFAIATARIA E COSTURA, QUANDO O MATERIAL FOR FORNECIDO PELO USUARIO FINAL, EXCETO AVIAMENTO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.10'',''3.000'',''TINTURARIA E LAVANDERIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.11'',''3.000'',''TAPECARIA E REFORMA DE ESTOFAMENTOS EM GERAL.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.12'',''3.000'',''FUNILARIA E LANTERNAGEM.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''14.13'',''3.000'',''CARPINTARIA E SERRALHERIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.00'',''5.000'',''SERVICOS RELACIONADOS AO SETOR BANCARIO'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.01'',''5.000'',''ADMINISTRACAO DE FUNDOS QUAISQUER, DE CONSORCIO, DE CARTAO DE CREDITOOU DEBITO E CONGENERES, DE CARTEIRA DE CLIENTES, DE CHEQUES PRE-DATADOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.02'',''5.000'',''ABERTURA DE CONTAS EM GERAL, INCLUSIVE CONTA-CORRENTE, CONTA DE INVESTIMENTOS E APLICACAO E CADERNETA DE POUPANCA, NO PAIS E NO EXTERIOR, BEM COMO A MANUTENCAO '+
    'DAS REFERIDAS CONTAS ATIVAS E INATIVAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.03'',''5.000'',''LOCACAO E MANUTENCAO DE COFRES PARTICULARES, DE TERMINAIS ELETRONICOS, DE TERMINAIS DE ATENDIMENTO E DE BENS E EQUIPAMENTOS EM GERAL.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.04'',''5.000'',''FORNECIMENTO OU EMISSAO DE ATESTADOS EM GERAL, INCLUSIVE ATESTADO DE IDONEIDADE, ATESTADO DE CAPACIDADE FINANCEIRA E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.05'',''5.000'',''CADASTRO, ELABORACAO DE FICHA CADASTRAL, RENOVACAO CADASTRAL E CONGENERES, INCLUSAO OU EXCLUSAO NO CADASTRO DE EMITENTES DE CHEQUES SEM FUNDOS - CCF OU EM '+
    'QUAISQUER OUTROS BANCOS CADASTRAIS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.06'',''5.000'',''EMISSAO, REEMISSAO E FORNECIMENTO DE AVISOS, COMPROVANTES E DOCUMENTOS EM GERAL, ABONO DE FIRMAS, COLETA E ENTREGA DE DOCUMENTOS, BENS E VALORES, COMUNICACAO '+
    'COM OUTRA AGENCIA OU COM A ADMINISTRACAO CENTRAL, LICENCIAMENTO ELETRONICO DE VEICULOS, TRANSFERENCIA DE VEICULOS, AGENCIAMENTO FIDUCIARIO OU DEPOSITARIO, DEVOLUCAO DE BENS EM CUSTODIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.07'',''5.000'',''ACESSO, MOVIMENTACAO, ATENDIMENTO E CONSULTA A CONTAS EM GERAL, POR QUALQUER MEIO OU PROCESSO, INCLUSIVE POR TELEFONE, FAC-SIMILE, INTERNETE TELEX, ACESSO A '+
    'TERMINAIS DE ATENDIMENTO, INCLUSIVE VINTE E QUATRO HORAS, ACESSO A OUTRO BANCO E A REDE COMPARTILHADA, FORNECIMENTO DE SALDO, EXTRATO E DEMAIS INFORMACOES RELATIVAS A CONTAS EM GERAL, POR QUALQUER MEIO OU PROCESSO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.08'',''5.000'',''EMISSAO, REEMISSAO, ALTERACAO, CESSAO, SUBSTITUICAO, CANCELAMENTO E REGISTRO DE CONTRATO DE CREDITO, ESTUDO, ANALISE E AVALIACAO DE OPERACOES DE CREDITO, '+
    'EMISSAO, CONCESSAO, ALTERACAO OU CONTRATACAO DE AVAL, FIANCA, ANUENCIA E CONGENERES, SERVICOS RELATIVOS A ABERTURA DE CREDITO, PARA QUAISQUER FINS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.09'',''5.000'',''ARRENDAMENTO MERCANTIL (LEASING) DE QUAISQUER BENS, INCLUSIVE CESSAO DE DIREITOS E OBRIGACOES, SUBSTITUICAO DE GARANTIA, ALTERACAO, CANCELAMENTO E REGISTRO '+
    'DE CONTRATO, E DEMAIS SERVICOS RELACIONADOS AO ARRENDAMENTO MERCANTIL (LEASING).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.10'',''5.000'',''SERVICOS RELACIONADOS A COBRANCAS, RECEBIMENTOS OU PAGAMENTOS EM GERAL, DE TITULOS QUAISQUER, DE CONTAS OU CARNES, DE CAMBIO, DE TRIBUTOS EPOR CONTA DE '+
    'TERCEIROS, INCLUSIVE OS EFETUADOS POR MEIO ELETRONICO, AUTOMATICO OU POR MAQUINAS DE ATENDIMENTO, FORNECIMENTO DE POSICAO DE COBRANCA, RECEBIMENTO OU PAGAMENTO, EMISSAO DE CARNES, FICHAS DE COMPENSACAO, IMPRESSOS E DOCUMENTOS EM GERAL.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.11'',''5.000'',''DEVOLUCAO DE TITULOS, PROTESTO DE TITULOS, SUSTACAO DE PROTESTO, MANUTENCAO DE TITULOS, REAPRESENTACAO DE TITULOS, E DEMAIS SERVICOS A ELESRELACIONADOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.12'',''5.000'',''CUSTODIA EM GERAL, INCLUSIVE DE TITULOS E VALORES MOBILIARIOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.13'',''5.000'',''SERVICOS RELACIONADOS A OPERACOES DE CAMBIO EM GERAL, EDICAO, ALTERACAO, PRORROGACAO, CANCELAMENTO E BAIXA DE CONTRATO DE CAMBIO, EMISSAO DE REGISTRO '+
    'DE EXPORTACAO OU DE CREDITO, COBRANCA OU DEPOSITO NO EXTERIOR, EMISSAO, FORNECIMENTO E CANCELAMENTO DE CHEQUES DE VIAGEM, FORNECIMENTO, TRANSFERENCIA, CANCELAMENTO E DEMAIS SERVICOS RELATIVOS A CARTADE CREDITO DE IMPORTACAO, EXPORTACAO E '+
    'GARANTIAS RECEBIDAS, ENVIO E RECEBIMENTO DE MENSAGENS EM GERAL RELACIONADAS A OPERACOES DE CAMBIO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.14'',''5.000'',''FORNECIMENTO, EMISSAO, REEMISSAO, RENOVACAO E MANUTENCAO DE CARTAO MAGNETICO, CARTAO DE CREDITO, CARTAO DE DEBITO, CARTAO SALARIO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.15'',''5.000'',''COMPENSACAO DE CHEQUES E TITULOS QUAISQUER, SERVICOS RELACIONADOS A DEPOSITO, INCLUSIVE DEPOSITO IDENTIFICADO, A SAQUE DE CONTAS QUAISQUER,POR QUALQUER MEIO OU '+
    'PROCESSO, INCLUSIVE EM TERMINAIS ELETRONICOS E DE ATENDIMENTO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.16'',''5.000'',''EMISSAO, REEMISSAO, LIQUIDACAO, ALTERACAO, CANCELAMENTO E BAIXA DE ORDENS DE PAGAMENTO, ORDENS DE CREDITO E SIMILARES, POR QUALQUER MEIO OUPROCESSO, SERVICOS '+
    'RELACIONADOS C  TRANSFERENCIA DE VALORES, DADOS, FUNDOS, PAGAMENTOS E SIMILARES, INCLUSIVE ENTRE CONTAS EM GERAL.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.17'',''5.000'',''EMISSAO, FORNECIMENTO, DEVOLUCAO, SUSTACAO, CANCELAMENTO E OPOSICAO DE CHEQUES QUAISQUER, AVULSO OU POR TALAO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''15.18'',''5.000'',''SERVICOS RELACIONADOS A CREDITO IMOBILIARIO, AVALIACAO E VISTORIA DE IMOVEL OU OBRA, ANALISE TECNICA E JURIDICA, EMISSAO, REEMISSAO, ALTERACAO, TRANSFERENCIA E '+
    'RENEGOCIACAO DE CONTRATO, EMISSAO E REEMISSAO DO TERMO DE QUITACAO E DEMAIS SERVICOS RELACIONADOS A CREDITO IMOBILIARIO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''16.01'',''3.000'',''SERVICOS DE TRANSPORTE DE NATUREZA MUNICIPAL.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.01'',''2.500'',''ASSESSORIA OU CONSULTORIA DE QUALQUER NATUREZA, NAO CONTIDA EM OUTROSITENS DESTA LISTA, ANALISE, EXAME, PESQUISA, COLETA, COMPILACAO E FORNECIMENTO DE DADOS E '+
    'INFORMACOES DE QUALQUER NATUREZA, INCLUSIVE CADASTRO E SIMILARES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.02'',''3.000'',''DATILOGRAFIA, DIGITACAO, ESTENOGRAFIA, EXPEDIENTE, SECRETARIA EM GERAL, RESPOSTA AUDIVEL, REDACAO, EDICAO, INTERPRETACAO, REVISAO, TRADUCAO, APOIO E '+
    'INFRAESTRUTURA ADMINISTRATIVA E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.03'',''3.000'',''PLANEJAMENTO, COORDENACAO, PROGRAMACAO OU ORGANIZACAO TECNICA, FINANCEIRA OU ADMINISTRATIVA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.04'',''3.000'',''RECRUTAMENTO, AGENCIAMENTO, SELECAO E COLOCACAO DE MAO DE OBRA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.05'',''3.000'',''FORNECIMENTO DE MAO DE OBRA, MESMO EM CARATER TEMPORARIO, INCLUSIVE DE EMPREGADOS OU TRABALHADORES, AVULSOS OU TEMPORARIOS, CONTRATADOS PELO PRESTADOR DE SERVICO.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.06'',''3.000'',''PROPAGANDA E PUBLICIDADE, INCLUSIVE PROMOCAO DE VENDAS, PLANEJAMENTO DE CAMPANHAS OU SISTEMAS DE PUBLICIDADE, ELABORACAO DE DESENHOS, TEXTOS E DEMAIS MATERIAIS '+
    'PUBLICITARIOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.07'',''0.000'',''(VETADO) CONFORME LEI COMPLEMENTAR FEDERAL NR. 116/2003'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.08'',''2.000'',''FRANQUIA (FRANCHISING).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.09'',''3.000'',''PERICIAS, LAUDOS, EXAMES TECNICOS E ANALISES TECNICAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.10'',''3.000'',''PLANEJAMENTO, ORGANIZACAO E ADMINISTRACAO DE FEIRAS, EXPOSICOES, CONGRESSOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.11'',''3.000'',''ORGANIZACAO DE FESTAS E RECEPCOES, BUFE (EXCETO O FORNECIMENTO DE ALIMENTACAO E BEBIDAS, QUE FICA SUJEITO AO ICMS).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.12'',''3.000'',''ADMINISTRACAO EM GERAL, INCLUSIVE DE BENS E NEGOCIOS DE TERCEIROS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.13'',''3.000'',''LEILAO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.14'',''3.000'',''ADVOCACIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.15'',''3.000'',''ARBITRAGEM DE QUALQUER ESPECIE, INCLUSIVE JURIDICA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.16'',''2.500'',''AUDITORIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.17'',''2.500'',''ANALISE DE ORGANIZACAO E METODOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.18'',''2.500'',''ATUARIA E CALCULOS TECNICOS DE QUALQUER NATUREZA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.19'',''2.500'',''CONTABILIDADE, INCLUSIVE SERVICOS TECNICOS E AUXILIARES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.20'',''2.500'',''CONSULTORIA E ASSESSORIA ECONOMICA OU FINANCEIRA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.21'',''2.500'',''ESTATISTICA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.22'',''3.000'',''COBRANCA EM GERAL.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.23'',''2.500'',''ASSESSORIA, ANALISE, AVALIACAO, ATENDIMENTO, CONSULTA, CADASTRO, SELECAO, GERENCIAMENTO DE INFORMACOES, ADMINISTRACAO DE CONTAS A RECEBER OU A PAGAR E EM GERAL, '+
    'RELACIONADOS A OPERACOES DE FATURIZACAO (FACTORING).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''17.24'',''2.500'',''APRESENTACAO DE PALESTRAS, CONFERENCIAS, SEMINARIOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''18.01'',''3.000'',''SERVICOS DE REGULACAO DE SINISTROS VINCULADOS A CONTRATOS DE SEGUROS,INSPECAO E AVALIACAO DE RISCOS PARA COBERTURA DE CONTRATOS DE SEGUROS, PREVENCAO E GERENCIA '+
    'DE RISCOS SEGURAVEIS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''19.01'',''3.000'',''SERVICOS DE DISTRIBUICAO E VENDA DE BILHETES E DEMAIS PRODUTOS DE LOTERIA, BINGOS, CARTOES, PULES OU CUPONS DE APOSTAS, SORTEIOS, PREMIOS, INCLUSIVE OS '+
    'DECORRENTES DE TITULOS DE CAPITALIZACAO E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''20.01'',''3.000'',''SERVICOS PORTUARIOS, FERROPORTUARIOS, UTILIZACAO DE PORTO, MOVIMENTACAO DE PASSAGEIROS, REBOQUE DE EMBARCACOES, REBOCADOR ESCOTEIRO, ATRACACAO, DESATRACACAO, '+
    'SERVICOS DE PRATICAGEM, CAPATAZIA, ARMAZENAGEM DE QUALQUER NATUREZA, SERVICOS ACESSORIOS, MOVIMENTACAO DE MERCADORIAS, SERVICOS DE APOIO MARITIMO, DE MOVIMENTACAO AO LARGO, SERVICOS DE ARMADORES, ESTIVA, CONFERENCIA, LOGISTICA E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''20.02'',''3.000'',''SERVICOS AEROPORTUARIOS, UTILIZACAO DE AEROPORTO, MOVIMENTACAO DE PASSAGEIROS, ARMAZENAGEM DE QUALQUER NATUREZA, CAPATAZIA, MOVIMENTACAO DEAERONAVES, SERVICOS '+
    'DE APOIO AEROPORTUARIOS, SERVICOS ACESSORIOS, MOVIMENTACAO DE MERCADORIAS, LOGISTICA E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''20.03'',''3.000'',''SERVICOS DE TERMINAIS RODOVIARIOS, FERROVIARIOS, METROVIARIOS, MOVIMENTACAO DE PASSAGEIROS, MERCADORIAS, INCLUSIVE SUAS OPERACOES, LOGISTICA E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''21.01'',''3.000'',''SERVICOS DE REGISTROS PUBLICOS, CARTORARIOS E NOTARIAIS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''22.01'',''5.000'',''SERVICOS DE EXPLORACAO DE RODOVIA MEDIANTE COBRANCA DE PRECO OU PEDAGIO DOS USUARIOS, ENVOLVENDO EXECUCAO DE SERVICOS DE CONSERVACAO, MANUTENCAO, MELHORAMENTOS '+
    'PARA ADEQUACAO DE CAPACIDADE E SEGURANCA DE TRANSITO, OPERACAO, MONITORACAO, ASSISTENCIA AOS USUARIOS E OUTROS SERVICOSDEFINIDOS EM CONTRATOS, ATOS DE CONCESSAO OU DE PERMISSAO OU EM NORMAS OFICIAIS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''23.01'',''3.000'',''SERVICOS DE PROGRAMACAO E COMUNICACAO VISUAL, DESENHO INDUSTRIAL E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''24.01'',''3.000'',''SERVICOS DE CHAVEIROS, CONFECCAO DE CARIMBOS, PLACAS, SINALIZACAO VISUAL, BANNERS, ADESIVOS E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''25.01'',''3.000'',''FUNERAIS, INCLUSIVE FORNECIMENTO DE CAIXAO, URNA OU ESQUIFES, ALUGUELDE CAPELA, TRANSPORTE DO CORPO CADAVERICO, FORNECIMENTO DE FLORES, COROAS E OUTROS '+
    'PARAMENTOS, DESEMBARACO DE CERTIDAO DE OBITO, FORNECIMENTO DE VEU, ESSE E OUTROS ADORNOS, EMBALSAMENTO, EMBELEZAMENTO, CONSERVACAO OU RESTAURACAO DE CADAVERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''25.02'',''3.000'',''CREMACAO DE CORPOS E PARTES DE CORPOS CADAVERICOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''25.03'',''3.000'',''PLANOS OU CONVENIOS FUNERARIOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''25.04'',''3.000'',''MANUTENCAO E CONSERVACAO DE JAZIGOS E CEMITERIOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''26.01'',''3.000'',''SERVICOS DE COLETA, REMESSA OU ENTREGA DE CORRESPONDENCIAS, DOCUMENTOS, OBJETOS, BENS OU VALORES, INCLUSIVE PELOS CORREIOS E SUAS AGENCIAS FRANQUEADAS, COURRIER '+
    'E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''27.01'',''3.000'',''SERVICOS DE ASSISTENCIA SOCIAL.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''28.01'',''3.000'',''SERVICOS DE AVALIACAO DE BENS E SERVICOS DE QUALQUER NATUREZA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''29.01'',''3.000'',''SERVICOS DE BIBLIOTECONOMIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''30.01'',''3.000'',''SERVICOS DE BIOLOGIA, BIOTECNOLOGIA E QUIMICA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''31.01'',''3.000'',''SERVICOS TECNICOS EM EDIFICACOES, ELETRONICA, ELETROTECNICA, MECANICA, TELECOMUNICACOES E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''32.01'',''3.000'',''SERVICOS DE DESENHOS TECNICOS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''33.01'',''3.000'',''SERVICOS DE DESEMBARACO ADUANEIRO, COMISSARIOS, DESPACHANTES E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''34.01'',''5.000'',''SERVICOS DE INVESTIGACOES PARTICULARES, DETETIVES E CONGENERES.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''35.01'',''3.000'',''SERVICOS DE REPORTAGEM, ASSESSORIA DE IMPRENSA, JORNALISMO E RELACOESPUBLICAS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''36.01'',''3.000'',''SERVICOS DE METEOROLOGIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''37.01'',''3.000'',''SERVICOS DE ARTISTAS, ATLETAS, MODELOS E MANEQUINS.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''38.01'',''3.000'',''SERVICOS DE MUSEOLOGIA.'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''39.01'',''5.000'',''SERVICOS DE OURIVESARIA E LAPIDACAO (QUANDO O MATERIAL FOR FORNECIDO PELO TOMADOR DO SERVICO).'');'+
    'insert into ISS (ISS_CODIGO,ISS_ALIQUOTA,ISS_DESCRICAO) values (''40.01'',''5.000'',''OBRAS DE ARTE SOB ENCOMENDA.'');'+
    'update ISS set ISS_DTCADASTRO=''2017-01-21'', ISS_DTATUALIZACAO=''2017-01-21'', ISS_USUARIO=''RUNTIME'';'+    }

    'CREATE TABLE NFSE ('+
    '  NFS_CODIGO                DN_CODIGO,'+
    '  NFS_CLIENTE               DN_CODIGO,'+
    '  NFS_CONDICAO              DN_CODIGO,'+
    '  NFS_VENDEDOR              DN_CODIGO,'+
    '  NFS_BASEISS               DN_VALOR,'+
    '  NFS_BAIXADATA             DN_DATA,'+
    '  NFS_BAIXAPOR              DN_LOGIN,'+
    '  NFS_CANCELAMENTOCODIGO    DN_NUMERO,'+
    '  NFS_CANCELAMENTODATA      DN_DATA,'+
    '  NFS_CANCELAMENTOHORA      DN_HORA,'+
    '  NFS_CANCELAMENTOMOTIVO    DN_DESCRICAO,'+
    '  NFS_CONDICAOMEMO          DN_BLOBTEXTO,'+
    '  NFS_CSTISS                DN_DESCRICAO,'+
    '  NFS_DIAPREFERENCIAL       DN_NUMERO,'+
    '  NFS_DTATUALIZACAO         DN_DATA,'+
    '  NFS_DTCADASTRO            DN_DATA,'+
    '  NFS_DTEMISSAO             DN_DATA,'+
    '  NFS_FORMAPAGTO            DN_FORMAPAGTO,'+
    '  NFS_INFOADICIONAIS        DN_BLOBTEXTO,'+
    '  NFS_INTERMEDIARIOCPFCNPJ  DN_CNPJIECPFRG,'+
    '  NFS_INTERMEDIARIOIM       DN_NUMERO,'+
    '  NFS_INTERMEDIARIONOME     DN_NOME,'+
    '  NFS_MOVIMENTAFINANCEIRO   DN_BOOLEAN,'+
    '  NFS_OBRAART               DN_NUMERO,'+
    '  NFS_OBRACODIGO            DN_NUMERO,'+
    '  NFS_OBSERVACOES           DN_BLOBTEXTO,'+
    '  NFS_PROTOCOLO             DN_PROTOCOLO,'+
    '  NFS_PROTOCOLODH           DN_DATAHORA,'+
    '  NFS_RETENCAO              DN_DESCRICAO,'+
    '  NFS_SERIE                 DN_NUMERO,'+
    '  NFS_SIMPLESNACIONAL       DN_BOOLEAN,'+
    '  NFS_STATUS                DN_BOOLEAN,'+
    '  NFS_TOMCPF                DN_CNPJIECPFRG,'+
    '  NFS_TOMCNPJ               DN_CNPJIECPFRG,'+
    '  NFS_TOMTIPOPESSOA         DN_BOOLEAN,'+
    '  NFS_TOMIE                 DN_CNPJIECPFRG,'+
    '  NFS_TOMIM                 DN_NUMERO,'+
    '  NFS_TOMNOME               DN_NOME,'+
    '  NFS_TOMEMAIL              DN_EMAIL,'+
    '  NFS_TOMSITE               DN_DOMINIO,'+
    '  NFS_TOMCEP                DN_CEP,'+
    '  NFS_TOMCIDADE             DN_CIDADE,'+
    '  NFS_TOMCIDADECODIGO       DN_NUMERO,'+
    '  NFS_TOMCONTATO            DN_NOME,'+
    '  NFS_TOMESTADO             DN_ESTADO,'+
    '  NFS_TOMESTADOCODIGO       DN_NUMERO,'+
    '  NFS_TOMENDERECO           DN_ENDERECO,'+
    '  NFS_TOMNUMERO             DN_NUMEROCHAR,'+
    '  NFS_TOMCOMPLEMENTO        DN_COMPLEMENTO,'+
    '  NFS_TOMBAIRRO             DN_BAIRRO,'+
    '  NFS_TOMFONE1              DN_FONE,'+
    '  NFS_TOMFONE2              DN_FONE,'+
    '  NFS_TOMPAIS               DN_NUMERO,'+
    '  NFS_TOTALDEDUCOES         DN_VALOR,'+
    '  NFS_TOTALDESCCOND         DN_VALOR,'+
    '  NFS_TOTALDESCINCOND       DN_VALOR,'+
    '  NFS_TOTALISS              DN_VALOR,'+
    '  NFS_TOTALSERVICOS         DN_VALOR,'+
    '  NFS_TOTALTRIBUTOS         DN_VALOR,'+
    '  NFS_TOTALTRIBUTOSEST      DN_VALOR,'+
    '  NFS_TOTALTRIBUTOSFED      DN_VALOR,'+
    '  NFS_TOTALTRIBUTOSIMP      DN_VALOR,'+
    '  NFS_TOTALTRIBUTOSMUN      DN_VALOR,'+
    '  NFS_USUARIO               DN_LOGIN,'+
    '  NFS_VALORCOFINS           DN_VALOR,'+
    '  NFS_VALORCSLL             DN_VALOR,'+
    '  NFS_VALORINSS             DN_VALOR,'+
    '  NFS_VALORIR               DN_VALOR,'+
    '  NFS_VALORISSRETIDO        DN_VALOR,'+
    '  NFS_VALORLIQUIDO          DN_VALOR,'+
    '  NFS_VALOROUTRASRET        DN_VALOR,'+
    '  NFS_VALORPIS              DN_VALOR,'+
    '  NFS_VENDA                 DN_CODIGONULL);'+

    'ALTER TABLE NFSE ADD CONSTRAINT PK_NFS_CODIGO PRIMARY KEY (NFS_CODIGO);'+
    'ALTER TABLE NFSE ADD CONSTRAINT FK_NFS_CLIENTE FOREIGN KEY (NFS_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE NFSE ADD CONSTRAINT FK_NFS_CONDICAO FOREIGN KEY (NFS_CONDICAO) REFERENCES CONDICOES(CPG_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE NFSE ADD CONSTRAINT FK_NFS_VENDEDOR FOREIGN KEY (NFS_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+

    'CREATE TABLE NFSEITENS ('+
    '  NSI_CODIGO DN_CODIGO,'+
    '  NSI_NFSE DN_CODIGO,'+
    '  NSI_SERVICO DN_CODIGOCHAR,'+
    '  NSI_ALIQUOTA DN_VALOR,'+
    '  NSI_BASEISS DN_VALOR,'+
    '  NSI_CIDADE DN_CIDADE,'+
    '  NSI_CIDADECODIGO DN_NUMERO,'+
    '  NSI_DESCRICAO DN_BLOBTEXTO,'+
    '  NSI_QUANTIDADE DN_VALOR,'+
    '  NSI_PAIS DN_NUMERO,'+
    '  NSI_PRESTADONOPAIS DN_BOOLEAN,'+
    '  NSI_VALORDEDUCOES DN_VALOR,'+
    '  NSI_VALORDESCCOND DN_VALOR,'+
    '  NSI_VALORDESCINCOND DN_VALOR,'+
    '  NSI_VALORISS DN_VALOR,'+
    '  NSI_VALORUNIT DN_VALOR,'+
    '  NSI_VALORTOTAL DN_VALOR,'+
    '  NSI_VALORTRIBUTOS DN_VALOR,'+
    '  NSI_VALORTRIBUTOSEST DN_VALOR,'+
    '  NSI_VALORTRIBUTOSFED DN_VALOR,'+
    '  NSI_VALORTRIBUTOSIMP DN_VALOR,'+
    '  NSI_VALORTRIBUTOSMUN DN_VALOR);'+

    'ALTER TABLE NFSEITENS ADD CONSTRAINT PK_NSI_CODIGO PRIMARY KEY (NSI_CODIGO);'+
    'ALTER TABLE NFSEITENS ADD CONSTRAINT FK_NSI_NFSE FOREIGN KEY (NSI_NFSE) REFERENCES NFSE(NFS_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'ALTER TABLE NFSEITENS ADD CONSTRAINT FK_NSI_SERVICO FOREIGN KEY (NSI_SERVICO) REFERENCES ISS(ISS_CODIGO) ON UPDATE CASCADE;'+

    'ALTER TABLE CLIENTES ADD CLI_IM DN_NUMERO;'+

    'ALTER TABLE PARAMETROS '+
    '  ADD PAR_REPOSITORIONFSE DN_PATH,'+
    '  ADD PAR_NFSEEMAILCONTA DN_NUMERO,'+
    '  ADD PAR_NFSEEMAILAUTOMATICO DN_BOOLEAN,'+
    '  ADD PAR_NFSEEMAILASSUNTO DN_NUMERO,'+
    '  ADD PAR_TIPOAMBIENTENFSE DN_BOOLEAN,'+
    '  ADD PAR_NFSEINI DN_PATH,'+
    '  ADD PAR_NFSESCHEMAS DN_PATH,'+
    '  ADD PAR_BOLETOSEMAILASSUNTO DN_NUMERO;'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormNfse'',''Cadastro de Notas Fiscais de Servico'',''A'',2);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (111,''Notas Fiscais de Servico'',''TFormNfse'',''DATA INICIAL'',''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (112,''Notas Fiscais de Servico com Status'',''TFormNfse'',''TODAS'',''TODAS;ABERTAS;FINALIZADAS;CANCELADAS;SUBSTITUIDAS;'');'+
    'set generator GEN_LOCS to 112;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao185;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='185';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_GNRESCHEMAS DN_PATH;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao184;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='184';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE TABLE CTECAMPOS ('+
    '  CTF_ALTERAVEL DN_BOOLEAN,'+
    '  CTF_CAMPO DN_CAMPO,'+
    '  CTF_CODIGO DN_CODIGO,'+
    '  CTF_DESCRICAO DN_DESCRICAO,'+
    '  CTF_GRUPO DN_CAMPO,'+
    '  CTF_NIVEL DN_NUMERO,'+
    '  CTF_PAI DN_NUMERO,'+
    '  CTF_TIPO DN_BOOLEAN);'+

    'ALTER TABLE CTECAMPOS ADD CONSTRAINT PK_CTF_CODIGO PRIMARY KEY (CTF_CODIGO);'+

    'CREATE TABLE CTECCE ('+
    '  CTC_CODIGO DN_CODIGO,'+
    '  CTC_CTE DN_CODIGO,'+
    '  CTC_DATA DN_DATA,'+
    '  CTC_DTATUALIZACAO DN_DATA,'+
    '  CTC_HORA DN_HORA,'+
    '  CTC_PROTOCOLO DN_PROTOCOLO,'+
    '  CTC_PROTOCOLODH DN_DATAHORA,'+
    '  CTC_SEQUENCIAL DN_NUMERO,'+
    '  CTC_USUARIO DN_LOGIN);'+

    'ALTER TABLE CTECCE ADD CONSTRAINT PK_CTC_CODIGO PRIMARY KEY (CTC_CODIGO);'+
    'ALTER TABLE CTECCE ADD CONSTRAINT FK_CTC_CTE FOREIGN KEY (CTC_CTE) REFERENCES CTE(CTE_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE TABLE CTECCEITENS ('+
    '  CTX_CAMPO DN_CAMPO,'+
    '  CTX_CCE DN_CODIGO,'+
    '  CTX_CODIGO DN_CODIGO,'+
    '  CTX_GRUPO DN_CAMPO,'+
    '  CTX_NUMITEM DN_NUMERO,'+
    '  CTX_VALOR DN_DESCRICAOLONGA);'+

    'ALTER TABLE CTECCEITENS ADD CONSTRAINT PK_CTX_CODIGO PRIMARY KEY (CTX_CODIGO);'+
    'ALTER TABLE CTECCEITENS ADD CONSTRAINT FK_CTX_CCE FOREIGN KEY (CTX_CCE) REFERENCES CTECCE(CTC_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE SEQUENCE GEN_CTECCE;'+
    'CREATE SEQUENCE GEN_CTECCEITENS;'+

    'ALTER TABLE GNRE'+
    '  ALTER GNR_RECEITA TYPE DN_DESCRICAOPLUS,'+
    '  ADD GNR_DESTNOME DN_NOME,'+
    '  ADD GNR_TIPODOCTOORIGEM DN_DESCRICAOPLUS,'+
    '  ADD GNR_CHAVEACESSO DN_CHAVEACESSO,'+
    '  ADD GNR_VALORTOTAL DN_VALOR,'+
    '  ADD GNR_RECIBO DN_PROTOCOLO;'+

    'ALTER TABLE PARAMETROS '+
    '  ADD PAR_GNRECONVENIO DN_DESCRICAO,'+
    '  ADD PAR_GNRERECEITA DN_DESCRICAOPLUS,'+
    '  ADD PAR_TIPOAMBIENTEGNRE DN_BOOLEAN,'+
    '  ADD PAR_SIGLAWSGNRE DN_ESTADO;'+

    'ALTER TABLE CTE ADD CTE_TOTALCCE DN_NUMERO;'+
    'UPDATE CTE SET CTE_TOTALCCE=0;'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormGnre'',''Cadastro de GNRE'',''A'',2);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (110,''Gnre'',''TFormGnre'',''DATA INICIAL'',''CODIGO;DATA INICIAL;DATA FINAL;DOCTO ORIGEM;DOCTO DEST;NOME DEST;VALOR PRINCIPAL;'');'+

    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 1, ''INFORMACOES DO CT-E'', ''infCte'', 0, 0, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''versao'', 2, ''VERSAO DO LEIAUTE'', ''infCte'', 1, 1, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''Id'', 3, ''IDENTIFICADOR DA TAG A SER ASSINADA'', ''infCte'', 1, 1, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 4, ''IDENTIFICACAO DO CT-E'', ''ide'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''cUF'', 5, ''CODIGO DA UF DO EMITENTE DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''cCT'', 6, ''CODIGO NUMERICO QUE COMPOE A CHAVE DE ACESSO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CFOP'', 7, ''CODIGO FISCAL DE OPERACOES E PRESTACOES'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''natOp'', 8, ''NATUREZA DA OPERACAO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''forPag'', 9, ''FORMA DE PAGAMENTO DA OPERACAO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''mod'', 10, ''MODELO DO DOCUMENTO FISCAL'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''serie'', 11, ''SERIE DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''nCT'', 12, ''NUMERO DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''dhEmi'', 13, ''DATA E HORA DE EMISSAO DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpImp'', 14, ''FORMATO DE IMPRESSAO DO DACTE'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''tpEmis'', 15, ''FORMA DE EMISSAO DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''cDV'', 16, ''DIGITO VERIFICADOR DA CHAVE DE ACESSO DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''tpAmb'', 17, ''TIPO DO AMBIENTE'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpCTe'', 18, ''TIPO DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''procEmi'', 19, ''IDENTIFICADOR DO PROCESSO DE EMISSAO DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''verProc'', 20, ''VERSAO DO PROCESSO DE EMISSAO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''refCTE'', 21, ''CHAVE DE ACESSO DO CT-E REFERENCIADO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMunEnv'', 22, ''CODIGO DO MUNICIPIO DE ENVIO DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMunEnv'', 23, ''NOME DO MUNICIPIO DE ENVIO DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UFEnv'', 24, ''SIGLA DA UF DE ENVIO DO CT-E'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''modal'', 25, ''MODAL'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpServ'', 26, ''TIPO DO SERVICO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMunIni'', 27, ''CODIGO DO MUNICIPIO DE INICIO DA PRESTACAO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMunIni'', 28, ''NOME DO MUNICIPIO DO INICIO DA PRESTACAO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UFIni'', 29, ''UF DO INICIO DA PRESTACAO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMunFim'', 30, ''CODIGO DO MUNICIPIO DE TERMINO DA PRESTACAO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMunFim'', 31, ''NOME DO MUNICIPIO DO TERMINO DA PRESTACAO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UFFim'', 32, ''UF DO TERMINO DA PRESTACAO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''retira'', 33, ''INDICADOR SE O RECEBEDOR RETIRA NO DESTINO'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xDetRetira'', 34, ''DETALHES DO RETIRA'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 35, ''INDICADOR DO PAPEL DO TOMADOR DO SERVICO NO CT-E'', ''toma03'', 2, 4, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''toma'', 36, ''TOMADOR DO SERVICO'', ''toma03'', 3, 35, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 37, ''INDICADOR DO PAPEL DO TOMADOR DO SERVICO NO CT-E'', ''toma4'', 2, 4, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''toma'', 38, ''TOMADOR DO SERVICO'', ''toma4'', 3, 37, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CNPJ'', 39, ''NUMERO DO CNPJ'', ''toma4'', 3, 37, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CPF'', 40, ''NUMERO DO CPF'', ''toma4'', 3, 37, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''IE'', 41, ''INSCRICAO ESTADUAL'', ''toma4'', 3, 37, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 42, ''RAZAO SOCIAL OU NOME'', ''toma4'', 3, 37, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xFant'', 43, ''NOME FANTASIA'', ''toma4'', 3, 37, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''fone'', 44, ''TELEFONE'', ''toma4'', 3, 37, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 45, ''DADOS DO ENDERECO'', ''enderToma'', 3, 37, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLgr'', 46, ''LOGRADOURO'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 47, ''NUMERO'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCpl'', 48, ''COMPLEMENTO'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBairro'', 49, ''BAIRRO'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMun'', 50, ''CODIGO DO MUNICIPIO'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMun'', 51, ''NOME DO MUNICIPIO'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CEP'', 52, ''CEP'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 53, ''SIGLA DA UF'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cPais'', 54, ''CODIGO DO PAIS'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xPais'', 55, ''NOME DO PAIS'', ''enderToma'', 4, 45, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''email'', 56, ''ENDERECO DE EMAIL'', ''toma4'', 3, 37, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dhCont'', 57, ''DATA E HORA DA ENTRADA EM CONTINGENCIA'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xJust'', 58, ''JUSTIFICATIVA DA ENTRADA EM CONTINGENCIA'', ''ide'', 2, 4, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 59, ''DADOS COMPLEMENTARES DO CT-E PARA FINS OP. OU COM.'', ''compl'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCaracAd'', 60, ''CARACTERISTICA ADICIONAL DO TRANSPORTE'', ''compl'', 2, 59, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCaracSer'', 61, ''CARACTERISTICA ADICIONAL DO SERVICO'', ''compl'', 2, 59, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xEmi'', 62, ''FUNCIONARIO EMISSOR DO CT-E'', ''compl'', 2, 59, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 63, ''PREVISAO DO FLUXO DA CARGA'', ''fluxo'', 2, 59, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xOrig'', 64, ''SIGLA OU COD INT DA FILI/PORTO/EST/AEROP ORIGEM'', ''fluxo'', 3, 63, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 65, ''DADOS DE PASSAGEM'', ''pass'', 3, 63, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xPass'', 66, ''SIGLA OU COD INT DA FILI/PORTO/EST/AEROP PASSAGEM'', ''pass'', 4, 65, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xDest'', 67, ''SIGLA OU COD INT DA FILI/PORTO/EST/AEROP DESTINO'', ''pass'', 3, 63, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xRota'', 68, ''CODIGO DA ROTA DE ENTREGA'', ''pass'', 3, 63, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 69, ''INFORMACOES REF. A PREVISAO DE ENTREGA'', ''Entrega'', 2, 59, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 70, ''ENTREGA SEM DATA DEFINIDA'', ''semData'', 3, 69, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpPer'', 71, ''TIPO DE DATA/PERIODO PROGRAMADO PARA ENTREGA'', ''semData'', 4, 70, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 72, ''ENTREGA COM DATA DEFINIDA'', ''comData'', 3, 69, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpPer'', 73, ''TIPO DE DATA/PERIODO PROGRAMADO PARA ENTREGA'', ''comData'', 4, 72, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dProg'', 74, ''DATA PROGRAMADA'', ''comData'', 4, 72, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 75, ''ENTREGA NO PERIODO DEFINIDO'', ''noPeriodo'', 3, 69, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpPer'', 76, ''TIPO PERIODO'', ''noPeriodo'', 4, 75, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dIni'', 77, ''DATA INICIAL'', ''noPeriodo'', 4, 75, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dFim'', 78, ''DATA FINAL'', ''noPeriodo'', 4, 75, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 79, ''ENTREGA SEM HORA DEFINIDA'', ''semHora'', 3, 69, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpHor'', 80, ''TIPO DE HORA'', ''semHora'', 4, 79, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 81, ''ENTREGA COM HORA DEFINIDA'', ''comHora'', 3, 69, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpHor'', 82, ''TIPO DE HORA'', ''comHora'', 4, 81, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''hProg'', 83, ''HORA PROGRAMADA'', ''comHora'', 4, 81, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 84, ''ENTREGA NO INTERVALO DE HORARIO DEFINIDO'', ''noInter'', 3, 69, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpHor'', 85, ''TIPO DE HORA'', ''noInter'', 4, 84, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''hIni'', 86, ''HORA INICIAL'', ''noInter'', 4, 84, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''hFim'', 87, ''HORA FINAL'', ''noInter'', 4, 84, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''origCalc'', 88, ''MUNICIPIO DE ORIGEM PARA EFEITO DE CALC. DO FRETE'', ''compl'', 2, 59, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''destCalc'', 89, ''MUNICIPIO DE DESTINO PARA EFEITO DE CALC. DO FRETE'', ''compl'', 2, 59, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xObs'', 90, ''OBSERVAVOES GERAIS'', ''compl'', 2, 59, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 91, ''CAMPO DE USO LIVRE DO CONTRIBUINTE'', ''ObsCont'', 2, 59, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCampo'', 92, ''IDENTIFICACAO DO CAMPO'', ''ObsCont'', 3, 91, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xTexto'', 93, ''CONTEUDO DO CAMPO'', ''ObsCont'', 3, 91, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 94, ''CAMPO DE USO LIVRE DO CONTRIBUINTE'', ''ObsFisco'', 2, 59, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCampo'', 95, ''IDENTIFICACAO DO CAMPO'', ''ObsFisco'', 3, 94, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xTexto'', 96, ''CONTEUDO DO CAMPO'', ''ObsFisco'', 3, 94, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 97, ''IDENTIFICACAO DO EMITENTE DO CT-E'', ''emit'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CNPJ'', 98, ''CNPJ DO EMITENTE'', ''emit'', 2, 97, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''IE'', 99, ''INSCRICAO ESTADUAL DO EMITENTE'', ''emit'', 2, 97, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 100, ''RAZAO SOCIAL OU NOME DO EMITENTE'', ''emit'', 2, 97, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xFant'', 101, ''NOME FANTASIA'', ''emit'', 2, 97, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 102, ''ENDERECO DO EMITENTE'', ''enderEmit'', 2, 97, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLgr'', 103, ''LOGRADOURO'', ''enderEmit'', 3, 102, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 104, ''NUMERO'', ''enderEmit'', 3, 102, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCpl'', 105, ''COMPLEMENTO'', ''enderEmit'', 3, 102, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBairro'', 106, ''BAIRRO'', ''enderEmit'', 3, 102, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMun'', 107, ''CODIGO DO MUNICIPIO'', ''enderEmit'', 3, 102, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMun'', 108, ''NOME DO MUNICIPIO'', ''enderEmit'', 3, 102, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CEP'', 109, ''CEP'', ''enderEmit'', 3, 102, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 110, ''SIGLA DA UF'', ''enderEmit'', 3, 102, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''fone'', 111, ''TELEFONE'', ''enderEmit'', 3, 102, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 112, ''INFORMACOES DO REMETENTE DAS MERC TRANSP PELO CT-E'', ''rem'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CNPJ'', 113, ''NUMERO DO CNPJ'', ''rem'', 2, 112, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CPF'', 114, ''NUMERO DO CPF'', ''rem'', 2, 112, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''IE'', 115, ''INSCRICAO ESTADUAL'', ''rem'', 2, 112, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 116, ''RAZAO SOCIAL OU NOME DO REMETENTE'', ''rem'', 2, 112, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xFant'', 117, ''NOME FANTASIA'', ''rem'', 2, 112, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''fone'', 118, ''TELEFONE'', ''rem'', 2, 112, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 119, ''DADOS DO ENDERECO'', ''enderReme'', 2, 112, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLgr'', 120, ''LOGRADOURO'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 121, ''NUMERO'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCpl'', 122, ''COMPLEMENTO'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBairro'', 123, ''BAIRRO'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMun'', 124, ''CODIGO DO MUNICIPIO'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMun'', 125, ''NOME DO MUNICIPIO'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CEP'', 126, ''CEP'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 127, ''SIGLA DA UF'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cPais'', 128, ''CODIGO DO PAIS'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xPais'', 129, ''NOME DO PAIS'', ''enderReme'', 3, 119, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''email'', 130, ''ENDERECO DE EMAIL'', ''rem'', 2, 112, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 131, ''LOCAL DA COLETA'', ''locColeta'', 2, 112, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 132, ''NUMERO DO CNPJ'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CPF'', 133, ''NUMERO DO CPF'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 134, ''RAZAO SOCIAL OU NOME'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLgr'', 135, ''LOGRADOURO'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 136, ''NUMERO'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCpl'', 137, ''COMPLEMENTO'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBairro'', 138, ''BAIRRO'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMun'', 139, ''CODIGO DO MUNICIPIO'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMun'', 140, ''NOME DO MUNICIPIO'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 141, ''SIGLA DA UF'', ''locColeta'', 3, 131, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 142, ''INFORMACOES DO EXPEDIDOR DA CARGA'', ''exped'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 143, ''NUMERO DO CNPJ'', ''exped'', 2, 142, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CPF'', 144, ''NUMERO DO CPF'', ''exped'', 2, 142, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''IE'', 145, ''INSCRICAO ESTADUAL'', ''exped'', 2, 142, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 146, ''RAZAO SOCIAL OU NOME'', ''exped'', 2, 142, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''fone'', 147, ''TELEFONE'', ''exped'', 2, 142, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 148, ''DADOS DO ENDERECO'', ''enderExped'', 2, 142, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLgr'', 149, ''LOGRADOURO'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 150, ''NUMERO'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCpl'', 151, ''COMPLEMENTO'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBairro'', 152, ''BAIRRO'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMun'', 153, ''CODIGO DO MUNICIPIO'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMun'', 154, ''NOME DO MUNICIPIO'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CEP'', 155, ''CEP'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 156, ''SIGLA DA UF'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cPais'', 157, ''CODIGO DO PAIS'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xPais'', 158, ''NOME DO PAIS'', ''enderExped'', 3, 148, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''email'', 159, ''ENDERECO DE EMAIL'', ''exped'', 2, 142, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 160, ''INFORMACOES DO RECEBEDOR DA CARGA'', ''receb'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 161, ''NUMERO DO CNPJ'', ''receb'', 2, 160, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CPF'', 162, ''NUMERO DO CPF'', ''receb'', 2, 160, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''IE'', 163, ''INSCRICAO ESTADUAL'', ''receb'', 2, 160, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 164, ''RAZAO SOCIAL OU NOME'', ''receb'', 2, 160, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''fone'', 165, ''TELEFONE'', ''receb'', 2, 160, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 166, ''DADOS DO ENDERECO'', ''enderReceb'', 2, 160, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLgr'', 167, ''LOGRADOURO'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 168, ''NUMERO'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCpl'', 169, ''COMPLEMENTO'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBairro'', 170, ''BAIRRO'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMun'', 171, ''CODIGO DO MUNICIPIO'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMun'', 172, ''NOME DO MUNICIPIO'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CEP'', 173, ''CEP'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 174, ''SIGLA DA UF'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cPais'', 175, ''CODIGO DO PAIS'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xPais'', 176, ''NOME DO PAIS'', ''enderReceb'', 3, 166, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''email'', 177, ''ENDERECO DE EMAIL'', ''receb'', 2, 160, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 178, ''INFORMACOES DO DESTINATARIO DO CT-E'', ''dest'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CNPJ'', 179, ''NUMERO DO CNPJ'', ''dest'', 2, 178, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CPF'', 180, ''NUMERO DO CPF'', ''dest'', 2, 178, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''IE'', 181, ''INSCRICAO ESTADUAL'', ''dest'', 2, 178, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 182, ''RAZAO SOCIAL OU NOME DO DESTINATARIO'', ''dest'', 2, 178, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''fone'', 183, ''TELEFONE'', ''dest'', 2, 178, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''ISUF'', 184, ''INSCRICAO NA SUFRAMA'', ''dest'', 2, 178, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 185, ''DADOS DO ENDERECO'', ''enderDest'', 2, 178, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLgr'', 186, ''LOGRADOURO'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 187, ''NUMERO'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCpl'', 188, ''COMPLEMENTO'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBairro'', 189, ''BAIRRO'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMun'', 190, ''CODIGO DO MUNICIPIO'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMun'', 191, ''NOME DO MUNICIPIO'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CEP'', 192, ''CEP'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 193, ''SIGLA DA UF'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cPais'', 194, ''CODIGO DO PAIS'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xPais'', 195, ''NOME DO PAIS'', ''enderDest'', 3, 185, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''email'', 196, ''ENDERECO DE EMAIL'', ''dest'', 2, 178, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 197, ''LOCAL DE ENTREGA CONSTANTE NA NOTA FISCAL'', ''locEnt'', 2, 178, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 198, ''NUMERO DO CNPJ'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CPF'', 199, ''NUMERO DO CPF'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 200, ''RAZAO SOCIAL OU NOME'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLgr'', 201, ''LOGRADOURO'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 202, ''NUMERO'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCpl'', 203, ''COMPLEMENTO'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBairro'', 204, ''BAIRRO'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMun'', 205, ''CODIGO DO MUNICIPIO'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMun'', 206, ''NOME DO MUNICIPIO'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 207, ''SIGLA DA UF'', ''locEnt'', 3, 197, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 208, ''VALORES DA PRESTACAO DE SERVICO'', ''vPrest'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vTPrest'', 209, ''VALOR TOTAL DA PRESTACAO DO SERVICO'', ''vPrest'', 2, 208, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vRec'', 210, ''VALOR A RECEBER'', ''vPrest'', 2, 208, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 211, ''COMPONENTES DO VALOR DA PRESTACAO'', ''Comp'', 2, 208, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 212, ''NOME DO COMPONENTE'', ''Comp'', 3, 211, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vComp'', 213, ''VALOR DO COMPONENTE'', ''Comp'', 3, 211, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 214, ''INFORMACOES RELATIVAS AOS IMPOSTOS'', ''imp'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', NULL, 215, ''INFORMACOES RELATIVAS AO ICMS'', ''ICMS'', 2, 214, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', NULL, 216, ''PRESTACAO SUJEITO A TRIBUTACAO NORMAL DO ICMS'', ''ICMS00'', 3, 215, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CST'', 217, ''CLASSIFICACAO TRIBUTARIA DO SERVICO'', ''ICMS00'', 4, 216, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vBC'', 218, ''VALOR DA BC DO ICMS'', ''ICMS00'', 4, 216, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''pICMS'', 219, ''ALIQUOTA DO ICMS'', ''ICMS00'', 4, 216, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vICMS'', 220, ''VALOR DO ICMS'', ''ICMS00'', 4, 216, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', NULL, 221, ''PRESTACAO SUJEITO A TRIB COM REDUCAO DE BC DO ICMS'', ''ICMS20'', 3, 215, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CST'', 222, ''CLASSIFICACAO TRIBUTARIA DO SERVICO'', ''ICMS20'', 4, 221, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''pRedBC'', 223, ''PERCENTUAL DE REDUCAO DA BC'', ''ICMS20'', 4, 221, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vBC'', 224, ''VALOR DA BC DO ICMS'', ''ICMS20'', 4, 221, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''pICMS'', 225, ''ALIQUOTA DO ICMS'', ''ICMS20'', 4, 221, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vICMS'', 226, ''VALOR DO ICMS'', ''ICMS20'', 4, 221, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', NULL, 227, ''ICMS ISENTO NAO TRIBUTARO OU DIFERIDO'', ''ICMS45'', 3, 215, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CST'', 228, ''CLASSIFICACAO TRIBUTARIA DO SERVICO'', ''ICMS45'', 4, 227, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', NULL, 229, ''ICMS COBRADO POR SUBSTITUICAO TRIBUTARIA'', ''ICMS60'', 3, 215, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CST'', 230, ''CLASSIFICACAO TRIBUTARIA DO SERVICO'', ''ICMS60'', 4, 229, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vBCSTRet'', 231, ''VALOR DA BC DO ICMS RETIDO'', ''ICMS60'', 4, 229, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vICMSSTRet'', 232, ''VALOR DO ICMS RETIDO'', ''ICMS60'', 4, 229, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''pICMSSTRet'', 233, ''ALIQUOTA DO ICMS'', ''ICMS60'', 4, 229, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vCred'', 234, ''VALOR DO CREDITO OUTORGADO/PRESUMIDO'', ''ICMS60'', 4, 229, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', NULL, 235, ''ICMS OUTROS'', ''ICMS90'', 3, 215, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CST'', 236, ''CLASSIFICACAO TRIBUTARIA DO SERVICO'', ''ICMS90'', 4, 235, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''pRedBC'', 237, ''PERCENTUAL DE REDUCAO DA BC'', ''ICMS90'', 4, 235, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vBC'', 238, ''VALOR DA BC DO ICMS'', ''ICMS90'', 4, 235, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''pICMS'', 239, ''ALIQUOTA DO ICMS'', ''ICMS90'', 4, 235, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vICMS'', 240, ''VALOR DO ICMS'', ''ICMS90'', 4, 235, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vCred'', 241, ''VALOR DO CREDITO OUTORGADO/PRESUMIDO'', ''ICMS90'', 4, 235, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', NULL, 242, ''ICMS DEVIDO A UF DE ORIG PREST QDO DIF UF DO EMIT'', ''ICMSOutraUF'', 3, 215, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''CST'', 243, ''CLASSIFICACAO TRIBUTARIA DO SERVICO'', ''ICMSOutraUF'', 4, 242, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''pRedBCOutraUF'', 244, ''PERCENTUAL DE REDUCAO DA BC'', ''ICMSOutraUF'', 4, 242, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vBCOutraUF'', 245, ''VALOR DA BC DO ICMS'', ''ICMSOutraUF'', 4, 242, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''pICMSOutraUF'', 246, ''ALIQUOTA DO ICMS'', ''ICMSOutraUF'', 4, 242, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''vICMSOutraUF'', 247, ''VALOR DO ICMS DEVIDO OUTRA UF'', ''ICMSOutraUF'', 4, 242, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', NULL, 248, ''SIMPLES NACIONAL'', ''ICMSSN'', 3, 215, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''N'', ''indSN'', 249, ''INDICA SE O CONTRIBUINTE E SIMPLES NACIONAL'', ''ICMSSN'', 4, 248, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vTotTrib'', 250, ''VALOR TOTAL DOS TRIBUTOS'', ''imp'', 2, 248, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''infAdFisco'', 251, ''INFORMACOES ADICIONAIS DE INTERESSE DO FISCO'', ''imp'', 2, 248, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 252, ''GRUPO DE INFORMACOES DO CT-E NORMAL E SUBSTITUTO'', ''infCTeNorm'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 253, ''INFORMACOES DA CARGA DO CT-E'', ''infCarga'', 2, 252, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vCarga'', 254, ''VALOR TOTAL DA CARGA'', ''infCarga'', 3, 253, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''proPred'', 255, ''PRODUTO PREDOMINANTE'', ''infCarga'', 3, 253, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xOutCat'', 256, ''OUTRAS CARACTERISTICAS DA CARGA'', ''infCarga'', 3, 253, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 257, ''INFORMACOES DE QUANTIDADES DA CARGA DO CT-E'', ''infQ'', 3, 253, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cUnid'', 258, ''CODIGO DA UNIDADE DE MEDIDA'', ''infQ'', 4, 257, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpMed'', 259, ''TIPO DA MEDIDA'', ''infQ'', 4, 257, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qCarga'', 260, ''QUANTIDADE'', ''infQ'', 4, 257, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 261, ''INFORMACOES DOS DOCUMENTOS TRANSPORTADOS PELO CT-E'', ''infDoc'', 2, 252, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 262, ''INFORMACOES DAS NF'', ''infNF'', 3, 261, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nRoma'', 263, ''NUMERO DO ROMANEIO DA NF'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nPed'', 264, ''NUMERO DO PEDIDO DA NF'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''mod'', 265, ''MODELO DA NOTA FISCAL'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''serie'', 266, ''SERIE'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nDoc'', 267, ''NUMERO'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dEmi'', 268, ''DATA DE EMISSAO'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vBC'', 269, ''VALOR DA BASE DE CALCULO DO ICMS'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vICMS'', 270, ''VALOR TOTAL DO ICMS'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vBCST'', 271, ''VALOR DA BASE DE CALCULO DO ICMS ST'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vST'', 272, ''VALOR TOTAL DO ICMS ST'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vProd'', 273, ''VALOR TOTAL DOS PRODUTOS'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vNF'', 274, ''VALOR TOTAL DA NF'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nCFOP'', 275, ''CFOP PREDOMINANTE'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nPeso'', 276, ''PESO TOTAL EM KG'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''PIN'', 277, ''PIN SUFRAMA'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dPrev'', 278, ''DATA PREVISTA DE ENTREGA'', ''infNF'', 4, 262, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 279, ''INFORMACOES DAS UNIDADES DE TRANSPORTE'', ''infUnidTransp'', 4, 262, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 419, ''INFORMACOES DO MODAL RODOVIARIO'', ''rodo'', 0, 0, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpUnidTransp'', 280, ''TIPO DA UNIDADE DE TRANSPORTE'', ''infUnidTransp'', 5, 279, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idUnidTransp'', 281, ''IDENTIFICACAO DA UNIDADE DE TRANSPORTE'', ''infUnidTransp'', 5, 279, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 282, ''LACRES DAS UNIDADES DE TRANSPORTE'', ''lacUnidTransp'', 5, 279, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 283, ''NUMERO DO LACRE'', ''lacUnidTransp'', 6, 282, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 284, ''INFORMACOES DAS UNIDADES DE CARGA'', ''infUnidCarga'', 5, 279, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpUnidCarga'', 285, ''TIPO DA UNIDADE DE CARGA'', ''infUnidCarga'', 6, 284, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idUnidCarga'', 286, ''IDENTIFICACAO DA UNIDADE DE CARGA'', ''infUnidCarga'', 6, 284, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 287, ''LACRES DAS UNIDADES DE CARGA'', ''lacUnidCarga'', 6, 284, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 288, ''NUMERO DO LACRE'', ''lacUnidCarga'', 7, 287, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qtdRat'', 289, ''QUANTIDADE RATEADA'', ''infUnidCarga'', 6, 284, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qtdRat'', 290, ''QUANTIDADE RATEADA'', ''infUnidTransp'', 5, 279, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''RNTRC'', 420, ''REGISTRO NACIONAL DE TRANSPORTADOR RODOV DE CARGA'', ''rodo'', 1, 419, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dPrev'', 421, ''DATA PREVISTA PARA ENTREGA DA CARGA NO RECEBEDOR'', ''rodo'', 1, 419, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''lota'', 422, ''INDICADOR DE LOTACAO'', ''rodo'', 1, 419, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CIOT'', 423, ''CODIGO IDENTIFICADOR DA OPERACAO DE TRANSPORTE'', ''rodo'', 1, 419, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 424, ''ORDENS DE COLETA ASSOCIADOS'', ''occ'', 1, 419, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''serie'', 425, ''SERIE DA OCC'', ''occ'', 2, 424, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 291, ''INFORMACOES DAS UNIDADES DE CARGA'', ''infUnidCarga'', 4, 262, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpUnidCarga'', 292, ''TIPO DA UNIDADE DE CARGA'', ''infUnidCarga'', 5, 291, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idUnidCarga'', 293, ''IDENTIFICACAO DA UNIDADE DE CARGA'', ''infUnidCarga'', 5, 291, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 294, ''LACRES DAS UNIDADES DE CARGA'', ''lacUnidCarga'', 5, 291, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 295, ''NUMERO DO LACRE'', ''lacUnidCarga'', 6, 294, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qtdRat'', 296, ''QUANTIDADE RATEADA'', ''infUnidCarga'', 5, 291, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 297, ''INFORMACOES DAS NF-E'', ''infNFe'', 3, 261, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''chave'', 298, ''CHAVE DE ACESSO DA NF-E'', ''infNFe'', 4, 297, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''PIN'', 299, ''PIN SUFRAMA'', ''infNFe'', 4, 297, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dPrev'', 300, ''DATA PREVISTA DE ENTREGA'', ''infNFe'', 4, 297, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 301, ''INFORMACOES DAS UNIDADES DE TRANSPORTE'', ''infUnidTransp'', 4, 297, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpUnidTransp'', 302, ''TIPO DA UNIDADE DE TRANSPORTE'', ''infUnidTransp'', 5, 301, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idUnidTransp'', 303, ''IDENTIFICACAO DA UNIDADE DE TRANSPORTE'', ''infUnidTransp'', 5, 301, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 304, ''LACRES DAS UNIDADES DE TRANSPORTE'', ''lacUnidTransp'', 5, 301, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 305, ''NUMERO DO LACRE'', ''lacUnidTransp'', 6, 304, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 306, ''INFORMACOES DAS UNIDADE DE CARGA'', ''infUnidCarga'', 5, 301, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpUnidCarga'', 307, ''TIPO DA UNIDADE DE CARGA'', ''infUnidCarga'', 6, 306, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idUnidCarga'', 308, ''IDENTIFICACAO DA UNIDADE DE CARGA'', ''infUnidCarga'', 6, 306, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 309, ''LACRES DAS UNIDADES DE CARGA'', ''lacUnidCarga'', 6, 306, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 310, ''NUMERO DO LACRE'', ''lacUnidCarga'', 7, 309, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qtdRat'', 311, ''QUANTIDADE RATEADA'', ''infUnidCarga'', 6, 306, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qtdRat'', 312, ''QUANTIDADE RATEADA'', ''infUnidTransp'', 5, 301, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 313, ''INFORMACOES DAS UNIDADES DE CARGA'', ''infUnidCarga'', 4, 297, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpUnidCarga'', 314, ''TIPO DA UNIDADE DE CARGA'', ''infUnidCarga'', 5, 313, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idUnidCarga'', 315, ''IDENTIFICACAO DA UNIDADE DE CARGA'', ''infUnidCarga'', 5, 313, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 316, ''LACRES DAS UNIDADES DE CARGA'', ''lacUnidCarga'', 5, 313, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 317, ''NUMERO DO LACRE'', ''lacUnidCarga'', 6, 316, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qtdRat'', 318, ''QUANTIDADE RATEADA'', ''infUnidCarga'', 5, 313, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 319, ''INFORMACOES DOS DEMAIS DOCUMENTOS'', ''infOutros'', 3, 261, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpDoc'', 320, ''TIPO DE DOCUMENTO ORIGINARIO'', ''infOutros'', 4, 319, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''descOutros'', 321, ''DESCRICAO QUANDO SE TRATAR DE 99-OUTROS'', ''infOutros'', 4, 319, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nDoc'', 322, ''NUMERO'', ''infOutros'', 4, 319, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dEmi'', 323, ''DATA DE EMISSAO'', ''infOutros'', 4, 319, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vDocFisc'', 324, ''VALOR DO DOCUMENTO'', ''infOutros'', 4, 319, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dPrev'', 325, ''DATA PREVISTA DE ENTREGA'', ''infOutros'', 4, 319, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 326, ''INFORMACOES DAS UNIDADES DE TRANSPORTE'', ''infUnidTransp'', 4, 319, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpUnidTransp'', 327, ''TIPO DA UNIDADE DE TRANSPORTE'', ''infUnidTransp'', 5, 326, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idUnidTransp'', 328, ''IDENTIFICACAO DA UNIDADE DE TRANSPORTE'', ''infUnidTransp'', 5, 326, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 329, ''LACRES DAS UNIDADES DE TRANSPORTE'', ''lacUnidTransp'', 5, 326, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 330, ''NUMERO DO LACRE'', ''lacUnidTransp'', 6, 329, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 331, ''INFORMACOES DAS UNIDADES DE CARGA'', ''infUnidCarga'', 5, 326, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpUnidCarga'', 332, ''TIPO DA UNIDADE DE CARGA'', ''infUnidCarga'', 6, 331, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idUnidCarga'', 333, ''IDENTIFICACAO DA UNIDADE DE CARGA'', ''infUnidCarga'', 6, 331, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 334, ''LACRES DAS UNIDADES DE CARGA'', ''lacUnidCarga'', 6, 331, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 335, ''NUMERO DO LACRE'', ''lacUnidCarga'', 7, 334, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qtdRat'', 336, ''QUANTIDADE RATEADA'', ''infUnidCarga'', 6, 331, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qtdRat'', 337, ''QUANTIDADE RATEADA'', ''infUnidTransp'', 5, 326, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 338, ''INFORMACOES DAS UNIDADES DE CARGA'', ''infUnidCarga'', 4, 319, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpUnidCarga'', 339, ''TIPO DA UNIDADE DE CARGA'', ''infUnidCarga'', 5, 338, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idUnidCarga'', 340, ''IDENTIFICACAO DA UNIDADE DE CARGA'', ''infUnidCarga'', 5, 338, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 341, ''LACRES DAS UNIDADES DE CARGA'', ''lacUnidCarga'', 5, 338, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 342, ''NUMERO DO LACRE'', ''lacUnidCarga'', 6, 341, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qtdRat'', 343, ''QUANTIDADE RATEADA'', ''infUnidCarga'', 5, 338, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 344, ''DOCUMENTOS DE TRANSPORTE ANTERIOR'', ''docAnt'', 2, 252, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 345, ''EMISSOR DO DOCUMENTO ANTERIOR'', ''emiDocAnt'', 3, 344, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 346, ''NUMERO DO CNPJ'', ''emiDocAnt'', 4, 345, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CPF'', 347, ''NUMERO DO CPF'', ''emiDocAnt'', 4, 345, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''IE'', 348, ''INSCRICAO ESTADUAL'', ''emiDocAnt'', 4, 345, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 349, ''SIGLA DA UF'', ''emiDocAnt'', 4, 345, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 350, ''RAZAO SOCIAL OU NOME DO EXPEDIDOR'', ''emiDocAnt'', 4, 345, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 351, ''INFORMACOES DE IDENTIFICACAO DOS DOC DE TRANSP ANT'', ''idDocAnt'', 4, 345, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 352, ''DOCUMENTOS DE TRANSPORTE ANTERIOR EM PAPEL'', ''idDocAntPap'', 5, 351, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpDoc'', 353, ''TIPO DO DOCUMENTO DE TRANSPORTE ANTERIOR'', ''idDocAntPap'', 6, 352, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''serie'', 354, ''SERIE DO DOCUMENTO FISCAL'', ''idDocAntPap'', 6, 352, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''subser'', 355, ''SERIE DO DOCUMENTO FISCAL'', ''idDocAntPap'', 6, 352, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nDoc'', 356, ''NUMERO DO DOCUMENTO FISCAL'', ''idDocAntPap'', 6, 352, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dEmi'', 357, ''DATA DE EMISSAO'', ''idDocAntPap'', 6, 352, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 358, ''DOCUMENTOS DE TRANSPORTE ANTERIOR ELETRONICOS'', ''idDocAntEle'', 5, 351, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''chave'', 359, ''CHAVE DE ACESSO DO CT-E'', ''idDocAntEle'', 6, 358, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 360, ''INFORMACOES DE SEGURO DA CARGA'', ''seg'', 2, 252, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''respSeg'', 361, ''RESPONSAVEL PELO SEGURO'', ''seg'', 3, 360, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xSeg'', 362, ''NOME DA SEGURADORA'', ''seg'', 3, 360, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nApol'', 363, ''NUMERO DA APOLICE'', ''seg'', 3, 360, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nAver'', 364, ''NUMERO DA AVERBACAO'', ''seg'', 3, 360, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vCarga'', 365, ''VALOR DA CARGA PARA EFEITO DE AVERBACAO'', ''seg'', 3, 360, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 366, ''INFORMACOES DO MODAL'', ''infModal'', 2, 252, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''versaoModal'', 367, ''VERSAO DO LEIAUTE ESPECIFICO PARA O MODAL'', ''infModal'', 3, 366, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xs:any'', 368, ''XML DO MODAL'', ''infModal'', 3, 366, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 369, ''PREENCHIDO QDO FOR TRANSP PRODUTOS PERIGOSOS'', ''peri'', 2, 252, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nONU'', 370, ''NUMERO ONU/UN'', ''peri'', 3, 369, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNomeAE'', 371, ''NOME APROPRIADO PARA EMBARQUE DO PRODUTO'', ''peri'', 3, 369, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xClaRisco'', 372, ''CLASSE OU SUBCLASSE/DIVISAO E RISCO SUBSIDIARIO'', ''peri'', 3, 369, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''grEmb'', 373, ''GRUPO DE EMBALAGEM'', ''peri'', 3, 369, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qTotProd'', 374, ''QUANTIDADE TOTAL POR PRODUTO'', ''peri'', 3, 369, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''qVolTipo'', 375, ''QUANTIDADE E TIPO DE VOLUMES'', ''peri'', 3, 369, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''pontoFulgor'', 376, ''PONTO DE FULGOR'', ''peri'', 3, 369, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 377, ''INFORMACOES DOS VEICULOS TRANSPORTADOS'', ''veicNovos'', 2, 252, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''chassi'', 378, ''CHASSI DO VEICULO'', ''veicNovos'', 3, 377, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cCor'', 379, ''COR DO VEICULO'', ''veicNovos'', 3, 377, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCor'', 380, ''DESCRICAO DA COR'', ''veicNovos'', 3, 377, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMod'', 381, ''CODIGO PARA MARCA MODELO'', ''veicNovos'', 3, 377, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vUnit'', 382, ''VALOR UNITARIO DO VEICULO'', ''veicNovos'', 3, 377, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vFrete'', 383, ''FRETE UNITARIO'', ''veicNovos'', 3, 377, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 384, ''DADOS DA COBRANCA DO CT-E'', ''cobr'', 2, 252, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 385, ''DADOS DA FATURA'', ''fat'', 3, 384, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nFat'', 386, ''NUMERO DA FATURA'', ''fat'', 4, 385, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vOrig'', 387, ''VALOR ORIGINAL DA FATURA'', ''fat'', 4, 385, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vDesc'', 388, ''VALOR DO DESCONTO DA FATURA'', ''fat'', 4, 385, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vLiq'', 389, ''VALOR LIQUIDO DA FATURA'', ''fat'', 4, 385, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 390, ''DADOS DAS DUPLICATAS'', ''dup'', 3, 384, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nDup'', 391, ''NUMERO DA DUPLICATA'', ''dup'', 4, 390, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dVenc'', 392, ''DATA DE VENCIMENTO DA DUPLICATA'', ''dup'', 4, 390, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vDup'', 393, ''VALOR DA DUPLICATA'', ''dup'', 4, 390, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 394, ''INFORMACOES DO CT-E DE SUBSTITUICAO'', ''infCteSub'', 2, 252, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''chCte'', 395, ''CHAVE DE ACESSO DO CT-E A SER SUBSTITUIDO'', ''infCteSub'', 3, 394, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 396, ''TOMADOR E CONTRIBUINTE DO ICMS'', ''tomaICMS'', 3, 394, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''refNFe'', 397, ''CHAVE DE ACESSO DA NF-E EMITIDA PELO TOMADOR'', ''tomaICMS'', 4, 396, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 398, ''INFORMACAO DA NF OU CT EMITIDO PELO TOMADOR'', ''refNF'', 4, 396, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 399, ''CNPJ DO EMITENTE'', ''refNF'', 5, 398, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CPF'', 400, ''NUMERO DO CPF'', ''refNF'', 5, 398, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''mod'', 401, ''MODELO DO DOCUMENTO FISCAL'', ''refNF'', 5, 398, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''serie'', 402, ''SERIE DO DOCUMENTO FISCAL'', ''refNF'', 5, 398, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''subserie'', 403, ''SUBSERIE DO DOCUMENTO FISCAL'', ''refNF'', 5, 398, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 404, ''NUMERO DO DOCUMENTO FISCAL'', ''refNF'', 5, 398, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''valor'', 405, ''VALOR DO DOCUMENTO FISCAL'', ''refNF'', 5, 398, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dEmi'', 406, ''DATA DE EMISSAO DO DOCUMENTO FISCAL'', ''refNF'', 5, 398, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''refCte'', 407, ''CHAVE DE ACESSO DO CT-E EMITIDO PELO TOMADOR'', ''tomaICMS'', 4, 396, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 408, ''TOMADOR NAO E CONTRIBUINTE DO ICMS'', ''tomaNaoICMS'', 3, 394, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''refCteAnu'', 409, ''CHAVE DE ACESSO DO CT-E DE ANULACAO'', ''tomaNaoICMS'', 4, 408, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 410, ''DETALHAMENTO DO CT-E COMPLEMENTADO'', ''infCteComp'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''chave'', 411, ''CHAVE DO CT-E COMPLEMENTADO'', ''infCteComp'', 2, 410, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 412, ''DETALHAMENTO DO CT-E DO TIPO ANULACAO'', ''infCteAnu'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''chCte'', 413, ''CHAVE DE ACESSO DO CT-E ORIG A SER ANULADO E SUBST'', ''infCteAnu'', 2, 412, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dEmi'', 414, ''DATA DE EMISSAO DA DEC DO TOMADOR NAO CONT DO ICMS'', ''infCteAnu'', 2, 412, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 415, ''AUTORIZADOS PARA DOWNLOAD DO XML DO DF-E'', ''autXML'', 1, 1, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 416, ''CNPJ DO AUTORIZADO'', ''autXML'', 2, 415, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CPF'', 417, ''CPF DO AUTORIZADO'', ''autXML'', 2, 415, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 418, ''ASSINATURA DIGITAL'', ''ds:signature'', 0, 0, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nOcc'', 426, ''NUMERO DA ORDEM DE COLETA'', ''occ'', 2, 424, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dEmi'', 427, ''DATA DE EMISSAO DA ORDEM DE COLETA'', ''occ'', 2, 424, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 428, ''EMITENTE DA ORDEM DE COLETA'', ''emiOcc'', 2, 424, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 429, ''NUMERO DO CNPJ'', ''emiOcc'', 3, 428, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cInt'', 430, ''CODIGO INTERNO DE USO DA TRANSPORTADORA'', ''emiOcc'', 3, 428, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''IE'', 431, ''INSCRICAO ESTADUAL'', ''emiOcc'', 3, 428, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 432, ''SIGLA DA UF'', ''emiOcc'', 3, 428, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''fone'', 433, ''TELEFONE'', ''emiOcc'', 3, 428, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 434, ''INFORMACOES DE VALE PEDAGIO'', ''valePed'', 1, 419, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJForn'', 435, ''CNPJ DA EMPRESA FORNECEDORA DO VALE PEDAGIO'', ''valePed'', 2, 434, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nCompra'', 436, ''NUMERO DO COMPROVANTE DE COMPRA'', ''valePed'', 2, 434, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJPg'', 437, ''CNPJ DO RESPONSAVEL PELO PAGAMENTO DO VALE PEDAGIO'', ''valePed'', 2, 434, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vValePed'', 438, ''VALOR DO VALE PEDAGIO'', ''valePed'', 2, 434, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 439, ''DADOS DOS VEICULOS'', ''veic'', 1, 419, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cInt'', 440, ''CODIGO INTERNO DO VEICULO'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''RENAVAM'', 441, ''RENAVAM DO VEICULO'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''placa'', 442, ''PLACA DO VEICULO'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tara'', 443, ''TARA EM KG'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''capKG'', 444, ''CAPACIDADE EM KG'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''capM3'', 445, ''CAPACIDADE EM M3'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpProp'', 446, ''TIPO DE PROPRIEDADE DO VEICULO'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpVeic'', 447, ''TIPO DE VEICULO'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpRod'', 448, ''TIPO DE RODADO'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpCar'', 449, ''TIPO DE CARROCERIA'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 450, ''UF EM QUE VEICULO ESTA LICENCIADO'', ''veic'', 2, 439, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 451, ''PROPRIETARIO DO VEICULO'', ''prop'', 2, 439, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CPF'', 452, ''NUMERO DO CPF'', ''prop'', 3, 451, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 453, ''NUMERO DO CNPJ'', ''prop'', 3, 451, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''RNTRC'', 454, ''REGISTRO NACIONAL DOS TRANSPORTADOR RODOV DE CARGA'', ''prop'', 3, 451, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 455, ''RAZAO SOCIAL OU NOME DO PROPRIETARIO'', ''prop'', 3, 451, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''IE'', 456, ''INSCRICAO ESTADUAL'', ''prop'', 3, 451, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 457, ''UF'', ''prop'', 3, 451, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpProp'', 458, ''TIPO PROPRIETARIO'', ''prop'', 3, 451, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 459, ''LACRES'', ''lacRodo'', 1, 419, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nLacre'', 460, ''NUMERO DO LACRE'', ''lacRodo'', 2, 459, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 461, ''INFORMACOES DOS MOTORISTAS'', ''moto'', 1, 419, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 462, ''NOME DO MOTORISTA'', ''moto'', 2, 461, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CPF'', 463, ''CPF DO MOTORISTA'', ''moto'', 2, 461, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 464, ''INFORMACOES DO MODAL AREO'', ''aereo'', 0, 0, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nMinu'', 465, ''NUMERO DA MINUTA'', ''aereo'', 1, 464, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nOCA'', 466, ''NUMERO OPERACIONAL DO CONHECIMENTO AEREO'', ''aereo'', 1, 464, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dPrevAereo'', 467, ''DATA PREVISTA DA ENTREGA'', ''aereo'', 1, 464, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLAgEmi'', 468, ''IDENTIFICACAO DO EMISSOR'', ''aereo'', 1, 464, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''IdT'', 469, ''IDENTIFICACAO INTERNA DO TOMADOR'', ''aereo'', 1, 464, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 470, ''INFORMACOES DE TARIFA'', ''tarifa'', 1, 464, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CL'', 471, ''CLASSE'', ''tarifa'', 2, 470, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cTar'', 472, ''CODIGO DA TARIFA'', ''tarifa'', 2, 470, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vTar'', 473, ''VALOR DA TARIFA'', ''tarifa'', 2, 470, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 474, ''NATUREZA DA CARGA'', ''natCarga'', 1, 464, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xDime'', 475, ''DIMENSAO'', ''natCarga'', 2, 474, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cInfManu'', 476, ''INFORMACOES DE MANUSEIO'', ''natCarga'', 2, 474, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cIMP'', 477, ''CARGA ESPECIAL'', ''natCarga'', 2, 474, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 478, ''INFORMACOES DO MODAL AQUAVIARIO'', ''aquav'', 0, 0, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vPrest'', 479, ''VALOR DA PRESTACAO BASE DE CALCULO DO AFRMM'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vAFRMM'', 480, ''AFRMM'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nBooking'', 481, ''NUMERO DO BOOKING'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nCtrl'', 482, ''NUMERO DE CONTROLE'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNavio'', 483, ''IDENTIFICACAO DO NAVIO'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 484, ''GRUPO DE INFORMACOES DAS BALSAS'', ''balsa'', 1, 478, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBalsa'', 485, ''IDENTIFICADOR DA BALSA'', ''balsa'', 2, 484, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nViag'', 486, ''NUMERO DA VIAGEM'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''direc'', 487, ''DIRECAO'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''prtEmb'', 488, ''PORTO DE EMBARQUE'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''prtTransp'', 489, ''PORTO DE TRANSBORDO'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''prtDest'', 490, ''PORTO DE DESTINO'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpNav'', 491, ''TIPO DE NAVEGACAO'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''irin'', 492, ''IRIN DO NAVIO SEMPRE DEVERA SER INFORMADO'', ''aquav'', 1, 478, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 493, ''INFORMACOES DO MODAL FERROVIARIO'', ''ferrov'', 0, 0, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpTraf'', 494, ''TIPO DE TRAFEGO'', ''ferrov'', 1, 493, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 495, ''DETALHAMENTO DE INFORMACOES PARA TRAFEGO MUTUO'', ''trafMut'', 1, 493, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''respFat'', 496, ''RESPONSAVEL PELO FATURAMENTO'', ''trafMut'', 2, 495, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''ferrEmi'', 497, ''FERROVIA EMITENTE DO CT-E'', ''trafMut'', 2, 495, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''fluxo'', 498, ''FLUXO FERROVIARIO'', ''ferrov'', 1, 493, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''idTrem'', 499, ''IDENTIFICACAO DO TREM'', ''ferrov'', 1, 493, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vFrete'', 500, ''VALOR DO FRETE'', ''ferrov'', 1, 493, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 501, ''INFORMACOES DAS FERROVIAS ENVOLVIDAS'', ''ferroEnv'', 1, 493, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CNPJ'', 502, ''NUMERO DO CNPJ'', ''ferroEnv'', 2, 501, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cInt'', 503, ''CODIGO INTERNO DA FERROVIA ENVOLVIDA'', ''ferroEnv'', 2, 501, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''IE'', 504, ''INSCRICAO ESTADUAL'', ''ferroEnv'', 2, 501, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xNome'', 505, ''RAZAO SOCIAL OU NOME'', ''ferroEnv'', 2, 501, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 506, ''DADOS DO ENDERECO DA FERROVIA ENVOLVIDA'', ''enderFerro'', 2, 501, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xLgr'', 507, ''LOGRADOURO'', ''enderFerro'', 3, 506, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nro'', 508, ''NUMERO'', ''enderFerro'', 3, 506, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xCpl'', 509, ''COMPLEMENTO'', ''enderFerro'', 3, 506, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xBairro'', 510, ''BAIRRO'', ''enderFerro'', 3, 506, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cMun'', 511, ''CODIGO DO MUNICIPIO'', ''enderFerro'', 3, 506, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''xMun'', 512, ''NOME DO MUNICIPIO'', ''enderFerro'', 3, 506, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''CEP'', 513, ''CEP'', ''enderFerro'', 3, 506, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''UF'', 514, ''SIGLA DA UF'', ''enderFerro'', 3, 506, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 515, ''INFORMACOES DE DETALHES DOS VAGOES'', ''detVag'', 1, 493, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''nVag'', 516, ''NUMERO DE INDENTIFICACAO DO VAGAO'', ''detVag'', 2, 515, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''cap'', 517, ''CAPACIDADE EM TONELADAS'', ''detVag'', 2, 515, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''tpVag'', 518, ''TIPO DE VAGAO'', ''detVag'', 2, 515, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''pesoR'', 519, ''PESO REAL EM TONELADAS'', ''detVag'', 2, 515, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''pesoBC'', 520, ''PESO BASE DE CALCULO DE FRETE EM TONELADAS'', ''detVag'', 2, 515, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 521, ''INFORMACOES DO MODAL DUTOVIARIO'', ''duto'', 0, 0, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''vTar'', 522, ''VALOR DA TARIFA'', ''duto'', 1, 521, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dIni'', 523, ''DATA DE INICIO DA PRESTACAO DO SERVICO'', ''duto'', 1, 521, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''dFim'', 524, ''DATA DE FIM DA PRESTACAO DO SERVICO'', ''duto'', 1, 521, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', NULL, 525, ''INFORMACOES DO MULTIMODAL'', ''multimodal'', 0, 0, ''G'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''COTM'', 526, ''NUMERO DO CERTIF DO OPERADOR DE TRANSP MULTIMODAL'', ''multimodal'', 1, 525, ''C'');'+
    'INSERT INTO CTECAMPOS (CTF_ALTERAVEL, CTF_CAMPO, CTF_CODIGO, CTF_DESCRICAO, CTF_GRUPO, CTF_NIVEL, CTF_PAI, CTF_TIPO) VALUES (''S'', ''indNegociavel'', 527, ''INDICADOR NEGOCIAVEL'', ''multimodal'', 1, 525, ''C'');'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao183;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='183';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE TABLE FORMS ('+
    '  FMS_CODIGO DN_CODIGO,'+
    '  FMS_FORM DN_NOME,'+
    '  FMS_USUARIO DN_LOGIN,'+
    '  FMS_WIDTH DN_NUMERO,'+
    '  FMS_HEIGHT DN_NUMERO,'+
    '  FMS_TOP DN_NUMERO,'+
    '  FMS_LEFT DN_NUMERO);'+
    'ALTER TABLE FORMS ADD CONSTRAINT PK_FMS_CODIGO PRIMARY KEY (FMS_CODIGO);'+
    'ALTER TABLE FORMS ADD CONSTRAINT FK_FMS_USUARIO FOREIGN KEY (FMS_USUARIO) REFERENCES USUARIOS(USU_LOGIN) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'CREATE SEQUENCE GEN_FORMS;'+

    'ALTER TABLE CONTAS'+
    '  ADD CON_MULTA DN_VALOR,'+
    '  ADD CON_MORAJUROS DN_VALOR,'+
    '  ADD CON_DIASBAIXA DN_NUMERO,'+
    '  ADD CON_DIASPROTESTO DN_NUMERO;'+

    'ALTER TABLE BOLETOS '+
    '  ADD BOL_DTBAIXABANCO DN_DATA,'+
    '  ADD BOL_DIASBAIXA DN_NUMERO,'+
    '  ADD BOL_DIASPROTESTO DN_NUMERO;'+

    'DELETE FROM SQLS;'+
    'update LOCS set LOS_PICKLIST=''CODIGO;DATA INICIAL;CODIGO REMETENTE;REMETENTE;CODIGO DESTINATARIO;DESTINATARIO;REFERENCIA;'' where LOS_TELA='+QuotedStr('Conhecimentos Transporte Eletronicos')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE SQLS ADD CONSTRAINT FK_SQL_USUARIO FOREIGN KEY (SQL_USUARIO) REFERENCES USUARIOS(USU_LOGIN) ON DELETE CASCADE ON UPDATE CASCADE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao182;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='182';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_INFOCOBRANCAXML DN_BOOLEAN;'+
    'update PARAMETROS set PAR_INFOCOBRANCAXML='+QuotedStr('N')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao181;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='181';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE NATUREZAS ADD NAT_INFORMADIFAL DN_BOOLEAN;'+
    'update NATUREZAS set NAT_INFORMADIFAL='+QuotedStr('S')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao180;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='180';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_IMPRIMIRNUMPEDIDO DN_BOOLEAN;'+
    'update PARAMETROS set PAR_IMPRIMIRNUMPEDIDO='+QuotedStr('N')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao179;
var LimiteMobiles: String;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='179';
  DM.TBVersao.Post;

  LimiteMobiles:=SenhaEncode(AnsiString('1'),ChaveSenhaNEW);

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_IMEI AS VARCHAR(20);'+

    'CREATE TABLE MOBILES ('+
    '  MOB_CODIGO DN_CODIGO,'+
    '  MOB_DESCRICAO DN_DESCRICAO,'+
    '  MOB_DTATUALIZACAO DN_DATA,'+
    '  MOB_DTCADASTRO DN_DATA,'+
    '  MOB_IMEI DN_IMEI NOT NULL,'+
    '  MOB_MARCA DN_MARCA,'+
    '  MOB_MODELO DN_MODELO,'+
    '  MOB_STATUS DN_BOOLEAN,'+
    '  MOB_USUARIO DN_LOGIN,'+
    '  MOB_VENDEDOR DN_CODIGO);'+

    'ALTER TABLE MOBILES ADD CONSTRAINT PK_MOB_CODIGO PRIMARY KEY (MOB_CODIGO);'+
    'ALTER TABLE MOBILES ADD CONSTRAINT FK_MOB_VENDEDOR FOREIGN KEY (MOB_VENDEDOR) REFERENCES VENDEDORES(VEN_CODIGO) ON UPDATE CASCADE;'+
    'CREATE UNIQUE INDEX IX_MOB_IMEI ON MOBILES (MOB_IMEI);'+
    'CREATE SEQUENCE GEN_MOBILES;'+

    'CREATE TABLE MOBILESLOGS ('+
    '  MOL_MOBILE DN_IMEI NOT NULL,'+
    '  MOL_TABELA DN_CAMPO NOT NULL,'+
    '  MOL_DATA DN_DATA);'+

    'ALTER TABLE MOBILESLOGS ADD CONSTRAINT PK_MOL_MOBILETABELA PRIMARY KEY (MOL_MOBILE,MOL_TABELA);'+

    'ALTER TABLE CONDICOES ADD CPG_MOBILE DN_BOOLEAN;'+

    'ALTER TABLE EMPRESA ADD EMP_LIMITEMOBILES DN_LIBERACAO;'+
    'update EMPRESA set EMP_LIMITEMOBILES='+QuotedStr(LimiteMobiles)+';'+
    'update CONDICOES set CPG_MOBILE='+QuotedStr('N')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao178;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='178';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'update LOCS set LOS_PICKLIST=''CODIGO;DATA INICIAL;CODIGO CLIENTE;NOME;CCF;COO;'' where LOS_CODIGO=37;'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (109,''Cupom Fiscal com Status'',''TFormCupom'',''TODOS'',''TODOS;ABERTOS;FINALIZADOS;CANCELADOS;'');'+
    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormCupom'',''Cadastro de Cupons Fiscais'',''A'',111);'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao177;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='177';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CONDICOES ADD CPG_DESCRICAOCUPOM DN_REFERENCIA;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao176;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='176';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_LINHADIGITAVEL AS VARCHAR(55);'+
    'CREATE DOMAIN DN_TRIBUTO AS VARCHAR(10);'+

    'ALTER TABLE BOLETOS'+
    '  ADD BOL_CARTEIRACOD DN_NUMERO,'+
    '  ADD BOL_LINHADIGITAVEL DN_LINHADIGITAVEL,'+
    '  ADD BOL_CODIGOBARRAS DN_DESCRICAO,'+
    '  ADD BOL_ESPECIEDOC DN_DESCRICAO;'+

    'ALTER TABLE CONTAS'+
    '  ADD CON_ATUALIZAR DN_BOOLEAN,'+
    '  ADD CON_CARTEIRACOD DN_NUMERO,'+
    '  ADD CON_ESPECIEDOC DN_DESCRICAO;'+

    'ALTER TABLE PRODUTOS'+
    '  ADD PRO_ATUALIZAR DN_BOOLEAN,'+
    '  ADD PRO_PESAVEL DN_BOOLEAN,'+
    '  ADD PRO_PRODUCAO DN_BOOLEAN,'+
    '  ADD PRO_TRIBUTO DN_TRIBUTO,'+
    '  ADD PRO_GENERO DN_NUMERO;'+

    'ALTER TABLE CONDICOES'+
    '  ADD CPG_ATUALIZAR DN_BOOLEAN,'+
    '  ADD CPG_STATUS DN_BOOLEAN,'+
    '  ADD CPG_CUPOM DN_BOOLEAN;'+

    'CREATE TABLE ECF ('+
    '  ECF_CODIGO DN_CODIGO,'+
    '  ECF_DESCRICAO DN_DESCRICAO,'+
    '  ECF_DTATUALIZACAO DN_DATA,'+
    '  ECF_DTCADASTRO DN_DATA,'+
    '  ECF_MARCA DN_MARCA,'+
    '  ECF_MODELO DN_MODELO,'+
    '  ECF_SERIAL DN_SERIALECF,'+
    '  ECF_STATUS DN_BOOLEAN,'+
    '  ECF_USUARIO DN_LOGIN);'+

    'ALTER TABLE ECF ADD CONSTRAINT PK_ECF_CODIGO PRIMARY KEY (ECF_CODIGO);'+
    'CREATE SEQUENCE GEN_ECF;'+

    'CREATE TABLE CUPOM ('+
    '  CUP_ACREVALOR DN_VALOR,'+
    '  CUP_CCF DN_NUMERO,'+
    '  CUP_CLIENTE DN_CODIGO,'+
    '  CUP_CODIGO DN_CODIGO,'+
    '  CUP_CONDICAO DN_CODIGO,'+
    '  CUP_COO DN_NUMERO,'+
    '  CUP_DESCVALOR DN_VALOR,'+
    '  CUP_DTATUALIZACAO DN_DATA,'+
    '  CUP_DTEMISSAO DN_DATA,'+
    '  CUP_ECF DN_CODIGO,'+
    '  CUP_MOTIVO DN_BOOLEAN,'+
    '  CUP_STATUS DN_BOOLEAN,'+
    '  CUP_VALORTOTAL DN_VALOR,'+
    '  CUP_VENDA DN_NUMERO,'+
    '  CUP_VENDEDOR DN_CODIGO,'+
    '  CUP_USUARIO DN_LOGIN);'+

    'ALTER TABLE CUPOM ADD CONSTRAINT PK_CUP_CODIGO PRIMARY KEY (CUP_CODIGO);'+
    'ALTER TABLE CUPOM ADD CONSTRAINT FK_CUP_CLIENTE FOREIGN KEY (CUP_CLIENTE) REFERENCES CLIENTES(CLI_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE CUPOM ADD CONSTRAINT FK_CUP_ECF FOREIGN KEY (CUP_ECF) REFERENCES ECF(ECF_CODIGO) ON UPDATE CASCADE;'+
    'CREATE SEQUENCE GEN_CUPOM;'+

    'CREATE TABLE CUPOMITENS ('+
    '  CUI_CODIGO DN_CODIGO,'+
    '  CUI_CUPOM DN_CODIGO,'+
    '  CUI_ITEM DN_NUMERO,'+
    '  CUI_PRODUTO DN_CODIGO,'+
    '  CUI_QUANTIDADE DN_VALOR,'+
    '  CUI_VALORUNIT DN_VALOR,'+
    '  CUI_VALORTOTAL DN_VALOR,'+
    '  CUI_TRIBUTO DN_TRIBUTO,'+
    '  CUI_DESCVALOR DN_VALOR,'+
    '  CUI_ACREVALOR DN_VALOR);'+

    'ALTER TABLE CUPOMITENS ADD CONSTRAINT PK_CUI_CODIGO PRIMARY KEY (CUI_CODIGO);'+
    'ALTER TABLE CUPOMITENS ADD CONSTRAINT FK_CUI_CUPOM FOREIGN KEY (CUI_CUPOM) REFERENCES CUPOM(CUP_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'ALTER TABLE CUPOMITENS ADD CONSTRAINT FK_CUI_PRODUTO FOREIGN KEY (CUI_PRODUTO) REFERENCES PRODUTOS(PRO_CODIGO) ON UPDATE CASCADE;'+
    'CREATE SEQUENCE GEN_CUPOMITENS;'+

    'ALTER TABLE VENDAS ADD VED_PEDIDOCLIENTE DN_NUMEROCHAR;'+
    'ALTER TABLE VENDASITENS ADD VEI_PEDIDOCLIENTEITEM DN_NUMERO;'+

    'ALTER TABLE NFE ADD NFE_PEDIDOCLIENTE DN_NUMEROCHAR;'+
    'ALTER TABLE NFEITENS ADD NFI_PEDIDOCLIENTEITEM DN_NUMERO;'+

    'ALTER TABLE NOTAS ADD NOT_PEDIDOCLIENTE DN_NUMEROCHAR;'+
    'ALTER TABLE NOTASITENS ADD NOI_PEDIDOCLIENTEITEM DN_NUMERO;'+

    'ALTER TABLE CLIENTES ADD CLI_ATUALIZAR DN_BOOLEAN;'+
    'ALTER TABLE UNIDADES ADD UNI_ATUALIZAR DN_BOOLEAN;'+
    'ALTER TABLE VENDEDORES ADD VEN_ATUALIZAR DN_BOOLEAN;'+

    'update CLIENTES set CLI_ATUALIZAR=''N'';'+
    'update CONTAS set CON_ATUALIZAR=''N'';'+
    'update BOLETOS set BOL_ACEITE=''A'' where BOL_ACEITE=''S'';'+
    'update PRODUTOS set PRO_ATUALIZAR=''N'', PRO_PRODUCAO=''T'', PRO_PESAVEL=''N'', PRO_GENERO=''96'', PRO_TRIBUTO=''II'';'+
    'update CONDICOES set CPG_ATUALIZAR=''N'', CPG_STATUS=''A'', CPG_CUPOM=''N'';'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormEcf'',''Cadastro de ECFs'',''A'',111);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (108,''ECFs'',''TFormEcf'',''CODIGO'',''CODIGO;DESCRICAO;SERIAL;MARCA;MODELO;'');'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao175;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='175';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_MESANO AS VARCHAR(7);'+
    'CREATE TABLE GNRE ('+
    '  GNR_CODIGO DN_CODIGO,'+
    '  GNR_CODIGOBARRAS DN_CHAVEACESSO,'+
    '  GNR_CONTROLE DN_NUMDOCTO,'+
    '  GNR_CONVENIO DN_DESCRICAO,'+
    '  GNR_DESTCIDADE DN_CIDADE,'+
    '  GNR_DESTCIDADECODIGO DN_NUMERO,'+
    '  GNR_DESTDOCUMENTO DN_CNPJIECPFRG,'+
    '  GNR_DESTDOCUMENTOTIPO DN_TIPODOCTO,'+
    '  GNR_DTATUALIZACAO DN_DATA,'+
    '  GNR_DTCADASTRO DN_DATA,'+
    '  GNR_DTLIMITE DN_DATA,'+
    '  GNR_DTPAGAMENTO DN_DATA,'+
    '  GNR_DTVENCIMENTO DN_DATA,'+
    '  GNR_EMITCEP DN_CEP,'+
    '  GNR_EMITCIDADECODIGO DN_NUMERO,'+
    '  GNR_EMITDOCUMENTO DN_CNPJIECPFRG,'+
    '  GNR_EMITDOCUMENTOTIPO DN_TIPODOCTO,'+
    '  GNR_EMITENDERECO DN_ENDERECO,'+
    '  GNR_EMITESTADO DN_ESTADO,'+
    '  GNR_EMITFONE DN_FONE,'+
    '  GNR_EMITIENAUFFAVORECIDA DN_CNPJIECPFRG,'+
    '  GNR_EMITRAZAO DN_NOME,'+
    '  GNR_ESTADOFAVORECIDO DN_ESTADO,'+
    '  GNR_INFOCOMPLEMENTAR DN_TEXTOLONGO,'+
    '  GNR_MESANOREFERENCIA DN_MESANO,'+
    '  GNR_NUMDOCTO DN_NUMERO,'+
    '  GNR_PARCELA DN_NUMERO,'+
    '  GNR_PERIODOREFERENCIA DN_REFERENCIA,'+
    '  GNR_PRODUTO DN_DESCRICAO,'+
    '  GNR_PROTOCOLO DN_PROTOCOLO,'+
    '  GNR_RECEITA DN_NUMERO,'+
    '  GNR_REPNUMERICA DN_CHAVEACESSO,'+
    '  GNR_STATUS DN_BOOLEAN,'+
    '  GNR_USUARIO DN_LOGIN,'+
    '  GNR_VALORATUALIZACAO DN_VALOR,'+
    '  GNR_VALORJUROS DN_VALOR,'+
    '  GNR_VALORMULTA DN_VALOR,'+
    '  GNR_VALORPRINCIPAL DN_VALOR);'+

    'ALTER TABLE GNRE ADD CONSTRAINT PK_GNR_CODIGO PRIMARY KEY (GNR_CODIGO);'+

    'CREATE SEQUENCE GEN_GNRE;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao174;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='174';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE LOCS SET LOS_PICKLIST='+QuotedStr('CODIGO;DATA INICIAL;CHAVE DE ACESSO;')+' where LOS_TELA='+QuotedStr('Manifesto de Documentos Eletronico')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao173;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='173';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE TABLE MDFE ('+
    '  MDF_CHAVEACESSO DN_CHAVEACESSO,'+
    '  MDF_CIDADEENC DN_CIDADE,'+
    '  MDF_CIDADEENCCODIGO DN_NUMERO,'+
    '  MDF_CIOT DN_CIOT,'+
    '  MDF_CODIGO DN_CODIGO,'+
    '  MDF_CODIGONUMERICO DN_NUMERO,'+
    '  MDF_CONSULTADA DN_BOOLEAN,'+
    '  MDF_DTATUALIZACAO DN_DATA,'+
    '  MDF_DTEMISSAO DN_DATA,'+
    '  MDF_DTENC DN_DATA,'+
    '  MDF_HREMISSAO DN_HORA,'+
    '  MDF_ESTADOENC DN_ESTADO,'+
    '  MDF_ESTADOENCCODIGO DN_NUMERO,'+
    '  MDF_ESTADOINI DN_ESTADO,'+
    '  MDF_ESTADOFIM DN_ESTADO,'+
    '  MDF_INFOADICFISCO DN_BLOBTEXTO,'+
    '  MDF_MODAL DN_MODALIDADE,'+
    '  MDF_MODELO DN_NUMERO,'+
    '  MDF_MOTIVOCANCELAMENTO DN_DESCRICAOPLUS,'+
    '  MDF_OBSERVACOES DN_BLOBTEXTO,'+
    '  MDF_PESOBRUTO DN_VALOR,'+
    '  MDF_PROTOCOLO DN_PROTOCOLO,'+
    '  MDF_PROTOCOLOCANC DN_PROTOCOLO,'+
    '  MDF_PROTOCOLOCANCDH DN_DATAHORA,'+
    '  MDF_PROTOCOLODH DN_DATAHORA,'+
    '  MDF_PROTOCOLOENC DN_PROTOCOLO,'+
    '  MDF_PROTOCOLOENCDH DN_DATAHORA,'+
    '  MDF_QTDECTE DN_NUMERO,'+
    '  MDF_QTDENFE DN_NUMERO,'+
    '  MDF_QTDEMDFE DN_NUMERO,'+
    '  MDF_RCAPACIDADEKG DN_PESO,'+
    '  MDF_RCAPACIDADEM3 DN_PESO,'+
    '  MDF_RCODIGO DN_NUMERO,'+
    '  MDF_RCNPJ DN_CNPJIECPFRG,'+
    '  MDF_RCPF DN_CNPJIECPFRG,'+
    '  MDF_RECIBO DN_PROTOCOLO,'+
    '  MDF_RECIBODH DN_DATAHORA,'+
    '  MDF_RESTADO DN_ESTADO,'+
    '  MDF_RESTADOPROPRIETARIO DN_ESTADO,'+
    '  MDF_RIE DN_CNPJIECPFRG,'+
    '  MDF_RNOME DN_NOME,'+
    '  MDF_RNTRC DN_RNTRC,'+
    '  MDF_RPLACA DN_PLACA,'+
    '  MDF_RRENAVAM DN_RENAVAM,'+
    '  MDF_RRNTRC DN_RNTRC,'+
    '  MDF_RTARA DN_PESO,'+
    '  MDF_RTIPOCARROCERIA DN_CARROCERIA,'+
    '  MDF_RTIPOPROPRIETARIO DN_PROPRIEDADE,'+
    '  MDF_SERIE DN_NUMERO,'+
    '  MDF_STATUS DN_BOOLEAN,'+
    '  MDF_TCAPACIDADEKG DN_PESO,'+
    '  MDF_TCAPACIDADEM3 DN_PESO,'+
    '  MDF_TCNPJ DN_CNPJIECPFRG,'+
    '  MDF_TCODIGO DN_NUMERO,'+
    '  MDF_TCPF DN_CNPJIECPFRG,'+
    '  MDF_TESTADO DN_ESTADO,'+
    '  MDF_TESTADOPROPRIETARIO DN_ESTADO,'+
    '  MDF_TIE DN_CNPJIECPFRG,'+
    '  MDF_TIPOEMISSAO DN_TIPOEMISSAO,'+
    '  MDF_TIPOEMITENTE DN_DESCRICAO,'+
    '  MDF_TIPOMEDIDA DN_MEDIDA,'+
    '  MDF_TNOME DN_NOME,'+
    '  MDF_TPLACA DN_PLACA,'+
    '  MDF_TRENAVAM DN_RENAVAM,'+
    '  MDF_TRNTRC DN_RNTRC,'+
    '  MDF_TTARA DN_PESO,'+
    '  MDF_TTIPOCARROCERIA DN_CARROCERIA,'+
    '  MDF_TTIPOPROPRIETARIO DN_PROPRIEDADE,'+
    '  MDF_TTIPORODADO DN_RODADO,'+
    '  MDF_USUARIO DN_LOGIN,'+
    '  MDF_VALORCARGA DN_VALOR);'+

    'ALTER TABLE MDFE ADD CONSTRAINT PK_MDF_CODIGO PRIMARY KEY (MDF_CODIGO);'+

    'CREATE TABLE MDFECARREGA ('+
    '  MDC_CODIGO DN_CODIGO,'+
    '  MDC_MDFE DN_CODIGO,'+
    '  MDC_CIDADE DN_CIDADE,'+
    '  MDC_CIDADECODIGO DN_NUMERO);'+

    'ALTER TABLE MDFECARREGA ADD CONSTRAINT PK_MDC_CODIGO PRIMARY KEY (MDC_CODIGO);'+
    'ALTER TABLE MDFECARREGA ADD CONSTRAINT FK_MDC_MDFE FOREIGN KEY (MDC_MDFE) REFERENCES MDFE(MDF_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE TABLE MDFEDESCARREGA ('+
    '  MDD_CODIGO DN_CODIGO,'+
    '  MDD_MDFE DN_CODIGO,'+
    '  MDD_CIDADE DN_CIDADE,'+
    '  MDD_CIDADECODIGO DN_CODIGO);'+

    'ALTER TABLE MDFEDESCARREGA ADD CONSTRAINT PK_MDD_CODIGO PRIMARY KEY (MDD_CODIGO);'+
    'ALTER TABLE MDFEDESCARREGA ADD CONSTRAINT FK_MDD_MDFE FOREIGN KEY (MDD_MDFE) REFERENCES MDFE(MDF_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE TABLE MDFEPERCURSOS ('+
    '  MDP_CODIGO DN_CODIGO,'+
    '  MDP_MDFE DN_CODIGO,'+
    '  MDP_ESTADO DN_ESTADO);'+

    'ALTER TABLE MDFEPERCURSOS ADD CONSTRAINT PK_MDP_CODIGO PRIMARY KEY (MDP_CODIGO);'+
    'ALTER TABLE MDFEPERCURSOS ADD CONSTRAINT FK_MDP_MDFE FOREIGN KEY (MDP_MDFE) REFERENCES MDFE(MDF_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE TABLE MDFEMOTORISTAS ('+
    '  MDM_CODIGO DN_CODIGO,'+
    '  MDM_MDFE DN_CODIGO,'+
    '  MDM_NOME DN_NOME,'+
    '  MDM_CPF DN_CNPJIECPFRG);'+

    'ALTER TABLE MDFEMOTORISTAS ADD CONSTRAINT PK_MDM_CODIGO PRIMARY KEY (MDM_CODIGO);'+
    'ALTER TABLE MDFEMOTORISTAS ADD CONSTRAINT FK_MDM_MDFE FOREIGN KEY (MDM_MDFE) REFERENCES MDFE(MDF_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE TABLE MDFEDOCS ('+
    '  MFD_CODIGO DN_CODIGO,'+
    '  MFD_MDFEDESCARREGA DN_CODIGO,'+
    '  MFD_MDFE DN_CODIGO,'+
    '  MFD_TIPODOC DN_TIPODOCTO,'+
    '  MFD_CHAVEACESSO DN_CHAVEACESSO,'+
    '  MFD_CODIGOBARRAS DN_CHAVEACESSO);'+

    'ALTER TABLE MDFEDOCS ADD CONSTRAINT PK_MFD_CODIGO PRIMARY KEY (MFD_CODIGO);'+
    'ALTER TABLE MDFEDOCS ADD CONSTRAINT FK_MFD_MDFEDESCARREGA FOREIGN KEY (MFD_MDFEDESCARREGA) REFERENCES MDFEDESCARREGA(MDD_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'CREATE SEQUENCE GEN_MDFE;'+
    'CREATE SEQUENCE GEN_MDFEPERCURSOS;'+
    'CREATE SEQUENCE GEN_MDFECARREGA;'+
    'CREATE SEQUENCE GEN_MDFEDESCARREGA;'+
    'CREATE SEQUENCE GEN_MDFEMOTORISTAS;'+
    'CREATE SEQUENCE GEN_MDFEDOCS;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_MDFEMODELO DN_NUMERO,'+
    '  ADD PAR_MDFESERIE DN_NUMERO,'+
    '  ADD PAR_REPOSITORIOMDFE DN_PATH,'+
    '  ADD PAR_VERSAOXMLMDFE DN_VERSAOBASE,'+
    '  ADD PAR_TIPOAMBIENTEMDFE DN_BOOLEAN,'+
    '  ADD PAR_SIGLAUFMDFE DN_ESTADO,'+
    '  ADD PAR_SIGLAWSMDFE DN_ANO,'+
    '  ADD PAR_LICENCADLLMDFE DN_LICENCADLL;'+

    'update PARAMETROS set PAR_MDFEMODELO=58, PAR_MDFESERIE=1, PAR_VERSAOXMLMDFE=PAR_VERSAOXMLCTE, PAR_TIPOAMBIENTEMDFE=PAR_TIPOAMBIENTECTE, PAR_SIGLAWSMDFE=PAR_SIGLAWSCTE, PAR_SIGLAUFMDFE=PAR_SIGLAUFCTE;'+

    'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS, TEL_MODULO) values (''TFormMdfe'',''Cadastro de Manifesto de Documentos Eletronico'',''A'',110);'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (106,''Manifesto de Documentos Eletronico'',''TFormMdfe'',''DATA FINAL'',''CODIGO;DATA FINAL;'');'+
    'insert into LOCS (LOS_CODIGO,LOS_TELA,LOS_NOMEFORM,LOS_CAMPO,LOS_PICKLIST) values (107,''Manifesto de Documentos Eletronico com Status'',''TFormMdfe'',''TODOS'',''TODOS;ABERTOS;VIGENCIA;FINALIZADOS;CANCELADOS;'');'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao172;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='172';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER DOMAIN DN_RNTC TO DN_RNTRC;'+
    'ALTER DOMAIN DN_RENAVAN TO DN_RENAVAM;'+
    'CREATE DOMAIN DN_VEICULO AS VARCHAR(20);'+
    'CREATE DOMAIN DN_PROPRIEDADE AS VARCHAR(20);'+
    'CREATE DOMAIN DN_CARROCERIA AS VARCHAR(20);'+
    'CREATE DOMAIN DN_RODADO AS VARCHAR(20);'+
    'CREATE DOMAIN DN_AVERBACAO AS VARCHAR(20);'+
    'CREATE DOMAIN DN_APOLICE AS VARCHAR(20);'+
    'CREATE DOMAIN DN_CIOT AS VARCHAR(15);'+
    'CREATE DOMAIN DN_LOTACAO AS VARCHAR(10);'+

    'CREATE SEQUENCE GEN_CTENOTAS;'+
    'CREATE SEQUENCE GEN_CTEINUTILIZADOS;'+
    'CREATE SEQUENCE GEN_CTECARGA;'+
    'CREATE SEQUENCE GEN_CTE;'+
    'CREATE SEQUENCE GEN_CTEVEICULOS;'+

    'ALTER TABLE PARAMETROS ADD PAR_RNTRC DN_RNTRC;'+

    'ALTER TABLE CONHECIMENTOSNOTAS DROP CONSTRAINT FK_CTN_CONHECIMENTO;'+
    'ALTER TABLE CONHECIMENTOSNOTAS DROP CONSTRAINT PK_CTN_CODIGO;'+

    'ALTER TABLE CONHECIMENTOSINUT DROP CONSTRAINT PK_CIN_CODIGO;'+

    'ALTER TABLE CONHECIMENTOSCARGA DROP CONSTRAINT FK_CCG_CONHECIMENTO;'+
    'ALTER TABLE CONHECIMENTOSCARGA DROP CONSTRAINT PK_CCG_CODIGO;'+

    'ALTER TABLE CONHECIMENTOS DROP CONSTRAINT FK_CTE_VEICULO;'+
    'ALTER TABLE CONHECIMENTOS DROP CONSTRAINT PK_CTE_CODIGO;'+

    'CREATE TABLE CTE ('+
    '  CTE_CODIGO                DN_CODIGO,'+
    '  CTE_VEICULO               DN_CODIGO,'+
    '  CTE_AEREODIMENSAO         DN_DIMENSAO,'+
    '  CTE_AEREODTPREVISTA       DN_DATA,'+
    '  CTE_AEREOIATA             DN_IATA,'+
    '  CTE_AEREOIMP              DN_SIGLA3,'+
    '  CTE_AEREOMINUTA           DN_NUMERO,'+
    '  CTE_AEREONOMEFILIAL       DN_REFERENCIA,'+
    '  CTE_AEREOOCA              DN_OCA,'+
    '  CTE_AEREOTARIFACLASSE     DN_CLASSETARIFA,'+
    '  CTE_AEREOTARIFACODIGO     DN_NUMERO,'+
    '  CTE_AEREOTARIFAVALOR      DN_VALOR,'+
    '  CTE_ALIQFCP               DN_VALOR,'+
    '  CTE_ALIQICMS              DN_VALOR,'+
    '  CTE_ALIQICMSINTER         DN_VALOR,'+
    '  CTE_ALIQICMSINTERPART     DN_VALOR,'+
    '  CTE_ALIQICMSRED           DN_VALOR,'+
    '  CTE_ALIQICMSST            DN_VALOR,'+
    '  CTE_ALIQICMSUFFIM         DN_VALOR,'+
    '  CTE_ALIQTRIBUTOS          DN_VALOR,'+
    '  CTE_BAIXADATA             DN_DATA,'+
    '  CTE_BAIXAPOR              DN_LOGIN,'+
    '  CTE_BASEICMS              DN_VALOR,'+
    '  CTE_BASEICMSRED           DN_VALOR,'+
    '  CTE_BASEICMSST            DN_VALOR,'+
    '  CTE_CARGAOUTRASCARAC      DN_COMPLEMENTO,'+
    '  CTE_CFOP                  DN_NUMERO,'+
    '  CTE_CFOPDESC              DN_DESCRICAOPLUS,'+
    '  CTE_CHAVEACESSO           DN_CHAVEACESSO,'+
    '  CTE_CODIGONUMERICO        DN_ALEATORIO,'+
    '  CTE_COMISSAO              DN_VALOR,'+
    '  CTE_CONDICAO              DN_CODIGO,'+
    '  CTE_CONDICAOMEMO          DN_BLOBTEXTO,'+
    '  CTE_CONSULTADA            DN_BOOLEAN,'+
    '  CTE_CSTICMS               DN_NUMERO,'+
    '  CTE_CTEREFERENCIADO       DN_CHAVEACESSO,'+
    '  CTE_DATAHORA              DN_DATAHORA,'+
    '  CTE_DATAHORACONTINGENCIA  DN_DATAHORA,'+
    '  CTE_DESBAIRRO             DN_BAIRRO,'+
    '  CTE_DESCEP                DN_CEP,'+
    '  CTE_DESCIDADE             DN_CIDADE,'+
    '  CTE_DESCIDADECODIGO       DN_NUMERO,'+
    '  CTE_DESCNPJ               DN_CNPJIECPFRG,'+
    '  CTE_DESCOMPLEMENTO        DN_COMPLEMENTO,'+
    '  CTE_DESCONTATO            DN_NOME,'+
    '  CTE_DESCPF                DN_CNPJIECPFRG,'+
    '  CTE_DESCPORC              DN_VALOR,'+
    '  CTE_DESCVALOR             DN_VALOR,'+
    '  CTE_DESENDERECO           DN_ENDERECO,'+
    '  CTE_DESESTADO             DN_ESTADO,'+
    '  CTE_DESESTADOCODIGO       DN_NUMERO,'+
    '  CTE_DESFONE               DN_FONE,'+
    '  CTE_DESIE                 DN_CNPJIECPFRG,'+
    '  CTE_DESNOME               DN_NOME,'+
    '  CTE_DESNUMERO             DN_NUMEROCHAR,'+
    '  CTE_DESTINATARIO          DN_CODIGO,'+
    '  CTE_DIAPREFERENCIAL       DN_NUMERO,'+
    '  CTE_DTATUALIZACAO         DN_DATA,'+
    '  CTE_DTCADASTRO            DN_DATA,'+
    '  CTE_DTEMISSAO             DN_DATA,'+
    '  CTE_ENTREGADATA           DN_ENTREGA,'+
    '  CTE_ENTREGADATAFINAL      DN_DATA,'+
    '  CTE_ENTREGADATAINICIAL    DN_DATA,'+
    '  CTE_ENTREGAHORA           DN_ENTREGA,'+
    '  CTE_ENTREGAHORAFINAL      DN_HORA,'+
    '  CTE_ENTREGAHORAINICIAL    DN_HORA,'+
    '  CTE_ENVIADO               DN_BOOLEAN,'+
    '  CTE_EXPBAIRRO             DN_BAIRRO,'+
    '  CTE_EXPCEP                DN_CEP,'+
    '  CTE_EXPCIDADE             DN_CIDADE,'+
    '  CTE_EXPCIDADECODIGO       DN_NUMERO,'+
    '  CTE_EXPCNPJ               DN_CNPJIECPFRG,'+
    '  CTE_EXPCOMPLEMENTO        DN_COMPLEMENTO,'+
    '  CTE_EXPCONTATO            DN_NOME,'+
    '  CTE_EXPCPF                DN_CNPJIECPFRG,'+
    '  CTE_EXPEDIDOR             DN_CODIGO,'+
    '  CTE_EXPENDERECO           DN_ENDERECO,'+
    '  CTE_EXPESTADO             DN_ESTADO,'+
    '  CTE_EXPESTADOCODIGO       DN_NUMERO,'+
    '  CTE_EXPFONE               DN_FONE,'+
    '  CTE_EXPIE                 DN_CNPJIECPFRG,'+
    '  CTE_EXPNOME               DN_NOME,'+
    '  CTE_EXPNUMERO             DN_NUMEROCHAR,'+
    '  CTE_FINALIDADE            DN_FINALIDADE,'+
    '  CTE_FORMAPAGTO            DN_FORMAPAGTO,'+
    '  CTE_FORMAPAGTOSERVICO     DN_FORMAPAGTO,'+
    '  CTE_ICMSALIQUOTAUF        DN_VALOR,'+
    '  CTE_ICMSPOR               DN_BOOLEAN,'+
    '  CTE_INFOADICFISCO         DN_BLOBTEXTO,'+
    '  CTE_LOTE                  DN_LOTE,'+
    '  CTE_MODAL                 DN_MODALIDADE,'+
    '  CTE_MODELO                DN_NUMERO,'+
    '  CTE_MOTIVOCANCELAMENTO    DN_DESCRICAOPLUS,'+
    '  CTE_MOTIVOCONTINGENCIA    DN_DESCRICAOPLUS,'+
    '  CTE_MOTIVOINUTILIZACAO    DN_DESCRICAOPLUS,'+
    '  CTE_MOVIMENTAFINANCEIRO   DN_BOOLEAN,'+
    '  CTE_OBSERVACOES           DN_BLOBTEXTO,'+
    '  CTE_PAGOPOR               DN_BOOLEAN,'+
    '  CTE_PESOTOTAL             DN_PESO,'+
    '  CTE_PRODUTOPREDOM         DN_DESCRICAO,'+
    '  CTE_PROTOCOLO             DN_PROTOCOLO,'+
    '  CTE_PROTOCOLOCANC         DN_PROTOCOLO,'+
    '  CTE_PROTOCOLOCANCDH       DN_DATAHORA,'+
    '  CTE_PROTOCOLODH           DN_DATAHORA,'+
    '  CTE_PROTOCOLOINUT         DN_PROTOCOLO,'+
    '  CTE_PROTOCOLOINUTDH       DN_DATAHORA,'+
    '  CTE_RECBAIRRO             DN_BAIRRO,'+
    '  CTE_RECCEP                DN_CEP,'+
    '  CTE_RECCIDADE             DN_CIDADE,'+
    '  CTE_RECCIDADECODIGO       DN_NUMERO,'+
    '  CTE_RECCNPJ               DN_CNPJIECPFRG,'+
    '  CTE_RECCOMPLEMENTO        DN_COMPLEMENTO,'+
    '  CTE_RECCONTATO            DN_NOME,'+
    '  CTE_RECCPF                DN_CNPJIECPFRG,'+
    '  CTE_RECEBEDOR             DN_CODIGO,'+
    '  CTE_RECENDERECO           DN_ENDERECO,'+
    '  CTE_RECESTADO             DN_ESTADO,'+
    '  CTE_RECESTADOCODIGO       DN_NUMERO,'+
    '  CTE_RECFONE               DN_FONE,'+
    '  CTE_RECIBO                DN_PROTOCOLO,'+
    '  CTE_RECIBODH              DN_DATAHORA,'+
    '  CTE_RECIE                 DN_CNPJIECPFRG,'+
    '  CTE_RECNOME               DN_NOME,'+
    '  CTE_RECNUMERO             DN_NUMEROCHAR,'+
    '  CTE_REFERENCIA            DN_REFERENCIA,'+
    '  CTE_REMBAIRRO             DN_BAIRRO,'+
    '  CTE_REMCEP                DN_CEP,'+
    '  CTE_REMCIDADE             DN_CIDADE,'+
    '  CTE_REMCIDADECODIGO       DN_NUMERO,'+
    '  CTE_REMCNPJ               DN_CNPJIECPFRG,'+
    '  CTE_REMCOMPLEMENTO        DN_COMPLEMENTO,'+
    '  CTE_REMCONTATO            DN_NOME,'+
    '  CTE_REMCPF                DN_CNPJIECPFRG,'+
    '  CTE_REMENDERECO           DN_ENDERECO,'+
    '  CTE_REMESTADO             DN_ESTADO,'+
    '  CTE_REMESTADOCODIGO       DN_NUMERO,'+
    '  CTE_REMETENTE             DN_CODIGO,'+
    '  CTE_REMFONE               DN_FONE,'+
    '  CTE_REMIE                 DN_CNPJIECPFRG,'+
    '  CTE_REMNOME               DN_NOME,'+
    '  CTE_REMNUMERO             DN_NUMEROCHAR,'+
    '  CTE_RETIRA                DN_BOOLEAN,'+
    '  CTE_RETIRADETALHES        DN_DESCRICAOPLUS,'+
    '  CTE_SEGURO                DN_TOMADOR,'+
    '  CTE_SEGUROAPOLICE         DN_NUMERO,'+
    '  CTE_SEGUROAVERBACAO       DN_NUMERO,'+
    '  CTE_SEGURONOME            DN_NOME,'+
    '  CTE_SEGUROVALOR           DN_VALOR,'+
    '  CTE_SERIE                 DN_NUMERO,'+
    '  CTE_STATUS                DN_BOOLEAN,'+
    '  CTE_TIPOCTE               DN_TIPOEMISSAO,'+
    '  CTE_TIPOEMISSAO           DN_TIPOEMISSAO,'+
    '  CTE_TIPOSERVICO           DN_TIPOEMISSAO,'+
    '  CTE_TOMADOR               DN_TOMADOR,'+
    '  CTE_TOMADORBAIRRO         DN_BAIRRO,'+
    '  CTE_TOMADORCEP            DN_CEP,'+
    '  CTE_TOMADORCIDADE         DN_CIDADE,'+
    '  CTE_TOMADORCIDADECODIGO   DN_NUMERO,'+
    '  CTE_TOMADORCNPJ           DN_CNPJIECPFRG,'+
    '  CTE_TOMADORCODIGO         DN_NUMERO,'+
    '  CTE_TOMADORCOMPLEMENTO    DN_COMPLEMENTO,'+
    '  CTE_TOMADORCONTATO        DN_NOME,'+
    '  CTE_TOMADORCPF            DN_CNPJIECPFRG,'+
    '  CTE_TOMADORENDERECO       DN_ENDERECO,'+
    '  CTE_TOMADORESTADO         DN_ESTADO,'+
    '  CTE_TOMADORESTADOCODIGO   DN_NUMERO,'+
    '  CTE_TOMADORFONE           DN_FONE,'+
    '  CTE_TOMADORIE             DN_CNPJIECPFRG,'+
    '  CTE_TOMADORNOME           DN_NOME,'+
    '  CTE_TOMADORNUMERO         DN_NUMEROCHAR,'+
    '  CTE_TOTALCOMISSAO         DN_VALOR,'+
    '  CTE_TOTALFCP              DN_VALOR,'+
    '  CTE_TOTALICMS             DN_VALOR,'+
    '  CTE_TOTALICMSST           DN_VALOR,'+
    '  CTE_TOTALICMSUFFIM        DN_VALOR,'+
    '  CTE_TOTALICMSUFINI        DN_VALOR,'+
    '  CTE_TOTALTRIBUTOS         DN_VALOR,'+
    '  CTE_USUARIO               DN_LOGIN,'+
    '  CTE_VALORCREDITOICMS      DN_VALOR,'+
    '  CTE_VALORFRETE            DN_VALOR,'+
    '  CTE_VALORNOTAS            DN_VALOR,'+
    '  CTE_VALOROUTROS           DN_VALOR,'+
    '  CTE_VALORSEGURO           DN_VALOR,'+
    '  CTE_VALORTOTAL            DN_VALOR,'+
    '  CTE_VEICULOPLACA          DN_PLACA,'+
    '  CTE_VEICULORNTC           DN_RNTRC,'+
    '  CTE_VENDEDOR              DN_CODIGO);'+

    'CREATE TABLE CTECARGA ('+
    '  CCG_CODIGO         DN_CODIGO,'+
    '  CCG_CTE            DN_CODIGO,'+
    '  CCG_QUANTIDADE     DN_VALOR,'+
    '  CCG_TIPOMEDIDA     DN_MEDIDA,'+
    '  CCG_UNIDADEMEDIDA  DN_MEDIDA);'+

    'CREATE TABLE CTECODIGO ('+
    '  CTE_CODIGO  DN_CODIGO);'+

    'CREATE TABLE CTEINUTILIZADOS ('+
    '  CIN_CODIGO         DN_CODIGO,'+
    '  CIN_ANO            DN_ANO,'+
    '  CIN_DTATUALIZACAO  DN_DATA,'+
    '  CIN_DTCADASTRO     DN_DATA,'+
    '  CIN_JUSTIFICATIVA  DN_DESCRICAOPLUS,'+
    '  CIN_MODELO         DN_NUMERO,'+
    '  CIN_NUMFINAL       DN_NUMERO,'+
    '  CIN_NUMINICIAL     DN_NUMERO,'+
    '  CIN_PROTOCOLO      DN_PROTOCOLO,'+
    '  CIN_PROTOCOLODH    DN_DATAHORA,'+
    '  CIN_SERIE          DN_NUMERO,'+
    '  CIN_USUARIO        DN_LOGIN);'+

    'CREATE TABLE CTENOTAS ('+
    '  CTN_CODIGO         DN_CODIGO,'+
    '  CTN_CTE            DN_CODIGO,'+
    '  CTN_ALIQICMS       DN_VALOR,'+
    '  CTN_ALIQICMSST     DN_VALOR,'+
    '  CTN_BASEICMS       DN_VALOR,'+
    '  CTN_BASEICMSST     DN_VALOR,'+
    '  CTN_CFOP           DN_CFOP,'+
    '  CTN_CHAVEACESSO    DN_CHAVEACESSO,'+
    '  CTN_CNPJREMETENTE  DN_CNPJIECPFRG,'+
    '  CTN_DESCRICAODOC   DN_DESCRICAO,'+
    '  CTN_DTEMISSAO      DN_DATA,'+
    '  CTN_MODELO         DN_NUMERO,'+
    '  CTN_NUMERO         DN_NUMERO,'+
    '  CTN_PESO           DN_PESO,'+
    '  CTN_SERIE          DN_NUMERO,'+
    '  CTN_SUFRAMA        DN_SUFRAMA,'+
    '  CTN_TIPONOTA       DN_FINALIDADE,'+
    '  CTN_TIPOOUTROS     DN_FINALIDADE,'+
    '  CTN_TOTALICMS      DN_VALOR,'+
    '  CTN_TOTALICMSST    DN_VALOR,'+
    '  CTN_TOTALPRODUTOS  DN_VALOR,'+
    '  CTN_VALORTOTAL     DN_VALOR);'+

    'CREATE TABLE CTEVEICULOS ('+
    '  CTV_CODIGO DN_CODIGO,'+
    '  CTV_CTE DN_CODIGO,'+
    '  CTV_VEICULO DN_CODIGO,'+
    '  CTV_RENAVAM DN_RENAVAM,'+
    '  CTV_PLACA DN_PLACA,'+
    '  CTV_TARA DN_PESO,'+
    '  CTV_CAPACIDADEKG DN_PESO,'+
    '  CTV_CAPACIDADEM3 DN_VALOR,'+
    '  CTV_TIPOPROPRIEDADE DN_PROPRIEDADE,'+
    '  CTV_TIPOPROPRIETARIO DN_PROPRIEDADE,'+
    '  CTV_TIPOVEICULO DN_VEICULO,'+
    '  CTV_TIPORODADO DN_RODADO,'+
    '  CTV_TIPOCARROCERIA DN_CARROCERIA,'+
    '  CTV_ESTADO DN_ESTADO,'+
    '  CTV_ESTADOPROPRIETARIO DN_ESTADO,'+
    '  CTV_CPF DN_CNPJIECPFRG,'+
    '  CTV_CNPJ DN_CNPJIECPFRG,'+
    '  CTV_NOME DN_NOME,'+
    '  CTV_IE DN_CNPJIECPFRG,'+
    '  CTV_RNTRC DN_RNTRC);'+

    'ALTER TABLE FROTAS'+
    '  ADD FRO_TARA DN_PESO,'+
    '  ADD FRO_CAPACIDADEKG DN_PESO,'+
    '  ADD FRO_CAPACIDADEM3 DN_VALOR,'+
    '  ADD FRO_TIPOPROPRIEDADE DN_PROPRIEDADE,'+
    '  ADD FRO_TIPOPROPRIETARIO DN_PROPRIEDADE,'+
    '  ADD FRO_TIPOVEICULO DN_VEICULO,'+
    '  ADD FRO_TIPORODADO DN_RODADO,'+
    '  ADD FRO_TIPOCARROCERIA DN_CARROCERIA,'+
    '  ADD FRO_ESTADOPROPRIETARIO DN_ESTADO,'+
    '  ADD FRO_CPF DN_CNPJIECPFRG,'+
    '  ADD FRO_CNPJ DN_CNPJIECPFRG,'+
    '  ADD FRO_NOME DN_NOME,'+
    '  ADD FRO_IE DN_CNPJIECPFRG,'+
    '  ALTER FRO_RNTC TO FRO_RNTRC,'+
    '  DROP FRO_TIPO;'+

    'ALTER TABLE CTE ADD CONSTRAINT PK_CTE_CODIGO PRIMARY KEY (CTE_CODIGO);'+

    'ALTER TABLE CTECARGA ADD CONSTRAINT PK_CCG_CODIGO PRIMARY KEY (CCG_CODIGO);'+
    'ALTER TABLE CTECARGA ADD CONSTRAINT FK_CCG_CTE FOREIGN KEY (CCG_CTE) REFERENCES CTE(CTE_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'ALTER TABLE CTENOTAS ADD CONSTRAINT PK_CTN_CODIGO PRIMARY KEY (CTN_CODIGO);'+
    'ALTER TABLE CTENOTAS ADD CONSTRAINT FK_CTN_CTE FOREIGN KEY (CTN_CTE) REFERENCES CTE(CTE_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'ALTER TABLE CTEINUTILIZADOS ADD CONSTRAINT PK_CIN_CODIGO PRIMARY KEY (CIN_CODIGO);'+

    'ALTER TABLE CTEVEICULOS ADD CONSTRAINT PK_CTV_CODIGO PRIMARY KEY (CTV_CODIGO);'+
    'ALTER TABLE CTEVEICULOS ADD CONSTRAINT FK_CTV_CTE FOREIGN KEY (CTV_CTE) REFERENCES CTE(CTE_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+

    'INSERT INTO CTE SELECT * FROM CONHECIMENTOS;'+
    'INSERT INTO CTECARGA SELECT * FROM CONHECIMENTOSCARGA;'+
    'INSERT INTO CTENOTAS SELECT * FROM CONHECIMENTOSNOTAS;'+
    'INSERT INTO CTEINUTILIZADOS SELECT * FROM CONHECIMENTOSINUT;'+
    'INSERT INTO CTECODIGO SELECT * FROM CONHECIMENTOSCODIGO;'+
    'INSERT INTO CTEVEICULOS (CTV_CODIGO, CTV_CTE, CTV_VEICULO, CTV_PLACA, CTV_RNTRC) SELECT GEN_ID(GEN_CTEVEICULOS,1), CTE_CODIGO, CTE_VEICULO, CTE_VEICULOPLACA, CTE_VEICULORNTC FROM CONHECIMENTOS;'+

    'set term #;'+
    'execute block as declare variable x integer;'+
    'begin'+
    '  SELECT GEN_ID(GEN_CONHECIMENTOS,0) AS COD from RDB$DATABASE INTO x;'+
    '  execute statement ''set generator GEN_CTE to '' || x;'+
    'end;'+
    '#'+

    'execute block as'+
    '  declare variable x integer;'+
    'begin'+
    '  SELECT GEN_ID(GEN_CONHECIMENTOSCARGA,0) AS COD from RDB$DATABASE INTO x;'+
    '  execute statement ''set generator GEN_CTECARGA to '' || x;'+
    'end;'+
    '#'+

    'execute block as'+
    '  declare variable x integer;'+
    'begin'+
    '  SELECT GEN_ID(GEN_CONHECIMENTOSINUT,0) AS COD from RDB$DATABASE INTO x;'+
    '  execute statement ''set generator GEN_CTEINUTILIZADOS to '' || x;'+
    'end;'+
    '#'+

    'execute block as'+
    '  declare variable x integer;'+
    'begin'+
    '  SELECT GEN_ID(GEN_CONHECIMENTOSNOTAS,0) AS COD from RDB$DATABASE INTO x;'+
    '  execute statement ''set generator GEN_CTENOTAS to '' || x;'+
    'end;'+
    '#'+
    'set term ;#'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CTE'+
    '  ADD CTE_MOTORISTA DN_NOME,'+
    '  ADD CTE_MOTORISTACPF DN_CNPJIECPFRG,'+
    '  ADD CTE_CIOT DN_CIOT,'+
    '  ADD CTE_LOTACAO DN_LOTACAO,'+
    '  ADD CTE_RECEBIDODATA DN_DATA,'+
    '  ADD CTE_RECEBIDOPOR DN_NOME,'+
    '  DROP CTE_VEICULO,'+
    '  DROP CTE_VEICULOPLACA,'+
    '  DROP CTE_VEICULORNTC,'+
    '  ALTER CTE_SEGUROAPOLICE TYPE DN_APOLICE,'+
    '  ALTER CTE_SEGUROAVERBACAO TYPE DN_AVERBACAO;'+

    'DROP SEQUENCE GEN_CONHECIMENTOSNOTAS;'+
    'DROP SEQUENCE GEN_CONHECIMENTOSINUT;'+
    'DROP SEQUENCE GEN_CONHECIMENTOSCARGA;'+
    'DROP SEQUENCE GEN_CONHECIMENTOS;'+

    'DROP TABLE CONHECIMENTOSINUT;'+
    'DROP TABLE CONHECIMENTOSNOTAS;'+
    'DROP TABLE CONHECIMENTOSCARGA;'+
    'DROP TABLE CONHECIMENTOSCODIGO;'+
    'DROP TABLE CONHECIMENTOS;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao171;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='171';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_CNPJCERTIFICADO DN_CNPJIECPFRG,'+
    '  ADD PAR_VALINICIALCERTIFICADO DN_DATA,'+
    '  ADD PAR_VALFINALCERTIFICADO DN_DATA,'+
    '  ADD PAR_IMPRIMIRCONDICAO DN_BOOLEAN,'+
    '  ADD PAR_ALERTAKG DN_BOOLEAN;'+

    'UPDATE PARAMETROS SET PAR_IMPRIMIRCONDICAO=''N'', PAR_ALERTAKG=''N'' WHERE PAR_CODIGO=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao170;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='170';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE VENDEDORES ADD VEN_EMAILCONTA DN_CODIGO;'+
    'ALTER TABLE VENDEDORES ADD CONSTRAINT FK_VEN_EMAILCONTA FOREIGN KEY (VEN_EMAILCONTA) REFERENCES EMAILSCONTAS(EMC_CODIGO) ON UPDATE CASCADE;'+
    'UPDATE VENDEDORES SET VEN_EMAILCONTA = 1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao169;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='169';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE LOCS SET LOS_PICKLIST='+QuotedStr('CODIGO;DATA INICIAL;NUM. NOTA;CODIGO FORNECEDOR;NOME;CHAVE DE ACESSO;')+' where LOS_TELA='+QuotedStr('Compras')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao168;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='168';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE RECEBER ADD REE_VENDA DN_NUMERO;'+
    'UPDATE LOCS SET LOS_PICKLIST='+QuotedStr('CODIGO;NUM DOCTO;VENDA;DATA INICIAL;CODIGO CLIENTE;CLIENTE;VALOR;')+' where LOS_TELA='+QuotedStr('Contas a Receber')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao167;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='167';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE GRUPOS ADD GRU_INTERNET DN_BOOLEAN;'+
    'ALTER TABLE FAMILIAS ADD FAM_INTERNET DN_BOOLEAN;'+

    'ALTER TABLE VENDASITENS'+
    '  ADD VEI_VALORTRIBUTOSFED DN_VALOR,'+
    '  ADD VEI_VALORTRIBUTOSEST DN_VALOR,'+
    '  ADD VEI_VALORTRIBUTOSMUN DN_VALOR,'+
    '  ADD VEI_VALORTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE NFCEITENS'+
    '  ADD NCI_VALORTRIBUTOSFED DN_VALOR,'+
    '  ADD NCI_VALORTRIBUTOSEST DN_VALOR,'+
    '  ADD NCI_VALORTRIBUTOSMUN DN_VALOR,'+
    '  ADD NCI_VALORTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE NFEITENS'+
    '  ADD NFI_VALORTRIBUTOSFED DN_VALOR,'+
    '  ADD NFI_VALORTRIBUTOSEST DN_VALOR,'+
    '  ADD NFI_VALORTRIBUTOSMUN DN_VALOR,'+
    '  ADD NFI_VALORTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE SERVICOSITENS'+
    '  ADD SEI_VALORTRIBUTOSFED DN_VALOR,'+
    '  ADD SEI_VALORTRIBUTOSEST DN_VALOR,'+
    '  ADD SEI_VALORTRIBUTOSMUN DN_VALOR,'+
    '  ADD SEI_VALORTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE COMPRASITENS'+
    '  ADD COI_VALORTRIBUTOSFED DN_VALOR,'+
    '  ADD COI_VALORTRIBUTOSEST DN_VALOR,'+
    '  ADD COI_VALORTRIBUTOSMUN DN_VALOR,'+
    '  ADD COI_VALORTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE NOTASITENS'+
    '  ADD NOI_VALORTRIBUTOSFED DN_VALOR,'+
    '  ADD NOI_VALORTRIBUTOSEST DN_VALOR,'+
    '  ADD NOI_VALORTRIBUTOSMUN DN_VALOR,'+
    '  ADD NOI_VALORTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE VENDAS'+
    '  ADD VED_TOTALTRIBUTOSFED DN_VALOR,'+
    '  ADD VED_TOTALTRIBUTOSEST DN_VALOR,'+
    '  ADD VED_TOTALTRIBUTOSMUN DN_VALOR,'+
    '  ADD VED_TOTALTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE NFCE'+
    '  ADD NFC_TOTALTRIBUTOSFED DN_VALOR,'+
    '  ADD NFC_TOTALTRIBUTOSEST DN_VALOR,'+
    '  ADD NFC_TOTALTRIBUTOSMUN DN_VALOR,'+
    '  ADD NFC_TOTALTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE NFE'+
    '  ADD NFE_TOTALTRIBUTOSFED DN_VALOR,'+
    '  ADD NFE_TOTALTRIBUTOSEST DN_VALOR,'+
    '  ADD NFE_TOTALTRIBUTOSMUN DN_VALOR,'+
    '  ADD NFE_TOTALTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE SERVICOS'+
    '  ADD SER_TOTALTRIBUTOSFED DN_VALOR,'+
    '  ADD SER_TOTALTRIBUTOSEST DN_VALOR,'+
    '  ADD SER_TOTALTRIBUTOSMUN DN_VALOR,'+
    '  ADD SER_TOTALTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE COMPRAS'+
    '  ADD COM_TOTALTRIBUTOSFED DN_VALOR,'+
    '  ADD COM_TOTALTRIBUTOSEST DN_VALOR,'+
    '  ADD COM_TOTALTRIBUTOSMUN DN_VALOR,'+
    '  ADD COM_TOTALTRIBUTOSIMP DN_VALOR;'+

    'ALTER TABLE NOTAS'+
    '  ADD NOT_TOTALTRIBUTOSFED DN_VALOR,'+
    '  ADD NOT_TOTALTRIBUTOSEST DN_VALOR,'+
    '  ADD NOT_TOTALTRIBUTOSMUN DN_VALOR,'+
    '  ADD NOT_TOTALTRIBUTOSIMP DN_VALOR;'+

    'UPDATE GRUPOS SET GRU_INTERNET=''S'';'+
    'UPDATE FAMILIAS SET FAM_INTERNET=''S'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao166;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='166';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'CREATE DOMAIN DN_TIPOISS AS VARCHAR(15);'+
    'CREATE DOMAIN DN_SERVICOISS AS VARCHAR(20);'+

    'ALTER TABLE PARAMETROS DROP PAR_CSTISSPADRAO;'+

    'ALTER TABLE ISS DROP CONSTRAINT PK_ISS_CODIGO;'+
    'ALTER TABLE ISS ADD ISS_CODIGO2 DN_TIPOISS NOT NULL;'+

    'UPDATE ISS SET ISS_CODIGO2=ISS_CODIGO;'+
    'ALTER TABLE ISS DROP ISS_CODIGO;'+
    'ALTER TABLE ISS ALTER ISS_CODIGO2 TO ISS_CODIGO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    //'update RDB$RELATION_FIELDS set RDB$NULL_FLAG = 1 where (RDB$FIELD_NAME = ''ISS_CODIGO'') and (RDB$RELATION_NAME = ''ISS'');'+
    'ALTER TABLE ISS ADD CONSTRAINT PK_ISS_CODIGO PRIMARY KEY (ISS_CODIGO);'+

    'ALTER TABLE PRODUTOS'+
    '  ADD PRO_INDICADORISS DN_DESCRICAO,'+
    '  ADD PRO_INCENTIVOISS DN_BOOLEAN,'+
    '  ADD PRO_TIPOISS DN_TIPOISS,'+
    '  DROP PRO_CSTISS;'+

    'ALTER TABLE VENDASITENS'+
    '  DROP VEI_CSTISS,'+
    '  ADD VEI_TIPOISS DN_TIPOISS,'+
    '  ADD VEI_INDICADORISS DN_DESCRICAO,'+
    '  ADD VEI_INCENTIVOISS DN_BOOLEAN,'+
    '  ADD VEI_VALORISSDEDUCAO DN_VALOR,'+
    '  ADD VEI_VALORISSOUTROS DN_VALOR,'+
    '  ADD VEI_VALORISSDESCINCOND DN_VALOR,'+
    '  ADD VEI_VALORISSDESCCOND DN_VALOR,'+
    '  ADD VEI_VALORISSRETENCAO DN_VALOR,'+
    '  ADD VEI_PROCESSOISS DN_NUMPROCESSO,'+
    '  ADD VEI_SERVICOISS DN_SERVICOISS,'+
    '  ADD VEI_PAISISS DN_NUMERO,'+
    '  ADD VEI_CIDADEISS DN_NUMERO;'+

    'ALTER TABLE NFCEITENS'+
    '  DROP NCI_CSTISS,'+
    '  ADD NCI_TIPOISS DN_TIPOISS,'+
    '  ADD NCI_INDICADORISS DN_DESCRICAO,'+
    '  ADD NCI_INCENTIVOISS DN_BOOLEAN,'+
    '  ADD NCI_VALORISSDEDUCAO DN_VALOR,'+
    '  ADD NCI_VALORISSOUTROS DN_VALOR,'+
    '  ADD NCI_VALORISSDESCINCOND DN_VALOR,'+
    '  ADD NCI_VALORISSDESCCOND DN_VALOR,'+
    '  ADD NCI_VALORISSRETENCAO DN_VALOR,'+
    '  ADD NCI_PROCESSOISS DN_NUMPROCESSO,'+
    '  ADD NCI_SERVICOISS DN_SERVICOISS,'+
    '  ADD NCI_PAISISS DN_NUMERO,'+
    '  ADD NCI_CIDADEISS DN_NUMERO;'+

    'ALTER TABLE NFEITENS'+
    '  DROP NFI_CSTISS,'+
    '  ADD NFI_TIPOISS DN_TIPOISS,'+
    '  ADD NFI_INDICADORISS DN_DESCRICAO,'+
    '  ADD NFI_INCENTIVOISS DN_BOOLEAN,'+
    '  ADD NFI_VALORISSDEDUCAO DN_VALOR,'+
    '  ADD NFI_VALORISSOUTROS DN_VALOR,'+
    '  ADD NFI_VALORISSDESCINCOND DN_VALOR,'+
    '  ADD NFI_VALORISSDESCCOND DN_VALOR,'+
    '  ADD NFI_VALORISSRETENCAO DN_VALOR,'+
    '  ADD NFI_PROCESSOISS DN_NUMPROCESSO,'+
    '  ADD NFI_SERVICOISS DN_SERVICOISS,'+
    '  ADD NFI_PAISISS DN_NUMERO,'+
    '  ADD NFI_CIDADEISS DN_NUMERO;'+

    'ALTER TABLE NOTASITENS'+
    '  DROP NOI_CSTISS,'+
    '  ADD NOI_TIPOISS DN_TIPOISS,'+
    '  ADD NOI_INDICADORISS DN_DESCRICAO,'+
    '  ADD NOI_INCENTIVOISS DN_BOOLEAN,'+
    '  ADD NOI_VALORISSDEDUCAO DN_VALOR,'+
    '  ADD NOI_VALORISSOUTROS DN_VALOR,'+
    '  ADD NOI_VALORISSDESCINCOND DN_VALOR,'+
    '  ADD NOI_VALORISSDESCCOND DN_VALOR,'+
    '  ADD NOI_VALORISSRETENCAO DN_VALOR,'+
    '  ADD NOI_PROCESSOISS DN_NUMPROCESSO,'+
    '  ADD NOI_SERVICOISS DN_SERVICOISS,'+
    '  ADD NOI_PAISISS DN_NUMERO,'+
    '  ADD NOI_CIDADEISS DN_NUMERO;'+

    'ALTER TABLE SERVICOSITENS'+
    '  DROP SEI_CSTISS,'+
    '  ADD SEI_TIPOISS DN_TIPOISS,'+
    '  ADD SEI_INDICADORISS DN_DESCRICAO,'+
    '  ADD SEI_INCENTIVOISS DN_BOOLEAN,'+
    '  ADD SEI_VALORISSDEDUCAO DN_VALOR,'+
    '  ADD SEI_VALORISSOUTROS DN_VALOR,'+
    '  ADD SEI_VALORISSDESCINCOND DN_VALOR,'+
    '  ADD SEI_VALORISSDESCCOND DN_VALOR,'+
    '  ADD SEI_VALORISSRETENCAO DN_VALOR,'+
    '  ADD SEI_PROCESSOISS DN_NUMPROCESSO,'+
    '  ADD SEI_SERVICOISS DN_SERVICOISS,'+
    '  ADD SEI_PAISISS DN_NUMERO,'+
    '  ADD SEI_CIDADEISS DN_NUMERO;'+

    'ALTER TABLE COMPRASITENS'+
    '  DROP COI_CSTISS,'+
    '  ADD COI_TIPOISS DN_TIPOISS,'+
    '  ADD COI_INDICADORISS DN_DESCRICAO,'+
    '  ADD COI_INCENTIVOISS DN_BOOLEAN,'+
    '  ADD COI_VALORISSDEDUCAO DN_VALOR,'+
    '  ADD COI_VALORISSOUTROS DN_VALOR,'+
    '  ADD COI_VALORISSDESCINCOND DN_VALOR,'+
    '  ADD COI_VALORISSDESCCOND DN_VALOR,'+
    '  ADD COI_VALORISSRETENCAO DN_VALOR,'+
    '  ADD COI_PROCESSOISS DN_NUMPROCESSO,'+
    '  ADD COI_SERVICOISS DN_SERVICOISS,'+
    '  ADD COI_PAISISS DN_NUMERO,'+
    '  ADD COI_CIDADEISS DN_NUMERO;'+

    'ALTER TABLE VENDAS'+
    '  ADD VED_TOTALISSDEDUCAO DN_VALOR,'+
    '  ADD VED_TOTALISSDESCCOND DN_VALOR,'+
    '  ADD VED_TOTALISSDESCINCOND DN_VALOR,'+
    '  ADD VED_TOTALISSOUTROS DN_VALOR,'+
    '  ADD VED_TOTALISSRETENCAO DN_VALOR,'+
    '  ADD VED_DTPRESTSERVICO DN_DATA;'+

    'ALTER TABLE NOTAS'+
    '  ADD NOT_TOTALISSDEDUCAO DN_VALOR,'+
    '  ADD NOT_TOTALISSDESCCOND DN_VALOR,'+
    '  ADD NOT_TOTALISSDESCINCOND DN_VALOR,'+
    '  ADD NOT_TOTALISSOUTROS DN_VALOR,'+
    '  ADD NOT_TOTALISSRETENCAO DN_VALOR,'+
    '  ADD NOT_DTPRESTSERVICO DN_DATA;'+

    'ALTER TABLE NFE'+
    '  ADD NFE_TOTALISSDEDUCAO DN_VALOR,'+
    '  ADD NFE_TOTALISSDESCCOND DN_VALOR,'+
    '  ADD NFE_TOTALISSDESCINCOND DN_VALOR,'+
    '  ADD NFE_TOTALISSOUTROS DN_VALOR,'+
    '  ADD NFE_TOTALISSRETENCAO DN_VALOR,'+
    '  ADD NFE_DTPRESTSERVICO DN_DATA;'+

    'ALTER TABLE NFCE'+
    '  ADD NFC_TOTALISSDEDUCAO DN_VALOR,'+
    '  ADD NFC_TOTALISSDESCCOND DN_VALOR,'+
    '  ADD NFC_TOTALISSDESCINCOND DN_VALOR,'+
    '  ADD NFC_TOTALISSOUTROS DN_VALOR,'+
    '  ADD NFC_TOTALISSRETENCAO DN_VALOR,'+
    '  ADD NFC_DTPRESTSERVICO DN_DATA;'+

    'ALTER TABLE SERVICOS'+
    '  ADD SER_TOTALISSDEDUCAO DN_VALOR,'+
    '  ADD SER_TOTALISSDESCCOND DN_VALOR,'+
    '  ADD SER_TOTALISSDESCINCOND DN_VALOR,'+
    '  ADD SER_TOTALISSOUTROS DN_VALOR,'+
    '  ADD SER_TOTALISSRETENCAO DN_VALOR;'+

    'ALTER TABLE COMPRAS'+
    '  ADD COM_TOTALISSDEDUCAO DN_VALOR,'+
    '  ADD COM_TOTALISSDESCCOND DN_VALOR,'+
    '  ADD COM_TOTALISSDESCINCOND DN_VALOR,'+
    '  ADD COM_TOTALISSOUTROS DN_VALOR,'+
    '  ADD COM_TOTALISSRETENCAO DN_VALOR,'+
    '  ADD COM_DTPRESTSERVICO DN_DATA;'+

    'ALTER TABLE CLASSFISCAL'+
    '  ADD CLF_ALIQUOTAESTADUAL DN_VALOR,'+
    '  ADD CLF_ALIQUOTAMUNICIPAL DN_VALOR;'+

    'ALTER TABLE EMPRESA ADD EMP_ENQUADRAMENTOISS DN_DESCRICAO;'+
    'update EMPRESA set EMP_ENQUADRAMENTO=''1 - SIMPLES NACIONAL'', EMP_ENQUADRAMENTOISS=''1 - MICROEMPRESA MUNICIPAL'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao165;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='165';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOS ADD PRO_PRODUTOREAL DN_NUMERO;'+
    'ALTER TABLE ESTOQUE '+
    '  ADD EST_PRODUTOREAL DN_NUMERO,'+
    '  ADD EST_CONVERSAO DN_VALOR,'+
    '  ADD EST_QUANTIDADEREAL DN_VALOR;'+
    'CREATE DOMAIN DN_NUMEROCHAR AS VARCHAR(15);'+

    'ALTER TABLE BOLETOS ALTER BOL_NUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE CLIENTES'+
    '  ALTER CLI_NUMERO TYPE DN_NUMEROCHAR,'+
    '  ALTER CLI_NUMEROCOB TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE COMPRAS ALTER COM_NUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE CONHECIMENTOS'+
    '  ALTER CTE_DESNUMERO TYPE DN_NUMEROCHAR,'+
    '  ALTER CTE_EXPNUMERO TYPE DN_NUMEROCHAR,'+
    '  ALTER CTE_RECNUMERO TYPE DN_NUMEROCHAR,'+
    '  ALTER CTE_REMNUMERO TYPE DN_NUMEROCHAR,'+
    '  ALTER CTE_TOMADORNUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE CONTRATOS ALTER CTI_LOCADORNUMERO TYPE DN_NUMEROCHAR;'+
    'ALTER TABLE CONTRATOSPARTES ALTER CTP_NUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE EMPRESA'+
    '  ALTER EMP_NOSSONUMERO TYPE DN_NUMEROCHAR,'+
    '  ALTER EMP_NUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE FORNECEDORES ALTER FOR_NUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE FOROS ALTER FRS_NUMERO TYPE DN_NUMEROCHAR;'+
    'ALTER TABLE IMOVEIS ALTER IMO_NUMERO TYPE DN_NUMEROCHAR;'+
    'ALTER TABLE NFCE ALTER NFC_NUMERO TYPE DN_NUMEROCHAR;'+
    'ALTER TABLE NFE ALTER NFE_NUMERO TYPE DN_NUMEROCHAR;'+
    'ALTER TABLE NOTAS ALTER NOT_NUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE PROMISSORIAS'+
    '  ALTER PRM_CEDENTENUMERO TYPE DN_NUMEROCHAR,'+
    '  ALTER PRM_SACADONUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE RECIBOS'+
    '  ALTER RCB_CNUMERO TYPE DN_NUMEROCHAR,'+
    '  ALTER RCB_SNUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE VENDAS ALTER VED_NUMERO TYPE DN_NUMEROCHAR;'+
    'ALTER TABLE VENDEDORES ALTER VEN_NUMERO TYPE DN_NUMEROCHAR;'+

    'ALTER TABLE VENDASITENS'+
    '  ADD VEI_PRODUTOREAL DN_NUMERO,'+
    '  ADD VEI_CONVERSAO DN_VALOR;'+

    'ALTER TABLE NOTASITENS'+
    '  ADD NOI_PRODUTOREAL DN_NUMERO,'+
    '  ADD NOI_CONVERSAO DN_VALOR;'+

    'ALTER TABLE NFEITENS'+
    '  ADD NFI_PRODUTOREAL DN_NUMERO,'+
    '  ADD NFI_CONVERSAO DN_VALOR;'+

    'ALTER TABLE NFCEITENS'+
    '  ADD NCI_PRODUTOREAL DN_NUMERO,'+
    '  ADD NCI_CONVERSAO DN_VALOR;'+

    'ALTER TABLE SERVICOSITENS'+
    '  ADD SEI_PRODUTOREAL DN_NUMERO,'+
    '  ADD SEI_CONVERSAO DN_VALOR;'+

    'ALTER TABLE COMPRASITENS'+
    '  ADD COI_PRODUTOREAL DN_NUMERO,'+
    '  ADD COI_CONVERSAO DN_VALOR;'+

    'update VENDASITENS set VEI_PRODUTOREAL=0, VEI_CONVERSAO=1;'+
    'update NOTASITENS set NOI_PRODUTOREAL=0, NOI_CONVERSAO=1;'+
    'update NFEITENS set NFI_PRODUTOREAL=0, NFI_CONVERSAO=1;'+
    'update NFCEITENS set NCI_PRODUTOREAL=0, NCI_CONVERSAO=1;'+
    'update SERVICOSITENS set SEI_PRODUTOREAL=0, SEI_CONVERSAO=1;'+
    'update PRODUTOS set PRO_PRODUTOREAL=0;'+
    'update ESTOQUE set EST_PRODUTOREAL=0, EST_CONVERSAO=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao164;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='164';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE TELEVENDAS ADD TEV_VENDA DN_NUMERO;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_VENDAEMAILSISTEMA DN_BOOLEAN,'+
    '  ADD PAR_VENDAEMAILASSUNTO DN_NUMERO,'+
    '  ADD PAR_VENDAEMAILCONTA DN_NUMERO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao163;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='163';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CONHECIMENTOS'+
    '  ADD CTE_ALIQICMSINTER DN_VALOR,'+
    '  ADD CTE_ALIQICMSINTERPART DN_VALOR,'+
    '  ADD CTE_ALIQFCP DN_VALOR,'+
    '  ADD CTE_TOTALFCP DN_VALOR,'+
    '  ADD CTE_ALIQICMSUFFIM DN_VALOR,'+
    '  ADD CTE_TOTALICMSUFFIM DN_VALOR,'+
    '  ADD CTE_TOTALICMSUFINI DN_VALOR;'+

    'ALTER TABLE EMAILSCONTAS ADD EMC_TLS DN_BOOLEAN;'+
    'ALTER TABLE EMAILS ADD EMA_HTML DN_BOOLEAN;'+
    'ALTER TABLE ASSUNTOS ADD ASS_HTML DN_BOOLEAN;'+

    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_NFEEMAILHTML DN_BOOLEAN,'+
    '  ADD PAR_CTEEMAILHTML DN_BOOLEAN;'+

    'UPDATE EMAILSCONTAS SET EMC_TLS=''S'';'+
    'UPDATE EMAILS SET EMA_HTML=''N'';'+
    'UPDATE ASSUNTOS SET ASS_HTML=''N'';'+
    'UPDATE PARAMETROS SET PAR_NFEEMAILHTML=''S'', PAR_CTEEMAILHTML=''S'';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao162;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='162';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE CLIENTES ADD CLI_CONTRIBUINTEICMS DN_MODALIDADE;'+
    'UPDATE CLIENTES SET CLI_CONTRIBUINTEICMS='+QuotedStr('9 - NAO CONTRIBUINTE')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao161;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='161';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE ALIQUOTAS '+
    '  ADD ALI_ALIQICMSINTER DN_VALOR,'+
    '  ADD ALI_ALIQICMSINTERPART DN_VALOR,'+
    '  ADD ALI_ALIQFCP DN_VALOR;'+

    'ALTER TABLE VENDAS'+
    '  ADD VED_TOTALFCP DN_VALOR,'+
    '  ADD VED_TOTALICMSUFDEST DN_VALOR,'+
    '  ADD VED_TOTALICMSUFREMET DN_VALOR;'+

    'ALTER TABLE VENDASITENS'+
    '  ADD VEI_CEST DN_CLASSFISCAL,'+
    '  ADD VEI_ALIQFCP DN_VALOR,'+
    '  ADD VEI_VALORFCP DN_VALOR,'+
    '  ADD VEI_ALIQICMSINTER DN_VALOR,'+
    '  ADD VEI_ALIQICMSINTERPART DN_VALOR,'+
    '  ADD VEI_VALORICMSUFDEST DN_VALOR,'+
    '  ADD VEI_VALORICMSUFREMET DN_VALOR;'+

    'ALTER TABLE NOTAS'+
    '  ADD NOT_TOTALFCP DN_VALOR,'+
    '  ADD NOT_TOTALICMSUFDEST DN_VALOR,'+
    '  ADD NOT_TOTALICMSUFREMET DN_VALOR;'+

    'ALTER TABLE NOTASITENS'+
    '  ADD NOI_CEST DN_CLASSFISCAL,'+
    '  ADD NOI_ALIQFCP DN_VALOR,'+
    '  ADD NOI_VALORFCP DN_VALOR,'+
    '  ADD NOI_ALIQICMSINTER DN_VALOR,'+
    '  ADD NOI_ALIQICMSINTERPART DN_VALOR,'+
    '  ADD NOI_VALORICMSUFDEST DN_VALOR,'+
    '  ADD NOI_VALORICMSUFREMET DN_VALOR;'+

    'ALTER TABLE NFE'+
    '  ADD NFE_TOTALFCP DN_VALOR,'+
    '  ADD NFE_TOTALICMSUFDEST DN_VALOR,'+
    '  ADD NFE_TOTALICMSUFREMET DN_VALOR;'+

    'ALTER TABLE NFEITENS'+
    '  ADD NFI_CEST DN_CLASSFISCAL,'+
    '  ADD NFI_ALIQFCP DN_VALOR,'+
    '  ADD NFI_VALORFCP DN_VALOR,'+
    '  ADD NFI_ALIQICMSINTER DN_VALOR,'+
    '  ADD NFI_ALIQICMSINTERPART DN_VALOR,'+
    '  ADD NFI_VALORICMSUFDEST DN_VALOR,'+
    '  ADD NFI_VALORICMSUFREMET DN_VALOR;'+

    'ALTER TABLE NFCE'+
    '  ADD NFC_TOTALFCP DN_VALOR,'+
    '  ADD NFC_TOTALICMSUFDEST DN_VALOR,'+
    '  ADD NFC_TOTALICMSUFREMET DN_VALOR;'+

    'ALTER TABLE NFCEITENS'+
    '  ADD NCI_CEST DN_CLASSFISCAL,'+
    '  ADD NCI_ALIQFCP DN_VALOR,'+
    '  ADD NCI_VALORFCP DN_VALOR,'+
    '  ADD NCI_ALIQICMSINTER DN_VALOR,'+
    '  ADD NCI_ALIQICMSINTERPART DN_VALOR,'+
    '  ADD NCI_VALORICMSUFDEST DN_VALOR,'+
    '  ADD NCI_VALORICMSUFREMET DN_VALOR;'+

    'ALTER TABLE SERVICOS'+
    '  ADD SER_TOTALFCP DN_VALOR,'+
    '  ADD SER_TOTALICMSUFDEST DN_VALOR,'+
    '  ADD SER_TOTALICMSUFREMET DN_VALOR;'+

    'ALTER TABLE SERVICOSITENS'+
    '  ADD SEI_CEST DN_CLASSFISCAL,'+
    '  ADD SEI_ALIQFCP DN_VALOR,'+
    '  ADD SEI_VALORFCP DN_VALOR,'+
    '  ADD SEI_ALIQICMSINTER DN_VALOR,'+
    '  ADD SEI_ALIQICMSINTERPART DN_VALOR,'+
    '  ADD SEI_VALORICMSUFDEST DN_VALOR,'+
    '  ADD SEI_VALORICMSUFREMET DN_VALOR;'+

    'ALTER TABLE COMPRAS'+
    '  ADD COM_TOTALFCP DN_VALOR,'+
    '  ADD COM_TOTALICMSUFDEST DN_VALOR,'+
    '  ADD COM_TOTALICMSUFREMET DN_VALOR;'+

    'ALTER TABLE COMPRASITENS'+
    '  ADD COI_CEST DN_CLASSFISCAL,'+
    '  ADD COI_ALIQFCP DN_VALOR,'+
    '  ADD COI_VALORFCP DN_VALOR,'+
    '  ADD COI_ALIQICMSINTER DN_VALOR,'+
    '  ADD COI_ALIQICMSINTERPART DN_VALOR,'+
    '  ADD COI_VALORICMSUFDEST DN_VALOR,'+
    '  ADD COI_VALORICMSUFREMET DN_VALOR;'+

    'UPDATE ALIQUOTAS SET ALI_ALIQICMSINTERPART=20, ALI_ALIQICMSINTER=7, ALI_ALIQFCP=0;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao160;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='160';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOS ADD PRO_CFOP DN_NUMERO;'+
    'ALTER TABLE PRODUTOS ADD PRO_CONVERSAO DN_VALOR;'+

    'ALTER TABLE PARAMETROS ADD PAR_CFOPPRODUTO DN_BOOLEAN;'+

    'UPDATE PARAMETROS SET PAR_CFOPPRODUTO='+QuotedStr('N')+';'+

    'UPDATE PRODUTOS SET PRO_CFOP=5102, PRO_CONVERSAO=1;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao159;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='159';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PRODUTOS ADD PRO_CEST DN_CLASSFISCAL;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao158;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='158';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_PREVISUALIZARVENDA DN_BOOLEAN;'+
    'ALTER TABLE PARAMETROS ADD PAR_IMPRIMIRNOMEFANTASIA DN_BOOLEAN;'+

    'UPDATE PARAMETROS SET PAR_PREVISUALIZARVENDA='+QuotedStr('S')+';'+
    'UPDATE PARAMETROS SET PAR_IMPRIMIRNOMEFANTASIA='+QuotedStr('N')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  //DM.AtualizarComponentes:=True;
  //DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao157;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='157';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE VENDASITENS ADD VEI_QUANTIDADETROCA DN_VALOR;'+
    'ALTER TABLE SERVICOSITENS ADD SEI_QUANTIDADETROCA DN_VALOR;'+
    'ALTER TABLE NOTASITENS ADD NOI_QUANTIDADETROCA DN_VALOR;'+
    'ALTER TABLE NFEITENS ADD NFI_QUANTIDADETROCA DN_VALOR;'+

    'UPDATE VENDASITENS SET VEI_QUANTIDADETROCA=0;'+
    'UPDATE SERVICOSITENS SET SEI_QUANTIDADETROCA=0;'+
    'UPDATE NOTASITENS SET NOI_QUANTIDADETROCA=0;'+
    'UPDATE NFEITENS SET NFI_QUANTIDADETROCA=0;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao156;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='156';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS ADD PAR_STPRIMEIRAPARCELA DN_BOOLEAN;'+
    'UPDATE PARAMETROS SET PAR_STPRIMEIRAPARCELA='+QuotedStr('N')+';'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao155;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='155';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'UPDATE LOCS SET LOS_PICKLIST='+QuotedStr('CODIGO;NOSSO NUMERO;DATA INICIAL;DATA FINAL;CODIGO CLIENTE;CLIENTE;NUM DOCTO;')+' where LOS_TELA='+QuotedStr('Boletos')+';'+
    'UPDATE LOCS SET LOS_PICKLIST='+QuotedStr('CODIGO;DATA INICIAL;DATA FINAL;CLIENTE;NOTA CLIENTE;')+' where LOS_TELA='+QuotedStr('Ordens de Producao')+';'+
    'ALTER TABLE VENDAS ALTER VED_CODIMPORTACAO TYPE DN_NUMPROCESSO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao154;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='154';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'DROP TABLE REDUCOESZITENS;'+
    'DROP TABLE REDUCOESZ;'+
    'ALTER TABLE MOVIMENTOS DROP CONSTRAINT FK_MOV_TERMINAL;'+
    'DROP TABLE TERMINAIS;'+
    'DROP SEQUENCE GEN_TERMINAIS;'+
    'DROP SEQUENCE GEN_REDUCOESZ;'+
    'DROP SEQUENCE GEN_REDUCOESZITENS;'+
    'DROP TABLE CUPOMITENS;'+
    'DROP TABLE CUPOM;'+
    'DROP TABLE CUPOMFISCALPAGTOS;'+
    'DROP TABLE CUPOMFISCALITENS;'+
    'DROP TABLE CUPOMFISCAL;'+
    'DROP TABLE SANGRIAS;'+
    'DROP TABLE SUPRIMENTOS;'+
    'DROP SEQUENCE GEN_CUPOM;'+
    'DROP SEQUENCE GEN_CUPOMFISCAL;'+
    'DROP SEQUENCE GEN_CUPOMFISCALITENS;'+
    'DROP SEQUENCE GEN_CUPOMFISCALPAGTOS;'+
    'DROP SEQUENCE GEN_CUPOMITENS;'+
    'DROP SEQUENCE GEN_SANGRIAS;'+
    'DROP SEQUENCE GEN_SUPRIMENTOS;'+

    'CREATE DOMAIN DN_ORIGEMPRODUTO AS VARCHAR(120);'+

    'CREATE SEQUENCE GEN_NFCE;'+
    'CREATE SEQUENCE GEN_NFCEITENS;'+
    'CREATE SEQUENCE GEN_NFCEINUTILIZADAS;'+

    'CREATE TABLE NFCECODIGO ('+
    '  NFC_CODIGO  DN_CODIGO);'+

    'CREATE TABLE NFCE ('+
    '  NFC_CODIGO               DN_CODIGO,'+
    '  NFC_CLIENTE              DN_CODIGO,'+
    '  NFC_EXPEDIDOPOR          DN_CODIGO,'+
    '  NFC_VENDEDOR             DN_CODIGO,'+
    '  NFC_ALIQICMSCREDSN       DN_VALOR,'+
    '  NFC_BAIRRO               DN_BAIRRO,'+
    '  NFC_BAIXADATA            DN_DATA,'+
    '  NFC_BAIXAPOR             DN_LOGIN,'+
    '  NFC_BASECOFINS           DN_VALOR,'+
    '  NFC_BASECOFINSST         DN_VALOR,'+
    '  NFC_BASEICMS             DN_VALOR,'+
    '  NFC_BASEICMSST           DN_VALOR,'+
    '  NFC_BASEIPI              DN_VALOR,'+
    '  NFC_BASEISS              DN_VALOR,'+
    '  NFC_BASEPIS              DN_VALOR,'+
    '  NFC_BASEPISST            DN_VALOR,'+
    '  NFC_CEP                  DN_CEP,'+
    '  NFC_CFOP                 DN_NUMERO,'+
    '  NFC_CFOPDESC             DN_DESCRICAOPLUS,'+
    '  NFC_CHAVEACESSO          DN_CHAVEACESSO,'+
    '  NFC_CIDADE               DN_CIDADE,'+
    '  NFC_CIDADECODIGO         DN_NUMERO,'+
    '  NFC_CNPJ                 DN_CNPJIECPFRG,'+
    '  NFC_CODIGONUMERICO       DN_ALEATORIO,'+
    '  NFC_COMISSAO             DN_VALOR,'+
    '  NFC_COMISSAOPOR          DN_BOOLEAN,'+
    '  NFC_COMPLEMENTO          DN_COMPLEMENTO,'+
    '  NFC_CONDICAO             DN_CODIGO,'+
    '  NFC_CONDICAOMEMO         DN_BLOBTEXTO,'+
    '  NFC_CONSULTADA           DN_BOOLEAN,'+
    '  NFC_CONTATO              DN_NOME,'+
    '  NFC_CPF                  DN_CNPJIECPFRG,'+
    '  NFC_CUSTOTOTAL           DN_VALOR,'+
    '  NFC_DESCPORC             DN_VALOR,'+
    '  NFC_DESCPORCCLIENTE      DN_VALOR,'+
    '  NFC_DESCPORCCONDICAO     DN_VALOR,'+
    '  NFC_DESCVALOR            DN_VALOR,'+
    '  NFC_DESTACARIMPOSTOS     DN_BOOLEAN,'+
    '  NFC_DIAPREFERENCIAL      DN_NUMERO,'+
    '  NFC_DPEC                 DN_PROTOCOLO,'+
    '  NFC_DPECDH               DN_DATAHORA,'+
    '  NFC_DTATUALIZACAO        DN_DATA,'+
    '  NFC_DTCADASTRO           DN_DATA,'+
    '  NFC_DTEMISSAO            DN_DATA,'+
    '  NFC_DTSAIDA              DN_DATA,'+
    '  NFC_ENDERECO             DN_ENDERECO,'+
    '  NFC_ENTRADASAIDA         DN_BOOLEAN,'+
    '  NFC_ENVIADA              DN_BOOLEAN,'+
    '  NFC_ESPECIE              DN_DESCRICAO,'+
    '  NFC_ESTADO               DN_ESTADO,'+
    '  NFC_ESTADOCODIGO         DN_NUMERO,'+
    '  NFC_FINALIDADE           DN_FINALIDADE,'+
    '  NFC_FONE1                DN_FONE,'+
    '  NFC_FORMAPAGTO           DN_FORMAPAGTO,'+
    '  NFC_FRETE                DN_FRETE,'+
    '  NFC_ICMSALIQUOTAUF       DN_VALOR,'+
    '  NFC_ICMSPOR              DN_BOOLEAN,'+
    '  NFC_IE                   DN_CNPJIECPFRG,'+
    '  NFC_INFOADICFISCO        DN_BLOBTEXTO,'+
    '  NFC_LACRES               DN_DESCRICAO,'+
    '  NFC_LOTE                 DN_LOTE,'+
    '  NFC_LUCROPORC            DN_VALOR,'+
    '  NFC_LUCROVALOR           DN_VALOR,'+
    '  NFC_MARCA                DN_DESCRICAO,'+
    '  NFC_MODELO               DN_NUMERO,'+
    '  NFC_MOTIVOCANCELAMENTO   DN_DESCRICAOPLUS,'+
    '  NFC_MOTIVOINUTILIZACAO   DN_DESCRICAOPLUS,'+
    '  NFC_MOVIMENTAESTOQUE     DN_BOOLEAN,'+
    '  NFC_MOVIMENTAFINANCEIRO  DN_BOOLEAN,'+
    '  NFC_NOME                 DN_NOME,'+
    '  NFC_NUMERO               DN_NUMERO,'+
    '  NFC_OBSERVACOES          DN_BLOBTEXTO,'+
    '  NFC_PESOBRUTO            DN_PESO,'+
    '  NFC_PESOLIQ              DN_PESO,'+
    '  NFC_PROTOCOLO            DN_PROTOCOLO,'+
    '  NFC_PROTOCOLOCANC        DN_PROTOCOLO,'+
    '  NFC_PROTOCOLOCANCDH      DN_DATAHORA,'+
    '  NFC_PROTOCOLODH          DN_DATAHORA,'+
    '  NFC_PROTOCOLOINUT        DN_PROTOCOLO,'+
    '  NFC_PROTOCOLOINUTDH      DN_DATAHORA,'+
    '  NFC_REBOQUEPLACA         DN_PLACA,'+
    '  NFC_REBOQUEPLACAUF       DN_ESTADO,'+
    '  NFC_REBOQUERNTC          DN_RNTC,'+
    '  NFC_RECIBO               DN_PROTOCOLO,'+
    '  NFC_RECIBODH             DN_DATAHORA,'+
    '  NFC_RG                   DN_CNPJIECPFRG,'+
    '  NFC_SERIE                DN_NUMERO,'+
    '  NFC_STATUS               DN_BOOLEAN,'+
    '  NFC_TABELAPRECO          DN_BOOLEAN,'+
    '  NFC_TIPOATENDIMENTO      DN_TIPOATENDIMENTO,'+
    '  NFC_TIPOCONSUMIDOR       DN_TIPOCONSUMIDOR,'+
    '  NFC_TIPOEMISSAO          DN_TIPOEMISSAO,'+
    '  NFC_TIPOOPERACAO         DN_TIPOOPERACAO,'+
    '  NFC_TOTALBRUTO           DN_VALOR,'+
    '  NFC_TOTALCCE             DN_NUMERO,'+
    '  NFC_TOTALCOFINS          DN_VALOR,'+
    '  NFC_TOTALCOFINSST        DN_VALOR,'+
    '  NFC_TOTALCOMISSAO        DN_VALOR,'+
    '  NFC_TOTALICMS            DN_VALOR,'+
    '  NFC_TOTALICMSCREDSN      DN_VALOR,'+
    '  NFC_TOTALICMSST          DN_VALOR,'+
    '  NFC_TOTALIPI             DN_VALOR,'+
    '  NFC_TOTALISS             DN_VALOR,'+
    '  NFC_TOTALITENS           DN_VALOR,'+
    '  NFC_TOTALPIS             DN_VALOR,'+
    '  NFC_TOTALPISST           DN_VALOR,'+
    '  NFC_TOTALPRODUTOS        DN_VALOR,'+
    '  NFC_TOTALSERVICOS        DN_VALOR,'+
    '  NFC_TOTALTRIBUTOS        DN_VALOR,'+
    '  NFC_TRANSPCIDADE         DN_CIDADE,'+
    '  NFC_TRANSPCNPJ           DN_CNPJIECPFRG,'+
    '  NFC_TRANSPCPF            DN_CNPJIECPFRG,'+
    '  NFC_TRANSPENDERECO       DN_ENDERECO,'+
    '  NFC_TRANSPESTADO         DN_ESTADO,'+
    '  NFC_TRANSPFONE           DN_FONE,'+
    '  NFC_TRANSPIE             DN_CNPJIECPFRG,'+
    '  NFC_TRANSPNOME           DN_NOME,'+
    '  NFC_TRANSPORTADORA       DN_CODIGONULL,'+
    '  NFC_USUARIO              DN_LOGIN,'+
    '  NFC_VALORDESPACES        DN_VALOR,'+
    '  NFC_VALORFRETE           DN_VALOR,'+
    '  NFC_VALORSEGURO          DN_VALOR,'+
    '  NFC_VALORTOTAL           DN_VALOR,'+
    '  NFC_VEICULOPLACA         DN_PLACA,'+
    '  NFC_VEICULOPLACAUF       DN_ESTADO,'+
    '  NFC_VEICULORNTC          DN_RNTC,'+
    '  NFC_VENDA                DN_CODIGONULL,'+
    '  NFC_VOLUMES              DN_NUMERO,'+
    '  NFC_VOLUMESNUM           DN_DESCRICAO);'+

    'ALTER TABLE NFCE ADD CONSTRAINT PK_NFC_CODIGO PRIMARY KEY (NFC_CODIGO);'+
    'ALTER TABLE NFCE ADD CONSTRAINT FK_NFC_CLIENTE FOREIGN KEY (NFC_CLIENTE) REFERENCES CLIENTES (CLI_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE NFCE ADD CONSTRAINT FK_NFC_EXPEDIDOPOR FOREIGN KEY (NFC_EXPEDIDOPOR) REFERENCES VENDEDORES (VEN_CODIGO) ON UPDATE CASCADE;'+
    'ALTER TABLE NFCE ADD CONSTRAINT FK_NFC_VENDEDOR FOREIGN KEY (NFC_VENDEDOR) REFERENCES VENDEDORES (VEN_CODIGO) ON UPDATE CASCADE;'+
    'CREATE DESCENDING INDEX IX_NFC_DTEMISSAO ON NFCE (NFC_DTEMISSAO);'+

    'CREATE TABLE NFCEITENS ('+
    '  NCI_CODIGO            DN_CODIGO,'+
    '  NCI_NOTA              DN_CODIGO,'+
    '  NCI_PRODUTO           DN_CODIGO,'+
    '  NCI_ALIQCOFINS        DN_VALOR,'+
    '  NCI_ALIQCOFINSST      DN_VALOR,'+
    '  NCI_ALIQICMS          DN_VALOR,'+
    '  NCI_ALIQICMSADICST    DN_VALOR,'+
    '  NCI_ALIQICMSRED       DN_VALOR,'+
    '  NCI_ALIQICMSST        DN_VALOR,'+
    '  NCI_ALIQIPI           DN_VALOR,'+
    '  NCI_ALIQISS           DN_VALOR,'+
    '  NCI_ALIQPIS           DN_VALOR,'+
    '  NCI_ALIQPISST         DN_VALOR,'+
    '  NCI_ALMOXARIFADO      DN_CODIGO,'+
    '  NCI_BASECOFINS        DN_VALOR,'+
    '  NCI_BASECOFINSST      DN_VALOR,'+
    '  NCI_BASEICMS          DN_VALOR,'+
    '  NCI_BASEICMSRED       DN_VALOR,'+
    '  NCI_BASEICMSST        DN_VALOR,'+
    '  NCI_BASEIPI           DN_VALOR,'+
    '  NCI_BASEISS           DN_VALOR,'+
    '  NCI_BASEPIS           DN_VALOR,'+
    '  NCI_BASEPISST         DN_VALOR,'+
    '  NCI_CFOP              DN_NUMERO,'+
    '  NCI_CLASSFISCAL       DN_NUMERO,'+
    '  NCI_CODFAB            DN_CODFAB,'+
    '  NCI_COMISSAO          DN_VALOR,'+
    '  NCI_COMPLEMENTO       DN_DESCRICAO,'+
    '  NCI_COMPOEBASEICMS    DN_BOOLEAN,'+
    '  NCI_COMPOEBASEICMSST  DN_BOOLEAN,'+
    '  NCI_CSTCOFINS         DN_NUMERO,'+
    '  NCI_CSTICMS           DN_NUMERO,'+
    '  NCI_CSTIPI            DN_NUMERO,'+
    '  NCI_CSTISS            DN_NUMERO,'+
    '  NCI_CSTPIS            DN_NUMERO,'+
    '  NCI_DESCMAX           DN_VALOR,'+
    '  NCI_DESCPORC          DN_VALOR,'+
    '  NCI_DESCRICAO         DN_NOMEPLUS,'+
    '  NCI_DESCVALOR         DN_VALOR,'+
    '  NCI_FCI               DN_FCI,'+
    '  NCI_INFOADICIONAL     DN_BLOBTEXTO,'+
    '  NCI_LOCALIZACAO       DN_LOCALIZACAO,'+
    '  NCI_LOTE              DN_LOTE,'+
    '  NCI_LUCROPORC         DN_VALOR,'+
    '  NCI_LUCROVALOR        DN_VALOR,'+
    '  NCI_MODICMS           DN_MODALIDADE,'+
    '  NCI_MODICMSST         DN_MODALIDADE,'+
    '  NCI_ORIGEM            DN_ORIGEMPRODUTO,'+
    '  NCI_PESO              DN_PESO,'+
    '  NCI_PESOTOTAL         DN_PESO,'+
    '  NCI_PRECOCUSTO        DN_VALOR,'+
    '  NCI_PRECOCUSTOTOTAL   DN_VALOR,'+
    '  NCI_QUANTIDADE        DN_VALOR,'+
    '  NCI_TIPO              DN_BOOLEAN,'+
    '  NCI_UNIDADE           DN_UNIDADE,'+
    '  NCI_VALORACESSORIAS   DN_VALOR,'+
    '  NCI_VALORCOFINS       DN_VALOR,'+
    '  NCI_VALORCOFINSST     DN_VALOR,'+
    '  NCI_VALORCOMISSAO     DN_VALOR,'+
    '  NCI_VALORFRETE        DN_VALOR,'+
    '  NCI_VALORICMS         DN_VALOR,'+
    '  NCI_VALORICMSCREDSN   DN_VALOR,'+
    '  NCI_VALORICMSST       DN_VALOR,'+
    '  NCI_VALORIPI          DN_VALOR,'+
    '  NCI_VALORISS          DN_VALOR,'+
    '  NCI_VALORPIS          DN_VALOR,'+
    '  NCI_VALORPISST        DN_VALOR,'+
    '  NCI_VALORSEGURO       DN_VALOR,'+
    '  NCI_VALORTOTAL        DN_VALOR,'+
    '  NCI_VALORTOTALBRUTO   DN_VALOR,'+
    '  NCI_VALORTRIBUTOS     DN_VALOR,'+
    '  NCI_VALORUNIT         DN_VALOR);'+

    'ALTER TABLE NFCEITENS ADD CONSTRAINT PK_NCI_CODIGO PRIMARY KEY (NCI_CODIGO);'+
    'ALTER TABLE NFCEITENS ADD CONSTRAINT FK_NCI_NOTA FOREIGN KEY (NCI_NOTA) REFERENCES NFCE (NFC_CODIGO) ON DELETE CASCADE ON UPDATE CASCADE;'+
    'ALTER TABLE NFCEITENS ADD CONSTRAINT FK_NCI_PRODUTO FOREIGN KEY (NCI_PRODUTO) REFERENCES PRODUTOS (PRO_CODIGO) ON UPDATE CASCADE;'+

    'CREATE TABLE NFCEINUTILIZADAS ('+
    '  FCI_CODIGO         DN_CODIGO,'+
    '  FCI_ANO            DN_ANO,'+
    '  FCI_DTATUALIZACAO  DN_DATA,'+
    '  FCI_DTCADASTRO     DN_DATA,'+
    '  FCI_JUSTIFICATIVA  DN_DESCRICAOPLUS,'+
    '  FCI_MODELO         DN_NUMERO,'+
    '  FCI_NUMFINAL       DN_NUMERO,'+
    '  FCI_NUMINICIAL     DN_NUMERO,'+
    '  FCI_PROTOCOLO      DN_PROTOCOLO,'+
    '  FCI_PROTOCOLODH    DN_DATAHORA,'+
    '  FCI_SERIE          DN_NUMERO,'+
    '  FCI_USUARIO        DN_LOGIN);'+

    'ALTER TABLE NFCEINUTILIZADAS ADD CONSTRAINT PK_FCI_CODIGO PRIMARY KEY (FCI_CODIGO);'+

    'ALTER TABLE COMPRASITENS ALTER COI_ORIGEM TYPE DN_ORIGEMPRODUTO;'+
    'ALTER TABLE NFEITENS ALTER NFI_ORIGEM TYPE DN_ORIGEMPRODUTO;'+
    'ALTER TABLE NOTASITENS ALTER NOI_ORIGEM TYPE DN_ORIGEMPRODUTO;'+
    'ALTER TABLE PRODUTOS ALTER PRO_ORIGEM TYPE DN_ORIGEMPRODUTO;'+
    'ALTER TABLE SERVICOSITENS ALTER SEI_ORIGEM TYPE DN_ORIGEMPRODUTO;'+
    'ALTER TABLE VENDASITENS ALTER VEI_ORIGEM TYPE DN_ORIGEMPRODUTO;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

procedure AtualizarVersao153;
begin
  DM.TBVersao.Edit;
  DM.TBVersaoVER_VERSAOBASE.Value:='153';
  DM.TBVersao.Post;

  DM.TRScript.StartTransaction;
  DM.FDScript.SQLScripts.Clear;
  DM.FDScript.SQLScripts.Add;
  DM.FDScript.SQLScripts.Items[0].SQL.Text:=
    'ALTER TABLE PARAMETROS'+
    '  ADD PAR_DESCMAXPADRAO DN_VALOR,'+
    '  ADD PAR_ESPECIEPADRAO DN_DESCRICAO,'+
    '  ADD PAR_MARCAPADRAO DN_DESCRICAO;'+
    'update PARAMETROS set PAR_DESCMAXPADRAO=100;'
  ;
  DM.FDScript.ExecuteAll;
  DM.TRScript.Commit;
  DM.FDConnection1.Connected:=False;
  DM.TBVersao.Open;

  DM.AtualizarComponentes:=True;
  DM.AtualizarUsuariosAcessos:=True;
end;

//EnviarMensagemParaTodos(1,'Dica: Pressione CTRL+ENTER para digitar em 2 ou mais linhas.');
//'delete from PRODUTOSCODIGOS where PCO_PRODUTO||PCO_FORNECEDOR in '+
//'(select PCO_PRODUTO||PCO_FORNECEDOR from produtoscodigos group by PCO_PRODUTO||PCO_FORNECEDOR having count(*)>1);'+
//'DELETE FROM PRODUTOSCODIGOS WHERE PCO_FORNECEDOR||PCO_CODIGOFORNECEDOR IN '+
//'(SELECT PCO_FORNECEDOR||PCO_CODIGOFORNECEDOR FROM PRODUTOSCODIGOS GROUP BY PCO_FORNECEDOR||PCO_CODIGOFORNECEDOR HAVING COUNT(*)>1);'
//'UPDATE LOCS SET LOS_PICKLIST='+QuotedStr('CODIGO;NOME;NOME FANTASIA;ENDERECO;BAIRRO;CIDADE;SETOR;TELEFONE;CPF;CNPJ;EMAIL;')+' where LOS_CODIGO=1;'
//'DELETE FROM TELAS WHERE TEL_NOMEFORM=''TFormCt'';'
//'update LOCS set LOS_PICKLIST=''TODAS;ABERTAS;BAIXADAS;CANCELADAS;'' where LOS_TELA=''Contas a Pagar com Status'';'+}
//'CREATE UNIQUE INDEX IX_LOS_TELA ON LOCS (LOS_TELA);'+
//'insert into LOCS values (86,''Comandas com Status'',''TFormComandas'',''DATA INICIAL'',''TODAS;ABERTAS;BAIXADAS;CANCELADAS;'');'+
//'update RDB$RELATION_FIELDS set RDB$NULL_FLAG = 1 where (RDB$FIELD_NAME = ''CMD_COMANDA'') and (RDB$RELATION_NAME = ''COMANDAS'');'+
//'insert into MODULOS (MOD_CODIGO, MOD_NOME, MOD_MENUITEM, MOD_BOTAO, MOD_ACESSO) values (110,''Conhecimentos'',''Conhecimentos'','''',''N'');'+
//'set generator GEN_MODULOS to 110;'+
//'insert into TELAS (TEL_NOMEFORM, TEL_DESCRICAO, TEL_STATUS) values (''TFormMarcas'',''Cadastro de Marcas'',''A'');'+
//'UPDATE RDB$RELATION_FIELDS SET RDB$DESCRIPTION='+QuotedStr('CALCULAR POR PRODUTO OU POR ESTADO?')+' WHERE RDB$FIELD_NAME='+QuotedStr('NFE_ICMSPOR')+';'+

procedure CriarSenhasClientes();
var Q: TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DM.FDConnection1;
  Q.SQL.Add('select CLI_CODIGO from CLIENTES order by CLI_CODIGO');
  Q.Open;
  Q.First;
  while not Q.Eof do
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=Q.FieldByName('CLI_CODIGO').AsInteger;
    DM.TBClientes.Open;
    DM.TBClientes.Edit;
    DM.TBClientesCLI_PASSWORD.Value:=MD5Print(MD5String(Q.FieldByName('CLI_CODIGO').AsString));
    DM.TBClientes.Post;
    Q.Next;
  end;
  Q.Destroy;
end;

procedure ConverterSenhasParaMD5();
var Q: TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DM.FDConnection1;
  Q.SQL.Add('select * from USUARIOS');
  Q.Open;
  Q.First;
  while not Q.Eof do
  begin
    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsString:=Q.FieldByName('USU_LOGIN').AsString;
    DM.TBUsuarios.Open;
    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_PASSWORD.Value:=MD5Print(MD5String(Senha(AnsiString(DM.TBUsuariosUSU_PASSWORD.Value),240)));
    DM.TBUsuarios.Post;
    Q.Next;
  end;
  Q.Destroy;
end;

procedure Tela(Formulario, Descricao: String; Modulo: Integer);
var Q1, Q2, Q3: TFDQuery;
  Status: String;
begin
  Q1:=TFDQuery.Create(nil);
  Q1.Connection:=DM.FDConnection1;
  Q1.SQL.Add('select * from TELAS where TEL_NOMEFORM=:form');
  Q1.ParamByName('form').AsString:=Formulario;
  Q1.Open;
  Q1.FetchAll;

  Q2:=TFDQuery.Create(nil);
  Q2.Connection:=DM.FDConnection1;
  Q2.SQL.Add('select * from MODULOS where MOD_CODIGO=:modulo');
  Q2.ParamByName('modulo').AsInteger:=Modulo;
  Q2.Open;

  Status:='A';
  if Q2.FieldByName('MOD_ACESSO').AsString='N' then
  Status:='I';

  //já está cadastrada. atualiza descricao e status.
  if Q1.RecordCount > 0 then
  begin
    Q3:=TFDQuery.Create(nil);
    Q3.Connection:=DM.FDConnection1;
    Q3.SQL.Add('update TELAS set TEL_DESCRICAO=:descricao, TEL_STATUS=:status where TEL_NOMEFORM=:form');
    Q3.ParamByName('descricao').AsString:=Descricao;
    Q3.ParamByName('form').AsString:=Formulario;
    Q3.ParamByName('status').AsString:=Status;
    Q3.ExecSQL;
    Q3.Destroy;
  end;

  //não está cadastrada ainda.
  if Q1.RecordCount <= 0 then
  begin
    Q3:=TFDQuery.Create(nil);
    Q3.Connection:=DM.FDConnection1;
    Q3.SQL.Add('insert into TELAS (TEL_DESCRICAO, TEL_MODULO, TEL_NOMEFORM, TEL_STATUS) values (:descricao, :modulo, :nomeform, :status)');
    Q3.ParamByName('descricao').AsString:=Descricao;
    Q3.ParamByName('modulo').AsInteger:=Modulo;
    Q3.ParamByName('nomeform').AsString:=Formulario;
    Q3.ParamByName('status').AsString:=Status;
    Q3.ExecSQL;
    Q3.Destroy;
  end;

  Q1.Destroy;
  Q2.Destroy;
end;

procedure VerificarTelas();
begin
  Screen.Cursor:=crHourGlass;
  Tela('TFormAcoes',               'Cadastro de Tipos de Acoes',                                 115);
  Tela('TFormAgrupadores',         'Cadastro de Agrupadores',                                    3);
  Tela('TFormAliquotas',           'Cadastro de Aliquotas',                                      100);
  Tela('TFormAlmoxarifados',       'Cadastro de Almoxarifados',	                                 1);
  Tela('TFormAssuntos',            'Cadastro de Assuntos',                                       114);
  Tela('TFormAtendimentos',        'Cadastro de Atendimentos',                                   10);
  Tela('TFormAtividades',          'Cadastro de Ramos de Atividades',                            100);
  Tela('TFormAvaliacoes',          'Cadastro de Notas de Avaliacoes',                            10);
  Tela('TFormAvaliacoesTipo',      'Cadastro de Tipos de Avaliacoes',                            10);
  Tela('TFormBancos',              'Cadastro de Bancos',	                                       3);
  Tela('TFormBeneficios',          'Cadastro de Beneficios Fiscais',                             2);
  Tela('TFormBoletos',             'Cadastro de Boletos',                                        3);
  Tela('TFormCaixa',               'Cadastro de Fluxo de Caixa',                                 3);
  Tela('TFormChamadas',            'Cadastro de Chamadas',                                       10);
  Tela('TFormChecklists',          'Cadastro de Checklists',                                     4);
  Tela('TFormCheques',             'Cadastro de Cheques',	                                       3);
  Tela('TFormClassFiscal',         'Cadastro de Classificacao Fiscal',                           2);
  Tela('TFormClassTrib',           'Cadastro de Classificacao Tributarias',	                     2);
  Tela('TFormClasses',             'Cadastro de Classes',                                        9);
  Tela('TFormClassificados',       'Cadastro de Classificados',                                  8);
  Tela('TFormClientes',            'Cadastro de Clientes',                                       100);
  Tela('TFormClientesAnexos',      'Cadastro de Clientes - Anexos',	                             100);
  Tela('TFormComandas',            'Cadastro de Comandas',	                                     113);
  Tela('TFormComandasControle',    'Controle de Comandas',	                                     113);
  Tela('TFormCompras',             'Cadastro de Pedido de Compras',	                             1);
  Tela('TFormCondicoes',           'Cadastro de Condicoes de Pagamento',	                       2);
  Tela('TFormConhecimentos',       'Cadastro de Conhecimento de Transporte Eletronico',          110);
  Tela('TFormConsultas',           'Cadastro de Consultas',	                                     120);
  Tela('TFormConsultasAnexos',     'Cadastro de Consultas - Anexos',	                           120);
  Tela('TFormConsultasImagens',    'Cadastro de Consultas - Imagens',	                           120);
  Tela('TFormContas',              'Cadastro de Contas Bancarias',	                             3);
  Tela('TFormContasMov',           'Cadastro de Movimentacao de Contas Bancarias',	             3);
  Tela('TFormContatos',            'Cadastro de Clientes - Contatos',	                           100);
  Tela('TFormConteudos',           'Cadastro de Conteudos',	                                     10);
  Tela('TFormContratos',           'Cadastro de Contratos de Imoveis', 	                         112);
  Tela('TFormConvenios',           'Cadastro de Convenios',	                                     100);
  Tela('TFormCreditoPresumido',    'Cadastro de Crédito Presumido',	                             2);
  Tela('TFormCst',                 'Cadastro de CST',	                                           2);
  Tela('TFormCupom',               'Cadastro de Cupons Fiscais',	                               111);
  Tela('TFormCursos',              'Cadastro de Cursos',	                                       10);
  Tela('TFormDelivery',            'Cadastro de Deliverys',	                                     100);
  Tela('TFormDeliveryDetalhes',    'Cadastro de Deliverys - Detalhes',	                         100);
  Tela('TFormDespesas',            'Cadastro de Tipos de Despesas',	                             3);
  Tela('TFormEcf',                 'Cadastro de ECFs',	                                         111);
  Tela('TFormEmails',              'Cadastro de Envio de Emails',	                               114);
  Tela('TFormEmailsContas',        'Cadastro de Contas de Emails',	                             114);
  Tela('TFormEnderecos',           'Cadastro de Enderecos',	                                     100);
  Tela('TFormEquipamentos',        'Cadastro de Equipamentos',	                                 4);
  Tela('TFormEstoque',             'Cadastro de Movimentacao do Estoque',	                       1);
  Tela('TFormEtapas',              'Cadastro de Etapas',	                                       100);
  Tela('TFormEtiquetas',           'Cadastro de Etiquetas - Configuracao',	                     100);
  Tela('TFormEvolucoes',           'Cadastro de Evolucoes',                                      120);
  Tela('TFormExamesTipos',         'Cadastro de Exames Tipos',	                                 120);
  Tela('TFormExercicios',          'Cadastro de Notas de Exercicios',	                           10);
  Tela('TFormFamilias',            'Cadastro de Familias',	                                     1);
  Tela('TFormFci',                 'Cadastro de Geracao de Arquivos FCI',	                       1);
  Tela('TFormFases',               'Cadastro de Fases',                                          4);
  Tela('TFormFeriados',            'Cadastro de Feriados',	                                     10);
  Tela('TFormFornecedores',        'Cadastro de Fornecedores',                                   100);
  Tela('TFormFornecedoresAnexos',  'Cadastro de Fornecedores - Anexo',	                         100);
  Tela('TFormForos',               'Cadastro de Foros',                                          115);
  Tela('TFormFrotas',              'Cadastro de Frotas',                                         110);
  Tela('TFormGnre',                'Cadastro de GNRE',	                                         2);
  Tela('TFormGrupos',              'Cadastro de Grupos',	                                       1);
  Tela('TFormHoras',               'Cadastro de Banco de Horas',	                               100);
  Tela('TFormIcms',                'Cadastro de ICMS',	                                         2);
  Tela('TFormImoveis',             'Cadastro de Imoveis', 	                                     112);
  Tela('TFormImoveisFotos',        'Cadastro de Imoveis - Fotos',	                               112);
  Tela('TFormImoveisTipos',        'Cadastro de Imoveis - Tipos',	                               112);
  Tela('TFormIpi',                 'Cadastro de IPI',	                                           2);
  Tela('TFormIss',                 'Cadastro de ISS',	                                           2);
  Tela('TFormLocacoes',            'Cadastro de Locacoes de Objetos',	                           9);
  Tela('TFormLocais',              'Cadastro de Locais de Trabalho',	                           100);
  Tela('TFormLogomarca',           'Cadastro de Logomarca',         	                           100);
  Tela('TFormLotes',               'Cadastro de Lotes',	                                         1);
  Tela('TFormMailings',            'Cadastro de Mailings',	                                     100);
  Tela('TFormMain',                'Tela Principal',	                                           100);
  Tela('TFormManifestacoes',       'Cadastro de Manifestacoes do Destinatario',	                 2);
  Tela('TFormMarcas',              'Cadastro de Marcas',	                                       1);
  Tela('TFormMarkups',             'Cadastro de Markups',	                                       1);
  Tela('TFormMatriculas',          'Cadastro de Matriculas',	                                   10);
  Tela('TFormMdfe',                'Cadastro de Manifesto de Documentos Eletronico',	           110);
  Tela('TFormMedicamentos',        'Cadastro de Medicamentos',	                                 120);
  Tela('TFormMedicoes',            'Cadastro de Medicoes',	                                     120);
  Tela('TFormMensalidades',        'Cadastro de Mensalidades',	                                 3);
  Tela('TFormMetas',               'Cadastro de Metas',	                                         100);
  Tela('TFormMetasConfig',         'Cadastro de Metas - Configuracao',	                         100);
  Tela('TFormMotivos',             'Cadastro de Motivos',	                                       100);
  Tela('TFormNaturezas',           'Cadastro de Naturezas de Operacao CFOP',	                   2);
  Tela('TFormNfce',                'Cadastro de Notas Fiscais de Consumidor Eletronicas',	       111);
  Tela('TFormNfe',                 'Cadastro de Notas Fiscais Eletronicas',	                     2);
  Tela('TFormNfeCCe',              'Cadastro de Notas Fiscais Eletronicas - Cartas de Correcao', 2);
  Tela('TFormNfeInutilizadas',     'Cadastro de Notas Fiscais Eletronicas - Inutilizacoes',	     2);
  Tela('TFormNfeItens',            'Cadastro de Notas Fiscais Eletronicas - Itens',	             2);
  Tela('TFormNfse',                'Cadastro de Notas Fiscais de Servico',	                     2);
  Tela('TFormNotas',               'Cadastro de Notas Fiscais',	                                 2);
  Tela('TFormNotasItens',          'Cadastro de Notas Fiscais - Itens',	                         2);
  Tela('TFormObjetos',             'Cadastro de Objetos',                                        9);
  Tela('TFormOdontogramas',        'Cadastro de Odontogramas',	                                 120);
  Tela('TFormOdontogramasOpcoes',  'Cadastro de Odontogramas - Opcoes',	                         120);
  Tela('TFormOpcionais',           'Cadastro de Opcionais',	                                     8);
  Tela('TFormPagar',               'Cadastro de Contas a Pagar',	                               3);
  Tela('TFormPagarBaixar',         'Cadastro de Contas a Pagar - Baixar',	                       3);
  Tela('TFormPiscofins',           'Cadastro de PIS/COFINS',	                                   2);
  Tela('TFormPontos',              'Cadastro de Pontos',	                                       100);
  Tela('TFormProcessos',           'Cadastro de Processos',	                                     115);
  Tela('TFormProcessosAnexos',     'Cadastro de Processos - Anexos',	                           115);
  Tela('TFormProcessosCustas',     'Cadastro de Processos - Custas',	                           115);
  Tela('TFormProcessosHistorico',  'Cadastro de Processos - Historicos',	                       115);
  Tela('TFormProcessosPartes',     'Cadastro de Processos - Partes',	                           115);
  Tela('TFormProducao',            'Cadastro de Ordem de Producao',	                             1);
  Tela('TFormProdutos',            'Cadastro de Produtos',	                                     1);
  Tela('TFormProdutosCodigos',     'Cadastro de Produtos - Codigos',	                           1);
  Tela('TFormProdutosComp',        'Cadastro de Produtos - Composicao',	                         1);
  Tela('TFormProdutosEtapas',      'Cadastro de Produtos - Etapas',	                             100);
  Tela('TFormProdutosFotos',       'Cadastro de Produtos - Fotos',	                             1);
  Tela('TFormProjetos',            'Cadastro de Projetos',	                                     4);
  Tela('TFormProjetosHistorico',   'Cadastro de Projetos - Historicos',	                         4);
  Tela('TFormProjetosTipos',       'Cadastro de Projetos - Tipos',	                             4);
  Tela('TFormPromissorias',        'Cadastro de Promissorias',	                                 3);
  Tela('TFormProntuarios',         'Cadastro de Prontuarios',	                                   120);
  Tela('TFormProntuariosArquivos', 'Cadastro de Prontuarios - Arquivos',	                       120);
  Tela('TFormReceber',             'Cadastro de Contas a Receber',	                             3);
  Tela('TFormReceberBaixar',       'Cadastro de Contas a Receber - Baixar',	                     3);
  Tela('TFormReceberItens',        'Cadastro de Contas a Receber - Valor Acessorias',	           3);
  Tela('TFormReceitas',            'Cadastro de Receitas',	                                     3);
  Tela('TFormReceituarios',        'Cadastro de Receituarios',	                                 120);
  Tela('TFormRecibos',             'Cadastro de Recibos',	                                       3);
  Tela('TFormRegrasFiscais',       'Cadastro de Regras Fiscais',	                               2);
  Tela('TFormSeguros',             'Cadastro de Seguros',	                                       125);
  Tela('TFormSegurosTipos',        'Cadastro de Seguros - Tipos',	                               125);
  Tela('TFormServicos',            'Cadastro de Ordens de Servico',	                             4);
  Tela('TFormServicosCheck',       'Cadastro de Ordens de Servico - Checklist',	                 4);
  Tela('TFormServicosHoras',       'Cadastro de Ordens de Servico - Horas',	                     4);
  Tela('TFormServicosItens',       'Cadastro de Ordens de Servico - Itens',	                     4);
  Tela('TFormTaxas',               'Cadastro de Taxas',	                                         100);
  Tela('TFormTeleVendas',          'Cadastro de Tele-Vendas',	                                   2);
  Tela('TFormTeleVendasAgenda',    'Cadastro de Tele-Vendas - Agenda',	                         2);
  Tela('TFormTurmas',              'Cadastro de Turmas',	                                       10);
  Tela('TFormTurmasAlunos',        'Cadastro de Turmas - Matriculas na turma',	                 10);
  Tela('TFormUnidades',            'Cadastro de Unidades de Medida',	                           1);
  Tela('TFormUsuarios',            'Cadastro de Usuarios',	                                     100);
  Tela('TFormVeiculos',            'Cadastro de Veiculos',	                                     8);
  Tela('TFormVeiculosCliente',     'Cadastro de Veiculos de Clientes',	                         8);
  Tela('TFormVeiculosVenda',       'Cadastro de Veiculos a Venda',	                             8);
  Tela('TFormVendas',              'Cadastro de Pedidos de Vendas',	                             2);
  Tela('TFormVendasItens',         'Cadastro de Pedidos de Vendas - Itens',	                     2);
  Tela('TFormVendedores',          'Cadastro de Vendedores',	                                   100);
  Tela('TFormVendedoresAnexos',    'Cadastro de Vendedores - Anexos',	                           100);
  Tela('TFormVendedoresHist',      'Cadastro de Vendedores - Historicos',                        100);
  Tela('TFormVendedoresHistTipos', 'Cadastro de Vendedores - Historicos Tipos',	                 100);
  Tela('TFormVias',                'Cadastro de Vias de Contato',	                               100);
  Tela('TFormZapInstancias',       'Cadastro de Zap - Instancias',	                             100);
  Screen.Cursor:=crDefault;
end;

end.

