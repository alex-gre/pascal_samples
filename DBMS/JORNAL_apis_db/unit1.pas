unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls, DBGrids, DbCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
    SQLite3Connection1.DatabaseName := 'apis.db'; // указывает путь к базе
  SQLite3Connection1.CharSet := 'UTF8'; // указываем рабочую кодировку
  SQLite3Connection1.Transaction := SQLTransaction1; // указываем менеджер транзакций
  try  // пробуем подключится к базе
    SQLite3Connection1.Open;
    SQLTransaction1.Active := True;
  except   // если не удалось то выводим сообщение о ошибке
    ShowMessage('Ошибка подключения к базе!');
    END;

end;

procedure TForm1.Button2Click(Sender: TObject);
//var n_fam:string;
begin

    SQLQuery1.Close;// закрываем датасет
    SQLQuery1.SQL.Text := 'select * from jornal where номер_улья = :номер_улья'; // добавляем наш запрос
    SQLQuery1.ParamByName('номер_улья').AsString:=edit1.Text ;// присваиваем требуемый параметр
    SQLQuery1.Open;// открываем запрос
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  SQLQuery1.Close;// закрываем датасет
    SQLQuery1.SQL.Text := 'select * from jornal where дата_осмотра = :дата_осмотра'; // добавляем наш запрос
    SQLQuery1.ParamByName('дата_осмотра').AsString:=edit1.Text ;// присваиваем требуемый параметр
    SQLQuery1.Open;// открываем запрос
end;







procedure TForm1.Button4Click(Sender: TObject);
begin

      SQLQuery1.Close;
      SQLQuery1.SQL.Text:='select * from jornal';
      SQLQuery1.Open;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Image2Click(Sender: TObject);
begin

end;



end.

