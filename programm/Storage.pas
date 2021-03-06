unit Storage;

interface
uses
  entitySet;
var _test:Test;
implementation

procedure createTest(time);
begin
  if time <> -1 then
    _test.timeForComplite :=time
  else
    _test.timeForComplite := TIME_FOR_TEST;
  SetLength(_test.categoris,0);
end;

procedure addCategory(useQuest:integer; markQuest:integer);
var categor:Categoris;
begin
  SetLength(_test.categoris,Length(_test.categoris)+1);
  if useQuest <> -1 then
    categor.useQuestions := useQuest
  else
    categor.useQuestions := USE_QUESTIONS;

  if markQuest <> -1 then
    categor.markQuestion := markQuest
  else
    categor.markQuestion := MARK_QUESTIONS;

  SetLength(categor.Questions,0);
  _test.categoris[Length(_test.categoris)-1] := categor;
end;

procedure createQuestion(idCateg:ineteger; idQuest:Integer; text:string; typeQuestion:Integer; attachment:string);
var
  quest : Question;
begin
  quest.text := text;
  quest.typeQuestion := typeQuestion;
  quest.attachment : =attachment;
  SetLength(quest.variantAnswers,0);
  with _test.categoris[idCateg] do
  begin
    SetLength(Questions,length(Questions)+1);
    Questions[length(Questions)-1] := quest;
  end;
end;

procedure createAnswer(idCateg:ineteger; idQuest:Integer; idAnsw:Integer; isCorrect:Booleanl; text:string; attachment:string);
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
end;
end.
