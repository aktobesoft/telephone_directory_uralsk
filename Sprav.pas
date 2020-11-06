unit Sprav;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, Menus, XPMan,
  ADODB, ExtCtrls,ShellAPI;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Button1: TButton;
    Edit1: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Edit5: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MainMenu1: TMainMenu;
    file1: TMenuItem;
    file2: TMenuItem;
    erer1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    XPManifest1: TXPManifest;
    CheckBox4: TCheckBox;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    GroupBox2: TGroupBox;
    CheckBox3: TCheckBox;
    N6: TMenuItem;
    ReadMe1: TMenuItem;
    N7: TMenuItem;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure file2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure ReadMe1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Query1BeforeOpen(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure CheckBox4Click(Sender: TObject);
  private
    { Private declarations }
    procedure NewGridWinProc(var Msg: TMessage);
  public
    { Public declarations }
  end;
  procedure chstyle;
var
  Form1: TForm1;d:string;f:text;u:integer;zapic:string;
  OldGridWinProc: TWndMethod;
implementation

uses  Unit2, Unit3, Unit1, Math, StrUtils, ComObj;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var t,pole1,dom,k,n,kon:string;
begin
Query1.Close;
pole1:='nomer';
dom:='';n:='%';kon:='%';
If ComboBox1.ItemIndex=2 then begin n:='%';kon:='';end;
If ComboBox1.ItemIndex=0 then begin kon:='%';n:='';end;
If ComboBox1.ItemIndex=1 then begin n:='%'; kon:='%';end;
If RadioGroup2.ItemIndex=0 then pole1:='nomer';
If RadioGroup2.ItemIndex=1 then pole1:='upper(fam)';
If RadioGroup2.ItemIndex=2 then
begin pole1:='upper(adres)';
if Edit4.Text<>'' then dom:='Д.%'+Edit4.Text+'%';
if Edit5.Text<>'' then dom:=dom+'КВ.%'+Edit5.Text+'%';
end;
t:='select nomer,fam,adres from base_09 where '+pole1+' like '''+n+edit1.Text+kon+dom+'''';
k:='';
if not (radioButton1.Checked) then begin
if radioButton3.Checked then k:=' not ';
k:=' and lico '+k+' like ''Физ.лицо''';
end;
t:=t+k;
If RadioGroup1.ItemIndex=0 then pole1:='nomer';
If RadioGroup1.ItemIndex=1 then pole1:='fam';
If RadioGroup1.ItemIndex=2 then pole1:='adres';
if pole1<>'' then t:=t+' order by '+pole1;
if CheckBox3.Checked then t:=t+' desc';
//ShowMessage(t);
Query1.SQL.Text:=t;
Query1.ExecSQL;
Query1.Open;
Label7.Caption:=inttostr(Query1.RecordCount);
DBGrid1.Width:=DBGrid1.Width+5;
DBGrid1.Width:=DBGrid1.Width-5;
{GroupBox2.Cursor:=crDefault;
GroupBox1.Cursor:=crDefault;
RadioGroup1.Cursor:=crDefault;
RadioGroup2.Cursor:=crDefault;
DBGrid1.Cursor:=crDefault;
Form1.Cursor:=crDefault;}
end;

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=13) or (CheckBox4.Checked) then
button1.Click;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 OldGridWinProc := DBGrid1.WindowProc;
 DBGrid1.WindowProc := NewGridWinProc;
 Session.AddPassword('fqvfy');
 zapic:='     Не больше 1000 записей!     ';
 Application.Title:='Телефонный справочник';
 Form1.Font.Name:='Tahoma';
 Form1.Font.Size:=9;
 Form1.Font.Color:=clBlue;
 Form1.Font.Charset:=RUSSIAN_CHARSET;
 form1.Width:=780;
 form1.Height:=580;
 {form1.DBGrid1.Height:=345;
 form1.DBGrid1.Width:=755;
 Label8.Left:=40;
 Label8.Top:=480;
 Label7.Left:=224;
 Label7.Top:=480;
 Label6.Left:=640;
 Label6.Top:=480;
 GroupBox2.Left:=8;
 GroupBox2.Width:=265;
 GroupBox1.Left:=280;
 GroupBox1.Width:=161;
 RadioGroup2.Left:=448;
 RadioGroup2.Width:=145;
 RadioGroup1.Left:=600;
 RadioGroup1.Width:=161;
 CheckBox3.Left:=600;
 CheckBox3.Width:=161;
  {Edit1.Width:=233;
  Button1.Width:=70;
  Button1.left:=192;}
Session.AddPassword('pfhbyf');
Form1.DBGrid1.Width:=Form1.DBGrid1.Width-5;
Form1.DBGrid1.Height:=Form1.DBGrid1.Height-20;
Query1.Active:=false;
Query1.SQL.Clear;
Query1.SQL.Add('select nomer,fam,adres from base_09.db ');
Query1.Active:=true;
  assignfile(f,'system.txt');
  reset(f);
  read(f,u);
  closefile(f);
  if u=1 then
  chstyle;
Label7.Caption:=inttostr(Query1.RecordCount);
//ActivateKeyboardLayout(0, 0);
end;

procedure TForm1.file2Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
form2.ShowModal;
end;
procedure chstyle;
var bufer:integer;
begin
  assignfile(f,'system.txt');
  reset(f);
  read(f,u);
  closefile(f);
  if u=1 then begin
  form1.Caption:='Телефондык аныктама';
  Application.Title:='Телефондык аныктама';
  Form1.MainMenu1.Items[0].Items[0].Caption:='Шыгу';
  Form1.MainMenu1.Items[1].caption:='Куралдар';
  Form1.MainMenu1.Items[1].Items[0].Caption:='Тiл';
  Form1.MainMenu1.Items[1].Items[2].Caption:='Екзелге экспорттау';
  Form1.MainMenu1.Items[1].Items[0].Items[0].Caption:='Казакша';
  Form1.MainMenu1.Items[1].Items[0].Items[1].Caption:='Орысша';
  Form1.MainMenu1.Items[1].Items[1].Caption:='Калалар коды';
  Form1.MainMenu1.Items[2].caption:='Аныктама';
  Form1.MainMenu1.Items[2].Items[0].Caption:='ReadMe файл';
  Form1.MainMenu1.Items[2].Items[1].Caption:='Программа туралы';
  Form1.GroupBox1.Caption:='Тулга';
  Form1.Label1.Caption:='Iзделiдi создiн орналасуы';
  bufer:=Form1.ComboBox1.ItemIndex;
  Form1.ComboBox1.Items.Clear;
  Form1.ComboBox1.Items.Add('Басталады');
  Form1.ComboBox1.Items.Add('Курамында бар');
  Form1.ComboBox1.Items.Add('Битеди');
  Form1.ComboBox1.ItemIndex:=0;
  Form1.GroupBox2.Caption:='Iздеу';
  Form1.ComboBox1.ItemIndex:=bufer;
  Form1.RadioButton1.Caption:='Барлыгы';
  Form1.RadioButton2.Caption:='Жеке тулга';
  Form1.RadioButton3.Caption:='Мекеме';
  Form1.RadioGroup2.Caption:='Негізгі iздеу орісi';
  Form1.RadioGroup2.Items.Clear;
  Form1.RadioGroup2.Items.Add('Номер');
  Form1.RadioGroup2.Items.Add('Иесi');
  Form1.RadioGroup2.Items.Add('Мекен-жайы');
  Form1.RadioGroup2.ItemIndex:=0;
  Form1.RadioGroup1.Caption:='Сурыптау орісi';
  Form1.RadioGroup1.Items.Clear;
  Form1.RadioGroup1.Items.Add('Номер');
  Form1.RadioGroup1.Items.Add('Иесi');
  Form1.RadioGroup1.Items.Add('Мекен-жайы');
   Form1.RadioGroup1.ItemIndex:=0;
  Form1.CheckBox3.Caption:='Кему ретi бойынша';
  Form1.RadioButton1.Caption:='Барлыгы';
  Form1.RadioButton2.Caption:='Жеке тулга';
  Form1.RadioButton3.Caption:='Мекеме';
  Form1.Button1.Caption:='Iздеу';
  Form1.Label2.Caption:='уй №';
  Form1.Label3.Caption:='патер №';
  form1.CheckBox4.Caption:='Автоматты тyрде фильтрлеу';
  form1.DBGrid1.Columns[0].Title.Caption:='Телефон';
  form1.DBGrid1.Columns[1].Title.Caption:='Иесі';
  form1.DBGrid1.Columns[2].Title.Caption:='Мекен-жайы';
  form1.Label8.Caption:='      Жазба саны';
  zapic:='Жазбалар саны 1000-нан астам  болмау керек!';
  end
  else
  if u=2 then begin
  form1.Caption:='Телефонный справочник';
  Application.Title:='Телефонный справочник';
  Form1.MainMenu1.Items[0].Items[0].Caption:='Выход';
  Form1.MainMenu1.Items[1].caption:='Сервис';
  Form1.MainMenu1.Items[1].Items[0].Caption:='Язык';
  Form1.MainMenu1.Items[1].Items[2].Caption:='Сохранить в Екзел';
  Form1.MainMenu1.Items[1].Items[0].Items[0].Caption:='Казахский';
  Form1.MainMenu1.Items[1].Items[0].Items[1].Caption:='Русский';
  Form1.MainMenu1.Items[1].Items[1].Caption:='Коды городов';
  Form1.MainMenu1.Items[2].caption:='Справка';
  Form1.MainMenu1.Items[2].Items[0].Caption:='Файл ReadMe';
  Form1.MainMenu1.Items[2].Items[1].Caption:='О программе';
  Form1.GroupBox1.Caption:='Лицо';
  Form1.RadioButton1.Caption:='Все';
  Form1.RadioButton2.Caption:='Физическое лицо';
  Form1.RadioButton3.Caption:='Организация';
  Form1.RadioGroup1.Caption:='Область';
  Form1.RadioGroup2.Items.Clear;
  Form1.RadioGroup2.Caption:='Искать по';
  Form1.RadioGroup2.Items.Add('Номер');
  Form1.RadioGroup2.Items.Add('Владелец');
  Form1.RadioGroup2.Items.Add('Адрес');
  Form1.RadioGroup1.Caption:='Сортировать по';
  bufer:=Form1.ComboBox1.ItemIndex;
  Form1.ComboBox1.Items.Clear;
  Form1.ComboBox1.Items.Add('Начинается с');
  Form1.ComboBox1.Items.Add('Содержит');
  Form1.ComboBox1.Items.Add('Заканчивается на');
  Form1.ComboBox1.ItemIndex:=0;
  Form1.RadioGroup1.Items.Clear;
  Form1.RadioGroup1.Items.Add('Номер');
  Form1.RadioGroup1.Items.Add('Владелец');
  Form1.RadioGroup1.Items.Add('Адрес');
  Form1.CheckBox3.Caption:='По убыванию';
  form1.Button1.Caption:='Найти';
  form1.Label2.Caption:='№ дома';
  form1.Label3.Caption:='№ кв';
  form1.Label8.Caption:='Количество записей';
  form1.CheckBox4.Caption:='Фильтровать';
  form1.DBGrid1.Columns[0].Title.Caption:='Телефон';
  form1.DBGrid1.Columns[1].Title.Caption:='Владелец';
  form1.DBGrid1.Columns[2].Title.Caption:='Адрес';
  Form1.RadioGroup2.ItemIndex:=0;
  Form1.RadioGroup1.ItemIndex:=0;
  zapic:='     Не больше 1000 записей!     ';
  end;
end;
procedure TForm1.N4Click(Sender: TObject);
begin
  assignfile(f,'system.txt');
  erase(f);
  assignfile(f,'system.txt');
  rewrite(f);
  u:=1;
  write(f,u);
  closefile(f);
  chstyle;
  end;

procedure TForm1.N5Click(Sender: TObject);
begin
  assignfile(f,'system.txt');
  erase(f);
  assignfile(f,'system.txt');
  rewrite(f);
  u:=2;
  write(f,u);
  closefile(f);
  chstyle;
end;

procedure TForm1.NewGridWinProc(var Msg: TMessage);
begin
  if Msg.Msg = WM_MOUSEWHEEL then begin
    if SmallInt(HiWord(Msg.wParam)) > 0
      then DBGrid1.DataSource.DataSet.Prior
      else DBGrid1.DataSource.DataSet.Next;
    Msg.Result := 1;
  end
  else OldGridWinProc(Msg);
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
GroupBox2.Caption:=RadioGroup2.Items[RadioGroup2.ItemIndex];
if RadioGroup2.ItemIndex=2 then begin
Label1.Visible:=false;
ComboBox1.Visible:=false;
Label2.Visible:=True;
Label3.Visible:=True;
Edit4.Visible:=True;
Edit5.Visible:=True;end else begin
Label1.Visible:=True;
ComboBox1.Visible:=True;
Label2.Visible:=False;
Label3.Visible:=False;
Edit4.Visible:=False;
Edit5.Visible:=False;end;
if RadioGroup2.ItemIndex<>0 then Edit1.MaxLength:=30 else
Edit1.MaxLength:=6;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
aboutbox.ShowModal;
end;

procedure TForm1.N6Click(Sender: TObject);
var
i,j,index: Integer;
ExcelApp,sheet: Variant;
begin
if Query1.RecordCount<=1000 then begin
ExcelApp := CreateOleObject('Excel.Application');
ExcelApp.Visible := true;
ExcelApp.WorkBooks.Add(-4167);
ExcelApp.WorkBooks[1].WorkSheets[1].name := 'Выгрузка';
sheet:=ExcelApp.WorkBooks[1].WorkSheets['Выгрузка'];
index:=2;
DBGrid1.DataSource.DataSet.First;
sheet.cells[1,1]:=' Телефон ';
sheet.cells[1,2]:=' Ф.И.О. ';
sheet.cells[1,3]:=' Адрес ';
for i:=1 to DBGrid1.DataSource.DataSet.RecordCount do
begin
for j:=1 to DBGrid1.FieldCount do
sheet.cells[index,j]:=DBGrid1.fields[j-1].asstring;
inc(index);
DBGrid1.DataSource.DataSet.Next;
end;end else showmessage(zapic);
end;
procedure TForm1.ReadMe1Click(Sender: TObject);
begin
ShellExecute(self.WindowHandle,'open','readme.rtf',nil,nil, SW_SHOWNORMAL);
end;

procedure TForm1.FormResize(Sender: TObject);
var uz:integer;
begin
 uz:=Form1.DBGrid1.Width-20;
 form1.DBGrid1.Columns[0].Width:=round(14*uz/100);
  form1.DBGrid1.Columns[1].Width:=round(41*uz/100);
   form1.DBGrid1.Columns[2].Width:=round(42*uz/100);
end;



procedure TForm1.Query1BeforeOpen(DataSet: TDataSet);
begin
Edit1.Cursor:=crSQLWait;
GroupBox2.Cursor:=crSQLWait;
GroupBox1.Cursor:=crSQLWait;
RadioGroup1.Cursor:=crSQLWait;
RadioGroup2.Cursor:=crSQLWait;
DBGrid1.Cursor:=crSQLWait;
Form1.Cursor:=crSQLWait;
end;

procedure TForm1.Query1AfterOpen(DataSet: TDataSet);
begin
Edit1.Cursor:=crDefault;
GroupBox2.Cursor:=crDefault;
GroupBox1.Cursor:=crDefault;
RadioGroup1.Cursor:=crDefault;
RadioGroup2.Cursor:=crDefault;
DBGrid1.Cursor:=crDefault;
Form1.Cursor:=crDefault;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
ComboBox1.ItemIndex:=0;
end;

end.
