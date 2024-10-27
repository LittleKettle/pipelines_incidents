program kemvod_db;

uses
  Vcl.Forms,
  kemvod_db_sql in 'kemvod_db_sql.pas' {Form1},
  kemvod_db_dm in 'kemvod_db_dm.pas' {DataModule2: TDataModule},
  IntroForm in 'IntroForm.pas' {Form2},
  TableForm in 'TableForm.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
