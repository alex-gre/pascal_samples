{
* Задание №02.
* 1. Создайте  на языке Pascal программу подсчета числа элементов, 
* равных максимальному, в числовом массиве из 20 элементов.
* Ввод массива в виде процедуры и вывод массива в виде процедуры. 
* Поиск максимального элемента в виде функции, в каждую подпрограмму 
* передавать исходный массив в виде параметра
}
program task02;
const n=30;
var 
a:array[1..n] of integer; 
i,max,k:integer;
begin
 
     for i:=1 to n do begin
         write('vvedite ',i,' - iy element massiva - ');
         readln(a[i]);
     end;
 
          k := 0;
          max:=a[1];
 
     for i:=1 to n do
     if a[i]>max then max:=a[i];
 
     for i:=1 to n do
     if a[i]=max then k := k + 1;
 
        write('maximalniy element - ',max);
        writeln;
        write('a ikh kol-vo  -  ',k);
end.
