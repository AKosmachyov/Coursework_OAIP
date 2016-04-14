program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Storage in 'unit\Storage.pas',
  entitySet in 'unit\entitySet.pas',
  TestVieu in 'TestVieu.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
