
program test_monstr;
uses Graph, crt, monsters;

var
  {��������� Vasia � ��६���� ���. ��쥪� monstr}
  Vasia  :monstr;
  x,y    :word;
  gd, gm :integer;

begin
  gd := detect;
  initgraph(gd,gm,'');
  if graphresult <> grOk then begin
      writeln('�訡�� ����. ��䨪�'); exit end;
  
  Vasia.init(100,100,10,10);
  Vasia.draw;
  Vasia.attack;
  readln;
  x:= 110;
  while x < 200 do begin
     Vasia.move(x,x); inc(x,7);
     Vasia.hit;
     delay(20);
  end;
  readln;
end.
