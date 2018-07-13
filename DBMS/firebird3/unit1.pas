unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DbCtrls, DBGrids, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    IBConnection1: TIBConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
      try
    IBConnection1.Connected:=true;
  except
    ShowMessage(' Не могу подключиться к базе данных');
  exit;
  end;
  try
    SQLTransaction1.Active:=true;
  except
    ShowMessage(' Не могу создать транзакцию');
  exit;
  end;
  try
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.sql.add('SELECT * from  sales');
    SQLQuery1.Open;
  except
    ShowMessage(' Ошибка при выполнении SQL запроса.');
  exit;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.sql.add('SELECT * from  sales where PO_NUMBER  = '+#39+edit1.text+#39+'');
SQLQuery1.Open;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  SQLQuery1.ApplyUpdates;
  SQLTransaction1.Commit;
  SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.sql.add('SELECT * from  sales');
    SQLQuery1.Open;
end;

procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
   SQLQuery1.ApplyUpdates;
   SQLTransaction1.Commit;

end;



end.

