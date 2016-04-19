unit Storage;

interface
uses
  entitySet;

procedure createTest(time:Integer);
function addCategory(name:string; useQuest:integer; markQuest:integer):Pointer;
function createQuestion(text:string; typeQuestion:Integer):Pointer;
{procedure createAnswer(idCateg:Integer; idQuest:Integer; idAnsw:Integer; isCorrect:Boolean; text:string; attachment:string);
 }
var _test:Test;
implementation

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

{procedure createAnswer(idCateg:Integer; idQuest:Integer; idAnsw:Integer; isCorrect:Boolean; text:string; attachment:string);
var
  answ:Answer;
begin
  answ.isCorrect := isCorrect;
  answ.text := text;
  answ.attachment := attachment;
  with _test.categoris[idCateg].Questions[idQuest] do
  begin
    SetLength(variantAnswers,length(variantAnswers)+1);
    variantAnswers[idAnsw] := answ;
  end;
end;}
end.
