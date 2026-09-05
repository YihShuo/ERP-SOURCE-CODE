program Pj_UpdateAPI_DTD;

uses
  Vcl.Forms,
  UpdateAPI_DTD1 in 'UpdateAPI_DTD1.pas' {UpdateAPI_DTD};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUpdateAPI_DTD, UpdateAPI_DTD);
  Application.Run;
end.
