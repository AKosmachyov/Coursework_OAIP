unit entitySet;

interface
type
  Answer = record
    isCorrect : Boolean;
    text : string;
    attachment : string;
    recType:string;
  end;

  Question = record
    text : string;
    typeQuestion : integer;
    attachment : string;
    variantAnswers : array of Answer;
    recType:string;
  end;

  Categoris = record
    name:string;
    useQuestions : Integer;
    markQuestion : Real;
    Questions : array of Question;
    recType:integer;
  end;

  Test = record
     timeForComplite : Integer;
     categoris : array of Pointer;
  end;
  const
    TIME_FOR_TEST = 5;
    USE_QUESTIONS = 0;
    MARK_QUESTIONS = 0;

implementation


end.
