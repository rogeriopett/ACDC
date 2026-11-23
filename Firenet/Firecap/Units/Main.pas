unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, VidGrab, Jpeg, ShellAPI, MidasLib,
  Vcl.Samples.Spin, Vcl.ToolWin, PngSpeedButton, Vcl.FileCtrl, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, PngImageList;

type
  TFormMain = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    mnuFile: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    Finalizar1: TMenuItem;
    Opcoes1: TMenuItem;
    ResetarConfiguracoes1: TMenuItem;
    Label81: TLabel;
    Label104: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label60: TLabel;
    Label31: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    cboVideoDevices: TComboBox;
    cboVideoFormats: TComboBox;
    cboVideoSubtypes: TComboBox;
    cboVideoSizes: TComboBox;
    btnStartPreview: TBitBtn;
    btnStopPreview: TButton;
    btnPausePreview: TButton;
    btnResumePreview: TButton;
    btnDeviceDialog: TButton;
    btnVideoQualityDialog: TButton;
    btnCameraControlDialog: TButton;
    ComboBox1: TComboBox;
    EditCustomRotationAngle: TEdit;
    tbrBrightness: TTrackBar;
    tbrConstrast: TTrackBar;
    chkFlipVertical: TCheckBox;
    chkFlipHorizontal: TCheckBox;
    chkGreyScale: TCheckBox;
    chkInvertColors: TCheckBox;
    tbrSaturation: TTrackBar;
    tbrHue: TTrackBar;
    btnResetAll: TButton;
    VideoGrabber: TVideoGrabber;
    tbrZoomY: TTrackBar;
    tbrZoomX: TTrackBar;
    tbrZoom: TTrackBar;
    FileListBox1: TFileListBox;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Panel1: TPanel;
    Label4: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    DBText1: TDBText;
    Label8: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label9: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    EliminarImagem1: TMenuItem;
    cboVideoInputs: TComboBox;
    Label12: TLabel;
    Imprimir1: TMenuItem;
    Imagens1coluna1: TMenuItem;
    Imagens2colunas1: TMenuItem;
    PngImageList1: TPngImageList;
    procedure btnCameraControlDialogClick(Sender: TObject);
    procedure btnDeviceDialogClick(Sender: TObject);
    procedure btnResetAllClick(Sender: TObject);
    procedure btnStartPreviewClick(Sender: TObject);
    procedure btnStopPreviewClick(Sender: TObject);
    procedure btnVideoQualityDialogClick(Sender: TObject);
    procedure cboVideoDevicesChange(Sender: TObject);
    procedure cboVideoSizesChange(Sender: TObject);
    procedure cboVideoSubtypesChange(Sender: TObject);
    procedure chkFlipHorizontalClick(Sender: TObject);
    procedure chkFlipVerticalClick(Sender: TObject);
    procedure chkGreyScaleClick(Sender: TObject);
    procedure chkInvertColorsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure tbrBrightnessChange(Sender: TObject);
    procedure tbrConstrastChange(Sender: TObject);
    procedure tbrHueChange(Sender: TObject);
    procedure tbrSaturationChange(Sender: TObject);
    procedure VideoGrabberDeviceArrivalOrRemoval(Sender: TObject; IsDeviceArrival, IsVideoDevice: Boolean; DeviceName: String; DeviceIndex: Integer);
    procedure VideoGrabberDeviceLost(Sender: TObject);
    procedure VideoGrabberVideoDeviceSelected(Sender: TObject);
    procedure VideoGrabberGraphBuilt(Sender: TObject);
    procedure EditCustomRotationAngleChange(Sender: TObject);
    procedure btnUrlConfClick(Sender: TObject);
    procedure cboVideoFormatsChange(Sender: TObject);
    procedure tbrZoomChange(Sender: TObject);
    procedure tbrZoomYChange(Sender: TObject);
    procedure tbrZoomXChange(Sender: TObject);
    procedure btnPausePreviewClick(Sender: TObject);
    procedure btnResumePreviewClick(Sender: TObject);
    procedure ResetarConfiguracoes1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure EliminarImagem1Click(Sender: TObject);
    procedure cboVideoInputsChange(Sender: TObject);
    procedure Imagens1coluna1Click(Sender: TObject);
    procedure Imagens2colunas1Click(Sender: TObject);
  private
    procedure ShowFormAboveVideo(Form: TForm);
    procedure RefreshDeviceControls;
    function RetornarProximoNumero: String;
  end;

var
  FormMain: TFormMain;

implementation
uses typinfo, VideoQuality, CameraControl, DataMod, Funcoes1, ConsultasLoc,
  ConsultasQ05, ConsultasQ06;
{$R *.DFM}

{$IFNDEF VER160}
function StrToFloatDef(const S: string; const Default: Extended): Extended;
begin
  if not TextToFloat(PChar(S), Result, fvExtended) then
    Result := Default;
end;
{$ENDIF VER160}

function TFormMain.RetornarProximoNumero: String;
var S: String;
  L: TStringList;
  I: Integer;
begin
  if FileListBox1.Count<=0 then
  begin
    Result:='001';
    Exit;
  end;
  L:=TStringList.Create;
  for I:=0 to FileListBox1.Count-1 do
  begin
    S:=FileListBox1.Items[I];
    Delete(S,1,8); //retira o código da consulta.
    Delete(S,4,Length(S)); //retira a extensão do arquivo. (*.jpg)
    L.Add(S);
  end;
  L.Sort;
  I:=StrToInt(L.Strings[L.Count-1])+1; //o ultimo mais um.
  Result:=AlignText(IntToStr(I),'0',3,taRight);
  L.Destroy;
end;

procedure AssignListToComboBox (ComboBox: TComboBox; List: String; Index: integer);
begin
  ComboBox.Items.Text := List;
  if (ComboBox.Items.Count > 0) and (Index >= 0) then
  begin
    ComboBox.ItemIndex := Index;
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FormMain.Caption:='Firecap - Versão: '+FileVersion(Application.ExeName);
  Label11.Caption:='---';
  FileListBox1.Directory:=ExtractFilePath(Application.ExeName);
  VideoGrabber.SetDisplayAspectRatio(0, ar_Box); // preserves the aspect ratio in the display window, whatever the size of the control
  VideoGrabber.AutoRefreshPreview:=true; // the preview will restart automatically when changing device properties (e.g. video size, analog video standard, etc...)

  // - controls using global TVideoGrabber properties, e.g. like the VideoDevices list, are updated from the FormCreate event
  // - controls that depend of the current video device are set in the VideoDeviceSelected event
  // - controls that depend of the current audio device are set in the AudioDeviceSelected event

  AssignListToComboBox (cboVideoDevices, VideoGrabber.VideoDevices, VideoGrabber.VideoDevice);
  cboVideoDevices.ItemIndex:=0;
  cboVideoDevicesChange(Self);

  //testar...............
  AssignListToComboBox (cboVideoInputs, VideoGrabber.VideoInputs, integer (VideoGrabber.VideoInput));

  VideoGrabber.AutoRefreshPreview:=True;
  VideoGrabber.VideoSource:=vs_VideoCaptureDevice;
  VideoGrabber.WebcamStillCaptureButton:=wb_Disabled;

  { TODO -oRogerio : setar o caminho para a pasta do exame. }
  //VideoGrabber.StoragePath := edtoragePath.Text;

  VideoGrabber.AutoFileName:=TAutoFileName(0); //Sequencial Basis.
  VideoGrabber.AutoFilePrefix:='';
  VideoGrabber.FrameGrabberRGBFormat:=TFrameGrabberRGBFormat(0); //0=default 1=RGB32 2=RGB24 3=RGB565 4=RGB555 5=RGB8.
  VideoGrabber.FrameGrabber:=TFrameGrabber(0); //0=both streams 1=preview 2=capture 3=disabled.
  VideoGrabber.VideoProcessing_Pixellization:=1;
  RefreshDeviceControls;

  ComboBox1.ItemIndex:=Integer(VideoGrabber.VideoProcessing_Rotation);
  ComboBox1Change(Self);

  tbrBrightness.Position := - VideoGrabber.VideoProcessing_Brightness;
  tbrConstrast.Position  := - VideoGrabber.VideoProcessing_Contrast;
  tbrSaturation.Position := - VideoGrabber.VideoProcessing_Saturation;
  tbrHue.Position        := VideoGrabber.VideoProcessing_Hue;
  EditCustomRotationAngle.Text := FormatFloat('0.00', VideoGrabber.VideoProcessing_RotationCustomAngle);

  chkGreyScale.Checked      := VideoGrabber.VideoProcessing_GrayScale;
  chkInvertColors.Checked   := VideoGrabber.VideoProcessing_InvertColors;
  chkFlipVertical.Checked   := VideoGrabber.VideoProcessing_FlipVertical;
  chkFlipHorizontal.Checked := VideoGrabber.VideoProcessing_FlipHorizontal;
end;

procedure TFormMain.Image1DblClick(Sender: TObject);
var Foto: String;
begin
  if FileListBox1.ItemIndex < 0 then
  begin
    MessageDlg('Nenhuma imagem selecionada!',mtError,[mbOk],0);
    Exit;
  end;
  Foto:=FileListBox1.FileName;
  WinExec(PAnsiChar(AnsiString('RunDLL32.exe '+ExtractFilePath(Application.ExeName)+'PicaView.DLL,ShowImage '+Foto)),sw_Show);
end;

procedure TFormMain.Imagens1coluna1Click(Sender: TObject);
begin
  if DM.TBConsultas.IsEmpty then
  begin
    MessageDlg('Nenhuma consulta selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormConsultasQ06, FormConsultasQ06);
  FormConsultasQ06.IBQuery1.ParamByName('codigo').AsInteger:=DM.TBConsultasCOS_CODIGO.Value;
  FormConsultasQ06.IBQuery1.Open;
  FormConsultasQ06.IBQuery2.Open;
  FormConsultasQ06.QuickRep1.PreviewModal;
  FormConsultasQ06.Free;
  FormConsultasQ06:=nil;
end;

procedure TFormMain.Imagens2colunas1Click(Sender: TObject);
begin
  if DM.TBConsultas.IsEmpty then
  begin
    MessageDlg('Nenhuma consulta selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormConsultasQ05, FormConsultasQ05);
  FormConsultasQ05.IBQuery1.ParamByName('codigo').AsInteger:=DM.TBConsultasCOS_CODIGO.Value;
  FormConsultasQ05.IBQuery1.Open;
  FormConsultasQ05.IBQuery2.Open;
  FormConsultasQ05.QuickRep1.PreviewModal;
  FormConsultasQ05.Free;
  FormConsultasQ05:=nil;
end;

procedure TFormMain.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultasLoc, FormConsultasLoc);
  FormConsultasLoc.ShowModal;
  if ConsultasLoc.Procurar then
  begin
    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=FormConsultasLoc.QYConsultasCOS_CODIGO.Value;
    DM.TBConsultas.Open;
  end;
  FormConsultasLoc.Free;
  FormConsultasLoc:=nil;
end;

procedure TFormMain.VideoGrabberVideoDeviceSelected(Sender: TObject);
begin
  cboVideoDevices.ItemIndex:=VideoGrabber.VideoDevice; //be sure the listbox index matches the current index value
  // from this event update the properties that depend of the current video capture device.
  // This event occurs when a new value is assigned to the VideoDevice property.
  RefreshDeviceControls;
end;

procedure TFormMain.cboVideoDevicesChange(Sender: TObject);
begin
  VideoGrabber.VideoDevice := cboVideoDevices.ItemIndex;
  // when selecting another video capture device, the OnVideoDeviceSelected event occurs.
  // be sure to refresh all your device-dependent controls from the OnVideoDeviceSelected event.
end;

procedure TFormMain.btnStartPreviewClick(Sender: TObject);
begin
  VideoGrabber.StartPreview;
end;

procedure TFormMain.btnPausePreviewClick(Sender: TObject);
begin
  VideoGrabber.PausePreview;
end;

procedure TFormMain.btnResumePreviewClick(Sender: TObject);
begin
  VideoGrabber.ResumePreview;
end;

procedure TFormMain.btnStopPreviewClick(Sender: TObject);
begin
  VideoGrabber.Stop;
end;

procedure TFormMain.cboVideoFormatsChange(Sender: TObject);
begin
  VideoGrabber.VideoFormat := cboVideoFormats.ItemIndex;
  AssignListToComboBox (cboVideoSizes, VideoGrabber.VideoSizes, VideoGrabber.VideoSize);  // updates VideoSizes accordingly
  AssignListToComboBox (cboVideoSubtypes, VideoGrabber.VideoSubtypes, VideoGrabber.VideoSubtype); // updates VideoSubtypes accordingly
end;

procedure TFormMain.cboVideoInputsChange(Sender: TObject);
begin
  VideoGrabber.VideoInput:=cboVideoInputs.ItemIndex;
end;

procedure TFormMain.cboVideoSizesChange(Sender: TObject);
begin
  VideoGrabber.VideoSize:=cboVideoSizes.ItemIndex;
  AssignListToComboBox(cboVideoFormats,VideoGrabber.VideoFormats,VideoGrabber.VideoFormat); // updates VideoFormats accordingly
end;

procedure TFormMain.cboVideoSubtypesChange(Sender: TObject);
begin
  VideoGrabber.VideoSubtype:=cboVideoSubtypes.ItemIndex;
  AssignListToComboBox(cboVideoFormats,VideoGrabber.VideoFormats,VideoGrabber.VideoFormat); // updates VideoFormats accordingly
end;

procedure TFormMain.btnDeviceDialogClick(Sender: TObject);
begin
  VideoGrabber.ShowDialog(dlg_VideoDevice);
  RefreshDeviceControls;
end;

procedure TFormMain.btnCameraControlDialogClick(Sender: TObject);
begin
  //ShowFormAboveVideo(FormCameraControl);
  Application.CreateForm(TFormCameraControl, FormCameraControl);
  FormCameraControl.ShowModal;
  FormCameraControl.Free;
  FormCameraControl:=nil;
end;

procedure TFormMain.btnVideoQualityDialogClick(Sender: TObject);
begin
  //ShowFormAboveVideo(FormVideoQuality);
  Application.CreateForm(TFormVideoQuality, FormVideoQuality);
  FormVideoQuality.ShowModal;
  FormVideoQuality.Free;
  FormVideoQuality:=nil;
end;

procedure TFormMain.btnUrlConfClick(Sender: TObject);
begin
  VideoGrabber.ShowDialog(dlg_NetShowConfig);
end;

procedure TFormMain.EditCustomRotationAngleChange(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_RotationCustomAngle:=StrToFloatDef(EditCustomRotationAngle.Text, 0);
end;

procedure TFormMain.EliminarImagem1Click(Sender: TObject);
begin
  if FileListBox1.FileName='' then
  begin
    MessageDlg('Nenhum arquivo selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if FileExists(FileListBox1.FileName) then
  begin
    if MessageDlg('Eliminar o arquivo abaixo?'+#13#13+FileListBox1.FileName,mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DeleteFile(FileListBox1.FileName); //nao elimina mais. salva a foto em outra pasta para logs.
      FileListBox1.Update;
      FileListBox1.ItemIndex:=0;
      FileListBox1Change(nil);
    end;
  end;
end;

procedure TFormMain.tbrBrightnessChange(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_Brightness:= -tbrBrightness.Position;
end;

procedure TFormMain.tbrConstrastChange(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_Contrast:= -tbrConstrast.Position;
end;

procedure TFormMain.tbrSaturationChange(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_Saturation:= -tbrSaturation.Position;
end;

procedure TFormMain.tbrHueChange(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_Hue:=tbrHue.Position;
end;

procedure TFormMain.btnResetAllClick(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  tbrBrightness.Position:=0;
  tbrConstrast.Position:=0;
  tbrSaturation.Position:=0;
  tbrHue.Position:=0;
  chkGreyScale.Checked:=False;
  chkInvertColors.Checked:=False;
  chkFlipVertical.Checked:=False;
  chkFlipHorizontal.Checked:=False;
  VideoGrabber.VideoProcessing_Pixellization:=1;
end;

procedure TFormMain.chkFlipVerticalClick(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_FlipVertical:=chkFlipVertical.Checked;
end;

procedure TFormMain.chkFlipHorizontalClick(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_FlipHorizontal:=chkFlipHorizontal.Checked;
end;

procedure TFormMain.chkGreyScaleClick(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_GrayScale:=chkGreyScale.Checked;
end;

procedure TFormMain.chkInvertColorsClick(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_InvertColors:=chkInvertColors.Checked;
end;

procedure TFormMain.ComboBox1Change(Sender: TObject);
begin
  VideoGrabber.VideoProcessing_Rotation:=TVideoRotation(ComboBox1.ItemIndex);
  if (ComboBox1.ItemIndex=8) or (ComboBox1.ItemIndex=9) then
  EditCustomRotationAngle.Enabled:=True else
  EditCustomRotationAngle.Enabled:=False;
end;

procedure TFormMain.VideoGrabberGraphBuilt(Sender: TObject);
begin
  tbrZoomX.Min:= -(VideoGrabber.VideoWidth div 2);
  tbrZoomX.Max:= VideoGrabber.VideoWidth div 2;
  tbrZoomY.Min:= -(VideoGrabber.VideoHeight div 2);
  tbrZoomY.Max:= VideoGrabber.VideoHeight div 2;
end;

procedure TFormMain.tbrZoomChange(Sender: TObject);
begin
  VideoGrabber.ZoomCoeff:=tbrZoom.Position;
end;

procedure TFormMain.tbrZoomXChange(Sender: TObject);
begin
  VideoGrabber.ZoomXCenter:=tbrZoomX.Position;
end;

procedure TFormMain.tbrZoomYChange(Sender: TObject);
begin
  VideoGrabber.ZoomYCenter:=tbrZoomY.Position;
end;

procedure TFormMain.ShowFormAboveVideo(Form: TForm);
begin
  if not Assigned(Form) then Exit;
  Form.Top  := Top  + VideoGrabber.Top  - Form.Height;
  Form.Left := Left + VideoGrabber.Left - Form.Width;
  if Form.Top < 0 then
  begin
    Form.Top := 0;
  end;
  if Form.Left < 0 then
  begin
    Form.Left := 0;
  end;
  Form.ShowModal;
end;

procedure TFormMain.RefreshDeviceControls;
var
  CanUseCompressors: Boolean;
  CanUseMultiplexer: Boolean;
begin
  if csDestroying in ComponentState then Exit; // do nothing if the app terminates
  // let's refresh the controls according to the TVideoGrabber current video device selected
  AssignListToComboBox (cboVideoFormats, VideoGrabber.VideoFormats, VideoGrabber.VideoFormat);
  AssignListToComboBox (cboVideoSizes, VideoGrabber.VideoSizes, VideoGrabber.VideoSize);
  AssignListToComboBox (cboVideoSubtypes, VideoGrabber.VideoSubtypes, VideoGrabber.VideoSubtype);

  btnCameraControlDialog.Enabled := VideoGrabber.IsCameraControlAvailable;
  btnVideoQualityDialog.Enabled := VideoGrabber.IsVideoQualityAvailable;

  CanUseCompressors := not (VideoGrabber.RecordingMethod in [rm_ASF, rm_SendToDV]);
  CanUseMultiplexer := CanUseCompressors and (VideoGrabber.RecordingMethod <> rm_AVI);
end;

procedure TFormMain.ResetarConfiguracoes1Click(Sender: TObject);
begin
  VideoGrabber.ResetVideoDeviceSettings;
end;

procedure TFormMain.VideoGrabberDeviceLost(Sender: TObject);
begin
  //refaz lista do combo.
  AssignListToComboBox(cboVideoDevices, VideoGrabber.VideoDevices, VideoGrabber.VideoDevice);
end;

procedure TFormMain.VideoGrabberDeviceArrivalOrRemoval(Sender: TObject;
  IsDeviceArrival, IsVideoDevice: Boolean; DeviceName: String;
  DeviceIndex: Integer);
begin
  if IsVideoDevice then
  begin
    AssignListToComboBox(cboVideoDevices, VideoGrabber.VideoDevices, VideoGrabber.VideoDevice);
  end;
end;

procedure TFormMain.PngSpeedButton2Click(Sender: TObject);
var Pasta, NomeArquivo: String;
begin
  if DM.TBConsultas.IsEmpty then
  begin
    MessageDlg('Nenhuma consulta selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  Pasta:=DM.TBParametrosPAR_LOCALIMAGENSCONSULTAS.Value;
  if Copy(Pasta,Length(Pasta)-1,1)<>'\' then Pasta:=Pasta+'\';
  Pasta:=Pasta+AlignText(IntToStr(DM.TBConsultasCOS_CODIGO.Value),'0',8,taRight)+'\';
  if not SysUtils.ForceDirectories(Pasta) then
  begin
    MessageDlg('Não foi possível criar a pasta para armazenamento das imagens!'+#13#10+Pasta,mtError,[mbOk],0);
    Exit;
  end;
  //if VideoGrabber.CurrentState then
  NomeArquivo:=AlignText(IntToStr(DM.TBConsultasCOS_CODIGO.Value),'0',8,taRight)+RetornarProximoNumero+'.jpg';
  VideoGrabber.CaptureFrameTo(fc_JpegFile,Pasta+NomeArquivo);
  //VideoGrabber.CaptureFrameTo(fc_BmpFile,NomeArquivo);
  FileListBox1.Update;
  FileListBox1.ItemIndex:=0;
  FileListBox1Change(Self);
  // note 1: passing an empty file name let TVideoGrabber generate it automatically in the StoragePath directory
  // note 2: using CaptureFrameSyncTo instead of CaptureFrameTo waits for frame capture completion and returns true upon success
end;

procedure TFormMain.FileListBox1Change(Sender: TObject);
begin
  if FileListBox1.ItemIndex>=0 then
  Image1.Picture.LoadFromFile(FileListBox1.FileName) else
  Image1.Picture:=nil;
end;

procedure TFormMain.FileListBox1DblClick(Sender: TObject);
var Foto: String;
begin
  if FileListBox1.ItemIndex<0 then
  begin
    MessageDlg('Nenhuma foto selecionada!',mtError,[mbOk],0);
    Exit;
  end;
  Foto:=FileListBox1.FileName;
  WinExec(PAnsiChar(AnsiString('RunDLL32.exe '+ExtractFilePath(Application.ExeName)+'PicaView.DLL,ShowImage '+Foto)),sw_Show);
end;

procedure TFormMain.Finalizar1Click(Sender: TObject);
begin
  Close;
end;

end.
