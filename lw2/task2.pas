PROGRAM Response(INPUT, OUTPUT);
USES
  GPC;
VAR
  Lanterns: STRING; 
  Ch: CHAR; 
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('REQUEST_METHOD');
  WRITELN;
  Lanterns := GetEnv('QUERY_STRING');
  WRITELN(Lanterns);
  WRITELN;
  WRITELN('CONTENT_LENGTH');
  WRITELN; 
  WRITELN('HTTP_USER_AGENT');
  WRITELN;
  WRITELN('HTTP_HOST');
  WRITELN;
END.