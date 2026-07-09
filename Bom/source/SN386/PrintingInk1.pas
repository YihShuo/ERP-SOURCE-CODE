unit PrintingInk1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, GridsEh, DBGridEh,
  DBTables, DB;

type
  TPrintingInk = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ds2: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    edt8: TEdit;
    edt811: TEdit;
    lbl911: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Edit5: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Qry_List: TQuery;
    ds21: TDataSource;
    updtsql11: TUpdateSQL;
    Qry_ListInkNGlue_No: TIntegerField;
    Qry_ListRound: TIntegerField;
    Qry_ListCost: TCurrencyField;
    Qry_Listsqueegees: TIntegerField;
    Qry_Listtimes: TIntegerField;
    Qry_ListInk1: TCurrencyField;
    Qry_ListInk1_Name: TStringField;
    Qry_ListInk1_Cost: TCurrencyField;
    Qry_ListInk2: TCurrencyField;
    Qry_ListInk2_Name: TStringField;
    Qry_ListInk2_Cost: TCurrencyField;
    Qry_ListInk3: TCurrencyField;
    Qry_ListInk3_Name: TStringField;
    Qry_ListInk3_Cost: TCurrencyField;
    Qry_ListCompoudCost: TCurrencyField;
    Qry_ListTotalKGBefore: TCurrencyField;
    Qry_ListTotalKGAfter: TCurrencyField;
    Qry_ListOutput: TIntegerField;
    Qry_ListUserName: TStringField;
    Qry_ListUserUpdateTime: TDateTimeField;
    dbgrdh3: TDBGridEh;
    TemQry: TQuery;
    qry_INK: TQuery;
    dbgrdh2: TDBGridEh;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    function ExtractNumbersList(const S: string): TStringList;      
    function ExtractCompoudingList(const ss: string): TStringList;   
    function SwapValue(v: Integer): Integer;
    procedure BitBtn4Click(Sender: TObject);
  private                       
    RoundCount,CurrentNo:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintingInk: TPrintingInk;

implementation

uses main1,CostingCBD1;

{$R *.dfm}
function TPrintingInk.SwapValue(v: Integer): Integer;
begin
  case v of
    0: Result := 1;
    1: Result := 0;
    2: Result := 3;
    3: Result := 2;
  else
    Result := v;  // 不在 1~4 範圍，就直接回傳原值（避免錯誤）
  end;
end;

function TPrintingInk.ExtractCompoudingList(const ss: string): TStringList;
var
  i: Integer;
  current,S,A,B: string;
  percentage,percentage2:Currency;
begin
  Result := TStringList.Create;
  S:= StringReplace(ss, ' ', '', [rfReplaceAll]);
  S:= StringReplace(S, '(', '', [rfReplaceAll]);
  current := '';
  percentage:=0;
  percentage2:=0;
  A:='';
  B:='';
  for i := 1 to Length(S) do
  begin
    if (S[i] <> '+') and (S[i] <> ')') and (S[i] <> '%') and (S[i] <> ',') then
      current := current + S[i]
    else if (S[i]='%') then
    begin
       if percentage=0 then
          percentage:= StrToCurrDef(current, 0)
       else
       begin
          percentage2:= StrToCurrDef(current, 0)*0.01*percentage;
          if A='' then
            A:=current
          else if B='' then
            B:=current;
       end;
       current:='';
    end;
    if (S[i] = '+') or (S[i] = ',') or (S[i] = ')') or (i = Length(S))then
    begin
      if current <> '' then
      begin
        if percentage2<>0 then
          Result.Add(CurrToStr(percentage2))
        else
        begin
          Result.Add(CurrToStr(percentage));
          if A='' then
            A:=CurrToStr(percentage)
          else if B='' then
            B:=CurrToStr(percentage);
        end;
        Result.Add(current);
        //showmessage('percentage2'+CurrToStr(percentage)+';'+CurrToStr(percentage2)+'current:'+current);
        if (S[i]=')') then
        begin
          percentage:=0;
        end ;
        percentage2:=0;
        current := '';
      end;
    end;
  end;
  //ShowMessage(A+';'+B);
  Result.Add(A);
  Result.Add(B);
  //showmessage('222percentage2'+CurrToStr(percentage)+';'+CurrToStr(percentage2)+'current:'+current);

end;
function TPrintingInk.ExtractNumbersList(const S: string): TStringList;
var
  i: Integer;
  current: string;
begin
  Result := TStringList.Create;
  current := '';
  for i := 1 to Length(S) do
  begin
    if S[i] in ['0'..'9', '.'] then
      current := current + S[i]
    else
    begin
      if current <> '' then
      begin
        Result.Add(current);
        current := '';
      end;
    end;
  end;
  if current <> '' then
    Result.Add(current);
end;

procedure TPrintingInk.BitBtn2Click(Sender: TObject);
begin
  with Qry_INK do
  begin
     active:=false;
     sql.Clear;
     sql.add('select * from');
     sql.add('(SELECT C.season, CP.Ink1_Name AS Ink_Name,CP.Ink1_Cost as Ink_Cost');
     sql.add('FROM CostingPrintCost C');
     sql.add('LEFT JOIN CostingPrintCosts CP ON CP.InkNGlue_No = C.InkNGlue_No');
     sql.add('UNION ALL');
     sql.add('SELECT C.season, CP.Ink2_Name AS Ink_Name,CP.Ink2_Cost as Ink_Cost');
     sql.add('FROM CostingPrintCost C');
     sql.add('LEFT JOIN CostingPrintCosts CP ON CP.InkNGlue_No = C.InkNGlue_No');
     sql.add('UNION ALL');
     sql.add('SELECT C.season, CP.Ink3_Name AS Ink_Name,CP.Ink3_Cost as Ink_Cost');
     sql.add('FROM CostingPrintCost C');
     sql.add('LEFT JOIN CostingPrintCosts CP ON CP.InkNGlue_No = C.InkNGlue_No');
     sql.add(')A');
     sql.add('where 1=1');
     if edt8.text<>'' then
        sql.add('and Season = '''+edt8.text+'''');
     if edt811.text<>'' then
        sql.add('and Ink_Name like '''+edt811.text+'%''');      
     sql.add('group by season,Ink_Name,Ink_Cost');
     //showmessage(SQL.text);
     active:=true;
  end;
end;

procedure TPrintingInk.BitBtn3Click(Sender: TObject);
begin       
  if qry_INK.Active then
  begin
    qry_INK.RequestLive:=true;
    qry_INK.CachedUpdates:=true;
    qry_INK.Insert;
  end;
end;

procedure TPrintingInk.BitBtn5Click(Sender: TObject);
begin
  with Qry_List do
  begin
     active:=false;
     sql.Clear;
     sql.add('select CostingPrintCostS.* from CostingPrintCostS');
     if edit5.text<>'' then
        sql.add('where InkNGlue_No = '''+edit5.text+'''')
     else
        sql.add('where 1=2');
     //showmessage(SQL.text);
     active:=true;                  
     RequestLive:=true;
     CachedUpdates:=true;
     if Eof then
        CurrentNo:=0
     else
        CurrentNo:= Qry_List.fieldbyname('InkNGlue_No').Value;
  end;
  RoundCount:=1;
  if edit5.text<>'' then
  begin              
   TemQry.Active:=false;
   TemQry.sql.Clear;
   TemQry.sql.add('select ISNULL(MAX(Round), 0) + 1 AS NextNo from CostingPrintCostS');
   TemQry.sql.add('where InkNGlue_No = '''+edit5.text+'''');
   TemQry.Active:=true;
   RoundCount:=TemQry.fieldbyname('NextNo').Value;
   TemQry.Active:=false;
  end;

end;

procedure TPrintingInk.BitBtn6Click(Sender: TObject);      
var
  nums,nums2: TStringList;
  i: Integer;
begin
  if qry_List.Active then
  begin
      with qry_List do
      begin
        if fieldbyname('InkNGlue_No').AsString<>'' then
          CurrentNo:=fieldbyname('InkNGlue_No').value;
        First;
        Last;
        Insert;
        Edit;
        fieldbyname('Round').value:=RoundCount ;
        RoundCount :=RoundCount +1;
        nums := ExtractNumbersList(Edit8.text);
        fieldbyname('squeegees').value:=nums[0];
        fieldbyname('times').value:=nums[1];

        nums := ExtractCompoudingList(Edit9.text);  //名稱序列
        fieldbyname('Ink1').value:=nums[0];
        fieldbyname('Ink1_Name').value:=nums[1];
        fieldbyname('Ink2').value:=nums[2];
        fieldbyname('Ink2_Name').value:=nums[3];
        if nums.Count > 6 then
        begin       
          fieldbyname('Ink3').value:=nums[4];
          fieldbyname('Ink3_Name').value:=nums[5];
        end;
        nums2 := ExtractNumbersList(Edit1.text);  //價格序列
        if nums2.Count < 2 then
            Qry_List.fieldbyname('Ink1_Cost').value:=nums2[0]
        else if nums2.Count < 4 then
        begin
            Qry_List.fieldbyname('Ink1_Cost').value:=nums2[0];
            Qry_List.fieldbyname('Ink2_Cost').value:=nums2[1];
        end
        else
        begin
            i:= nums2.IndexOf(nums[6]);
            if i=-1 then
              i:= nums2.IndexOf(FloatToStr( StrToFloatDef(nums[6], 0) * 0.01 ));
            if i=-1 then
            begin
                ShowMessage('Can not find the % of ink'+nums[6]);
                exit;
            end;
            nums2[i] := '';        //避免重複選中
            //ShowMessage(IntToStr(i));
            i:=SwapValue(i);
            Qry_List.fieldbyname('Ink1_Cost').value:=nums2[i];
            //find ink2
            i:= nums2.IndexOf(nums[7]);
            if i=-1 then
              i:= nums2.IndexOf(FloatToStr( StrToFloatDef(nums[7], 0) * 0.01 ));
            if i=-1 then
            begin
                ShowMessage('Can not find the % of ink'+nums[7]);
                exit;
            end;
            //ShowMessage(IntToStr(i));
            i:=SwapValue(i);
            Qry_List.fieldbyname('Ink2_Cost').value:=nums2[i];
        end;

        fieldbyname('TotalKGBefore').value:=Edit10.text;
        fieldbyname('TotalKGAfter').value:=Edit11.text;
        fieldbyname('Output').value:=Edit12.text;
        fieldbyname('UserName').value:=Edit12.text;
        Post;
        Edit8.text:='';
        Edit9.text:='';
        Edit10.text:='';
        Edit11.text:='';
      end;

  end
  else
  begin             
    ShowMessage('Pls query first');
  end;
end;

procedure TPrintingInk.BitBtn4Click(Sender: TObject);
var
  TTCost,PartCost:Currency;
begin
  if Qry_List.Active then
  try
      PartCost:=0;
      TTCost:=0;
      Qry_List.first;
      while not Qry_List.eof do
      begin
          if  Qry_List.FieldByName('Ink1_Name').IsNull then
          begin
            showmessage('MTL Code can not be blank');
            abort;
          end;
          if  Qry_List.FieldByName('Ink2_Name').IsNull then
          begin
            showmessage('MTL Code can not be blank');
            abort;
          end;
          if  Qry_List.FieldByName('Ink3_Name').IsNull then
          begin
            showmessage('MTL Code can not be blank');
            abort;
          end;

          //查詢油墨價格
          {edt8.text:='';
          edt81.text:='';
          edt811.text:=Qry_List.fieldbyname('Ink1_Name').AsString;
          BitBtn2.Click;
          Qry_List.edit;
          if Qry_INK.RecordCount=1 then
            Qry_List.fieldbyname('Ink1_Cost').value:=Qry_INK.fieldbyname('Cost').value
          else
          begin
            showmessage('check ink cost for '+Qry_List.fieldbyname('Ink1_Name').AsString);
            abort;
          end;
          edt811.text:=Qry_List.fieldbyname('Ink2_Name').AsString;
          BitBtn2.Click;
          if Qry_INK.RecordCount=1 then
            Qry_List.fieldbyname('Ink2_Cost').value:=Qry_INK.fieldbyname('Cost').value
          else
          begin
            showmessage('check ink cost for '+Qry_List.fieldbyname('Ink2_Name').AsString);
            abort;
          end;
          edt811.text:=Qry_List.fieldbyname('Ink3_Name').AsString;
          BitBtn2.Click;  
          Qry_List.edit;
          if Qry_INK.RecordCount=1 then
            Qry_List.fieldbyname('Ink3_Cost').value:=Qry_INK.fieldbyname('Cost').value
          else
          begin
            showmessage('check ink cost for '+Qry_List.fieldbyname('Ink3_Name').AsString);
            abort;
          end;       }
          //
          PartCost:=(Qry_List.fieldbyname('Ink1').value*Qry_List.fieldbyname('Ink1_Cost').value
                    +Qry_List.fieldbyname('Ink2').value*Qry_List.fieldbyname('Ink2_Cost').value
                    +Qry_List.fieldbyname('Ink3').value*Qry_List.fieldbyname('Ink3_Cost').value)/100;
          Qry_List.edit;
          Qry_List.fieldbyname('CompoudCost').value:= PartCost;
          //
          Qry_List.fieldbyname('Cost').value:=PartCost*(Qry_List.fieldbyname('TotalKGBefore').value-Qry_List.fieldbyname('TotalKGAfter').value)/Qry_List.fieldbyname('Output').value;
          TTCost:=TTCost+Qry_List.fieldbyname('Cost').value;
          //get NO

          if Qry_List.fieldbyname('InkNGlue_No').AsString='' then
          begin
             if CurrentNo=0 then
             begin

               TemQry.Active:=false;
               TemQry.sql.Clear;
               TemQry.sql.add('select ISNULL(MAX(InkNGlue_No), 0) + 1 AS NextNo from CostingPrintCostS');
               TemQry.Active:=true;
               Qry_List.fieldbyname('InkNGlue_No').Value:=TemQry.fieldbyname('NextNo').Value;
               CurrentNo:=TemQry.fieldbyname('NextNo').Value;
               TemQry.Active:=false;
             end
             else
               Qry_List.fieldbyname('InkNGlue_No').Value:=CurrentNo;
          end
          else
            CurrentNo:=Qry_List.fieldbyname('InkNGlue_No').Value;
          case Qry_List.updatestatus of
            usinserted:
              begin
                    Qry_List.edit;
                    Qry_List.FieldByName('UserName').Value:=main.edit1.text;
                    updtsql11.apply(ukinsert);
              end;
            usmodified:
              begin
                    Qry_List.edit;
                    Qry_List.FieldByName('UserName').Value:=main.edit1.text;
                    updtsql11.apply(ukmodify);
              end;
          end;
          Qry_List.next;
      end;
      CostingCBD.QryPrint.edit;
      CostingCBD.QryPrint.fieldbyname('InkNGlueCost').value:=TTCost;
      CostingCBD.QryPrint.fieldbyname('InkNGlue_No').value:=Qry_List.FieldByName('InkNGlue_No').Value;
      Edit5.Text:=Qry_List.FieldByName('InkNGlue_No').Value;
      BitBtn5.Click;
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
end;

end.
