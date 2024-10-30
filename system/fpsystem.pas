uses
  SysUtils;
(*
begin
  // Вызов команды cmd
  // Например, команда dir для отображения списка файлов
  if fpSystem('cmd /c dir') = 0 then
    WriteLn('Команда выполнена успешно.')
  else
    WriteLn('Ошибка при выполнении команды.');
end.
*)


Var S : Longint;

begin
  Writeln ('Output of ls -l *.pp');
  S:=fpSystem('ls -l *.pp');
  Writeln ('Command exited with status : ',S);
end.
