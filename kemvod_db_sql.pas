unit kemvod_db_sql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IntroForm, TableForm,
  kemvod_db_dm, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;


type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form3.Visible:=true;
end;

end.
