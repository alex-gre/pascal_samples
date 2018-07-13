unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  mysql50conn, StdCtrls, sqldb, DBGrids, db, DbCtrls, unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    MySQL50Connection1:TMySQL50Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

    procedure FormDestroy(Sender: TObject);
    procedure SQLQuery1BeforeOpen(DataSet: TDataSet);
    procedure WhaitForLoad;
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1; 
  isAllOK:boolean;
implementation

{ TForm1 }
procedure TForm1.WhaitForLoad;
begin
  form2.Show;
  form1.enabled:=false;
  form2.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     isAllOk:=true;
     try
       MySQL50Connection1.Connected:=true;
     except
       ShowMessage(' Не могу подключиться к базе данных');
       isAllOk:=false;
       exit;
     end;

     try
       SQLTransaction1.Active:=true;
     except
       ShowMessage(' Не могу создать транзакцию');
       isAllOk:=false;
       exit;
     end;

     try
        SQLQuery1.Active:=false;
        SQLQuery1.SQL.Clear;
        SQLQuery1.sql.add('SET character_set_client='+#39+'utf8'+#39+', character_set_connection='+#39+'cp1251'+#39+',character_set_results='+#39+'utf8'+#39+';');
        SQLQuery1.ExecSQL;
        SQLQuery1.SQL.Clear;
        SQLQuery1.sql.add('SELECT * from  myArtTable;');
        SQLQuery1.Open;
     except
        ShowMessage(' Ошибка при выполнении SQL запроса.');
        isAllOk:=false;
        exit;
     end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  SQLQuery1.ApplyUpdates;
  SQLTransaction1.Commit;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
SQLQuery1.Last;
SQLQuery1.Prior;
SQLQuery1.Insert;
SQLQuery1.Post;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     SQLQuery1.Active:=false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add('INSERT INTO myArtTable (text, description , keywords) VALUES ('+#39+memo3.text+#39+', '+#39+memo2.text+#39+', '+#39+memo1.text+#39+');');
     SQLQuery1.ExecSQL;
     SQLQuery1.SQL.Text:='SELECT * from  myArtTable;';
     SQLQuery1.Open;

end;


procedure TForm1.FormDestroy(Sender: TObject);
begin
  SQLQuery1.Active:=false;
  SQLTransaction1.Active:=false;
  MySQL50Connection1.Connected:=false;
end;

procedure TForm1.SQLQuery1BeforeOpen(DataSet: TDataSet);
begin

end;

initialization
  {$I unit1.lrs}

end.

