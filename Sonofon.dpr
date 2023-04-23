program Sonofon;

uses
  Vcl.Forms,
  fInitials in 'source\interface\fInitials.pas' {FormInitial},
  uGlobals in 'source\code\uGlobals.pas',
  uSound in 'source\code\uSound.pas',
  fSonofon in 'source\interface\fSonofon.pas' {frmSonofon},
  fAbout in 'source\interface\fAbout.pas' {frmAbout},
  fOptions in 'source\interface\fOptions.pas' {FormOptions},
  fDialogs in 'source\interface\fDialogs.pas' {FormDialog};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSonofon, frmSonofon);
  Application.Run;
end.
