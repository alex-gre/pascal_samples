Uses Objects;
var 
  s: TBufStream;                        {экземпляр потока}
  k,j: Integer;
begin
  writeln('Запись  в поток: ');
  s.init('test.dat', stCreate, 512);    {создаем поток}
  for k:= 1 to 10 do 
   begin
     j := random(100);                  {получаем случайное целое}
     write(j:8);                        {выводим на экран}
     s.write(j,2)                       {помещаем в поток}
   end;
  s.done;                               {удаляем поток}
  s.init('Test.dat', stOPenRead, 512);  
  writeln;
  writeln('Чтение из потока:');
  for k:= 1 to 10 do
    begin
       s.read(j,2);                     {Получаем целое из потока}
       write(j:8);  
    end; 
  s.done;
  writeln;
  readln;
end.