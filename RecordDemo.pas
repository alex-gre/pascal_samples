program TypeRecord;
type goods = record
	name:    string[45];
	price:   real;
	percent: real;
        vol:     integer;
	date:    string[25];
    end;

var coat: goods;
    f: text;
begin
  writeln('Введите наименование : ');
  readln(coat.name);
  writeln('Введите оптовую цену : ');
  readln(coat.price);
  writeln('Введите наценку: ');
  readln(coat.percent);
  writeln('Введите объем партии штук: ');
  readln(coat.vol);
  writeln('Введите дату поставки: ');
  readln(coat.date);

  assign(f,'my.dat');
  rewrite(f);

   writeln(f,'Прием товара на склад...');
   writeln(f,'Наименование товара ',coat.name);
   writeln(f,'Оптовая цена товара ',coat.price:3:2);
   writeln(f,'Наценка товара ',coat.percent:3:2);
   writeln(f,'Объем партии штук товара ',coat.percent:3:2);
   writeln(f,'Дата поставки товара ',coat.date);

   close(f);
end.