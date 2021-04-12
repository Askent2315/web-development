PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  GPC;

FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Query, Str: STRING;
  I: INTEGER;
BEGIN
  Query := GetEnv('QUERY_STRING');
  Str := '';
  I := POS(Key, Query); {Ищем ключ} 
  IF I > 0
  THEN
    BEGIN 
      {Перемещаем курсор после <ключ>}                                      
      I := POS(Key, Query) + Length(Key);
      WHILE (I <= Length(Query)) AND (Query[I] <> '&')
      DO
        BEGIN
          Str := Str + Query[I];
          I := I + 1
        END
    END;
  GetQueryStringParameter := Str;
END;
  
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}
