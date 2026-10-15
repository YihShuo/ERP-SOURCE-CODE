unit Material_Yihshuo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls;

type
  TMaterial_Customer_Select = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Query1CLBH: TStringField;
    Query1Vendor: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1Colorcode: TStringField;
    Query1ColorName: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Material_Customer_Select: TMaterial_Customer_Select;

implementation

// KHAI BAO FORM CHINH O DAY DE GIAO TIEP DU LIEU
uses Material_Customer1; 

{$R *.dfm}

procedure TMaterial_Customer_Select.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('SELECT * FROM CLZL_Customer ');
    SQL.Add('WHERE 1=1 ');
    SQL.Add('AND CLBH LIKE ''%' + Edit1.Text + '%'' ');
    SQL.Add('AND YWPM LIKE ''%' + Edit2.Text + '%'' ');
    SQL.Add('AND ZWPM LIKE ''%' + Edit3.Text + '%'' ');
    active:=true;
  end;
end;

procedure TMaterial_Customer_Select.DBGridEh1DblClick(Sender: TObject);
begin
  // 1. Kiem tra co du lieu de chon hay khong
  if not Query1.Active or Query1.IsEmpty then Exit;

  // 2. Kiem tra form chinh da mo va Query2 dang o che do Insert hoac Edit
  if Assigned(Material_Customer) and (Material_Customer.Query2.State in [dsEdit, dsInsert]) then
  begin
    // Gan ma CLBH tu luoi cua so nho sang cot CLBH cua form chinh
    Material_Customer.Query2.FieldByName('CLBH').AsString := Query1.FieldByName('CLBH').AsString;
    
    // Ban co the gan them cac cot khac neu muon, vi du nhu Vendor:
    if Material_Customer.Query2.FindField('Vendor') <> nil then
      Material_Customer.Query2.FieldByName('Vendor').AsString := Query1.FieldByName('Vendor').AsString;

    // Ban co the gan them cac cot khac neu muon, vi du nhu color:
    if Material_Customer.Query2.FindField('color') <> nil then
      Material_Customer.Query2.FieldByName('color').AsString := Query1.FieldByName('colorcode').AsString;
    // Dong cua so pop-up sau khi chon xong
    Close;
  end
  else
  begin
    ShowMessage('Vui long bam nut Insert hoac Modify ben man hinh chinh truoc khi chon!');
  end;
end;

procedure TMaterial_Customer_Select.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Giai phong bo nho cua cua so nho khi tat
  Action := caFree;
end;

procedure TMaterial_Customer_Select.FormDestroy(Sender: TObject);
begin
  // Reset bien ve nil de form chinh biet va tao lai vao lan sau (nut ... click)
  Material_Customer_Select := nil;
end;

end.
