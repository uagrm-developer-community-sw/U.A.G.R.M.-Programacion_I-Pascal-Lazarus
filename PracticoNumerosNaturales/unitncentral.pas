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
    LabelNN: TLabel;
    MainMNN: TMainMenu;
    MenuIncio: TMenuItem;
    MenuCargar: TMenuItem;
    MenuDescargar: TMenuItem;
    MenuHerramientas: TMenuItem;
    MenuEjercicio1: TMenuItem;
    MenuEjercicio2: TMenuItem;
    MenuEjercicio3: TMenuItem;
    MenuEjercicio4: TMenuItem;
    MenuEjercicio5: TMenuItem;
    MenuEjercicio6: TMenuItem;
    MenuEjercicio7: TMenuItem;
    MenuEjercicio8: TMenuItem;
    MenuEjercicio9: TMenuItem;
    MenuEjercicio10: TMenuItem;
    MenuEjercicio11: TMenuItem;
    MenuEjercicio12: TMenuItem;
    MenuEjercicio13: TMenuItem;
    MenuPractico: TMenuItem;
    MenuMNIimpares: TMenuItem;
    MenuMNPares: TMenuItem;
    MenuLimpiar: TMenuItem;
    MenuSalir: TMenuItem;
    PanelNN: TPanel;
    procedure BtnCargarClick(Sender: TObject);
    procedure BtnDescargarClick(Sender: TObject);
    procedure BtnLimpiarClick(Sender: TObject);
    procedure BtnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuCargarClick(Sender: TObject);
    procedure MenuDescargarClick(Sender: TObject);
    procedure MenuEjercicio4Click(Sender: TObject);
    procedure MenuLimpiarClick(Sender: TObject);
    procedure MenuSalirClick(Sender: TObject);
  private
    n:natural;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
//==============================================================================
procedure TForm1.FormCreate(Sender: TObject);
begin
  n:=natural.Create();
  ShowMessage('Objeo Creado...');
end;


procedure TForm1.BtnCargarClick(Sender: TObject);
begin
  n.setvalor(StrToInt(Edit1NN.Text));
  ShowMessage('Cargando Valor Edit 1');
end;

procedure TForm1.BtnDescargarClick(Sender: TObject);
begin
  ShowMessage('Mostra El Resultado');
  Edit4NN.Text:=IntToStr(n.getvalor());
end;

procedure TForm1.BtnLimpiarClick(Sender: TObject);
begin
  Edit1NN.Clear;
  Edit2NN.Clear;
  Edit3NN.Clear;
  Edit4NN.Clear;
end;

procedure TForm1.BtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MenuCargarClick(Sender: TObject);
begin
  n.setvalor(StrToInt(Edit1NN.Text));
  ShowMessage('Cargando Valor Edit 1');
end;

procedure TForm1.MenuDescargarClick(Sender: TObject);
begin
  ShowMessage('Mostra El Resultado');
  Edit4NN.Text:=IntToStr(n.getvalor());
end;

procedure TForm1.MenuLimpiarClick(Sender: TObject);
begin
  Edit1NN.Clear;
  Edit2NN.Clear;
  Edit3NN.Clear;
  Edit4NN.Clear;
end;

procedure TForm1.MenuSalirClick(Sender: TObject);
begin
  Close;
end;
//==============================================================================
// PRACTICO NUMEROS NATURALES
//4. Haga un programa que acepte como entrada un número natural ( n ), e imprima las n primeras letras del alfabeto (1 <= n <=  26). Existe en
procedure TForm1.MenuEjercicio4Click(Sender: TObject);
begin
  n.Ejercicio4();
end;
end.

