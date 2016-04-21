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
    RadioGroup2: TRadioGroup;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Edit2: TEdit;
    Button5: TButton;
    Button6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
  ref = ^Categoris ;
  refQue = ^Question ;
  refAnsw = ^Answer;
var
  Form2: TForm2;
  chBox:array of TCheckBox;
implementation

{$R *.dfm}


procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate();
end;

procedure TForm2.Button1Click(Sender: TObject);
var value:string;
  cat:Categoris;
  CheckBox1: TCheckBox;
  
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
  case ref(TreeView1.Selected.Data).recType of
    1:begin
      GroupBox1.Visible:=True;
      Exit;
    end;
    2:begin
     GroupBox3.Visible:=True;
    end;
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
  GroupBox3.Visible:=False;
end;

procedure TForm2.TreeView1Click(Sender: TObject);
var i:Integer;
begin
  if TreeView1.Selected.Data <> nil then
  begin
    case refQue(TreeView1.Selected.Data).recType of
      2:begin
          GroupBox2.Visible:=True;
          label2.Caption:=refQue(TreeView1.Selected.Data).text;
          RadioGroup2.Items.Clear;
          for i:=0 to Length(chBox)-1 do
            chBox[i].Destroy;
          SetLength(chBox,0);
          for i:=0 to Length(refQue(TreeView1.Selected.Data).variantAnswers)-1 do
          begin
            case refQue(TreeView1.Selected.Data).typeQuestion of
              0:begin
                SetLength(chBox,Length(chBox)+1);
                chBox[Length(chBox)-1]:=TCheckBox.Create(RadioGroup2);
                chBox[Length(chBox)-1].parent:=RadioGroup2;
                chBox[Length(chBox)-1].Caption:=refAnsw(refQue(TreeView1.Selected.Data).variantAnswers[i]).text;
                chBox[Length(chBox)-1].Left:=5;
                if Length(chBox)=1 then
                  chBox[Length(chBox)-1].Top:=20
                else
                  chBox[Length(chBox)-1].Top:=chBox[Length(chBox)-2].Top+20;
              end;
              1:begin
                RadioGroup2.Items.Add(refAnsw(refQue(TreeView1.Selected.Data).variantAnswers[i]).text);
              end;
            end;
          end;
        end;
    else GroupBox2.Visible:=False;
    end;
  end;
end;

procedure TForm2.Button5Click(Sender: TObject);

begin
  case refQue(TreeView1.Selected.Data).typeQuestion of
    0:begin
      SetLength(chBox,Length(chBox)+1);
      chBox[Length(chBox)-1]:=TCheckBox.Create(RadioGroup2);
      chBox[Length(chBox)-1].parent:=RadioGroup2;
      chBox[Length(chBox)-1].Caption:=Edit2.Text;
      chBox[Length(chBox)-1].Left:=5;
      if Length(chBox)=1 then
        chBox[Length(chBox)-1].Top:=20
      else
        chBox[Length(chBox)-1].Top:=chBox[Length(chBox)-2].Top+20;
    end ;
    1:RadioGroup2.Items.Add(Edit2.Text);
    2:  ;
  end;
  setLength(refQue(TreeView1.Selected.Data).variantAnswers,Length(refQue(TreeView1.Selected.Data).variantAnswers)+1);
  refQue(TreeView1.Selected.Data).variantAnswers[Length(refQue(TreeView1.Selected.Data).variantAnswers)-1]:=createAnswer(Edit2.Text);
  GroupBox3.Visible:=false;
end;

end.

