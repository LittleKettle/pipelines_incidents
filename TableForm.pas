unit TableForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Clipbrd,
  kemvod_db_dm, Vcl.StdCtrls, Vcl.Menus;

type
  TForm3 = class(TForm)
    StringGrid1: TStringGrid;
    ViewTable: TButton;
    PopMenu_StringGrid: TPopupMenu;
    Copy1: TMenuItem;

    procedure ViewTableClick(Sender: TObject);
    procedure Copy1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Copy1Click(Sender: TObject);
var
  S: string;
  X, Y: Integer;
begin
  S := '';
  for Y := StringGrid1.Selection.Top to StringGrid1.Selection.Bottom do
    begin
      for X := StringGrid1.Selection.Left to StringGrid1.Selection.Right - 1 do
        S := S + StringGrid1.Cells[X, Y] + #9;
      S := S + StringGrid1.Cells[StringGrid1.Selection.Right, Y] + sLineBreak;
    end;
  Delete(S, Length(S) - Length(sLineBreak) + 1, Length(sLineBreak));
  Clipboard.AsText := S;

end;

procedure TForm3.ViewTableClick(Sender: TObject);
 var i, j: integer;
begin
  StringGrid1.FixedCols:=0;
  StringGrid1.FixedRows:=1;
  StringGrid1.ColCount:= DataModule2.ADODataSet1.fieldcount;
  StringGrid1.RowCount:= DataModule2.ADODataSet1.RecordCount+1;
  for i:=0  to StringGrid1.ColCount-1 do
    begin
      StringGrid1.Cells[i,0]:= DataModule2.ADODataSet1.FieldList[i].DisplayName;
    end;
  for j:=1  to DataModule2.ADODataSet1.RecordCount do
    begin
      for i:=0  to StringGrid1.ColCount-1 do
        begin
          StringGrid1.Cells[i,j]:= DataModule2.ADODataSet1.Fields.Fields[i].AsString;
        end;
      DataModule2.ADODataSet1.Next;
    end;
end;

end.
