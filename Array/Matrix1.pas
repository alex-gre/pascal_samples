
const row=3; col=row; 
var a: array[1..row,1..col] of integer;
    i,j,buf: integer;
    
{---------Формирование матрицы--------}
procedure getmatrix;
begin

 for i:= 1 to row do
	for j:= 1 to col do
	  a[i,j] := random(100);

end; 
{-------Транспорирование матрицы------}

procedure tmatrix;
begin
  for i:=1 to row do (*просмотр всех строк матрицы*)
  (*просмотр элементов в строке, расположенных выше диагонали*)
     for j:= 1+1 to col do
       begin
  (*обмен элементов, симметричных относительно главной диагонали*)
       buf:=a[i,j];
       a[i,j]:=a[j,i];
       a[j,i]:=buf;         
       end;   
end;

{---------Вывод на экран--------------}
procedure print;
begin
  for i:= 1 to row do
    begin
      for j:= 1 to col do
        write(a[i,j]:4);
        writeln;
    end;
end; 

{--------------main proc---------------}

begin
  randomize;
  getmatrix;
  writeln('Original matrix random digits:');
  print;
  tmatrix;
  writeln('Result transporation matrix:');
  print;
  readln
end.