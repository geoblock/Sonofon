unit uSound;

interface

uses
  System.SysUtils,
  BASS.Import;

var
//  Form2: TForm2;
  chan1:HSTREAM;

procedure Sounds;

implementation

(*
why PWideChar but not PChar?
where is a path to sounds?
*)

(*
procedure TForm2.Button1Click(Sender: TObject);
begin
  // False - reading file
  // the fierst 0  - all file will play.
  // the last 0 - without loops.
  chan1 := BASS_StreamCreateFile(False, PWideChar('piano.mp3'), 0, 0, 0 {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF});
  chan2 := BASS_StreamCreateFile(False, PWideChar('guitar.mp3'), 0, 0, 0 {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF});
  BASS_ChannelPlay(chan1, True);
  BASS_ChannelPlay(chan2, True);
//  BASS_StreamFree(chan1);
//  BASS_StreamFree(chan2);
end;
*)
procedure Sounds;
var
  chan1, chan2:HSTREAM;
  ErrCode: Integer;
begin
  chan1 := BASS_StreamCreateFile(False, PWideChar('piano.mp3'), 0, 0, 0 {$IFDEF UNICODE} or BASS_UNICODE {$ENDIF});
  ErrCode := BASS_ErrorGetCode;
  if ErrCode <> BASS_OK then
    raise Exception.Create(Format('BASS Error! Code #%d', [ErrCode]));
end;

end.
