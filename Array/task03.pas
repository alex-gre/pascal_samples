{ *
* Задание №03.
* Даны натуральные числа n , a1 , … , an. 
* Определите количество членов ак последовательности а1 , … , аn:
* а)являющихся четными числами;
* б)кратных 3 и некратных 5;
* Формирование массива(ввод) в виде процедуры,(вывод) массива в виде 
* другой процедуры. Нахождение количества элементов в виде функции. 
* В каждую подпрограмму передавать исходный массив в качестве параметра.
* }
program task03;
var
	a:array [1..100] of integer;
	i,n,q,r,w,h:integer;
	e:real;
begin
  write ('Vvedite kollichestvo elementov= ');
  readln(n);
{-------------------------INPUT Element n------------------------------}
  for i:=1 to n do
	  begin
		write ('a[',i,']=');
		read (a[i]);
		readln;
		if odd (a[i]) then q:=q+1;
		if (a[i] mod 3 = 0) and (a[i] mod 5 <> 0) then w:=w+1;
		if (a[i] mod 4 = 0) then r:=r+1;
		if a[i]<(a[i]+a[i]+1)/2 then h:=h+1;
         end;
{----------------------------OUTPUT Result-----------------------------------------}
	Writeln('Nechetnyh chisel= ',q);
	Writeln('Kratnyh 3 i ne kratnyh 5= ',w);
	Writeln('Yavlyauwihsya kvadratami chetnyh chise;= ',r);
	Writeln('Ydovletvoryauwih uslovie a[i] < (a[i]+a[i]+1)/2  = ',h);

readln;
end.
