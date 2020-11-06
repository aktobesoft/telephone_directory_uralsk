unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls;

type
  TForm2 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    ComboBox1: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure NewGridWinProc(var Msg: TMessage);
  public
    { Public declarations }
  end;
   procedure radio(u:string);
   procedure chstyle;
var
  Form2: TForm2;zapros,k,d:string;f:text;
  OldGridWinProc: TWndMethod;
implementation

uses Sprav;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
 OldGridWinProc := DBGrid1.WindowProc;
  DBGrid1.WindowProc := NewGridWinProc;
form2.Width:=600;
 form2.Height:=400;
 form2.left:=ROUND(screen.Width/2)-300;
      form2.top:=ROUND(screen.Height/2)-200;
 getdir(0,d);
 Query1.Close;
 Query1.DatabaseName:=d;
Query1.SQL.Clear;
Query1.SQL.Add('select k.kod, k.name,o.name from kod.db k,obl.db o');
Query1.SQL.Add('where k.obl=o.kodi');
Query1.Active:=true;
Query1.Open;
zapros:='select k.kod, k.name,o.name from kod.db k,obl.db o where (k.obl=o.kodi)';
chstyle;
Form2.Close;
form1.show;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(zapros);
  k:='';
if (ComboBox1.Text<>'���') and (ComboBox1.Text<>'�������') then
  k:='and (o.name like'+''''+ComboBox1.text+''''+')';
  Query1.SQL.Add(k);
  Query1.Active:=true;
  Query1.Open;
end;
procedure TForm2.RadioButton1Click(Sender: TObject);
begin
    radio('k.kod');
end;
procedure radio(u:string);
begin
  form2.Query1.Close;
  form2.Query1.SQL.Clear;
  form2.Query1.SQL.Add(zapros);
  if k<>'' then form2.Query1.SQL.Add(k);
  form2.Query1.SQL.Add('order by '+u);
  form2.Query1.Active:=true;
  form2.Query1.Open;
end;
procedure TForm2.RadioButton2Click(Sender: TObject);
begin
    radio('k.name');
end;

procedure TForm2.RadioButton3Click(Sender: TObject);
begin
    radio('o.name');
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
form1.show;
form2.close;
end;
procedure chstyle;
begin
  assignfile(f,d+'\system.txt');
  reset(f);
  read(f,u);
  closefile(f);
  if u=1 then begin
  form2.Caption:='������� ����';
  form2.Button1.Caption:='���i';
  form2.Label1.Caption:='�����';
  form2.DBGrid1.Columns[0].Title.Caption:='����';
  form2.DBGrid1.Columns[1].Title.Caption:='����';
  form2.DBGrid1.Columns[2].Title.Caption:='�����';
  form2.ComboBox1.Items.Strings[0]:='�������';
  Form2.ComboBox1.Text:='�������';
  form2.GroupBox1.Caption:='��������';
  form2.RadioButton1.Caption:='������ �������';
  form2.RadioButton2.Caption:='������� �������';
  form2.RadioButton3.Caption:='����� �������';
  end
  else
  if u=2 then begin
  form2.Caption:='���� �������';
  form2.Button1.Caption:='�����';
  form2.Label1.Caption:='�������';
  form2.DBGrid1.Columns[0].Title.Caption:='���';
  form2.DBGrid1.Columns[1].Title.Caption:='�����';
  form2.DBGrid1.Columns[2].Title.Caption:='�������';
  form2.ComboBox1.Items.Strings[0]:='���';
  Form2.ComboBox1.Text:='���';
  form2.GroupBox1.Caption:='����������� ��';
  form2.RadioButton1.Caption:='�����';
  form2.RadioButton2.Caption:='�������';
  form2.RadioButton3.Caption:='��������';
  end;
end;
procedure TForm2.FormShow(Sender: TObject);
begin
chstyle;
end;
procedure TForm2.NewGridWinProc(var Msg: TMessage);
begin
  if Msg.Msg = WM_MOUSEWHEEL then begin
    if SmallInt(HiWord(Msg.wParam)) > 0
      then form2.DBGrid1.DataSource.DataSet.Prior
      else form2.DBGrid1.DataSource.DataSet.Next;
    Msg.Result := 1;
  end 
  else OldGridWinProc(Msg);
end;
end.
