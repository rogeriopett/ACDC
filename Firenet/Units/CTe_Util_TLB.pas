unit CTe_Util_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 26/11/2026 07:12:45 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Runtime\ACDC\Firenet\CTe_Util.tlb (1)
// LIBID: {C54F6D8C-FF7E-4568-B457-6B8FCBCEF438}
// LCID: 0
// Helpfile:
// HelpString: Biblioteca de utilidades do CT-e - vers�o 5.03 (5.0.3.0)
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'mod' of CTe_Util_Interface.infNF_2G changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.identificador300 changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideVFP300 changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeOS changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeOSVFP changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.infCteOSSub_refNF changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.infCteSub_refNF300 changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideGTVe changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeSimp changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.identificadorRT changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeSimpRT changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideVFPRT changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeOSRT changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeOSVFPRT changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.identificadorRTv100 changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeSimpRTv100 changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeOSRTv100 changed to 'mod_'
//   Hint: Parameter 'mod' of CTe_Util_Interface.ideCTeSimpRTVFP changed to 'mod_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, System_TLB, Vcl.Graphics, Vcl.OleServer,
Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CTe_UtilMajorVersion = 5;
  CTe_UtilMinorVersion = 0;

  LIBID_CTe_Util: TGUID = '{C54F6D8C-FF7E-4568-B457-6B8FCBCEF438}';

  IID_CTe_Util_Interface: TGUID = '{4B11037F-2F15-4558-A7B7-BA46801844A7}';
  DIID_CTe_Util_Events: TGUID = '{2C49EADB-6764-4F8D-982F-A6591DB65612}';
  CLASS_Util: TGUID = '{25567DA7-17E9-46D5-BFA8-8AE4CC7DA6E1}';
  IID__QREncoderTables: TGUID = '{03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}';
  IID__QREncoder: TGUID = '{A1447CA0-E1BC-3250-9EA3-1A8649418D87}';
  IID__QRCodeEncoder: TGUID = '{1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}';
  IID__MDFeRecepcaoEvento: TGUID = '{7B54CEBA-6D0A-33B3-911D-1F038B65AC95}';
  IID__mdfeCabecMsg: TGUID = '{B680DF68-36EF-3DE0-A802-A48AB4E25686}';
  IID__mdfeRecepcaoEventoCompletedEventHandler: TGUID = '{7B0CC6FA-D7F8-34DA-B751-56BCCAD56907}';
  IID__mdfeRecepcaoEventoCompletedEventArgs: TGUID = '{FC2A0EE6-1770-3F7A-8CEC-F750F8BBF658}';
  IID__CteStatusServico: TGUID = '{6A952BD0-43A0-3A50-9619-F16301F2E1FA}';
  IID__CTe_Util_cteStatusServicoCT_cteCabecMsg: TGUID = '{847DEFCB-3AC3-399C-BD03-504C0F141220}';
  IID__cteStatusServicoCTCompletedEventHandler: TGUID = '{59D057C1-370C-3F25-B217-7A84DB8E85DB}';
  IID__cteStatusServicoCTCompletedEventArgs: TGUID = '{505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}';
  IID__CteRetRecepcao: TGUID = '{65507007-2035-30A1-BFE8-F631A0E220F2}';
  IID__CTe_Util_cteRetRecepcaoLote_cteCabecMsg: TGUID = '{BAB213D3-5D20-3233-A7E8-C39F8180FED5}';
  IID__cteRetRecepcaoCompletedEventHandler: TGUID = '{901D1FF9-7D35-3B68-8966-CABEFBDADCA8}';
  IID__cteRetRecepcaoCompletedEventArgs: TGUID = '{858F6CC8-BC36-356A-AF92-04A9F957D769}';
  IID__CteRecepcaoSinc: TGUID = '{A2E51C1A-034A-3847-8E28-8C8A20A16A95}';
  IID__cteRecepcaoSincCompletedEventHandler: TGUID = '{4CF0878D-C2C2-30BC-B82F-45684EA895C7}';
  IID__cteRecepcaoSincCompletedEventArgs: TGUID = '{08AC3581-4CCD-3730-BA72-C61E1D7C8681}';
  IID__CteRecepcaoOS: TGUID = '{2F0A7796-6E0E-364B-B819-BCB868CD8269}';
  IID__CTe_Util_cteRecepcaoOS_cteCabecMsg: TGUID = '{63A1F467-E5AA-3EF5-B81B-47D93720AACF}';
  IID__cteRecepcaoOSCompletedEventHandler: TGUID = '{59EAF3B4-8EF2-3756-A22E-455047913FD6}';
  IID__cteRecepcaoOSCompletedEventArgs: TGUID = '{11EADA4E-50B0-3414-8264-C36B94087502}';
  IID__CteRecepcao: TGUID = '{F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}';
  IID__CTe_Util_cteRecepcaoLote_cteCabecMsg: TGUID = '{6DB8CE00-960E-334C-A60C-2E928442E3FD}';
  IID__cteRecepcaoLoteCompletedEventHandler: TGUID = '{71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}';
  IID__cteRecepcaoLoteCompletedEventArgs: TGUID = '{45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}';
  IID__CTeRecepcaoGTVe: TGUID = '{BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}';
  IID__cteRecepcaoGTVeCompletedEventHandler: TGUID = '{4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}';
  IID__cteRecepcaoGTVeCompletedEventArgs: TGUID = '{E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}';
  IID__CteRecepcaoEvento: TGUID = '{A7D94986-710B-362A-9265-88D9EEF55BD3}';
  IID__CTe_Util_cteRecepcaoEvento_cteCabecMsg: TGUID = '{38DFE93D-4280-3B6C-B097-9CA7E00C5257}';
  IID__cteRecepcaoEventoCompletedEventHandler: TGUID = '{B5AD9F3A-9050-3852-9205-45CBDFFF25CD}';
  IID__cteRecepcaoEventoCompletedEventArgs: TGUID = '{93575C24-56C5-38FD-B97C-4AB177BBA901}';
  IID__CteInutilizacao: TGUID = '{56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}';
  IID__CTe_Util_cteInutilizacaoCT_cteCabecMsg: TGUID = '{4E1F52E5-5867-3780-A112-9D571FC5DC93}';
  IID__cteInutilizacaoCTCompletedEventHandler: TGUID = '{E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}';
  IID__cteInutilizacaoCTCompletedEventArgs: TGUID = '{3247FA06-2826-3461-A438-45216B23B312}';
  IID__CTeDistribuicaoDFe: TGUID = '{7184C361-EC57-31B9-B82A-09F0FD03E017}';
  IID__cteDistDFeInteresseCompletedEventHandler: TGUID = '{57C9BADF-EBD8-36CD-BC72-067086BACB78}';
  IID__cteDistDFeInteresseCompletedEventArgs: TGUID = '{76DB3240-4D3D-3AC7-B1AD-997200D83830}';
  IID__CteConsulta: TGUID = '{44357119-80F8-349D-8DF6-8C1F53DA92D2}';
  IID__CTe_Util_cteConsultaCT_cteCabecMsg: TGUID = '{4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}';
  IID__cteConsultaCTCompletedEventHandler: TGUID = '{F5F0BB47-7B02-39EC-A9BD-E5486D594103}';
  IID__cteConsultaCTCompletedEventArgs: TGUID = '{632B4661-5E5D-3322-967D-508DC95484E1}';
  IID__CteCancelamento: TGUID = '{D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}';
  IID__CTe_Util_cteCancelamentoCT_cteCabecMsg: TGUID = '{0B27A478-3330-33B1-B3B9-796BEBDEB03E}';
  IID__cteCancelamentoCTCompletedEventHandler: TGUID = '{105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}';
  IID__cteCancelamentoCTCompletedEventArgs: TGUID = '{21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}';
  IID__CleCadastro: TGUID = '{DC271E4C-CD2B-34F4-97D4-35B28D211156}';
  IID__cleCadastroLote: TGUID = '{597DCBFC-3975-3E79-8EF2-8D2D397DD491}';
  IID__cleCadastroLoteResponse: TGUID = '{5EDD54AD-6D4A-33FE-84DF-808131515507}';
  IID__cleCadastroLoteCompletedEventHandler: TGUID = '{2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}';
  IID__cleCadastroLoteCompletedEventArgs: TGUID = '{4E8011FA-2284-3F29-97B8-0C439807FCDD}';
  CLASS_QREncoderTables: TGUID = '{E5878D87-5B14-37D5-94E4-C80E01B32369}';
  CLASS_QREncoder: TGUID = '{540A00C7-52B0-3575-AA84-AD0F621CAA35}';
  CLASS_QRCodeEncoder: TGUID = '{B237CD21-2C34-384D-8786-1515D8F460C7}';
  CLASS_MDFeRecepcaoEvento: TGUID = '{8230E3CE-0783-3B56-A10B-CAF0021B52FE}';
  CLASS_mdfeCabecMsg: TGUID = '{507D000B-CA2B-34EA-A006-C8AFEF02D5D4}';
  CLASS_mdfeRecepcaoEventoCompletedEventHandler: TGUID = '{5570500C-1EA8-373B-8578-2EF870AA6280}';
  CLASS_mdfeRecepcaoEventoCompletedEventArgs: TGUID = '{E5386E48-3B67-3D0B-B83D-4CA553DC6862}';
  CLASS_CteStatusServico: TGUID = '{F8568483-A952-3C05-B5C7-55736AA60B1E}';
  CLASS_CTe_Util_cteStatusServicoCT_cteCabecMsg: TGUID = '{F07B4727-4447-3B6A-BDFD-D6E3BD8EB226}';
  CLASS_cteStatusServicoCTCompletedEventHandler: TGUID = '{E0226F49-BA3F-370D-A2BC-5570E65DBF87}';
  CLASS_cteStatusServicoCTCompletedEventArgs: TGUID = '{41F07DA5-831F-3054-A89D-245964C02C98}';
  CLASS_CteRetRecepcao: TGUID = '{17BBCC01-0EB0-3F6A-A502-36EE646A7B9A}';
  CLASS_CTe_Util_cteRetRecepcaoLote_cteCabecMsg: TGUID = '{B23407F0-9853-32FF-B1B1-5D8FDF46E99C}';
  CLASS_cteRetRecepcaoCompletedEventHandler: TGUID = '{C67FA940-EBC0-3542-BF90-6B6CCFF68042}';
  CLASS_cteRetRecepcaoCompletedEventArgs: TGUID = '{E2BE9E95-6747-357A-A994-580571128F75}';
  CLASS_CteRecepcaoSinc: TGUID = '{783EBC12-5A50-3150-A6DD-7E7BEBC03E52}';
  CLASS_cteRecepcaoSincCompletedEventHandler: TGUID = '{F135EF42-4FF3-3079-8AC0-2A16034168AF}';
  CLASS_cteRecepcaoSincCompletedEventArgs: TGUID = '{56A39FE3-8A63-3460-83DC-F92F3A0D8D04}';
  CLASS_CteRecepcaoOS: TGUID = '{A8A24827-1588-3955-873B-42E3B9BAFCC2}';
  CLASS_CTe_Util_cteRecepcaoOS_cteCabecMsg: TGUID = '{CDC0128B-0DF8-3350-A54A-58CF40EE0F92}';
  CLASS_cteRecepcaoOSCompletedEventHandler: TGUID = '{B154A92E-8DD3-3EF8-BFB1-01DA254E9E21}';
  CLASS_cteRecepcaoOSCompletedEventArgs: TGUID = '{255B95D5-373C-35BB-A8C6-D453AF51FA87}';
  CLASS_CteRecepcao: TGUID = '{BFE19888-0A2F-31C9-B1BC-D90B7BCD89C8}';
  CLASS_CTe_Util_cteRecepcaoLote_cteCabecMsg: TGUID = '{2469F668-F02C-3C4A-876A-8139631B3AEA}';
  CLASS_cteRecepcaoLoteCompletedEventHandler: TGUID = '{6CEE8BDF-95A1-3AB2-AF1E-CAC7333ED625}';
  CLASS_cteRecepcaoLoteCompletedEventArgs: TGUID = '{34161BC0-553B-3F72-91B8-534866B7611F}';
  CLASS_CTeRecepcaoGTVe: TGUID = '{C4566617-4B52-3CEF-85D3-13D4FEE4E990}';
  CLASS_cteRecepcaoGTVeCompletedEventHandler: TGUID = '{944A6FA1-D68C-3FF9-AA05-35746FD67C6B}';
  CLASS_cteRecepcaoGTVeCompletedEventArgs: TGUID = '{496B3669-D250-35B4-B2F9-51DA35749623}';
  CLASS_CteRecepcaoEvento: TGUID = '{8864775D-6350-31AC-BE48-FB77F2574B5D}';
  CLASS_CTe_Util_cteRecepcaoEvento_cteCabecMsg: TGUID = '{483D84F2-9FA9-3836-9AA8-5376A9FC655D}';
  CLASS_cteRecepcaoEventoCompletedEventHandler: TGUID = '{D13718E3-0687-3777-ABE7-77AE54311437}';
  CLASS_cteRecepcaoEventoCompletedEventArgs: TGUID = '{1B99CED4-B385-3C01-AB29-A926233A08BB}';
  CLASS_CteInutilizacao: TGUID = '{58476D83-8A02-314D-8BCB-3FFA24EE9524}';
  CLASS_CTe_Util_cteInutilizacaoCT_cteCabecMsg: TGUID = '{42845FEC-3F12-39DD-9A80-7D02E2C3FEDE}';
  CLASS_cteInutilizacaoCTCompletedEventHandler: TGUID = '{3AE39580-81EF-3877-897C-7C7BF8666CB9}';
  CLASS_cteInutilizacaoCTCompletedEventArgs: TGUID = '{2605EE65-4D45-31A4-A95C-3CA37786215B}';
  CLASS_CTeDistribuicaoDFe: TGUID = '{2413592E-7F30-3D9F-B118-A55113E321C0}';
  CLASS_cteDistDFeInteresseCompletedEventHandler: TGUID = '{A9E82BD5-790A-35E6-8CD0-A6AEAAA7D914}';
  CLASS_cteDistDFeInteresseCompletedEventArgs: TGUID = '{40DB2814-D654-33BE-96B0-0DECA9706784}';
  CLASS_CteConsulta: TGUID = '{12760DF4-2E65-32F0-9289-42761B39D485}';
  CLASS_CTe_Util_cteConsultaCT_cteCabecMsg: TGUID = '{9DAD9A5F-7E60-3A64-BC10-8EFDF6374162}';
  CLASS_cteConsultaCTCompletedEventHandler: TGUID = '{2C0CBD4D-0518-310E-BD51-506486A953C3}';
  CLASS_cteConsultaCTCompletedEventArgs: TGUID = '{BFE7C5C9-59E2-3EB0-A1B8-AD163839FE32}';
  CLASS_CteCancelamento: TGUID = '{75B89893-BA31-3889-8FE5-6981AC066D21}';
  CLASS_CTe_Util_cteCancelamentoCT_cteCabecMsg: TGUID = '{6BE6E640-BC44-3EB4-A43F-3C753172DB28}';
  CLASS_cteCancelamentoCTCompletedEventHandler: TGUID = '{E3E1D9F8-C3C6-361C-9576-18E3FB17A2D7}';
  CLASS_cteCancelamentoCTCompletedEventArgs: TGUID = '{CE2A040E-5E28-36FF-AEF3-6DA01973C1DC}';
  CLASS_CleCadastro: TGUID = '{58AF7736-DF00-3EF8-A0DA-EFE756AFA808}';
  CLASS_cleCadastroLote: TGUID = '{1716A5D5-F691-3915-A7CC-B0E2ECC12126}';
  CLASS_cleCadastroLoteResponse: TGUID = '{C5A16F2F-9918-36FE-B380-DC2DB38D411C}';
  CLASS_cleCadastroLoteCompletedEventHandler: TGUID = '{040BEBA0-1693-3C19-915F-85F97360A3F0}';
  CLASS_cleCadastroLoteCompletedEventArgs: TGUID = '{21628C2C-266E-3072-B430-F6DBED0F76D7}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library
// *********************************************************************//
// Constants for enum ErrorCorrection
type
  ErrorCorrection = TOleEnum;
const
  ErrorCorrection_L = $00000000;
  ErrorCorrection_M = $00000001;
  ErrorCorrection_Q = $00000002;
  ErrorCorrection_H = $00000003;

// Constants for enum EncodingMode
type
  EncodingMode = TOleEnum;
const
  EncodingMode_Terminator = $00000000;
  EncodingMode_Numeric = $00000001;
  EncodingMode_AlphaNumeric = $00000002;
  EncodingMode_Append = $00000003;
  EncodingMode_Byte = $00000004;
  EncodingMode_FNC1First = $00000005;
  EncodingMode_Unknown6 = $00000006;
  EncodingMode_ECI = $00000007;
  EncodingMode_Kanji = $00000008;
  EncodingMode_FNC1Second = $00000009;
  EncodingMode_Unknown10 = $0000000A;
  EncodingMode_Unknown11 = $0000000B;
  EncodingMode_Unknown12 = $0000000C;
  EncodingMode_Unknown13 = $0000000D;
  EncodingMode_Unknown14 = $0000000E;
  EncodingMode_Unknown15 = $0000000F;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  CTe_Util_Interface = interface;
  CTe_Util_InterfaceDisp = dispinterface;
  CTe_Util_Events = dispinterface;
  _QREncoderTables = interface;
  _QREncoderTablesDisp = dispinterface;
  _QREncoder = interface;
  _QREncoderDisp = dispinterface;
  _QRCodeEncoder = interface;
  _QRCodeEncoderDisp = dispinterface;
  _MDFeRecepcaoEvento = interface;
  _MDFeRecepcaoEventoDisp = dispinterface;
  _mdfeCabecMsg = interface;
  _mdfeCabecMsgDisp = dispinterface;
  _mdfeRecepcaoEventoCompletedEventHandler = interface;
  _mdfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface;
  _mdfeRecepcaoEventoCompletedEventArgs = interface;
  _mdfeRecepcaoEventoCompletedEventArgsDisp = dispinterface;
  _CteStatusServico = interface;
  _CteStatusServicoDisp = dispinterface;
  _CTe_Util_cteStatusServicoCT_cteCabecMsg = interface;
  _CTe_Util_cteStatusServicoCT_cteCabecMsgDisp = dispinterface;
  _cteStatusServicoCTCompletedEventHandler = interface;
  _cteStatusServicoCTCompletedEventHandlerDisp = dispinterface;
  _cteStatusServicoCTCompletedEventArgs = interface;
  _cteStatusServicoCTCompletedEventArgsDisp = dispinterface;
  _CteRetRecepcao = interface;
  _CteRetRecepcaoDisp = dispinterface;
  _CTe_Util_cteRetRecepcaoLote_cteCabecMsg = interface;
  _CTe_Util_cteRetRecepcaoLote_cteCabecMsgDisp = dispinterface;
  _cteRetRecepcaoCompletedEventHandler = interface;
  _cteRetRecepcaoCompletedEventHandlerDisp = dispinterface;
  _cteRetRecepcaoCompletedEventArgs = interface;
  _cteRetRecepcaoCompletedEventArgsDisp = dispinterface;
  _CteRecepcaoSinc = interface;
  _CteRecepcaoSincDisp = dispinterface;
  _cteRecepcaoSincCompletedEventHandler = interface;
  _cteRecepcaoSincCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoSincCompletedEventArgs = interface;
  _cteRecepcaoSincCompletedEventArgsDisp = dispinterface;
  _CteRecepcaoOS = interface;
  _CteRecepcaoOSDisp = dispinterface;
  _CTe_Util_cteRecepcaoOS_cteCabecMsg = interface;
  _CTe_Util_cteRecepcaoOS_cteCabecMsgDisp = dispinterface;
  _cteRecepcaoOSCompletedEventHandler = interface;
  _cteRecepcaoOSCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoOSCompletedEventArgs = interface;
  _cteRecepcaoOSCompletedEventArgsDisp = dispinterface;
  _CteRecepcao = interface;
  _CteRecepcaoDisp = dispinterface;
  _CTe_Util_cteRecepcaoLote_cteCabecMsg = interface;
  _CTe_Util_cteRecepcaoLote_cteCabecMsgDisp = dispinterface;
  _cteRecepcaoLoteCompletedEventHandler = interface;
  _cteRecepcaoLoteCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoLoteCompletedEventArgs = interface;
  _cteRecepcaoLoteCompletedEventArgsDisp = dispinterface;
  _CTeRecepcaoGTVe = interface;
  _CTeRecepcaoGTVeDisp = dispinterface;
  _cteRecepcaoGTVeCompletedEventHandler = interface;
  _cteRecepcaoGTVeCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoGTVeCompletedEventArgs = interface;
  _cteRecepcaoGTVeCompletedEventArgsDisp = dispinterface;
  _CteRecepcaoEvento = interface;
  _CteRecepcaoEventoDisp = dispinterface;
  _CTe_Util_cteRecepcaoEvento_cteCabecMsg = interface;
  _CTe_Util_cteRecepcaoEvento_cteCabecMsgDisp = dispinterface;
  _cteRecepcaoEventoCompletedEventHandler = interface;
  _cteRecepcaoEventoCompletedEventHandlerDisp = dispinterface;
  _cteRecepcaoEventoCompletedEventArgs = interface;
  _cteRecepcaoEventoCompletedEventArgsDisp = dispinterface;
  _CteInutilizacao = interface;
  _CteInutilizacaoDisp = dispinterface;
  _CTe_Util_cteInutilizacaoCT_cteCabecMsg = interface;
  _CTe_Util_cteInutilizacaoCT_cteCabecMsgDisp = dispinterface;
  _cteInutilizacaoCTCompletedEventHandler = interface;
  _cteInutilizacaoCTCompletedEventHandlerDisp = dispinterface;
  _cteInutilizacaoCTCompletedEventArgs = interface;
  _cteInutilizacaoCTCompletedEventArgsDisp = dispinterface;
  _CTeDistribuicaoDFe = interface;
  _CTeDistribuicaoDFeDisp = dispinterface;
  _cteDistDFeInteresseCompletedEventHandler = interface;
  _cteDistDFeInteresseCompletedEventHandlerDisp = dispinterface;
  _cteDistDFeInteresseCompletedEventArgs = interface;
  _cteDistDFeInteresseCompletedEventArgsDisp = dispinterface;
  _CteConsulta = interface;
  _CteConsultaDisp = dispinterface;
  _CTe_Util_cteConsultaCT_cteCabecMsg = interface;
  _CTe_Util_cteConsultaCT_cteCabecMsgDisp = dispinterface;
  _cteConsultaCTCompletedEventHandler = interface;
  _cteConsultaCTCompletedEventHandlerDisp = dispinterface;
  _cteConsultaCTCompletedEventArgs = interface;
  _cteConsultaCTCompletedEventArgsDisp = dispinterface;
  _CteCancelamento = interface;
  _CteCancelamentoDisp = dispinterface;
  _CTe_Util_cteCancelamentoCT_cteCabecMsg = interface;
  _CTe_Util_cteCancelamentoCT_cteCabecMsgDisp = dispinterface;
  _cteCancelamentoCTCompletedEventHandler = interface;
  _cteCancelamentoCTCompletedEventHandlerDisp = dispinterface;
  _cteCancelamentoCTCompletedEventArgs = interface;
  _cteCancelamentoCTCompletedEventArgsDisp = dispinterface;
  _CleCadastro = interface;
  _CleCadastroDisp = dispinterface;
  _cleCadastroLote = interface;
  _cleCadastroLoteDisp = dispinterface;
  _cleCadastroLoteResponse = interface;
  _cleCadastroLoteResponseDisp = dispinterface;
  _cleCadastroLoteCompletedEventHandler = interface;
  _cleCadastroLoteCompletedEventHandlerDisp = dispinterface;
  _cleCadastroLoteCompletedEventArgs = interface;
  _cleCadastroLoteCompletedEventArgsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  Util = CTe_Util_Interface;
  QREncoderTables = _QREncoderTables;
  QREncoder = _QREncoder;
  QRCodeEncoder = _QRCodeEncoder;
  MDFeRecepcaoEvento = _MDFeRecepcaoEvento;
  mdfeCabecMsg = _mdfeCabecMsg;
  mdfeRecepcaoEventoCompletedEventHandler = _mdfeRecepcaoEventoCompletedEventHandler;
  mdfeRecepcaoEventoCompletedEventArgs = _mdfeRecepcaoEventoCompletedEventArgs;
  CteStatusServico = _CteStatusServico;
  CTe_Util_cteStatusServicoCT_cteCabecMsg = _CTe_Util_cteStatusServicoCT_cteCabecMsg;
  cteStatusServicoCTCompletedEventHandler = _cteStatusServicoCTCompletedEventHandler;
  cteStatusServicoCTCompletedEventArgs = _cteStatusServicoCTCompletedEventArgs;
  CteRetRecepcao = _CteRetRecepcao;
  CTe_Util_cteRetRecepcaoLote_cteCabecMsg = _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
  cteRetRecepcaoCompletedEventHandler = _cteRetRecepcaoCompletedEventHandler;
  cteRetRecepcaoCompletedEventArgs = _cteRetRecepcaoCompletedEventArgs;
  CteRecepcaoSinc = _CteRecepcaoSinc;
  cteRecepcaoSincCompletedEventHandler = _cteRecepcaoSincCompletedEventHandler;
  cteRecepcaoSincCompletedEventArgs = _cteRecepcaoSincCompletedEventArgs;
  CteRecepcaoOS = _CteRecepcaoOS;
  CTe_Util_cteRecepcaoOS_cteCabecMsg = _CTe_Util_cteRecepcaoOS_cteCabecMsg;
  cteRecepcaoOSCompletedEventHandler = _cteRecepcaoOSCompletedEventHandler;
  cteRecepcaoOSCompletedEventArgs = _cteRecepcaoOSCompletedEventArgs;
  CteRecepcao = _CteRecepcao;
  CTe_Util_cteRecepcaoLote_cteCabecMsg = _CTe_Util_cteRecepcaoLote_cteCabecMsg;
  cteRecepcaoLoteCompletedEventHandler = _cteRecepcaoLoteCompletedEventHandler;
  cteRecepcaoLoteCompletedEventArgs = _cteRecepcaoLoteCompletedEventArgs;
  CTeRecepcaoGTVe = _CTeRecepcaoGTVe;
  cteRecepcaoGTVeCompletedEventHandler = _cteRecepcaoGTVeCompletedEventHandler;
  cteRecepcaoGTVeCompletedEventArgs = _cteRecepcaoGTVeCompletedEventArgs;
  CteRecepcaoEvento = _CteRecepcaoEvento;
  CTe_Util_cteRecepcaoEvento_cteCabecMsg = _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
  cteRecepcaoEventoCompletedEventHandler = _cteRecepcaoEventoCompletedEventHandler;
  cteRecepcaoEventoCompletedEventArgs = _cteRecepcaoEventoCompletedEventArgs;
  CteInutilizacao = _CteInutilizacao;
  CTe_Util_cteInutilizacaoCT_cteCabecMsg = _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
  cteInutilizacaoCTCompletedEventHandler = _cteInutilizacaoCTCompletedEventHandler;
  cteInutilizacaoCTCompletedEventArgs = _cteInutilizacaoCTCompletedEventArgs;
  CTeDistribuicaoDFe = _CTeDistribuicaoDFe;
  cteDistDFeInteresseCompletedEventHandler = _cteDistDFeInteresseCompletedEventHandler;
  cteDistDFeInteresseCompletedEventArgs = _cteDistDFeInteresseCompletedEventArgs;
  CteConsulta = _CteConsulta;
  CTe_Util_cteConsultaCT_cteCabecMsg = _CTe_Util_cteConsultaCT_cteCabecMsg;
  cteConsultaCTCompletedEventHandler = _cteConsultaCTCompletedEventHandler;
  cteConsultaCTCompletedEventArgs = _cteConsultaCTCompletedEventArgs;
  CteCancelamento = _CteCancelamento;
  CTe_Util_cteCancelamentoCT_cteCabecMsg = _CTe_Util_cteCancelamentoCT_cteCabecMsg;
  cteCancelamentoCTCompletedEventHandler = _cteCancelamentoCTCompletedEventHandler;
  cteCancelamentoCTCompletedEventArgs = _cteCancelamentoCTCompletedEventArgs;
  CleCadastro = _CleCadastro;
  cleCadastroLote = _cleCadastroLote;
  cleCadastroLoteResponse = _cleCadastroLoteResponse;
  cleCadastroLoteCompletedEventHandler = _cleCadastroLoteCompletedEventHandler;
  cleCadastroLoteCompletedEventArgs = _cleCadastroLoteCompletedEventArgs;


// *********************************************************************//
// Interface: CTe_Util_Interface
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B11037F-2F15-4558-A7B7-BA46801844A7}
// *********************************************************************//
  CTe_Util_Interface = interface(IDispatch)
    ['{4B11037F-2F15-4558-A7B7-BA46801844A7}']
    function Versao: WideString; safecall;
    function Assinar(const XMLString: WideString; const RefUri: WideString; const Nome: WideString;
                     out XMLAssinado: WideString; out msgResultado: WideString): Integer; safecall;
    function PegaNomeCertificado(var Nome: WideString; out msgResultado: WideString): Integer; safecall;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString;
                                  out Titular: WideString; out CNPJ: WideString;
                                  out NroSerie: WideString; out Emissor: WideString;
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; safecall;
    function CriaChaveCTe(const cUF: WideString; const Ano: WideString; const Mes: WideString;
                          const CNPJ: WideString; const modelo: WideString;
                          const serie: WideString; const numero: WideString;
                          const codigoSeguranca: WideString; out msgResultado: WideString;
                          out cCT: WideString; out cDV: WideString; out chaveCTe: WideString): Integer; safecall;
    function ValidaXML(const XML: WideString; tipoXML: Integer; out msgResultado: WideString;
                       out qtdeErros: Integer; out erroXML: WideString): Integer; safecall;
    function ConsultaStatus(const siglaWS: WideString; const siglaUF: WideString;
                            tipoAmbiente: Integer; const nomeCertificado: WideString;
                            const Versao: WideString; out msgDados: WideString;
                            out msgRetWS: WideString; out msgResultado: WideString;
                            const proxy: WideString; const usuario: WideString;
                            const senha: WideString): Integer; safecall;
    function EnviaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       var msgDados: WideString; out msgRetWS: WideString;
                       out msgResultado: WideString; const proxy: WideString;
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; safecall;
    function BuscaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       out msgDados: WideString; out msgRetWS: WideString;
                       out msgResultado: WideString; const nroRecibo: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; safecall;
    function ConsultaCT(const siglaWS: WideString; const siglaUF: WideString;
                        tipoAmbiente: Integer; const nomeCertificado: WideString;
                        const Versao: WideString; out msgDados: WideString;
                        out msgRetWS: WideString; out msgResultado: WideString;
                        const chaveCTe: WideString; const proxy: WideString;
                        const usuario: WideString; const senha: WideString): Integer; safecall;
    function CancelaCT(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       out msgDados: WideString; out msgRetWS: WideString;
                       out msgResultado: WideString; out procCanc: WideString;
                       const chaveCTe: WideString; const nProtocolo: WideString;
                       const justificativa: WideString; const proxy: WideString;
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; safecall;
    function InutilizaNroCT(const siglaWS: WideString; const siglaUF: WideString;
                            tipoAmbiente: Integer; const nomeCertificado: WideString;
                            const Versao: WideString; out msgDados: WideString;
                            out msgRetWS: WideString; out msgResultado: WideString;
                            out procInut: WideString; const cUF: WideString; const Ano: WideString;
                            const CNPJ: WideString; const modelo: WideString;
                            const serie: WideString; const nroCTeInicial: WideString;
                            const nroCTeFinal: WideString; const justificativa: WideString;
                            const proxy: WideString; const usuario: WideString;
                            const senha: WideString; const licenca: WideString): Integer; safecall;
    function EnviaCTe(const siglaWS: WideString; var CTe: WideString; out nroRecibo: WideString;
                      const nomeCertificado: WideString; const Versao: WideString;
                      out msgDados: WideString; out msgRetWS: WideString;
                      out msgResultado: WideString; out CTeAssinado: WideString;
                      const proxy: WideString; const usuario: WideString; const senha: WideString;
                      const licenca: WideString): Integer; safecall;
    function BuscaCTe(const siglaWS: WideString; tipoAmbiente: Integer; const siglaUF: WideString;
                      var CTeAssinado: WideString; var nroRecibo: WideString;
                      out procCTe: WideString; out nroProtocolo: WideString;
                      out dAutorizacao: WideString; const nomeCertificado: WideString;
                      const Versao: WideString; out msgDados: WideString; out msgRetWS: WideString;
                      out msgResultado: WideString; const proxy: WideString;
                      const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; safecall;
    function ConsultaCad2G(const siglaUF: WideString; tipoAmbiente: Integer;
                           const nomeCertificado: WideString; const Versao: WideString;
                           out msgDados: WideString; out msgRetWS: WideString;
                           out msgResultado: WideString; const tpArgumento: WideString;
                           const argumento: WideString; const proxy: WideString;
                           const usuario: WideString; const senha: WideString): Integer; safecall;
    function EnviaCLe(tipoAmbiente: Integer; const nomeCertificado: WideString;
                      out msgCabec: WideString; var msgDados: WideString; out msgRetWS: WideString;
                      out msgResultado: WideString; out chvCLe: WideString;
                      const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; safecall;
    function CriaChaveCTeNovo(const cUF: WideString; const Ano: WideString; const Mes: WideString;
                              const CNPJ: WideString; const modelo: WideString;
                              const serie: WideString; const numero: WideString;
                              const tpEmis: WideString; const codigoSeguranca: WideString;
                              out msgResultado: WideString; out cCT: WideString;
                              out cDV: WideString; out chaveCTe: WideString): Integer; safecall;
    function CriaProcCTe(const siglaWS: WideString; var CTeAssinada: WideString;
                         out protocolo: WideString; out retCancCTe: WideString;
                         out resultado: Integer; const nomeCertificado: WideString;
                         out msgResultado: WideString; const proxy: WideString;
                         const usuario: WideString; const senha: WideString): WideString; safecall;
    function CriaProcCancCTe(const siglaWS: WideString; var cancCTe: WideString;
                             out protocolo: WideString; out retCancCTe: WideString;
                             out resultado: Integer; const nomeCertificado: WideString;
                             out msgResultado: WideString; const proxy: WideString;
                             const usuario: WideString; const senha: WideString): WideString; safecall;
    function EnvEmail(const emailRemetente: WideString; const nomeRemetente: WideString;
                      const emailDestinatario: WideString; const emailBcc: WideString;
                      const assunto: WideString; const mensagem: WideString;
                      const arquivos: WideString; const smtpCliente: WideString;
                      const smtpPorta: WideString; const smtpSSL: WideString;
                      const smtpUsuario: WideString; const smtpSenha: WideString;
                      const HTML: WideString; const confirmacao: WideString;
                      out msgResultado: WideString): Integer; safecall;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer;
                       out msgResultado: WideString): WideString; safecall;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer;
                                 out msgResultado: WideString): WideString; safecall;
    function LeArquivoANSI(const nomeArquivo: WideString; out cResultado: Integer;
                           out msgResultado: WideString): WideString; safecall;
    function encodeBase64(const txtANSI: WideString; out cResultado: Integer;
                          out msgResultado: WideString): WideString; safecall;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer;
                          out msgResultado: WideString): WideString; safecall;
    function ConverteArquivoBase64(const nomeArquivo: WideString; out cResultado: Integer;
                                   out msgResultado: WideString): WideString; safecall;
    function MontaLoteCTe(const Versao: WideString; const idLote: WideString;
                          const CTe: WideString; out quantidadeCTe: Integer;
                          out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function PegaProtCTe(const retConsReciCTe: WideString; out Versao: WideString;
                         out tpAmb: Integer; out verAplic: WideString; out nRec: WideString;
                         out cStat: Integer; out xMotivo: WideString; out cUF: Integer;
                         out cMsg: Integer; out xMsg: WideString; out qtdeProtCTe: Integer;
                         out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function MontaProcCTe(const Versao: WideString; const enviCTe: WideString;
                          const retConsReciCTe: WideString; out qtdeCTe: Integer;
                          out qtdeProcCTe: Integer; out cResultado: Integer;
                          out msgResultado: WideString): WideString; safecall;
    function emitente(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString;
                      const _xFant_Opc: WideString; const _xLgr: WideString;
                      const _nro: WideString; const _xCpl_Opc: WideString;
                      const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString;
                      const _CEP_Opc: WideString; const _UF: WideString; const _fone_Opc: WideString): WideString; safecall;
    function remetente(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString;
                       const _xNome: WideString; const _xFant_Opc: WideString;
                       const _fone_Opc: WideString; const _xLgr: WideString;
                       const _nro: WideString; const _xCpl_Opc: WideString;
                       const _xBairro: WideString; const _cMun: WideString;
                       const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString;
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString;
                       const _email_Opc: WideString; const _infnotas: WideString): WideString; safecall;
    function expedidor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString;
                       const _xNome: WideString; const _fone_Opc: WideString;
                       const _xLgr: WideString; const _nro: WideString;
                       const _xCpl_Opc: WideString; const _xBairro: WideString;
                       const _cMun: WideString; const _xMun: WideString;
                       const _CEP_Opc: WideString; const _UF: WideString;
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString;
                       const _email_Opc: WideString): WideString; safecall;
    function recebedor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString;
                       const _xNome: WideString; const _fone_Opc: WideString;
                       const _xLgr: WideString; const _nro: WideString;
                       const _xCpl_Opc: WideString; const _xBairro: WideString;
                       const _cMun: WideString; const _xMun: WideString;
                       const _CEP_Opc: WideString; const _UF: WideString;
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString;
                       const _email_Opc: WideString): WideString; safecall;
    function destinatario(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString;
                          const _xNome: WideString; const _fone_Opc: WideString;
                          const _ISUF_Opc: WideString; const _xLgr: WideString;
                          const _nro: WideString; const _xCpl_Opc: WideString;
                          const _xBairro: WideString; const _cMun: WideString;
                          const _xMun: WideString; const _CEP_Opc: WideString;
                          const _UF: WideString; const _cPais_Opc: WideString;
                          const _xPais_Opc: WideString; const _email_Opc: WideString;
                          const _locEnt_Opc: WideString): WideString; safecall;
    function localEntrega(const _CNPJ: WideString; const _CPF: WideString;
                          const _xNome: WideString; const _xLgr: WideString;
                          const _nro: WideString; const _xCpl_Opc: WideString;
                          const _xBairro: WideString; const _cMun: WideString;
                          const _xMun: WideString; const _UF: WideString): WideString; safecall;
    function compVPrest(const _xNome: WideString; _vComp: Double): WideString; safecall;
    function vPrest(_vTPrest: Double; _vRec: Double; const _Comp_Opc: WideString): WideString; safecall;
    function ImpICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double;
                       const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                       _vICMS: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString; safecall;
    function ImpICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                       _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                       _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double;
                            _pICMSOutraUF: Double; _vICMSOutraUF: Double;
                            const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMSSN(const _infAdFisco_Opc: WideString): WideString; safecall;
    function identificador(_cUF: Integer; _cCT: Integer; const _CFOP: WideString;
                           const _natOp: WideString; _forPag: Integer; _mod: Integer;
                           _serie: Integer; _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer;
                           _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer;
                           _procEmi: Integer; const _verProc: WideString;
                           const _refCTe_Opc: WideString; const _cMunEnv: WideString;
                           const _xMunEnv: WideString; const _UFEnv: WideString;
                           const _modal: WideString; _tpServ: Integer; const _cMunIni: WideString;
                           const _xMunIni: WideString; const _UFIni: WideString;
                           const _cMunFim: WideString; const _xMunFim: WideString;
                           const _UFFim: WideString; _retira: Integer;
                           const _xDetRetira: WideString; const _tomador: WideString;
                           _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString; safecall;
    function tomador(_toma: Integer; const _CNPJ: WideString; const _CPF: WideString;
                     const _IE_Opc: WideString; const _xNome: WideString;
                     const _xFant_Opc: WideString; const _fone_Opc: WideString;
                     const _xLgr: WideString; const _nro: WideString; const _xCpl_Opc: WideString;
                     const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString;
                     const _CEP_Opc: WideString; const _UF: WideString;
                     const _cPais_Opc: WideString; const _xPais_Opc: WideString;
                     const _email_Opc: WideString): WideString; safecall;
    function compl(const _xCaraAd_Opc: WideString; const _xCaraSer_Opc: WideString;
                   const _xEmi_Opc: WideString; const _fluxo_Opc: WideString;
                   const _entrega_Opc: WideString; const _origCalc_Opc: WideString;
                   const _destCalc_Opc: WideString; const xObs_Opc: WideString;
                   const _obsCont_Opc: WideString; const _ObsFisco_Opc: WideString): WideString; safecall;
    function fluxo(const _xOrig_Opc: WideString; const _pass_Opc: WideString;
                   const _xDest_Opc: WideString; const _xRota_Opc: WideString): WideString; safecall;
    function pass(const _xPass_Opc: WideString): WideString; safecall;
    function Entrega(_tpPer: Integer; _dIni: TDateTime; _dFim: TDateTime; _tpHor: Integer;
                     _hIni: TDateTime; _hFim: TDateTime): WideString; safecall;
    function obsFisco(const _xCampo: WideString; const _xTexto: WideString): WideString; safecall;
    function obsCont(const _xCampo: WideString; const _xTexto: WideString): WideString; safecall;
    function infCTeNorm(const _infCarga: WideString; const _contQt_Opc: WideString;
                        const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString;
                        const _infModal: WideString; const _peri_Opc: WideString;
                        const _veicNovos_Opc: WideString; const _cobr_Opc: WideString;
                        const _infCteSub_Opc: WideString): WideString; safecall;
    function infCarga(_vCarga_Opc: Double; const _prodPred: WideString;
                      const _xOutCat_Opc: WideString; const _infQ: WideString): WideString; safecall;
    function infQ(const _cUnid: WideString; const _tpMed: WideString; _qCarga: Double): WideString; safecall;
    function contQt(const _nCont: WideString; const _lacContQt_Opc: WideString;
                    _dPrev_Opc: TDateTime): WideString; safecall;
    function lacContQt(const _nLacre: WideString): WideString; safecall;
    function EmiDocAnt(const _CNPJ: WideString; const _CPF: WideString; const _IE_Opc: WideString;
                       const _UF_Opc: WideString; const _xNome: WideString;
                       const _idDocAnt1: WideString; const _idDocAnt2: WideString): WideString; safecall;
    function idDocAntPap(_tpDoc: Integer; const _serie: WideString;
                         const _subSerie_Opc: WideString; const _nDoc: WideString; _dEmi: TDateTime): WideString; safecall;
    function idDocAntEle(const _chave: WideString): WideString; safecall;
    function seg(_respSeg: Integer; const _xSeg_Opc: WideString; const _nApol_Opc: WideString;
                 const _nAver_Opc: WideString; _vCarga_Opc: Double): WideString; safecall;
    function peri(const _nOnu: WideString; const _xNomeAE: WideString;
                  const _xClaRisco: WideString; const _grEmb_Opc: WideString;
                  const _qTotProd: WideString; const _qVolTipo_Opc: WideString;
                  const _pontoFulgor_Opc: WideString): WideString; safecall;
    function veicNovos(const _chassi: WideString; const _cCor: WideString; const _xCor: WideString;
                       const _cMod: WideString; _vUnit: Double; _vFrete: Double): WideString; safecall;
    function cobr(const _nFat_Opc: WideString; _vOrig_Opc: Double; _vDesc_Opc: Double;
                  _vLiq_Opc: Double; const _dup_Opc: WideString): WideString; safecall;
    function dup(const _nDup: WideString; _dVenc: TDateTime; _vDup: Double): WideString; safecall;
    function infCteSub_refNFe(const _chCte: WideString; const _refNFe: WideString): WideString; safecall;
    function infCteSub_refNF(const _chCte: WideString; const _CNPJ: WideString;
                             const _mod: WideString; const _serie: WideString;
                             const _subSerie_Opc: WideString; const _nro: WideString;
                             _valor: Double; _dEmi: TDateTime): WideString; safecall;
    function infCteSub_refCTe(const _chCte: WideString; const _refCte: WideString): WideString; safecall;
    function infCteSub_refCTeAnu(const _chCte: WideString; const _refCteAnu: WideString): WideString; safecall;
    function infCteComp(const _chave: WideString; const _vPresComp: WideString;
                        const _impComp: WideString): WideString; safecall;
    function vPresComp(_vTPrest: Double; const _compComp_Opc: WideString): WideString; safecall;
    function compComp(const _xNome: WideString; _vComp: Double): WideString; safecall;
    function ImpCompICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double;
                           const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                           _vICMS: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString; safecall;
    function ImpCompICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                           _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                           _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double;
                                _vBCOutraUF: Double; _pICMSOutraUF: Double; _vICMSOutraUF: Double;
                                const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMSSN(const _infAdFisco_Opc: WideString): WideString; safecall;
    function infCteAnu(const _chCte: WideString; _dEmi: TDateTime): WideString; safecall;
    function rod(const _versaoModal: WideString; const _RNTRC: WideString; _dPrev: TDateTime;
                 _lota: Integer; const _CIOT_Opc: WideString; const _occ_Opc: WideString;
                 const _valePed_Opc: WideString; const _veic_Opc: WideString;
                 const _lacRodo_Opc: WideString; const _moto_Opc: WideString): WideString; safecall;
    function occ(const _serie_Opc: WideString; const _nOcc: WideString; _dEmi: TDateTime;
                 const _CNPJ: WideString; const _cInt_Opc: WideString; const _IE: WideString;
                 const _UF: WideString; const _fone_Opc: WideString): WideString; safecall;
    function valePed(const _CNPJForn: WideString; const _nCompra: WideString;
                     const _CNPJPg_Opc: WideString): WideString; safecall;
    function veic(const _cInt_Opc: WideString; const _RENAVAM: WideString;
                  const _placa: WideString; const _tara: WideString; const _capKG: WideString;
                  const _capM3: WideString; const _tpProp: WideString; _tpVeic: Integer;
                  const _tpRod: WideString; const _tpCar: WideString; const _UF: WideString;
                  const _prop_Opc: WideString): WideString; safecall;
    function prop(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString;
                  const _xNome: WideString; const _IE_Opc: WideString; const _UF_Opc: WideString;
                  _tpProp: Integer): WideString; safecall;
    function lacRodo(const _nLacre: WideString): WideString; safecall;
    function moto(const _xNome: WideString; const _CPF: WideString): WideString; safecall;
    function CTe(const _versao: WideString; const _Id: WideString; const _ide: WideString;
                 const _compl_Opc: WideString; const _emit: WideString; const _rem_Opc: WideString;
                 const _exped_Opc: WideString; const _receb_Opc: WideString;
                 const _dest_Opc: WideString; const _vPrest: WideString; const _imp: WideString;
                 const _infCTe: WideString): WideString; safecall;
    function infNF(const _nRoma_Opc: WideString; const _nPed_Opc: WideString;
                   const _mod: WideString; const _serie: WideString; const _nDoc: WideString;
                   _dEmi: TDateTime; _vBC: Double; _vICMS: Double; _vBCST: Double; _vST: Double;
                   _vProd: Double; _vNF: Double; const _nCFOP: WideString; _nPeso_Opc: Double;
                   const _PIN_Opc: WideString; const _locRet_Opc: WideString): WideString; safecall;
    function infNFe(const _chave: WideString; const _PIN_Opc: WideString): WideString; safecall;
    function infOutros(const _tpDoc: WideString; const _descOutros_Opc: WideString;
                       const _nDoc_Opc: WideString; _dEmi_Opc: TDateTime; _vDocFisc_Opc: Double): WideString; safecall;
    function localRetirada(const _CNPJ: WideString; const _CPF: WideString;
                           const _xNome: WideString; const _xLgr: WideString;
                           const _nro: WideString; const _xCpl_Opc: WideString;
                           const _xBairro: WideString; const _cMun: WideString;
                           const _xMun: WideString; const _UF: WideString): WideString; safecall;
    function aquav(const _versaoModal: WideString; _vPrest: Double; _vAFRMM: Double;
                   const _nBooking_Opc: WideString; const _nCtrl_Opc: WideString;
                   const _xNavio: WideString; const _balsa_Opc: WideString;
                   const _nViag_Opc: WideString; const _direc: WideString;
                   const _prtEmb_Opc: WideString; const _prtTrans_Opc: WideString;
                   const _prtDest_Opc: WideString; const _tpNav_Opc: WideString;
                   const _irin: WideString; const _detCont_Opc: WideString): WideString; safecall;
    function balsa(const _xBalsa: WideString): WideString; safecall;
    function detCont(const _nCont: WideString; const _lacres_Opc: WideString;
                     const _infDoc_Opc: WideString): WideString; safecall;
    function lacre(const _nLacre: WideString): WideString; safecall;
    function infNFAquav(const _serie: WideString; const _nDoc: WideString; _unidRat_Opc: Double): WideString; safecall;
    function infNFeAquav(const _chave: WideString; _unidRat_Opc: Double): WideString; safecall;
    function geraPdfDACTE(const XML: WideString; const logo: WideString;
                          const quadroRecibo: WideString; const visualizar: WideString;
                          const parametros: WideString; out msgResultado: WideString): Integer; safecall;
    function Versao2G(out DLL_nome: WideString; out DLL_versao: WideString;
                      out DLL_data: WideString; out DLL_dataValidade: WideString;
                      out URL_versao: WideString; out URL_data: WideString): WideString; safecall;
    function GeraStringCode128C(const codigo: WideString; out code128c: WideString;
                                out msgErro: WideString): Integer; safecall;
    function WS_Rodocred(idWS: Integer; tipoAmbiente: Integer; const CNPJEmissor: WideString;
                         const mensagemXML: WideString; out resultado: Integer;
                         out msgResultado: WideString; const proxy: WideString;
                         const usuario: WideString; const senha: WideString;
                         const licenca: WideString): WideString; safecall;
    function ideVFP(_cUF: Integer; _cCT: Integer; const _CFOP: WideString;
                    const _natOp: WideString; _forPag: Integer; _mod: Integer; _serie: Integer;
                    _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; _tpEmis: Integer;
                    _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; _procEmi: Integer;
                    const _verProc: WideString; const _refCTe_Opc: WideString;
                    const _xMunEnv: WideString; const _modal: WideString; _tpServ: Integer;
                    const _xMunIni: WideString; const _xMunFim: WideString; _retira: Integer;
                    const _xDetRetira: WideString; const _tomador: WideString;
                    _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString; safecall;
    function aereo(const versaoModal: WideString; const nMinu_Opc: WideString;
                   const nOCA_Opc: WideString; dPrev: TDateTime; const xLAgEmi_Opc: WideString;
                   const IdT_Opc: WideString; const CL_tarifa: WideString;
                   const cTar_tarifa_Opc: WideString; vTar_tarifa: Double;
                   const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString;
                   const cIMP_Opc: WideString): WideString; safecall;
    function cInfManu(const cInfManu: WideString): WideString; safecall;
    function cIMP(const cIMP: WideString): WideString; safecall;
    function AssinarNovo(const XMLString: WideString; const tagAssinatura: WideString;
                         const Atributo: WideString; const nomeCertificado: WideString;
                         out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function ImpICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double;
                          _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                          _vICMS: Double; _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double;
                          const _infAdFisco: WideString): WideString; safecall;
    function ImpICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                          _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double;
                          const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                          _vICMS: Double; _vCred: Double; _vTotTrib_Opc: Double;
                          const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double;
                               _pICMSOutraUF: Double; _vICMSOutraUF: Double; _vTotTrib_Opc: Double;
                               const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double;
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                              _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double;
                              const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double;
                              const _infAdFisco: WideString): WideString; safecall;
    function ImpCompICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                              _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double;
                              const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                              _pICMS: Double; _vICMS: Double; _vCred: Double;
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double;
                                   _vBCOutraUF: Double; _pICMSOutraUF: Double;
                                   _vICMSOutraUF: Double; _vTotTrib_Opc: Double;
                                   const _infAdFisco_Opc: WideString): WideString; safecall;
    function ImpCompICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; safecall;
    function EnviaEPEC(const siglaWS: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer;
                       out msgResultado: WideString; const XMLCTe: WideString;
                       const xJust: WideString; const dhEvento: WideString;
                       out nProtocoloEPEC: WideString; out dProtocoloEPEC: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString;
                       const licenca: WideString): WideString; safecall;
    function CriaCodigoBarrasContingencia(const cUF: WideString; tipoEmissao: Integer;
                                          const CNPJ: WideString; valorTotalCTe: Double;
                                          destaqueICMSproprio: Integer; destaqueICMSST: Integer;
                                          dataEmissaoCTe: TDateTime; out codigoBarras: WideString;
                                          out msgResultado: WideString): Integer; safecall;
    function CancelaCTEvento(const siglaWS: WideString; tipoAmbiente: Integer;
                             const nomeCertificado: WideString; const Versao: WideString;
                             out msgDados: WideString; out msgRetWS: WideString;
                             out cStat: Integer; out msgResultado: WideString;
                             const chaveCTe: WideString; const nProtocolo: WideString;
                             const justificativa: WideString; const dhEvento: WideString;
                             out nProtocoloCanc: WideString; out dProtocoloCanc: WideString;
                             const proxy: WideString; const usuario: WideString;
                             const senha: WideString; const licenca: WideString): WideString; safecall;
    function RegistraMultimodal(const siglaWS: WideString; tipoAmbiente: Integer;
                                const nomeCertificado: WideString; const Versao: WideString;
                                out msgDados: WideString; out msgRetWS: WideString;
                                out cStat: Integer; out msgResultado: WideString;
                                const chaveCTe: WideString; const nDoc_Opc: WideString;
                                const xRegistro: WideString; nroRegistro: Integer;
                                const dhEvento: WideString; out nProtocolo: WideString;
                                out dProtocolo: WideString; const proxy: WideString;
                                const usuario: WideString; const senha: WideString;
                                const licenca: WideString): WideString; safecall;
    function EnviaCCe(const siglaWS: WideString; tipoAmbiente: Integer;
                      const nomeCertificado: WideString; const Versao: WideString;
                      out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                      out msgResultado: WideString; const chaveCTe: WideString;
                      const XMLCorrecao: WideString; textoAcentuado: Integer; nroCCe: Integer;
                      const dataCorrecao: WideString; out nroProtocolo: WideString;
                      out dhProtocolo: WideString; const proxy: WideString;
                      const usuario: WideString; const senha: WideString; const licenca: WideString): WideString; safecall;
    function geraInfCorrecao(const grupoAlterado: WideString; const campoAlterado: WideString;
                             const valorAlterado: WideString; const nroItemAlterado_Opc: WideString): WideString; safecall;
    function remetente2G(const CNPJ: WideString; const CPF: WideString; const IE: WideString;
                         const xNome: WideString; const xFant_Opc: WideString;
                         const fone_Opc: WideString; const xLgr: WideString; const nro: WideString;
                         const xCpl_Opc: WideString; const xBairro: WideString;
                         const cMun: WideString; const xMun: WideString; const CEP_Opc: WideString;
                         const UF: WideString; const cPais_Opc: WideString;
                         const xPais_Opc: WideString; const email_Opc: WideString;
                         const locColeta_Opc: WideString): WideString; safecall;
    function locColeta(const CNPJ: WideString; const CPF: WideString; const xNome: WideString;
                       const xLgr: WideString; const nro: WideString; const xCpl: WideString;
                       const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                       const UF: WideString): WideString; safecall;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; safecall;
    function CTe2G(const Versao: WideString; const Id: WideString; const ide: WideString;
                   const complOpc: WideString; const emit: WideString; const remOpc: WideString;
                   const expedOpc: WideString; const recebOpc: WideString;
                   const destOpc: WideString; const vPrest: WideString; const imp: WideString;
                   const infCTe: WideString; const autXMLOpc: WideString): WideString; safecall;
    function infNF_2G(const nRomaOpc: WideString; const nPedOpc: WideString;
                      const mod_: WideString; const serie: WideString; const nDoc: WideString;
                      dEmi: TDateTime; vBC: Double; vICMS: Double; vBCST: Double; vST: Double;
                      vProd: Double; vNF: Double; const nCFOP: WideString; nPesoOpc: Double;
                      const PINOpc: WideString; dPrevOpc: TDateTime;
                      const unidCargaTranspOpc: WideString): WideString; safecall;
    function infNFe_2G(const chave: WideString; const PINOpc: WideString; dPrevOpc: TDateTime;
                       const unidCargaTranspOpc: WideString): WideString; safecall;
    function infOutros_2G(const tpDoc: WideString; const descOutrosOpc: WideString;
                          const nDocOpc: WideString; dEmiOpc: TDateTime; vDocFiscOpc: Double;
                          dPrevOpc: TDateTime; const unidCargaTranspOpc: WideString): WideString; safecall;
    function lacreUnidCarga(const nLacre: WideString): WideString; safecall;
    function lacreUnidTransp(const nLacre: WideString): WideString; safecall;
    function infUnidCarga(const tpUnidCarga: WideString; const idUnidCarga: WideString;
                          const lacUnidCarga_Opc: WideString; const qtdRat_Opc: WideString): WideString; safecall;
    function infUnidTransp(const tpUnidTransp: WideString; const idUnidTransp: WideString;
                           const lacUnidTransp_Opc: WideString; const infUnidCarga_Opc: WideString;
                           const qtdRat_Opc: WideString): WideString; safecall;
    function infCteComp_2G(const _chave: WideString): WideString; safecall;
    function infCTeNorm_2G(const _infCarga: WideString; const infDoc_Opc: WideString;
                           const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString;
                           const _infModal: WideString; const _peri_Opc: WideString;
                           const _veicNovos_Opc: WideString; const _cobr_Opc: WideString;
                           const _infCteSub_Opc: WideString): WideString; safecall;
    function aereo_2G(const versaoModal: WideString; const nMinu_Opc: WideString;
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime;
                      const xLAgEmi_Opc: WideString; const IdT_Opc: WideString;
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString;
                      vTar_tarifa: Double; const xDime_natCarga_Opc: WideString;
                      const cInfManu_Opc: WideString; const cIMP_Opc: WideString): WideString; safecall;
    function valePed_2G(const CNPJForn: WideString; const nCompra: WideString;
                        const CNPJPg_Opc: WideString; vValePed: Double): WideString; safecall;
    function EnvEmail2(const emailRemetente: WideString; const nomeRemetente: WideString;
                       const emailDestinatario: WideString; const emailBcc: WideString;
                       const assunto: WideString; const mensagem: WideString;
                       const arquivos: WideString; const smtpCliente: WideString;
                       const smtpPorta: WideString; const smtpSSL: WideString;
                       const smtpUsuario: WideString; const smtpSenha: WideString;
                       const HTML: WideString; const confirmacao: WideString;
                       out msgResultado: WideString; const timeout: WideString): Integer; safecall;
    function ICMSUFFim(vBCUFFim: Double; pICMSUFFim: Double; pFCPUFFim: Double; pICMSInter: Double;
                       pICMSInterPart: Double; vFCPUFFim: Double; vICMSUFFim: Double;
                       vICMSUFIni: Double): WideString; safecall;
    function ImpICMS00_NT2015003(const _CST: WideString; _vBC: Double; _pICMS: Double;
                                 _vICMS: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMS20_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                                 _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMS45_NT2015003(const _CST: WideString; _vTotTrib_Opc: Double;
                                 const _infAdFisco: WideString; const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMS60_NT2015003(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                                 _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMS90_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                                 _pICMS: Double; _vICMS: Double; _vCred: Double;
                                 _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUF_NT2015003(const _CST: WideString; _pRedBCOutraUF: Double;
                                      _vBCOutraUF: Double; _pICMSOutraUF: Double;
                                      _vICMSOutraUF: Double; _vTotTrib_Opc: Double;
                                      const _infAdFisco_Opc: WideString;
                                      const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMSSN_NT2015003(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString): WideString; safecall;
    function identificador300(cUF: Integer; cCT: Integer; const CFOP: WideString;
                              const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                              const dhEmi: WideString; tpImp: Integer; tpEmis: Integer;
                              cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                              const verProc: WideString; const indGlobalizado: WideString;
                              const cMunEnv: WideString; const xMunEnv: WideString;
                              const UFEnv: WideString; const modal: WideString; tpServ: Integer;
                              const cMunIni: WideString; const xMunIni: WideString;
                              const UFIni: WideString; const cMunFim: WideString;
                              const xMunFim: WideString; const UFFim: WideString; retira: Integer;
                              const xDetRetira: WideString; indIEToma: Integer;
                              const tomador: WideString; const dhCont_Opc: WideString;
                              const xJust_Opc: WideString): WideString; safecall;
    function ideVFP300(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString;
                       mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString;
                       tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer;
                       tpCTe: Integer; procEmi: Integer; const verProc: WideString;
                       const indGlobalizado: WideString; const xMunEnv: WideString;
                       const modal: WideString; tpServ: Integer; const xMunIni: WideString;
                       const xMunFim: WideString; retira: Integer; const xDetRetira: WideString;
                       indIEToma: Integer; const tomador: WideString; const dhCont_Opc: WideString;
                       const xJust_Opc: WideString): WideString; safecall;
    function emitente300(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString;
                         const xNome: WideString; const xFant_Opc: WideString;
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                         const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; safecall;
    function tomador300(toma: Integer; const CNPJ: WideString; const CPF: WideString;
                        const IE_Opc: WideString; const xNome: WideString;
                        const xFant_Opc: WideString; const fone_Opc: WideString;
                        const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                        const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                        const CEP_Opc: WideString; const UF: WideString;
                        const cPais_Opc: WideString; const xPais_Opc: WideString;
                        const email_Opc: WideString): WideString; safecall;
    function remetente300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString;
                          const xNome: WideString; const xFant_Opc: WideString;
                          const fone_Opc: WideString; const xLgr: WideString;
                          const nro: WideString; const xCpl_Opc: WideString;
                          const xBairro: WideString; const cMun: WideString;
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString;
                          const cPais_Opc: WideString; const xPais_Opc: WideString;
                          const email_Opc: WideString): WideString; safecall;
    function expedidor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString;
                          const xNome: WideString; const fone_Opc: WideString;
                          const xLgr: WideString; const nro: WideString;
                          const xCpl_Opc: WideString; const xBairro: WideString;
                          const cMun: WideString; const xMun: WideString;
                          const CEP_Opc: WideString; const UF: WideString;
                          const cPais_Opc: WideString; const xPais_Opc: WideString;
                          const email_Opc: WideString): WideString; safecall;
    function recebedor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString;
                          const xNome: WideString; const fone_Opc: WideString;
                          const xLgr: WideString; const nro: WideString;
                          const xCpl_Opc: WideString; const xBairro: WideString;
                          const cMun: WideString; const xMun: WideString;
                          const CEP_Opc: WideString; const UF: WideString;
                          const cPais_Opc: WideString; const xPais_Opc: WideString;
                          const email_Opc: WideString): WideString; safecall;
    function destinatario300(const CNPJ: WideString; const CPF: WideString;
                             const IE_Opc: WideString; const xNome: WideString;
                             const fone_Opc: WideString; const ISUF_Opc: WideString;
                             const xLgr: WideString; const nro: WideString;
                             const xCpl_Opc: WideString; const xBairro: WideString;
                             const cMun: WideString; const xMun: WideString;
                             const CEP_Opc: WideString; const UF: WideString;
                             const cPais_Opc: WideString; const xPais_Opc: WideString;
                             const email_Opc: WideString): WideString; safecall;
    function infCTeNorm300(const infCarga: WideString; const infDoc_Opc: WideString;
                           const emiDocAnt_Opc: WideString; const infModal: WideString;
                           const veicNovos_Opc: WideString; const cobr_Opc: WideString;
                           const infCteSub_Opc: WideString; const infGlobalizado_Opc: WideString;
                           const infCTeMultimodal_Opc: WideString): WideString; safecall;
    function infCarga300(vCarga_Opc: Double; const prodPred: WideString;
                         const xOutCat_Opc: WideString; const infQ: WideString;
                         vCargaAverb_Opc: Double): WideString; safecall;
    function rod300(const versaoModal: WideString; const RNTRC: WideString;
                    const occ_Opc: WideString): WideString; safecall;
    function aereo300(const versaoModal: WideString; const nMinu_Opc: WideString;
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime;
                      const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString;
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString;
                      vTar_tarifa: Double; const peri_Opc: WideString): WideString; safecall;
    function peri300(const nOnu: WideString; const qTotEmb: WideString; qTotProd: Double;
                     const uniAP: WideString): WideString; safecall;
    function EnviaPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer;
                                 const nomeCertificado: WideString; const Versao: WideString;
                                 out msgDados: WideString; out msgRetWS: WideString;
                                 out cStat: Integer; out msgResultado: WideString;
                                 const chaveCTe: WideString; const CNPJTomador: WideString;
                                 const xObs: WideString; const dhEvento: WideString;
                                 out nProtocolo: WideString; out dProtocolo: WideString;
                                 const proxy: WideString; const usuario: WideString;
                                 const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaCTeOS(const siglaWS: WideString; const Versao: WideString;
                        const nomeCertificado: WideString; const CTeOS: WideString;
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                        out msgResultado: WideString; out CTeOSAssinado: WideString;
                        out nProtocolo: WideString; out dProtocolo: WideString;
                        const proxy: WideString; const usuario: WideString;
                        const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaInfGTV(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                         out msgResultado: WideString; const chaveCTe: WideString;
                         nroInfGTV: Integer; const XMLInfGTV: WideString;
                         const dhEvento: WideString; out nProtocolo: WideString;
                         out dProtocolo: WideString; const proxy: WideString;
                         const usuario: WideString; const senha: WideString;
                         const licenca: WideString): WideString; safecall;
    function infGTV(const nDoc: WideString; const Id: WideString; const serieOpc: WideString;
                    const subSerieOpc: WideString; const dEmi: WideString; const nDV: WideString;
                    const qCarga: WideString; const infEspecie: WideString;
                    const CNPJRem: WideString; const CPFRem: WideString;
                    const IERemOpc: WideString; const UFRem: WideString;
                    const xNomeRem: WideString; const CNPJDest: WideString;
                    const CPFDest: WideString; const IEDestOpc: WideString;
                    const UFDest: WideString; const xNomeDest: WideString;
                    const placaOpc: WideString; const UFOpc: WideString; const RNTRCOpc: WideString): WideString; safecall;
    function infEspecie(const tpEspecie: WideString; const vEspecieOpc: WideString): WideString; safecall;
    function consNSU(const siglaWS: WideString; tipoAmbiente: Integer;
                     const nomeCertificado: WideString; const Versao: WideString;
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString;
                     const NSU: WideString; out verAplic: WideString; out dhResp: WideString;
                     out ultNSU: WideString; out maxNSU: WideString; out NSUXML: WideString;
                     out schemaXML: WideString; const proxy: WideString; const usuario: WideString;
                     const senha: WideString; const licenca: WideString): WideString; safecall;
    function distNSU(const siglaWS: WideString; tipoAmbiente: Integer;
                     const nomeCertificado: WideString; const Versao: WideString;
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString;
                     const ultNSURecebido: WideString; out verAplic: WideString;
                     out dhResp: WideString; out ultNSU: WideString; out maxNSU: WideString;
                     out qtdeDocto: Integer; const proxy: WideString; const usuario: WideString;
                     const senha: WideString; const licenca: WideString): WideString; safecall;
    function ideCTeOS(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString;
                      mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString;
                      tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer;
                      tpCTe: Integer; procEmi: Integer; const verProc: WideString;
                      const cMunEnv: WideString; const xMunEnv: WideString;
                      const UFEnv: WideString; const modal: WideString; tpServ: Integer;
                      indIEToma: Integer; const cMunIni_Opc: WideString;
                      const xMunIni_Opc: WideString; const UFIni_Opc: WideString;
                      const cMunFim_Opc: WideString; const xMunFim_Opc: WideString;
                      const UFFim_Opc: WideString; const infPercurso_Opc: WideString;
                      const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; safecall;
    function ideCTeOSVFP(cUF: Integer; cCT: Integer; const CFOP: WideString;
                         const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                         const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                         tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                         const verProc: WideString; const xMunEnv: WideString;
                         const modal: WideString; tpServ: Integer; indIEToma: Integer;
                         const xMunIni: WideString; const xMunFim: WideString;
                         const infPercurso_Opc: WideString; const dhCont_Opc: WideString;
                         const xJust_Opc: WideString): WideString; safecall;
    function complCTeOS(const xCaracAd_Opc: WideString; const xCaracSer_Opc: WideString;
                        const xEmi_Opc: WideString; const xObs_Opc: WideString;
                        const obsCont_Opc: WideString; const obsFisco_Opc: WideString): WideString; safecall;
    function tomadorCTeOS(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString;
                          const xNome: WideString; const xFant_Opc: WideString;
                          const fone_Opc: WideString; const xLgr: WideString;
                          const nro: WideString; const xCpl_Opc: WideString;
                          const xBairro: WideString; const cMun: WideString;
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString;
                          const cPais_Opc: WideString; const xPais_Opc: WideString;
                          const email_Opc: WideString): WideString; safecall;
    function ImpICMS00CTeOS(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double;
                            vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString; safecall;
    function ImpICMS45CTeOS(const CST: WideString; vTotTrib_Opc: Double;
                            const infAdFisco: WideString; const ICMSUFFim_Opc: WideString;
                            const infTribFed_Opc: WideString): WideString; safecall;
    function ImpICMS90CTeOS(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double;
                            vICMS: Double; vCred: Double; vTotTrib_Opc: Double;
                            const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                            const infTribFed_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUFCTeOS(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double;
                                 pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double;
                                 const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                                 const infTribFed_Opc: WideString): WideString; safecall;
    function ImpICMSSNCTeOS(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString; safecall;
    function InfTribFed(vPIS_Opc: Double; vCOFINS_Opc: Double; vIR_Opc: Double; vINSS_Opc: Double;
                        vCSLL_Opc: Double): WideString; safecall;
    function infServico(const xDescServ: WideString; const infQ_Opc: WideString): WideString; safecall;
    function infQCteOS(const qCarga: WideString): WideString; safecall;
    function infDocRef(const nDoc: WideString; const serie_Opc: WideString;
                       const subSerie_Opc: WideString; const dEmi: WideString;
                       const vDoc_Opc: WideString): WideString; safecall;
    function segCTeOS(const respSeg: WideString; const xSeg_Opc: WideString;
                      const nApol_Opc: WideString): WideString; safecall;
    function infCteOSSub_refNFe(const chCte: WideString; const refNFe: WideString): WideString; safecall;
    function infCteOSSub_refNF(const chCte: WideString; const CNPJ: WideString;
                               const CPF: WideString; const mod_: WideString;
                               const serie: WideString; const subSerie_Opc: WideString;
                               const nro: WideString; valor: Double; const dEmi: WideString): WideString; safecall;
    function infCteOSSub_refCTe(const chCte: WideString; const refCte: WideString): WideString; safecall;
    function infCteOSSub_refCTeAnu(const chCte: WideString; const refCteAnu: WideString): WideString; safecall;
    function infCTeOSNorm(const infServico: WideString; const infDocRef_Opc: WideString;
                          const seg_Opc: WideString; const infModal_Opc: WideString;
                          const infCteSub_Opc: WideString; const refCTeCanc: WideString): WideString; safecall;
    function rodOS(const _versaoModal: WideString; const TAF: WideString;
                   const NroRegEstadual: WideString; const veicOS_Opc: WideString): WideString; safecall;
    function veicOS(const placa: WideString; const RENAVAM_Opc: WideString;
                    const propOS_Opc: WideString; const UF_Opc: WideString): WideString; safecall;
    function propOS(const CPF: WideString; const CNPJ: WideString; const TAF: WideString;
                    const NroRegEstadual: WideString; const xNome: WideString;
                    const IE_Opc: WideString; const UF_Opc: WideString; const tpProp: WideString): WideString; safecall;
    function CTeOS(const Versao: WideString; const Id: WideString; const ide: WideString;
                   const complOpc: WideString; const emit: WideString; const tomaOpc: WideString;
                   const vPrest: WideString; const imp: WideString; const infCTe: WideString;
                   const autXMLOpc: WideString): WideString; safecall;
    function infPercurso(const UFPer: WideString): WideString; safecall;
    function ImpICMSSN300(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString;
                          const ICMSUFFim_Opc: WideString): WideString; safecall;
    function infCteComp300(const chCte: WideString): WideString; safecall;
    function idDocAntEle300(const chCte: WideString): WideString; safecall;
    function fluxo300(const xOrig_Opc: WideString; const pass_Opc: WideString;
                      const xDest_Opc: WideString; const xRota_Opc: WideString): WideString; safecall;
    function infCteSub_refNFe300(const _chCte: WideString; const _refNFe: WideString;
                                 const indAlteraToma_Opc: WideString): WideString; safecall;
    function infCteSub_refNF300(const chCte: WideString; const CNPJ: WideString;
                                const mod_: WideString; const serie: WideString;
                                const subSerie_Opc: WideString; const nro: WideString;
                                valor: Double; dEmi: TDateTime; const indAlteraToma_Opc: WideString): WideString; safecall;
    function infCteSub_refCTe300(const chCte: WideString; const refCte: WideString;
                                 const indAlteraToma_Opc: WideString): WideString; safecall;
    function infCteSub_refCTeAnu300(const chCte: WideString; const refCteAnu: WideString;
                                    const indAlteraToma_Opc: WideString): WideString; safecall;
    function infCTeOSNormNT201702(const infServico: WideString; const infDocRef_Opc: WideString;
                                  const seg_Opc: WideString; const infModal_Opc: WideString;
                                  const infCteSub_Opc: WideString;
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString): WideString; safecall;
    function aquavNT201702(const versaoModal: WideString; vPrest: Double; vAFRMM: Double;
                           const xNavio: WideString; const balsa_Opc: WideString;
                           const nViag_Opc: WideString; const direc: WideString;
                           const irin: WideString; const detCont_Opc: WideString;
                           const _tpNav_Opc: WideString): WideString; safecall;
    function infCTeMultimodal(const chCte: WideString): WideString; safecall;
    function infRespTec(const CNPJ: WideString; const xContato: WideString;
                        const email: WideString; const fone: WideString;
                        const idCSRT_Opc: WideString; const hashCSRT_Opc: WideString): WideString; safecall;
    function CTe_2018002(const Versao: WideString; const Id: WideString; const ide: WideString;
                         const complOpc: WideString; const emit: WideString;
                         const remOpc: WideString; const expedOpc: WideString;
                         const recebOpc: WideString; const destOpc: WideString;
                         const vPrest: WideString; const imp: WideString; const infCTe: WideString;
                         const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString; safecall;
    function CTeOS_2018002(const Versao: WideString; const Id: WideString; const ide: WideString;
                           const complOpc: WideString; const emit: WideString;
                           const tomaOpc: WideString; const vPrest: WideString;
                           const imp: WideString; const infCTe: WideString;
                           const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString; safecall;
    function infFretamento(const tpFretamento: WideString; const dhViagem_Opc: WideString): WideString; safecall;
    function rodOS_2018002(const versaoModal: WideString; const TAF: WideString;
                           const NroRegEstadual: WideString; const veicOS_Opc: WideString;
                           const infFretamento_Opc: WideString): WideString; safecall;
    function infRespTec2(const CNPJ: WideString; const xContato: WideString;
                         const email: WideString; const fone: WideString;
                         const idCSRT_Opc: WideString; const CSRT_Opc: WideString;
                         const chaveCTe_Opc: WideString): WideString; safecall;
    function CTe_v3a(const Versao: WideString; const Id: WideString; const ide: WideString;
                     const compl_Opc: WideString; const emit: WideString;
                     const rem_Opc: WideString; const exped_Opc: WideString;
                     const receb_Opc: WideString; const dest_Opc: WideString;
                     const vPrest: WideString; const imp: WideString; const infCTe: WideString;
                     const autXML_Opc: WideString; const infRespTec_Opc: WideString;
                     const infSuplCTe_Opc: WideString): WideString; safecall;
    function CTeOS_v3a(const Versao: WideString; const Id: WideString; const ide: WideString;
                       const complOpc: WideString; const emit: WideString;
                       const tomaOpc: WideString; const vPrest: WideString; const imp: WideString;
                       const infCTe: WideString; const autXMLOpc: WideString;
                       const infRespTecOpc: WideString; const infSuplCTeOpc: WideString): WideString; safecall;
    function infCTeSupl(const URL: WideString; const chaveCTe: WideString; tipoAmbiente: Integer;
                        const nomeCertificado: WideString; out qrCode: WideString;
                        out resultado: Integer; out msgResultado: WideString): WideString; safecall;
    function EnviaCECTE(const siglaWS: WideString; tipoAmbiente: Integer;
                        const nomeCertificado: WideString; const Versao: WideString;
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                        out msgResultado: WideString; nroCECTe: Integer;
                        const chaveCTe: WideString; const nProtocoloCTe: WideString;
                        const dhEntrega: WideString; const nDoc: WideString;
                        const xNome: WideString; latitude: Double; longitude: Double;
                        const hashEntrega: WideString; const dhHashEntrega: WideString;
                        const XMLInfEntrega: WideString; const dhEvento: WideString;
                        out nProtocolo: WideString; out dProtocolo: WideString;
                        const proxy: WideString; const usuario: WideString;
                        const senha: WideString; const licenca: WideString): WideString; safecall;
    function infEntrega(const chNFe: WideString): WideString; safecall;
    function calcSha1(const texto: WideString): WideString; safecall;
    function EnviaCancCE(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                         out msgResultado: WideString; nroCancCE: Integer;
                         const chaveCTe: WideString; const nProtocoloCTe: WideString;
                         const nProtocoloCE: WideString; const dhEvento: WideString;
                         out nProtocolo: WideString; out dProtocolo: WideString;
                         const proxy: WideString; const usuario: WideString;
                         const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaCTeSinc(const siglaWS: WideString; const Versao: WideString;
                          const nomeCertificado: WideString; const CTe: WideString;
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                          out msgResultado: WideString; out CTeAssinado: WideString;
                          out nProtocolo: WideString; out dProtocolo: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaGTVe(const siglaWS: WideString; const Versao: WideString;
                       const nomeCertificado: WideString; const GTVe: WideString;
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                       out msgResultado: WideString; out GTVeAssinado: WideString;
                       out nProtocolo: WideString; out dProtocolo: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString;
                       const licenca: WideString): WideString; safecall;
    function GTVe(const Versao: WideString; const Id: WideString; const ide: WideString;
                  const compl_Opc: WideString; const emit: WideString; const rem: WideString;
                  const dest: WideString; const origem_Opc: WideString;
                  const destino_Opc: WideString; const detGTV: WideString;
                  const autXML_Opc: WideString; const infRespTec_Opc: WideString;
                  const infSuplCTe_Opc: WideString): WideString; safecall;
    function ideGTVe(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString;
                     mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString;
                     tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; tpCTe: Integer;
                     const verProc: WideString; const cMunEnv: WideString;
                     const xMunEnv: WideString; const UFEnv: WideString; const modal: WideString;
                     tpServ: Integer; indIEToma: Integer; const dhSaidaOrig: WideString;
                     const dhChegadaDest: WideString; const tomador: WideString;
                     const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; safecall;
    function tomadorGTVe(toma: Integer; const CNPJ: WideString; const CPF: WideString;
                         const IE_Opc: WideString; const xNome: WideString;
                         const xFant_Opc: WideString; const fone_Opc: WideString;
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                         const CEP_Opc: WideString; const UF: WideString;
                         const cPais_Opc: WideString; const xPais_Opc: WideString;
                         const email_Opc: WideString): WideString; safecall;
    function origem(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                    const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                    const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; safecall;
    function destino(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                     const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                     const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; safecall;
    function detGTV(const infEspecie: WideString; const qCarga: WideString;
                    const infVeiculo: WideString): WideString; safecall;
    function infEspecie_2(const tpEspecie: WideString; const vEspecie: WideString;
                          const tpNumerario: WideString; const xMoedaEstr: WideString): WideString; safecall;
    function infVeiculo(const placa: WideString; const UF_Opc: WideString;
                        const RNTRC_Opc: WideString): WideString; safecall;
    function infDocRefChBPe(const chBPe: WideString): WideString; safecall;
    function comp(const tpComp: WideString; vComp: Double; const xComp_Opc: WideString): WideString; safecall;
    function infGTVe(const chCte: WideString; const comp: WideString): WideString; safecall;
    function infCTeOSNormNT202002(const infServico: WideString; const infDocRef_Opc: WideString;
                                  const seg_Opc: WideString; const infModal_Opc: WideString;
                                  const infCteSub_Opc: WideString;
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString;
                                  const infGTVe_Opc: WideString): WideString; safecall;
    function emitenteCRT(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString;
                         const xNome: WideString; const xFant_Opc: WideString;
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                         const CEP_Opc: WideString; const UF: WideString;
                         const fone_Opc: WideString; const CRT_Opc: WideString): WideString; safecall;
    function EnviaCancPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer;
                                     const nomeCertificado: WideString; const Versao: WideString;
                                     out msgDados: WideString; out msgRetWS: WideString;
                                     out cStat: Integer; out msgResultado: WideString;
                                     const chaveCTe: WideString; const CNPJTomador: WideString;
                                     const nProtEvPrestDes: WideString; const dhEvento: WideString;
                                     out nProtocolo: WideString; out dProtocolo: WideString;
                                     const proxy: WideString; const usuario: WideString;
                                     const senha: WideString; const licenca: WideString): WideString; safecall;
    function infCteSub(const chCte: WideString; const indAlteraToma_Opc: WideString): WideString; safecall;
    function EnviaIECTe(const siglaWS: WideString; tipoAmbiente: Integer;
                        const nomeCertificado: WideString; const Versao: WideString;
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                        out msgResultado: WideString; nroIECTe: Integer;
                        const chaveCTe: WideString; const nProtocoloCTe: WideString;
                        const dhTentativaEntrega: WideString; nroTentativa: Integer;
                        tpMotivo: Integer; const xJustMotivo: WideString; latitude_Opc: Double;
                        longitude_Opc: Double; const hashTentativaEntrega_Opc: WideString;
                        const dhHashTentativaEntrega_Opc: WideString;
                        const XMLInfEntrega: WideString; const dhEvento: WideString;
                        out nProtocolo: WideString; out dProtocolo: WideString;
                        const proxy: WideString; const usuario: WideString;
                        const senha: WideString; const licenca: WideString): WideString; safecall;
    function EnviaCancIECTe(const siglaWS: WideString; tipoAmbiente: Integer;
                            const nomeCertificado: WideString; const Versao: WideString;
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                            out msgResultado: WideString; nroCancIECTe: Integer;
                            const chaveCTe: WideString; const nProt: WideString;
                            const nProtIE: WideString; const dhEvento: WideString;
                            out nProtocolo: WideString; out dProtocolo: WideString;
                            const proxy: WideString; const usuario: WideString;
                            const senha: WideString; const licenca: WideString): WideString; safecall;
    function EncerraMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString;
                         out resultado: Integer; out msgResultado: WideString;
                         const CNPJAutor: WideString; const chaveMDFe: WideString;
                         const nProtocolo: WideString; const dtEnc: WideString;
                         const cUFEnc: WideString; const cMunEnc: WideString;
                         const dhEvento: WideString; out nProtocoloEnc: WideString;
                         out dProtocoloEnc: WideString; const proxy: WideString;
                         const usuario: WideString; const senha: WideString;
                         const licenca: WideString): WideString; safecall;
    function ImpICMS20_NT2024001(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                                 _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString; _vICMSDeson_Opc: Double;
                                 const _cBenef_Opc: WideString): WideString; safecall;
    function ImpICMS45_NT2024001(const _CST: WideString; _vTotTrib_Opc: Double;
                                 const _infAdFisco: WideString; const ICMSUFFim_Opc: WideString;
                                 _vICMSDeson_Opc: Double; const _cBenef_Opc: WideString): WideString; safecall;
    function ImpICMS60_NT2024001(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                                 _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString; _vICMSDeson_Opc: Double;
                                 const _cBenef_Opc: WideString): WideString; safecall;
    function ImpICMS90_NT2024001(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                                 _pICMS: Double; _vICMS: Double; _vCred: Double;
                                 _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString; _vICMSDeson_Opc: Double;
                                 const _cBenef_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUF_NT2024001(const _CST: WideString; _pRedBCOutraUF: Double;
                                      _vBCOutraUF: Double; _pICMSOutraUF: Double;
                                      _vICMSOutraUF: Double; _vTotTrib_Opc: Double;
                                      const _infAdFisco_Opc: WideString;
                                      const ICMSUFFim_Opc: WideString; _vICMSDeson_Opc: Double;
                                      const _cBenef_Opc: WideString): WideString; safecall;
    function ImpICMS20CTeOS_NT2024001(const CST: WideString; pRedBC: Double; vBC: Double;
                                      pICMS: Double; vICMS: Double; vTotTrib_Opc: Double;
                                      const infAdFisco_Opc: WideString;
                                      const ICMSUFFim_Opc: WideString;
                                      const infTribFed_Opc: WideString; _vICMSDeson_Opc: Double;
                                      const _cBenef_Opc: WideString): WideString; safecall;
    function ImpICMS45CTeOS_NT2024001(const CST: WideString; vTotTrib_Opc: Double;
                                      const infAdFisco: WideString;
                                      const ICMSUFFim_Opc: WideString;
                                      const infTribFed_Opc: WideString; _vICMSDeson_Opc: Double;
                                      const _cBenef_Opc: WideString): WideString; safecall;
    function ImpICMS90CTeOS_NT2024001(const CST: WideString; pRedBC: Double; vBC: Double;
                                      pICMS: Double; vICMS: Double; vCred: Double;
                                      vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                                      const ICMSUFFim_Opc: WideString;
                                      const infTribFed_Opc: WideString; _vICMSDeson_Opc: Double;
                                      const _cBenef_Opc: WideString): WideString; safecall;
    function ImpICMSOutraUFCTeOS_NT2024001(const CST: WideString; pRedBCOutraUF: Double;
                                           vBCOutraUF: Double; pICMSOutraUF: Double;
                                           vICMSOutraUF: Double; vTotTrib_Opc: Double;
                                           const infAdFisco_Opc: WideString;
                                           const ICMSUFFim_Opc: WideString;
                                           const infTribFed_Opc: WideString;
                                           _vICMSDeson_Opc: Double; const _cBenef_Opc: WideString): WideString; safecall;
    function ideCTeSimp(cUF: Integer; cCT: Integer; const CFOP: WideString;
                        const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                        const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                        tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                        const verProc: WideString; const cMunEnv: WideString;
                        const xMunEnv: WideString; const UFEnv: WideString;
                        const modal: WideString; tpServ: Integer; const UFIni: WideString;
                        const UFFim: WideString; retira: Integer; const xDetRetira: WideString;
                        const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; safecall;
    function complSimp(const xCaracAd_Opc: WideString; const xCaracSer_Opc: WideString;
                       const fluxo_Opc: WideString; const xObs_Opc: WideString;
                       const obsCont_Opc: WideString; const obsFisco_Opc: WideString): WideString; safecall;
    function tomadorCTeSimp(toma: Integer; indIEToma: Integer; const CNPJ: WideString;
                            const CPF: WideString; const IE_Opc: WideString;
                            const xNome: WideString; const ISUF_Opc: WideString;
                            const fone_Opc: WideString; const xLgr: WideString;
                            const nro: WideString; const xCpl_Opc: WideString;
                            const xBairro: WideString; const cMun: WideString;
                            const xMun: WideString; const CEP_Opc: WideString;
                            const UF: WideString; const cPais_Opc: WideString;
                            const xPais_Opc: WideString; const email_Opc: WideString): WideString; safecall;
    function infDocAnt(const chCte: WideString; tpPrest: Integer;
                       const infNFeTranspParcial_Opc: WideString): WideString; safecall;
    function infNFeTranspParcial(const chNFe: WideString): WideString; safecall;
    function detCTeSimp(nItem: Integer; const cMunIni: WideString; const xMunIni: WideString;
                        const cMunFim: WideString; const xMunFim: WideString; vPrest: Double;
                        vRec: Double; const Comp_Opc: WideString; const infDFe: WideString): WideString; safecall;
    function CTeSimp(const Versao: WideString; const Id: WideString; const ide: WideString;
                     const complOpc: WideString; const emit: WideString; const toma: WideString;
                     const infCarga: WideString; const det: WideString; const infModal: WideString;
                     const cobr_Opc: WideString; const infCteSub_Opc: WideString;
                     const imp: WideString; vTPrest: Double; vTRec: Double;
                     const autXMLOpc: WideString; const infRespTecOpc: WideString;
                     const infSuplCTeOpc: WideString): WideString; safecall;
    function EnviaCTeSimp(const siglaWS: WideString; const Versao: WideString;
                          const nomeCertificado: WideString; const CTeSimp: WideString;
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                          out msgResultado: WideString; out CTeSimpAssinado: WideString;
                          out nProtocolo: WideString; out dProtocolo: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString; const licenca: WideString): WideString; safecall;
    function infNFeSimp(const chave: WideString; const PIN_Opc: WideString; dPrev_Opc: TDateTime;
                        const unidCargaTransp_Opc: WideString): WideString; safecall;
    function identificadorRT(cUF: Integer; cCT: Integer; const CFOP: WideString;
                             const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                             const dhEmi: WideString; tpImp: Integer; tpEmis: Integer;
                             cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                             const verProc: WideString; const indGlobalizado: WideString;
                             const cMunEnv: WideString; const xMunEnv: WideString;
                             const UFEnv: WideString; const modal: WideString; tpServ: Integer;
                             const cMunIni: WideString; const xMunIni: WideString;
                             const UFIni: WideString; const cMunFim: WideString;
                             const xMunFim: WideString; const UFFim: WideString; retira: Integer;
                             const xDetRetira: WideString; indIEToma: Integer;
                             const tomador: WideString; const dhCont_Opc: WideString;
                             const xJust_Opc: WideString; const comprasGov_Opc: WideString): WideString; safecall;
    function ideCTeSimpRT(cUF: Integer; cCT: Integer; const CFOP: WideString;
                          const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                          const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                          tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                          const verProc: WideString; const cMunEnv: WideString;
                          const xMunEnv: WideString; const UFEnv: WideString;
                          const modal: WideString; tpServ: Integer; const UFIni: WideString;
                          const UFFim: WideString; retira: Integer; const xDetRetira: WideString;
                          const dhCont_Opc: WideString; const xJust_Opc: WideString;
                          const comprasGov_Opc: WideString): WideString; safecall;
    function gCompraGov(tpEnteGov: Integer; pRedutor: Double): WideString; safecall;
    function infDCe(const chave: WideString): WideString; safecall;
    function ImpCST00(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double;
                      vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                      const ICMSUFFim_Opc: WideString; const IBSCBS_Opc: WideString;
                      vTotDFe_Opc: Double): WideString; safecall;
    function ImpCST20(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double;
                      vICMS: Double; vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                      const ICMSUFFim_Opc: WideString; vICMSDeson_Opc: Double;
                      const cBenef_Opc: WideString; const IBSCBS_Opc: WideString;
                      vTotDFe_Opc: Double): WideString; safecall;
    function ImpCST45(const CST: WideString; vTotTrib_Opc: Double;
                      const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                      vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                      const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; safecall;
    function ImpCST60(const CST: WideString; vBCSTRet: Double; pICMSSTRet: Double;
                      vICMSSTRet: Double; vCred: Double; vTotTrib_Opc: Double;
                      const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                      vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                      const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; safecall;
    function ImpCST90(const CST: WideString; pRedBC_Opc: Double; vBC: Double; pICMS: Double;
                      vICMS: Double; vCred: Double; vTotTrib_Opc: Double;
                      const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                      vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                      const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; safecall;
    function ImpCSTOutraUF(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double;
                           pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double;
                           const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                           vICMSDeson_Opc: Double; const _cBenef_Opc: WideString;
                           const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; safecall;
    function ImpCSTSN(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                      const ICMSUFFim_Opc: WideString; const IBSCBS_Opc: WideString;
                      vTotDFe_Opc: Double): WideString; safecall;
    function IBSCBS(const CST: WideString; const cClassTrib: WideString; const gIBSCBS: WideString): WideString; safecall;
    function gIBSCBS(vBC: Double; const gIBSUF: WideString; const gIBSMun: WideString;
                     vIBS: Double; const gCBS: WideString; const gTribRegular_Opc: WideString;
                     const gIBSCredPres_Opc: WideString; const gCBSCredPres_Opc: WideString;
                     const gTribCompraGov_Opc: WideString): WideString; safecall;
    function gIBSUF(pIBSUF: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double;
                    pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vIBSUF: Double): WideString; safecall;
    function gIBSMun(pIBSMun: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double;
                     pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vIBSMun: Double): WideString; safecall;
    function gCBS(pCBS: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double;
                  pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vCBS: Double): WideString; safecall;
    function gTribRegular(const CSTReg: WideString; const cClassTribReg: WideString;
                          pAliqEfetRegIBSUF: Double; vTribRegIBSUF: Double;
                          pAliqEfetRegIBSMun: Double; vTribRegIBSMun: Double;
                          pAliqEfetRegCBS: Double; vTribRegCBS: Double): WideString; safecall;
    function gIBSCredPres(const cCredPres: WideString; pCredPres: Double; vCredPres_Alt: Double;
                          vCredPresCondSus_Alt: Double): WideString; safecall;
    function gCBSCredPres(const cCredPres: WideString; pCredPres: Double; vCredPres_Alt: Double;
                          vCredPresCondSus_Alt: Double): WideString; safecall;
    function gTribCompraGov(pAliqIBSUF: Double; vTribIBSUF: Double; pAliqIBSMun: Double;
                            vTribIBSMun: Double; pAliqCBS: Double; vTribCBS: Double): WideString; safecall;
    function ImpCST00CTeOS(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double;
                           vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                           const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString;
                           const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; safecall;
    function ImpCST20CTeOS(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double;
                           vICMS: Double; vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                           const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString;
                           vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                           const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; safecall;
    function ImpCST45CTeOS(const CST: WideString; vTotTrib_Opc: Double;
                           const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                           const infTribFed_Opc: WideString; vICMSDeson_Opc: Double;
                           const cBenef_Opc: WideString; const IBSCBS_Opc: WideString;
                           vTotDFe_Opc: Double): WideString; safecall;
    function ImpCST90CTeOS(const CST: WideString; pRedBC_Opc: Double; vBC: Double; pICMS: Double;
                           vICMS: Double; vCred: Double; vTotTrib_Opc: Double;
                           const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                           const infTribFed_Opc: WideString; vICMSDeson_Opc: Double;
                           const cBenef_Opc: WideString; const IBSCBS_Opc: WideString;
                           vTotDFe_Opc: Double): WideString; safecall;
    function ImpCSTOutraUFCTeOS(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double;
                                pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double;
                                const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                                const infTribFed_Opc: WideString; vICMSDeson_Opc: Double;
                                const cBenef_Opc: WideString; const IBSCBS_Opc: WideString;
                                vTotDFe_Opc: Double): WideString; safecall;
    function ImpCSTSNCTeOS(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                           const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString;
                           const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; safecall;
    function CTeSimpRT(const Versao: WideString; const Id: WideString; const ide: WideString;
                       const complOpc: WideString; const emit: WideString; const toma: WideString;
                       const infCarga: WideString; const det: WideString;
                       const infModal: WideString; const cobr_Opc: WideString;
                       const infCteSub_Opc: WideString; const imp: WideString; vTPrest: Double;
                       vTRec: Double; const autXMLOpc: WideString; const infRespTecOpc: WideString;
                       const infSuplCTeOpc: WideString; vTotDFe_Opc: Double): WideString; safecall;
    function ImpCST00Simp(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double;
                          vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                          const ICMSUFFim_Opc: WideString; const IBSCBS_Opc: WideString): WideString; safecall;
    function ImpCST20Simp(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double;
                          vICMS: Double; vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                          const ICMSUFFim_Opc: WideString; vICMSDeson_Opc: Double;
                          const cBenef_Opc: WideString; const IBSCBS_Opc: WideString): WideString; safecall;
    function ImpCST45Simp(const CST: WideString; vTotTrib_Opc: Double;
                          const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                          vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                          const IBSCBS_Opc: WideString): WideString; safecall;
    function ImpCST60Simp(const CST: WideString; vBCSTRet: Double; pICMSSTRet: Double;
                          vICMSSTRet: Double; vCred: Double; vTotTrib_Opc: Double;
                          const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                          vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                          const IBSCBS_Opc: WideString): WideString; safecall;
    function ImpCST90Simp(const CST: WideString; pRedBC_Opc: Double; vBC: Double; pICMS: Double;
                          vICMS: Double; vCred: Double; vTotTrib_Opc: Double;
                          const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                          vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                          const IBSCBS_Opc: WideString): WideString; safecall;
    function ImpCSTOutraUFSimp(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double;
                               pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double;
                               const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                               vICMSDeson_Opc: Double; const _cBenef_Opc: WideString;
                               const IBSCBS_Opc: WideString): WideString; safecall;
    function ImpCSTSNSimp(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                          const ICMSUFFim_Opc: WideString; const IBSCBS_Opc: WideString): WideString; safecall;
    function ideVFPRT(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString;
                      mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString;
                      tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer;
                      tpCTe: Integer; procEmi: Integer; const verProc: WideString;
                      const indGlobalizado: WideString; const xMunEnv: WideString;
                      const modal: WideString; tpServ: Integer; const xMunIni: WideString;
                      const xMunFim: WideString; retira: Integer; const xDetRetira: WideString;
                      indIEToma: Integer; const tomador: WideString; const camposVFP: WideString): WideString; safecall;
    function ideCTeOSRT(cUF: Integer; cCT: Integer; const CFOP: WideString;
                        const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                        const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                        tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                        const verProc: WideString; const cMunEnv: WideString;
                        const xMunEnv: WideString; const UFEnv: WideString;
                        const modal: WideString; tpServ: Integer; indIEToma: Integer;
                        const cMunIni_Opc: WideString; const xMunIni_Opc: WideString;
                        const UFIni_Opc: WideString; const cMunFim_Opc: WideString;
                        const xMunFim_Opc: WideString; const UFFim_Opc: WideString;
                        const infPercurso_Opc: WideString; const dhCont_Opc: WideString;
                        const xJust_Opc: WideString; const comprasGov_Opc: WideString): WideString; safecall;
    function ideCTeOSVFPRT(cUF: Integer; cCT: Integer; const CFOP: WideString;
                           const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                           const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                           tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                           const verProc: WideString; const xMunEnv: WideString;
                           const modal: WideString; tpServ: Integer; indIEToma: Integer;
                           const xMunIni: WideString; const xMunFim: WideString;
                           const infPercurso_Opc: WideString; const dhCont_Opc: WideString;
                           const xJust_Opc: WideString; const gCompraGov_Opc: WideString): WideString; safecall;
    function IBSCBSv110(const CST: WideString; const cClassTrib: WideString;
                        const indDoacao_Opc: WideString; const gIBSCBS_Opc: WideString;
                        const gEstornoCred_Opc: WideString): WideString; safecall;
    function gIBSCBSv110(vBC: Double; const gIBSUF: WideString; const gIBSMun: WideString;
                         vIBS: Double; const gCBS: WideString; const gTribRegular_Opc: WideString;
                         const gTribCompraGov_Opc: WideString): WideString; safecall;
    function gEstornoCred(vIBSEstCred: Double; vCBSEstCred: Double): WideString; safecall;
    function pgto(nPag: Integer; const idTransacao: WideString; tpMeioPgto: Integer;
                  const CNPJReceb: WideString; const CNPJBasePSP: WideString): WideString; safecall;
    function CTeRT(const Versao: WideString; const Id: WideString; const ide: WideString;
                   const compl_Opc: WideString; const emit: WideString; const rem_Opc: WideString;
                   const exped_Opc: WideString; const receb_Opc: WideString;
                   const dest: WideString; const vPrest: WideString; const imp: WideString;
                   const infCTe: WideString; const autXML_Opc: WideString;
                   const infRespTec_Opc: WideString; const infCTeSupl_Opc: WideString;
                   const pgto_Opc: WideString): WideString; safecall;
    function CTeSimpRT2(const Versao: WideString; const Id: WideString; const ide: WideString;
                        const complOpc: WideString; const emit: WideString; const toma: WideString;
                        const infCarga: WideString; const det: WideString;
                        const infModal: WideString; const cobr_Opc: WideString;
                        const infCteSub_Opc: WideString; const imp: WideString; vTPrest: Double;
                        vTRec: Double; const autXMLOpc: WideString;
                        const infRespTecOpc: WideString; const infSuplCTeOpc: WideString;
                        vTotDFe_Opc: Double; const pgto_Opc: WideString): WideString; safecall;
    function CTeOSRT(const Versao: WideString; const Id: WideString; const ide: WideString;
                     const complOpc: WideString; const emit: WideString; const tomaOpc: WideString;
                     const vPrest: WideString; const imp: WideString; const infCTe: WideString;
                     const autXMLOpc: WideString; const infRespTecOpc: WideString;
                     const infSuplCTeOpc: WideString; const pgto_Opc: WideString): WideString; safecall;
    function EnviaVincPgto(const siglaWS: WideString; tipoAmbiente: Integer;
                           const nomeCertificado: WideString; const Versao: WideString;
                           out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                           out msgResultado: WideString; nroVincPgto: Integer;
                           const chaveCTe: WideString; const nProt: WideString; nPag: Integer;
                           const idTransacao: WideString; tpMeioPgto: Integer;
                           const CNPJReceb: WideString; const CNPJBasePSP: WideString;
                           const dhEvento: WideString; out nProtocolo: WideString;
                           out dProtocolo: WideString; const proxy: WideString;
                           const usuario: WideString; const senha: WideString;
                           const licenca: WideString): WideString; safecall;
    function CancelaVincPgto(const siglaWS: WideString; tipoAmbiente: Integer;
                             const nomeCertificado: WideString; const Versao: WideString;
                             out msgDados: WideString; out msgRetWS: WideString;
                             out cStat: Integer; out msgResultado: WideString;
                             nroCancVincPgto: Integer; const chaveCTe: WideString;
                             const nProt: WideString; const nProtVincPgto: WideString;
                             const dhEvento: WideString; out nProtocolo: WideString;
                             out dProtocolo: WideString; const proxy: WideString;
                             const usuario: WideString; const senha: WideString;
                             const licenca: WideString): WideString; safecall;
    function gCompraGovv114(tpEnteGov: Integer; pRedutor: Double; tpOperGov: Integer;
                            const refDFeAnt_Opc: WideString): WideString; safecall;
    function refDFeAnt(const chaveDFe: WideString): WideString; safecall;
    function gIBSUFv100(pIBSUF: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double;
                        vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double;
                        vIBSUF: Double): WideString; safecall;
    function gIBSMunv100(pIBSMun: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double;
                         vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double;
                         vIBSMun: Double): WideString; safecall;
    function gCBSv100(pCBS: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double;
                      vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double;
                      pAliqEfetRegCBS_Opc: Double; vTribRegCBS_Opc: Double; vCBS: Double): WideString; safecall;
    function emitenteRTC(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString;
                         const xNome: WideString; const xFant_Opc: WideString;
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                         const CEP_Opc: WideString; const UF: WideString;
                         const fone_Opc: WideString; const CRT_Opc: WideString;
                         const ISUFEmit_Opc: WideString): WideString; safecall;
    function identificadorRTv100(cUF: Integer; cCT: Integer; const CFOP: WideString;
                                 const natOp: WideString; mod_: Integer; serie: Integer;
                                 nCT: Integer; const dhEmi: WideString; tpImp: Integer;
                                 tpEmis: Integer; cDV: Integer; tpAmb: Integer; tpCTe: Integer;
                                 procEmi: Integer; const verProc: WideString;
                                 const indGlobalizado: WideString; const cMunEnv: WideString;
                                 const xMunEnv: WideString; const UFEnv: WideString;
                                 const modal: WideString; tpServ: Integer;
                                 const cMunIni: WideString; const xMunIni: WideString;
                                 const UFIni: WideString; const cMunFim: WideString;
                                 const xMunFim: WideString; const UFFim: WideString;
                                 retira: Integer; const xDetRetira: WideString; indIEToma: Integer;
                                 const tomador: WideString; const dhCont_Opc: WideString;
                                 const xJust_Opc: WideString; const comprasGov_Opc: WideString;
                                 const tpPagAnt_Opc: WideString; const chDFePagAnt_Opc: WideString): WideString; safecall;
    function ideCTeSimpRTv100(cUF: Integer; cCT: Integer; const CFOP: WideString;
                              const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                              const dhEmi: WideString; tpImp: Integer; tpEmis: Integer;
                              cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                              const verProc: WideString; const cMunEnv: WideString;
                              const xMunEnv: WideString; const UFEnv: WideString;
                              const modal: WideString; tpServ: Integer; const UFIni: WideString;
                              const UFFim: WideString; retira: Integer;
                              const xDetRetira: WideString; const dhCont_Opc: WideString;
                              const xJust_Opc: WideString; const comprasGov_Opc: WideString;
                              const tpPagAnt_Opc: WideString; const chDFePagAnt_Opc: WideString): WideString; safecall;
    function ideCTeOSRTv100(cUF: Integer; cCT: Integer; const CFOP: WideString;
                            const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                            const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                            tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                            const verProc: WideString; const cMunEnv: WideString;
                            const xMunEnv: WideString; const UFEnv: WideString;
                            const modal: WideString; tpServ: Integer; indIEToma: Integer;
                            const cMunIni_Opc: WideString; const xMunIni_Opc: WideString;
                            const UFIni_Opc: WideString; const cMunFim_Opc: WideString;
                            const xMunFim_Opc: WideString; const UFFim_Opc: WideString;
                            const infPercurso_Opc: WideString; const dhCont_Opc: WideString;
                            const xJust_Opc: WideString; const comprasGov_Opc: WideString;
                            const tpPagAnt_Opc: WideString; const chDFePagAnt_Opc: WideString): WideString; safecall;
    function ideCTeSimpRTVFP(cUF: Integer; cCT: Integer; const CFOP: WideString;
                             const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                             const dhEmi: WideString; tpImp: Integer; tpEmis: Integer;
                             cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                             const verProc: WideString; const cMunEnv: WideString;
                             const xMunEnv: WideString; const UFEnv: WideString;
                             const modal: WideString; tpServ: Integer; const UFIni: WideString;
                             const UFFim: WideString; retira: Integer;
                             const xDetRetira: WideString; const camposVFP: WideString): WideString; safecall;
    function chDFePagAnt(const chaveDFe: WideString): WideString; safecall;
    function chCTePagAnt(const chaveCTe: WideString): WideString; safecall;
    function vPrestRTC(vTPrest: Double; vRec: Double; const Comp_Opc: WideString; vTPrestLiq: Double): WideString; safecall;
    function detCTeSimpRTC(nItem: Integer; const cMunIni: WideString; const xMunIni: WideString;
                           const cMunFim: WideString; const xMunFim: WideString; vPrest: Double;
                           vRec: Double; const Comp_Opc: WideString; const infDFe: WideString;
                           vPrestLiq: Double; const IBSCBS_Opc: WideString): WideString; safecall;
    function CTeSimpRT3(const Versao: WideString; const Id: WideString; const ide: WideString;
                        const complOpc: WideString; const emit: WideString; const toma: WideString;
                        const infCarga: WideString; const det: WideString;
                        const infModal: WideString; const cobr_Opc: WideString;
                        const infCteSub_Opc: WideString; const imp: WideString; vTPrest: Double;
                        vTRec: Double; const autXMLOpc: WideString;
                        const infRespTec_Opc: WideString; const infSuplCTe_Opc: WideString;
                        vTotDFe_Opc: Double; const pgto_Opc: WideString;
                        const IBSCBSTot_Opc: WideString; vTPrestLiq: Double): WideString; safecall;
    function ImpICMSPrevisto(vICMSPrevisto: Double; vTotTrib_Opc: Double;
                             const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                             const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; safecall;
    function ImpICMSPrevistoSimp(vICMSPrevisto: Double; vTotTrib_Opc: Double;
                                 const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; safecall;
    function ImpICMSPrevistoCTeOS(vICMSPrevisto: Double; vTotTrib_Opc: Double;
                                  const infAdFisco_Opc: WideString;
                                  const ICMSUFFim_Opc: WideString;
                                  const infTribFed_Opc: WideString; const IBSCBS_Opc: WideString;
                                  vTotDFe_Opc: Double): WideString; safecall;
    function IBSCBSTot(vBCIBSCBS: Double; vDif_UF: Double; vDevTrib_UF: Double; vIBSUF: Double;
                       vDif_Mun: Double; vDevTrib_Mun: Double; vIBSMun: Double; vIBS: Double;
                       vDif_CBS: Double; vDevTrib: Double; vCBS: Double;
                       const gTribSN_Opc: WideString; const gEstornoCred_Opc: WideString): WideString; safecall;
    function EnviaApropriaCredPres(const siglaWS: WideString; tipoAmbiente: Integer;
                                   const nomeCertificado: WideString; const Versao: WideString;
                                   out msgDados: WideString; out msgRetWS: WideString;
                                   out cStat: Integer; out msgResultado: WideString;
                                   const CNPJAutor: WideString; const chaveDFe: WideString;
                                   const dhEvento: WideString; nSeqEvento: Integer;
                                   vBCCredPres: Double; const cCredPres: WideString;
                                   pCredPresIBS: Double; vCredPresIBS: Double;
                                   pCredPresCBS: Double; vCredPresCBS: Double;
                                   out nProtocolo: WideString; out dProtocolo: WideString;
                                   const proxy: WideString; const usuario: WideString;
                                   const senha: WideString; const licenca: WideString): WideString; safecall;
    function emitenteSN(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString;
                        const xNome: WideString; const xFant_Opc: WideString;
                        const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                        const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                        const CEP_Opc: WideString; const UF: WideString;
                        const fone_Opc: WideString; const CRT_Opc: WideString;
                        const ISUFEmit_Opc: WideString; const tpRegimeIBSCBS_Opc: WideString): WideString; safecall;
    function gTribSN(pIBSSN_Opc: Double; vIBSSN_Opc: Double; pCBSSN_Opc: Double; vCBSSN_Opc: Double): WideString; safecall;
    function IBSCBSSN(const CST: WideString; const cClassTrib: WideString;
                      const indDoacao_Opc: WideString; const gIBSCBS_Opc: WideString;
                      const gTribSN_Opc: WideString; const gEstornoCred_Opc: WideString): WideString; safecall;
    function gTribSNTot(vIBSSN: Double; vCBSSN: Double): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  CTe_Util_InterfaceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B11037F-2F15-4558-A7B7-BA46801844A7}
// *********************************************************************//
  CTe_Util_InterfaceDisp = dispinterface
    ['{4B11037F-2F15-4558-A7B7-BA46801844A7}']
    function Versao: WideString; dispid 1;
    function Assinar(const XMLString: WideString; const RefUri: WideString; const Nome: WideString;
                     out XMLAssinado: WideString; out msgResultado: WideString): Integer; dispid 2;
    function PegaNomeCertificado(var Nome: WideString; out msgResultado: WideString): Integer; dispid 3;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString;
                                  out Titular: WideString; out CNPJ: WideString;
                                  out NroSerie: WideString; out Emissor: WideString;
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; dispid 4;
    function CriaChaveCTe(const cUF: WideString; const Ano: WideString; const Mes: WideString;
                          const CNPJ: WideString; const modelo: WideString;
                          const serie: WideString; const numero: WideString;
                          const codigoSeguranca: WideString; out msgResultado: WideString;
                          out cCT: WideString; out cDV: WideString; out chaveCTe: WideString): Integer; dispid 5;
    function ValidaXML(const XML: WideString; tipoXML: Integer; out msgResultado: WideString;
                       out qtdeErros: Integer; out erroXML: WideString): Integer; dispid 6;
    function ConsultaStatus(const siglaWS: WideString; const siglaUF: WideString;
                            tipoAmbiente: Integer; const nomeCertificado: WideString;
                            const Versao: WideString; out msgDados: WideString;
                            out msgRetWS: WideString; out msgResultado: WideString;
                            const proxy: WideString; const usuario: WideString;
                            const senha: WideString): Integer; dispid 7;
    function EnviaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       var msgDados: WideString; out msgRetWS: WideString;
                       out msgResultado: WideString; const proxy: WideString;
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; dispid 8;
    function BuscaLote(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       out msgDados: WideString; out msgRetWS: WideString;
                       out msgResultado: WideString; const nroRecibo: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; dispid 9;
    function ConsultaCT(const siglaWS: WideString; const siglaUF: WideString;
                        tipoAmbiente: Integer; const nomeCertificado: WideString;
                        const Versao: WideString; out msgDados: WideString;
                        out msgRetWS: WideString; out msgResultado: WideString;
                        const chaveCTe: WideString; const proxy: WideString;
                        const usuario: WideString; const senha: WideString): Integer; dispid 10;
    function CancelaCT(const siglaWS: WideString; const siglaUF: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       out msgDados: WideString; out msgRetWS: WideString;
                       out msgResultado: WideString; out procCanc: WideString;
                       const chaveCTe: WideString; const nProtocolo: WideString;
                       const justificativa: WideString; const proxy: WideString;
                       const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; dispid 11;
    function InutilizaNroCT(const siglaWS: WideString; const siglaUF: WideString;
                            tipoAmbiente: Integer; const nomeCertificado: WideString;
                            const Versao: WideString; out msgDados: WideString;
                            out msgRetWS: WideString; out msgResultado: WideString;
                            out procInut: WideString; const cUF: WideString; const Ano: WideString;
                            const CNPJ: WideString; const modelo: WideString;
                            const serie: WideString; const nroCTeInicial: WideString;
                            const nroCTeFinal: WideString; const justificativa: WideString;
                            const proxy: WideString; const usuario: WideString;
                            const senha: WideString; const licenca: WideString): Integer; dispid 12;
    function EnviaCTe(const siglaWS: WideString; var CTe: WideString; out nroRecibo: WideString;
                      const nomeCertificado: WideString; const Versao: WideString;
                      out msgDados: WideString; out msgRetWS: WideString;
                      out msgResultado: WideString; out CTeAssinado: WideString;
                      const proxy: WideString; const usuario: WideString; const senha: WideString;
                      const licenca: WideString): Integer; dispid 13;
    function BuscaCTe(const siglaWS: WideString; tipoAmbiente: Integer; const siglaUF: WideString;
                      var CTeAssinado: WideString; var nroRecibo: WideString;
                      out procCTe: WideString; out nroProtocolo: WideString;
                      out dAutorizacao: WideString; const nomeCertificado: WideString;
                      const Versao: WideString; out msgDados: WideString; out msgRetWS: WideString;
                      out msgResultado: WideString; const proxy: WideString;
                      const usuario: WideString; const senha: WideString; const licenca: WideString): Integer; dispid 14;
    function ConsultaCad2G(const siglaUF: WideString; tipoAmbiente: Integer;
                           const nomeCertificado: WideString; const Versao: WideString;
                           out msgDados: WideString; out msgRetWS: WideString;
                           out msgResultado: WideString; const tpArgumento: WideString;
                           const argumento: WideString; const proxy: WideString;
                           const usuario: WideString; const senha: WideString): Integer; dispid 15;
    function EnviaCLe(tipoAmbiente: Integer; const nomeCertificado: WideString;
                      out msgCabec: WideString; var msgDados: WideString; out msgRetWS: WideString;
                      out msgResultado: WideString; out chvCLe: WideString;
                      const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; dispid 16;
    function CriaChaveCTeNovo(const cUF: WideString; const Ano: WideString; const Mes: WideString;
                              const CNPJ: WideString; const modelo: WideString;
                              const serie: WideString; const numero: WideString;
                              const tpEmis: WideString; const codigoSeguranca: WideString;
                              out msgResultado: WideString; out cCT: WideString;
                              out cDV: WideString; out chaveCTe: WideString): Integer; dispid 100;
    function CriaProcCTe(const siglaWS: WideString; var CTeAssinada: WideString;
                         out protocolo: WideString; out retCancCTe: WideString;
                         out resultado: Integer; const nomeCertificado: WideString;
                         out msgResultado: WideString; const proxy: WideString;
                         const usuario: WideString; const senha: WideString): WideString; dispid 101;
    function CriaProcCancCTe(const siglaWS: WideString; var cancCTe: WideString;
                             out protocolo: WideString; out retCancCTe: WideString;
                             out resultado: Integer; const nomeCertificado: WideString;
                             out msgResultado: WideString; const proxy: WideString;
                             const usuario: WideString; const senha: WideString): WideString; dispid 102;
    function EnvEmail(const emailRemetente: WideString; const nomeRemetente: WideString;
                      const emailDestinatario: WideString; const emailBcc: WideString;
                      const assunto: WideString; const mensagem: WideString;
                      const arquivos: WideString; const smtpCliente: WideString;
                      const smtpPorta: WideString; const smtpSSL: WideString;
                      const smtpUsuario: WideString; const smtpSenha: WideString;
                      const HTML: WideString; const confirmacao: WideString;
                      out msgResultado: WideString): Integer; dispid 103;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer;
                       out msgResultado: WideString): WideString; dispid 104;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer;
                                 out msgResultado: WideString): WideString; dispid 105;
    function LeArquivoANSI(const nomeArquivo: WideString; out cResultado: Integer;
                           out msgResultado: WideString): WideString; dispid 106;
    function encodeBase64(const txtANSI: WideString; out cResultado: Integer;
                          out msgResultado: WideString): WideString; dispid 107;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer;
                          out msgResultado: WideString): WideString; dispid 108;
    function ConverteArquivoBase64(const nomeArquivo: WideString; out cResultado: Integer;
                                   out msgResultado: WideString): WideString; dispid 109;
    function MontaLoteCTe(const Versao: WideString; const idLote: WideString;
                          const CTe: WideString; out quantidadeCTe: Integer;
                          out cResultado: Integer; out msgResultado: WideString): WideString; dispid 110;
    function PegaProtCTe(const retConsReciCTe: WideString; out Versao: WideString;
                         out tpAmb: Integer; out verAplic: WideString; out nRec: WideString;
                         out cStat: Integer; out xMotivo: WideString; out cUF: Integer;
                         out cMsg: Integer; out xMsg: WideString; out qtdeProtCTe: Integer;
                         out cResultado: Integer; out msgResultado: WideString): WideString; dispid 111;
    function MontaProcCTe(const Versao: WideString; const enviCTe: WideString;
                          const retConsReciCTe: WideString; out qtdeCTe: Integer;
                          out qtdeProcCTe: Integer; out cResultado: Integer;
                          out msgResultado: WideString): WideString; dispid 112;
    function emitente(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString;
                      const _xFant_Opc: WideString; const _xLgr: WideString;
                      const _nro: WideString; const _xCpl_Opc: WideString;
                      const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString;
                      const _CEP_Opc: WideString; const _UF: WideString; const _fone_Opc: WideString): WideString; dispid 300;
    function remetente(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString;
                       const _xNome: WideString; const _xFant_Opc: WideString;
                       const _fone_Opc: WideString; const _xLgr: WideString;
                       const _nro: WideString; const _xCpl_Opc: WideString;
                       const _xBairro: WideString; const _cMun: WideString;
                       const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString;
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString;
                       const _email_Opc: WideString; const _infnotas: WideString): WideString; dispid 301;
    function expedidor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString;
                       const _xNome: WideString; const _fone_Opc: WideString;
                       const _xLgr: WideString; const _nro: WideString;
                       const _xCpl_Opc: WideString; const _xBairro: WideString;
                       const _cMun: WideString; const _xMun: WideString;
                       const _CEP_Opc: WideString; const _UF: WideString;
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString;
                       const _email_Opc: WideString): WideString; dispid 302;
    function recebedor(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString;
                       const _xNome: WideString; const _fone_Opc: WideString;
                       const _xLgr: WideString; const _nro: WideString;
                       const _xCpl_Opc: WideString; const _xBairro: WideString;
                       const _cMun: WideString; const _xMun: WideString;
                       const _CEP_Opc: WideString; const _UF: WideString;
                       const _cPais_Opc: WideString; const _xPais_Opc: WideString;
                       const _email_Opc: WideString): WideString; dispid 303;
    function destinatario(const _CNPJ: WideString; const _CPF: WideString; const _IE: WideString;
                          const _xNome: WideString; const _fone_Opc: WideString;
                          const _ISUF_Opc: WideString; const _xLgr: WideString;
                          const _nro: WideString; const _xCpl_Opc: WideString;
                          const _xBairro: WideString; const _cMun: WideString;
                          const _xMun: WideString; const _CEP_Opc: WideString;
                          const _UF: WideString; const _cPais_Opc: WideString;
                          const _xPais_Opc: WideString; const _email_Opc: WideString;
                          const _locEnt_Opc: WideString): WideString; dispid 304;
    function localEntrega(const _CNPJ: WideString; const _CPF: WideString;
                          const _xNome: WideString; const _xLgr: WideString;
                          const _nro: WideString; const _xCpl_Opc: WideString;
                          const _xBairro: WideString; const _cMun: WideString;
                          const _xMun: WideString; const _UF: WideString): WideString; dispid 305;
    function compVPrest(const _xNome: WideString; _vComp: Double): WideString; dispid 306;
    function vPrest(_vTPrest: Double; _vRec: Double; const _Comp_Opc: WideString): WideString; dispid 307;
    function ImpICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double;
                       const _infAdFisco_Opc: WideString): WideString; dispid 308;
    function ImpICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                       _vICMS: Double; const _infAdFisco_Opc: WideString): WideString; dispid 309;
    function ImpICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString; dispid 310;
    function ImpICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                       _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; dispid 311;
    function ImpICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                       _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; dispid 312;
    function ImpICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double;
                            _pICMSOutraUF: Double; _vICMSOutraUF: Double;
                            const _infAdFisco_Opc: WideString): WideString; dispid 313;
    function ImpICMSSN(const _infAdFisco_Opc: WideString): WideString; dispid 314;
    function identificador(_cUF: Integer; _cCT: Integer; const _CFOP: WideString;
                           const _natOp: WideString; _forPag: Integer; _mod: Integer;
                           _serie: Integer; _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer;
                           _tpEmis: Integer; _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer;
                           _procEmi: Integer; const _verProc: WideString;
                           const _refCTe_Opc: WideString; const _cMunEnv: WideString;
                           const _xMunEnv: WideString; const _UFEnv: WideString;
                           const _modal: WideString; _tpServ: Integer; const _cMunIni: WideString;
                           const _xMunIni: WideString; const _UFIni: WideString;
                           const _cMunFim: WideString; const _xMunFim: WideString;
                           const _UFFim: WideString; _retira: Integer;
                           const _xDetRetira: WideString; const _tomador: WideString;
                           _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString; dispid 315;
    function tomador(_toma: Integer; const _CNPJ: WideString; const _CPF: WideString;
                     const _IE_Opc: WideString; const _xNome: WideString;
                     const _xFant_Opc: WideString; const _fone_Opc: WideString;
                     const _xLgr: WideString; const _nro: WideString; const _xCpl_Opc: WideString;
                     const _xBairro: WideString; const _cMun: WideString; const _xMun: WideString;
                     const _CEP_Opc: WideString; const _UF: WideString;
                     const _cPais_Opc: WideString; const _xPais_Opc: WideString;
                     const _email_Opc: WideString): WideString; dispid 316;
    function compl(const _xCaraAd_Opc: WideString; const _xCaraSer_Opc: WideString;
                   const _xEmi_Opc: WideString; const _fluxo_Opc: WideString;
                   const _entrega_Opc: WideString; const _origCalc_Opc: WideString;
                   const _destCalc_Opc: WideString; const xObs_Opc: WideString;
                   const _obsCont_Opc: WideString; const _ObsFisco_Opc: WideString): WideString; dispid 317;
    function fluxo(const _xOrig_Opc: WideString; const _pass_Opc: WideString;
                   const _xDest_Opc: WideString; const _xRota_Opc: WideString): WideString; dispid 318;
    function pass(const _xPass_Opc: WideString): WideString; dispid 319;
    function Entrega(_tpPer: Integer; _dIni: TDateTime; _dFim: TDateTime; _tpHor: Integer;
                     _hIni: TDateTime; _hFim: TDateTime): WideString; dispid 320;
    function obsFisco(const _xCampo: WideString; const _xTexto: WideString): WideString; dispid 321;
    function obsCont(const _xCampo: WideString; const _xTexto: WideString): WideString; dispid 322;
    function infCTeNorm(const _infCarga: WideString; const _contQt_Opc: WideString;
                        const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString;
                        const _infModal: WideString; const _peri_Opc: WideString;
                        const _veicNovos_Opc: WideString; const _cobr_Opc: WideString;
                        const _infCteSub_Opc: WideString): WideString; dispid 323;
    function infCarga(_vCarga_Opc: Double; const _prodPred: WideString;
                      const _xOutCat_Opc: WideString; const _infQ: WideString): WideString; dispid 324;
    function infQ(const _cUnid: WideString; const _tpMed: WideString; _qCarga: Double): WideString; dispid 325;
    function contQt(const _nCont: WideString; const _lacContQt_Opc: WideString;
                    _dPrev_Opc: TDateTime): WideString; dispid 326;
    function lacContQt(const _nLacre: WideString): WideString; dispid 327;
    function EmiDocAnt(const _CNPJ: WideString; const _CPF: WideString; const _IE_Opc: WideString;
                       const _UF_Opc: WideString; const _xNome: WideString;
                       const _idDocAnt1: WideString; const _idDocAnt2: WideString): WideString; dispid 328;
    function idDocAntPap(_tpDoc: Integer; const _serie: WideString;
                         const _subSerie_Opc: WideString; const _nDoc: WideString; _dEmi: TDateTime): WideString; dispid 329;
    function idDocAntEle(const _chave: WideString): WideString; dispid 330;
    function seg(_respSeg: Integer; const _xSeg_Opc: WideString; const _nApol_Opc: WideString;
                 const _nAver_Opc: WideString; _vCarga_Opc: Double): WideString; dispid 331;
    function peri(const _nOnu: WideString; const _xNomeAE: WideString;
                  const _xClaRisco: WideString; const _grEmb_Opc: WideString;
                  const _qTotProd: WideString; const _qVolTipo_Opc: WideString;
                  const _pontoFulgor_Opc: WideString): WideString; dispid 332;
    function veicNovos(const _chassi: WideString; const _cCor: WideString; const _xCor: WideString;
                       const _cMod: WideString; _vUnit: Double; _vFrete: Double): WideString; dispid 333;
    function cobr(const _nFat_Opc: WideString; _vOrig_Opc: Double; _vDesc_Opc: Double;
                  _vLiq_Opc: Double; const _dup_Opc: WideString): WideString; dispid 334;
    function dup(const _nDup: WideString; _dVenc: TDateTime; _vDup: Double): WideString; dispid 335;
    function infCteSub_refNFe(const _chCte: WideString; const _refNFe: WideString): WideString; dispid 336;
    function infCteSub_refNF(const _chCte: WideString; const _CNPJ: WideString;
                             const _mod: WideString; const _serie: WideString;
                             const _subSerie_Opc: WideString; const _nro: WideString;
                             _valor: Double; _dEmi: TDateTime): WideString; dispid 338;
    function infCteSub_refCTe(const _chCte: WideString; const _refCte: WideString): WideString; dispid 339;
    function infCteSub_refCTeAnu(const _chCte: WideString; const _refCteAnu: WideString): WideString; dispid 340;
    function infCteComp(const _chave: WideString; const _vPresComp: WideString;
                        const _impComp: WideString): WideString; dispid 341;
    function vPresComp(_vTPrest: Double; const _compComp_Opc: WideString): WideString; dispid 342;
    function compComp(const _xNome: WideString; _vComp: Double): WideString; dispid 343;
    function ImpCompICMS00(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double;
                           const _infAdFisco_Opc: WideString): WideString; dispid 344;
    function ImpCompICMS20(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                           _vICMS: Double; const _infAdFisco_Opc: WideString): WideString; dispid 345;
    function ImpCompICMS45(const _CST: WideString; const _infAdFisco: WideString): WideString; dispid 346;
    function ImpCompICMS60(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                           _vICMSSTRet: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; dispid 347;
    function ImpCompICMS90(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                           _vICMS: Double; _vCred: Double; const _infAdFisco_Opc: WideString): WideString; dispid 348;
    function ImpCompICMSOutraUF(const _CST: WideString; _pRedBCOutraUF: Double;
                                _vBCOutraUF: Double; _pICMSOutraUF: Double; _vICMSOutraUF: Double;
                                const _infAdFisco_Opc: WideString): WideString; dispid 349;
    function ImpCompICMSSN(const _infAdFisco_Opc: WideString): WideString; dispid 350;
    function infCteAnu(const _chCte: WideString; _dEmi: TDateTime): WideString; dispid 351;
    function rod(const _versaoModal: WideString; const _RNTRC: WideString; _dPrev: TDateTime;
                 _lota: Integer; const _CIOT_Opc: WideString; const _occ_Opc: WideString;
                 const _valePed_Opc: WideString; const _veic_Opc: WideString;
                 const _lacRodo_Opc: WideString; const _moto_Opc: WideString): WideString; dispid 352;
    function occ(const _serie_Opc: WideString; const _nOcc: WideString; _dEmi: TDateTime;
                 const _CNPJ: WideString; const _cInt_Opc: WideString; const _IE: WideString;
                 const _UF: WideString; const _fone_Opc: WideString): WideString; dispid 353;
    function valePed(const _CNPJForn: WideString; const _nCompra: WideString;
                     const _CNPJPg_Opc: WideString): WideString; dispid 354;
    function veic(const _cInt_Opc: WideString; const _RENAVAM: WideString;
                  const _placa: WideString; const _tara: WideString; const _capKG: WideString;
                  const _capM3: WideString; const _tpProp: WideString; _tpVeic: Integer;
                  const _tpRod: WideString; const _tpCar: WideString; const _UF: WideString;
                  const _prop_Opc: WideString): WideString; dispid 355;
    function prop(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString;
                  const _xNome: WideString; const _IE_Opc: WideString; const _UF_Opc: WideString;
                  _tpProp: Integer): WideString; dispid 356;
    function lacRodo(const _nLacre: WideString): WideString; dispid 357;
    function moto(const _xNome: WideString; const _CPF: WideString): WideString; dispid 358;
    function CTe(const _versao: WideString; const _Id: WideString; const _ide: WideString;
                 const _compl_Opc: WideString; const _emit: WideString; const _rem_Opc: WideString;
                 const _exped_Opc: WideString; const _receb_Opc: WideString;
                 const _dest_Opc: WideString; const _vPrest: WideString; const _imp: WideString;
                 const _infCTe: WideString): WideString; dispid 359;
    function infNF(const _nRoma_Opc: WideString; const _nPed_Opc: WideString;
                   const _mod: WideString; const _serie: WideString; const _nDoc: WideString;
                   _dEmi: TDateTime; _vBC: Double; _vICMS: Double; _vBCST: Double; _vST: Double;
                   _vProd: Double; _vNF: Double; const _nCFOP: WideString; _nPeso_Opc: Double;
                   const _PIN_Opc: WideString; const _locRet_Opc: WideString): WideString; dispid 360;
    function infNFe(const _chave: WideString; const _PIN_Opc: WideString): WideString; dispid 361;
    function infOutros(const _tpDoc: WideString; const _descOutros_Opc: WideString;
                       const _nDoc_Opc: WideString; _dEmi_Opc: TDateTime; _vDocFisc_Opc: Double): WideString; dispid 362;
    function localRetirada(const _CNPJ: WideString; const _CPF: WideString;
                           const _xNome: WideString; const _xLgr: WideString;
                           const _nro: WideString; const _xCpl_Opc: WideString;
                           const _xBairro: WideString; const _cMun: WideString;
                           const _xMun: WideString; const _UF: WideString): WideString; dispid 363;
    function aquav(const _versaoModal: WideString; _vPrest: Double; _vAFRMM: Double;
                   const _nBooking_Opc: WideString; const _nCtrl_Opc: WideString;
                   const _xNavio: WideString; const _balsa_Opc: WideString;
                   const _nViag_Opc: WideString; const _direc: WideString;
                   const _prtEmb_Opc: WideString; const _prtTrans_Opc: WideString;
                   const _prtDest_Opc: WideString; const _tpNav_Opc: WideString;
                   const _irin: WideString; const _detCont_Opc: WideString): WideString; dispid 364;
    function balsa(const _xBalsa: WideString): WideString; dispid 365;
    function detCont(const _nCont: WideString; const _lacres_Opc: WideString;
                     const _infDoc_Opc: WideString): WideString; dispid 366;
    function lacre(const _nLacre: WideString): WideString; dispid 367;
    function infNFAquav(const _serie: WideString; const _nDoc: WideString; _unidRat_Opc: Double): WideString; dispid 368;
    function infNFeAquav(const _chave: WideString; _unidRat_Opc: Double): WideString; dispid 369;
    function geraPdfDACTE(const XML: WideString; const logo: WideString;
                          const quadroRecibo: WideString; const visualizar: WideString;
                          const parametros: WideString; out msgResultado: WideString): Integer; dispid 400;
    function Versao2G(out DLL_nome: WideString; out DLL_versao: WideString;
                      out DLL_data: WideString; out DLL_dataValidade: WideString;
                      out URL_versao: WideString; out URL_data: WideString): WideString; dispid 500;
    function GeraStringCode128C(const codigo: WideString; out code128c: WideString;
                                out msgErro: WideString): Integer; dispid 501;
    function WS_Rodocred(idWS: Integer; tipoAmbiente: Integer; const CNPJEmissor: WideString;
                         const mensagemXML: WideString; out resultado: Integer;
                         out msgResultado: WideString; const proxy: WideString;
                         const usuario: WideString; const senha: WideString;
                         const licenca: WideString): WideString; dispid 502;
    function ideVFP(_cUF: Integer; _cCT: Integer; const _CFOP: WideString;
                    const _natOp: WideString; _forPag: Integer; _mod: Integer; _serie: Integer;
                    _nCT: Integer; _dhEmi: TDateTime; _tpImp: Integer; _tpEmis: Integer;
                    _cDV: Integer; _tpAmb: Integer; _tpCTe: Integer; _procEmi: Integer;
                    const _verProc: WideString; const _refCTe_Opc: WideString;
                    const _xMunEnv: WideString; const _modal: WideString; _tpServ: Integer;
                    const _xMunIni: WideString; const _xMunFim: WideString; _retira: Integer;
                    const _xDetRetira: WideString; const _tomador: WideString;
                    _dhCont_Opc: TDateTime; const _xJust_Opc: WideString): WideString; dispid 503;
    function aereo(const versaoModal: WideString; const nMinu_Opc: WideString;
                   const nOCA_Opc: WideString; dPrev: TDateTime; const xLAgEmi_Opc: WideString;
                   const IdT_Opc: WideString; const CL_tarifa: WideString;
                   const cTar_tarifa_Opc: WideString; vTar_tarifa: Double;
                   const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString;
                   const cIMP_Opc: WideString): WideString; dispid 504;
    function cInfManu(const cInfManu: WideString): WideString; dispid 505;
    function cIMP(const cIMP: WideString): WideString; dispid 506;
    function AssinarNovo(const XMLString: WideString; const tagAssinatura: WideString;
                         const Atributo: WideString; const nomeCertificado: WideString;
                         out cResultado: Integer; out msgResultado: WideString): WideString; dispid 507;
    function ImpICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double;
                          _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 508;
    function ImpICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                          _vICMS: Double; _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 509;
    function ImpICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double;
                          const _infAdFisco: WideString): WideString; dispid 510;
    function ImpICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                          _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double;
                          const _infAdFisco_Opc: WideString): WideString; dispid 511;
    function ImpICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double; _pICMS: Double;
                          _vICMS: Double; _vCred: Double; _vTotTrib_Opc: Double;
                          const _infAdFisco_Opc: WideString): WideString; dispid 512;
    function ImpICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double; _vBCOutraUF: Double;
                               _pICMSOutraUF: Double; _vICMSOutraUF: Double; _vTotTrib_Opc: Double;
                               const _infAdFisco_Opc: WideString): WideString; dispid 513;
    function ImpICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 514;
    function ImpCompICMS00_2G(const _CST: WideString; _vBC: Double; _pICMS: Double; _vICMS: Double;
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 515;
    function ImpCompICMS20_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                              _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double;
                              const _infAdFisco_Opc: WideString): WideString; dispid 516;
    function ImpCompICMS45_2G(const _CST: WideString; _vTotTrib_Opc: Double;
                              const _infAdFisco: WideString): WideString; dispid 517;
    function ImpCompICMS60_2G(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                              _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double;
                              const _infAdFisco_Opc: WideString): WideString; dispid 518;
    function ImpCompICMS90_2G(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                              _pICMS: Double; _vICMS: Double; _vCred: Double;
                              _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 519;
    function ImpCompICMSOutraUF_2G(const _CST: WideString; _pRedBCOutraUF: Double;
                                   _vBCOutraUF: Double; _pICMSOutraUF: Double;
                                   _vICMSOutraUF: Double; _vTotTrib_Opc: Double;
                                   const _infAdFisco_Opc: WideString): WideString; dispid 520;
    function ImpCompICMSSN_2G(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString): WideString; dispid 521;
    function EnviaEPEC(const siglaWS: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer;
                       out msgResultado: WideString; const XMLCTe: WideString;
                       const xJust: WideString; const dhEvento: WideString;
                       out nProtocoloEPEC: WideString; out dProtocoloEPEC: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString;
                       const licenca: WideString): WideString; dispid 530;
    function CriaCodigoBarrasContingencia(const cUF: WideString; tipoEmissao: Integer;
                                          const CNPJ: WideString; valorTotalCTe: Double;
                                          destaqueICMSproprio: Integer; destaqueICMSST: Integer;
                                          dataEmissaoCTe: TDateTime; out codigoBarras: WideString;
                                          out msgResultado: WideString): Integer; dispid 540;
    function CancelaCTEvento(const siglaWS: WideString; tipoAmbiente: Integer;
                             const nomeCertificado: WideString; const Versao: WideString;
                             out msgDados: WideString; out msgRetWS: WideString;
                             out cStat: Integer; out msgResultado: WideString;
                             const chaveCTe: WideString; const nProtocolo: WideString;
                             const justificativa: WideString; const dhEvento: WideString;
                             out nProtocoloCanc: WideString; out dProtocoloCanc: WideString;
                             const proxy: WideString; const usuario: WideString;
                             const senha: WideString; const licenca: WideString): WideString; dispid 550;
    function RegistraMultimodal(const siglaWS: WideString; tipoAmbiente: Integer;
                                const nomeCertificado: WideString; const Versao: WideString;
                                out msgDados: WideString; out msgRetWS: WideString;
                                out cStat: Integer; out msgResultado: WideString;
                                const chaveCTe: WideString; const nDoc_Opc: WideString;
                                const xRegistro: WideString; nroRegistro: Integer;
                                const dhEvento: WideString; out nProtocolo: WideString;
                                out dProtocolo: WideString; const proxy: WideString;
                                const usuario: WideString; const senha: WideString;
                                const licenca: WideString): WideString; dispid 551;
    function EnviaCCe(const siglaWS: WideString; tipoAmbiente: Integer;
                      const nomeCertificado: WideString; const Versao: WideString;
                      out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                      out msgResultado: WideString; const chaveCTe: WideString;
                      const XMLCorrecao: WideString; textoAcentuado: Integer; nroCCe: Integer;
                      const dataCorrecao: WideString; out nroProtocolo: WideString;
                      out dhProtocolo: WideString; const proxy: WideString;
                      const usuario: WideString; const senha: WideString; const licenca: WideString): WideString; dispid 552;
    function geraInfCorrecao(const grupoAlterado: WideString; const campoAlterado: WideString;
                             const valorAlterado: WideString; const nroItemAlterado_Opc: WideString): WideString; dispid 553;
    function remetente2G(const CNPJ: WideString; const CPF: WideString; const IE: WideString;
                         const xNome: WideString; const xFant_Opc: WideString;
                         const fone_Opc: WideString; const xLgr: WideString; const nro: WideString;
                         const xCpl_Opc: WideString; const xBairro: WideString;
                         const cMun: WideString; const xMun: WideString; const CEP_Opc: WideString;
                         const UF: WideString; const cPais_Opc: WideString;
                         const xPais_Opc: WideString; const email_Opc: WideString;
                         const locColeta_Opc: WideString): WideString; dispid 554;
    function locColeta(const CNPJ: WideString; const CPF: WideString; const xNome: WideString;
                       const xLgr: WideString; const nro: WideString; const xCpl: WideString;
                       const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                       const UF: WideString): WideString; dispid 555;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; dispid 556;
    function CTe2G(const Versao: WideString; const Id: WideString; const ide: WideString;
                   const complOpc: WideString; const emit: WideString; const remOpc: WideString;
                   const expedOpc: WideString; const recebOpc: WideString;
                   const destOpc: WideString; const vPrest: WideString; const imp: WideString;
                   const infCTe: WideString; const autXMLOpc: WideString): WideString; dispid 560;
    function infNF_2G(const nRomaOpc: WideString; const nPedOpc: WideString;
                      const mod_: WideString; const serie: WideString; const nDoc: WideString;
                      dEmi: TDateTime; vBC: Double; vICMS: Double; vBCST: Double; vST: Double;
                      vProd: Double; vNF: Double; const nCFOP: WideString; nPesoOpc: Double;
                      const PINOpc: WideString; dPrevOpc: TDateTime;
                      const unidCargaTranspOpc: WideString): WideString; dispid 561;
    function infNFe_2G(const chave: WideString; const PINOpc: WideString; dPrevOpc: TDateTime;
                       const unidCargaTranspOpc: WideString): WideString; dispid 562;
    function infOutros_2G(const tpDoc: WideString; const descOutrosOpc: WideString;
                          const nDocOpc: WideString; dEmiOpc: TDateTime; vDocFiscOpc: Double;
                          dPrevOpc: TDateTime; const unidCargaTranspOpc: WideString): WideString; dispid 563;
    function lacreUnidCarga(const nLacre: WideString): WideString; dispid 564;
    function lacreUnidTransp(const nLacre: WideString): WideString; dispid 565;
    function infUnidCarga(const tpUnidCarga: WideString; const idUnidCarga: WideString;
                          const lacUnidCarga_Opc: WideString; const qtdRat_Opc: WideString): WideString; dispid 566;
    function infUnidTransp(const tpUnidTransp: WideString; const idUnidTransp: WideString;
                           const lacUnidTransp_Opc: WideString; const infUnidCarga_Opc: WideString;
                           const qtdRat_Opc: WideString): WideString; dispid 567;
    function infCteComp_2G(const _chave: WideString): WideString; dispid 568;
    function infCTeNorm_2G(const _infCarga: WideString; const infDoc_Opc: WideString;
                           const _emiDocAnt_Opc: WideString; const _seg_Opc: WideString;
                           const _infModal: WideString; const _peri_Opc: WideString;
                           const _veicNovos_Opc: WideString; const _cobr_Opc: WideString;
                           const _infCteSub_Opc: WideString): WideString; dispid 569;
    function aereo_2G(const versaoModal: WideString; const nMinu_Opc: WideString;
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime;
                      const xLAgEmi_Opc: WideString; const IdT_Opc: WideString;
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString;
                      vTar_tarifa: Double; const xDime_natCarga_Opc: WideString;
                      const cInfManu_Opc: WideString; const cIMP_Opc: WideString): WideString; dispid 570;
    function valePed_2G(const CNPJForn: WideString; const nCompra: WideString;
                        const CNPJPg_Opc: WideString; vValePed: Double): WideString; dispid 571;
    function EnvEmail2(const emailRemetente: WideString; const nomeRemetente: WideString;
                       const emailDestinatario: WideString; const emailBcc: WideString;
                       const assunto: WideString; const mensagem: WideString;
                       const arquivos: WideString; const smtpCliente: WideString;
                       const smtpPorta: WideString; const smtpSSL: WideString;
                       const smtpUsuario: WideString; const smtpSenha: WideString;
                       const HTML: WideString; const confirmacao: WideString;
                       out msgResultado: WideString; const timeout: WideString): Integer; dispid 572;
    function ICMSUFFim(vBCUFFim: Double; pICMSUFFim: Double; pFCPUFFim: Double; pICMSInter: Double;
                       pICMSInterPart: Double; vFCPUFFim: Double; vICMSUFFim: Double;
                       vICMSUFIni: Double): WideString; dispid 573;
    function ImpICMS00_NT2015003(const _CST: WideString; _vBC: Double; _pICMS: Double;
                                 _vICMS: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; dispid 574;
    function ImpICMS20_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                                 _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; dispid 575;
    function ImpICMS45_NT2015003(const _CST: WideString; _vTotTrib_Opc: Double;
                                 const _infAdFisco: WideString; const ICMSUFFim_Opc: WideString): WideString; dispid 576;
    function ImpICMS60_NT2015003(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                                 _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; dispid 577;
    function ImpICMS90_NT2015003(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                                 _pICMS: Double; _vICMS: Double; _vCred: Double;
                                 _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString): WideString; dispid 578;
    function ImpICMSOutraUF_NT2015003(const _CST: WideString; _pRedBCOutraUF: Double;
                                      _vBCOutraUF: Double; _pICMSOutraUF: Double;
                                      _vICMSOutraUF: Double; _vTotTrib_Opc: Double;
                                      const _infAdFisco_Opc: WideString;
                                      const ICMSUFFim_Opc: WideString): WideString; dispid 579;
    function ImpICMSSN_NT2015003(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString): WideString; dispid 580;
    function identificador300(cUF: Integer; cCT: Integer; const CFOP: WideString;
                              const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                              const dhEmi: WideString; tpImp: Integer; tpEmis: Integer;
                              cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                              const verProc: WideString; const indGlobalizado: WideString;
                              const cMunEnv: WideString; const xMunEnv: WideString;
                              const UFEnv: WideString; const modal: WideString; tpServ: Integer;
                              const cMunIni: WideString; const xMunIni: WideString;
                              const UFIni: WideString; const cMunFim: WideString;
                              const xMunFim: WideString; const UFFim: WideString; retira: Integer;
                              const xDetRetira: WideString; indIEToma: Integer;
                              const tomador: WideString; const dhCont_Opc: WideString;
                              const xJust_Opc: WideString): WideString; dispid 581;
    function ideVFP300(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString;
                       mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString;
                       tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer;
                       tpCTe: Integer; procEmi: Integer; const verProc: WideString;
                       const indGlobalizado: WideString; const xMunEnv: WideString;
                       const modal: WideString; tpServ: Integer; const xMunIni: WideString;
                       const xMunFim: WideString; retira: Integer; const xDetRetira: WideString;
                       indIEToma: Integer; const tomador: WideString; const dhCont_Opc: WideString;
                       const xJust_Opc: WideString): WideString; dispid 582;
    function emitente300(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString;
                         const xNome: WideString; const xFant_Opc: WideString;
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                         const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; dispid 583;
    function tomador300(toma: Integer; const CNPJ: WideString; const CPF: WideString;
                        const IE_Opc: WideString; const xNome: WideString;
                        const xFant_Opc: WideString; const fone_Opc: WideString;
                        const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                        const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                        const CEP_Opc: WideString; const UF: WideString;
                        const cPais_Opc: WideString; const xPais_Opc: WideString;
                        const email_Opc: WideString): WideString; dispid 584;
    function remetente300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString;
                          const xNome: WideString; const xFant_Opc: WideString;
                          const fone_Opc: WideString; const xLgr: WideString;
                          const nro: WideString; const xCpl_Opc: WideString;
                          const xBairro: WideString; const cMun: WideString;
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString;
                          const cPais_Opc: WideString; const xPais_Opc: WideString;
                          const email_Opc: WideString): WideString; dispid 585;
    function expedidor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString;
                          const xNome: WideString; const fone_Opc: WideString;
                          const xLgr: WideString; const nro: WideString;
                          const xCpl_Opc: WideString; const xBairro: WideString;
                          const cMun: WideString; const xMun: WideString;
                          const CEP_Opc: WideString; const UF: WideString;
                          const cPais_Opc: WideString; const xPais_Opc: WideString;
                          const email_Opc: WideString): WideString; dispid 586;
    function recebedor300(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString;
                          const xNome: WideString; const fone_Opc: WideString;
                          const xLgr: WideString; const nro: WideString;
                          const xCpl_Opc: WideString; const xBairro: WideString;
                          const cMun: WideString; const xMun: WideString;
                          const CEP_Opc: WideString; const UF: WideString;
                          const cPais_Opc: WideString; const xPais_Opc: WideString;
                          const email_Opc: WideString): WideString; dispid 587;
    function destinatario300(const CNPJ: WideString; const CPF: WideString;
                             const IE_Opc: WideString; const xNome: WideString;
                             const fone_Opc: WideString; const ISUF_Opc: WideString;
                             const xLgr: WideString; const nro: WideString;
                             const xCpl_Opc: WideString; const xBairro: WideString;
                             const cMun: WideString; const xMun: WideString;
                             const CEP_Opc: WideString; const UF: WideString;
                             const cPais_Opc: WideString; const xPais_Opc: WideString;
                             const email_Opc: WideString): WideString; dispid 588;
    function infCTeNorm300(const infCarga: WideString; const infDoc_Opc: WideString;
                           const emiDocAnt_Opc: WideString; const infModal: WideString;
                           const veicNovos_Opc: WideString; const cobr_Opc: WideString;
                           const infCteSub_Opc: WideString; const infGlobalizado_Opc: WideString;
                           const infCTeMultimodal_Opc: WideString): WideString; dispid 589;
    function infCarga300(vCarga_Opc: Double; const prodPred: WideString;
                         const xOutCat_Opc: WideString; const infQ: WideString;
                         vCargaAverb_Opc: Double): WideString; dispid 599;
    function rod300(const versaoModal: WideString; const RNTRC: WideString;
                    const occ_Opc: WideString): WideString; dispid 600;
    function aereo300(const versaoModal: WideString; const nMinu_Opc: WideString;
                      const nOCA_Opc: WideString; dPrevAereo: TDateTime;
                      const xDime_natCarga_Opc: WideString; const cInfManu_Opc: WideString;
                      const CL_tarifa: WideString; const cTar_tarifa_Opc: WideString;
                      vTar_tarifa: Double; const peri_Opc: WideString): WideString; dispid 601;
    function peri300(const nOnu: WideString; const qTotEmb: WideString; qTotProd: Double;
                     const uniAP: WideString): WideString; dispid 602;
    function EnviaPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer;
                                 const nomeCertificado: WideString; const Versao: WideString;
                                 out msgDados: WideString; out msgRetWS: WideString;
                                 out cStat: Integer; out msgResultado: WideString;
                                 const chaveCTe: WideString; const CNPJTomador: WideString;
                                 const xObs: WideString; const dhEvento: WideString;
                                 out nProtocolo: WideString; out dProtocolo: WideString;
                                 const proxy: WideString; const usuario: WideString;
                                 const senha: WideString; const licenca: WideString): WideString; dispid 603;
    function EnviaCTeOS(const siglaWS: WideString; const Versao: WideString;
                        const nomeCertificado: WideString; const CTeOS: WideString;
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                        out msgResultado: WideString; out CTeOSAssinado: WideString;
                        out nProtocolo: WideString; out dProtocolo: WideString;
                        const proxy: WideString; const usuario: WideString;
                        const senha: WideString; const licenca: WideString): WideString; dispid 604;
    function EnviaInfGTV(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                         out msgResultado: WideString; const chaveCTe: WideString;
                         nroInfGTV: Integer; const XMLInfGTV: WideString;
                         const dhEvento: WideString; out nProtocolo: WideString;
                         out dProtocolo: WideString; const proxy: WideString;
                         const usuario: WideString; const senha: WideString;
                         const licenca: WideString): WideString; dispid 605;
    function infGTV(const nDoc: WideString; const Id: WideString; const serieOpc: WideString;
                    const subSerieOpc: WideString; const dEmi: WideString; const nDV: WideString;
                    const qCarga: WideString; const infEspecie: WideString;
                    const CNPJRem: WideString; const CPFRem: WideString;
                    const IERemOpc: WideString; const UFRem: WideString;
                    const xNomeRem: WideString; const CNPJDest: WideString;
                    const CPFDest: WideString; const IEDestOpc: WideString;
                    const UFDest: WideString; const xNomeDest: WideString;
                    const placaOpc: WideString; const UFOpc: WideString; const RNTRCOpc: WideString): WideString; dispid 606;
    function infEspecie(const tpEspecie: WideString; const vEspecieOpc: WideString): WideString; dispid 607;
    function consNSU(const siglaWS: WideString; tipoAmbiente: Integer;
                     const nomeCertificado: WideString; const Versao: WideString;
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString;
                     const NSU: WideString; out verAplic: WideString; out dhResp: WideString;
                     out ultNSU: WideString; out maxNSU: WideString; out NSUXML: WideString;
                     out schemaXML: WideString; const proxy: WideString; const usuario: WideString;
                     const senha: WideString; const licenca: WideString): WideString; dispid 608;
    function distNSU(const siglaWS: WideString; tipoAmbiente: Integer;
                     const nomeCertificado: WideString; const Versao: WideString;
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString;
                     const ultNSURecebido: WideString; out verAplic: WideString;
                     out dhResp: WideString; out ultNSU: WideString; out maxNSU: WideString;
                     out qtdeDocto: Integer; const proxy: WideString; const usuario: WideString;
                     const senha: WideString; const licenca: WideString): WideString; dispid 609;
    function ideCTeOS(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString;
                      mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString;
                      tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer;
                      tpCTe: Integer; procEmi: Integer; const verProc: WideString;
                      const cMunEnv: WideString; const xMunEnv: WideString;
                      const UFEnv: WideString; const modal: WideString; tpServ: Integer;
                      indIEToma: Integer; const cMunIni_Opc: WideString;
                      const xMunIni_Opc: WideString; const UFIni_Opc: WideString;
                      const cMunFim_Opc: WideString; const xMunFim_Opc: WideString;
                      const UFFim_Opc: WideString; const infPercurso_Opc: WideString;
                      const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; dispid 610;
    function ideCTeOSVFP(cUF: Integer; cCT: Integer; const CFOP: WideString;
                         const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                         const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                         tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                         const verProc: WideString; const xMunEnv: WideString;
                         const modal: WideString; tpServ: Integer; indIEToma: Integer;
                         const xMunIni: WideString; const xMunFim: WideString;
                         const infPercurso_Opc: WideString; const dhCont_Opc: WideString;
                         const xJust_Opc: WideString): WideString; dispid 611;
    function complCTeOS(const xCaracAd_Opc: WideString; const xCaracSer_Opc: WideString;
                        const xEmi_Opc: WideString; const xObs_Opc: WideString;
                        const obsCont_Opc: WideString; const obsFisco_Opc: WideString): WideString; dispid 612;
    function tomadorCTeOS(const CNPJ: WideString; const CPF: WideString; const IE_Opc: WideString;
                          const xNome: WideString; const xFant_Opc: WideString;
                          const fone_Opc: WideString; const xLgr: WideString;
                          const nro: WideString; const xCpl_Opc: WideString;
                          const xBairro: WideString; const cMun: WideString;
                          const xMun: WideString; const CEP_Opc: WideString; const UF: WideString;
                          const cPais_Opc: WideString; const xPais_Opc: WideString;
                          const email_Opc: WideString): WideString; dispid 613;
    function ImpICMS00CTeOS(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double;
                            vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString; dispid 614;
    function ImpICMS45CTeOS(const CST: WideString; vTotTrib_Opc: Double;
                            const infAdFisco: WideString; const ICMSUFFim_Opc: WideString;
                            const infTribFed_Opc: WideString): WideString; dispid 615;
    function ImpICMS90CTeOS(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double;
                            vICMS: Double; vCred: Double; vTotTrib_Opc: Double;
                            const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                            const infTribFed_Opc: WideString): WideString; dispid 616;
    function ImpICMSOutraUFCTeOS(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double;
                                 pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double;
                                 const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                                 const infTribFed_Opc: WideString): WideString; dispid 617;
    function ImpICMSSNCTeOS(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                            const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString): WideString; dispid 618;
    function InfTribFed(vPIS_Opc: Double; vCOFINS_Opc: Double; vIR_Opc: Double; vINSS_Opc: Double;
                        vCSLL_Opc: Double): WideString; dispid 619;
    function infServico(const xDescServ: WideString; const infQ_Opc: WideString): WideString; dispid 620;
    function infQCteOS(const qCarga: WideString): WideString; dispid 621;
    function infDocRef(const nDoc: WideString; const serie_Opc: WideString;
                       const subSerie_Opc: WideString; const dEmi: WideString;
                       const vDoc_Opc: WideString): WideString; dispid 622;
    function segCTeOS(const respSeg: WideString; const xSeg_Opc: WideString;
                      const nApol_Opc: WideString): WideString; dispid 623;
    function infCteOSSub_refNFe(const chCte: WideString; const refNFe: WideString): WideString; dispid 624;
    function infCteOSSub_refNF(const chCte: WideString; const CNPJ: WideString;
                               const CPF: WideString; const mod_: WideString;
                               const serie: WideString; const subSerie_Opc: WideString;
                               const nro: WideString; valor: Double; const dEmi: WideString): WideString; dispid 625;
    function infCteOSSub_refCTe(const chCte: WideString; const refCte: WideString): WideString; dispid 626;
    function infCteOSSub_refCTeAnu(const chCte: WideString; const refCteAnu: WideString): WideString; dispid 627;
    function infCTeOSNorm(const infServico: WideString; const infDocRef_Opc: WideString;
                          const seg_Opc: WideString; const infModal_Opc: WideString;
                          const infCteSub_Opc: WideString; const refCTeCanc: WideString): WideString; dispid 628;
    function rodOS(const _versaoModal: WideString; const TAF: WideString;
                   const NroRegEstadual: WideString; const veicOS_Opc: WideString): WideString; dispid 629;
    function veicOS(const placa: WideString; const RENAVAM_Opc: WideString;
                    const propOS_Opc: WideString; const UF_Opc: WideString): WideString; dispid 630;
    function propOS(const CPF: WideString; const CNPJ: WideString; const TAF: WideString;
                    const NroRegEstadual: WideString; const xNome: WideString;
                    const IE_Opc: WideString; const UF_Opc: WideString; const tpProp: WideString): WideString; dispid 631;
    function CTeOS(const Versao: WideString; const Id: WideString; const ide: WideString;
                   const complOpc: WideString; const emit: WideString; const tomaOpc: WideString;
                   const vPrest: WideString; const imp: WideString; const infCTe: WideString;
                   const autXMLOpc: WideString): WideString; dispid 632;
    function infPercurso(const UFPer: WideString): WideString; dispid 633;
    function ImpICMSSN300(_vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString;
                          const ICMSUFFim_Opc: WideString): WideString; dispid 634;
    function infCteComp300(const chCte: WideString): WideString; dispid 635;
    function idDocAntEle300(const chCte: WideString): WideString; dispid 636;
    function fluxo300(const xOrig_Opc: WideString; const pass_Opc: WideString;
                      const xDest_Opc: WideString; const xRota_Opc: WideString): WideString; dispid 637;
    function infCteSub_refNFe300(const _chCte: WideString; const _refNFe: WideString;
                                 const indAlteraToma_Opc: WideString): WideString; dispid 638;
    function infCteSub_refNF300(const chCte: WideString; const CNPJ: WideString;
                                const mod_: WideString; const serie: WideString;
                                const subSerie_Opc: WideString; const nro: WideString;
                                valor: Double; dEmi: TDateTime; const indAlteraToma_Opc: WideString): WideString; dispid 639;
    function infCteSub_refCTe300(const chCte: WideString; const refCte: WideString;
                                 const indAlteraToma_Opc: WideString): WideString; dispid 640;
    function infCteSub_refCTeAnu300(const chCte: WideString; const refCteAnu: WideString;
                                    const indAlteraToma_Opc: WideString): WideString; dispid 641;
    function infCTeOSNormNT201702(const infServico: WideString; const infDocRef_Opc: WideString;
                                  const seg_Opc: WideString; const infModal_Opc: WideString;
                                  const infCteSub_Opc: WideString;
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString): WideString; dispid 642;
    function aquavNT201702(const versaoModal: WideString; vPrest: Double; vAFRMM: Double;
                           const xNavio: WideString; const balsa_Opc: WideString;
                           const nViag_Opc: WideString; const direc: WideString;
                           const irin: WideString; const detCont_Opc: WideString;
                           const _tpNav_Opc: WideString): WideString; dispid 643;
    function infCTeMultimodal(const chCte: WideString): WideString; dispid 644;
    function infRespTec(const CNPJ: WideString; const xContato: WideString;
                        const email: WideString; const fone: WideString;
                        const idCSRT_Opc: WideString; const hashCSRT_Opc: WideString): WideString; dispid 645;
    function CTe_2018002(const Versao: WideString; const Id: WideString; const ide: WideString;
                         const complOpc: WideString; const emit: WideString;
                         const remOpc: WideString; const expedOpc: WideString;
                         const recebOpc: WideString; const destOpc: WideString;
                         const vPrest: WideString; const imp: WideString; const infCTe: WideString;
                         const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString; dispid 646;
    function CTeOS_2018002(const Versao: WideString; const Id: WideString; const ide: WideString;
                           const complOpc: WideString; const emit: WideString;
                           const tomaOpc: WideString; const vPrest: WideString;
                           const imp: WideString; const infCTe: WideString;
                           const autXMLOpc: WideString; const infRespTec_Opc: WideString): WideString; dispid 647;
    function infFretamento(const tpFretamento: WideString; const dhViagem_Opc: WideString): WideString; dispid 648;
    function rodOS_2018002(const versaoModal: WideString; const TAF: WideString;
                           const NroRegEstadual: WideString; const veicOS_Opc: WideString;
                           const infFretamento_Opc: WideString): WideString; dispid 649;
    function infRespTec2(const CNPJ: WideString; const xContato: WideString;
                         const email: WideString; const fone: WideString;
                         const idCSRT_Opc: WideString; const CSRT_Opc: WideString;
                         const chaveCTe_Opc: WideString): WideString; dispid 650;
    function CTe_v3a(const Versao: WideString; const Id: WideString; const ide: WideString;
                     const compl_Opc: WideString; const emit: WideString;
                     const rem_Opc: WideString; const exped_Opc: WideString;
                     const receb_Opc: WideString; const dest_Opc: WideString;
                     const vPrest: WideString; const imp: WideString; const infCTe: WideString;
                     const autXML_Opc: WideString; const infRespTec_Opc: WideString;
                     const infSuplCTe_Opc: WideString): WideString; dispid 651;
    function CTeOS_v3a(const Versao: WideString; const Id: WideString; const ide: WideString;
                       const complOpc: WideString; const emit: WideString;
                       const tomaOpc: WideString; const vPrest: WideString; const imp: WideString;
                       const infCTe: WideString; const autXMLOpc: WideString;
                       const infRespTecOpc: WideString; const infSuplCTeOpc: WideString): WideString; dispid 652;
    function infCTeSupl(const URL: WideString; const chaveCTe: WideString; tipoAmbiente: Integer;
                        const nomeCertificado: WideString; out qrCode: WideString;
                        out resultado: Integer; out msgResultado: WideString): WideString; dispid 653;
    function EnviaCECTE(const siglaWS: WideString; tipoAmbiente: Integer;
                        const nomeCertificado: WideString; const Versao: WideString;
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                        out msgResultado: WideString; nroCECTe: Integer;
                        const chaveCTe: WideString; const nProtocoloCTe: WideString;
                        const dhEntrega: WideString; const nDoc: WideString;
                        const xNome: WideString; latitude: Double; longitude: Double;
                        const hashEntrega: WideString; const dhHashEntrega: WideString;
                        const XMLInfEntrega: WideString; const dhEvento: WideString;
                        out nProtocolo: WideString; out dProtocolo: WideString;
                        const proxy: WideString; const usuario: WideString;
                        const senha: WideString; const licenca: WideString): WideString; dispid 654;
    function infEntrega(const chNFe: WideString): WideString; dispid 655;
    function calcSha1(const texto: WideString): WideString; dispid 656;
    function EnviaCancCE(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                         out msgResultado: WideString; nroCancCE: Integer;
                         const chaveCTe: WideString; const nProtocoloCTe: WideString;
                         const nProtocoloCE: WideString; const dhEvento: WideString;
                         out nProtocolo: WideString; out dProtocolo: WideString;
                         const proxy: WideString; const usuario: WideString;
                         const senha: WideString; const licenca: WideString): WideString; dispid 657;
    function EnviaCTeSinc(const siglaWS: WideString; const Versao: WideString;
                          const nomeCertificado: WideString; const CTe: WideString;
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                          out msgResultado: WideString; out CTeAssinado: WideString;
                          out nProtocolo: WideString; out dProtocolo: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString; const licenca: WideString): WideString; dispid 658;
    function EnviaGTVe(const siglaWS: WideString; const Versao: WideString;
                       const nomeCertificado: WideString; const GTVe: WideString;
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                       out msgResultado: WideString; out GTVeAssinado: WideString;
                       out nProtocolo: WideString; out dProtocolo: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString;
                       const licenca: WideString): WideString; dispid 659;
    function GTVe(const Versao: WideString; const Id: WideString; const ide: WideString;
                  const compl_Opc: WideString; const emit: WideString; const rem: WideString;
                  const dest: WideString; const origem_Opc: WideString;
                  const destino_Opc: WideString; const detGTV: WideString;
                  const autXML_Opc: WideString; const infRespTec_Opc: WideString;
                  const infSuplCTe_Opc: WideString): WideString; dispid 660;
    function ideGTVe(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString;
                     mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString;
                     tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer; tpCTe: Integer;
                     const verProc: WideString; const cMunEnv: WideString;
                     const xMunEnv: WideString; const UFEnv: WideString; const modal: WideString;
                     tpServ: Integer; indIEToma: Integer; const dhSaidaOrig: WideString;
                     const dhChegadaDest: WideString; const tomador: WideString;
                     const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; dispid 670;
    function tomadorGTVe(toma: Integer; const CNPJ: WideString; const CPF: WideString;
                         const IE_Opc: WideString; const xNome: WideString;
                         const xFant_Opc: WideString; const fone_Opc: WideString;
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                         const CEP_Opc: WideString; const UF: WideString;
                         const cPais_Opc: WideString; const xPais_Opc: WideString;
                         const email_Opc: WideString): WideString; dispid 671;
    function origem(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                    const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                    const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; dispid 672;
    function destino(const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                     const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                     const CEP_Opc: WideString; const UF: WideString; const fone_Opc: WideString): WideString; dispid 673;
    function detGTV(const infEspecie: WideString; const qCarga: WideString;
                    const infVeiculo: WideString): WideString; dispid 674;
    function infEspecie_2(const tpEspecie: WideString; const vEspecie: WideString;
                          const tpNumerario: WideString; const xMoedaEstr: WideString): WideString; dispid 675;
    function infVeiculo(const placa: WideString; const UF_Opc: WideString;
                        const RNTRC_Opc: WideString): WideString; dispid 676;
    function infDocRefChBPe(const chBPe: WideString): WideString; dispid 677;
    function comp(const tpComp: WideString; vComp: Double; const xComp_Opc: WideString): WideString; dispid 678;
    function infGTVe(const chCte: WideString; const comp: WideString): WideString; dispid 679;
    function infCTeOSNormNT202002(const infServico: WideString; const infDocRef_Opc: WideString;
                                  const seg_Opc: WideString; const infModal_Opc: WideString;
                                  const infCteSub_Opc: WideString;
                                  const refCTeCanc_Opc: WideString; const cobr_Opc: WideString;
                                  const infGTVe_Opc: WideString): WideString; dispid 680;
    function emitenteCRT(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString;
                         const xNome: WideString; const xFant_Opc: WideString;
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                         const CEP_Opc: WideString; const UF: WideString;
                         const fone_Opc: WideString; const CRT_Opc: WideString): WideString; dispid 681;
    function EnviaCancPrestDesacordo(const siglaWS: WideString; tipoAmbiente: Integer;
                                     const nomeCertificado: WideString; const Versao: WideString;
                                     out msgDados: WideString; out msgRetWS: WideString;
                                     out cStat: Integer; out msgResultado: WideString;
                                     const chaveCTe: WideString; const CNPJTomador: WideString;
                                     const nProtEvPrestDes: WideString; const dhEvento: WideString;
                                     out nProtocolo: WideString; out dProtocolo: WideString;
                                     const proxy: WideString; const usuario: WideString;
                                     const senha: WideString; const licenca: WideString): WideString; dispid 682;
    function infCteSub(const chCte: WideString; const indAlteraToma_Opc: WideString): WideString; dispid 683;
    function EnviaIECTe(const siglaWS: WideString; tipoAmbiente: Integer;
                        const nomeCertificado: WideString; const Versao: WideString;
                        out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                        out msgResultado: WideString; nroIECTe: Integer;
                        const chaveCTe: WideString; const nProtocoloCTe: WideString;
                        const dhTentativaEntrega: WideString; nroTentativa: Integer;
                        tpMotivo: Integer; const xJustMotivo: WideString; latitude_Opc: Double;
                        longitude_Opc: Double; const hashTentativaEntrega_Opc: WideString;
                        const dhHashTentativaEntrega_Opc: WideString;
                        const XMLInfEntrega: WideString; const dhEvento: WideString;
                        out nProtocolo: WideString; out dProtocolo: WideString;
                        const proxy: WideString; const usuario: WideString;
                        const senha: WideString; const licenca: WideString): WideString; dispid 684;
    function EnviaCancIECTe(const siglaWS: WideString; tipoAmbiente: Integer;
                            const nomeCertificado: WideString; const Versao: WideString;
                            out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                            out msgResultado: WideString; nroCancIECTe: Integer;
                            const chaveCTe: WideString; const nProt: WideString;
                            const nProtIE: WideString; const dhEvento: WideString;
                            out nProtocolo: WideString; out dProtocolo: WideString;
                            const proxy: WideString; const usuario: WideString;
                            const senha: WideString; const licenca: WideString): WideString; dispid 685;
    function EncerraMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString;
                         out resultado: Integer; out msgResultado: WideString;
                         const CNPJAutor: WideString; const chaveMDFe: WideString;
                         const nProtocolo: WideString; const dtEnc: WideString;
                         const cUFEnc: WideString; const cMunEnc: WideString;
                         const dhEvento: WideString; out nProtocoloEnc: WideString;
                         out dProtocoloEnc: WideString; const proxy: WideString;
                         const usuario: WideString; const senha: WideString;
                         const licenca: WideString): WideString; dispid 686;
    function ImpICMS20_NT2024001(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                                 _pICMS: Double; _vICMS: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString; _vICMSDeson_Opc: Double;
                                 const _cBenef_Opc: WideString): WideString; dispid 687;
    function ImpICMS45_NT2024001(const _CST: WideString; _vTotTrib_Opc: Double;
                                 const _infAdFisco: WideString; const ICMSUFFim_Opc: WideString;
                                 _vICMSDeson_Opc: Double; const _cBenef_Opc: WideString): WideString; dispid 688;
    function ImpICMS60_NT2024001(const _CST: WideString; _vBCSTRet: Double; _pICMSSTRet: Double;
                                 _vICMSSTRet: Double; _vCred: Double; _vTotTrib_Opc: Double;
                                 const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString; _vICMSDeson_Opc: Double;
                                 const _cBenef_Opc: WideString): WideString; dispid 689;
    function ImpICMS90_NT2024001(const _CST: WideString; _pRedBC: Double; _vBC: Double;
                                 _pICMS: Double; _vICMS: Double; _vCred: Double;
                                 _vTotTrib_Opc: Double; const _infAdFisco_Opc: WideString;
                                 const ICMSUFFim_Opc: WideString; _vICMSDeson_Opc: Double;
                                 const _cBenef_Opc: WideString): WideString; dispid 690;
    function ImpICMSOutraUF_NT2024001(const _CST: WideString; _pRedBCOutraUF: Double;
                                      _vBCOutraUF: Double; _pICMSOutraUF: Double;
                                      _vICMSOutraUF: Double; _vTotTrib_Opc: Double;
                                      const _infAdFisco_Opc: WideString;
                                      const ICMSUFFim_Opc: WideString; _vICMSDeson_Opc: Double;
                                      const _cBenef_Opc: WideString): WideString; dispid 691;
    function ImpICMS20CTeOS_NT2024001(const CST: WideString; pRedBC: Double; vBC: Double;
                                      pICMS: Double; vICMS: Double; vTotTrib_Opc: Double;
                                      const infAdFisco_Opc: WideString;
                                      const ICMSUFFim_Opc: WideString;
                                      const infTribFed_Opc: WideString; _vICMSDeson_Opc: Double;
                                      const _cBenef_Opc: WideString): WideString; dispid 692;
    function ImpICMS45CTeOS_NT2024001(const CST: WideString; vTotTrib_Opc: Double;
                                      const infAdFisco: WideString;
                                      const ICMSUFFim_Opc: WideString;
                                      const infTribFed_Opc: WideString; _vICMSDeson_Opc: Double;
                                      const _cBenef_Opc: WideString): WideString; dispid 693;
    function ImpICMS90CTeOS_NT2024001(const CST: WideString; pRedBC: Double; vBC: Double;
                                      pICMS: Double; vICMS: Double; vCred: Double;
                                      vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                                      const ICMSUFFim_Opc: WideString;
                                      const infTribFed_Opc: WideString; _vICMSDeson_Opc: Double;
                                      const _cBenef_Opc: WideString): WideString; dispid 694;
    function ImpICMSOutraUFCTeOS_NT2024001(const CST: WideString; pRedBCOutraUF: Double;
                                           vBCOutraUF: Double; pICMSOutraUF: Double;
                                           vICMSOutraUF: Double; vTotTrib_Opc: Double;
                                           const infAdFisco_Opc: WideString;
                                           const ICMSUFFim_Opc: WideString;
                                           const infTribFed_Opc: WideString;
                                           _vICMSDeson_Opc: Double; const _cBenef_Opc: WideString): WideString; dispid 695;
    function ideCTeSimp(cUF: Integer; cCT: Integer; const CFOP: WideString;
                        const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                        const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                        tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                        const verProc: WideString; const cMunEnv: WideString;
                        const xMunEnv: WideString; const UFEnv: WideString;
                        const modal: WideString; tpServ: Integer; const UFIni: WideString;
                        const UFFim: WideString; retira: Integer; const xDetRetira: WideString;
                        const dhCont_Opc: WideString; const xJust_Opc: WideString): WideString; dispid 696;
    function complSimp(const xCaracAd_Opc: WideString; const xCaracSer_Opc: WideString;
                       const fluxo_Opc: WideString; const xObs_Opc: WideString;
                       const obsCont_Opc: WideString; const obsFisco_Opc: WideString): WideString; dispid 697;
    function tomadorCTeSimp(toma: Integer; indIEToma: Integer; const CNPJ: WideString;
                            const CPF: WideString; const IE_Opc: WideString;
                            const xNome: WideString; const ISUF_Opc: WideString;
                            const fone_Opc: WideString; const xLgr: WideString;
                            const nro: WideString; const xCpl_Opc: WideString;
                            const xBairro: WideString; const cMun: WideString;
                            const xMun: WideString; const CEP_Opc: WideString;
                            const UF: WideString; const cPais_Opc: WideString;
                            const xPais_Opc: WideString; const email_Opc: WideString): WideString; dispid 698;
    function infDocAnt(const chCte: WideString; tpPrest: Integer;
                       const infNFeTranspParcial_Opc: WideString): WideString; dispid 699;
    function infNFeTranspParcial(const chNFe: WideString): WideString; dispid 700;
    function detCTeSimp(nItem: Integer; const cMunIni: WideString; const xMunIni: WideString;
                        const cMunFim: WideString; const xMunFim: WideString; vPrest: Double;
                        vRec: Double; const Comp_Opc: WideString; const infDFe: WideString): WideString; dispid 701;
    function CTeSimp(const Versao: WideString; const Id: WideString; const ide: WideString;
                     const complOpc: WideString; const emit: WideString; const toma: WideString;
                     const infCarga: WideString; const det: WideString; const infModal: WideString;
                     const cobr_Opc: WideString; const infCteSub_Opc: WideString;
                     const imp: WideString; vTPrest: Double; vTRec: Double;
                     const autXMLOpc: WideString; const infRespTecOpc: WideString;
                     const infSuplCTeOpc: WideString): WideString; dispid 702;
    function EnviaCTeSimp(const siglaWS: WideString; const Versao: WideString;
                          const nomeCertificado: WideString; const CTeSimp: WideString;
                          out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                          out msgResultado: WideString; out CTeSimpAssinado: WideString;
                          out nProtocolo: WideString; out dProtocolo: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString; const licenca: WideString): WideString; dispid 703;
    function infNFeSimp(const chave: WideString; const PIN_Opc: WideString; dPrev_Opc: TDateTime;
                        const unidCargaTransp_Opc: WideString): WideString; dispid 704;
    function identificadorRT(cUF: Integer; cCT: Integer; const CFOP: WideString;
                             const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                             const dhEmi: WideString; tpImp: Integer; tpEmis: Integer;
                             cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                             const verProc: WideString; const indGlobalizado: WideString;
                             const cMunEnv: WideString; const xMunEnv: WideString;
                             const UFEnv: WideString; const modal: WideString; tpServ: Integer;
                             const cMunIni: WideString; const xMunIni: WideString;
                             const UFIni: WideString; const cMunFim: WideString;
                             const xMunFim: WideString; const UFFim: WideString; retira: Integer;
                             const xDetRetira: WideString; indIEToma: Integer;
                             const tomador: WideString; const dhCont_Opc: WideString;
                             const xJust_Opc: WideString; const comprasGov_Opc: WideString): WideString; dispid 705;
    function ideCTeSimpRT(cUF: Integer; cCT: Integer; const CFOP: WideString;
                          const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                          const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                          tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                          const verProc: WideString; const cMunEnv: WideString;
                          const xMunEnv: WideString; const UFEnv: WideString;
                          const modal: WideString; tpServ: Integer; const UFIni: WideString;
                          const UFFim: WideString; retira: Integer; const xDetRetira: WideString;
                          const dhCont_Opc: WideString; const xJust_Opc: WideString;
                          const comprasGov_Opc: WideString): WideString; dispid 706;
    function gCompraGov(tpEnteGov: Integer; pRedutor: Double): WideString; dispid 707;
    function infDCe(const chave: WideString): WideString; dispid 708;
    function ImpCST00(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double;
                      vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                      const ICMSUFFim_Opc: WideString; const IBSCBS_Opc: WideString;
                      vTotDFe_Opc: Double): WideString; dispid 709;
    function ImpCST20(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double;
                      vICMS: Double; vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                      const ICMSUFFim_Opc: WideString; vICMSDeson_Opc: Double;
                      const cBenef_Opc: WideString; const IBSCBS_Opc: WideString;
                      vTotDFe_Opc: Double): WideString; dispid 710;
    function ImpCST45(const CST: WideString; vTotTrib_Opc: Double;
                      const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                      vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                      const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; dispid 711;
    function ImpCST60(const CST: WideString; vBCSTRet: Double; pICMSSTRet: Double;
                      vICMSSTRet: Double; vCred: Double; vTotTrib_Opc: Double;
                      const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                      vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                      const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; dispid 712;
    function ImpCST90(const CST: WideString; pRedBC_Opc: Double; vBC: Double; pICMS: Double;
                      vICMS: Double; vCred: Double; vTotTrib_Opc: Double;
                      const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                      vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                      const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; dispid 713;
    function ImpCSTOutraUF(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double;
                           pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double;
                           const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                           vICMSDeson_Opc: Double; const _cBenef_Opc: WideString;
                           const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; dispid 714;
    function ImpCSTSN(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                      const ICMSUFFim_Opc: WideString; const IBSCBS_Opc: WideString;
                      vTotDFe_Opc: Double): WideString; dispid 715;
    function IBSCBS(const CST: WideString; const cClassTrib: WideString; const gIBSCBS: WideString): WideString; dispid 716;
    function gIBSCBS(vBC: Double; const gIBSUF: WideString; const gIBSMun: WideString;
                     vIBS: Double; const gCBS: WideString; const gTribRegular_Opc: WideString;
                     const gIBSCredPres_Opc: WideString; const gCBSCredPres_Opc: WideString;
                     const gTribCompraGov_Opc: WideString): WideString; dispid 717;
    function gIBSUF(pIBSUF: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double;
                    pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vIBSUF: Double): WideString; dispid 718;
    function gIBSMun(pIBSMun: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double;
                     pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vIBSMun: Double): WideString; dispid 719;
    function gCBS(pCBS: Double; pDif_Opc: Double; vDif_Opc: Double; vDevTrib_Opc: Double;
                  pRedAliq_Opc: Double; pAliqEfet_Opc: Double; vCBS: Double): WideString; dispid 720;
    function gTribRegular(const CSTReg: WideString; const cClassTribReg: WideString;
                          pAliqEfetRegIBSUF: Double; vTribRegIBSUF: Double;
                          pAliqEfetRegIBSMun: Double; vTribRegIBSMun: Double;
                          pAliqEfetRegCBS: Double; vTribRegCBS: Double): WideString; dispid 721;
    function gIBSCredPres(const cCredPres: WideString; pCredPres: Double; vCredPres_Alt: Double;
                          vCredPresCondSus_Alt: Double): WideString; dispid 722;
    function gCBSCredPres(const cCredPres: WideString; pCredPres: Double; vCredPres_Alt: Double;
                          vCredPresCondSus_Alt: Double): WideString; dispid 723;
    function gTribCompraGov(pAliqIBSUF: Double; vTribIBSUF: Double; pAliqIBSMun: Double;
                            vTribIBSMun: Double; pAliqCBS: Double; vTribCBS: Double): WideString; dispid 724;
    function ImpCST00CTeOS(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double;
                           vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                           const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString;
                           const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; dispid 725;
    function ImpCST20CTeOS(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double;
                           vICMS: Double; vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                           const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString;
                           vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                           const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; dispid 726;
    function ImpCST45CTeOS(const CST: WideString; vTotTrib_Opc: Double;
                           const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                           const infTribFed_Opc: WideString; vICMSDeson_Opc: Double;
                           const cBenef_Opc: WideString; const IBSCBS_Opc: WideString;
                           vTotDFe_Opc: Double): WideString; dispid 727;
    function ImpCST90CTeOS(const CST: WideString; pRedBC_Opc: Double; vBC: Double; pICMS: Double;
                           vICMS: Double; vCred: Double; vTotTrib_Opc: Double;
                           const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                           const infTribFed_Opc: WideString; vICMSDeson_Opc: Double;
                           const cBenef_Opc: WideString; const IBSCBS_Opc: WideString;
                           vTotDFe_Opc: Double): WideString; dispid 728;
    function ImpCSTOutraUFCTeOS(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double;
                                pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double;
                                const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                                const infTribFed_Opc: WideString; vICMSDeson_Opc: Double;
                                const cBenef_Opc: WideString; const IBSCBS_Opc: WideString;
                                vTotDFe_Opc: Double): WideString; dispid 729;
    function ImpCSTSNCTeOS(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                           const ICMSUFFim_Opc: WideString; const infTribFed_Opc: WideString;
                           const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; dispid 730;
    function CTeSimpRT(const Versao: WideString; const Id: WideString; const ide: WideString;
                       const complOpc: WideString; const emit: WideString; const toma: WideString;
                       const infCarga: WideString; const det: WideString;
                       const infModal: WideString; const cobr_Opc: WideString;
                       const infCteSub_Opc: WideString; const imp: WideString; vTPrest: Double;
                       vTRec: Double; const autXMLOpc: WideString; const infRespTecOpc: WideString;
                       const infSuplCTeOpc: WideString; vTotDFe_Opc: Double): WideString; dispid 731;
    function ImpCST00Simp(const CST: WideString; vBC: Double; pICMS: Double; vICMS: Double;
                          vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                          const ICMSUFFim_Opc: WideString; const IBSCBS_Opc: WideString): WideString; dispid 732;
    function ImpCST20Simp(const CST: WideString; pRedBC: Double; vBC: Double; pICMS: Double;
                          vICMS: Double; vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                          const ICMSUFFim_Opc: WideString; vICMSDeson_Opc: Double;
                          const cBenef_Opc: WideString; const IBSCBS_Opc: WideString): WideString; dispid 733;
    function ImpCST45Simp(const CST: WideString; vTotTrib_Opc: Double;
                          const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                          vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                          const IBSCBS_Opc: WideString): WideString; dispid 734;
    function ImpCST60Simp(const CST: WideString; vBCSTRet: Double; pICMSSTRet: Double;
                          vICMSSTRet: Double; vCred: Double; vTotTrib_Opc: Double;
                          const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                          vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                          const IBSCBS_Opc: WideString): WideString; dispid 735;
    function ImpCST90Simp(const CST: WideString; pRedBC_Opc: Double; vBC: Double; pICMS: Double;
                          vICMS: Double; vCred: Double; vTotTrib_Opc: Double;
                          const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                          vICMSDeson_Opc: Double; const cBenef_Opc: WideString;
                          const IBSCBS_Opc: WideString): WideString; dispid 736;
    function ImpCSTOutraUFSimp(const CST: WideString; pRedBCOutraUF: Double; vBCOutraUF: Double;
                               pICMSOutraUF: Double; vICMSOutraUF: Double; vTotTrib_Opc: Double;
                               const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                               vICMSDeson_Opc: Double; const _cBenef_Opc: WideString;
                               const IBSCBS_Opc: WideString): WideString; dispid 737;
    function ImpCSTSNSimp(vTotTrib_Opc: Double; const infAdFisco_Opc: WideString;
                          const ICMSUFFim_Opc: WideString; const IBSCBS_Opc: WideString): WideString; dispid 738;
    function ideVFPRT(cUF: Integer; cCT: Integer; const CFOP: WideString; const natOp: WideString;
                      mod_: Integer; serie: Integer; nCT: Integer; const dhEmi: WideString;
                      tpImp: Integer; tpEmis: Integer; cDV: Integer; tpAmb: Integer;
                      tpCTe: Integer; procEmi: Integer; const verProc: WideString;
                      const indGlobalizado: WideString; const xMunEnv: WideString;
                      const modal: WideString; tpServ: Integer; const xMunIni: WideString;
                      const xMunFim: WideString; retira: Integer; const xDetRetira: WideString;
                      indIEToma: Integer; const tomador: WideString; const camposVFP: WideString): WideString; dispid 739;
    function ideCTeOSRT(cUF: Integer; cCT: Integer; const CFOP: WideString;
                        const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                        const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                        tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                        const verProc: WideString; const cMunEnv: WideString;
                        const xMunEnv: WideString; const UFEnv: WideString;
                        const modal: WideString; tpServ: Integer; indIEToma: Integer;
                        const cMunIni_Opc: WideString; const xMunIni_Opc: WideString;
                        const UFIni_Opc: WideString; const cMunFim_Opc: WideString;
                        const xMunFim_Opc: WideString; const UFFim_Opc: WideString;
                        const infPercurso_Opc: WideString; const dhCont_Opc: WideString;
                        const xJust_Opc: WideString; const comprasGov_Opc: WideString): WideString; dispid 740;
    function ideCTeOSVFPRT(cUF: Integer; cCT: Integer; const CFOP: WideString;
                           const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                           const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                           tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                           const verProc: WideString; const xMunEnv: WideString;
                           const modal: WideString; tpServ: Integer; indIEToma: Integer;
                           const xMunIni: WideString; const xMunFim: WideString;
                           const infPercurso_Opc: WideString; const dhCont_Opc: WideString;
                           const xJust_Opc: WideString; const gCompraGov_Opc: WideString): WideString; dispid 741;
    function IBSCBSv110(const CST: WideString; const cClassTrib: WideString;
                        const indDoacao_Opc: WideString; const gIBSCBS_Opc: WideString;
                        const gEstornoCred_Opc: WideString): WideString; dispid 742;
    function gIBSCBSv110(vBC: Double; const gIBSUF: WideString; const gIBSMun: WideString;
                         vIBS: Double; const gCBS: WideString; const gTribRegular_Opc: WideString;
                         const gTribCompraGov_Opc: WideString): WideString; dispid 743;
    function gEstornoCred(vIBSEstCred: Double; vCBSEstCred: Double): WideString; dispid 744;
    function pgto(nPag: Integer; const idTransacao: WideString; tpMeioPgto: Integer;
                  const CNPJReceb: WideString; const CNPJBasePSP: WideString): WideString; dispid 745;
    function CTeRT(const Versao: WideString; const Id: WideString; const ide: WideString;
                   const compl_Opc: WideString; const emit: WideString; const rem_Opc: WideString;
                   const exped_Opc: WideString; const receb_Opc: WideString;
                   const dest: WideString; const vPrest: WideString; const imp: WideString;
                   const infCTe: WideString; const autXML_Opc: WideString;
                   const infRespTec_Opc: WideString; const infCTeSupl_Opc: WideString;
                   const pgto_Opc: WideString): WideString; dispid 746;
    function CTeSimpRT2(const Versao: WideString; const Id: WideString; const ide: WideString;
                        const complOpc: WideString; const emit: WideString; const toma: WideString;
                        const infCarga: WideString; const det: WideString;
                        const infModal: WideString; const cobr_Opc: WideString;
                        const infCteSub_Opc: WideString; const imp: WideString; vTPrest: Double;
                        vTRec: Double; const autXMLOpc: WideString;
                        const infRespTecOpc: WideString; const infSuplCTeOpc: WideString;
                        vTotDFe_Opc: Double; const pgto_Opc: WideString): WideString; dispid 747;
    function CTeOSRT(const Versao: WideString; const Id: WideString; const ide: WideString;
                     const complOpc: WideString; const emit: WideString; const tomaOpc: WideString;
                     const vPrest: WideString; const imp: WideString; const infCTe: WideString;
                     const autXMLOpc: WideString; const infRespTecOpc: WideString;
                     const infSuplCTeOpc: WideString; const pgto_Opc: WideString): WideString; dispid 748;
    function EnviaVincPgto(const siglaWS: WideString; tipoAmbiente: Integer;
                           const nomeCertificado: WideString; const Versao: WideString;
                           out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                           out msgResultado: WideString; nroVincPgto: Integer;
                           const chaveCTe: WideString; const nProt: WideString; nPag: Integer;
                           const idTransacao: WideString; tpMeioPgto: Integer;
                           const CNPJReceb: WideString; const CNPJBasePSP: WideString;
                           const dhEvento: WideString; out nProtocolo: WideString;
                           out dProtocolo: WideString; const proxy: WideString;
                           const usuario: WideString; const senha: WideString;
                           const licenca: WideString): WideString; dispid 749;
    function CancelaVincPgto(const siglaWS: WideString; tipoAmbiente: Integer;
                             const nomeCertificado: WideString; const Versao: WideString;
                             out msgDados: WideString; out msgRetWS: WideString;
                             out cStat: Integer; out msgResultado: WideString;
                             nroCancVincPgto: Integer; const chaveCTe: WideString;
                             const nProt: WideString; const nProtVincPgto: WideString;
                             const dhEvento: WideString; out nProtocolo: WideString;
                             out dProtocolo: WideString; const proxy: WideString;
                             const usuario: WideString; const senha: WideString;
                             const licenca: WideString): WideString; dispid 750;
    function gCompraGovv114(tpEnteGov: Integer; pRedutor: Double; tpOperGov: Integer;
                            const refDFeAnt_Opc: WideString): WideString; dispid 751;
    function refDFeAnt(const chaveDFe: WideString): WideString; dispid 752;
    function gIBSUFv100(pIBSUF: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double;
                        vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double;
                        vIBSUF: Double): WideString; dispid 753;
    function gIBSMunv100(pIBSMun: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double;
                         vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double;
                         vIBSMun: Double): WideString; dispid 754;
    function gCBSv100(pCBS: Double; pDif_Opc: Double; vDif_Opc: Double; pDevTrib_Opc: Double;
                      vDevTrib_Opc: Double; pRedAliq_Opc: Double; pAliqEfet_Opc: Double;
                      pAliqEfetRegCBS_Opc: Double; vTribRegCBS_Opc: Double; vCBS: Double): WideString; dispid 755;
    function emitenteRTC(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString;
                         const xNome: WideString; const xFant_Opc: WideString;
                         const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                         const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                         const CEP_Opc: WideString; const UF: WideString;
                         const fone_Opc: WideString; const CRT_Opc: WideString;
                         const ISUFEmit_Opc: WideString): WideString; dispid 756;
    function identificadorRTv100(cUF: Integer; cCT: Integer; const CFOP: WideString;
                                 const natOp: WideString; mod_: Integer; serie: Integer;
                                 nCT: Integer; const dhEmi: WideString; tpImp: Integer;
                                 tpEmis: Integer; cDV: Integer; tpAmb: Integer; tpCTe: Integer;
                                 procEmi: Integer; const verProc: WideString;
                                 const indGlobalizado: WideString; const cMunEnv: WideString;
                                 const xMunEnv: WideString; const UFEnv: WideString;
                                 const modal: WideString; tpServ: Integer;
                                 const cMunIni: WideString; const xMunIni: WideString;
                                 const UFIni: WideString; const cMunFim: WideString;
                                 const xMunFim: WideString; const UFFim: WideString;
                                 retira: Integer; const xDetRetira: WideString; indIEToma: Integer;
                                 const tomador: WideString; const dhCont_Opc: WideString;
                                 const xJust_Opc: WideString; const comprasGov_Opc: WideString;
                                 const tpPagAnt_Opc: WideString; const chDFePagAnt_Opc: WideString): WideString; dispid 757;
    function ideCTeSimpRTv100(cUF: Integer; cCT: Integer; const CFOP: WideString;
                              const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                              const dhEmi: WideString; tpImp: Integer; tpEmis: Integer;
                              cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                              const verProc: WideString; const cMunEnv: WideString;
                              const xMunEnv: WideString; const UFEnv: WideString;
                              const modal: WideString; tpServ: Integer; const UFIni: WideString;
                              const UFFim: WideString; retira: Integer;
                              const xDetRetira: WideString; const dhCont_Opc: WideString;
                              const xJust_Opc: WideString; const comprasGov_Opc: WideString;
                              const tpPagAnt_Opc: WideString; const chDFePagAnt_Opc: WideString): WideString; dispid 758;
    function ideCTeOSRTv100(cUF: Integer; cCT: Integer; const CFOP: WideString;
                            const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                            const dhEmi: WideString; tpImp: Integer; tpEmis: Integer; cDV: Integer;
                            tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                            const verProc: WideString; const cMunEnv: WideString;
                            const xMunEnv: WideString; const UFEnv: WideString;
                            const modal: WideString; tpServ: Integer; indIEToma: Integer;
                            const cMunIni_Opc: WideString; const xMunIni_Opc: WideString;
                            const UFIni_Opc: WideString; const cMunFim_Opc: WideString;
                            const xMunFim_Opc: WideString; const UFFim_Opc: WideString;
                            const infPercurso_Opc: WideString; const dhCont_Opc: WideString;
                            const xJust_Opc: WideString; const comprasGov_Opc: WideString;
                            const tpPagAnt_Opc: WideString; const chDFePagAnt_Opc: WideString): WideString; dispid 759;
    function ideCTeSimpRTVFP(cUF: Integer; cCT: Integer; const CFOP: WideString;
                             const natOp: WideString; mod_: Integer; serie: Integer; nCT: Integer;
                             const dhEmi: WideString; tpImp: Integer; tpEmis: Integer;
                             cDV: Integer; tpAmb: Integer; tpCTe: Integer; procEmi: Integer;
                             const verProc: WideString; const cMunEnv: WideString;
                             const xMunEnv: WideString; const UFEnv: WideString;
                             const modal: WideString; tpServ: Integer; const UFIni: WideString;
                             const UFFim: WideString; retira: Integer;
                             const xDetRetira: WideString; const camposVFP: WideString): WideString; dispid 760;
    function chDFePagAnt(const chaveDFe: WideString): WideString; dispid 761;
    function chCTePagAnt(const chaveCTe: WideString): WideString; dispid 762;
    function vPrestRTC(vTPrest: Double; vRec: Double; const Comp_Opc: WideString; vTPrestLiq: Double): WideString; dispid 763;
    function detCTeSimpRTC(nItem: Integer; const cMunIni: WideString; const xMunIni: WideString;
                           const cMunFim: WideString; const xMunFim: WideString; vPrest: Double;
                           vRec: Double; const Comp_Opc: WideString; const infDFe: WideString;
                           vPrestLiq: Double; const IBSCBS_Opc: WideString): WideString; dispid 764;
    function CTeSimpRT3(const Versao: WideString; const Id: WideString; const ide: WideString;
                        const complOpc: WideString; const emit: WideString; const toma: WideString;
                        const infCarga: WideString; const det: WideString;
                        const infModal: WideString; const cobr_Opc: WideString;
                        const infCteSub_Opc: WideString; const imp: WideString; vTPrest: Double;
                        vTRec: Double; const autXMLOpc: WideString;
                        const infRespTec_Opc: WideString; const infSuplCTe_Opc: WideString;
                        vTotDFe_Opc: Double; const pgto_Opc: WideString;
                        const IBSCBSTot_Opc: WideString; vTPrestLiq: Double): WideString; dispid 765;
    function ImpICMSPrevisto(vICMSPrevisto: Double; vTotTrib_Opc: Double;
                             const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString;
                             const IBSCBS_Opc: WideString; vTotDFe_Opc: Double): WideString; dispid 766;
    function ImpICMSPrevistoSimp(vICMSPrevisto: Double; vTotTrib_Opc: Double;
                                 const infAdFisco_Opc: WideString; const ICMSUFFim_Opc: WideString): WideString; dispid 767;
    function ImpICMSPrevistoCTeOS(vICMSPrevisto: Double; vTotTrib_Opc: Double;
                                  const infAdFisco_Opc: WideString;
                                  const ICMSUFFim_Opc: WideString;
                                  const infTribFed_Opc: WideString; const IBSCBS_Opc: WideString;
                                  vTotDFe_Opc: Double): WideString; dispid 768;
    function IBSCBSTot(vBCIBSCBS: Double; vDif_UF: Double; vDevTrib_UF: Double; vIBSUF: Double;
                       vDif_Mun: Double; vDevTrib_Mun: Double; vIBSMun: Double; vIBS: Double;
                       vDif_CBS: Double; vDevTrib: Double; vCBS: Double;
                       const gTribSN_Opc: WideString; const gEstornoCred_Opc: WideString): WideString; dispid 769;
    function EnviaApropriaCredPres(const siglaWS: WideString; tipoAmbiente: Integer;
                                   const nomeCertificado: WideString; const Versao: WideString;
                                   out msgDados: WideString; out msgRetWS: WideString;
                                   out cStat: Integer; out msgResultado: WideString;
                                   const CNPJAutor: WideString; const chaveDFe: WideString;
                                   const dhEvento: WideString; nSeqEvento: Integer;
                                   vBCCredPres: Double; const cCredPres: WideString;
                                   pCredPresIBS: Double; vCredPresIBS: Double;
                                   pCredPresCBS: Double; vCredPresCBS: Double;
                                   out nProtocolo: WideString; out dProtocolo: WideString;
                                   const proxy: WideString; const usuario: WideString;
                                   const senha: WideString; const licenca: WideString): WideString; dispid 770;
    function emitenteSN(const CNPJ: WideString; const IE: WideString; const IEST_Opc: WideString;
                        const xNome: WideString; const xFant_Opc: WideString;
                        const xLgr: WideString; const nro: WideString; const xCpl_Opc: WideString;
                        const xBairro: WideString; const cMun: WideString; const xMun: WideString;
                        const CEP_Opc: WideString; const UF: WideString;
                        const fone_Opc: WideString; const CRT_Opc: WideString;
                        const ISUFEmit_Opc: WideString; const tpRegimeIBSCBS_Opc: WideString): WideString; dispid 771;
    function gTribSN(pIBSSN_Opc: Double; vIBSSN_Opc: Double; pCBSSN_Opc: Double; vCBSSN_Opc: Double): WideString; dispid 772;
    function IBSCBSSN(const CST: WideString; const cClassTrib: WideString;
                      const indDoacao_Opc: WideString; const gIBSCBS_Opc: WideString;
                      const gTribSN_Opc: WideString; const gEstornoCred_Opc: WideString): WideString; dispid 773;
    function gTribSNTot(vIBSSN: Double; vCBSSN: Double): WideString; dispid 774;
  end;

// *********************************************************************//
// DispIntf:  CTe_Util_Events
// Flags:     (4096) Dispatchable
// GUID:      {2C49EADB-6764-4F8D-982F-A6591DB65612}
// *********************************************************************//
  CTe_Util_Events = dispinterface
    ['{2C49EADB-6764-4F8D-982F-A6591DB65612}']
  end;

// *********************************************************************//
// Interface: _QREncoderTables
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}
// *********************************************************************//
  _QREncoderTables = interface(IDispatch)
    ['{03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}']
  end;

// *********************************************************************//
// DispIntf:  _QREncoderTablesDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}
// *********************************************************************//
  _QREncoderTablesDisp = dispinterface
    ['{03B69ECE-94B0-3D8E-BDE2-D9C0E4415A08}']
  end;

// *********************************************************************//
// Interface: _QREncoder
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A1447CA0-E1BC-3250-9EA3-1A8649418D87}
// *********************************************************************//
  _QREncoder = interface(IDispatch)
    ['{A1447CA0-E1BC-3250-9EA3-1A8649418D87}']
  end;

// *********************************************************************//
// DispIntf:  _QREncoderDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A1447CA0-E1BC-3250-9EA3-1A8649418D87}
// *********************************************************************//
  _QREncoderDisp = dispinterface
    ['{A1447CA0-E1BC-3250-9EA3-1A8649418D87}']
  end;

// *********************************************************************//
// Interface: _QRCodeEncoder
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}
// *********************************************************************//
  _QRCodeEncoder = interface(IDispatch)
    ['{1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}']
  end;

// *********************************************************************//
// DispIntf:  _QRCodeEncoderDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}
// *********************************************************************//
  _QRCodeEncoderDisp = dispinterface
    ['{1AEC4598-E84B-3D98-9EF3-5AFA76BE6CA7}']
  end;

// *********************************************************************//
// Interface: _MDFeRecepcaoEvento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7B54CEBA-6D0A-33B3-911D-1F038B65AC95}
// *********************************************************************//
  _MDFeRecepcaoEvento = interface(IDispatch)
    ['{7B54CEBA-6D0A-33B3-911D-1F038B65AC95}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeRecepcaoEventoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7B54CEBA-6D0A-33B3-911D-1F038B65AC95}
// *********************************************************************//
  _MDFeRecepcaoEventoDisp = dispinterface
    ['{7B54CEBA-6D0A-33B3-911D-1F038B65AC95}']
  end;

// *********************************************************************//
// Interface: _mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B680DF68-36EF-3DE0-A802-A48AB4E25686}
// *********************************************************************//
  _mdfeCabecMsg = interface(IDispatch)
    ['{B680DF68-36EF-3DE0-A802-A48AB4E25686}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B680DF68-36EF-3DE0-A802-A48AB4E25686}
// *********************************************************************//
  _mdfeCabecMsgDisp = dispinterface
    ['{B680DF68-36EF-3DE0-A802-A48AB4E25686}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoEventoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7B0CC6FA-D7F8-34DA-B751-56BCCAD56907}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventHandler = interface(IDispatch)
    ['{7B0CC6FA-D7F8-34DA-B751-56BCCAD56907}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoEventoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7B0CC6FA-D7F8-34DA-B751-56BCCAD56907}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface
    ['{7B0CC6FA-D7F8-34DA-B751-56BCCAD56907}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoEventoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FC2A0EE6-1770-3F7A-8CEC-F750F8BBF658}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventArgs = interface(IDispatch)
    ['{FC2A0EE6-1770-3F7A-8CEC-F750F8BBF658}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoEventoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FC2A0EE6-1770-3F7A-8CEC-F750F8BBF658}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventArgsDisp = dispinterface
    ['{FC2A0EE6-1770-3F7A-8CEC-F750F8BBF658}']
  end;

// *********************************************************************//
// Interface: _CteStatusServico
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6A952BD0-43A0-3A50-9619-F16301F2E1FA}
// *********************************************************************//
  _CteStatusServico = interface(IDispatch)
    ['{6A952BD0-43A0-3A50-9619-F16301F2E1FA}']
  end;

// *********************************************************************//
// DispIntf:  _CteStatusServicoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6A952BD0-43A0-3A50-9619-F16301F2E1FA}
// *********************************************************************//
  _CteStatusServicoDisp = dispinterface
    ['{6A952BD0-43A0-3A50-9619-F16301F2E1FA}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteStatusServicoCT_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {847DEFCB-3AC3-399C-BD03-504C0F141220}
// *********************************************************************//
  _CTe_Util_cteStatusServicoCT_cteCabecMsg = interface(IDispatch)
    ['{847DEFCB-3AC3-399C-BD03-504C0F141220}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteStatusServicoCT_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {847DEFCB-3AC3-399C-BD03-504C0F141220}
// *********************************************************************//
  _CTe_Util_cteStatusServicoCT_cteCabecMsgDisp = dispinterface
    ['{847DEFCB-3AC3-399C-BD03-504C0F141220}']
  end;

// *********************************************************************//
// Interface: _cteStatusServicoCTCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {59D057C1-370C-3F25-B217-7A84DB8E85DB}
// *********************************************************************//
  _cteStatusServicoCTCompletedEventHandler = interface(IDispatch)
    ['{59D057C1-370C-3F25-B217-7A84DB8E85DB}']
  end;

// *********************************************************************//
// DispIntf:  _cteStatusServicoCTCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {59D057C1-370C-3F25-B217-7A84DB8E85DB}
// *********************************************************************//
  _cteStatusServicoCTCompletedEventHandlerDisp = dispinterface
    ['{59D057C1-370C-3F25-B217-7A84DB8E85DB}']
  end;

// *********************************************************************//
// Interface: _cteStatusServicoCTCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}
// *********************************************************************//
  _cteStatusServicoCTCompletedEventArgs = interface(IDispatch)
    ['{505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}']
  end;

// *********************************************************************//
// DispIntf:  _cteStatusServicoCTCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}
// *********************************************************************//
  _cteStatusServicoCTCompletedEventArgsDisp = dispinterface
    ['{505E7D6B-09DD-3BB6-A4A0-13C91E1F8A72}']
  end;

// *********************************************************************//
// Interface: _CteRetRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {65507007-2035-30A1-BFE8-F631A0E220F2}
// *********************************************************************//
  _CteRetRecepcao = interface(IDispatch)
    ['{65507007-2035-30A1-BFE8-F631A0E220F2}']
  end;

// *********************************************************************//
// DispIntf:  _CteRetRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {65507007-2035-30A1-BFE8-F631A0E220F2}
// *********************************************************************//
  _CteRetRecepcaoDisp = dispinterface
    ['{65507007-2035-30A1-BFE8-F631A0E220F2}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BAB213D3-5D20-3233-A7E8-C39F8180FED5}
// *********************************************************************//
  _CTe_Util_cteRetRecepcaoLote_cteCabecMsg = interface(IDispatch)
    ['{BAB213D3-5D20-3233-A7E8-C39F8180FED5}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteRetRecepcaoLote_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BAB213D3-5D20-3233-A7E8-C39F8180FED5}
// *********************************************************************//
  _CTe_Util_cteRetRecepcaoLote_cteCabecMsgDisp = dispinterface
    ['{BAB213D3-5D20-3233-A7E8-C39F8180FED5}']
  end;

// *********************************************************************//
// Interface: _cteRetRecepcaoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {901D1FF9-7D35-3B68-8966-CABEFBDADCA8}
// *********************************************************************//
  _cteRetRecepcaoCompletedEventHandler = interface(IDispatch)
    ['{901D1FF9-7D35-3B68-8966-CABEFBDADCA8}']
  end;

// *********************************************************************//
// DispIntf:  _cteRetRecepcaoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {901D1FF9-7D35-3B68-8966-CABEFBDADCA8}
// *********************************************************************//
  _cteRetRecepcaoCompletedEventHandlerDisp = dispinterface
    ['{901D1FF9-7D35-3B68-8966-CABEFBDADCA8}']
  end;

// *********************************************************************//
// Interface: _cteRetRecepcaoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {858F6CC8-BC36-356A-AF92-04A9F957D769}
// *********************************************************************//
  _cteRetRecepcaoCompletedEventArgs = interface(IDispatch)
    ['{858F6CC8-BC36-356A-AF92-04A9F957D769}']
  end;

// *********************************************************************//
// DispIntf:  _cteRetRecepcaoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {858F6CC8-BC36-356A-AF92-04A9F957D769}
// *********************************************************************//
  _cteRetRecepcaoCompletedEventArgsDisp = dispinterface
    ['{858F6CC8-BC36-356A-AF92-04A9F957D769}']
  end;

// *********************************************************************//
// Interface: _CteRecepcaoSinc
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2E51C1A-034A-3847-8E28-8C8A20A16A95}
// *********************************************************************//
  _CteRecepcaoSinc = interface(IDispatch)
    ['{A2E51C1A-034A-3847-8E28-8C8A20A16A95}']
  end;

// *********************************************************************//
// DispIntf:  _CteRecepcaoSincDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A2E51C1A-034A-3847-8E28-8C8A20A16A95}
// *********************************************************************//
  _CteRecepcaoSincDisp = dispinterface
    ['{A2E51C1A-034A-3847-8E28-8C8A20A16A95}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoSincCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4CF0878D-C2C2-30BC-B82F-45684EA895C7}
// *********************************************************************//
  _cteRecepcaoSincCompletedEventHandler = interface(IDispatch)
    ['{4CF0878D-C2C2-30BC-B82F-45684EA895C7}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoSincCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4CF0878D-C2C2-30BC-B82F-45684EA895C7}
// *********************************************************************//
  _cteRecepcaoSincCompletedEventHandlerDisp = dispinterface
    ['{4CF0878D-C2C2-30BC-B82F-45684EA895C7}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoSincCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {08AC3581-4CCD-3730-BA72-C61E1D7C8681}
// *********************************************************************//
  _cteRecepcaoSincCompletedEventArgs = interface(IDispatch)
    ['{08AC3581-4CCD-3730-BA72-C61E1D7C8681}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoSincCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {08AC3581-4CCD-3730-BA72-C61E1D7C8681}
// *********************************************************************//
  _cteRecepcaoSincCompletedEventArgsDisp = dispinterface
    ['{08AC3581-4CCD-3730-BA72-C61E1D7C8681}']
  end;

// *********************************************************************//
// Interface: _CteRecepcaoOS
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2F0A7796-6E0E-364B-B819-BCB868CD8269}
// *********************************************************************//
  _CteRecepcaoOS = interface(IDispatch)
    ['{2F0A7796-6E0E-364B-B819-BCB868CD8269}']
  end;

// *********************************************************************//
// DispIntf:  _CteRecepcaoOSDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2F0A7796-6E0E-364B-B819-BCB868CD8269}
// *********************************************************************//
  _CteRecepcaoOSDisp = dispinterface
    ['{2F0A7796-6E0E-364B-B819-BCB868CD8269}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteRecepcaoOS_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {63A1F467-E5AA-3EF5-B81B-47D93720AACF}
// *********************************************************************//
  _CTe_Util_cteRecepcaoOS_cteCabecMsg = interface(IDispatch)
    ['{63A1F467-E5AA-3EF5-B81B-47D93720AACF}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteRecepcaoOS_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {63A1F467-E5AA-3EF5-B81B-47D93720AACF}
// *********************************************************************//
  _CTe_Util_cteRecepcaoOS_cteCabecMsgDisp = dispinterface
    ['{63A1F467-E5AA-3EF5-B81B-47D93720AACF}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoOSCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {59EAF3B4-8EF2-3756-A22E-455047913FD6}
// *********************************************************************//
  _cteRecepcaoOSCompletedEventHandler = interface(IDispatch)
    ['{59EAF3B4-8EF2-3756-A22E-455047913FD6}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoOSCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {59EAF3B4-8EF2-3756-A22E-455047913FD6}
// *********************************************************************//
  _cteRecepcaoOSCompletedEventHandlerDisp = dispinterface
    ['{59EAF3B4-8EF2-3756-A22E-455047913FD6}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoOSCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {11EADA4E-50B0-3414-8264-C36B94087502}
// *********************************************************************//
  _cteRecepcaoOSCompletedEventArgs = interface(IDispatch)
    ['{11EADA4E-50B0-3414-8264-C36B94087502}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoOSCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {11EADA4E-50B0-3414-8264-C36B94087502}
// *********************************************************************//
  _cteRecepcaoOSCompletedEventArgsDisp = dispinterface
    ['{11EADA4E-50B0-3414-8264-C36B94087502}']
  end;

// *********************************************************************//
// Interface: _CteRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}
// *********************************************************************//
  _CteRecepcao = interface(IDispatch)
    ['{F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}']
  end;

// *********************************************************************//
// DispIntf:  _CteRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}
// *********************************************************************//
  _CteRecepcaoDisp = dispinterface
    ['{F3B66D0B-DE22-39C8-8A2F-2E9154C5DDF6}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteRecepcaoLote_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6DB8CE00-960E-334C-A60C-2E928442E3FD}
// *********************************************************************//
  _CTe_Util_cteRecepcaoLote_cteCabecMsg = interface(IDispatch)
    ['{6DB8CE00-960E-334C-A60C-2E928442E3FD}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteRecepcaoLote_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6DB8CE00-960E-334C-A60C-2E928442E3FD}
// *********************************************************************//
  _CTe_Util_cteRecepcaoLote_cteCabecMsgDisp = dispinterface
    ['{6DB8CE00-960E-334C-A60C-2E928442E3FD}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}
// *********************************************************************//
  _cteRecepcaoLoteCompletedEventHandler = interface(IDispatch)
    ['{71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}
// *********************************************************************//
  _cteRecepcaoLoteCompletedEventHandlerDisp = dispinterface
    ['{71F0FFDA-1B36-3FF9-B3CA-ADBD9B1883CC}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}
// *********************************************************************//
  _cteRecepcaoLoteCompletedEventArgs = interface(IDispatch)
    ['{45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}
// *********************************************************************//
  _cteRecepcaoLoteCompletedEventArgsDisp = dispinterface
    ['{45B9F044-A8C6-3754-A2C4-BDA1C8494C4A}']
  end;

// *********************************************************************//
// Interface: _CTeRecepcaoGTVe
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}
// *********************************************************************//
  _CTeRecepcaoGTVe = interface(IDispatch)
    ['{BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}']
  end;

// *********************************************************************//
// DispIntf:  _CTeRecepcaoGTVeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}
// *********************************************************************//
  _CTeRecepcaoGTVeDisp = dispinterface
    ['{BBB73890-D2CD-3D09-8BF1-436C0C3C9C7F}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoGTVeCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}
// *********************************************************************//
  _cteRecepcaoGTVeCompletedEventHandler = interface(IDispatch)
    ['{4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoGTVeCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}
// *********************************************************************//
  _cteRecepcaoGTVeCompletedEventHandlerDisp = dispinterface
    ['{4D3975D2-ED3F-3D8C-9BC8-D1F56ED83926}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoGTVeCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}
// *********************************************************************//
  _cteRecepcaoGTVeCompletedEventArgs = interface(IDispatch)
    ['{E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoGTVeCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}
// *********************************************************************//
  _cteRecepcaoGTVeCompletedEventArgsDisp = dispinterface
    ['{E3101CC4-3AC6-3A4C-A326-BE40FAE8CD03}']
  end;

// *********************************************************************//
// Interface: _CteRecepcaoEvento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A7D94986-710B-362A-9265-88D9EEF55BD3}
// *********************************************************************//
  _CteRecepcaoEvento = interface(IDispatch)
    ['{A7D94986-710B-362A-9265-88D9EEF55BD3}']
  end;

// *********************************************************************//
// DispIntf:  _CteRecepcaoEventoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A7D94986-710B-362A-9265-88D9EEF55BD3}
// *********************************************************************//
  _CteRecepcaoEventoDisp = dispinterface
    ['{A7D94986-710B-362A-9265-88D9EEF55BD3}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteRecepcaoEvento_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {38DFE93D-4280-3B6C-B097-9CA7E00C5257}
// *********************************************************************//
  _CTe_Util_cteRecepcaoEvento_cteCabecMsg = interface(IDispatch)
    ['{38DFE93D-4280-3B6C-B097-9CA7E00C5257}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteRecepcaoEvento_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {38DFE93D-4280-3B6C-B097-9CA7E00C5257}
// *********************************************************************//
  _CTe_Util_cteRecepcaoEvento_cteCabecMsgDisp = dispinterface
    ['{38DFE93D-4280-3B6C-B097-9CA7E00C5257}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoEventoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B5AD9F3A-9050-3852-9205-45CBDFFF25CD}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventHandler = interface(IDispatch)
    ['{B5AD9F3A-9050-3852-9205-45CBDFFF25CD}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoEventoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B5AD9F3A-9050-3852-9205-45CBDFFF25CD}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventHandlerDisp = dispinterface
    ['{B5AD9F3A-9050-3852-9205-45CBDFFF25CD}']
  end;

// *********************************************************************//
// Interface: _cteRecepcaoEventoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {93575C24-56C5-38FD-B97C-4AB177BBA901}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventArgs = interface(IDispatch)
    ['{93575C24-56C5-38FD-B97C-4AB177BBA901}']
  end;

// *********************************************************************//
// DispIntf:  _cteRecepcaoEventoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {93575C24-56C5-38FD-B97C-4AB177BBA901}
// *********************************************************************//
  _cteRecepcaoEventoCompletedEventArgsDisp = dispinterface
    ['{93575C24-56C5-38FD-B97C-4AB177BBA901}']
  end;

// *********************************************************************//
// Interface: _CteInutilizacao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}
// *********************************************************************//
  _CteInutilizacao = interface(IDispatch)
    ['{56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}']
  end;

// *********************************************************************//
// DispIntf:  _CteInutilizacaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}
// *********************************************************************//
  _CteInutilizacaoDisp = dispinterface
    ['{56092B7B-E7DF-3D19-BAAD-6135D2CB9D26}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteInutilizacaoCT_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4E1F52E5-5867-3780-A112-9D571FC5DC93}
// *********************************************************************//
  _CTe_Util_cteInutilizacaoCT_cteCabecMsg = interface(IDispatch)
    ['{4E1F52E5-5867-3780-A112-9D571FC5DC93}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteInutilizacaoCT_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4E1F52E5-5867-3780-A112-9D571FC5DC93}
// *********************************************************************//
  _CTe_Util_cteInutilizacaoCT_cteCabecMsgDisp = dispinterface
    ['{4E1F52E5-5867-3780-A112-9D571FC5DC93}']
  end;

// *********************************************************************//
// Interface: _cteInutilizacaoCTCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}
// *********************************************************************//
  _cteInutilizacaoCTCompletedEventHandler = interface(IDispatch)
    ['{E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}']
  end;

// *********************************************************************//
// DispIntf:  _cteInutilizacaoCTCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}
// *********************************************************************//
  _cteInutilizacaoCTCompletedEventHandlerDisp = dispinterface
    ['{E920A8E8-9AD0-37CA-A282-8A9ED0B2BFE9}']
  end;

// *********************************************************************//
// Interface: _cteInutilizacaoCTCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3247FA06-2826-3461-A438-45216B23B312}
// *********************************************************************//
  _cteInutilizacaoCTCompletedEventArgs = interface(IDispatch)
    ['{3247FA06-2826-3461-A438-45216B23B312}']
  end;

// *********************************************************************//
// DispIntf:  _cteInutilizacaoCTCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3247FA06-2826-3461-A438-45216B23B312}
// *********************************************************************//
  _cteInutilizacaoCTCompletedEventArgsDisp = dispinterface
    ['{3247FA06-2826-3461-A438-45216B23B312}']
  end;

// *********************************************************************//
// Interface: _CTeDistribuicaoDFe
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7184C361-EC57-31B9-B82A-09F0FD03E017}
// *********************************************************************//
  _CTeDistribuicaoDFe = interface(IDispatch)
    ['{7184C361-EC57-31B9-B82A-09F0FD03E017}']
  end;

// *********************************************************************//
// DispIntf:  _CTeDistribuicaoDFeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7184C361-EC57-31B9-B82A-09F0FD03E017}
// *********************************************************************//
  _CTeDistribuicaoDFeDisp = dispinterface
    ['{7184C361-EC57-31B9-B82A-09F0FD03E017}']
  end;

// *********************************************************************//
// Interface: _cteDistDFeInteresseCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {57C9BADF-EBD8-36CD-BC72-067086BACB78}
// *********************************************************************//
  _cteDistDFeInteresseCompletedEventHandler = interface(IDispatch)
    ['{57C9BADF-EBD8-36CD-BC72-067086BACB78}']
  end;

// *********************************************************************//
// DispIntf:  _cteDistDFeInteresseCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {57C9BADF-EBD8-36CD-BC72-067086BACB78}
// *********************************************************************//
  _cteDistDFeInteresseCompletedEventHandlerDisp = dispinterface
    ['{57C9BADF-EBD8-36CD-BC72-067086BACB78}']
  end;

// *********************************************************************//
// Interface: _cteDistDFeInteresseCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {76DB3240-4D3D-3AC7-B1AD-997200D83830}
// *********************************************************************//
  _cteDistDFeInteresseCompletedEventArgs = interface(IDispatch)
    ['{76DB3240-4D3D-3AC7-B1AD-997200D83830}']
  end;

// *********************************************************************//
// DispIntf:  _cteDistDFeInteresseCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {76DB3240-4D3D-3AC7-B1AD-997200D83830}
// *********************************************************************//
  _cteDistDFeInteresseCompletedEventArgsDisp = dispinterface
    ['{76DB3240-4D3D-3AC7-B1AD-997200D83830}']
  end;

// *********************************************************************//
// Interface: _CteConsulta
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {44357119-80F8-349D-8DF6-8C1F53DA92D2}
// *********************************************************************//
  _CteConsulta = interface(IDispatch)
    ['{44357119-80F8-349D-8DF6-8C1F53DA92D2}']
  end;

// *********************************************************************//
// DispIntf:  _CteConsultaDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {44357119-80F8-349D-8DF6-8C1F53DA92D2}
// *********************************************************************//
  _CteConsultaDisp = dispinterface
    ['{44357119-80F8-349D-8DF6-8C1F53DA92D2}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteConsultaCT_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}
// *********************************************************************//
  _CTe_Util_cteConsultaCT_cteCabecMsg = interface(IDispatch)
    ['{4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteConsultaCT_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}
// *********************************************************************//
  _CTe_Util_cteConsultaCT_cteCabecMsgDisp = dispinterface
    ['{4DC7FAA5-CB64-3C5E-8CCB-8B7DB2F184F3}']
  end;

// *********************************************************************//
// Interface: _cteConsultaCTCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5F0BB47-7B02-39EC-A9BD-E5486D594103}
// *********************************************************************//
  _cteConsultaCTCompletedEventHandler = interface(IDispatch)
    ['{F5F0BB47-7B02-39EC-A9BD-E5486D594103}']
  end;

// *********************************************************************//
// DispIntf:  _cteConsultaCTCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F5F0BB47-7B02-39EC-A9BD-E5486D594103}
// *********************************************************************//
  _cteConsultaCTCompletedEventHandlerDisp = dispinterface
    ['{F5F0BB47-7B02-39EC-A9BD-E5486D594103}']
  end;

// *********************************************************************//
// Interface: _cteConsultaCTCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {632B4661-5E5D-3322-967D-508DC95484E1}
// *********************************************************************//
  _cteConsultaCTCompletedEventArgs = interface(IDispatch)
    ['{632B4661-5E5D-3322-967D-508DC95484E1}']
  end;

// *********************************************************************//
// DispIntf:  _cteConsultaCTCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {632B4661-5E5D-3322-967D-508DC95484E1}
// *********************************************************************//
  _cteConsultaCTCompletedEventArgsDisp = dispinterface
    ['{632B4661-5E5D-3322-967D-508DC95484E1}']
  end;

// *********************************************************************//
// Interface: _CteCancelamento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}
// *********************************************************************//
  _CteCancelamento = interface(IDispatch)
    ['{D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}']
  end;

// *********************************************************************//
// DispIntf:  _CteCancelamentoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}
// *********************************************************************//
  _CteCancelamentoDisp = dispinterface
    ['{D485ED44-4AF1-3961-A57E-7EFF9F0DAC71}']
  end;

// *********************************************************************//
// Interface: _CTe_Util_cteCancelamentoCT_cteCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0B27A478-3330-33B1-B3B9-796BEBDEB03E}
// *********************************************************************//
  _CTe_Util_cteCancelamentoCT_cteCabecMsg = interface(IDispatch)
    ['{0B27A478-3330-33B1-B3B9-796BEBDEB03E}']
  end;

// *********************************************************************//
// DispIntf:  _CTe_Util_cteCancelamentoCT_cteCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0B27A478-3330-33B1-B3B9-796BEBDEB03E}
// *********************************************************************//
  _CTe_Util_cteCancelamentoCT_cteCabecMsgDisp = dispinterface
    ['{0B27A478-3330-33B1-B3B9-796BEBDEB03E}']
  end;

// *********************************************************************//
// Interface: _cteCancelamentoCTCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}
// *********************************************************************//
  _cteCancelamentoCTCompletedEventHandler = interface(IDispatch)
    ['{105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}']
  end;

// *********************************************************************//
// DispIntf:  _cteCancelamentoCTCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}
// *********************************************************************//
  _cteCancelamentoCTCompletedEventHandlerDisp = dispinterface
    ['{105B4ECF-31EA-3F30-AEB0-8CA48D5FFF7E}']
  end;

// *********************************************************************//
// Interface: _cteCancelamentoCTCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}
// *********************************************************************//
  _cteCancelamentoCTCompletedEventArgs = interface(IDispatch)
    ['{21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}']
  end;

// *********************************************************************//
// DispIntf:  _cteCancelamentoCTCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}
// *********************************************************************//
  _cteCancelamentoCTCompletedEventArgsDisp = dispinterface
    ['{21831ECD-7ABA-3CA5-A83B-5F03C7A4ADDD}']
  end;

// *********************************************************************//
// Interface: _CleCadastro
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DC271E4C-CD2B-34F4-97D4-35B28D211156}
// *********************************************************************//
  _CleCadastro = interface(IDispatch)
    ['{DC271E4C-CD2B-34F4-97D4-35B28D211156}']
  end;

// *********************************************************************//
// DispIntf:  _CleCadastroDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DC271E4C-CD2B-34F4-97D4-35B28D211156}
// *********************************************************************//
  _CleCadastroDisp = dispinterface
    ['{DC271E4C-CD2B-34F4-97D4-35B28D211156}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLote
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {597DCBFC-3975-3E79-8EF2-8D2D397DD491}
// *********************************************************************//
  _cleCadastroLote = interface(IDispatch)
    ['{597DCBFC-3975-3E79-8EF2-8D2D397DD491}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {597DCBFC-3975-3E79-8EF2-8D2D397DD491}
// *********************************************************************//
  _cleCadastroLoteDisp = dispinterface
    ['{597DCBFC-3975-3E79-8EF2-8D2D397DD491}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLoteResponse
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5EDD54AD-6D4A-33FE-84DF-808131515507}
// *********************************************************************//
  _cleCadastroLoteResponse = interface(IDispatch)
    ['{5EDD54AD-6D4A-33FE-84DF-808131515507}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteResponseDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5EDD54AD-6D4A-33FE-84DF-808131515507}
// *********************************************************************//
  _cleCadastroLoteResponseDisp = dispinterface
    ['{5EDD54AD-6D4A-33FE-84DF-808131515507}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}
// *********************************************************************//
  _cleCadastroLoteCompletedEventHandler = interface(IDispatch)
    ['{2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}
// *********************************************************************//
  _cleCadastroLoteCompletedEventHandlerDisp = dispinterface
    ['{2F79DC59-E5CA-3408-A58A-ABE1A497CCD0}']
  end;

// *********************************************************************//
// Interface: _cleCadastroLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4E8011FA-2284-3F29-97B8-0C439807FCDD}
// *********************************************************************//
  _cleCadastroLoteCompletedEventArgs = interface(IDispatch)
    ['{4E8011FA-2284-3F29-97B8-0C439807FCDD}']
  end;

// *********************************************************************//
// DispIntf:  _cleCadastroLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4E8011FA-2284-3F29-97B8-0C439807FCDD}
// *********************************************************************//
  _cleCadastroLoteCompletedEventArgsDisp = dispinterface
    ['{4E8011FA-2284-3F29-97B8-0C439807FCDD}']
  end;

// *********************************************************************//
// The Class CoUtil provides a Create and CreateRemote method to
// create instances of the default interface CTe_Util_Interface exposed by
// the CoClass Util. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoUtil = class
    class function Create: CTe_Util_Interface;
    class function CreateRemote(const MachineName: string): CTe_Util_Interface;
  end;

// *********************************************************************//
// The Class CoQREncoderTables provides a Create and CreateRemote method to
// create instances of the default interface _QREncoderTables exposed by
// the CoClass QREncoderTables. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoQREncoderTables = class
    class function Create: _QREncoderTables;
    class function CreateRemote(const MachineName: string): _QREncoderTables;
  end;

// *********************************************************************//
// The Class CoQREncoder provides a Create and CreateRemote method to
// create instances of the default interface _QREncoder exposed by
// the CoClass QREncoder. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoQREncoder = class
    class function Create: _QREncoder;
    class function CreateRemote(const MachineName: string): _QREncoder;
  end;

// *********************************************************************//
// The Class CoQRCodeEncoder provides a Create and CreateRemote method to
// create instances of the default interface _QRCodeEncoder exposed by
// the CoClass QRCodeEncoder. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoQRCodeEncoder = class
    class function Create: _QRCodeEncoder;
    class function CreateRemote(const MachineName: string): _QRCodeEncoder;
  end;

// *********************************************************************//
// The Class CoMDFeRecepcaoEvento provides a Create and CreateRemote method to
// create instances of the default interface _MDFeRecepcaoEvento exposed by
// the CoClass MDFeRecepcaoEvento. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFeRecepcaoEvento = class
    class function Create: _MDFeRecepcaoEvento;
    class function CreateRemote(const MachineName: string): _MDFeRecepcaoEvento;
  end;

// *********************************************************************//
// The Class ComdfeCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _mdfeCabecMsg exposed by
// the CoClass mdfeCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeCabecMsg = class
    class function Create: _mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoEventoCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _mdfeRecepcaoEventoCompletedEventHandler exposed by
// the CoClass mdfeRecepcaoEventoCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeRecepcaoEventoCompletedEventHandler = class
    class function Create: _mdfeRecepcaoEventoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoEventoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoEventoCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _mdfeRecepcaoEventoCompletedEventArgs exposed by
// the CoClass mdfeRecepcaoEventoCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeRecepcaoEventoCompletedEventArgs = class
    class function Create: _mdfeRecepcaoEventoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoEventoCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCteStatusServico provides a Create and CreateRemote method to
// create instances of the default interface _CteStatusServico exposed by
// the CoClass CteStatusServico. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCteStatusServico = class
    class function Create: _CteStatusServico;
    class function CreateRemote(const MachineName: string): _CteStatusServico;
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteStatusServicoCT_cteCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _CTe_Util_cteStatusServicoCT_cteCabecMsg exposed by
// the CoClass CTe_Util_cteStatusServicoCT_cteCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTe_Util_cteStatusServicoCT_cteCabecMsg = class
    class function Create: _CTe_Util_cteStatusServicoCT_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteStatusServicoCT_cteCabecMsg;
  end;

// *********************************************************************//
// The Class CocteStatusServicoCTCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteStatusServicoCTCompletedEventHandler exposed by
// the CoClass cteStatusServicoCTCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteStatusServicoCTCompletedEventHandler = class
    class function Create: _cteStatusServicoCTCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteStatusServicoCTCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteStatusServicoCTCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteStatusServicoCTCompletedEventArgs exposed by
// the CoClass cteStatusServicoCTCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteStatusServicoCTCompletedEventArgs = class
    class function Create: _cteStatusServicoCTCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteStatusServicoCTCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCteRetRecepcao provides a Create and CreateRemote method to
// create instances of the default interface _CteRetRecepcao exposed by
// the CoClass CteRetRecepcao. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCteRetRecepcao = class
    class function Create: _CteRetRecepcao;
    class function CreateRemote(const MachineName: string): _CteRetRecepcao;
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteRetRecepcaoLote_cteCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _CTe_Util_cteRetRecepcaoLote_cteCabecMsg exposed by
// the CoClass CTe_Util_cteRetRecepcaoLote_cteCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTe_Util_cteRetRecepcaoLote_cteCabecMsg = class
    class function Create: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
  end;

// *********************************************************************//
// The Class CocteRetRecepcaoCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteRetRecepcaoCompletedEventHandler exposed by
// the CoClass cteRetRecepcaoCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRetRecepcaoCompletedEventHandler = class
    class function Create: _cteRetRecepcaoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRetRecepcaoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteRetRecepcaoCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteRetRecepcaoCompletedEventArgs exposed by
// the CoClass cteRetRecepcaoCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRetRecepcaoCompletedEventArgs = class
    class function Create: _cteRetRecepcaoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRetRecepcaoCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCteRecepcaoSinc provides a Create and CreateRemote method to
// create instances of the default interface _CteRecepcaoSinc exposed by
// the CoClass CteRecepcaoSinc. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCteRecepcaoSinc = class
    class function Create: _CteRecepcaoSinc;
    class function CreateRemote(const MachineName: string): _CteRecepcaoSinc;
  end;

// *********************************************************************//
// The Class CocteRecepcaoSincCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoSincCompletedEventHandler exposed by
// the CoClass cteRecepcaoSincCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoSincCompletedEventHandler = class
    class function Create: _cteRecepcaoSincCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoSincCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteRecepcaoSincCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoSincCompletedEventArgs exposed by
// the CoClass cteRecepcaoSincCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoSincCompletedEventArgs = class
    class function Create: _cteRecepcaoSincCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoSincCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCteRecepcaoOS provides a Create and CreateRemote method to
// create instances of the default interface _CteRecepcaoOS exposed by
// the CoClass CteRecepcaoOS. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCteRecepcaoOS = class
    class function Create: _CteRecepcaoOS;
    class function CreateRemote(const MachineName: string): _CteRecepcaoOS;
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteRecepcaoOS_cteCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _CTe_Util_cteRecepcaoOS_cteCabecMsg exposed by
// the CoClass CTe_Util_cteRecepcaoOS_cteCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTe_Util_cteRecepcaoOS_cteCabecMsg = class
    class function Create: _CTe_Util_cteRecepcaoOS_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoOS_cteCabecMsg;
  end;

// *********************************************************************//
// The Class CocteRecepcaoOSCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoOSCompletedEventHandler exposed by
// the CoClass cteRecepcaoOSCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoOSCompletedEventHandler = class
    class function Create: _cteRecepcaoOSCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoOSCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteRecepcaoOSCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoOSCompletedEventArgs exposed by
// the CoClass cteRecepcaoOSCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoOSCompletedEventArgs = class
    class function Create: _cteRecepcaoOSCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoOSCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCteRecepcao provides a Create and CreateRemote method to
// create instances of the default interface _CteRecepcao exposed by
// the CoClass CteRecepcao. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCteRecepcao = class
    class function Create: _CteRecepcao;
    class function CreateRemote(const MachineName: string): _CteRecepcao;
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteRecepcaoLote_cteCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _CTe_Util_cteRecepcaoLote_cteCabecMsg exposed by
// the CoClass CTe_Util_cteRecepcaoLote_cteCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTe_Util_cteRecepcaoLote_cteCabecMsg = class
    class function Create: _CTe_Util_cteRecepcaoLote_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoLote_cteCabecMsg;
  end;

// *********************************************************************//
// The Class CocteRecepcaoLoteCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoLoteCompletedEventHandler exposed by
// the CoClass cteRecepcaoLoteCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoLoteCompletedEventHandler = class
    class function Create: _cteRecepcaoLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoLoteCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteRecepcaoLoteCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoLoteCompletedEventArgs exposed by
// the CoClass cteRecepcaoLoteCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoLoteCompletedEventArgs = class
    class function Create: _cteRecepcaoLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoLoteCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCTeRecepcaoGTVe provides a Create and CreateRemote method to
// create instances of the default interface _CTeRecepcaoGTVe exposed by
// the CoClass CTeRecepcaoGTVe. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTeRecepcaoGTVe = class
    class function Create: _CTeRecepcaoGTVe;
    class function CreateRemote(const MachineName: string): _CTeRecepcaoGTVe;
  end;

// *********************************************************************//
// The Class CocteRecepcaoGTVeCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoGTVeCompletedEventHandler exposed by
// the CoClass cteRecepcaoGTVeCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoGTVeCompletedEventHandler = class
    class function Create: _cteRecepcaoGTVeCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoGTVeCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteRecepcaoGTVeCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoGTVeCompletedEventArgs exposed by
// the CoClass cteRecepcaoGTVeCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoGTVeCompletedEventArgs = class
    class function Create: _cteRecepcaoGTVeCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoGTVeCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCteRecepcaoEvento provides a Create and CreateRemote method to
// create instances of the default interface _CteRecepcaoEvento exposed by
// the CoClass CteRecepcaoEvento. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCteRecepcaoEvento = class
    class function Create: _CteRecepcaoEvento;
    class function CreateRemote(const MachineName: string): _CteRecepcaoEvento;
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteRecepcaoEvento_cteCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _CTe_Util_cteRecepcaoEvento_cteCabecMsg exposed by
// the CoClass CTe_Util_cteRecepcaoEvento_cteCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTe_Util_cteRecepcaoEvento_cteCabecMsg = class
    class function Create: _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
  end;

// *********************************************************************//
// The Class CocteRecepcaoEventoCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoEventoCompletedEventHandler exposed by
// the CoClass cteRecepcaoEventoCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoEventoCompletedEventHandler = class
    class function Create: _cteRecepcaoEventoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteRecepcaoEventoCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteRecepcaoEventoCompletedEventArgs exposed by
// the CoClass cteRecepcaoEventoCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteRecepcaoEventoCompletedEventArgs = class
    class function Create: _cteRecepcaoEventoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCteInutilizacao provides a Create and CreateRemote method to
// create instances of the default interface _CteInutilizacao exposed by
// the CoClass CteInutilizacao. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCteInutilizacao = class
    class function Create: _CteInutilizacao;
    class function CreateRemote(const MachineName: string): _CteInutilizacao;
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteInutilizacaoCT_cteCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _CTe_Util_cteInutilizacaoCT_cteCabecMsg exposed by
// the CoClass CTe_Util_cteInutilizacaoCT_cteCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTe_Util_cteInutilizacaoCT_cteCabecMsg = class
    class function Create: _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
  end;

// *********************************************************************//
// The Class CocteInutilizacaoCTCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteInutilizacaoCTCompletedEventHandler exposed by
// the CoClass cteInutilizacaoCTCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteInutilizacaoCTCompletedEventHandler = class
    class function Create: _cteInutilizacaoCTCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteInutilizacaoCTCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteInutilizacaoCTCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteInutilizacaoCTCompletedEventArgs exposed by
// the CoClass cteInutilizacaoCTCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteInutilizacaoCTCompletedEventArgs = class
    class function Create: _cteInutilizacaoCTCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteInutilizacaoCTCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCTeDistribuicaoDFe provides a Create and CreateRemote method to
// create instances of the default interface _CTeDistribuicaoDFe exposed by
// the CoClass CTeDistribuicaoDFe. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTeDistribuicaoDFe = class
    class function Create: _CTeDistribuicaoDFe;
    class function CreateRemote(const MachineName: string): _CTeDistribuicaoDFe;
  end;

// *********************************************************************//
// The Class CocteDistDFeInteresseCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteDistDFeInteresseCompletedEventHandler exposed by
// the CoClass cteDistDFeInteresseCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteDistDFeInteresseCompletedEventHandler = class
    class function Create: _cteDistDFeInteresseCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteDistDFeInteresseCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteDistDFeInteresseCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteDistDFeInteresseCompletedEventArgs exposed by
// the CoClass cteDistDFeInteresseCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteDistDFeInteresseCompletedEventArgs = class
    class function Create: _cteDistDFeInteresseCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteDistDFeInteresseCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCteConsulta provides a Create and CreateRemote method to
// create instances of the default interface _CteConsulta exposed by
// the CoClass CteConsulta. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCteConsulta = class
    class function Create: _CteConsulta;
    class function CreateRemote(const MachineName: string): _CteConsulta;
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteConsultaCT_cteCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _CTe_Util_cteConsultaCT_cteCabecMsg exposed by
// the CoClass CTe_Util_cteConsultaCT_cteCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTe_Util_cteConsultaCT_cteCabecMsg = class
    class function Create: _CTe_Util_cteConsultaCT_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteConsultaCT_cteCabecMsg;
  end;

// *********************************************************************//
// The Class CocteConsultaCTCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteConsultaCTCompletedEventHandler exposed by
// the CoClass cteConsultaCTCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteConsultaCTCompletedEventHandler = class
    class function Create: _cteConsultaCTCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteConsultaCTCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteConsultaCTCompletedEventArgs exposed by
// the CoClass cteConsultaCTCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteConsultaCTCompletedEventArgs = class
    class function Create: _cteConsultaCTCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCteCancelamento provides a Create and CreateRemote method to
// create instances of the default interface _CteCancelamento exposed by
// the CoClass CteCancelamento. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCteCancelamento = class
    class function Create: _CteCancelamento;
    class function CreateRemote(const MachineName: string): _CteCancelamento;
  end;

// *********************************************************************//
// The Class CoCTe_Util_cteCancelamentoCT_cteCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _CTe_Util_cteCancelamentoCT_cteCabecMsg exposed by
// the CoClass CTe_Util_cteCancelamentoCT_cteCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCTe_Util_cteCancelamentoCT_cteCabecMsg = class
    class function Create: _CTe_Util_cteCancelamentoCT_cteCabecMsg;
    class function CreateRemote(const MachineName: string): _CTe_Util_cteCancelamentoCT_cteCabecMsg;
  end;

// *********************************************************************//
// The Class CocteCancelamentoCTCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cteCancelamentoCTCompletedEventHandler exposed by
// the CoClass cteCancelamentoCTCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteCancelamentoCTCompletedEventHandler = class
    class function Create: _cteCancelamentoCTCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cteCancelamentoCTCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocteCancelamentoCTCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cteCancelamentoCTCompletedEventArgs exposed by
// the CoClass cteCancelamentoCTCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocteCancelamentoCTCompletedEventArgs = class
    class function Create: _cteCancelamentoCTCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cteCancelamentoCTCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoCleCadastro provides a Create and CreateRemote method to
// create instances of the default interface _CleCadastro exposed by
// the CoClass CleCadastro. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCleCadastro = class
    class function Create: _CleCadastro;
    class function CreateRemote(const MachineName: string): _CleCadastro;
  end;

// *********************************************************************//
// The Class CocleCadastroLote provides a Create and CreateRemote method to
// create instances of the default interface _cleCadastroLote exposed by
// the CoClass cleCadastroLote. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocleCadastroLote = class
    class function Create: _cleCadastroLote;
    class function CreateRemote(const MachineName: string): _cleCadastroLote;
  end;

// *********************************************************************//
// The Class CocleCadastroLoteResponse provides a Create and CreateRemote method to
// create instances of the default interface _cleCadastroLoteResponse exposed by
// the CoClass cleCadastroLoteResponse. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocleCadastroLoteResponse = class
    class function Create: _cleCadastroLoteResponse;
    class function CreateRemote(const MachineName: string): _cleCadastroLoteResponse;
  end;

// *********************************************************************//
// The Class CocleCadastroLoteCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _cleCadastroLoteCompletedEventHandler exposed by
// the CoClass cleCadastroLoteCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocleCadastroLoteCompletedEventHandler = class
    class function Create: _cleCadastroLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventHandler;
  end;

// *********************************************************************//
// The Class CocleCadastroLoteCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _cleCadastroLoteCompletedEventArgs exposed by
// the CoClass cleCadastroLoteCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CocleCadastroLoteCompletedEventArgs = class
    class function Create: _cleCadastroLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventArgs;
  end;

implementation

uses System.Win.ComObj;

class function CoUtil.Create: CTe_Util_Interface;
begin
  Result := CreateComObject(CLASS_Util) as CTe_Util_Interface;
end;

class function CoUtil.CreateRemote(const MachineName: string): CTe_Util_Interface;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Util) as CTe_Util_Interface;
end;

class function CoQREncoderTables.Create: _QREncoderTables;
begin
  Result := CreateComObject(CLASS_QREncoderTables) as _QREncoderTables;
end;

class function CoQREncoderTables.CreateRemote(const MachineName: string): _QREncoderTables;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QREncoderTables) as _QREncoderTables;
end;

class function CoQREncoder.Create: _QREncoder;
begin
  Result := CreateComObject(CLASS_QREncoder) as _QREncoder;
end;

class function CoQREncoder.CreateRemote(const MachineName: string): _QREncoder;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QREncoder) as _QREncoder;
end;

class function CoQRCodeEncoder.Create: _QRCodeEncoder;
begin
  Result := CreateComObject(CLASS_QRCodeEncoder) as _QRCodeEncoder;
end;

class function CoQRCodeEncoder.CreateRemote(const MachineName: string): _QRCodeEncoder;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QRCodeEncoder) as _QRCodeEncoder;
end;

class function CoMDFeRecepcaoEvento.Create: _MDFeRecepcaoEvento;
begin
  Result := CreateComObject(CLASS_MDFeRecepcaoEvento) as _MDFeRecepcaoEvento;
end;

class function CoMDFeRecepcaoEvento.CreateRemote(const MachineName: string): _MDFeRecepcaoEvento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeRecepcaoEvento) as _MDFeRecepcaoEvento;
end;

class function ComdfeCabecMsg.Create: _mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_mdfeCabecMsg) as _mdfeCabecMsg;
end;

class function ComdfeCabecMsg.CreateRemote(const MachineName: string): _mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeCabecMsg) as _mdfeCabecMsg;
end;

class function ComdfeRecepcaoEventoCompletedEventHandler.Create: _mdfeRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoEventoCompletedEventHandler) as _mdfeRecepcaoEventoCompletedEventHandler;
end;

class function ComdfeRecepcaoEventoCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoEventoCompletedEventHandler) as _mdfeRecepcaoEventoCompletedEventHandler;
end;

class function ComdfeRecepcaoEventoCompletedEventArgs.Create: _mdfeRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoEventoCompletedEventArgs) as _mdfeRecepcaoEventoCompletedEventArgs;
end;

class function ComdfeRecepcaoEventoCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoEventoCompletedEventArgs) as _mdfeRecepcaoEventoCompletedEventArgs;
end;

class function CoCteStatusServico.Create: _CteStatusServico;
begin
  Result := CreateComObject(CLASS_CteStatusServico) as _CteStatusServico;
end;

class function CoCteStatusServico.CreateRemote(const MachineName: string): _CteStatusServico;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteStatusServico) as _CteStatusServico;
end;

class function CoCTe_Util_cteStatusServicoCT_cteCabecMsg.Create: _CTe_Util_cteStatusServicoCT_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteStatusServicoCT_cteCabecMsg) as _CTe_Util_cteStatusServicoCT_cteCabecMsg;
end;

class function CoCTe_Util_cteStatusServicoCT_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteStatusServicoCT_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteStatusServicoCT_cteCabecMsg) as _CTe_Util_cteStatusServicoCT_cteCabecMsg;
end;

class function CocteStatusServicoCTCompletedEventHandler.Create: _cteStatusServicoCTCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteStatusServicoCTCompletedEventHandler) as _cteStatusServicoCTCompletedEventHandler;
end;

class function CocteStatusServicoCTCompletedEventHandler.CreateRemote(const MachineName: string): _cteStatusServicoCTCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteStatusServicoCTCompletedEventHandler) as _cteStatusServicoCTCompletedEventHandler;
end;

class function CocteStatusServicoCTCompletedEventArgs.Create: _cteStatusServicoCTCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteStatusServicoCTCompletedEventArgs) as _cteStatusServicoCTCompletedEventArgs;
end;

class function CocteStatusServicoCTCompletedEventArgs.CreateRemote(const MachineName: string): _cteStatusServicoCTCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteStatusServicoCTCompletedEventArgs) as _cteStatusServicoCTCompletedEventArgs;
end;

class function CoCteRetRecepcao.Create: _CteRetRecepcao;
begin
  Result := CreateComObject(CLASS_CteRetRecepcao) as _CteRetRecepcao;
end;

class function CoCteRetRecepcao.CreateRemote(const MachineName: string): _CteRetRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRetRecepcao) as _CteRetRecepcao;
end;

class function CoCTe_Util_cteRetRecepcaoLote_cteCabecMsg.Create: _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteRetRecepcaoLote_cteCabecMsg) as _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
end;

class function CoCTe_Util_cteRetRecepcaoLote_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteRetRecepcaoLote_cteCabecMsg) as _CTe_Util_cteRetRecepcaoLote_cteCabecMsg;
end;

class function CocteRetRecepcaoCompletedEventHandler.Create: _cteRetRecepcaoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRetRecepcaoCompletedEventHandler) as _cteRetRecepcaoCompletedEventHandler;
end;

class function CocteRetRecepcaoCompletedEventHandler.CreateRemote(const MachineName: string): _cteRetRecepcaoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRetRecepcaoCompletedEventHandler) as _cteRetRecepcaoCompletedEventHandler;
end;

class function CocteRetRecepcaoCompletedEventArgs.Create: _cteRetRecepcaoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRetRecepcaoCompletedEventArgs) as _cteRetRecepcaoCompletedEventArgs;
end;

class function CocteRetRecepcaoCompletedEventArgs.CreateRemote(const MachineName: string): _cteRetRecepcaoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRetRecepcaoCompletedEventArgs) as _cteRetRecepcaoCompletedEventArgs;
end;

class function CoCteRecepcaoSinc.Create: _CteRecepcaoSinc;
begin
  Result := CreateComObject(CLASS_CteRecepcaoSinc) as _CteRecepcaoSinc;
end;

class function CoCteRecepcaoSinc.CreateRemote(const MachineName: string): _CteRecepcaoSinc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRecepcaoSinc) as _CteRecepcaoSinc;
end;

class function CocteRecepcaoSincCompletedEventHandler.Create: _cteRecepcaoSincCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoSincCompletedEventHandler) as _cteRecepcaoSincCompletedEventHandler;
end;

class function CocteRecepcaoSincCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoSincCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoSincCompletedEventHandler) as _cteRecepcaoSincCompletedEventHandler;
end;

class function CocteRecepcaoSincCompletedEventArgs.Create: _cteRecepcaoSincCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoSincCompletedEventArgs) as _cteRecepcaoSincCompletedEventArgs;
end;

class function CocteRecepcaoSincCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoSincCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoSincCompletedEventArgs) as _cteRecepcaoSincCompletedEventArgs;
end;

class function CoCteRecepcaoOS.Create: _CteRecepcaoOS;
begin
  Result := CreateComObject(CLASS_CteRecepcaoOS) as _CteRecepcaoOS;
end;

class function CoCteRecepcaoOS.CreateRemote(const MachineName: string): _CteRecepcaoOS;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRecepcaoOS) as _CteRecepcaoOS;
end;

class function CoCTe_Util_cteRecepcaoOS_cteCabecMsg.Create: _CTe_Util_cteRecepcaoOS_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteRecepcaoOS_cteCabecMsg) as _CTe_Util_cteRecepcaoOS_cteCabecMsg;
end;

class function CoCTe_Util_cteRecepcaoOS_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoOS_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteRecepcaoOS_cteCabecMsg) as _CTe_Util_cteRecepcaoOS_cteCabecMsg;
end;

class function CocteRecepcaoOSCompletedEventHandler.Create: _cteRecepcaoOSCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoOSCompletedEventHandler) as _cteRecepcaoOSCompletedEventHandler;
end;

class function CocteRecepcaoOSCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoOSCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoOSCompletedEventHandler) as _cteRecepcaoOSCompletedEventHandler;
end;

class function CocteRecepcaoOSCompletedEventArgs.Create: _cteRecepcaoOSCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoOSCompletedEventArgs) as _cteRecepcaoOSCompletedEventArgs;
end;

class function CocteRecepcaoOSCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoOSCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoOSCompletedEventArgs) as _cteRecepcaoOSCompletedEventArgs;
end;

class function CoCteRecepcao.Create: _CteRecepcao;
begin
  Result := CreateComObject(CLASS_CteRecepcao) as _CteRecepcao;
end;

class function CoCteRecepcao.CreateRemote(const MachineName: string): _CteRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRecepcao) as _CteRecepcao;
end;

class function CoCTe_Util_cteRecepcaoLote_cteCabecMsg.Create: _CTe_Util_cteRecepcaoLote_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteRecepcaoLote_cteCabecMsg) as _CTe_Util_cteRecepcaoLote_cteCabecMsg;
end;

class function CoCTe_Util_cteRecepcaoLote_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoLote_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteRecepcaoLote_cteCabecMsg) as _CTe_Util_cteRecepcaoLote_cteCabecMsg;
end;

class function CocteRecepcaoLoteCompletedEventHandler.Create: _cteRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoLoteCompletedEventHandler) as _cteRecepcaoLoteCompletedEventHandler;
end;

class function CocteRecepcaoLoteCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoLoteCompletedEventHandler) as _cteRecepcaoLoteCompletedEventHandler;
end;

class function CocteRecepcaoLoteCompletedEventArgs.Create: _cteRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoLoteCompletedEventArgs) as _cteRecepcaoLoteCompletedEventArgs;
end;

class function CocteRecepcaoLoteCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoLoteCompletedEventArgs) as _cteRecepcaoLoteCompletedEventArgs;
end;

class function CoCTeRecepcaoGTVe.Create: _CTeRecepcaoGTVe;
begin
  Result := CreateComObject(CLASS_CTeRecepcaoGTVe) as _CTeRecepcaoGTVe;
end;

class function CoCTeRecepcaoGTVe.CreateRemote(const MachineName: string): _CTeRecepcaoGTVe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTeRecepcaoGTVe) as _CTeRecepcaoGTVe;
end;

class function CocteRecepcaoGTVeCompletedEventHandler.Create: _cteRecepcaoGTVeCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoGTVeCompletedEventHandler) as _cteRecepcaoGTVeCompletedEventHandler;
end;

class function CocteRecepcaoGTVeCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoGTVeCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoGTVeCompletedEventHandler) as _cteRecepcaoGTVeCompletedEventHandler;
end;

class function CocteRecepcaoGTVeCompletedEventArgs.Create: _cteRecepcaoGTVeCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoGTVeCompletedEventArgs) as _cteRecepcaoGTVeCompletedEventArgs;
end;

class function CocteRecepcaoGTVeCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoGTVeCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoGTVeCompletedEventArgs) as _cteRecepcaoGTVeCompletedEventArgs;
end;

class function CoCteRecepcaoEvento.Create: _CteRecepcaoEvento;
begin
  Result := CreateComObject(CLASS_CteRecepcaoEvento) as _CteRecepcaoEvento;
end;

class function CoCteRecepcaoEvento.CreateRemote(const MachineName: string): _CteRecepcaoEvento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteRecepcaoEvento) as _CteRecepcaoEvento;
end;

class function CoCTe_Util_cteRecepcaoEvento_cteCabecMsg.Create: _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteRecepcaoEvento_cteCabecMsg) as _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
end;

class function CoCTe_Util_cteRecepcaoEvento_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteRecepcaoEvento_cteCabecMsg) as _CTe_Util_cteRecepcaoEvento_cteCabecMsg;
end;

class function CocteRecepcaoEventoCompletedEventHandler.Create: _cteRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteRecepcaoEventoCompletedEventHandler) as _cteRecepcaoEventoCompletedEventHandler;
end;

class function CocteRecepcaoEventoCompletedEventHandler.CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoEventoCompletedEventHandler) as _cteRecepcaoEventoCompletedEventHandler;
end;

class function CocteRecepcaoEventoCompletedEventArgs.Create: _cteRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteRecepcaoEventoCompletedEventArgs) as _cteRecepcaoEventoCompletedEventArgs;
end;

class function CocteRecepcaoEventoCompletedEventArgs.CreateRemote(const MachineName: string): _cteRecepcaoEventoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteRecepcaoEventoCompletedEventArgs) as _cteRecepcaoEventoCompletedEventArgs;
end;

class function CoCteInutilizacao.Create: _CteInutilizacao;
begin
  Result := CreateComObject(CLASS_CteInutilizacao) as _CteInutilizacao;
end;

class function CoCteInutilizacao.CreateRemote(const MachineName: string): _CteInutilizacao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteInutilizacao) as _CteInutilizacao;
end;

class function CoCTe_Util_cteInutilizacaoCT_cteCabecMsg.Create: _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteInutilizacaoCT_cteCabecMsg) as _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
end;

class function CoCTe_Util_cteInutilizacaoCT_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteInutilizacaoCT_cteCabecMsg) as _CTe_Util_cteInutilizacaoCT_cteCabecMsg;
end;

class function CocteInutilizacaoCTCompletedEventHandler.Create: _cteInutilizacaoCTCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteInutilizacaoCTCompletedEventHandler) as _cteInutilizacaoCTCompletedEventHandler;
end;

class function CocteInutilizacaoCTCompletedEventHandler.CreateRemote(const MachineName: string): _cteInutilizacaoCTCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteInutilizacaoCTCompletedEventHandler) as _cteInutilizacaoCTCompletedEventHandler;
end;

class function CocteInutilizacaoCTCompletedEventArgs.Create: _cteInutilizacaoCTCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteInutilizacaoCTCompletedEventArgs) as _cteInutilizacaoCTCompletedEventArgs;
end;

class function CocteInutilizacaoCTCompletedEventArgs.CreateRemote(const MachineName: string): _cteInutilizacaoCTCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteInutilizacaoCTCompletedEventArgs) as _cteInutilizacaoCTCompletedEventArgs;
end;

class function CoCTeDistribuicaoDFe.Create: _CTeDistribuicaoDFe;
begin
  Result := CreateComObject(CLASS_CTeDistribuicaoDFe) as _CTeDistribuicaoDFe;
end;

class function CoCTeDistribuicaoDFe.CreateRemote(const MachineName: string): _CTeDistribuicaoDFe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTeDistribuicaoDFe) as _CTeDistribuicaoDFe;
end;

class function CocteDistDFeInteresseCompletedEventHandler.Create: _cteDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteDistDFeInteresseCompletedEventHandler) as _cteDistDFeInteresseCompletedEventHandler;
end;

class function CocteDistDFeInteresseCompletedEventHandler.CreateRemote(const MachineName: string): _cteDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteDistDFeInteresseCompletedEventHandler) as _cteDistDFeInteresseCompletedEventHandler;
end;

class function CocteDistDFeInteresseCompletedEventArgs.Create: _cteDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteDistDFeInteresseCompletedEventArgs) as _cteDistDFeInteresseCompletedEventArgs;
end;

class function CocteDistDFeInteresseCompletedEventArgs.CreateRemote(const MachineName: string): _cteDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteDistDFeInteresseCompletedEventArgs) as _cteDistDFeInteresseCompletedEventArgs;
end;

class function CoCteConsulta.Create: _CteConsulta;
begin
  Result := CreateComObject(CLASS_CteConsulta) as _CteConsulta;
end;

class function CoCteConsulta.CreateRemote(const MachineName: string): _CteConsulta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteConsulta) as _CteConsulta;
end;

class function CoCTe_Util_cteConsultaCT_cteCabecMsg.Create: _CTe_Util_cteConsultaCT_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteConsultaCT_cteCabecMsg) as _CTe_Util_cteConsultaCT_cteCabecMsg;
end;

class function CoCTe_Util_cteConsultaCT_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteConsultaCT_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteConsultaCT_cteCabecMsg) as _CTe_Util_cteConsultaCT_cteCabecMsg;
end;

class function CocteConsultaCTCompletedEventHandler.Create: _cteConsultaCTCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteConsultaCTCompletedEventHandler) as _cteConsultaCTCompletedEventHandler;
end;

class function CocteConsultaCTCompletedEventHandler.CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteConsultaCTCompletedEventHandler) as _cteConsultaCTCompletedEventHandler;
end;

class function CocteConsultaCTCompletedEventArgs.Create: _cteConsultaCTCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteConsultaCTCompletedEventArgs) as _cteConsultaCTCompletedEventArgs;
end;

class function CocteConsultaCTCompletedEventArgs.CreateRemote(const MachineName: string): _cteConsultaCTCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteConsultaCTCompletedEventArgs) as _cteConsultaCTCompletedEventArgs;
end;

class function CoCteCancelamento.Create: _CteCancelamento;
begin
  Result := CreateComObject(CLASS_CteCancelamento) as _CteCancelamento;
end;

class function CoCteCancelamento.CreateRemote(const MachineName: string): _CteCancelamento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CteCancelamento) as _CteCancelamento;
end;

class function CoCTe_Util_cteCancelamentoCT_cteCabecMsg.Create: _CTe_Util_cteCancelamentoCT_cteCabecMsg;
begin
  Result := CreateComObject(CLASS_CTe_Util_cteCancelamentoCT_cteCabecMsg) as _CTe_Util_cteCancelamentoCT_cteCabecMsg;
end;

class function CoCTe_Util_cteCancelamentoCT_cteCabecMsg.CreateRemote(const MachineName: string): _CTe_Util_cteCancelamentoCT_cteCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTe_Util_cteCancelamentoCT_cteCabecMsg) as _CTe_Util_cteCancelamentoCT_cteCabecMsg;
end;

class function CocteCancelamentoCTCompletedEventHandler.Create: _cteCancelamentoCTCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cteCancelamentoCTCompletedEventHandler) as _cteCancelamentoCTCompletedEventHandler;
end;

class function CocteCancelamentoCTCompletedEventHandler.CreateRemote(const MachineName: string): _cteCancelamentoCTCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteCancelamentoCTCompletedEventHandler) as _cteCancelamentoCTCompletedEventHandler;
end;

class function CocteCancelamentoCTCompletedEventArgs.Create: _cteCancelamentoCTCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cteCancelamentoCTCompletedEventArgs) as _cteCancelamentoCTCompletedEventArgs;
end;

class function CocteCancelamentoCTCompletedEventArgs.CreateRemote(const MachineName: string): _cteCancelamentoCTCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cteCancelamentoCTCompletedEventArgs) as _cteCancelamentoCTCompletedEventArgs;
end;

class function CoCleCadastro.Create: _CleCadastro;
begin
  Result := CreateComObject(CLASS_CleCadastro) as _CleCadastro;
end;

class function CoCleCadastro.CreateRemote(const MachineName: string): _CleCadastro;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CleCadastro) as _CleCadastro;
end;

class function CocleCadastroLote.Create: _cleCadastroLote;
begin
  Result := CreateComObject(CLASS_cleCadastroLote) as _cleCadastroLote;
end;

class function CocleCadastroLote.CreateRemote(const MachineName: string): _cleCadastroLote;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLote) as _cleCadastroLote;
end;

class function CocleCadastroLoteResponse.Create: _cleCadastroLoteResponse;
begin
  Result := CreateComObject(CLASS_cleCadastroLoteResponse) as _cleCadastroLoteResponse;
end;

class function CocleCadastroLoteResponse.CreateRemote(const MachineName: string): _cleCadastroLoteResponse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLoteResponse) as _cleCadastroLoteResponse;
end;

class function CocleCadastroLoteCompletedEventHandler.Create: _cleCadastroLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_cleCadastroLoteCompletedEventHandler) as _cleCadastroLoteCompletedEventHandler;
end;

class function CocleCadastroLoteCompletedEventHandler.CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLoteCompletedEventHandler) as _cleCadastroLoteCompletedEventHandler;
end;

class function CocleCadastroLoteCompletedEventArgs.Create: _cleCadastroLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_cleCadastroLoteCompletedEventArgs) as _cleCadastroLoteCompletedEventArgs;
end;

class function CocleCadastroLoteCompletedEventArgs.CreateRemote(const MachineName: string): _cleCadastroLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_cleCadastroLoteCompletedEventArgs) as _cleCadastroLoteCompletedEventArgs;
end;

end.
