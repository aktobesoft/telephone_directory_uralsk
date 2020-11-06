program Phone_2010;

uses
  Forms,
  Sprav in 'Sprav.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit1 in 'Unit1.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
