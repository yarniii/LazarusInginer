unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
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
  Form4: TForm4;

implementation
uses Unit1;

{$R *.lfm}

{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form4.Hide ;
     Unit1.Form1.Show;
end;

procedure TForm4.Button2Click(Sender: TObject);
var myStringList:TStringList;
begin
     myStringList:=TStringList.Create;
     myStringList.Add(FloatToStr(StrToInt(Edit1.Text)/StrToInt(Edit2.Text)));

  Memo1.Lines.Assign(myStringList);
end;

end.

