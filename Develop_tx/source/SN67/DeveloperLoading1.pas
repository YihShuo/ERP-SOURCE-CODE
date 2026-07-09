unit DeveloperLoading1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ComCtrls,
  Buttons,ComObj;

type
  TDeveloperLoading = class(TForm)
    DS1: TDataSource;
    DS2: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    Query1jijie: TStringField;
    Query1RealScore: TFloatField;
    Query1FD: TStringField;
    Query2jijie: TStringField;
    Query2fd: TStringField;
    Query2devcode: TStringField;
    Query2xieming: TStringField;
    Query2Type: TStringField;
    Query2RealScore: TFloatField;
    Query2Score: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    TotalNew: TLabel;
    NewMaterial: TLabel;
    NewUpper: TLabel;
    NewGraphic: TLabel;
    NewColor: TLabel;
    ElseT: TLabel;
    TotalNewPlusText1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    TotalNewText: TEdit;
    NewMaterialText: TEdit;
    NewUpperText: TEdit;
    NewGraphicText: TEdit;
    ColorUpdateText: TEdit;
    Button1: TButton;
    ElseText: TEdit;
    SeasonText: TComboBox;
    DeveloperText: TComboBox;
    TotalNewPlusText: TEdit;
    NewUpperPlusText: TEdit;
    NewUpperMinText: TEdit;
    NewMaterialPlusText: TEdit;
    NewProcessText: TEdit;
    NewBottomComponentToolingText: TEdit;
    NewCuttingDiesText: TEdit;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Memo1: TMemo;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    TabSheet2: TTabSheet;
    Memo2: TMemo;
    Query2FDTeam: TStringField;
    Query2DevType: TStringField;
    Query2RFCDate: TDateTimeField;
    Query2Finished: TBooleanField;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    btnExcel: TBitBtn;
    QueryTemp: TQuery;
    UpdateSQL: TUpdateSQL;
    Query2USERDATE: TDateTimeField;
    QueryTempExcel: TQuery;
    QueryTempExceljijie: TStringField;
    QueryTempExcelfd: TStringField;
    QueryTempExceldevcode: TStringField;
    QueryTempExcelxieming: TStringField;
    QueryTempExcelType: TStringField;
    QueryTempExcelRealScore: TFloatField;
    QueryTempExcelScore: TFloatField;
    QueryTempExcelFDTeam: TStringField;
    QueryTempExcelDevType: TStringField;
    FDGroupsText: TComboBox;
    Label9: TLabel;
    btImport: TBitBtn;
    OpenDialog: TOpenDialog;
    Query2USERID: TStringField;
    Query2YN: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    Label10: TLabel;
    EditSeasonText: TEdit;
    EditFDText: TEdit;
    EditFDGroupsText: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Query1FDTeam: TStringField;
    Query2NoDev: TBooleanField;
    Query2XieXing: TStringField;
    QueryTempExcelXieXing: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    //procedure DeveloperTextChange(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure btImportClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AddDeveloperText;
    procedure AddSeasonText;
    procedure AddFDGroupsText;
    procedure DeveloperTextDblClick(Sender: TObject);
    procedure DeveloperTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SeasonTextDblClick(Sender: TObject);
    procedure FDGroupsTextDblClick(Sender: TObject);
    procedure SeasonTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FDGroupsTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    selectedItems: TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeveloperLoading: TDeveloperLoading;

implementation

uses main1;

{$R *.dfm}

procedure TDeveloperLoading.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TDeveloperLoading.FormDestroy(Sender: TObject);
begin
  DeveloperLoading:=nil;
  selectedItems.Free;
end;

{procedure TDeveloperLoading.Button1Click(Sender: TObject);
var
  ListSS, ListDev, ListFDG: TStringList;
  i: Integer;
  fdValue,jijieValue: string;
begin

  ListSS := TStringList.Create;
  ListDev := TStringList.Create;
  ListFDG := TStringList.Create;
  try
  with query1 do
  begin
      if ((EditSeasonText.Text = '') or (EditFDGroupsText.Text = '')) and (EditFDText.Text = '')   then
      begin
        ShowMessage('Please chossen Season or Developer or FDGroups!');
        Exit;
      end;

      //Check dau , cuoi cung SS
      ListSS.Delimiter := ',';
          ListSS.DelimitedText := EditSeasonText.Text;
      if Copy(EditSeasonText.Text, Length(EditSeasonText.Text), 1) = ',' then
        EditSeasonText.Text := Copy(EditSeasonText.Text, 1, Length(EditSeasonText.Text)-1);
        ListSS.DelimitedText := EditSeasonText.Text;

      //Check dau , cuoi cung DEV
      ListDev.Delimiter := ',';
          ListDev.DelimitedText := EditFDText.Text;
      if Copy(EditFDText.Text, Length(EditFDText.Text), 1) = ',' then
        EditFDText.Text := Copy(EditFDText.Text, 1, Length(EditFDText.Text)-1);
        ListDev.DelimitedText := EditFDText.Text;

      //Check dau , cuoi cung FDG
      ListFDG.Delimiter := ',';
          ListFDG.DelimitedText := EditFDGroupsText.Text;
      if Copy(EditFDGroupsText.Text, Length(EditFDGroupsText.Text), 1) = ',' then
        EditFDGroupsText.Text := Copy(EditFDGroupsText.Text, 1, Length(EditFDGroupsText.Text)-1);
        ListFDG.DelimitedText := EditFDGroupsText.Text;

      active:=false;
      sql.Clear;

      sql.Add('select main.jijie,sum(convert(float,main.RealScore)) RealScore,main.FD,main.FDTeam from (');
      sql.Add('select jijie,fd,convert(float,Score) Score,rank,kflx,main1.FDTeam,');
      sql.Add('case when rank=''1'' then Score else ''1'' end RealScore from (');
      sql.Add('select kfxxzl.devcode,kfxxzl.XieXing,kfxxzl.shehao,kfxxzl.jijie,kfxxzl.khdh,FD,FDGroups.FDTeam,');


      sql.Add('case');
      sql.Add('when kflx=''TN''  then ''TotalNew''');
      sql.Add('when kflx=''TN+'' then ''TotalNew+''');
      sql.Add('when kflx=''CU''  then ''NewColor''');
      sql.Add('when kflx=''NU''  then ''NewUpper''');
      sql.Add('when kflx=''NU+'' then ''NewUpper+''');
      sql.Add('when kflx=''NU-'' then ''NewUpper-''');
      sql.Add('when kflx=''NG''  then ''NewGraphic''');
      sql.Add('when kflx=''MU''  then ''NewMaterial''');
      sql.Add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.Add('when kflx=''NP''  then ''NewProcess''');
      sql.Add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.Add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.Add('else ''Error'' end Type,');
      sql.Add('case');
      sql.Add('when kflx=''TN'' then '''+TotalNewText.text+'''');
      sql.Add('when kflx=''TN+'' then '''+TotalNewPlusText.text+'''');
      sql.Add('when kflx=''CU'' then '''+ColorUpdateText.text+'''');
      sql.Add('when kflx=''NU'' then '''+NewUpperText.text+'''');
      sql.Add('when kflx=''NU+'' then '''+NewUpperPlusText.text+'''');
      sql.Add('when kflx=''NU-'' then '''+NewUpperMinText.text+'''');
      sql.Add('when kflx=''NG'' then '''+NewGraphicText.text+'''');
      sql.Add('when kflx=''MU'' then '''+NewMaterialText.text+'''');
      sql.Add('when kflx=''MU+'' then '''+NewMaterialPlusText.text+'''');
      sql.Add('when kflx=''NP'' then '''+NewProcessText.text+'''');
      sql.Add('when kflx=''NT'' then '''+NewBottomComponentToolingText.text+'''');
      sql.Add('when kflx=''ND'' then '''+NewCuttingDiesText.text+'''');
      sql.Add('else '''+ElseText.text+'''  end Score,row_number() OVER (PARTITION BY kfxxzl.xiexing,kfxxzl.FD ORDER BY FD) as rank,kflx');
      sql.Add('from kfxxzl');
      sql.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      //
      sql.Add('left join Busers on kfxxzl.FD = Busers.Engname');
      sql.Add('left join FDGroups on Busers.USERID = FDGroups.FDID');
      sql.Add('LEFT JOIN XXZLKF ON kfxxzl.XieXing = XXZLKF.XieXing AND KFXXZL.SheHao = XXZLKF.SheHao');
      //
      sql.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfzl_GS.GSBH=''CDC''');
      //
      sql.Add('AND ((XXZLKF.TRANSFER = ''0'' OR XXZLKF.TRANSFER is null) AND (XXZLKF.Hold = ''0'' OR XXZLKF.Hold is null) AND (XXZLKF.DROPPED = ''0'' OR XXZLKF.DROPPED is null))');
      //
      //if seasontext.text<>''then
      //   sql.Add('and kfxxzl.jijie = '''+seasontext.Text+''' ');
      if ListSS.Count > 0 then
      begin
        SQL.Add(' and (');
        for i := 0 to ListSS.Count - 1 do
        begin
          if i > 0 then
            SQL.Add(' or ');
          SQL.Add('(kfxxzl.jijie like ''%' + ListSS[i] + '%'')');
        end;
        SQL.Add(')');
      end;


      //if Developertext.text<>''then
      //   sql.Add('and kfxxzl.fd = '''+Developertext.Text+''' ');

      if ListDev.Count > 0 then
      begin
        SQL.Add(' and (');
        for i := 0 to ListDev.Count - 1 do
        begin
          if i > 0 then
            SQL.Add(' or ');
          SQL.Add('(kfxxzl.fd like ''%' + ListDev[i] + '%'')');
        end;
        SQL.Add(')');
      end;

      sql.Add('and kfxxzl.xieming not like ''%NULLIFY%''  ');
      sql.Add('and kfxxzl.xieming not like ''%NULLIFY%''  )main1 )main');
      sql.Add('left join FDGroups on main.FD = FDGroups.fdname');



      if ListFDG.Count > 0 then
      begin
        SQL.Add(' where (');
        for i := 0 to ListFDG.Count - 1 do
        begin
          if i > 0 then
            SQL.Add(' or ');
          SQL.Add('(main.FDTeam like ''%' + ListFDG[i] + '%'')');
        end;
        SQL.Add(')');
      end;

      sql.Add('group by main.jijie,main.FD,main.FDTeam');
      sql.Add('order by JiJie,RealScore desc');




      showmessage(sql.Text);
    //  memo2.text:=sql.text;
      active:=true;

      //=============================================================================================
      Edit1.Text := '';
      Edit2.Text := '';
      First; // Di chuyen ve dau truy van
      while not Eof do
      begin
        fdValue := FieldByName('FD').AsString; // Lay gia tri dong FD hien tai
        jijieValue := FieldByName('jijie').AsString;
        Edit1.Text := Edit1.Text + fdValue + ', '; // Cong don chuoi
        Edit2.Text := Edit2.Text + jijieValue + ', ';
        Next; // Di chuyen lay dong tiep theo
      end;
      if Length(Edit1.Text) > 0 then
        Edit1.Text := Copy(Edit1.Text, 1, Length(Edit1.Text) - 2);
      if Length(Edit2.Text) > 0 then
        Edit2.Text := Copy(Edit2.Text, 1, Length(Edit2.Text) - 2);
    //
  end;

  //Hien thi tong du lieu
  Label10.Caption := 'Total rows: ' + IntToStr(query1.RecordCount);
  query2.Active:=true;
  BB4.Enabled := true;
  btimport.Enabled:=true;
  finally
    ListSS.Free;
    ListDev.Free;
    ListFDG.Free;
  end;
end;    }

procedure TDeveloperLoading.Button1Click(Sender: TObject);
var
  ListSS, ListDev, ListFDG: TStringList;
  i: Integer;
  fdValue,jijieValue: string;
begin

  ListSS := TStringList.Create;
  ListDev := TStringList.Create;
  ListFDG := TStringList.Create;
  try
  with query1 do
  begin
      if ((EditSeasonText.Text = '') or (EditFDGroupsText.Text = '')) and (EditFDText.Text = '')   then
      begin
        ShowMessage('Please chossen Season or Developer or FDGroups!');
        Exit;
      end;

      //Check dau , cuoi cung SS
      ListSS.Delimiter := ',';
          ListSS.DelimitedText := EditSeasonText.Text;
      if Copy(EditSeasonText.Text, Length(EditSeasonText.Text), 1) = ',' then
        EditSeasonText.Text := Copy(EditSeasonText.Text, 1, Length(EditSeasonText.Text)-1);
        ListSS.DelimitedText := EditSeasonText.Text;

      //Check dau , cuoi cung DEV
      ListDev.Delimiter := ',';
          ListDev.DelimitedText := EditFDText.Text;
      if Copy(EditFDText.Text, Length(EditFDText.Text), 1) = ',' then
        EditFDText.Text := Copy(EditFDText.Text, 1, Length(EditFDText.Text)-1);
        ListDev.DelimitedText := EditFDText.Text;

      //Check dau , cuoi cung FDG
      ListFDG.Delimiter := ',';
          ListFDG.DelimitedText := EditFDGroupsText.Text;
      if Copy(EditFDGroupsText.Text, Length(EditFDGroupsText.Text), 1) = ',' then
        EditFDGroupsText.Text := Copy(EditFDGroupsText.Text, 1, Length(EditFDGroupsText.Text)-1);
        ListFDG.DelimitedText := EditFDGroupsText.Text;

      active:=false;
      sql.Clear;

      sql.Add('SELECT main3.jijie, main3.fd, MAX(main3.FDTeam) AS FDTeam, SUM(main3.ConditionalRealScore) AS RealScore from (');
      sql.Add('SELECT main2.jijie, main2.fd, main2.devcode, main2.xieming, main2.Type, CONVERT(FLOAT, MAX(main2.RealScore)) AS RealScore, CONVERT(FLOAT, MAX(main2.Score)) AS Score,');
      sql.Add('MAX(FDGroups.FDTeam) AS FDTeam, main2.DevType,Dev_Loading.RFCDate, Dev_Loading.Finished, Dev_Loading.USERID, Dev_Loading.USERDATE, Dev_Loading.YN, ');
      sql.Add('CASE WHEN Dev_Loading.NoDev = 1 THEN 0 ELSE CONVERT(FLOAT, MAX(main2.RealScore)) END AS ConditionalRealScore FROM (');
      sql.Add('SELECT jijie, fd, devcode, xieming, Type, CASE WHEN rank = ''1'' THEN Score ELSE ''1'' END RealScore, Score, DevType FROM (');
      sql.Add('SELECT kfxxzl.devcode, kfxxzl.xieming, kfxxzl.shehao, kfxxzl.jijie, kfxxzl.khdh, FD, DevType,');

      sql.Add('case');
      sql.Add('when kfxxzl.kflx=''TN''  then ''TotalNew''');
      sql.Add('when kfxxzl.kflx=''TN+'' then ''TotalNew+''');
      sql.Add('when kfxxzl.kflx=''CU''  then ''NewColor''');
      sql.Add('when kfxxzl.kflx=''NU''  then ''NewUpper''');
      sql.Add('when kfxxzl.kflx=''NU+'' then ''NewUpper+''');
      sql.Add('when kfxxzl.kflx=''NU-'' then ''NewUpper-''');
      sql.Add('when kfxxzl.kflx=''NG''  then ''NewGraphic''');
      sql.Add('when kfxxzl.kflx=''MU''  then ''NewMaterial''');
      sql.Add('when kfxxzl.kflx=''MU+'' then ''NewMaterial+''');
      sql.Add('when kfxxzl.kflx=''NP''  then ''NewProcess''');
      sql.Add('when kfxxzl.kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.Add('when kfxxzl.kflx=''ND''  then ''NewCuttingDies''');
      sql.Add('else ''Error'' end Type,');
      sql.Add('case');
      sql.Add('when kfxxzl.kflx=''TN'' then '''+TotalNewText.text+'''');
      sql.Add('when kfxxzl.kflx=''TN+'' then '''+TotalNewPlusText.text+'''');
      sql.Add('when kfxxzl.kflx=''CU'' then '''+ColorUpdateText.text+'''');
      sql.Add('when kfxxzl.kflx=''NU'' then '''+NewUpperText.text+'''');
      sql.Add('when kfxxzl.kflx=''NU+'' then '''+NewUpperPlusText.text+'''');
      sql.Add('when kfxxzl.kflx=''NU-'' then '''+NewUpperMinText.text+'''');
      sql.Add('when kfxxzl.kflx=''NG'' then '''+NewGraphicText.text+'''');
      sql.Add('when kfxxzl.kflx=''MU'' then '''+NewMaterialText.text+'''');
      sql.Add('when kfxxzl.kflx=''MU+'' then '''+NewMaterialPlusText.text+'''');
      sql.Add('when kfxxzl.kflx=''NP'' then '''+NewProcessText.text+'''');
      sql.Add('when kfxxzl.kflx=''NT'' then '''+NewBottomComponentToolingText.text+'''');
      sql.Add('when kfxxzl.kflx=''ND'' then '''+NewCuttingDiesText.text+'''');
      sql.Add('else '''+ElseText.text+'''  end Score');

      //23.08.2025 them dieu kien tinh diem cho khu C
      if main.Edit2.Text = 'VC1' then
      begin
        //sql.Add(',ROW_NUMBER() OVER (PARTITION BY kfxxzl.XieXing ORDER BY kfxxzl.SheHao ASC) AS rank');
        //17.12.2025 doi tu xet kfxxzl.XieXing dua theo shehao sap xep rank diem thanh xet theo 5 ky tu dau va 2 ky tu cuoi de tinh rank
        //Nhung doi giong nhau nhung khac W,M,K cua gioi tinh nam/nu/tre em cua khach hang thi tinh chung 1 rank va sap xep theo rank
        SQL.Add(',ROW_NUMBER() OVER (PARTITION BY LEFT(kfxxzl.XieXing, 5) + RIGHT(kfxxzl.XieXing, 2) ORDER BY kfxxzl.SheHao ASC');
        SQL.Add(',(case when kfxxzl.KFLX = ''TN'' then ''15''');
        SQL.Add('when kfxxzl.KFLX = ''TN+'' then ''20''');
        SQL.Add('when kfxxzl.KFLX = ''CU'' then ''1''');
        SQL.Add('when kfxxzl.KFLX = ''NU'' then ''8''');
        SQL.Add('when kfxxzl.KFLX = ''NU+'' then ''10''');
        SQL.Add('when kfxxzl.KFLX = ''NU-'' then ''6''');
        SQL.Add('when kfxxzl.KFLX = ''NG'' then ''2''');
        SQL.Add('when kfxxzl.KFLX = ''MU'' then ''3''');
        SQL.Add('when kfxxzl.KFLX = ''MU+'' then ''4''');
        SQL.Add('when kfxxzl.KFLX = ''NP'' then ''5''');
        SQL.Add('when kfxxzl.KFLX = ''NT'' then ''4''');
        SQL.Add('when kfxxzl.KFLX = ''ND'' then ''3'' else ''1'' end) desc');
        SQL.Add(')as rank');
      end
      else
      begin
      //12.05.2025 doi tu xet kfxxzl.xiexing thanh kfxxzl.devcode cat chuoi ki tu de so sanh ma
      sql.Add(',row_number() OVER (PARTITION BY LEFT(kfxxzl.devcode, LEN(kfxxzl.devcode) - CHARINDEX(''-'', REVERSE(kfxxzl.devcode))) ORDER BY kfxxzl.devcode ASC) AS rank');
      end;
      
      sql.Add(',kfxxzl.kflx');
      sql.Add('from kfxxzl');
      sql.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      sql.Add('LEFT JOIN XXZLKF ON kfxxzl.XieXing = XXZLKF.XieXing AND kfxxzl.SheHao = XXZLKF.SheHao');
      sql.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' ');
      SQL.Add('and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
      sql.Add('AND ((XXZLKF.TRANSFER = ''0'' OR XXZLKF.TRANSFER is null) AND (XXZLKF.Hold = ''0'' OR XXZLKF.Hold is null) AND (XXZLKF.DROPPED = ''0'' OR XXZLKF.DROPPED is null))');
      if ListSS.Count > 0 then
      begin
        SQL.Add(' and (');
        for i := 0 to ListSS.Count - 1 do
        begin
          if i > 0 then
            SQL.Add(' or ');
          SQL.Add('(kfxxzl.jijie like ''%' + ListSS[i] + '%'')');
        end;
        SQL.Add(')');
      end;


      //if Developertext.text<>''then
      //   sql.Add('and kfxxzl.fd = '''+Developertext.Text+''' ');

      if ListDev.Count > 0 then
      begin
        SQL.Add(' and (');
        for i := 0 to ListDev.Count - 1 do
        begin
          if i > 0 then
            SQL.Add(' or ');
          SQL.Add('(kfxxzl.fd like ''%' + ListDev[i] + '%'')');
        end;
        SQL.Add(')');
      end;
      sql.Add('and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'' )main1 )main2');
      sql.Add('LEFT JOIN Busers ON Busers.Engname = main2.FD');
      sql.Add('left join FDGroups on FDGroups.FDID = Busers.USERID');
      sql.Add('LEFT JOIN Dev_Loading ON main2.jijie = Dev_Loading.jijie AND main2.fd = Dev_Loading.fd AND main2.devcode = Dev_Loading.devcode');

      if ListFDG.Count > 0 then
      begin
        SQL.Add(' where (');
        for i := 0 to ListFDG.Count - 1 do
        begin
          if i > 0 then
            SQL.Add(' or ');
          SQL.Add('(FDGroups.FDTeam like ''%' + ListFDG[i] + '%'')');
        end;
        SQL.Add(')');
      end
      else begin
        if main.Edit2.Text = 'CDC' then
          SQL.Add('where FDGroups.FDTeam in (''CONS'',''DEV INLINE'',''INNO'',''SMU'',''STAR'')');
      end;
      //28.03.2026 chi lay nhung FDTeam thuoc khai thac

      sql.Add('GROUP BY main2.jijie, main2.fd, main2.devcode, main2.xieming, main2.Type, main2.DevType, RFCDate, Finished, Dev_Loading.USERID, USERDATE, Dev_Loading.YN,Dev_Loading.NoDev) main3');
      sql.Add('GROUP BY main3.jijie, main3.fd');
      sql.Add('ORDER BY main3.jijie,RealScore DESC');




      //showmessage(sql.Text);
    //  memo2.text:=sql.text;
      active:=true;

      //=============================================================================================
      Edit1.Text := '';
      Edit2.Text := '';
      First; // Di chuyen ve dau truy van
      while not Eof do
      begin
        fdValue := FieldByName('FD').AsString; // Lay gia tri dong FD hien tai
        jijieValue := FieldByName('jijie').AsString;
        Edit1.Text := Edit1.Text + fdValue + ', '; // Cong don chuoi
        Edit2.Text := Edit2.Text + jijieValue + ', ';
        Next; // Di chuyen lay dong tiep theo
      end;
      if Length(Edit1.Text) > 0 then
        Edit1.Text := Copy(Edit1.Text, 1, Length(Edit1.Text) - 2);
      if Length(Edit2.Text) > 0 then
        Edit2.Text := Copy(Edit2.Text, 1, Length(Edit2.Text) - 2);
    //
  end;

  //Hien thi tong du lieu
  Label10.Caption := 'Total rows: ' + IntToStr(query1.RecordCount);
  //query2.Active:=true;
  BB4.Enabled := true;
  btimport.Enabled:=true;
  finally
    ListSS.Free;
    ListDev.Free;
    ListFDG.Free;
  end;
end;

procedure TDeveloperLoading.DBGridEh1CellClick(Column: TColumnEh);
begin

  with query2 do
  begin

      active:=false;
      sql.Clear;
      sql.Add('select main2.jijie,main2.fd,main2.devcode,main2.xieming,main2.Type,convert(float,MAX(main2.RealScore)) RealScore,');
      sql.Add('convert(float,MAX(main2.Score)) Score, MAX(FDGroups.FDTeam) AS FDTeam,DevType,');
      sql.Add('Dev_Loading.RFCDate,Dev_Loading.Finished,Dev_Loading.USERID,Dev_Loading.USERDATE,Dev_Loading.YN,Dev_Loading.NoDev,main2.XieXing from (');
      sql.Add('select jijie,fd,devcode,xieming,Type,case when rank=''1'' then Score else ''1'' end RealScore,Score,DevType,XieXing from (');
      sql.Add('select kfxxzl.devcode,kfxxzl.xieming,kfxxzl.shehao,kfxxzl.jijie,kfxxzl.khdh,kfxxzl.FD as FD,kfxxzl.DevType as DevType,');
      sql.Add('case');
      sql.Add('when kfxxzl.kflx=''TN''  then ''TotalNew''');
      sql.Add('when kfxxzl.kflx=''TN+'' then ''TotalNew+''');
      sql.Add('when kfxxzl.kflx=''CU''  then ''NewColor''');
      sql.Add('when kfxxzl.kflx=''NU''  then ''NewUpper''');
      sql.Add('when kfxxzl.kflx=''NU+'' then ''NewUpper+''');
      sql.Add('when kfxxzl.kflx=''NU-'' then ''NewUpper-''');
      sql.Add('when kfxxzl.kflx=''NG''  then ''NewGraphic''');
      sql.Add('when kfxxzl.kflx=''MU''  then ''NewMaterial''');
      sql.Add('when kfxxzl.kflx=''MU+'' then ''NewMaterial+''');
      sql.Add('when kfxxzl.kflx=''NP''  then ''NewProcess''');
      sql.Add('when kfxxzl.kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.Add('when kfxxzl.kflx=''ND''  then ''NewCuttingDies''');
      sql.Add('else ''Error'' end Type,');
      sql.Add('case');
      sql.Add('when kfxxzl.kflx=''TN'' then '''+TotalNewText.text+'''');
      sql.Add('when kfxxzl.kflx=''TN+'' then '''+TotalNewPlusText.text+'''');
      sql.Add('when kfxxzl.kflx=''CU'' then '''+ColorUpdateText.text+'''');
      sql.Add('when kfxxzl.kflx=''NU'' then '''+NewUpperText.text+'''');
      sql.Add('when kfxxzl.kflx=''NU+'' then '''+NewUpperPlusText.text+'''');
      sql.Add('when kfxxzl.kflx=''NU-'' then '''+NewUpperMinText.text+'''');
      sql.Add('when kfxxzl.kflx=''NG'' then '''+NewGraphicText.text+'''');
      sql.Add('when kfxxzl.kflx=''MU'' then '''+NewMaterialText.text+'''');
      sql.Add('when kfxxzl.kflx=''MU+'' then '''+NewMaterialPlusText.text+'''');
      sql.Add('when kfxxzl.kflx=''NP'' then '''+NewProcessText.text+'''');
      sql.Add('when kfxxzl.kflx=''NT'' then '''+NewBottomComponentToolingText.text+'''');
      sql.Add('when kfxxzl.kflx=''ND'' then '''+NewCuttingDiesText.text+'''');
      sql.Add('else '''+ElseText.text+'''  end Score');

      //23.08.2025 them dieu kien tinh diem cho khu C
      if main.Edit2.Text = 'VC1' then
      begin
        //sql.Add(',ROW_NUMBER() OVER (PARTITION BY kfxxzl.XieXing ORDER BY kfxxzl.SheHao ASC) AS rank');
        //17.12.2025 doi tu xet kfxxzl.XieXing dua theo shehao sap xep rank diem thanh xet theo 5 ky tu dau va 2 ky tu cuoi de tinh rank
        //Nhung doi giong nhau nhung khac W,M,K cua gioi tinh nam/nu/tre em cua khach hang thi tinh chung 1 rank va sap xep theo rank
        SQL.Add(',ROW_NUMBER() OVER (PARTITION BY LEFT(kfxxzl.XieXing, 5) + RIGHT(kfxxzl.XieXing, 2) ORDER BY kfxxzl.SheHao ASC');
        SQL.Add(',(case when kfxxzl.KFLX = ''TN'' then ''15''');
        SQL.Add('when kfxxzl.KFLX = ''TN+'' then ''20''');
        SQL.Add('when kfxxzl.KFLX = ''CU'' then ''1''');
        SQL.Add('when kfxxzl.KFLX = ''NU'' then ''8''');
        SQL.Add('when kfxxzl.KFLX = ''NU+'' then ''10''');
        SQL.Add('when kfxxzl.KFLX = ''NU-'' then ''6''');
        SQL.Add('when kfxxzl.KFLX = ''NG'' then ''2''');
        SQL.Add('when kfxxzl.KFLX = ''MU'' then ''3''');
        SQL.Add('when kfxxzl.KFLX = ''MU+'' then ''4''');
        SQL.Add('when kfxxzl.KFLX = ''NP'' then ''5''');
        SQL.Add('when kfxxzl.KFLX = ''NT'' then ''4''');
        SQL.Add('when kfxxzl.KFLX = ''ND'' then ''3'' else ''1'' end) desc');
        SQL.Add(')as rank');
      end
      else
      begin
        //12.05.2025 doi tu xet kfxxzl.xiexing thanh kfxxzl.devcode cat chuoi ki tu de so sanh ma
        sql.Add(',row_number() OVER (PARTITION BY LEFT(kfxxzl.devcode, LEN(kfxxzl.devcode) - CHARINDEX(''-'', REVERSE(kfxxzl.devcode))) ORDER BY kfxxzl.devcode ASC) AS rank');
      end;
      sql.Add(',kfxxzl.kflx,kfxxzl.XieXing');
      sql.Add('from kfxxzl');
      sql.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      //=============================
      sql.Add('LEFT JOIN XXZLKF ON kfxxzl.XieXing = XXZLKF.XieXing AND KFXXZL.SheHao = XXZLKF.SheHao');
      SQL.Add('LEFT JOIN ypzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao');

      //20.08.2025 lay them du lieu CBY N23
      SQL.Add('left join CBYtoSpec on CBYtoSpec.XieXing=KFXXZL.XieXing and CBYtoSpec.SheHao=KFXXZL.SheHao');

      sql.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' and kfxxzl.fd=:fd and kfxxzl.jijie=:jijie');
      SQL.Add('and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');

      //20.08.2025 bo dieu kien (and kfjd<>'SEE') va them dieu kien CBYtoSpec
      SQL.Add('AND (');
      SQL.Add('(CBYtoSpec.XieXing IS NOT NULL)');
      SQL.Add('OR');
      SQL.Add('(ypzl.XieXing IS NOT NULL AND LEFT(ISNULL(YPZL.YPDH,''''), 3) <> ''CBY'' AND ypzl.KFJD <> ''SEE'' ');
      SQL.Add('AND ypzl.GSDH='''+main.Edit2.Text+''') ');
      SQL.Add(')');

      sql.Add(' AND ((XXZLKF.TRANSFER = ''0'' OR XXZLKF.TRANSFER is NULL) AND (XXZLKF.Hold = ''0'' OR XXZLKF.Hold IS NULL) AND (XXZLKF.Dropped = ''0'' OR XXZLKF.Dropped IS NULL)) ');

      {if developertext.Text<>'' then
        sql.Add('and kfxxzl.fd like ''%'+developertext.Text+'%''');

      if  seasontext.Text<>'' then
        sql.Add('and kfxxzl.jijie like ''%'+seasontext.Text+'%''');

      if  FDGroupsText.Text<>'' then
        sql.Add('and FDGroups.FDTeam like ''%'+seasontext.Text+'%'''); }

      sql.Add('and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%''  )main1 )main2 ');
      sql.Add('left join Busers ON Busers.Engname = main2.FD');
      sql.Add('left join FDGroups ON FDGroups.FDID = Busers.USERID');
      sql.Add('LEFT JOIN Dev_Loading ON main2.jijie = Dev_Loading.jijie AND main2.fd = Dev_Loading.fd AND main2.devcode = Dev_Loading.devcode');
      //28.03.2026 chi lay nhung FDTeam thuoc khai thac
      if main.Edit2.Text = 'CDC' then
          SQL.Add('where FDGroups.FDTeam in (''CONS'',''DEV INLINE'',''INNO'',''SMU'',''STAR'')');
      sql.Add('group by main2.jijie, main2.fd, main2.devcode, main2.xieming, main2.Type,main2.DevType,RFCDate,Finished,Dev_Loading.USERID,USERDATE,Dev_Loading.YN,Dev_Loading.NoDev,main2.XieXing');
      sql.Add('order by main2.FD,main2.DEVCODE desc');
      //showmessage(sql.Text);
      // memo2.text:=sql.text;
      active:=true;
    //
  end;
end;

procedure TDeveloperLoading.FormCreate(Sender: TObject);
begin
  //Season
  with query3 do
      begin
         active:=false;
         sql.Clear;
         sql.add('select jijie from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         if main.Edit2.Text <> 'VC1' then
           begin
              SQL.add('and right(left(jijie,2),2) between ''16'' and ''50'' ');
              SQL.Add('AND LEN(jijie) < 4 ');
           end;
         sql.add('group by jijie');
         sql.add('order by jijie desc');
         //ShowMessage(sql.Text);
         active:=true;
         seasonText.items.clear;

         while not eof do
         begin
           seasonText.items.add(fieldbyname('jijie').asstring );
           next;
         end;
      end;
      seasonText.ItemIndex:=0;
      // Gan su kien OnChange cho seasonText
      //seasonText.OnChange := seasonTextChange;

  //FD
  with query3 do
      begin
         active:=false;
         sql.Clear;
         sql.add('select FD from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         sql.add('group by FD');
         //ShowMessage(sql.Text);
         active:=true;
         DeveloperText.items.clear;

         while not eof do
         begin
           DeveloperText.items.add(fieldbyname('FD').asstring );
           next;
         end;
      end;


   //FDGroups
  with query3 do
      begin
         active:=false;
         sql.Clear;
         sql.add('select FDTeam  from FDGroups ');
         SQL.add('left join Busers ON FDGroups.FDID = Busers.USERID');
         SQL.add('left join kfxxzl ON Busers.Engname = kfxxzl.FD');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FDTeam is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         if main.Edit2.Text <> 'VC1' then
           begin
              sql.add('and fdname = ''Develop'' ');
           end;
         sql.add('group by FDTeam');
         //ShowMessage(sql.Text);
         active:=true;
         FDGroupsText.items.clear;

         while not eof do
         begin
           FDGroupsText.items.add(fieldbyname('FDTeam').asstring );
           next;
         end;
      end;
      FDGroupsText.ItemIndex:=-1;
      //FDGroupsText.OnChange := FDGroupsTextChange;

end;


procedure TDeveloperLoading.AddDeveloperText;
begin
  if DeveloperText.ItemIndex <> -1 then
  begin
    if Pos(DeveloperText.Text, EditFDText.Text) = 0 then
    begin
      if Length(EditFDText.Text) > 0 then
        EditFDText.Text := EditFDText.Text + ', ' + DeveloperText.Text
      else
        EditFDText.Text := DeveloperText.Text;
    end
    else
      ShowMessage('Developer has been selected!');
  end;
end;

procedure TDeveloperLoading.AddSeasonText;
begin
  if seasonText.ItemIndex <> -1 then
  begin
    // Kiem tra da chon gia tri roi chua
    if Pos(seasonText.Text, EditSeasonText.Text) = 0 then
    begin
      // Neu chua thi cong don
      if Length(EditSeasonText.Text) > 0 then
        EditSeasonText.Text := EditSeasonText.Text + ', ' + seasonText.Text
      else
        EditSeasonText.Text := seasonText.Text;
    end
    else
    begin
      // Neu gia tri ton tai roi thi bao loi
      ShowMessage('Season has been selected!');
    end;
  end;
end;


procedure TDeveloperLoading.AddFDGroupsText;
var
  ListFDG: TStringList;
  i: Integer;
begin
  if FDGroupsText.ItemIndex <> -1 then
  begin
    // Kiem tra da chon gia tri roi chua
    if Pos(FDGroupsText.Text, EditFDGroupsText.Text) = 0 then
    begin
      // Neu chua thi cong don
      if Length(EditFDGroupsText.Text) > 0 then
        EditFDGroupsText.Text := EditFDGroupsText.Text + ', ' + FDGroupsText.Text
      else
        EditFDGroupsText.Text := FDGroupsText.Text;
    end
    else
    begin
      // Neu gia tri ton tai roi thi bao loi
      ShowMessage('FDGroups has been selected!');
    end;
  end;

  ListFDG := TStringList.Create;
  ListFDG.Delimiter := ',';
  ListFDG.DelimitedText := EditFDGroupsText.Text;
  if Copy(EditFDGroupsText.Text, Length(EditFDGroupsText.Text), 1) = ',' then
    EditFDGroupsText.Text := Copy(EditFDGroupsText.Text, 1, Length(EditFDGroupsText.Text)-1);
    ListFDG.DelimitedText := EditFDGroupsText.Text;

  with query3 do
      begin
         active:=false;
         sql.Clear;
         sql.add('select FD from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         SQL.add('left join Busers ON kfxxzl.FD = Busers.Engname');
         SQL.add('left join FDGroups on FDGroups.FDID = Busers.USERID');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         //sql.add('and FDGroups.FDTeam = '''+EditFDGroupsText.Text+''' ');
         if ListFDG.Count > 0 then
        begin
          SQL.Add(' and (');
          for i := 0 to ListFDG.Count - 1 do
            begin
            if i > 0 then
              SQL.Add(' or ');
              SQL.Add('(FDGroups.FDTeam like ''%' + ListFDG[i] + '%'')');
            end;
          SQL.Add(')');
          end;
          sql.add('group by FD');
          active:=true;
          DeveloperText.items.clear;
          //showmessage(sql.Text);
         while not eof do
         begin
           DeveloperText.items.add(fieldbyname('FD').asstring );
           next;
         end;
      end;
      //DeveloperText.ItemIndex:=-1;
      //DeveloperText.OnChange := DeveloperTextChange;
end;




procedure TDeveloperLoading.BB4Click(Sender: TObject);
begin
  with Query2 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDeveloperLoading.BB5Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
  with QueryTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

  try
    Query2.First;
    for i := 1 to Query2.RecordCount do
    begin
      case Query2.UpdateStatus of
        usModified:
        begin
          if (Query2.FieldByName('YN').AsString = '1') then
          begin
            Query2.Edit;
            Query2.FieldByName('USERID').Value := main.Edit1.text;
            Query2.FieldByName('USERDATE').Value := NDate;
            UpdateSQL.Apply(ukModify);
          end
          else if (Query2.FieldByName('YN').AsString = '') then begin
            Query2.Edit;
            Query2.FieldByName('USERID').Value := main.Edit1.Text;
            Query2.FieldByName('USERDATE').Value := NDate;
            Query2.FieldByName('YN').Value := 1;
            UpdateSQL.Apply(ukInsert);
          end;
        end;
      end;

      Query2.Next;
    end;

    Query2.Active := false;
    Query2.CachedUpdates := false;
    Query2.RequestLive := false;
    Query2.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TDeveloperLoading.btnExcelClick(Sender: TObject);
var
  eclApp, WorkBook, Sheet: OLEVariant;
  ListFD, ListJiJie: TStringList;
  i, j, fdIndex: Integer;
  fdValue, jijieValue: string;
begin
  ListFD := TStringList.Create;
  ListJiJie := TStringList.Create;
  try
    ListFD.CommaText := Edit1.Text;
    ListJiJie.CommaText := Edit2.Text;

    eclApp := CreateOleObject('Excel.Application');
    WorkBook := eclApp.Workbooks.Add;
    Sheet := WorkBook.Worksheets[1];

    for i := 0 to QueryTempExcel.FieldCount - 1 do
      Sheet.Cells[1, i + 1] := QueryTempExcel.Fields[i].FieldName;

    j := 2; // Start from row 2 in Excel

    for fdIndex := 0 to ListFD.Count - 1 do
    begin
      fdValue := ListFD[fdIndex];
      jijieValue := ListJiJie[fdIndex];

      with QueryTempExcel do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('select MAX(FDGroups.FDTeam) AS FDTeam, main2.jijie, main2.fd, main2.devcode, main2.xieming, DevType, main2.Type,');
        SQL.Add('convert(float, MAX(main2.RealScore)) RealScore, convert(float, MAX(main2.Score)) Score, Dev_Loading.RFCDate,');
        SQL.Add('Dev_Loading.Finished, Dev_Loading.USERID, Dev_Loading.USERDATE, Dev_Loading.YN,Dev_Loading.NoDev,main2.XieXing from (');
        SQL.Add('select jijie, fd, devcode, xieming, Type, case when rank=''1'' then Score else ''1'' end RealScore, Score, DevType,XieXing');
        SQL.Add('from (select kfxxzl.devcode, kfxxzl.xieming, kfxxzl.shehao, kfxxzl.jijie, kfxxzl.khdh, kfxxzl.FD as FD,kfxxzl.DevType as DevType,');
        SQL.Add('case when kfxxzl.kflx=''TN'' then ''TotalNew''');
        SQL.Add('when kfxxzl.kflx=''TN+'' then ''TotalNew+''');
        SQL.Add('when kfxxzl.kflx=''CU'' then ''NewColor''');
        SQL.Add('when kfxxzl.kflx=''NU'' then ''NewUpper''');
        SQL.Add('when kfxxzl.kflx=''NU+'' then ''NewUpper+''');
        SQL.Add('when kfxxzl.kflx=''NU-'' then ''NewUpper-''');
        SQL.Add('when kfxxzl.kflx=''NG'' then ''NewGraphic''');
        SQL.Add('when kfxxzl.kflx=''MU'' then ''NewMaterial''');
        SQL.Add('when kfxxzl.kflx=''MU+'' then ''NewMaterial+''');
        SQL.Add('when kfxxzl.kflx=''NP'' then ''NewProcess''');
        SQL.Add('when kfxxzl.kflx=''NT'' then ''NewBottomComponentTooling''');
        SQL.Add('when kfxxzl.kflx=''ND'' then ''NewCuttingDies''');
        SQL.Add('else ''Error'' end Type,');
        SQL.Add('case when kfxxzl.kflx=''TN'' then ''' + TotalNewText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''TN+'' then ''' + TotalNewPlusText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''CU'' then ''' + ColorUpdateText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''NU'' then ''' + NewUpperText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''NU+'' then ''' + NewUpperPlusText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''NU-'' then ''' + NewUpperMinText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''NG'' then ''' + NewGraphicText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''MU'' then ''' + NewMaterialText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''MU+'' then ''' + NewMaterialPlusText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''NP'' then ''' + NewProcessText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''NT'' then ''' + NewBottomComponentToolingText.Text + '''');
        SQL.Add('when kfxxzl.kflx=''ND'' then ''' + NewCuttingDiesText.Text + '''');
        SQL.Add('else ''' + ElseText.Text + ''' end Score');

        //23.08.2025 them dieu kien tinh diem cho khu C
        if main.Edit2.Text = 'VC1' then
        begin
          //sql.Add(',ROW_NUMBER() OVER (PARTITION BY kfxxzl.XieXing ORDER BY kfxxzl.SheHao ASC) AS rank');
          //17.12.2025 doi tu xet kfxxzl.XieXing dua theo shehao sap xep rank diem thanh xet theo 5 ky tu dau va 2 ky tu cuoi de tinh rank
          //Nhung doi giong nhau nhung khac W,M,K cua gioi tinh nam/nu/tre em cua khach hang thi tinh chung 1 rank va sap xep theo rank
          SQL.Add(',ROW_NUMBER() OVER (PARTITION BY LEFT(kfxxzl.XieXing, 5) + RIGHT(kfxxzl.XieXing, 2) ORDER BY kfxxzl.SheHao ASC');
          SQL.Add(',(case when kfxxzl.KFLX = ''TN'' then ''15''');
          SQL.Add('when kfxxzl.KFLX = ''TN+'' then ''20''');
          SQL.Add('when kfxxzl.KFLX = ''CU'' then ''1''');
          SQL.Add('when kfxxzl.KFLX = ''NU'' then ''8''');
          SQL.Add('when kfxxzl.KFLX = ''NU+'' then ''10''');
          SQL.Add('when kfxxzl.KFLX = ''NU-'' then ''6''');
          SQL.Add('when kfxxzl.KFLX = ''NG'' then ''2''');
          SQL.Add('when kfxxzl.KFLX = ''MU'' then ''3''');
          SQL.Add('when kfxxzl.KFLX = ''MU+'' then ''4''');
          SQL.Add('when kfxxzl.KFLX = ''NP'' then ''5''');
          SQL.Add('when kfxxzl.KFLX = ''NT'' then ''4''');
          SQL.Add('when kfxxzl.KFLX = ''ND'' then ''3'' else ''1'' end) desc');
          SQL.Add(')as rank');
        end
        else
        begin
          //12.05.2025 doi tu xet kfxxzl.xiexing thanh kfxxzl.devcode cat chuoi ki tu de so sanh ma
          sql.Add(',row_number() OVER (PARTITION BY LEFT(kfxxzl.devcode, LEN(kfxxzl.devcode) - CHARINDEX(''-'', REVERSE(kfxxzl.devcode))) ORDER BY kfxxzl.devcode ASC) AS rank');
        end;
        sql.Add(',kfxxzl.kflx,kfxxzl.XieXing ');
        SQL.Add('from kfxxzl');
        SQL.Add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
        SQL.Add('LEFT JOIN XXZLKF ON kfxxzl.XieXing = XXZLKF.XieXing AND KFXXZL.SheHao = XXZLKF.SheHao');
        SQL.Add('LEFT JOIN ypzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao');

        //20.08.2025 lay them du lieu CBY N23
        SQL.Add('left join CBYtoSpec on CBYtoSpec.XieXing=KFXXZL.XieXing and CBYtoSpec.SheHao=KFXXZL.SheHao');

        SQL.Add('where kfxxzl.devcode is not null and kfxxzl.devcode<>'''' ');
        SQL.Add('and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');

        //20.08.2025 bo dieu kien (and kfjd<>'SEE') va them dieu kien CBYtoSpec
        SQL.Add('AND (');
        SQL.Add('(CBYtoSpec.XieXing IS NOT NULL)');
        SQL.Add('OR');
        SQL.Add('(ypzl.XieXing IS NOT NULL AND LEFT(ISNULL(YPZL.YPDH,''''), 3) <> ''CBY'' AND ypzl.KFJD <> ''SEE'' ');
        SQL.Add('AND ypzl.GSDH='''+main.Edit2.Text+''') ');
        SQL.Add(')');

        sql.Add(' AND ((XXZLKF.TRANSFER = ''0'' OR XXZLKF.TRANSFER is NULL) AND (XXZLKF.Hold = ''0'' OR XXZLKF.Hold IS NULL) AND (XXZLKF.Dropped = ''0'' OR XXZLKF.Dropped IS NULL)) ');
        sql.Add(' AND ((XXZLKF.TRANSFER = ''0'' OR XXZLKF.TRANSFER is NULL) AND (XXZLKF.Hold = ''0'' OR XXZLKF.Hold IS NULL) AND (XXZLKF.Dropped = ''0'' OR XXZLKF.Dropped IS NULL)) ');
        SQL.Add('and kfxxzl.fd=:fd and kfxxzl.jijie=:jijie');
        SQL.Add('and kfxxzl.xieming not like ''%NULLIFY%'' and kfxxzl.xieming not like ''%NULIFY%'') main1 ) main2');
        SQL.Add('left join Busers ON Busers.Engname = main2.FD');
        SQL.Add('left join FDGroups ON FDGroups.FDID = Busers.USERID');
        SQL.Add('LEFT JOIN Dev_Loading ON main2.jijie = Dev_Loading.jijie AND main2.fd = Dev_Loading.fd AND main2.devcode = Dev_Loading.devcode');
        SQL.Add('where RFCDate is null and (Finished<>''1'' or Finished IS NULL) and (NoDev<>''1'' or NoDev IS NULL)');
        //28.03.2026 chi lay nhung FDTeam thuoc khai thac
        if main.Edit2.Text = 'CDC' then
          SQL.Add('and FDGroups.FDTeam in (''CONS'',''DEV INLINE'',''INNO'',''SMU'',''STAR'')');
        SQL.Add('group by main2.jijie, main2.fd, main2.devcode, main2.xieming, main2.Type, main2.DevType,');
        SQL.Add('RFCDate, Finished, Dev_Loading.USERID, USERDATE, Dev_Loading.YN,Dev_Loading.NoDev,main2.XieXing');
        SQL.Add('order by main2.FD, main2.DEVCODE desc');

        Params.ParamByName('fd').AsString := fdValue;
        Params.ParamByName('jijie').AsString := jijieValue;
        //ShowMessage(sql.Text);
        Active := True;

        First;
        while not Eof do
        begin
          for i := 0 to FieldCount - 1 do
            Sheet.Cells[j, i + 1] := Fields[i].Value;
          Next;
          Inc(j); 
        end;
      end;
    end;

    eclApp.Columns.AutoFit;
    eclApp.Visible := True;
    ShowMessage('Success');

  finally
    ListFD.Free;
    ListJiJie.Free;
    if not VarIsEmpty(eclApp) then
      eclApp.Quit;
  end;
end;

procedure TDeveloperLoading.BB6Click(Sender: TObject);
begin
  query2.active:=false;
  query2.cachedupdates:=false;
  query2.requestlive:=false;
  query2.active:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
end;



procedure TDeveloperLoading.btImportClick(Sender: TObject);
var
  ExcelApp: Variant;
  JiJie, FD, DEVCODE, FDTeam, KFLX, RealScore, Score, FinishedStr,RFCDate,NoDevStr: string;
  Finished,NoDev: boolean;
  i: Integer;
begin
  if OpenDialog.Execute then
  begin
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;
    i := 2;

    while True do
    begin
      FDTeam := ExcelApp.Cells[i, 1].Value;
      JiJie := ExcelApp.Cells[i, 2].Value;
      FD := ExcelApp.Cells[i, 3].Value;
      DEVCODE := ExcelApp.Cells[i, 4].Value;
      KFLX := ExcelApp.Cells[i, 7].Value;
      RealScore := ExcelApp.Cells[i, 8].Value;
      Score := ExcelApp.Cells[i, 9].Value;
      RFCDate := FormatDateTime('yyyy-mm-dd hh:nn:ss', ExcelApp.Cells[i, 10].Value);
      Finished := ExcelApp.Cells[i, 11].Value;
      NoDev := ExcelApp.Cells[i, 12].Value;

      if Trim(JiJie) = '' then
        Break;

      if Finished then
        FinishedStr := '1'
      else
        FinishedStr := '0';

      if NoDev then
        NoDevStr := '1'
      else
        NoDevStr := '0';

      query3.Active := False;
      query3.SQL.Clear;
      query3.SQL.Add('SELECT * FROM Dev_Loading');
      query3.SQL.Add('WHERE JiJie = ''' + JiJie + '''');
      query3.SQL.Add('AND FD = ''' + FD + '''');
      query3.SQL.Add('AND DEVCODE = ''' + DEVCODE + '''');
      query3.Open;

      if query3.RecordCount > 0 then
      begin
        query3.SQL.Clear;
        query3.SQL.Add('UPDATE Dev_Loading SET ');
        query3.SQL.Add('FDTeam = ''' + FDTeam + ''', ');
        query3.SQL.Add('KFLX = ''' + KFLX + ''', ');
        query3.SQL.Add('RealScore = ''' + RealScore + ''', ');
        query3.SQL.Add('Score = ''' + Score + ''', ');

        // Check if RFCDate is empty
        if Trim(RFCDate) = '' then
          query3.SQL.Add('RFCDate = NULL, ')
        else
          query3.SQL.Add('RFCDate = ''' + RFCDate + ''', ');

        query3.SQL.Add('NoDev = ' + NoDevStr + ', ');
        query3.SQL.Add('Finished = ' + FinishedStr + ', ');
        query3.SQL.Add('UserID = ''' + Main.Edit1.Text + ''', ');
        query3.SQL.Add('UserDate = ''' + FormatDateTime('yyyy/mm/dd hh:nn:ss', Now) + '''');
        query3.SQL.Add('WHERE JiJie = ''' + JiJie + '''');
        query3.SQL.Add('AND FD = ''' + FD + '''');
        query3.SQL.Add('AND DEVCODE = ''' + DEVCODE + '''');
        query3.ExecSQL;
      end
      else
      begin
        query3.SQL.Clear;
        query3.SQL.Add('INSERT INTO Dev_Loading (JiJie, FD, DEVCODE, FDTeam, KFLX, RealScore, Score, RFCDate, Finished, NoDev, UserID, UserDate, YN)');
        // Check if RFCDate is empty
        if Trim(RFCDate) = '' then
          query3.SQL.Add('VALUES (''' + JiJie + ''', ''' + FD + ''', ''' + DEVCODE + ''', ''' + FDTeam + ''', ''' + KFLX + ''', ''' + RealScore + ''', ''' + Score + ''', NULL, ' + FinishedStr + ', ' + NoDevStr + ', ''' + Main.Edit1.Text + ''', ''' + FormatDateTime('yyyy/mm/dd hh:nn:ss', Now) + ''', ''1'')')
        else
          query3.SQL.Add('VALUES (''' + JiJie + ''', ''' + FD + ''', ''' + DEVCODE + ''', ''' + FDTeam + ''', ''' + KFLX + ''', ''' + RealScore + ''', ''' + Score + ''', ''' + RFCDate + ''', ' + FinishedStr + ', ' + NoDevStr + ', ''' + Main.Edit1.Text + ''', ''' + FormatDateTime('yyyy/mm/dd hh:nn:ss', Now) + ''', ''1'')');

        query3.ExecSQL;
      end;

      i := i + 1;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
    query3.Active := False;
    ShowMessage('Success');
  end;
  Button1.Click;
end;


procedure TDeveloperLoading.Button4Click(Sender: TObject);
begin
  EditSeasonText.Clear;
end;

procedure TDeveloperLoading.Button2Click(Sender: TObject);
begin
  EditFDText.Clear;
end;

procedure TDeveloperLoading.Button3Click(Sender: TObject);
begin
  EditFDGroupsText.Clear;
end;

procedure TDeveloperLoading.DeveloperTextDblClick(Sender: TObject);
begin
  AddDeveloperText;
end;

procedure TDeveloperLoading.DeveloperTextKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    AddDeveloperText;
    Key := 0;
  end;
end;

procedure TDeveloperLoading.SeasonTextDblClick(Sender: TObject);
begin
  AddSeasonText;
end;

procedure TDeveloperLoading.FDGroupsTextDblClick(Sender: TObject);
begin
  AddFDGroupsText;
end;

procedure TDeveloperLoading.SeasonTextKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    AddSeasonText;
    Key := 0;
  end;
end;

procedure TDeveloperLoading.FDGroupsTextKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    AddFDGroupsText;
    Key := 0;
  end;
end;

end.
