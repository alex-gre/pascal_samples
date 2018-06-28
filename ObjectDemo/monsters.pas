{модуль по имени monsters}
unit monsters;
{интерфейсная часть}
interface
uses Graph;

type monstr = object
   {описания методов обьекта monstr}
	procedure init(x_,y_,health_,ammo_: word);
	procedure attack;
	procedure draw;
	procedure erase;
	procedure hit;
	procedure move(x_,y_:word);
   {инкапсуляция полей private,в методах переменные без var}
   private
	x,y	:word;
	health	:word;
	ammo	:word;
	color	:word;
end;
{реализация}
implementation

{-------------Реализация методов обьекта monstr-----------------}
procedure monstr.init(x_,y_,health_,ammo_: word);
begin
   x		:=x_;
   y		:=y_;
   health	:=health_;
   ammo		:=yellow;
end;
{---------------------monstr.attack-----------------------------}
procedure monstr.attack;
begin
   if ammo = 0 then exit;
   dec(ammo); setcolor(color); outtextXY(x+15,y,'ба - бах!');
end;
{---------------------monstr.draw-------------------------------}
procedure monstr.draw;
begin
   setcolor(color); outtextXY(x,y,'@');
end;
{---------------------monstr.erase------------------------------}
procedure monstr.erase;
begin
   setcolor(black); outtextXY(x,y,'@');
end;
{---------------------monstr.hit--------------------------------}
procedure monstr.hit;
begin
   if health = 0 then exit;
   dec(health);
   if health = 0 then begin color := red; draw; exit; end;
   attack;
end;
{---------------------monstr.move-------------------------------}
procedure monstr.move;
begin
   if health = 0 then exit;
   erase; x:=x_; y:=y_; draw;
end;
end.
