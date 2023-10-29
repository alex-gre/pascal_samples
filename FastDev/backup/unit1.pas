unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SynHighlighterPHP, SynEdit, SynHighlighterJava,
  SynHighlighterCpp, SynHighlighterPas, SynHighlighterSQL, SynGutterBase,
  SynGutterMarks, SynGutterLineNumber, SynGutterChanges, SynGutter,
  SynGutterCodeFolding, Forms, Controls, Graphics, Dialogs, Menus, Windows;

type

  { TForm1 }

  TForm1 = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    cmd: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    SynCppSyn1: TSynCppSyn;
    SynEdit1: TSynEdit;
    SynJavaSyn1: TSynJavaSyn;
    SynPasSyn1: TSynPasSyn;
    SynSQLSyn1: TSynSQLSyn;
    utils: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    OpenDialog1: TOpenDialog;
    PopupMenu1: TPopupMenu;
    SaveDialog1: TSaveDialog;

    procedure FontDialog1ApplyClicked(Sender: TObject);

    procedure cmdClick(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);

    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure MenuItem30Click(Sender: TObject);
    procedure MenuItem31Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);

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

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  OpenDialog1.Execute;
  with OpenDialog1 do
  if Execute then
  begin
    SynEdit1.Lines.LoadFromFile(Filename);
    HistoryList.Add(Filename);
    Caption:= 'открыт файл - '+ ExtractFilename(Filename);
    SaveDialog1.FileName:=Filename;
    Filename:=' ';
    Form1.SynEdit1.Gutter.Visible:=False;
  end;
end;



procedure TForm1.cmdClick(Sender: TObject);
begin
          WinExec('cmd.exe',SW_SHOW);
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
   WinExec('hh.exe help_c.chm',SW_SHOW);
end;



procedure TForm1.MenuItem11Click(Sender: TObject);
begin
    Form1.Synedit1.Highlighter:=Form1.SyncppSyn1;
    Form1.SynEdit1.Gutter.Visible:=true;

end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
   Form1.Synedit1.Highlighter:=Form1.SynJavaSyn1;
   Form1.SynEdit1.Gutter.Visible:=true;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
   Form1.Synedit1.Highlighter:=Form1.SynPasSyn1;
   Form1.SynEdit1.Gutter.Visible:=true;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
   WinExec('hh.exe help_cpp.chm',SW_SHOW);
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
   WinExec('hh.exe help_sqlite.chm',SW_SHOW);
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
         WinExec('hh.exe help_services.chm',SW_SHOW);
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
   WinExec('hh.exe help_bios.chm',SW_SHOW);
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
    Form1.Synedit1.Highlighter:=Form1.SynSqlSyn1;
    Form1.SynEdit1.Gutter.Visible:=true;
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
    WinExec('sqlite3.exe',SW_SHOW);
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
   WinExec('hh.exe help_bsod.chm',SW_SHOW);
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
   WinExec('hh.exe help_hardware.chm',SW_SHOW);
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
   WinExec('hh.exe help_LAN.chm',SW_SHOW);
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
   WinExec('hh.exe help_win7.chm',SW_SHOW);
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
  WinExec('hh.exe cpp.chm',SW_SHOW);
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
    WinExec('hh.exe help_sysprog.chm',SW_SHOW);
end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
     WinExec('hh.exe help_sysprog_win32.chm',SW_SHOW);
end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin
      WinExec('hh.exe help_java.chm',SW_SHOW);
end;

procedure TForm1.MenuItem28Click(Sender: TObject);
begin
   WinExec('hh.exe c_for_beginers.chm',SW_SHOW);
end;

procedure TForm1.MenuItem29Click(Sender: TObject);
begin
            WinExec('hh.exe help_winAPI.chm',SW_SHOW);
end;

procedure TForm1.MenuItem30Click(Sender: TObject);
begin
         WinExec('hh.exe python381.chm',SW_SHOW);
end;

procedure TForm1.MenuItem31Click(Sender: TObject);
begin
   WinExec('hh.exe PostgresProRU.chm',SW_SHOW);

end;

procedure TForm1.FontDialog1ApplyClicked(Sender: TObject);
begin
   SynEdit1.Font:=FontDialog1.Font;
end;



procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  SynEdit1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  with SaveDialog1 do
    if Execute then
    begin
     SynEdit1.Lines.SaveToFile(Filename);
      Caption:='сохранен в - '+ ExtractFilename(Filename);
    end;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  with FontDialog1 do
    if Execute then
    SynEdit1.Font:=Font;

end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
   WinExec('hh.exe help_cmd.chm',SW_SHOW);
end;



end.

