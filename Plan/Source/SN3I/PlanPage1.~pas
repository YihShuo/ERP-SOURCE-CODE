unit PlanPage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CheckLst, Menus;

type
  TPlanPage = class(TForm)
    PageBox: TCheckListBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    SelectAll1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanPage: TPlanPage;

implementation

uses
  WeeklyShippingPlan1;

{$R *.dfm}

procedure TPlanPage.Button1Click(Sender: TObject);
var
  i: integer;
begin
  SetLength(WeeklyShippingPlan.UploadPage, 0);
  for i := 0 to PageBox.Items.Count - 1 do
  begin
    if (PageBox.Checked[i]) then
    begin
      SetLength(WeeklyShippingPlan.UploadPage, Length(WeeklyShippingPlan.UploadPage) + 1);
      WeeklyShippingPlan.UploadPage[Length(WeeklyShippingPlan.UploadPage) - 1] := PageBox.Items[i];
    end;
  end;

  if (Length(WeeklyShippingPlan.UploadPage) > 0) then
    ModalResult := mrOK
  else
    ShowMessage('Please select a page');
end;

procedure TPlanPage.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TPlanPage.SelectAll1Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to PageBox.Items.Count - 1 do
  begin
    PageBox.Checked[i] := true;
  end;
end;

end.
