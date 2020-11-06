unit Unit1;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;f:text;d:string;u:integer;

implementation

uses Unit2,ShellAPI, Sprav;

{$R *.dfm}

procedure TAboutBox.FormActivate(Sender: TObject);
begin
getdir(0,d);
assignfile(f,d+'\system.txt');
  reset(f);
  read(f,u);
  closefile(f);
  Version.Caption:='Version: 2.1';
  Copyright.Caption:='�����: ��������';
  Comments.Width:=233;
  Comments.Height:=100;
  if u=1 then begin
  ProductName.Caption:='���������� ��������';
  AboutBox.Caption:='��������� ������';
  Comments.Caption:='�������i����: ���� ����i� ��i�����i ������ �������� ������ �������� "_" �������� ���������� ������ "52_001". ��������� ������ ����i� ������� ���������� ��������';
  Label1.caption:='������������ �����';
  end
  else
  if u=2 then begin
  ProductName.Caption:='���������� ����������';
  AboutBox.Caption:='� ���������';
  Comments.Caption:='����������: ���� �� ������ ����� ������ ����� ��� ����� �� ����������� ������ "_" ��� ��� ������. ��������:"52_001". ��������� ������� ��� ��������� ��������';
  Label1.caption:='������� �� ���� ��������� ';
  end;
end;

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
aboutbox.Close;
end;

procedure TAboutBox.Label1Click(Sender: TObject);
begin
ShellExecute(self.WindowHandle,'open','http://aktobesoft.ucoz.kz/',nil,nil, SW_SHOWNORMAL);
end;

end.
