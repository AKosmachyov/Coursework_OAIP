unit entitySet;

interface
type
  Answer = record
    isCorrect : Boolean;
    text : string;
    attachment : string;
  end;

  Question = record
    recType:Integer;
    text : string;
    typeQuestion : integer;
    attachment : string;
    variantAnswers : array of Pointer;
  end;

  Categoris = record
    recType:integer;
    name:string;
    useQuestions : Integer;
    markQuestion : Real;
    Questions : array of Pointer;
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
