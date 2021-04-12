PROGRAM Response(INPUT, OUTPUT);
USES
  GPC;
VAR
  Name, Temp: STRING; 
  I: INTEGER; 
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Name := GetEnv('QUERY_STRING');
  I := POS('name=', Name);
  Temp := 'Anonimous';
  IF (I = 1) AND (Name <> 'name=')
  THEN
    BEGIN
      I := I + 5;
      Temp := Copy(Name, I, Length(Name)) 
    END;  
  Name := Temp;                                            
  WRITELN('Hello ', Name, '!')
END.
