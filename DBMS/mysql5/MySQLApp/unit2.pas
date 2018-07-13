unit Unit2; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form2: TForm2; 

implementation
 uses unit1;


{ TForm2 }

procedure TForm2.FormHide(Sender: TObject);
begin
    form2.hide;
  form1.enabled:=true;
  form1.SetFocus;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin

end;

initialization
  {$I unit2.lrs}

end.

