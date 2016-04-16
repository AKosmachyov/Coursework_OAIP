unit TestVieu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    TreeView1: TTreeView;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var  k:integer;
begin
  with TreeView1 do
  begin
    Items.Clear;
    Items.Add(NIL,'123');
    for k:= 1 to 10 do
      if Odd(k) then
        Items.AddChild(Items[k-1],IntToStr(k))
      else
        Items.Add(Items[k-1],IntToStr(k));
    FullExpand;
  end;
end;

end.
