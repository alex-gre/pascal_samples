program ObjectOrClass;

uses crt;
type  father = object  //class for Delphi and Lazarus

     age: integer;

     procedure init;
     procedure talk;
   end;
  son = object(father) //наследование
     gerlfriends: integer;
     procedure init;
     procedure talk;
  end;

var anton: son;     //экземпляры объектов
    sergey: father;
{--------------описание метода init объекта father------------------------}
procedure father.init;
begin
 age:=50;
end;
{--------------описание метода talk объекта father------------------------}
procedure father.talk;
begin
writeln('hello son!');
end;
procedure son.init;
begin
age:=16;
gerlfriends:=4;
end;
procedure son.talk;
begin
writeln('hello father!');
end;
{----------------------------------main prog-----------------------}
BEGIN
 clrscr;
 textcolor(10);
 sergey.init;  //экземпляр объекта father вызовает метод init 
 anton.init;   //экземпляр объекта son вызовает метод init

 sergey.talk;  //экземпляр объекта father вызовает метод talk 
 anton.talk;   //экземпляр объекта son вызовает метод talk
 readln;
END.

