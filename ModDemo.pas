//вычисление высокостного года
program Year;
var
  Y: integer;
  Days: integer;
begin
  
  writeln('enter Year');
 readln(Y);
  if (Y mod 4 = 0) and (Y mod 100 > 0) or (Y mod 400 = 0)
    then 
      Days := 366
    else
      Days := 365;
   writeln('Days ',Days);
   readln
end.