unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;


implementation
uses Unit2,unit3,unit4;

{$R *.lfm}

{ TForm1 }

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0
     then
     begin
             Form1.Hide ;
     Unit2.Form2.Show;
     end;

  if RadioGroup1.ItemIndex=1
     then
     begin
     Form1.Hide ;
     unit3.Form3.Show;

     end;
  if RadioGroup1.ItemIndex=2
     then
     begin Form1.Hide;
     unit4.Form4.Show;

     end;



end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Hide;
  Halt;
end;

end.

