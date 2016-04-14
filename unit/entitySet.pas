unit entitySet;

interface
type
  Answer = record
    isCorrect : Boolean;
    text : string;
    attachments : string;
  end;

  Question = record
    text : string;
    typeQuestion : integer;
    attachments : string;
    variantAnswers : array of Answer;
  end;

  Categoris = record
    useQuestions : Integer;
    markQuestion : Real;
    Questions : array of Question;
  end;

  Test = record
     timeForComplite : Integer;
     categoris : array of Categoris;
  end;
implementation


end.
