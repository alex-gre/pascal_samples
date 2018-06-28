program dinner;
uses graph, crt, monsters;
const n = 30;
var
	stado :array[1..n] of monstr;
	x,y   :array[1..n] of integer;
	gd,gm :integer;
	i,j   :word;
begin
	gd:=detect;
	initgraph(gd,gm,'');
        if graphresult <> grOk then begin
	   writeln('Ошибка инициализации графики'); exit end;
        randomize;

	for i:= 1 to n do begin
	   stado[i].init(random(600),random(440),random(10),random(8));
           stado[i].draw;
	end;

	repeat
          for i:= 1 to n do begin
		x[i] := random(600); y[i] := random(400);
		stado[i].move(x[i],y[i]);
	  end;
	  for i:= 1 to n - 1 do
	    for j := i+1 to n do
		if(abs(x[i] - x[j]) < 15) and (abs(y[i] - y[j]) < 15)
 		then begin
		  stado[i].hit; stado[j].hit;
		end;
	  delay(200); 
        until keypressed;
end.
