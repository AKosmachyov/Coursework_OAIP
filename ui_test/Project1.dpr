program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Storage in 'unit/Storage.pas',
  entitySet in 'unit/entitySet.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
