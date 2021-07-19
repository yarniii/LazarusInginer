unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation
uses Unit1;

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form3.Hide ;
     Unit1.Form1.Show;
end;

procedure TForm3.Button2Click(Sender: TObject);
var myStringList:TStringList;
begin
     myStringList:=TStringList.Create;
     myStringList.Add(IntToStr(StrToInt(Edit1.Text)*StrToInt(Edit2.Text)));

  Memo1.Lines.Assign(myStringList);

end;

end.

