program Pj_UpdateAPI;

uses
  Vcl.Forms,
  UpdateAPI1 in 'UpdateAPI1.pas' {UpdateAPI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUpdateAPI, UpdateAPI);
  Application.Run;
end.
