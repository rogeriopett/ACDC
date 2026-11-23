unit MDFe_Util_TLB;

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
// File generated on 30/03/2026 07:08:33 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Runtime\Firenet\MDFe_Util.tlb (1)
// LIBID: {193BFFFA-6A62-4FE9-8FCC-61B30C0EF0AC}
// LCID: 0
// Helpfile:
// HelpString: Biblioteca de utilidades da MDF-e - vers�o 3.0.10c (3.0.10.3)
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'mod' of MDFe_Util_Interface.ide_v3 changed to 'mod_'
//   Hint: Parameter 'mod' of MDFe_Util_Interface.ide_v3a changed to 'mod_'
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
  MDFe_UtilMajorVersion = 3;
  MDFe_UtilMinorVersion = 0;

  LIBID_MDFe_Util: TGUID = '{193BFFFA-6A62-4FE9-8FCC-61B30C0EF0AC}';

  IID_MDFe_Util_Interface: TGUID = '{89A35A2C-4981-4571-BD5F-2BDEB4B5E156}';
  DIID_MDFe_Util_Events: TGUID = '{0A005D06-B8C1-46CA-8270-56D108D21C84}';
  CLASS_Util: TGUID = '{02E8B11B-30A6-479B-82BF-9AD7ECEE187D}';
  IID__MDFeStatusServico: TGUID = '{0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}';
  IID__MDFe_Util_mdfeStatusServico_mdfeCabecMsg: TGUID = '{FB4100DC-90E2-307D-A3DA-D715026E0711}';
  IID__mdfeStatusServicoMDFCompletedEventHandler: TGUID = '{BFD539C2-29D0-3E47-914F-1A77B699A2F6}';
  IID__mdfeStatusServicoMDFCompletedEventArgs: TGUID = '{A75DB608-B8AB-3FC4-A874-61AEDFC3A716}';
  IID__MDFeRetRecepcao: TGUID = '{FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}';
  IID__MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg: TGUID = '{F2E87B32-6F12-3609-8246-7EC46C6DE449}';
  IID__mdfeRetRecepcaoCompletedEventHandler: TGUID = '{19473EB9-D5F7-3A45-984D-0D46CA7DBF88}';
  IID__mdfeRetRecepcaoCompletedEventArgs: TGUID = '{EA0DD1F0-545D-3026-A17C-295B9D482F45}';
  IID__MDFeRecepcaoSinc: TGUID = '{6E4F7166-B8E5-3EAF-95AA-579ECC0ECCA9}';
  IID__mdfeRecepcaoCompletedEventHandler: TGUID = '{25F71B29-A07B-39F2-A0C7-1E81FD7FEA2B}';
  IID__mdfeRecepcaoCompletedEventArgs: TGUID = '{4B23B850-DDC4-3F5C-80EF-72535DF14EB7}';
  IID__MDFeRecepcao: TGUID = '{B52A01C4-3A4A-3666-BD76-2B8422F36483}';
  IID__MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg: TGUID = '{2630A142-3E16-3E90-AF7B-18FE8F44401B}';
  IID__mdfeRecepcaoLoteCompletedEventHandler: TGUID = '{39DF352B-6BAA-34C3-9B16-09B581AD241B}';
  IID__mdfeRecepcaoLoteCompletedEventArgs: TGUID = '{BDC92FCB-0160-342C-B254-902050B2ECDF}';
  IID__MDFeRecepcaoEvento: TGUID = '{B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}';
  IID__MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg: TGUID = '{5280CC24-55FB-3BBE-8C5C-1762218E2C44}';
  IID__mdfeRecepcaoEventoCompletedEventHandler: TGUID = '{0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}';
  IID__mdfeRecepcaoEventoCompletedEventArgs: TGUID = '{92D1C635-8F37-3CD5-BFCB-161188112D40}';
  IID__MDFeDistribuicaoDFe: TGUID = '{FACF3646-B238-333D-A6E7-9D8F9E1BC312}';
  IID__MDFe_Util_MDFeDistDFe_mdfeCabecMsg: TGUID = '{393D3C44-2517-3083-B366-D6E8043BF94F}';
  IID__mdfeDistDFeInteresseCompletedEventHandler: TGUID = '{283B61BD-3ADA-370F-A190-FB29CD866165}';
  IID__mdfeDistDFeInteresseCompletedEventArgs: TGUID = '{84F5E58E-5089-3612-ABFC-556C7DA130ED}';
  IID__MDFeConsulta: TGUID = '{8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}';
  IID__MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg: TGUID = '{26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}';
  IID__mdfeConsultaMDFCompletedEventHandler: TGUID = '{92FBCB84-CD8B-30DA-B289-558A3F030C7F}';
  IID__mdfeConsultaMDFCompletedEventArgs: TGUID = '{9E62A4D8-CD1A-3719-B5DD-66464EA978C8}';
  IID__MDFeConsNaoEnc: TGUID = '{92584D91-FEA6-3931-8EFA-F44363BA65BE}';
  IID__MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg: TGUID = '{5D90EC74-8A68-31A5-A63C-61A764A4A699}';
  IID__mdfeConsNaoEncCompletedEventHandler: TGUID = '{46A55CD6-F5EC-340F-82D1-BF6768F6FF42}';
  IID__mdfeConsNaoEncCompletedEventArgs: TGUID = '{B416D19C-550A-3FBB-BCFF-20770BFB92BA}';
  IID__QREncoderTables: TGUID = '{BA9543B6-8201-3922-A592-D17E9A5F967D}';
  IID__QREncoder: TGUID = '{BDFBEC66-9B72-3BD7-AAFC-0B6E15864A24}';
  IID__QRCodeEncoder: TGUID = '{BDBF56F1-9896-3147-A927-D311FA2ADCEC}';
  CLASS_MDFeStatusServico: TGUID = '{DCB07277-ED31-3B2E-BFF0-4BB0D5430290}';
  CLASS_MDFe_Util_mdfeStatusServico_mdfeCabecMsg: TGUID = '{AAB500B3-2204-37FC-933C-12D37FBED119}';
  CLASS_mdfeStatusServicoMDFCompletedEventHandler: TGUID = '{CF9F515F-F57D-3F35-9AA9-3133B205B4E3}';
  CLASS_mdfeStatusServicoMDFCompletedEventArgs: TGUID = '{AB9A9611-7C82-3221-AF0D-C606AA5DAE30}';
  CLASS_MDFeRetRecepcao: TGUID = '{5FFE6001-FB9B-37FE-83EE-82AA01C80906}';
  CLASS_MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg: TGUID = '{647A6410-9857-36DD-9CAD-0FF7D11A43E3}';
  CLASS_mdfeRetRecepcaoCompletedEventHandler: TGUID = '{A243537A-118C-30A6-BB3F-66BCF85E1061}';
  CLASS_mdfeRetRecepcaoCompletedEventArgs: TGUID = '{AF7E7268-8DF4-32D2-A06D-746EA7FC2B41}';
  CLASS_MDFeRecepcaoSinc: TGUID = '{1D6E350A-BE4D-3C03-AC7D-583C4F5662AC}';
  CLASS_mdfeRecepcaoCompletedEventHandler: TGUID = '{F33EFE5B-78BC-3060-8B3E-1E57121AAEDF}';
  CLASS_mdfeRecepcaoCompletedEventArgs: TGUID = '{42DA951B-6D88-3888-AA31-D4E2ACE7C5F8}';
  CLASS_MDFeRecepcao: TGUID = '{A5C10D13-297C-3FE6-8158-FDDBA164325D}';
  CLASS_MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg: TGUID = '{696C0B66-8F4B-3034-B77F-DCC999E2965F}';
  CLASS_mdfeRecepcaoLoteCompletedEventHandler: TGUID = '{880A58D9-5DE2-31E4-B399-30A8815F14F2}';
  CLASS_mdfeRecepcaoLoteCompletedEventArgs: TGUID = '{D1634767-78BC-33FC-AA15-087BDD2FA4D2}';
  CLASS_MDFeRecepcaoEvento: TGUID = '{518409E6-A8F6-3D93-9AF0-84D7242C73A4}';
  CLASS_MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg: TGUID = '{D05D5CC7-57EA-342E-B471-8653AAD3D32E}';
  CLASS_mdfeRecepcaoEventoCompletedEventHandler: TGUID = '{80485283-BA57-3B41-BAE4-74F0DA264E0D}';
  CLASS_mdfeRecepcaoEventoCompletedEventArgs: TGUID = '{B9388B18-4E75-367A-97D0-4C7FF78B0743}';
  CLASS_MDFeDistribuicaoDFe: TGUID = '{D524FE0E-89E3-3485-9E45-71B08920D25C}';
  CLASS_MDFe_Util_MDFeDistDFe_mdfeCabecMsg: TGUID = '{6C141CB9-0B50-3F05-B86E-F0BB71A5A9C8}';
  CLASS_mdfeDistDFeInteresseCompletedEventHandler: TGUID = '{9203D37B-5502-342D-B8EB-FCF4D4143E0D}';
  CLASS_mdfeDistDFeInteresseCompletedEventArgs: TGUID = '{2DCEA127-4445-3865-8433-B629C6CACA8F}';
  CLASS_MDFeConsulta: TGUID = '{22C5ACA0-014D-3B18-A7EB-C657C0F829CF}';
  CLASS_MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg: TGUID = '{4C6FAF95-EB38-3E37-98C2-75FDB62B1144}';
  CLASS_mdfeConsultaMDFCompletedEventHandler: TGUID = '{A7D88673-2371-334C-B8E7-3D3B051043D4}';
  CLASS_mdfeConsultaMDFCompletedEventArgs: TGUID = '{5C8AB690-5CBF-345A-9ED8-A40546668DE6}';
  CLASS_MDFeConsNaoEnc: TGUID = '{314437C6-6217-3B48-A0BC-CE209B5FD3EB}';
  CLASS_MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg: TGUID = '{5BFBEE87-B720-39F2-8FAB-C23761FBA2B4}';
  CLASS_mdfeConsNaoEncCompletedEventHandler: TGUID = '{F2EEE9D9-8F7B-3E23-BA2A-C5787E59D41F}';
  CLASS_mdfeConsNaoEncCompletedEventArgs: TGUID = '{C53F3089-F7AA-34D3-82CB-7A049266A4AA}';
  CLASS_QREncoderTables: TGUID = '{3F2A4EED-47FF-38F8-AF84-2234F24B65AA}';
  CLASS_QREncoder: TGUID = '{9F2A43AB-D498-395B-B360-3DBD2B3C63C0}';
  CLASS_QRCodeEncoder: TGUID = '{5927E32B-1455-3253-ABD8-CF1F45E75C87}';

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
  MDFe_Util_Interface = interface;
  MDFe_Util_InterfaceDisp = dispinterface;
  MDFe_Util_Events = dispinterface;
  _MDFeStatusServico = interface;
  _MDFeStatusServicoDisp = dispinterface;
  _MDFe_Util_mdfeStatusServico_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeStatusServico_mdfeCabecMsgDisp = dispinterface;
  _mdfeStatusServicoMDFCompletedEventHandler = interface;
  _mdfeStatusServicoMDFCompletedEventHandlerDisp = dispinterface;
  _mdfeStatusServicoMDFCompletedEventArgs = interface;
  _mdfeStatusServicoMDFCompletedEventArgsDisp = dispinterface;
  _MDFeRetRecepcao = interface;
  _MDFeRetRecepcaoDisp = dispinterface;
  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsgDisp = dispinterface;
  _mdfeRetRecepcaoCompletedEventHandler = interface;
  _mdfeRetRecepcaoCompletedEventHandlerDisp = dispinterface;
  _mdfeRetRecepcaoCompletedEventArgs = interface;
  _mdfeRetRecepcaoCompletedEventArgsDisp = dispinterface;
  _MDFeRecepcaoSinc = interface;
  _MDFeRecepcaoSincDisp = dispinterface;
  _mdfeRecepcaoCompletedEventHandler = interface;
  _mdfeRecepcaoCompletedEventHandlerDisp = dispinterface;
  _mdfeRecepcaoCompletedEventArgs = interface;
  _mdfeRecepcaoCompletedEventArgsDisp = dispinterface;
  _MDFeRecepcao = interface;
  _MDFeRecepcaoDisp = dispinterface;
  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsgDisp = dispinterface;
  _mdfeRecepcaoLoteCompletedEventHandler = interface;
  _mdfeRecepcaoLoteCompletedEventHandlerDisp = dispinterface;
  _mdfeRecepcaoLoteCompletedEventArgs = interface;
  _mdfeRecepcaoLoteCompletedEventArgsDisp = dispinterface;
  _MDFeRecepcaoEvento = interface;
  _MDFeRecepcaoEventoDisp = dispinterface;
  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsgDisp = dispinterface;
  _mdfeRecepcaoEventoCompletedEventHandler = interface;
  _mdfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface;
  _mdfeRecepcaoEventoCompletedEventArgs = interface;
  _mdfeRecepcaoEventoCompletedEventArgsDisp = dispinterface;
  _MDFeDistribuicaoDFe = interface;
  _MDFeDistribuicaoDFeDisp = dispinterface;
  _MDFe_Util_MDFeDistDFe_mdfeCabecMsg = interface;
  _MDFe_Util_MDFeDistDFe_mdfeCabecMsgDisp = dispinterface;
  _mdfeDistDFeInteresseCompletedEventHandler = interface;
  _mdfeDistDFeInteresseCompletedEventHandlerDisp = dispinterface;
  _mdfeDistDFeInteresseCompletedEventArgs = interface;
  _mdfeDistDFeInteresseCompletedEventArgsDisp = dispinterface;
  _MDFeConsulta = interface;
  _MDFeConsultaDisp = dispinterface;
  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsgDisp = dispinterface;
  _mdfeConsultaMDFCompletedEventHandler = interface;
  _mdfeConsultaMDFCompletedEventHandlerDisp = dispinterface;
  _mdfeConsultaMDFCompletedEventArgs = interface;
  _mdfeConsultaMDFCompletedEventArgsDisp = dispinterface;
  _MDFeConsNaoEnc = interface;
  _MDFeConsNaoEncDisp = dispinterface;
  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg = interface;
  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsgDisp = dispinterface;
  _mdfeConsNaoEncCompletedEventHandler = interface;
  _mdfeConsNaoEncCompletedEventHandlerDisp = dispinterface;
  _mdfeConsNaoEncCompletedEventArgs = interface;
  _mdfeConsNaoEncCompletedEventArgsDisp = dispinterface;
  _QREncoderTables = interface;
  _QREncoderTablesDisp = dispinterface;
  _QREncoder = interface;
  _QREncoderDisp = dispinterface;
  _QRCodeEncoder = interface;
  _QRCodeEncoderDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  Util = MDFe_Util_Interface;
  MDFeStatusServico = _MDFeStatusServico;
  MDFe_Util_mdfeStatusServico_mdfeCabecMsg = _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
  mdfeStatusServicoMDFCompletedEventHandler = _mdfeStatusServicoMDFCompletedEventHandler;
  mdfeStatusServicoMDFCompletedEventArgs = _mdfeStatusServicoMDFCompletedEventArgs;
  MDFeRetRecepcao = _MDFeRetRecepcao;
  MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg = _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
  mdfeRetRecepcaoCompletedEventHandler = _mdfeRetRecepcaoCompletedEventHandler;
  mdfeRetRecepcaoCompletedEventArgs = _mdfeRetRecepcaoCompletedEventArgs;
  MDFeRecepcaoSinc = _MDFeRecepcaoSinc;
  mdfeRecepcaoCompletedEventHandler = _mdfeRecepcaoCompletedEventHandler;
  mdfeRecepcaoCompletedEventArgs = _mdfeRecepcaoCompletedEventArgs;
  MDFeRecepcao = _MDFeRecepcao;
  MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg = _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
  mdfeRecepcaoLoteCompletedEventHandler = _mdfeRecepcaoLoteCompletedEventHandler;
  mdfeRecepcaoLoteCompletedEventArgs = _mdfeRecepcaoLoteCompletedEventArgs;
  MDFeRecepcaoEvento = _MDFeRecepcaoEvento;
  MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg = _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
  mdfeRecepcaoEventoCompletedEventHandler = _mdfeRecepcaoEventoCompletedEventHandler;
  mdfeRecepcaoEventoCompletedEventArgs = _mdfeRecepcaoEventoCompletedEventArgs;
  MDFeDistribuicaoDFe = _MDFeDistribuicaoDFe;
  MDFe_Util_MDFeDistDFe_mdfeCabecMsg = _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
  mdfeDistDFeInteresseCompletedEventHandler = _mdfeDistDFeInteresseCompletedEventHandler;
  mdfeDistDFeInteresseCompletedEventArgs = _mdfeDistDFeInteresseCompletedEventArgs;
  MDFeConsulta = _MDFeConsulta;
  MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg = _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
  mdfeConsultaMDFCompletedEventHandler = _mdfeConsultaMDFCompletedEventHandler;
  mdfeConsultaMDFCompletedEventArgs = _mdfeConsultaMDFCompletedEventArgs;
  MDFeConsNaoEnc = _MDFeConsNaoEnc;
  MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg = _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
  mdfeConsNaoEncCompletedEventHandler = _mdfeConsNaoEncCompletedEventHandler;
  mdfeConsNaoEncCompletedEventArgs = _mdfeConsNaoEncCompletedEventArgs;
  QREncoderTables = _QREncoderTables;
  QREncoder = _QREncoder;
  QRCodeEncoder = _QRCodeEncoder;


// *********************************************************************//
// Interface: MDFe_Util_Interface
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {89A35A2C-4981-4571-BD5F-2BDEB4B5E156}
// *********************************************************************//
  MDFe_Util_Interface = interface(IDispatch)
    ['{89A35A2C-4981-4571-BD5F-2BDEB4B5E156}']
    function Versao(out DLL_nome: WideString; out DLL_versao: WideString; out DLL_data: WideString;
                    out DLL_dataValidade: WideString; out URL_versao: WideString;
                    out URL_data: WideString): WideString; safecall;
    function ConsultaWS(const siglaWS: WideString; const siglaUF: WideString;
                        tipoAmbiente: Integer; const nomeCertificado: WideString;
                        const Versao: WideString; out msgDados: WideString;
                        out msgRetWS: WideString; out msgResultado: WideString;
                        out tMed: WideString; out dhRetorno: WideString; out xObs: WideString;
                        const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; safecall;
    function ConsultaMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                          const nomeCertificado: WideString; const Versao: WideString;
                          out msgDados: WideString; out msgRetWS: WideString;
                          out msgResultado: WideString; const chaveMDFe: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString): Integer; safecall;
    function EnviaMDFe(const siglaWS: WideString; const nomeCertificado: WideString;
                       const Versao: WideString; const MDFe: WideString; out msgDados: WideString;
                       out msgRetWS: WideString; out cStat: Integer; out msgResultado: WideString;
                       out nRec: WideString; out dhRecbto: WideString; out tMed: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString;
                       const licenca: WideString): WideString; safecall;
    function BuscaMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       const nroRecibo: WideString; const MDFeAssinado: WideString;
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                       out msgResultado: WideString; out protocolo: WideString;
                       out nroProtocolo: WideString; out dhProtocolo: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString): WideString; safecall;
    function CancelaMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString;
                         out resultado: Integer; out msgResultado: WideString;
                         const chaveMDFe: WideString; const nProtocolo: WideString;
                         const justificativa: WideString; const dhEvento: WideString;
                         out nProtocoloCanc: WideString; out dProtocoloCanc: WideString;
                         const proxy: WideString; const usuario: WideString;
                         const senha: WideString; const licenca: WideString): WideString; safecall;
    function EncerraMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString;
                         out resultado: Integer; out msgResultado: WideString;
                         const chaveMDFe: WideString; const nProtocolo: WideString;
                         const dtEnc: WideString; const cUFEnc: WideString;
                         const cMunEnc: WideString; const dhEvento: WideString;
                         out nProtocoloEnc: WideString; out dProtocoloEnc: WideString;
                         const proxy: WideString; const usuario: WideString;
                         const senha: WideString; const licenca: WideString): WideString; safecall;
    function Assinar(const XMLString: WideString; const tagAssinatura: WideString;
                     const Atributo: WideString; const nomeCertificado: WideString;
                     out cResultado: Integer; out msgResultado: WideString): WideString; safecall;
    function AssinarURI(const XMLString: WideString; const URI: WideString;
                        const nomeCertificado: WideString; out cResultado: Integer;
                        out msgResultado: WideString): WideString; safecall;
    function ValidaXML(const XML: WideString; const XSD: WideString; out msgResultado: WideString;
                       out qtdeErros: Integer; out erroXML: WideString): Integer; safecall;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString;
                                  out Titular: WideString; out CNPJ: WideString;
                                  out NroSerie: WideString; out Emissor: WideString;
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; safecall;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer;
                       out msgResultado: WideString): WideString; safecall;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer;
                                 out msgResultado: WideString): WideString; safecall;
    function ConverteArquivoBase64(const NomeArquivo: WideString; out cResultado: Integer;
                                   out msgResultado: WideString): WideString; safecall;
    function LeArquivoANSI(const NomeArquivo: WideString; out cResultado: Integer;
                           out msgResultado: WideString): WideString; safecall;
    function encodeBase64(const txtANSI: WideString; out cResultado: Integer;
                          out msgResultado: WideString): WideString; safecall;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer;
                          out msgResultado: WideString): WideString; safecall;
    function CriaChaveDFe(const cUF: WideString; const Ano: WideString; const Mes: WideString;
                          const CNPJ: WideString; const modelo: WideString;
                          const serie: WideString; const numero: WideString;
                          const tpEmis: WideString; const codigoSeguranca: WideString;
                          out msgResultado: WideString; out cDF: WideString; out cDV: WideString;
                          out chave: WideString): Integer; safecall;
    function ide(_cUF: Integer; _tpAmb: Integer; _tpEmit: Integer; _mod: Integer; _serie: Integer;
                 _nMDF: Integer; _cMDF: Integer; _cDV: Integer; _modal: Integer; _dhEmi: TDateTime;
                 _tpEmis: Integer; const _procEmi: WideString; const _verProc: WideString;
                 const _UFIni: WideString; const _UFFim: WideString;
                 const _infMunCarrega_Grupo: WideString; const _infPercurso_Grupo_Opc: WideString): WideString; safecall;
    function infMunCarrega(const _cMunCarrega: WideString; const _xMunCarrega: WideString): WideString; safecall;
    function infPercurso(const _UFPer: WideString): WideString; safecall;
    function emit(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString;
                  const _xFant_Opc: WideString; const _xLgr: WideString; const _nro: WideString;
                  const _xCpl_Opc: WideString; const _xBairro: WideString; const _cMun: WideString;
                  const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString;
                  const _fone_Opc: WideString; const _email_Opc: WideString): WideString; safecall;
    function valePed(const _CNPJForn: WideString; const _nCompra: WideString;
                     const _CNPJPg_Opc: WideString): WideString; safecall;
    function prop(const _RNTRC: WideString): WideString; safecall;
    function veicReboque(const _cInt_Opc: WideString; const _placa: WideString;
                         const _tara: WideString; const _capKG: WideString;
                         const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString): WideString; safecall;
    function veicPrincipal(const _cInt_Opc: WideString; const _placa: WideString;
                           const _tara: WideString; const _capKG_Opc: WideString;
                           const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString;
                           const _condutor_Grupo: WideString): WideString; safecall;
    function condutor(const _xNome: WideString; const _CPF: WideString): WideString; safecall;
    function rodo(const _versaoModal: WideString; const _RNTRC_Opc: WideString;
                  const _CIOT_Opc: WideString; const _veicPrincipal_Grupo: WideString;
                  const _veicReboque_Grupo_Opc: WideString; const valePed_Grupo_Opc: WideString): WideString; safecall;
    function infNF(const _CNPJ: WideString; const _UF: WideString; const _nNF: WideString;
                   const _serie: WideString; _dEmi: TDateTime; _vNF: Double;
                   const _PIN_Opc: WideString): WideString; safecall;
    function infNFe(const _chNFe: WideString; const _SegCodBarra_Opc: WideString): WideString; safecall;
    function infCT(const _nCT: WideString; const _serie: WideString; const _subser_Opc: WideString;
                   _dEmi: TDateTime; _vCarga: Double): WideString; safecall;
    function infCTe(const _chCTe: WideString; const _SegCodBarra_Opc: WideString): WideString; safecall;
    function infDoc(const _cMunDescarga: WideString; const _xMunDescarga: WideString;
                    const _infCTe_Grupo_Opc: WideString; const _infCT_Grupo_Opc: WideString;
                    const _infNFe_Grupo_Opc: WideString; const _infNF_Grupo_Opc: WideString): WideString; safecall;
    function tot(_qCTe: Integer; _qCT: Integer; _qNFe: Integer; _qNF: Integer; _vCarga: Double;
                 const _cUnid: WideString; _qCarga: Double): WideString; safecall;
    function lacres(const _nLacre: WideString): WideString; safecall;
    function infAdic(const _infAdFisco_Opc: WideString; const _infCpl_Opc: WideString): WideString; safecall;
    function MDFe(const _versao: WideString; const _Id: WideString; const _ide_Grupo: WideString;
                  const _emit_Grupo: WideString; const _infModal_Grupo: WideString;
                  const _infDoc_Grupo: WideString; const _tot_Grupo: WideString;
                  const _lacres_Grupo_Opc: WideString; const _infAdic_Grupo_Opc: WideString): WideString; safecall;
    function aereo(const _versaoModal: WideString; const _nac: WideString; const _matr: WideString;
                   const _nVoo: WideString; const _cAerEmb: WideString; const _cAerDes: WideString;
                   _dVoo: TDateTime): WideString; safecall;
    function vag(const _serie: WideString; const _nVag: WideString; const _nSeq_Opc: WideString;
                 const _TU: WideString): WideString; safecall;
    function ferrov(const _versaoModal: WideString; const _xPref: WideString;
                    _dhTrem_Opc: TDateTime; const _xOri: WideString; const _xDest: WideString;
                    const _qVag: WideString; const _vag_Grupo_Opc: WideString): WideString; safecall;
    function infTermCarreg(const _cTermCarreg: WideString): WideString; safecall;
    function infTermDescarreg(const _cTermDescarreg: WideString): WideString; safecall;
    function infEmbComb(const _cEmbComb: WideString): WideString; safecall;
    function aquav(const _versaoModal: WideString; const _CNPJAgeNav: WideString;
                   const _tpEmb: WideString; const _cEmbar: WideString; const _nViag: WideString;
                   const _cPrtEmb: WideString; const _cPrtDest: WideString;
                   const _infTermCarreg_Grupo_Opc: WideString;
                   const _infTermDescarreg_Grupo_Opc: WideString;
                   const _infEmbCom_Grupo_Opc: WideString): WideString; safecall;
    function geraLoteMDFe(const _versao: WideString; const _idLote: WideString;
                          const _MDFe: WideString; const _NomeCertificado: WideString;
                          out _cStat: Integer; out _msgResultado: WideString;
                          out _MDFeAssinado: WideString): WideString; safecall;
    function infUnidTransp(const _tpUnidTransp: WideString; const _idUnidTransp: WideString;
                           const _lacUnidTransp_Opc: WideString;
                           const _infUnidCarga_Opc: WideString; const _qtdRat_Opc: WideString): WideString; safecall;
    function lacUnidTransp(const _nLacre: WideString): WideString; safecall;
    function infUnidCarga(const _tpUnidCarga: WideString; const _idUnidCarga: WideString;
                          const _lacUnidCarga_Opc: WideString; const _qtdRat_Opc: WideString): WideString; safecall;
    function lacUnidCarga(const _nLacre: WideString): WideString; safecall;
    function infNFNovo(const _CNPJ: WideString; const _UF: WideString; const _nNF: WideString;
                       const _serie: WideString; _dEmi: TDateTime; _vNF: Double;
                       const _PIN_Opc: WideString; const _infUnidTransp_Opc: WideString): WideString; safecall;
    function infNFeNovo(const _chNFe: WideString; const _SegCodBarra_Opc: WideString;
                        const _infUnidTransp_Opc: WideString): WideString; safecall;
    function infCTNovo(const _nCT: WideString; const _serie: WideString;
                       const _subser_Opc: WideString; _dEmi: TDateTime; _vCarga: Double;
                       const _infUnidTransp_Opc: WideString): WideString; safecall;
    function infCTeNovo(const _chCTe: WideString; const _SegCodBarra_Opc: WideString;
                        const _infUnidTransp_Opc: WideString): WideString; safecall;
    function prop_v10a(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString;
                       const _xNome: WideString; const _IE_Opc: WideString;
                       const _UF_Opc: WideString; _tpProp: Integer): WideString; safecall;
    function veicReboque_v10a(const _cInt_Opc: WideString; const _placa: WideString;
                              const _tara: WideString; const _capKG: WideString;
                              const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString;
                              const tpCar: WideString; const UF: WideString): WideString; safecall;
    function veicPrincipal_v10a(const _cInt_Opc: WideString; const _placa: WideString;
                                const _tara: WideString; const _capKG_Opc: WideString;
                                const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString;
                                const _condutor_Grupo: WideString; const tpRod: WideString;
                                const tpCar: WideString; const UF: WideString): WideString; safecall;
    function IncCondutorMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                             const nomeCertificado: WideString; const Versao: WideString;
                             out msgDados: WideString; out msgRetWS: WideString;
                             out resultado: Integer; out msgResultado: WideString;
                             const chaveMDFe: WideString; const CPF: WideString;
                             const xNome: WideString; const dhEvento: WideString; nSeq: Integer;
                             out nProtocoloInc: WideString; out dProtocoloInc: WideString;
                             const proxy: WideString; const usuario: WideString;
                             const senha: WideString; const licenca: WideString): WideString; safecall;
    function ConsMDFeNaoEnc(const siglaWS: WideString; const siglaUF: WideString;
                            tipoAmbiente: Integer; const nomeCertificado: WideString;
                            const Versao: WideString; out msgDados: WideString;
                            out msgRetWS: WideString; out resultado: Integer;
                            out msgResultado: WideString; const CNPJ: WideString;
                            out cUF: WideString; out qtdeMDFe: Integer; const proxy: WideString;
                            const usuario: WideString; const senha: WideString;
                            const licenca: WideString): WideString; safecall;
    function ide_v3(cUF: Integer; tpAmb: Integer; tpEmit: Integer; const tpTransp_opc: WideString;
                    mod_: Integer; serie: Integer; nMDF: Integer; cMDF: Integer; cDV: Integer;
                    modal: Integer; const dhEmi: WideString; tpEmis: Integer;
                    const procEmi: WideString; const verProc: WideString; const UFIni: WideString;
                    const UFFim: WideString; const infMunCarrega_Grupo: WideString;
                    const infPercurso_Grupo_Opc: WideString; const dhIniViagem_Opc: WideString): WideString; safecall;
    function aquav_v3(const versaoModal: WideString; const irin: WideString;
                      const tpEmb: WideString; const cEmbar: WideString; const xEmbar: WideString;
                      const nViag: WideString; const cPrtEmb: WideString;
                      const cPrtDest: WideString; const prtTrans_Opc: WideString;
                      const tpNav_Opc: WideString; const infTermCarreg_Grupo_Opc: WideString;
                      const infTermDescarreg_Grupo_Opc: WideString;
                      const infEmbCom_Grupo_Opc: WideString;
                      const infUnidCargaVazia_Opc: WideString;
                      const infUnidTranspVazia_Opc: WideString): WideString; safecall;
    function infTermCarreg_v3(const cTermCarreg: WideString; const xTermCarreg: WideString): WideString; safecall;
    function infTermDescarreg_v3(const cTermDescarreg: WideString; const xTermDescarreg: WideString): WideString; safecall;
    function infEmbComb_v3(const cEmbComb: WideString; const xBalsa: WideString): WideString; safecall;
    function infUnidCargaVazia(const idUnidCargaVazia: WideString;
                               const tpUnidCargaVazia: WideString): WideString; safecall;
    function infUnidTranspVazia(const idUnidTranspVazia: WideString;
                                const tpUnidTranspVazia: WideString): WideString; safecall;
    function ferrov_v3(const versaoModal: WideString; const xPref: WideString;
                       const dhTrem_Opc: WideString; const xOri: WideString;
                       const xDest: WideString; const qVag: WideString;
                       const vag_Grupo_Opc: WideString): WideString; safecall;
    function vag_v3(const pesoBC: WideString; const pesoR: WideString; const tpVag_Opc: WideString;
                    const serie: WideString; const nVag: WideString; const nSeq_Opc: WideString;
                    const TU: WideString): WideString; safecall;
    function rodo_v3(const versaoModal: WideString; const infANTT_Grupo_Opc: WideString;
                     const veicPrincipal_Grupo: WideString;
                     const veicReboque_Grupo_Opc: WideString; const codAgPorto_Opc: WideString;
                     const lacRodo_Grupo_Opc: WideString): WideString; safecall;
    function infANTT(const RNTRC_Opc: WideString; const infCIOT_Grupo_Opc: WideString;
                     const valePed_Grupo_Opc: WideString; const infContratnte_Grupo_Opc: WideString): WideString; safecall;
    function infCIOT(const CIOT: WideString; const CPF: WideString; const CNPJ: WideString): WideString; safecall;
    function disp(const CNPJForn: WideString; const CNPJPg: WideString; const CPFPg: WideString;
                  const nCompra: WideString; const vValePed: WideString): WideString; safecall;
    function infCont(const CPF: WideString; const CNPJ: WideString): WideString; safecall;
    function lacRod(const nLacre: WideString): WideString; safecall;
    function infMunDescarga(const cMunDescarga: WideString; const xMunDescarga: WideString;
                            const infCTe_Grupo_Opc: WideString; const infNFe_Grupo_Opc: WideString;
                            const infMDFe_Grupo_Opc: WideString): WideString; safecall;
    function infCTe_v3(const chCTe: WideString; const SegCodBarra_Opc: WideString;
                       const indReentrega_Opc: WideString;
                       const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; safecall;
    function peri(const nOnu: WideString; const xNomeAE_Opc: WideString;
                  const xClaRisco_Opc: WideString; const grEmb_Opc: WideString;
                  const qTotProd: WideString; const qVolTipo_Opc: WideString): WideString; safecall;
    function infNFe_v3(const chNFe: WideString; const SegCodBarra_Opc: WideString;
                       const indReentrega_Opc: WideString;
                       const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; safecall;
    function infMDFe(const chMDFe: WideString; const indReentrega_Opc: WideString;
                     const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; safecall;
    function seg(const respSeg: WideString; const CNPJ_respSeg_Opc: WideString;
                 const CPF_respSeg_Opc: WideString; const infSeg_xSeg_Opc: WideString;
                 const infSeg_CNPJ_Opc: WideString; const nApol_Opc: WideString;
                 const nAver_Opc: WideString): WideString; safecall;
    function nAver(const nAver_Opc: WideString): WideString; safecall;
    function tot_v3(qCTe_Opc: Integer; qNFe_Opc: Integer; qMDFe_Opc: Integer; vCarga: Double;
                    const cUnid: WideString; qCarga: Double): WideString; safecall;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; safecall;
    function MDFe_v3(const Versao: WideString; const Id: WideString; const ide_Grupo: WideString;
                     const emit_Grupo: WideString; const infModal_Grupo: WideString;
                     const infDoc_Grupo: WideString; const seg_Grupo_Opc: WideString;
                     const tot_Grupo: WideString; const lacres_Grupo_Opc: WideString;
                     const autXML_Grupo_Opc: WideString; const infAdic_Grupo_Opc: WideString): WideString; safecall;
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
    function veicReboque_v3(const cInt_Opc: WideString; const placa: WideString;
                            const RENAVAM_Opc: WideString; const tara: WideString;
                            const capKG: WideString; const capM3_Opc: WideString;
                            const prop_Grupo_Opc: WideString; const tpCar: WideString;
                            const UF: WideString): WideString; safecall;
    function veicPrincipal_v3(const cInt_Opc: WideString; const placa: WideString;
                              const RENAVAM_Opc: WideString; const tara: WideString;
                              const capKG_Opc: WideString; const capM3_Opc: WideString;
                              const prop_Grupo_Opc: WideString; const condutor_Grupo: WideString;
                              const tpRod: WideString; const tpCar: WideString; const UF: WideString): WideString; safecall;
    function infEntregaParcial(const qtdTotal: WideString; const qtdParcial: WideString): WideString; safecall;
    function infCTe_NT2018002(const chCTe: WideString; const SegCodBarra_Opc: WideString;
                              const indReentrega_Opc: WideString;
                              const infUnidTransp_Grupo_Opc: WideString;
                              const peri_Grupo_Opc: WideString;
                              const infEntregaParcial_Opc: WideString): WideString; safecall;
    function infRespTec(const CNPJ: WideString; const xContato: WideString;
                        const email: WideString; const fone: WideString;
                        const idCSRT_Opc: WideString; const hashCSRT_Opc: WideString): WideString; safecall;
    function MDFe_NT2018002(const Versao: WideString; const Id: WideString;
                            const ide_Grupo: WideString; const emit_Grupo: WideString;
                            const infModal_Grupo: WideString; const infDoc_Grupo: WideString;
                            const seg_Grupo_Opc: WideString; const tot_Grupo: WideString;
                            const lacres_Grupo_Opc: WideString; const autXML_Grupo_Opc: WideString;
                            const infAdic_Grupo_Opc: WideString; const infRespTec_Opc: WideString): WideString; safecall;
    function ide_v3a(cUF: Integer; tpAmb: Integer; tpEmit: Integer; const tpTransp_opc: WideString;
                     mod_: Integer; serie: Integer; nMDF: Integer; cMDF: Integer; cDV: Integer;
                     modal: Integer; const dhEmi: WideString; tpEmis: Integer;
                     const procEmi: WideString; const verProc: WideString; const UFIni: WideString;
                     const UFFim: WideString; const infMunCarrega_Grupo: WideString;
                     const infPercurso_Grupo_Opc: WideString; const dhIniViagem_Opc: WideString;
                     const indCanalVerde_Opc: WideString; const indCarregaPosterior_Opc: WideString): WideString; safecall;
    function EnviaMDFeSincrono(const siglaWS: WideString; const MDFe: WideString;
                               const nomeCertificado: WideString; const Versao: WideString;
                               out msgDados: WideString; out msgRetWS: WideString;
                               out cStat: Integer; out msgResultado: WideString;
                               out protocolo: WideString; out nroProtocolo: WideString;
                               out dhProtocolo: WideString; out MDFeAssinado: WideString;
                               const proxy: WideString; const usuario: WideString;
                               const senha: WideString; const licenca: WideString): WideString; safecall;
    function infDoc_v3a(const cMunDescarga: WideString; const xMunDescarga: WideString;
                        const chNFe: WideString): WideString; safecall;
    function IncDFeMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                        const nomeCertificado: WideString; const Versao: WideString;
                        out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer;
                        out msgResultado: WideString; const chaveMDFe: WideString;
                        const nProt: WideString; const cMunCarrega: WideString;
                        const xMunCarrega: WideString; const infDoc: WideString;
                        const dhEvento: WideString; nSeq: Integer; out nProtocoloInc: WideString;
                        out dProtocoloInc: WideString; const proxy: WideString;
                        const usuario: WideString; const senha: WideString;
                        const licenca: WideString): WideString; safecall;
    function infRespTec2(const CNPJ: WideString; const xContato: WideString;
                         const email: WideString; const fone: WideString; const idCSRT: WideString;
                         const CSRT: WideString; const chaveMDFe: WideString): WideString; safecall;
    function infMDFeSupl(const URL: WideString; const chaveMDFe: WideString; tpAmb: Integer;
                         const nomeCertificado: WideString; out qrCode: WideString;
                         out resultado: Integer; out msgResultado: WideString): WideString; safecall;
    function MDFe_v3a(const Versao: WideString; const Id: WideString; const ide_Grupo: WideString;
                      const emit_Grupo: WideString; const infModal_Grupo: WideString;
                      const infDoc_Grupo: WideString; const seg_Grupo_Opc: WideString;
                      const tot_Grupo: WideString; const lacres_Grupo_Opc: WideString;
                      const autXML_Grupo_Opc: WideString; const infAdic_Grupo_Opc: WideString;
                      const infRespTec_Opc: WideString; const infMDFeSupl_Opc: WideString): WideString; safecall;
    function geraPdfDAMDFE(const XML: WideString; const logo: WideString;
                           const visualizar: WideString; const parametros: WideString;
                           out msgResultado: WideString): Integer; safecall;
    function infLotacao(const LC_CEP: WideString; LC_latitude: Double; LC_longitude: Double;
                        const LD_CEP: WideString; LD_latitude: Double; LD_longitude: Double): WideString; safecall;
    function prodPred(const tpCarga: WideString; const xProd: WideString;
                      const cEAN_Opc: WideString; const NCM_Opc: WideString;
                      const infLotacao_Opc: WideString): WideString; safecall;
    function MDFe_NT2020001(const Versao: WideString; const Id: WideString;
                            const ide_Grupo: WideString; const emit_Grupo: WideString;
                            const infModal_Grupo: WideString; const infDoc_Grupo: WideString;
                            const seg_Grupo_Opc: WideString; const tot_Grupo: WideString;
                            const lacres_Grupo_Opc: WideString; const autXML_Grupo_Opc: WideString;
                            const infAdic_Grupo_Opc: WideString; const infRespTec_Opc: WideString;
                            const infMDFeSupl_Opc: WideString; const prodPred_Opc: WideString): WideString; safecall;
    function infCont_NT2020001(const xNome_Opc: WideString; const CPF: WideString;
                               const CNPJ: WideString; const idEstrangeiro: WideString): WideString; safecall;
    function Comp(const tpComp: WideString; vComp: Double; const xComp_Opc: WideString): WideString; safecall;
    function infPrazo(const nParcela_Opc: WideString; dVenc_Opc: TDateTime; vParcela: Double): WideString; safecall;
    function infPag(const xNome_Opc: WideString; const CPF: WideString; const CNPJ: WideString;
                    const idEstrangeiro: WideString; const Comp: WideString; vContrato: Double;
                    const indPag: WideString; const infPrazo: WideString;
                    const codBanco: WideString; const codAgencia: WideString;
                    const CNPJIPEF: WideString): WideString; safecall;
    function infANTT_NT2020001(const RNTRC_Opc: WideString; const infCIOT_Grupo_Opc: WideString;
                               const valePed_Grupo_Opc: WideString;
                               const infContratnte_Grupo_Opc: WideString;
                               const infPag_Grupo: WideString): WideString; safecall;
    function incPagtoOper(const siglaWS: WideString; tipoAmbiente: Integer;
                          const nomeCertificado: WideString; const Versao: WideString;
                          out msgDados: WideString; out msgRetWS: WideString;
                          out resultado: Integer; out msgResultado: WideString;
                          const chaveMDFe: WideString; const nProt: WideString;
                          qtdViagens: Integer; nroViagem: Integer; const infPag: WideString;
                          const dhEvento: WideString; nSeq: Integer;
                          out nProtPagtoOper: WideString; out dProtPagtoOper: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString; const licenca: WideString): WideString; safecall;
    function valePed_NT2021001(const disp: WideString; const categCombVeic_Opc: WideString): WideString; safecall;
    function disp_NT2021001(const CNPJForn: WideString; const CNPJPg: WideString;
                            const CPFPg: WideString; const nCompra: WideString;
                            const vValePed: WideString; const tpValePed_Opc: WideString): WideString; safecall;
    function infANTT_NT2021001(const RNTRC_Opc: WideString; const infCIOT_Grupo_Opc: WideString;
                               const valePed_Grupo_Opc: WideString;
                               const infContratnte_Grupo_Opc: WideString;
                               const infPag_Grupo: WideString): WideString; safecall;
    function infPag_NT2021001(const xNome_Opc: WideString; const CPF: WideString;
                              const CNPJ: WideString; const idEstrangeiro: WideString;
                              const Comp: WideString; vContrato: Double; const indPag: WideString;
                              const infPrazo: WideString; const codBanco: WideString;
                              const codAgencia: WideString; const CNPJIPEF: WideString;
                              const PIX: WideString; const indAltoDesemp_Opc: WideString): WideString; safecall;
    function infPag_NT2021002(const xNome_Opc: WideString; const CPF: WideString;
                              const CNPJ: WideString; const idEstrangeiro: WideString;
                              const Comp: WideString; vContrato: Double; const indPag: WideString;
                              const infPrazo: WideString; const codBanco: WideString;
                              const codAgencia: WideString; const CNPJIPEF: WideString;
                              const PIX: WideString; const indAltoDesemp_Opc: WideString;
                              vAdiant_Opc: Double): WideString; safecall;
    function infCont_NT2022001(const xNome_Opc: WideString; const CPF: WideString;
                               const CNPJ: WideString; const idEstrangeiro: WideString;
                               const NroContrato: WideString; vContratoGlobal: Double): WideString; safecall;
    function infPag_NT2022001(const xNome_Opc: WideString; const CPF: WideString;
                              const CNPJ: WideString; const idEstrangeiro: WideString;
                              const Comp: WideString; vContrato: Double; const indPag: WideString;
                              const infPrazo: WideString; const codBanco: WideString;
                              const codAgencia: WideString; const CNPJIPEF: WideString;
                              const PIX: WideString; const indAltoDesemp_Opc: WideString;
                              vAdiant_Opc: Double; const indAntecipaAdiant_Opc: WideString;
                              const tpAntecip_Opc: WideString): WideString; safecall;
    function confServ(const siglaWS: WideString; tipoAmbiente: Integer;
                      const nomeCertificado: WideString; const Versao: WideString;
                      out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer;
                      out msgResultado: WideString; const chaveMDFe: WideString;
                      const nProt: WideString; const dhEvento: WideString; nSeq: Integer;
                      out nProtConfServ: WideString; out dProtConfServ: WideString;
                      const proxy: WideString; const usuario: WideString; const senha: WideString;
                      const licenca: WideString): WideString; safecall;
    function altPagtoOper(const siglaWS: WideString; tipoAmbiente: Integer;
                          const nomeCertificado: WideString; const Versao: WideString;
                          out msgDados: WideString; out msgRetWS: WideString;
                          out resultado: Integer; out msgResultado: WideString;
                          const chaveMDFe: WideString; const nProt: WideString;
                          const infPag: WideString; const dhEvento: WideString; nSeq: Integer;
                          out nProtAltPagtoOper: WideString; out dProtAltPagtoOper: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString; const licenca: WideString): WideString; safecall;
    function CriaProcMDFe(const siglaWS: WideString; var MDFeAssinado: WideString;
                          out protocolo: WideString; out resultado: Integer;
                          const nomeCertificado: WideString; out msgResultado: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString): WideString; safecall;
    function infCTe_NT2024002(const chCTe: WideString; const SegCodBarra_Opc: WideString;
                              const indReentrega_Opc: WideString;
                              const infUnidTransp_Grupo_Opc: WideString;
                              const peri_Grupo_Opc: WideString;
                              const infEntregaParcial_Opc: WideString;
                              const infNFePrestParcial_Opc: WideString): WideString; safecall;
    function infNFePrestParcial(const chNFe: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  MDFe_Util_InterfaceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {89A35A2C-4981-4571-BD5F-2BDEB4B5E156}
// *********************************************************************//
  MDFe_Util_InterfaceDisp = dispinterface
    ['{89A35A2C-4981-4571-BD5F-2BDEB4B5E156}']
    function Versao(out DLL_nome: WideString; out DLL_versao: WideString; out DLL_data: WideString;
                    out DLL_dataValidade: WideString; out URL_versao: WideString;
                    out URL_data: WideString): WideString; dispid 1;
    function ConsultaWS(const siglaWS: WideString; const siglaUF: WideString;
                        tipoAmbiente: Integer; const nomeCertificado: WideString;
                        const Versao: WideString; out msgDados: WideString;
                        out msgRetWS: WideString; out msgResultado: WideString;
                        out tMed: WideString; out dhRetorno: WideString; out xObs: WideString;
                        const proxy: WideString; const usuario: WideString; const senha: WideString): Integer; dispid 10;
    function ConsultaMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                          const nomeCertificado: WideString; const Versao: WideString;
                          out msgDados: WideString; out msgRetWS: WideString;
                          out msgResultado: WideString; const chaveMDFe: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString): Integer; dispid 11;
    function EnviaMDFe(const siglaWS: WideString; const nomeCertificado: WideString;
                       const Versao: WideString; const MDFe: WideString; out msgDados: WideString;
                       out msgRetWS: WideString; out cStat: Integer; out msgResultado: WideString;
                       out nRec: WideString; out dhRecbto: WideString; out tMed: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString;
                       const licenca: WideString): WideString; dispid 12;
    function BuscaMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                       const nomeCertificado: WideString; const Versao: WideString;
                       const nroRecibo: WideString; const MDFeAssinado: WideString;
                       out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                       out msgResultado: WideString; out protocolo: WideString;
                       out nroProtocolo: WideString; out dhProtocolo: WideString;
                       const proxy: WideString; const usuario: WideString; const senha: WideString): WideString; dispid 13;
    function CancelaMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString;
                         out resultado: Integer; out msgResultado: WideString;
                         const chaveMDFe: WideString; const nProtocolo: WideString;
                         const justificativa: WideString; const dhEvento: WideString;
                         out nProtocoloCanc: WideString; out dProtocoloCanc: WideString;
                         const proxy: WideString; const usuario: WideString;
                         const senha: WideString; const licenca: WideString): WideString; dispid 14;
    function EncerraMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                         const nomeCertificado: WideString; const Versao: WideString;
                         out msgDados: WideString; out msgRetWS: WideString;
                         out resultado: Integer; out msgResultado: WideString;
                         const chaveMDFe: WideString; const nProtocolo: WideString;
                         const dtEnc: WideString; const cUFEnc: WideString;
                         const cMunEnc: WideString; const dhEvento: WideString;
                         out nProtocoloEnc: WideString; out dProtocoloEnc: WideString;
                         const proxy: WideString; const usuario: WideString;
                         const senha: WideString; const licenca: WideString): WideString; dispid 15;
    function Assinar(const XMLString: WideString; const tagAssinatura: WideString;
                     const Atributo: WideString; const nomeCertificado: WideString;
                     out cResultado: Integer; out msgResultado: WideString): WideString; dispid 101;
    function AssinarURI(const XMLString: WideString; const URI: WideString;
                        const nomeCertificado: WideString; out cResultado: Integer;
                        out msgResultado: WideString): WideString; dispid 102;
    function ValidaXML(const XML: WideString; const XSD: WideString; out msgResultado: WideString;
                       out qtdeErros: Integer; out erroXML: WideString): Integer; dispid 103;
    function PegaDadosCertificado(var Nome: WideString; out msgResultado: WideString;
                                  out Titular: WideString; out CNPJ: WideString;
                                  out NroSerie: WideString; out Emissor: WideString;
                                  out InicioValidade: WideString; out FimValidade: WideString): Integer; dispid 104;
    function IdentaXML(const txtXML: WideString; out cResultado: Integer;
                       out msgResultado: WideString): WideString; dispid 105;
    function EliminaIdentacaoXML(const txtXML: WideString; out cResultado: Integer;
                                 out msgResultado: WideString): WideString; dispid 106;
    function ConverteArquivoBase64(const NomeArquivo: WideString; out cResultado: Integer;
                                   out msgResultado: WideString): WideString; dispid 107;
    function LeArquivoANSI(const NomeArquivo: WideString; out cResultado: Integer;
                           out msgResultado: WideString): WideString; dispid 108;
    function encodeBase64(const txtANSI: WideString; out cResultado: Integer;
                          out msgResultado: WideString): WideString; dispid 109;
    function decodeBase64(const txtBase64: WideString; out cResultado: Integer;
                          out msgResultado: WideString): WideString; dispid 110;
    function CriaChaveDFe(const cUF: WideString; const Ano: WideString; const Mes: WideString;
                          const CNPJ: WideString; const modelo: WideString;
                          const serie: WideString; const numero: WideString;
                          const tpEmis: WideString; const codigoSeguranca: WideString;
                          out msgResultado: WideString; out cDF: WideString; out cDV: WideString;
                          out chave: WideString): Integer; dispid 201;
    function ide(_cUF: Integer; _tpAmb: Integer; _tpEmit: Integer; _mod: Integer; _serie: Integer;
                 _nMDF: Integer; _cMDF: Integer; _cDV: Integer; _modal: Integer; _dhEmi: TDateTime;
                 _tpEmis: Integer; const _procEmi: WideString; const _verProc: WideString;
                 const _UFIni: WideString; const _UFFim: WideString;
                 const _infMunCarrega_Grupo: WideString; const _infPercurso_Grupo_Opc: WideString): WideString; dispid 300;
    function infMunCarrega(const _cMunCarrega: WideString; const _xMunCarrega: WideString): WideString; dispid 301;
    function infPercurso(const _UFPer: WideString): WideString; dispid 302;
    function emit(const _CNPJ: WideString; const _IE: WideString; const _xNome: WideString;
                  const _xFant_Opc: WideString; const _xLgr: WideString; const _nro: WideString;
                  const _xCpl_Opc: WideString; const _xBairro: WideString; const _cMun: WideString;
                  const _xMun: WideString; const _CEP_Opc: WideString; const _UF: WideString;
                  const _fone_Opc: WideString; const _email_Opc: WideString): WideString; dispid 303;
    function valePed(const _CNPJForn: WideString; const _nCompra: WideString;
                     const _CNPJPg_Opc: WideString): WideString; dispid 304;
    function prop(const _RNTRC: WideString): WideString; dispid 305;
    function veicReboque(const _cInt_Opc: WideString; const _placa: WideString;
                         const _tara: WideString; const _capKG: WideString;
                         const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString): WideString; dispid 306;
    function veicPrincipal(const _cInt_Opc: WideString; const _placa: WideString;
                           const _tara: WideString; const _capKG_Opc: WideString;
                           const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString;
                           const _condutor_Grupo: WideString): WideString; dispid 307;
    function condutor(const _xNome: WideString; const _CPF: WideString): WideString; dispid 308;
    function rodo(const _versaoModal: WideString; const _RNTRC_Opc: WideString;
                  const _CIOT_Opc: WideString; const _veicPrincipal_Grupo: WideString;
                  const _veicReboque_Grupo_Opc: WideString; const valePed_Grupo_Opc: WideString): WideString; dispid 309;
    function infNF(const _CNPJ: WideString; const _UF: WideString; const _nNF: WideString;
                   const _serie: WideString; _dEmi: TDateTime; _vNF: Double;
                   const _PIN_Opc: WideString): WideString; dispid 310;
    function infNFe(const _chNFe: WideString; const _SegCodBarra_Opc: WideString): WideString; dispid 311;
    function infCT(const _nCT: WideString; const _serie: WideString; const _subser_Opc: WideString;
                   _dEmi: TDateTime; _vCarga: Double): WideString; dispid 312;
    function infCTe(const _chCTe: WideString; const _SegCodBarra_Opc: WideString): WideString; dispid 313;
    function infDoc(const _cMunDescarga: WideString; const _xMunDescarga: WideString;
                    const _infCTe_Grupo_Opc: WideString; const _infCT_Grupo_Opc: WideString;
                    const _infNFe_Grupo_Opc: WideString; const _infNF_Grupo_Opc: WideString): WideString; dispid 315;
    function tot(_qCTe: Integer; _qCT: Integer; _qNFe: Integer; _qNF: Integer; _vCarga: Double;
                 const _cUnid: WideString; _qCarga: Double): WideString; dispid 316;
    function lacres(const _nLacre: WideString): WideString; dispid 317;
    function infAdic(const _infAdFisco_Opc: WideString; const _infCpl_Opc: WideString): WideString; dispid 318;
    function MDFe(const _versao: WideString; const _Id: WideString; const _ide_Grupo: WideString;
                  const _emit_Grupo: WideString; const _infModal_Grupo: WideString;
                  const _infDoc_Grupo: WideString; const _tot_Grupo: WideString;
                  const _lacres_Grupo_Opc: WideString; const _infAdic_Grupo_Opc: WideString): WideString; dispid 319;
    function aereo(const _versaoModal: WideString; const _nac: WideString; const _matr: WideString;
                   const _nVoo: WideString; const _cAerEmb: WideString; const _cAerDes: WideString;
                   _dVoo: TDateTime): WideString; dispid 320;
    function vag(const _serie: WideString; const _nVag: WideString; const _nSeq_Opc: WideString;
                 const _TU: WideString): WideString; dispid 321;
    function ferrov(const _versaoModal: WideString; const _xPref: WideString;
                    _dhTrem_Opc: TDateTime; const _xOri: WideString; const _xDest: WideString;
                    const _qVag: WideString; const _vag_Grupo_Opc: WideString): WideString; dispid 322;
    function infTermCarreg(const _cTermCarreg: WideString): WideString; dispid 323;
    function infTermDescarreg(const _cTermDescarreg: WideString): WideString; dispid 324;
    function infEmbComb(const _cEmbComb: WideString): WideString; dispid 325;
    function aquav(const _versaoModal: WideString; const _CNPJAgeNav: WideString;
                   const _tpEmb: WideString; const _cEmbar: WideString; const _nViag: WideString;
                   const _cPrtEmb: WideString; const _cPrtDest: WideString;
                   const _infTermCarreg_Grupo_Opc: WideString;
                   const _infTermDescarreg_Grupo_Opc: WideString;
                   const _infEmbCom_Grupo_Opc: WideString): WideString; dispid 326;
    function geraLoteMDFe(const _versao: WideString; const _idLote: WideString;
                          const _MDFe: WideString; const _NomeCertificado: WideString;
                          out _cStat: Integer; out _msgResultado: WideString;
                          out _MDFeAssinado: WideString): WideString; dispid 400;
    function infUnidTransp(const _tpUnidTransp: WideString; const _idUnidTransp: WideString;
                           const _lacUnidTransp_Opc: WideString;
                           const _infUnidCarga_Opc: WideString; const _qtdRat_Opc: WideString): WideString; dispid 601;
    function lacUnidTransp(const _nLacre: WideString): WideString; dispid 602;
    function infUnidCarga(const _tpUnidCarga: WideString; const _idUnidCarga: WideString;
                          const _lacUnidCarga_Opc: WideString; const _qtdRat_Opc: WideString): WideString; dispid 603;
    function lacUnidCarga(const _nLacre: WideString): WideString; dispid 604;
    function infNFNovo(const _CNPJ: WideString; const _UF: WideString; const _nNF: WideString;
                       const _serie: WideString; _dEmi: TDateTime; _vNF: Double;
                       const _PIN_Opc: WideString; const _infUnidTransp_Opc: WideString): WideString; dispid 605;
    function infNFeNovo(const _chNFe: WideString; const _SegCodBarra_Opc: WideString;
                        const _infUnidTransp_Opc: WideString): WideString; dispid 606;
    function infCTNovo(const _nCT: WideString; const _serie: WideString;
                       const _subser_Opc: WideString; _dEmi: TDateTime; _vCarga: Double;
                       const _infUnidTransp_Opc: WideString): WideString; dispid 607;
    function infCTeNovo(const _chCTe: WideString; const _SegCodBarra_Opc: WideString;
                        const _infUnidTransp_Opc: WideString): WideString; dispid 608;
    function prop_v10a(const _CPF: WideString; const _CNPJ: WideString; const _RNTRC: WideString;
                       const _xNome: WideString; const _IE_Opc: WideString;
                       const _UF_Opc: WideString; _tpProp: Integer): WideString; dispid 609;
    function veicReboque_v10a(const _cInt_Opc: WideString; const _placa: WideString;
                              const _tara: WideString; const _capKG: WideString;
                              const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString;
                              const tpCar: WideString; const UF: WideString): WideString; dispid 610;
    function veicPrincipal_v10a(const _cInt_Opc: WideString; const _placa: WideString;
                                const _tara: WideString; const _capKG_Opc: WideString;
                                const _capM3_Opc: WideString; const _prop_Grupo_Opc: WideString;
                                const _condutor_Grupo: WideString; const tpRod: WideString;
                                const tpCar: WideString; const UF: WideString): WideString; dispid 611;
    function IncCondutorMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                             const nomeCertificado: WideString; const Versao: WideString;
                             out msgDados: WideString; out msgRetWS: WideString;
                             out resultado: Integer; out msgResultado: WideString;
                             const chaveMDFe: WideString; const CPF: WideString;
                             const xNome: WideString; const dhEvento: WideString; nSeq: Integer;
                             out nProtocoloInc: WideString; out dProtocoloInc: WideString;
                             const proxy: WideString; const usuario: WideString;
                             const senha: WideString; const licenca: WideString): WideString; dispid 612;
    function ConsMDFeNaoEnc(const siglaWS: WideString; const siglaUF: WideString;
                            tipoAmbiente: Integer; const nomeCertificado: WideString;
                            const Versao: WideString; out msgDados: WideString;
                            out msgRetWS: WideString; out resultado: Integer;
                            out msgResultado: WideString; const CNPJ: WideString;
                            out cUF: WideString; out qtdeMDFe: Integer; const proxy: WideString;
                            const usuario: WideString; const senha: WideString;
                            const licenca: WideString): WideString; dispid 613;
    function ide_v3(cUF: Integer; tpAmb: Integer; tpEmit: Integer; const tpTransp_opc: WideString;
                    mod_: Integer; serie: Integer; nMDF: Integer; cMDF: Integer; cDV: Integer;
                    modal: Integer; const dhEmi: WideString; tpEmis: Integer;
                    const procEmi: WideString; const verProc: WideString; const UFIni: WideString;
                    const UFFim: WideString; const infMunCarrega_Grupo: WideString;
                    const infPercurso_Grupo_Opc: WideString; const dhIniViagem_Opc: WideString): WideString; dispid 614;
    function aquav_v3(const versaoModal: WideString; const irin: WideString;
                      const tpEmb: WideString; const cEmbar: WideString; const xEmbar: WideString;
                      const nViag: WideString; const cPrtEmb: WideString;
                      const cPrtDest: WideString; const prtTrans_Opc: WideString;
                      const tpNav_Opc: WideString; const infTermCarreg_Grupo_Opc: WideString;
                      const infTermDescarreg_Grupo_Opc: WideString;
                      const infEmbCom_Grupo_Opc: WideString;
                      const infUnidCargaVazia_Opc: WideString;
                      const infUnidTranspVazia_Opc: WideString): WideString; dispid 615;
    function infTermCarreg_v3(const cTermCarreg: WideString; const xTermCarreg: WideString): WideString; dispid 616;
    function infTermDescarreg_v3(const cTermDescarreg: WideString; const xTermDescarreg: WideString): WideString; dispid 617;
    function infEmbComb_v3(const cEmbComb: WideString; const xBalsa: WideString): WideString; dispid 618;
    function infUnidCargaVazia(const idUnidCargaVazia: WideString;
                               const tpUnidCargaVazia: WideString): WideString; dispid 619;
    function infUnidTranspVazia(const idUnidTranspVazia: WideString;
                                const tpUnidTranspVazia: WideString): WideString; dispid 620;
    function ferrov_v3(const versaoModal: WideString; const xPref: WideString;
                       const dhTrem_Opc: WideString; const xOri: WideString;
                       const xDest: WideString; const qVag: WideString;
                       const vag_Grupo_Opc: WideString): WideString; dispid 621;
    function vag_v3(const pesoBC: WideString; const pesoR: WideString; const tpVag_Opc: WideString;
                    const serie: WideString; const nVag: WideString; const nSeq_Opc: WideString;
                    const TU: WideString): WideString; dispid 622;
    function rodo_v3(const versaoModal: WideString; const infANTT_Grupo_Opc: WideString;
                     const veicPrincipal_Grupo: WideString;
                     const veicReboque_Grupo_Opc: WideString; const codAgPorto_Opc: WideString;
                     const lacRodo_Grupo_Opc: WideString): WideString; dispid 623;
    function infANTT(const RNTRC_Opc: WideString; const infCIOT_Grupo_Opc: WideString;
                     const valePed_Grupo_Opc: WideString; const infContratnte_Grupo_Opc: WideString): WideString; dispid 624;
    function infCIOT(const CIOT: WideString; const CPF: WideString; const CNPJ: WideString): WideString; dispid 625;
    function disp(const CNPJForn: WideString; const CNPJPg: WideString; const CPFPg: WideString;
                  const nCompra: WideString; const vValePed: WideString): WideString; dispid 626;
    function infCont(const CPF: WideString; const CNPJ: WideString): WideString; dispid 627;
    function lacRod(const nLacre: WideString): WideString; dispid 628;
    function infMunDescarga(const cMunDescarga: WideString; const xMunDescarga: WideString;
                            const infCTe_Grupo_Opc: WideString; const infNFe_Grupo_Opc: WideString;
                            const infMDFe_Grupo_Opc: WideString): WideString; dispid 629;
    function infCTe_v3(const chCTe: WideString; const SegCodBarra_Opc: WideString;
                       const indReentrega_Opc: WideString;
                       const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; dispid 630;
    function peri(const nOnu: WideString; const xNomeAE_Opc: WideString;
                  const xClaRisco_Opc: WideString; const grEmb_Opc: WideString;
                  const qTotProd: WideString; const qVolTipo_Opc: WideString): WideString; dispid 631;
    function infNFe_v3(const chNFe: WideString; const SegCodBarra_Opc: WideString;
                       const indReentrega_Opc: WideString;
                       const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; dispid 632;
    function infMDFe(const chMDFe: WideString; const indReentrega_Opc: WideString;
                     const infUnidTransp_Grupo_Opc: WideString; const peri_Grupo_Opc: WideString): WideString; dispid 633;
    function seg(const respSeg: WideString; const CNPJ_respSeg_Opc: WideString;
                 const CPF_respSeg_Opc: WideString; const infSeg_xSeg_Opc: WideString;
                 const infSeg_CNPJ_Opc: WideString; const nApol_Opc: WideString;
                 const nAver_Opc: WideString): WideString; dispid 634;
    function nAver(const nAver_Opc: WideString): WideString; dispid 635;
    function tot_v3(qCTe_Opc: Integer; qNFe_Opc: Integer; qMDFe_Opc: Integer; vCarga: Double;
                    const cUnid: WideString; qCarga: Double): WideString; dispid 636;
    function autXML(const CNPJ: WideString; const CPF: WideString): WideString; dispid 637;
    function MDFe_v3(const Versao: WideString; const Id: WideString; const ide_Grupo: WideString;
                     const emit_Grupo: WideString; const infModal_Grupo: WideString;
                     const infDoc_Grupo: WideString; const seg_Grupo_Opc: WideString;
                     const tot_Grupo: WideString; const lacres_Grupo_Opc: WideString;
                     const autXML_Grupo_Opc: WideString; const infAdic_Grupo_Opc: WideString): WideString; dispid 638;
    function consNSU(const siglaWS: WideString; tipoAmbiente: Integer;
                     const nomeCertificado: WideString; const Versao: WideString;
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString;
                     const NSU: WideString; out verAplic: WideString; out dhResp: WideString;
                     out ultNSU: WideString; out maxNSU: WideString; out NSUXML: WideString;
                     out schemaXML: WideString; const proxy: WideString; const usuario: WideString;
                     const senha: WideString; const licenca: WideString): WideString; dispid 639;
    function distNSU(const siglaWS: WideString; tipoAmbiente: Integer;
                     const nomeCertificado: WideString; const Versao: WideString;
                     out msgDados: WideString; out msgRetWS: WideString; out cStat: Integer;
                     out msgResultado: WideString; const CNPJ: WideString; const cUF: WideString;
                     const ultNSURecebido: WideString; out verAplic: WideString;
                     out dhResp: WideString; out ultNSU: WideString; out maxNSU: WideString;
                     out qtdeDocto: Integer; const proxy: WideString; const usuario: WideString;
                     const senha: WideString; const licenca: WideString): WideString; dispid 640;
    function veicReboque_v3(const cInt_Opc: WideString; const placa: WideString;
                            const RENAVAM_Opc: WideString; const tara: WideString;
                            const capKG: WideString; const capM3_Opc: WideString;
                            const prop_Grupo_Opc: WideString; const tpCar: WideString;
                            const UF: WideString): WideString; dispid 641;
    function veicPrincipal_v3(const cInt_Opc: WideString; const placa: WideString;
                              const RENAVAM_Opc: WideString; const tara: WideString;
                              const capKG_Opc: WideString; const capM3_Opc: WideString;
                              const prop_Grupo_Opc: WideString; const condutor_Grupo: WideString;
                              const tpRod: WideString; const tpCar: WideString; const UF: WideString): WideString; dispid 642;
    function infEntregaParcial(const qtdTotal: WideString; const qtdParcial: WideString): WideString; dispid 643;
    function infCTe_NT2018002(const chCTe: WideString; const SegCodBarra_Opc: WideString;
                              const indReentrega_Opc: WideString;
                              const infUnidTransp_Grupo_Opc: WideString;
                              const peri_Grupo_Opc: WideString;
                              const infEntregaParcial_Opc: WideString): WideString; dispid 645;
    function infRespTec(const CNPJ: WideString; const xContato: WideString;
                        const email: WideString; const fone: WideString;
                        const idCSRT_Opc: WideString; const hashCSRT_Opc: WideString): WideString; dispid 646;
    function MDFe_NT2018002(const Versao: WideString; const Id: WideString;
                            const ide_Grupo: WideString; const emit_Grupo: WideString;
                            const infModal_Grupo: WideString; const infDoc_Grupo: WideString;
                            const seg_Grupo_Opc: WideString; const tot_Grupo: WideString;
                            const lacres_Grupo_Opc: WideString; const autXML_Grupo_Opc: WideString;
                            const infAdic_Grupo_Opc: WideString; const infRespTec_Opc: WideString): WideString; dispid 647;
    function ide_v3a(cUF: Integer; tpAmb: Integer; tpEmit: Integer; const tpTransp_opc: WideString;
                     mod_: Integer; serie: Integer; nMDF: Integer; cMDF: Integer; cDV: Integer;
                     modal: Integer; const dhEmi: WideString; tpEmis: Integer;
                     const procEmi: WideString; const verProc: WideString; const UFIni: WideString;
                     const UFFim: WideString; const infMunCarrega_Grupo: WideString;
                     const infPercurso_Grupo_Opc: WideString; const dhIniViagem_Opc: WideString;
                     const indCanalVerde_Opc: WideString; const indCarregaPosterior_Opc: WideString): WideString; dispid 648;
    function EnviaMDFeSincrono(const siglaWS: WideString; const MDFe: WideString;
                               const nomeCertificado: WideString; const Versao: WideString;
                               out msgDados: WideString; out msgRetWS: WideString;
                               out cStat: Integer; out msgResultado: WideString;
                               out protocolo: WideString; out nroProtocolo: WideString;
                               out dhProtocolo: WideString; out MDFeAssinado: WideString;
                               const proxy: WideString; const usuario: WideString;
                               const senha: WideString; const licenca: WideString): WideString; dispid 649;
    function infDoc_v3a(const cMunDescarga: WideString; const xMunDescarga: WideString;
                        const chNFe: WideString): WideString; dispid 650;
    function IncDFeMDFe(const siglaWS: WideString; tipoAmbiente: Integer;
                        const nomeCertificado: WideString; const Versao: WideString;
                        out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer;
                        out msgResultado: WideString; const chaveMDFe: WideString;
                        const nProt: WideString; const cMunCarrega: WideString;
                        const xMunCarrega: WideString; const infDoc: WideString;
                        const dhEvento: WideString; nSeq: Integer; out nProtocoloInc: WideString;
                        out dProtocoloInc: WideString; const proxy: WideString;
                        const usuario: WideString; const senha: WideString;
                        const licenca: WideString): WideString; dispid 651;
    function infRespTec2(const CNPJ: WideString; const xContato: WideString;
                         const email: WideString; const fone: WideString; const idCSRT: WideString;
                         const CSRT: WideString; const chaveMDFe: WideString): WideString; dispid 652;
    function infMDFeSupl(const URL: WideString; const chaveMDFe: WideString; tpAmb: Integer;
                         const nomeCertificado: WideString; out qrCode: WideString;
                         out resultado: Integer; out msgResultado: WideString): WideString; dispid 653;
    function MDFe_v3a(const Versao: WideString; const Id: WideString; const ide_Grupo: WideString;
                      const emit_Grupo: WideString; const infModal_Grupo: WideString;
                      const infDoc_Grupo: WideString; const seg_Grupo_Opc: WideString;
                      const tot_Grupo: WideString; const lacres_Grupo_Opc: WideString;
                      const autXML_Grupo_Opc: WideString; const infAdic_Grupo_Opc: WideString;
                      const infRespTec_Opc: WideString; const infMDFeSupl_Opc: WideString): WideString; dispid 654;
    function geraPdfDAMDFE(const XML: WideString; const logo: WideString;
                           const visualizar: WideString; const parametros: WideString;
                           out msgResultado: WideString): Integer; dispid 655;
    function infLotacao(const LC_CEP: WideString; LC_latitude: Double; LC_longitude: Double;
                        const LD_CEP: WideString; LD_latitude: Double; LD_longitude: Double): WideString; dispid 656;
    function prodPred(const tpCarga: WideString; const xProd: WideString;
                      const cEAN_Opc: WideString; const NCM_Opc: WideString;
                      const infLotacao_Opc: WideString): WideString; dispid 657;
    function MDFe_NT2020001(const Versao: WideString; const Id: WideString;
                            const ide_Grupo: WideString; const emit_Grupo: WideString;
                            const infModal_Grupo: WideString; const infDoc_Grupo: WideString;
                            const seg_Grupo_Opc: WideString; const tot_Grupo: WideString;
                            const lacres_Grupo_Opc: WideString; const autXML_Grupo_Opc: WideString;
                            const infAdic_Grupo_Opc: WideString; const infRespTec_Opc: WideString;
                            const infMDFeSupl_Opc: WideString; const prodPred_Opc: WideString): WideString; dispid 658;
    function infCont_NT2020001(const xNome_Opc: WideString; const CPF: WideString;
                               const CNPJ: WideString; const idEstrangeiro: WideString): WideString; dispid 659;
    function Comp(const tpComp: WideString; vComp: Double; const xComp_Opc: WideString): WideString; dispid 660;
    function infPrazo(const nParcela_Opc: WideString; dVenc_Opc: TDateTime; vParcela: Double): WideString; dispid 661;
    function infPag(const xNome_Opc: WideString; const CPF: WideString; const CNPJ: WideString;
                    const idEstrangeiro: WideString; const Comp: WideString; vContrato: Double;
                    const indPag: WideString; const infPrazo: WideString;
                    const codBanco: WideString; const codAgencia: WideString;
                    const CNPJIPEF: WideString): WideString; dispid 662;
    function infANTT_NT2020001(const RNTRC_Opc: WideString; const infCIOT_Grupo_Opc: WideString;
                               const valePed_Grupo_Opc: WideString;
                               const infContratnte_Grupo_Opc: WideString;
                               const infPag_Grupo: WideString): WideString; dispid 663;
    function incPagtoOper(const siglaWS: WideString; tipoAmbiente: Integer;
                          const nomeCertificado: WideString; const Versao: WideString;
                          out msgDados: WideString; out msgRetWS: WideString;
                          out resultado: Integer; out msgResultado: WideString;
                          const chaveMDFe: WideString; const nProt: WideString;
                          qtdViagens: Integer; nroViagem: Integer; const infPag: WideString;
                          const dhEvento: WideString; nSeq: Integer;
                          out nProtPagtoOper: WideString; out dProtPagtoOper: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString; const licenca: WideString): WideString; dispid 664;
    function valePed_NT2021001(const disp: WideString; const categCombVeic_Opc: WideString): WideString; dispid 665;
    function disp_NT2021001(const CNPJForn: WideString; const CNPJPg: WideString;
                            const CPFPg: WideString; const nCompra: WideString;
                            const vValePed: WideString; const tpValePed_Opc: WideString): WideString; dispid 666;
    function infANTT_NT2021001(const RNTRC_Opc: WideString; const infCIOT_Grupo_Opc: WideString;
                               const valePed_Grupo_Opc: WideString;
                               const infContratnte_Grupo_Opc: WideString;
                               const infPag_Grupo: WideString): WideString; dispid 667;
    function infPag_NT2021001(const xNome_Opc: WideString; const CPF: WideString;
                              const CNPJ: WideString; const idEstrangeiro: WideString;
                              const Comp: WideString; vContrato: Double; const indPag: WideString;
                              const infPrazo: WideString; const codBanco: WideString;
                              const codAgencia: WideString; const CNPJIPEF: WideString;
                              const PIX: WideString; const indAltoDesemp_Opc: WideString): WideString; dispid 668;
    function infPag_NT2021002(const xNome_Opc: WideString; const CPF: WideString;
                              const CNPJ: WideString; const idEstrangeiro: WideString;
                              const Comp: WideString; vContrato: Double; const indPag: WideString;
                              const infPrazo: WideString; const codBanco: WideString;
                              const codAgencia: WideString; const CNPJIPEF: WideString;
                              const PIX: WideString; const indAltoDesemp_Opc: WideString;
                              vAdiant_Opc: Double): WideString; dispid 669;
    function infCont_NT2022001(const xNome_Opc: WideString; const CPF: WideString;
                               const CNPJ: WideString; const idEstrangeiro: WideString;
                               const NroContrato: WideString; vContratoGlobal: Double): WideString; dispid 670;
    function infPag_NT2022001(const xNome_Opc: WideString; const CPF: WideString;
                              const CNPJ: WideString; const idEstrangeiro: WideString;
                              const Comp: WideString; vContrato: Double; const indPag: WideString;
                              const infPrazo: WideString; const codBanco: WideString;
                              const codAgencia: WideString; const CNPJIPEF: WideString;
                              const PIX: WideString; const indAltoDesemp_Opc: WideString;
                              vAdiant_Opc: Double; const indAntecipaAdiant_Opc: WideString;
                              const tpAntecip_Opc: WideString): WideString; dispid 671;
    function confServ(const siglaWS: WideString; tipoAmbiente: Integer;
                      const nomeCertificado: WideString; const Versao: WideString;
                      out msgDados: WideString; out msgRetWS: WideString; out resultado: Integer;
                      out msgResultado: WideString; const chaveMDFe: WideString;
                      const nProt: WideString; const dhEvento: WideString; nSeq: Integer;
                      out nProtConfServ: WideString; out dProtConfServ: WideString;
                      const proxy: WideString; const usuario: WideString; const senha: WideString;
                      const licenca: WideString): WideString; dispid 672;
    function altPagtoOper(const siglaWS: WideString; tipoAmbiente: Integer;
                          const nomeCertificado: WideString; const Versao: WideString;
                          out msgDados: WideString; out msgRetWS: WideString;
                          out resultado: Integer; out msgResultado: WideString;
                          const chaveMDFe: WideString; const nProt: WideString;
                          const infPag: WideString; const dhEvento: WideString; nSeq: Integer;
                          out nProtAltPagtoOper: WideString; out dProtAltPagtoOper: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString; const licenca: WideString): WideString; dispid 673;
    function CriaProcMDFe(const siglaWS: WideString; var MDFeAssinado: WideString;
                          out protocolo: WideString; out resultado: Integer;
                          const nomeCertificado: WideString; out msgResultado: WideString;
                          const proxy: WideString; const usuario: WideString;
                          const senha: WideString): WideString; dispid 674;
    function infCTe_NT2024002(const chCTe: WideString; const SegCodBarra_Opc: WideString;
                              const indReentrega_Opc: WideString;
                              const infUnidTransp_Grupo_Opc: WideString;
                              const peri_Grupo_Opc: WideString;
                              const infEntregaParcial_Opc: WideString;
                              const infNFePrestParcial_Opc: WideString): WideString; dispid 675;
    function infNFePrestParcial(const chNFe: WideString): WideString; dispid 676;
  end;

// *********************************************************************//
// DispIntf:  MDFe_Util_Events
// Flags:     (4096) Dispatchable
// GUID:      {0A005D06-B8C1-46CA-8270-56D108D21C84}
// *********************************************************************//
  MDFe_Util_Events = dispinterface
    ['{0A005D06-B8C1-46CA-8270-56D108D21C84}']
  end;

// *********************************************************************//
// Interface: _MDFeStatusServico
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}
// *********************************************************************//
  _MDFeStatusServico = interface(IDispatch)
    ['{0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeStatusServicoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}
// *********************************************************************//
  _MDFeStatusServicoDisp = dispinterface
    ['{0DF663E5-6A2B-3C9A-85C9-865C6B2F848C}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeStatusServico_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FB4100DC-90E2-307D-A3DA-D715026E0711}
// *********************************************************************//
  _MDFe_Util_mdfeStatusServico_mdfeCabecMsg = interface(IDispatch)
    ['{FB4100DC-90E2-307D-A3DA-D715026E0711}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeStatusServico_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FB4100DC-90E2-307D-A3DA-D715026E0711}
// *********************************************************************//
  _MDFe_Util_mdfeStatusServico_mdfeCabecMsgDisp = dispinterface
    ['{FB4100DC-90E2-307D-A3DA-D715026E0711}']
  end;

// *********************************************************************//
// Interface: _mdfeStatusServicoMDFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BFD539C2-29D0-3E47-914F-1A77B699A2F6}
// *********************************************************************//
  _mdfeStatusServicoMDFCompletedEventHandler = interface(IDispatch)
    ['{BFD539C2-29D0-3E47-914F-1A77B699A2F6}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeStatusServicoMDFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BFD539C2-29D0-3E47-914F-1A77B699A2F6}
// *********************************************************************//
  _mdfeStatusServicoMDFCompletedEventHandlerDisp = dispinterface
    ['{BFD539C2-29D0-3E47-914F-1A77B699A2F6}']
  end;

// *********************************************************************//
// Interface: _mdfeStatusServicoMDFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A75DB608-B8AB-3FC4-A874-61AEDFC3A716}
// *********************************************************************//
  _mdfeStatusServicoMDFCompletedEventArgs = interface(IDispatch)
    ['{A75DB608-B8AB-3FC4-A874-61AEDFC3A716}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeStatusServicoMDFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A75DB608-B8AB-3FC4-A874-61AEDFC3A716}
// *********************************************************************//
  _mdfeStatusServicoMDFCompletedEventArgsDisp = dispinterface
    ['{A75DB608-B8AB-3FC4-A874-61AEDFC3A716}']
  end;

// *********************************************************************//
// Interface: _MDFeRetRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}
// *********************************************************************//
  _MDFeRetRecepcao = interface(IDispatch)
    ['{FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeRetRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}
// *********************************************************************//
  _MDFeRetRecepcaoDisp = dispinterface
    ['{FCE99DE5-DCF1-326A-BA8D-0AA90479FF40}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F2E87B32-6F12-3609-8246-7EC46C6DE449}
// *********************************************************************//
  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg = interface(IDispatch)
    ['{F2E87B32-6F12-3609-8246-7EC46C6DE449}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F2E87B32-6F12-3609-8246-7EC46C6DE449}
// *********************************************************************//
  _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsgDisp = dispinterface
    ['{F2E87B32-6F12-3609-8246-7EC46C6DE449}']
  end;

// *********************************************************************//
// Interface: _mdfeRetRecepcaoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {19473EB9-D5F7-3A45-984D-0D46CA7DBF88}
// *********************************************************************//
  _mdfeRetRecepcaoCompletedEventHandler = interface(IDispatch)
    ['{19473EB9-D5F7-3A45-984D-0D46CA7DBF88}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRetRecepcaoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {19473EB9-D5F7-3A45-984D-0D46CA7DBF88}
// *********************************************************************//
  _mdfeRetRecepcaoCompletedEventHandlerDisp = dispinterface
    ['{19473EB9-D5F7-3A45-984D-0D46CA7DBF88}']
  end;

// *********************************************************************//
// Interface: _mdfeRetRecepcaoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EA0DD1F0-545D-3026-A17C-295B9D482F45}
// *********************************************************************//
  _mdfeRetRecepcaoCompletedEventArgs = interface(IDispatch)
    ['{EA0DD1F0-545D-3026-A17C-295B9D482F45}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRetRecepcaoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EA0DD1F0-545D-3026-A17C-295B9D482F45}
// *********************************************************************//
  _mdfeRetRecepcaoCompletedEventArgsDisp = dispinterface
    ['{EA0DD1F0-545D-3026-A17C-295B9D482F45}']
  end;

// *********************************************************************//
// Interface: _MDFeRecepcaoSinc
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6E4F7166-B8E5-3EAF-95AA-579ECC0ECCA9}
// *********************************************************************//
  _MDFeRecepcaoSinc = interface(IDispatch)
    ['{6E4F7166-B8E5-3EAF-95AA-579ECC0ECCA9}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeRecepcaoSincDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6E4F7166-B8E5-3EAF-95AA-579ECC0ECCA9}
// *********************************************************************//
  _MDFeRecepcaoSincDisp = dispinterface
    ['{6E4F7166-B8E5-3EAF-95AA-579ECC0ECCA9}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {25F71B29-A07B-39F2-A0C7-1E81FD7FEA2B}
// *********************************************************************//
  _mdfeRecepcaoCompletedEventHandler = interface(IDispatch)
    ['{25F71B29-A07B-39F2-A0C7-1E81FD7FEA2B}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {25F71B29-A07B-39F2-A0C7-1E81FD7FEA2B}
// *********************************************************************//
  _mdfeRecepcaoCompletedEventHandlerDisp = dispinterface
    ['{25F71B29-A07B-39F2-A0C7-1E81FD7FEA2B}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4B23B850-DDC4-3F5C-80EF-72535DF14EB7}
// *********************************************************************//
  _mdfeRecepcaoCompletedEventArgs = interface(IDispatch)
    ['{4B23B850-DDC4-3F5C-80EF-72535DF14EB7}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4B23B850-DDC4-3F5C-80EF-72535DF14EB7}
// *********************************************************************//
  _mdfeRecepcaoCompletedEventArgsDisp = dispinterface
    ['{4B23B850-DDC4-3F5C-80EF-72535DF14EB7}']
  end;

// *********************************************************************//
// Interface: _MDFeRecepcao
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B52A01C4-3A4A-3666-BD76-2B8422F36483}
// *********************************************************************//
  _MDFeRecepcao = interface(IDispatch)
    ['{B52A01C4-3A4A-3666-BD76-2B8422F36483}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeRecepcaoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B52A01C4-3A4A-3666-BD76-2B8422F36483}
// *********************************************************************//
  _MDFeRecepcaoDisp = dispinterface
    ['{B52A01C4-3A4A-3666-BD76-2B8422F36483}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2630A142-3E16-3E90-AF7B-18FE8F44401B}
// *********************************************************************//
  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg = interface(IDispatch)
    ['{2630A142-3E16-3E90-AF7B-18FE8F44401B}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2630A142-3E16-3E90-AF7B-18FE8F44401B}
// *********************************************************************//
  _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsgDisp = dispinterface
    ['{2630A142-3E16-3E90-AF7B-18FE8F44401B}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoLoteCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {39DF352B-6BAA-34C3-9B16-09B581AD241B}
// *********************************************************************//
  _mdfeRecepcaoLoteCompletedEventHandler = interface(IDispatch)
    ['{39DF352B-6BAA-34C3-9B16-09B581AD241B}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoLoteCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {39DF352B-6BAA-34C3-9B16-09B581AD241B}
// *********************************************************************//
  _mdfeRecepcaoLoteCompletedEventHandlerDisp = dispinterface
    ['{39DF352B-6BAA-34C3-9B16-09B581AD241B}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoLoteCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDC92FCB-0160-342C-B254-902050B2ECDF}
// *********************************************************************//
  _mdfeRecepcaoLoteCompletedEventArgs = interface(IDispatch)
    ['{BDC92FCB-0160-342C-B254-902050B2ECDF}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoLoteCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDC92FCB-0160-342C-B254-902050B2ECDF}
// *********************************************************************//
  _mdfeRecepcaoLoteCompletedEventArgsDisp = dispinterface
    ['{BDC92FCB-0160-342C-B254-902050B2ECDF}']
  end;

// *********************************************************************//
// Interface: _MDFeRecepcaoEvento
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}
// *********************************************************************//
  _MDFeRecepcaoEvento = interface(IDispatch)
    ['{B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeRecepcaoEventoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}
// *********************************************************************//
  _MDFeRecepcaoEventoDisp = dispinterface
    ['{B9024551-41C6-3B2E-ABFF-27EBDC3DBBD6}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5280CC24-55FB-3BBE-8C5C-1762218E2C44}
// *********************************************************************//
  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg = interface(IDispatch)
    ['{5280CC24-55FB-3BBE-8C5C-1762218E2C44}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5280CC24-55FB-3BBE-8C5C-1762218E2C44}
// *********************************************************************//
  _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsgDisp = dispinterface
    ['{5280CC24-55FB-3BBE-8C5C-1762218E2C44}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoEventoCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventHandler = interface(IDispatch)
    ['{0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoEventoCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventHandlerDisp = dispinterface
    ['{0F09FE89-DA97-3CC1-8C05-1F632F8C7FA9}']
  end;

// *********************************************************************//
// Interface: _mdfeRecepcaoEventoCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92D1C635-8F37-3CD5-BFCB-161188112D40}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventArgs = interface(IDispatch)
    ['{92D1C635-8F37-3CD5-BFCB-161188112D40}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeRecepcaoEventoCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92D1C635-8F37-3CD5-BFCB-161188112D40}
// *********************************************************************//
  _mdfeRecepcaoEventoCompletedEventArgsDisp = dispinterface
    ['{92D1C635-8F37-3CD5-BFCB-161188112D40}']
  end;

// *********************************************************************//
// Interface: _MDFeDistribuicaoDFe
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FACF3646-B238-333D-A6E7-9D8F9E1BC312}
// *********************************************************************//
  _MDFeDistribuicaoDFe = interface(IDispatch)
    ['{FACF3646-B238-333D-A6E7-9D8F9E1BC312}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeDistribuicaoDFeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FACF3646-B238-333D-A6E7-9D8F9E1BC312}
// *********************************************************************//
  _MDFeDistribuicaoDFeDisp = dispinterface
    ['{FACF3646-B238-333D-A6E7-9D8F9E1BC312}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_MDFeDistDFe_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {393D3C44-2517-3083-B366-D6E8043BF94F}
// *********************************************************************//
  _MDFe_Util_MDFeDistDFe_mdfeCabecMsg = interface(IDispatch)
    ['{393D3C44-2517-3083-B366-D6E8043BF94F}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_MDFeDistDFe_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {393D3C44-2517-3083-B366-D6E8043BF94F}
// *********************************************************************//
  _MDFe_Util_MDFeDistDFe_mdfeCabecMsgDisp = dispinterface
    ['{393D3C44-2517-3083-B366-D6E8043BF94F}']
  end;

// *********************************************************************//
// Interface: _mdfeDistDFeInteresseCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {283B61BD-3ADA-370F-A190-FB29CD866165}
// *********************************************************************//
  _mdfeDistDFeInteresseCompletedEventHandler = interface(IDispatch)
    ['{283B61BD-3ADA-370F-A190-FB29CD866165}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeDistDFeInteresseCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {283B61BD-3ADA-370F-A190-FB29CD866165}
// *********************************************************************//
  _mdfeDistDFeInteresseCompletedEventHandlerDisp = dispinterface
    ['{283B61BD-3ADA-370F-A190-FB29CD866165}']
  end;

// *********************************************************************//
// Interface: _mdfeDistDFeInteresseCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {84F5E58E-5089-3612-ABFC-556C7DA130ED}
// *********************************************************************//
  _mdfeDistDFeInteresseCompletedEventArgs = interface(IDispatch)
    ['{84F5E58E-5089-3612-ABFC-556C7DA130ED}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeDistDFeInteresseCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {84F5E58E-5089-3612-ABFC-556C7DA130ED}
// *********************************************************************//
  _mdfeDistDFeInteresseCompletedEventArgsDisp = dispinterface
    ['{84F5E58E-5089-3612-ABFC-556C7DA130ED}']
  end;

// *********************************************************************//
// Interface: _MDFeConsulta
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}
// *********************************************************************//
  _MDFeConsulta = interface(IDispatch)
    ['{8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeConsultaDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}
// *********************************************************************//
  _MDFeConsultaDisp = dispinterface
    ['{8C8ED35C-4D61-38D9-B59F-B7BD1390DCB1}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}
// *********************************************************************//
  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg = interface(IDispatch)
    ['{26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}
// *********************************************************************//
  _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsgDisp = dispinterface
    ['{26C75BB4-EB3C-3C36-9C1F-7516B1154A5D}']
  end;

// *********************************************************************//
// Interface: _mdfeConsultaMDFCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92FBCB84-CD8B-30DA-B289-558A3F030C7F}
// *********************************************************************//
  _mdfeConsultaMDFCompletedEventHandler = interface(IDispatch)
    ['{92FBCB84-CD8B-30DA-B289-558A3F030C7F}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeConsultaMDFCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92FBCB84-CD8B-30DA-B289-558A3F030C7F}
// *********************************************************************//
  _mdfeConsultaMDFCompletedEventHandlerDisp = dispinterface
    ['{92FBCB84-CD8B-30DA-B289-558A3F030C7F}']
  end;

// *********************************************************************//
// Interface: _mdfeConsultaMDFCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9E62A4D8-CD1A-3719-B5DD-66464EA978C8}
// *********************************************************************//
  _mdfeConsultaMDFCompletedEventArgs = interface(IDispatch)
    ['{9E62A4D8-CD1A-3719-B5DD-66464EA978C8}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeConsultaMDFCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9E62A4D8-CD1A-3719-B5DD-66464EA978C8}
// *********************************************************************//
  _mdfeConsultaMDFCompletedEventArgsDisp = dispinterface
    ['{9E62A4D8-CD1A-3719-B5DD-66464EA978C8}']
  end;

// *********************************************************************//
// Interface: _MDFeConsNaoEnc
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92584D91-FEA6-3931-8EFA-F44363BA65BE}
// *********************************************************************//
  _MDFeConsNaoEnc = interface(IDispatch)
    ['{92584D91-FEA6-3931-8EFA-F44363BA65BE}']
  end;

// *********************************************************************//
// DispIntf:  _MDFeConsNaoEncDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92584D91-FEA6-3931-8EFA-F44363BA65BE}
// *********************************************************************//
  _MDFeConsNaoEncDisp = dispinterface
    ['{92584D91-FEA6-3931-8EFA-F44363BA65BE}']
  end;

// *********************************************************************//
// Interface: _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5D90EC74-8A68-31A5-A63C-61A764A4A699}
// *********************************************************************//
  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg = interface(IDispatch)
    ['{5D90EC74-8A68-31A5-A63C-61A764A4A699}']
  end;

// *********************************************************************//
// DispIntf:  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5D90EC74-8A68-31A5-A63C-61A764A4A699}
// *********************************************************************//
  _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsgDisp = dispinterface
    ['{5D90EC74-8A68-31A5-A63C-61A764A4A699}']
  end;

// *********************************************************************//
// Interface: _mdfeConsNaoEncCompletedEventHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {46A55CD6-F5EC-340F-82D1-BF6768F6FF42}
// *********************************************************************//
  _mdfeConsNaoEncCompletedEventHandler = interface(IDispatch)
    ['{46A55CD6-F5EC-340F-82D1-BF6768F6FF42}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeConsNaoEncCompletedEventHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {46A55CD6-F5EC-340F-82D1-BF6768F6FF42}
// *********************************************************************//
  _mdfeConsNaoEncCompletedEventHandlerDisp = dispinterface
    ['{46A55CD6-F5EC-340F-82D1-BF6768F6FF42}']
  end;

// *********************************************************************//
// Interface: _mdfeConsNaoEncCompletedEventArgs
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B416D19C-550A-3FBB-BCFF-20770BFB92BA}
// *********************************************************************//
  _mdfeConsNaoEncCompletedEventArgs = interface(IDispatch)
    ['{B416D19C-550A-3FBB-BCFF-20770BFB92BA}']
  end;

// *********************************************************************//
// DispIntf:  _mdfeConsNaoEncCompletedEventArgsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B416D19C-550A-3FBB-BCFF-20770BFB92BA}
// *********************************************************************//
  _mdfeConsNaoEncCompletedEventArgsDisp = dispinterface
    ['{B416D19C-550A-3FBB-BCFF-20770BFB92BA}']
  end;

// *********************************************************************//
// Interface: _QREncoderTables
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BA9543B6-8201-3922-A592-D17E9A5F967D}
// *********************************************************************//
  _QREncoderTables = interface(IDispatch)
    ['{BA9543B6-8201-3922-A592-D17E9A5F967D}']
  end;

// *********************************************************************//
// DispIntf:  _QREncoderTablesDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BA9543B6-8201-3922-A592-D17E9A5F967D}
// *********************************************************************//
  _QREncoderTablesDisp = dispinterface
    ['{BA9543B6-8201-3922-A592-D17E9A5F967D}']
  end;

// *********************************************************************//
// Interface: _QREncoder
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDFBEC66-9B72-3BD7-AAFC-0B6E15864A24}
// *********************************************************************//
  _QREncoder = interface(IDispatch)
    ['{BDFBEC66-9B72-3BD7-AAFC-0B6E15864A24}']
  end;

// *********************************************************************//
// DispIntf:  _QREncoderDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDFBEC66-9B72-3BD7-AAFC-0B6E15864A24}
// *********************************************************************//
  _QREncoderDisp = dispinterface
    ['{BDFBEC66-9B72-3BD7-AAFC-0B6E15864A24}']
  end;

// *********************************************************************//
// Interface: _QRCodeEncoder
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDBF56F1-9896-3147-A927-D311FA2ADCEC}
// *********************************************************************//
  _QRCodeEncoder = interface(IDispatch)
    ['{BDBF56F1-9896-3147-A927-D311FA2ADCEC}']
  end;

// *********************************************************************//
// DispIntf:  _QRCodeEncoderDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BDBF56F1-9896-3147-A927-D311FA2ADCEC}
// *********************************************************************//
  _QRCodeEncoderDisp = dispinterface
    ['{BDBF56F1-9896-3147-A927-D311FA2ADCEC}']
  end;

// *********************************************************************//
// The Class CoUtil provides a Create and CreateRemote method to
// create instances of the default interface MDFe_Util_Interface exposed by
// the CoClass Util. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoUtil = class
    class function Create: MDFe_Util_Interface;
    class function CreateRemote(const MachineName: string): MDFe_Util_Interface;
  end;

// *********************************************************************//
// The Class CoMDFeStatusServico provides a Create and CreateRemote method to
// create instances of the default interface _MDFeStatusServico exposed by
// the CoClass MDFeStatusServico. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFeStatusServico = class
    class function Create: _MDFeStatusServico;
    class function CreateRemote(const MachineName: string): _MDFeStatusServico;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeStatusServico_mdfeCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _MDFe_Util_mdfeStatusServico_mdfeCabecMsg exposed by
// the CoClass MDFe_Util_mdfeStatusServico_mdfeCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFe_Util_mdfeStatusServico_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeStatusServicoMDFCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _mdfeStatusServicoMDFCompletedEventHandler exposed by
// the CoClass mdfeStatusServicoMDFCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeStatusServicoMDFCompletedEventHandler = class
    class function Create: _mdfeStatusServicoMDFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeStatusServicoMDFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeStatusServicoMDFCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _mdfeStatusServicoMDFCompletedEventArgs exposed by
// the CoClass mdfeStatusServicoMDFCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeStatusServicoMDFCompletedEventArgs = class
    class function Create: _mdfeStatusServicoMDFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeStatusServicoMDFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeRetRecepcao provides a Create and CreateRemote method to
// create instances of the default interface _MDFeRetRecepcao exposed by
// the CoClass MDFeRetRecepcao. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFeRetRecepcao = class
    class function Create: _MDFeRetRecepcao;
    class function CreateRemote(const MachineName: string): _MDFeRetRecepcao;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeRetRecepcao_mdfeCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg exposed by
// the CoClass MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFe_Util_mdfeRetRecepcao_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeRetRecepcaoCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _mdfeRetRecepcaoCompletedEventHandler exposed by
// the CoClass mdfeRetRecepcaoCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeRetRecepcaoCompletedEventHandler = class
    class function Create: _mdfeRetRecepcaoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeRetRecepcaoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeRetRecepcaoCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _mdfeRetRecepcaoCompletedEventArgs exposed by
// the CoClass mdfeRetRecepcaoCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeRetRecepcaoCompletedEventArgs = class
    class function Create: _mdfeRetRecepcaoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeRetRecepcaoCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeRecepcaoSinc provides a Create and CreateRemote method to
// create instances of the default interface _MDFeRecepcaoSinc exposed by
// the CoClass MDFeRecepcaoSinc. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFeRecepcaoSinc = class
    class function Create: _MDFeRecepcaoSinc;
    class function CreateRemote(const MachineName: string): _MDFeRecepcaoSinc;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _mdfeRecepcaoCompletedEventHandler exposed by
// the CoClass mdfeRecepcaoCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeRecepcaoCompletedEventHandler = class
    class function Create: _mdfeRecepcaoCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _mdfeRecepcaoCompletedEventArgs exposed by
// the CoClass mdfeRecepcaoCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeRecepcaoCompletedEventArgs = class
    class function Create: _mdfeRecepcaoCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeRecepcao provides a Create and CreateRemote method to
// create instances of the default interface _MDFeRecepcao exposed by
// the CoClass MDFeRecepcao. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFeRecepcao = class
    class function Create: _MDFeRecepcao;
    class function CreateRemote(const MachineName: string): _MDFeRecepcao;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg exposed by
// the CoClass MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoLoteCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _mdfeRecepcaoLoteCompletedEventHandler exposed by
// the CoClass mdfeRecepcaoLoteCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeRecepcaoLoteCompletedEventHandler = class
    class function Create: _mdfeRecepcaoLoteCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoLoteCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeRecepcaoLoteCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _mdfeRecepcaoLoteCompletedEventArgs exposed by
// the CoClass mdfeRecepcaoLoteCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeRecepcaoLoteCompletedEventArgs = class
    class function Create: _mdfeRecepcaoLoteCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeRecepcaoLoteCompletedEventArgs;
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
// The Class CoMDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg exposed by
// the CoClass MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
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
// The Class CoMDFeDistribuicaoDFe provides a Create and CreateRemote method to
// create instances of the default interface _MDFeDistribuicaoDFe exposed by
// the CoClass MDFeDistribuicaoDFe. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFeDistribuicaoDFe = class
    class function Create: _MDFeDistribuicaoDFe;
    class function CreateRemote(const MachineName: string): _MDFeDistribuicaoDFe;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_MDFeDistDFe_mdfeCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _MDFe_Util_MDFeDistDFe_mdfeCabecMsg exposed by
// the CoClass MDFe_Util_MDFeDistDFe_mdfeCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFe_Util_MDFeDistDFe_mdfeCabecMsg = class
    class function Create: _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeDistDFeInteresseCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _mdfeDistDFeInteresseCompletedEventHandler exposed by
// the CoClass mdfeDistDFeInteresseCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeDistDFeInteresseCompletedEventHandler = class
    class function Create: _mdfeDistDFeInteresseCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeDistDFeInteresseCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeDistDFeInteresseCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _mdfeDistDFeInteresseCompletedEventArgs exposed by
// the CoClass mdfeDistDFeInteresseCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeDistDFeInteresseCompletedEventArgs = class
    class function Create: _mdfeDistDFeInteresseCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeDistDFeInteresseCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeConsulta provides a Create and CreateRemote method to
// create instances of the default interface _MDFeConsulta exposed by
// the CoClass MDFeConsulta. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFeConsulta = class
    class function Create: _MDFeConsulta;
    class function CreateRemote(const MachineName: string): _MDFeConsulta;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeConsultaMDF_mdfeCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg exposed by
// the CoClass MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFe_Util_mdfeConsultaMDF_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeConsultaMDFCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _mdfeConsultaMDFCompletedEventHandler exposed by
// the CoClass mdfeConsultaMDFCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeConsultaMDFCompletedEventHandler = class
    class function Create: _mdfeConsultaMDFCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeConsultaMDFCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeConsultaMDFCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _mdfeConsultaMDFCompletedEventArgs exposed by
// the CoClass mdfeConsultaMDFCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeConsultaMDFCompletedEventArgs = class
    class function Create: _mdfeConsultaMDFCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeConsultaMDFCompletedEventArgs;
  end;

// *********************************************************************//
// The Class CoMDFeConsNaoEnc provides a Create and CreateRemote method to
// create instances of the default interface _MDFeConsNaoEnc exposed by
// the CoClass MDFeConsNaoEnc. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFeConsNaoEnc = class
    class function Create: _MDFeConsNaoEnc;
    class function CreateRemote(const MachineName: string): _MDFeConsNaoEnc;
  end;

// *********************************************************************//
// The Class CoMDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg provides a Create and CreateRemote method to
// create instances of the default interface _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg exposed by
// the CoClass MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg = class
    class function Create: _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
    class function CreateRemote(const MachineName: string): _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
  end;

// *********************************************************************//
// The Class ComdfeConsNaoEncCompletedEventHandler provides a Create and CreateRemote method to
// create instances of the default interface _mdfeConsNaoEncCompletedEventHandler exposed by
// the CoClass mdfeConsNaoEncCompletedEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeConsNaoEncCompletedEventHandler = class
    class function Create: _mdfeConsNaoEncCompletedEventHandler;
    class function CreateRemote(const MachineName: string): _mdfeConsNaoEncCompletedEventHandler;
  end;

// *********************************************************************//
// The Class ComdfeConsNaoEncCompletedEventArgs provides a Create and CreateRemote method to
// create instances of the default interface _mdfeConsNaoEncCompletedEventArgs exposed by
// the CoClass mdfeConsNaoEncCompletedEventArgs. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  ComdfeConsNaoEncCompletedEventArgs = class
    class function Create: _mdfeConsNaoEncCompletedEventArgs;
    class function CreateRemote(const MachineName: string): _mdfeConsNaoEncCompletedEventArgs;
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

implementation

uses System.Win.ComObj;

class function CoUtil.Create: MDFe_Util_Interface;
begin
  Result := CreateComObject(CLASS_Util) as MDFe_Util_Interface;
end;

class function CoUtil.CreateRemote(const MachineName: string): MDFe_Util_Interface;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Util) as MDFe_Util_Interface;
end;

class function CoMDFeStatusServico.Create: _MDFeStatusServico;
begin
  Result := CreateComObject(CLASS_MDFeStatusServico) as _MDFeStatusServico;
end;

class function CoMDFeStatusServico.CreateRemote(const MachineName: string): _MDFeStatusServico;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeStatusServico) as _MDFeStatusServico;
end;

class function CoMDFe_Util_mdfeStatusServico_mdfeCabecMsg.Create: _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeStatusServico_mdfeCabecMsg) as _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeStatusServico_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeStatusServico_mdfeCabecMsg) as _MDFe_Util_mdfeStatusServico_mdfeCabecMsg;
end;

class function ComdfeStatusServicoMDFCompletedEventHandler.Create: _mdfeStatusServicoMDFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeStatusServicoMDFCompletedEventHandler) as _mdfeStatusServicoMDFCompletedEventHandler;
end;

class function ComdfeStatusServicoMDFCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeStatusServicoMDFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeStatusServicoMDFCompletedEventHandler) as _mdfeStatusServicoMDFCompletedEventHandler;
end;

class function ComdfeStatusServicoMDFCompletedEventArgs.Create: _mdfeStatusServicoMDFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeStatusServicoMDFCompletedEventArgs) as _mdfeStatusServicoMDFCompletedEventArgs;
end;

class function ComdfeStatusServicoMDFCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeStatusServicoMDFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeStatusServicoMDFCompletedEventArgs) as _mdfeStatusServicoMDFCompletedEventArgs;
end;

class function CoMDFeRetRecepcao.Create: _MDFeRetRecepcao;
begin
  Result := CreateComObject(CLASS_MDFeRetRecepcao) as _MDFeRetRecepcao;
end;

class function CoMDFeRetRecepcao.CreateRemote(const MachineName: string): _MDFeRetRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeRetRecepcao) as _MDFeRetRecepcao;
end;

class function CoMDFe_Util_mdfeRetRecepcao_mdfeCabecMsg.Create: _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg) as _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeRetRecepcao_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg) as _MDFe_Util_mdfeRetRecepcao_mdfeCabecMsg;
end;

class function ComdfeRetRecepcaoCompletedEventHandler.Create: _mdfeRetRecepcaoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeRetRecepcaoCompletedEventHandler) as _mdfeRetRecepcaoCompletedEventHandler;
end;

class function ComdfeRetRecepcaoCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeRetRecepcaoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRetRecepcaoCompletedEventHandler) as _mdfeRetRecepcaoCompletedEventHandler;
end;

class function ComdfeRetRecepcaoCompletedEventArgs.Create: _mdfeRetRecepcaoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeRetRecepcaoCompletedEventArgs) as _mdfeRetRecepcaoCompletedEventArgs;
end;

class function ComdfeRetRecepcaoCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeRetRecepcaoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRetRecepcaoCompletedEventArgs) as _mdfeRetRecepcaoCompletedEventArgs;
end;

class function CoMDFeRecepcaoSinc.Create: _MDFeRecepcaoSinc;
begin
  Result := CreateComObject(CLASS_MDFeRecepcaoSinc) as _MDFeRecepcaoSinc;
end;

class function CoMDFeRecepcaoSinc.CreateRemote(const MachineName: string): _MDFeRecepcaoSinc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeRecepcaoSinc) as _MDFeRecepcaoSinc;
end;

class function ComdfeRecepcaoCompletedEventHandler.Create: _mdfeRecepcaoCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoCompletedEventHandler) as _mdfeRecepcaoCompletedEventHandler;
end;

class function ComdfeRecepcaoCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeRecepcaoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoCompletedEventHandler) as _mdfeRecepcaoCompletedEventHandler;
end;

class function ComdfeRecepcaoCompletedEventArgs.Create: _mdfeRecepcaoCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoCompletedEventArgs) as _mdfeRecepcaoCompletedEventArgs;
end;

class function ComdfeRecepcaoCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeRecepcaoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoCompletedEventArgs) as _mdfeRecepcaoCompletedEventArgs;
end;

class function CoMDFeRecepcao.Create: _MDFeRecepcao;
begin
  Result := CreateComObject(CLASS_MDFeRecepcao) as _MDFeRecepcao;
end;

class function CoMDFeRecepcao.CreateRemote(const MachineName: string): _MDFeRecepcao;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeRecepcao) as _MDFeRecepcao;
end;

class function CoMDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg.Create: _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg) as _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg) as _MDFe_Util_mdfeRecepcaoLote_mdfeCabecMsg;
end;

class function ComdfeRecepcaoLoteCompletedEventHandler.Create: _mdfeRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoLoteCompletedEventHandler) as _mdfeRecepcaoLoteCompletedEventHandler;
end;

class function ComdfeRecepcaoLoteCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeRecepcaoLoteCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoLoteCompletedEventHandler) as _mdfeRecepcaoLoteCompletedEventHandler;
end;

class function ComdfeRecepcaoLoteCompletedEventArgs.Create: _mdfeRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeRecepcaoLoteCompletedEventArgs) as _mdfeRecepcaoLoteCompletedEventArgs;
end;

class function ComdfeRecepcaoLoteCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeRecepcaoLoteCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeRecepcaoLoteCompletedEventArgs) as _mdfeRecepcaoLoteCompletedEventArgs;
end;

class function CoMDFeRecepcaoEvento.Create: _MDFeRecepcaoEvento;
begin
  Result := CreateComObject(CLASS_MDFeRecepcaoEvento) as _MDFeRecepcaoEvento;
end;

class function CoMDFeRecepcaoEvento.CreateRemote(const MachineName: string): _MDFeRecepcaoEvento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeRecepcaoEvento) as _MDFeRecepcaoEvento;
end;

class function CoMDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg.Create: _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg) as _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg) as _MDFe_Util_mdfeRecepcaoEvento_mdfeCabecMsg;
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

class function CoMDFeDistribuicaoDFe.Create: _MDFeDistribuicaoDFe;
begin
  Result := CreateComObject(CLASS_MDFeDistribuicaoDFe) as _MDFeDistribuicaoDFe;
end;

class function CoMDFeDistribuicaoDFe.CreateRemote(const MachineName: string): _MDFeDistribuicaoDFe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeDistribuicaoDFe) as _MDFeDistribuicaoDFe;
end;

class function CoMDFe_Util_MDFeDistDFe_mdfeCabecMsg.Create: _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_MDFeDistDFe_mdfeCabecMsg) as _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
end;

class function CoMDFe_Util_MDFeDistDFe_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_MDFeDistDFe_mdfeCabecMsg) as _MDFe_Util_MDFeDistDFe_mdfeCabecMsg;
end;

class function ComdfeDistDFeInteresseCompletedEventHandler.Create: _mdfeDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeDistDFeInteresseCompletedEventHandler) as _mdfeDistDFeInteresseCompletedEventHandler;
end;

class function ComdfeDistDFeInteresseCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeDistDFeInteresseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeDistDFeInteresseCompletedEventHandler) as _mdfeDistDFeInteresseCompletedEventHandler;
end;

class function ComdfeDistDFeInteresseCompletedEventArgs.Create: _mdfeDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeDistDFeInteresseCompletedEventArgs) as _mdfeDistDFeInteresseCompletedEventArgs;
end;

class function ComdfeDistDFeInteresseCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeDistDFeInteresseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeDistDFeInteresseCompletedEventArgs) as _mdfeDistDFeInteresseCompletedEventArgs;
end;

class function CoMDFeConsulta.Create: _MDFeConsulta;
begin
  Result := CreateComObject(CLASS_MDFeConsulta) as _MDFeConsulta;
end;

class function CoMDFeConsulta.CreateRemote(const MachineName: string): _MDFeConsulta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeConsulta) as _MDFeConsulta;
end;

class function CoMDFe_Util_mdfeConsultaMDF_mdfeCabecMsg.Create: _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg) as _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeConsultaMDF_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg) as _MDFe_Util_mdfeConsultaMDF_mdfeCabecMsg;
end;

class function ComdfeConsultaMDFCompletedEventHandler.Create: _mdfeConsultaMDFCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeConsultaMDFCompletedEventHandler) as _mdfeConsultaMDFCompletedEventHandler;
end;

class function ComdfeConsultaMDFCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeConsultaMDFCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeConsultaMDFCompletedEventHandler) as _mdfeConsultaMDFCompletedEventHandler;
end;

class function ComdfeConsultaMDFCompletedEventArgs.Create: _mdfeConsultaMDFCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeConsultaMDFCompletedEventArgs) as _mdfeConsultaMDFCompletedEventArgs;
end;

class function ComdfeConsultaMDFCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeConsultaMDFCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeConsultaMDFCompletedEventArgs) as _mdfeConsultaMDFCompletedEventArgs;
end;

class function CoMDFeConsNaoEnc.Create: _MDFeConsNaoEnc;
begin
  Result := CreateComObject(CLASS_MDFeConsNaoEnc) as _MDFeConsNaoEnc;
end;

class function CoMDFeConsNaoEnc.CreateRemote(const MachineName: string): _MDFeConsNaoEnc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFeConsNaoEnc) as _MDFeConsNaoEnc;
end;

class function CoMDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg.Create: _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
begin
  Result := CreateComObject(CLASS_MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg) as _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
end;

class function CoMDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg.CreateRemote(const MachineName: string): _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg) as _MDFe_Util_mdfeConsNaoEnc_mdfeCabecMsg;
end;

class function ComdfeConsNaoEncCompletedEventHandler.Create: _mdfeConsNaoEncCompletedEventHandler;
begin
  Result := CreateComObject(CLASS_mdfeConsNaoEncCompletedEventHandler) as _mdfeConsNaoEncCompletedEventHandler;
end;

class function ComdfeConsNaoEncCompletedEventHandler.CreateRemote(const MachineName: string): _mdfeConsNaoEncCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeConsNaoEncCompletedEventHandler) as _mdfeConsNaoEncCompletedEventHandler;
end;

class function ComdfeConsNaoEncCompletedEventArgs.Create: _mdfeConsNaoEncCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_mdfeConsNaoEncCompletedEventArgs) as _mdfeConsNaoEncCompletedEventArgs;
end;

class function ComdfeConsNaoEncCompletedEventArgs.CreateRemote(const MachineName: string): _mdfeConsNaoEncCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_mdfeConsNaoEncCompletedEventArgs) as _mdfeConsNaoEncCompletedEventArgs;
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

end.
