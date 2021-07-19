unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
uses Unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Hide ;
     Unit1.Form1.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
var myStringList:TStringList;
begin
     myStringList:=TStringList.Create;
     myStringList.Add(StrtoInt(Edit1.Text)*StrToInt(Edit2.Text)*StrToInt(Edit3.Text));

  Memo1.Lines.Assign(myStringList);
end;

end.

