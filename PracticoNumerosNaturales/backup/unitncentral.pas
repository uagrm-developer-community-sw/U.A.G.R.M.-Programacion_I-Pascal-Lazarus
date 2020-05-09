unit unitNCentral;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, unitClaseNNatural;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    MenuIncio: TMenuItem;
    MenuCargar: TMenuItem;
    MenuDescargar: TMenuItem;
    MenuLimpiar: TMenuItem;
    MenuItem2: TMenuItem;
    Panel1: TPanel;
  private
    n:natural;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

