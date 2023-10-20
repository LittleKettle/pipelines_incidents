unit IntroForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Spin,
  System.DateUtils;

type
  TForm2 = class(TForm)
    BtnFxDate_frst: TButton;
    MonthCalendar1: TMonthCalendar;
    Label1: TLabel;
    GrpBxDate_sec: TGroupBox;
    ComBxDate_sec: TComboBox;
    ComBxMoth_sec: TComboBox;
    SpinEdYear_sec: TSpinEdit;
    GrpBxDate_frst: TGroupBox;
    ComBxDate_first: TComboBox;
    ComBxMoth_first: TComboBox;
    SpinEdYear_first: TSpinEdit;
    BtnFxDate_sec: TButton;
    MonthCalendar2: TMonthCalendar;
    GroupBox1: TGroupBox;
    BtnNext: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ComBxDate_firstChange(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure ComBxMoth_firstChange(Sender: TObject);
    procedure SpinEdYear_firstChange(Sender: TObject);
    procedure MonthCalendar2Click(Sender: TObject);
    procedure SpinEdYear_secChange(Sender: TObject);
    procedure ComBxMoth_secChange(Sender: TObject);
    procedure ComBxDate_secChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Date_first: TDateTime;    //  date first from interval
  Date_Second: TDateTime;   //  date second from interval
  DateNom: array [0..30] of integer; // array of mothdays
  YearNom: array [0..999] of integer; // array of years
  LeapYear: boolean; // leap year
const
    // const of months
  MonthNom: array [0..11] of string = ('jan', 'feb', 'mar', 'apr', 'may', 'jun',
                                        'jul','aug','sep', 'oct', 'nov', 'dec');
    // const  counts of days in month
  DaysInMonth: array [0..11] of byte = (31, 29, 31, 30, 31, 30, 31, 31, 30,
                                        31, 30, 31);

 implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
  var i:integer;

begin

  {ќпределение начальных значений визуальных контролов}
  for i:=0 to 11 do
    begin

    ComBxMoth_first.Items.Add (MonthNom[i]);
    ComBxMoth_sec.Items.Add (MonthNom[i]);
    end;
  ComBxMoth_first.ItemIndex:=0;
  ComBxMoth_sec.ItemIndex:=MonthOf(Now())-1;     // т.к.возвращаетс€ индекс 10, а это но€брь
  for i:=0 to 30 do
    begin
      DateNom[i]:=i+1;
      ComBxDate_first.Items.Add (InttoStr (DateNom[i]));
      ComBxDate_sec.Items.Add (InttoStr (DateNom[i]));
    end;

  ComBxDate_first.ItemIndex:=0;
  ComBxDate_sec.ItemIndex:=DayOf(Now()-1);  // т.к.возвращаетс€ индекс 11, начина€ с нол€

  SpinEdYear_sec.Value:=CurrentYear;
  SpinEdYear_first.Value:=2000;
  TryEncodeDate(SpinEdYear_first.Value, ComBxMoth_first.ItemIndex+1,                  // плюс единица т.к. мес€ц в функции может принимать значени€ с 1,
                                          ComBxDate_first.ItemIndex+1, Date_first);     // день с единицы тоже
  MonthCalendar1.Date:= Date_first;
  //DEL label2.Caption:= inttostr(SpinEdYear_first.Value);
  //DEL label3.Caption:= inttostr(ComBxMoth_first.ItemIndex);

end;

{-->Events on Click on MontCalendar // —обыти€ на нажатие на календарь}

procedure TForm2.MonthCalendar1Click(Sender: TObject);      {action на изменение даты в календаре}
begin
  ComBxMoth_first.ItemIndex:= MonthOfTheYear (MonthCalendar1.Date)-1;
  ComBxDate_first.ItemIndex:= DayOfTheMonth (MonthCalendar1.Date)-1;
  SpinEdYear_first.Value:=YearOf (MonthCalendar1.Date);
end;

procedure TForm2.MonthCalendar2Click(Sender: TObject);
begin
  ComBxMoth_sec.ItemIndex:= MonthOfTheYear (MonthCalendar2.Date)-1;
  ComBxDate_sec.ItemIndex:= DayOfTheMonth (MonthCalendar2.Date)-1;
  SpinEdYear_sec.Value:=YearOf (MonthCalendar2.Date);
end;

{<-- Events on Click on MontCalendar // —обыти€ на нажатие на календарь}

{--> Events on Change Corols elemnts of date // —обыти€ на изменени€ контролов}

procedure TForm2.SpinEdYear_firstChange(Sender: TObject);
begin
  {-->   }
  LeapYear:=false;
  TryEncodeDate(SpinEdYear_first.Value, ComBxMoth_first.ItemIndex+1,
                                      ComBxDate_first.ItemIndex+1, Date_first);
  {<--}
  MonthCalendar1.Date:= Date_first;
  if (SpinEdYear_first.Value mod 400)=0 then LeapYear:=true;

end;

procedure TForm2.SpinEdYear_secChange(Sender: TObject);
begin
  TryEncodeDate(SpinEdYear_sec.Value, ComBxMoth_sec.ItemIndex+1,
                                        ComBxDate_sec.ItemIndex+1, Date_Second);
  MonthCalendar2.Date:= Date_Second;
end;

procedure TForm2.ComBxDate_firstChange(Sender: TObject);
begin
  if (LeapYear=true) and (ComBxMoth_first.ItemIndex=1)
                                        and (ComBxDate_first.ItemIndex>28) then
    ComBxDate_first.ItemIndex:=28
  else
    if (LeapYear=false) and (ComBxMoth_first.ItemIndex=1)
                                        and (ComBxDate_first.ItemIndex>27) then
      ComBxDate_first.ItemIndex:=27;


  TryEncodeDate(SpinEdYear_first.Value, ComBxMoth_first.ItemIndex+1,
                                        ComBxDate_first.ItemIndex+1, Date_first);
  MonthCalendar1.Date:= Date_first;
end;

procedure TForm2.ComBxDate_secChange(Sender: TObject);
begin
  if (LeapYear=true) and (ComBxMoth_sec.ItemIndex=1)
                                        and (ComBxDate_sec.ItemIndex>28) then
    ComBxDate_Sec.ItemIndex:=28
  else
    if (LeapYear=false) and (ComBxMoth_sec.ItemIndex=1)
                                        and (ComBxDate_sec.ItemIndex>27) then
      ComBxDate_sec.ItemIndex:=27;

  TryEncodeDate(SpinEdYear_sec.Value, ComBxMoth_sec.ItemIndex+1,
                                        ComBxDate_sec.ItemIndex+1, Date_Second);
  MonthCalendar2.Date:= Date_Second;
end;

procedure TForm2.ComBxMoth_firstChange(Sender: TObject);
begin
  TryEncodeDate(SpinEdYear_first.Value, ComBxMoth_first.ItemIndex+1,
                                        ComBxDate_first.ItemIndex+1, Date_first);
  MonthCalendar1.Date:= Date_first;
end;

procedure TForm2.ComBxMoth_secChange(Sender: TObject);
begin
  TryEncodeDate(SpinEdYear_sec.Value, ComBxMoth_sec.ItemIndex+1,
                                        ComBxDate_sec.ItemIndex+1, Date_Second);
  MonthCalendar2.Date:= Date_Second;
end;
{<-- Events on Change Corols elemnts of date // —обыти€ на изменени€ контролов}

end.



