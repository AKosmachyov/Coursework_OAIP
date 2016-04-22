unit Storage;

interface
uses
  entitySet;

procedure createTest(time:Integer);
function addCategory(name:string; useQuest:integer; markQuest:integer):Pointer;
function createQuestion(text:string; typeQuestion:Integer):Pointer;
function createAnswer(text:string;isCorrect:Boolean):Pointer;
function str():string;
procedure deleteCateg(current:Pointer);
procedure deleteQues(current:Pointer;parent:Pointer);
type
  refCateg=^Categoris;
var _test:Test;
implementation

uses SysUtils;

procedure createTest(time:Integer);
begin
  if time <> -1 then
    _test.timeForComplite :=time
  else
    _test.timeForComplite := TIME_FOR_TEST;
  SetLength(_test.categoris,0);
end;

function addCategory(name:string; useQuest:integer; markQuest:integer):Pointer;
var categor:^Categoris;
begin
  SetLength(_test.categoris,Length(_test.categoris)+1);
  New(categor);
  categor.name:=name;
  if useQuest <> -1 then
    categor.useQuestions := useQuest
  else
    categor.useQuestions := USE_QUESTIONS;

  if markQuest <> -1 then
    categor.markQuestion := markQuest
  else
    categor.markQuestion := MARK_QUESTIONS;
  categor.recType:=1;
  SetLength(categor.Questions,0);
  _test.categoris[Length(_test.categoris)-1] := categor;
  addCategory:=categor;
end;

function createQuestion(text:string; typeQuestion:Integer):Pointer;
var
  quest : ^Question;
begin
  New(quest);
  quest.text := text;
  quest.typeQuestion := typeQuestion;
//  quest.attachment := attachment;
  quest.recType:=2;
  SetLength(quest.variantAnswers,0);

  createQuestion:=quest;
end;

function createAnswer(text:string;isCorrect:Boolean):Pointer;
var
  answ:^Answer;
begin
  New(answ);
  answ.text := text;
  answ.isCorrect:=isCorrect;
  createAnswer:=answ;
end;

function str():string;
var i,j:Integer;
s:string;
e:Pointer;
ref:^Categoris;
begin
  //for i:=0 to Length(_test.categoris)-1 do
    //s:=ref(_test.categoris[i]).name;
  //ref(_test.categoris[i])
    //s:=s+ref(_test.categoris[i]).name+' ';
  //str:=s;
end;
procedure deleteCateg(current:Pointer);
var i:integer;
begin
  for i:=0 to Length(_test.categoris)-1 do
    if _test.categoris[i]=current then
      Break;
  for i:=i+1 to Length(_test.categoris)-1 do
    _test.categoris[i-1]:=_test.categoris[i];
  SetLength(_test.categoris,Length(_test.categoris)-1);
end;

procedure deleteQues(current:Pointer;parent:Pointer);
var i:integer;
begin
  for i:=0 to Length(refCateg(parent).Questions)-1 do
    if refCateg(parent).Questions[i]=current then
      Break;
  for i:=i+1 to Length(refCateg(parent).Questions)-1 do
    refCateg(parent).Questions[i-1]:=refCateg(parent).Questions[i];
  SetLength(refCateg(parent).Questions,Length(refCateg(parent).Questions)-1);
end;
end.
