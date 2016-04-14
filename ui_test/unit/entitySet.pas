unit entitySet;

interface
type
  Answer = record
    isCorrect : Boolean;
    text : string;
    attachment : string;
  end;

  Question = record
    text : string;
    typeQuestion : integer;
    attachment : string;
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
  const
    TIME_FOR_TEST = 5;
    USE_QUESTIONS = 0;
    MARK_QUESTIONS = 0;

implementation


end.
