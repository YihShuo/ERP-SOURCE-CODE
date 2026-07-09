program CanHC_HK;

uses
  Forms,
  R_Hoachat_dp in 'R_Hoachat_dp.pas' {R_hoachat},
  DM1 in 'DM1.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TR_hoachat, R_hoachat);
  Application.Run;
end.
