program SearchText;


var 
    sum             : word = 0; {���稪: ᪮��� ࠧ ��諨 ��⠭���� �� 0}          
    f1,f2           : text; 
    name,str,search : string[80];

begin
  writeln('������ ��� 䠩��: '); 
  readln(name);
  writeln('����� ��ப� ��� ���᪠: '); 
  readln(str);
  assign(f1,name); 
  assign(f2,'analisis.txt');

  {-----���뢠�� f1 ��� �⥭�� � f2 ��� �����-----}

  reset(f1); 
  rewrite(f2);
 
  writeln('��⮪�� ���᪠: ');
  writeln(f2);

  {------���� �� ����� f1, �믮��塞 横�--------} 
 
  while not eof(f1) do 

    begin

      readln(f1,str); {������ ��ப� str �� f1}
      if pos(search,str) > 0 then
         begin
            inc(sum); writeln('������� (ࠧ): ',sum);
            writeln(str);       {�뢮� �� �࠭}
            writeln(f2,str);    {�뢮� � 䠩�}
         end;
    end;
   close(f1); 
   close(f2);{����뢠�� 䠩��}
   readln;   
end.