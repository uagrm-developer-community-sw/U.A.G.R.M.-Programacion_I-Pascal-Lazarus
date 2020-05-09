unit unitNCentral;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, unitClaseNNatural;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnCargar: TButton;
    BtnDescargar: TButton;
    BtnLimpiar: TButton;
    BtnSalir: TButton;
    Edit1NN: TEdit;
    Edit2NN: TEdit;
    Edit3NN: TEdit;
    Edit4NN: TEdit;
    ImageNN: TImage;
    Label1: TLabel;
    MainMNN: TMainMenu;
    MenuIncio: TMenuItem;
    MenuCargar: TMenuItem;
    MenuDescargar: TMenuItem;
    MenuLimpiar: TMenuItem;
    MenuItem2: TMenuItem;
    PanelNN: TPanel;
  private
    n:natural;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

