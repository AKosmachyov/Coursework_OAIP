unit TestVieu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Storage,entitySet;

type
  TForm2 = class(TForm)
    Button1: TButton;
    TreeView1: TTreeView;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  ref = ^Categoris ;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate();
end;

procedure TForm2.Button1Click(Sender: TObject);
var value:string;
  cat:Categoris;

begin
  if TreeView1.Selected = nil then
    Exit;
  if TreeView1.Selected.Data = nil then
  begin
    InputQuery('���������� ���������', '������� �������� ���������', value);
    if value <> '' then
    begin
      TreeView1.Items.AddChildObject(TreeView1.Selected, value, addCategory(value,-1,-1));
      Exit;
    end
    else
      Exit;
  end;
  ShowMessage(ref(TreeView1.Selected.data).name);
  case ref(TreeView1.Items.Item[2].Data).recType of
    1:ShowMessage('good');
   else ShowMessage('213');
  end;




end;

end.

