unit TestVieu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Storage,entitySet, ExtCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    TreeView1: TTreeView;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Button3: TButton;
    Button4: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  ref = ^Categoris ;
  refQue = ^Question ;

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
    InputQuery('Добавление категории', 'Введите название категории', value);
    if value <> '' then
    begin
      TreeView1.Items.AddChildObject(TreeView1.Selected, value, addCategory(value,-1,-1));
      Exit;
    end
    else
      Exit;
  end;
  case ref(TreeView1.Selected.Data).recType of
    1:begin
      GroupBox1.Visible:=True;
      Exit;
    end;
   else ShowMessage('unKnow variant');
  end;

end;

procedure TForm2.Button3Click(Sender: TObject);
var abc:Pointer;
begin
  abc:=createQuestion(Edit1.Text, RadioGroup1.ItemIndex);
  SetLength(ref(TreeView1.Selected.Data).Questions,Length(ref(TreeView1.Selected.Data).Questions)+1);
  ref(TreeView1.Selected.Data).Questions[Length(ref(TreeView1.Selected.Data).Questions)-1]:=abc;
  TreeView1.Items.AddChildObject(TreeView1.Selected, Edit1.Text, abc);
  GroupBox1.Visible:=False;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  GroupBox1.Visible:=False;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  ShowMessage('asd');
end;

procedure TForm2.TreeView1Click(Sender: TObject);
begin
  if TreeView1.Selected.Data <> nil then
  begin
    case refQue(TreeView1.Selected.Data).recType of
      2:begin
          GroupBox2.Visible:=True;
          label2.Caption:=refQue(TreeView1.Selected.Data).text;
      end;
    else GroupBox2.Visible:=False;
    end;
  end;
end;

end.

