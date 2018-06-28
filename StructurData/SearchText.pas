program SearchText;


var 
    sum             : word = 0; {счетчик: сколко раз нашли установим на 0}          
    f1,f2           : text; 
    name,str,search : string[80];

begin
  writeln('Введите имя файла: '); 
  readln(name);
  writeln('Ведите строку для поиска: '); 
  readln(str);
  assign(f1,name); 
  assign(f2,'analisis.txt');

  {-----открываем f1 для чтения и f2 для записи-----}

  reset(f1); 
  rewrite(f2);
 
  writeln('Протокол поиска: ');
  writeln(f2);

  {------пока не конец f1, выполняем цикл--------} 
 
  while not eof(f1) do 

    begin

      readln(f1,str); {вводим строку str из f1}
      if pos(search,str) > 0 then
         begin
            inc(sum); writeln('Найдено (раз): ',sum);
            writeln(str);       {вывод на экран}
            writeln(f2,str);    {вывод в файл}
         end;
    end;
   close(f1); 
   close(f2);{закрываем файлы}
   readln;   
end.