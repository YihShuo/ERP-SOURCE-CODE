unit TONKHO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DBTables, DB;

type
  TTONKHO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    CbbGSBH: TComboBox;
    CBBDep: TComboBox;
    Label3: TLabel;
    Query1: TQuery;
    Query1ID: TAutoIncField;
    Query1HC1: TStringField;
    Query1HC2: TStringField;
    Query1HC3: TStringField;
    Query1TL1: TFloatField;
    Query1TL2: TFloatField;
    Query1TL3: TFloatField;
    Query1Name: TStringField;
    DS1: TDataSource;
    Up: TUpdateSQL;
    temp: TQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField4: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TONKHO: TTONKHO;

implementation

{$R *.dfm}

procedure TTONKHO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTONKHO.FormDestroy(Sender: TObject);
begin
  TONKHO := nil;
end;

procedure TTONKHO.FormCreate(Sender: TObject);
begin
    CbbGSBH.Items.Clear;
    CbbGSBH.Items.Add('Xuong_A');
    CbbGSBH.Items.Add('Xuong_B');
    CbbGSBH.ItemIndex := 0;
    with temp do
    begin
      active := false;
      SQL.Clear;
      SQL.add(' SELECT  * from Ch_Departments_HK');
      active := true;
      CbbGSBH.Items.Clear;
    CbbDep.Items.Add('Xuong_A');
    CbbDep.Items.Add('Xuong_B');
    CbbDep.ItemIndex := 0;
     end;
end;

end.
