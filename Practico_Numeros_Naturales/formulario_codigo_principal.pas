unit Formulario_Codigo_Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,Practico_I;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnCargar: TButton;
    BtnDescargar: TButton;
    BtnLimpiar: TButton;
    BtnSalir: TButton;
    Edit_Valor1: TEdit;
    Edit_Valor2: TEdit;
    Edit_Valor3: TEdit;
    Edit_Valor4: TEdit;
    LbRespuesta: TLabel;
    MainMenuPrincipal: TMainMenu;
    INICIO: TMenuItem;
    LIMPIAR: TMenuItem;
    CARGAR: TMenuItem;
    DESCARGAR: TMenuItem;
    Ejercicio_1: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Ejercico_2: TMenuItem;
    Ejercicio_13: TMenuItem;
    Ejercicio_14: TMenuItem;
    Ejercicio_11: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    Ejercicio_6: TMenuItem;
    Ejercicio_7: TMenuItem;
    Ejercicio_8: TMenuItem;
    Ejercicio_9: TMenuItem;
    Ejercicio_10: TMenuItem;
    MOSTRAR_N_IMPAR: TMenuItem;
    MOSTRAR_N_PAR: TMenuItem;
    PRACTICO_I: TMenuItem;
    SALIR: TMenuItem;
    procedure BtnCargarClick(Sender: TObject);
    procedure BtnDescargarClick(Sender: TObject);
    procedure BtnLimpiarClick(Sender: TObject);
    procedure BtnSalirClick(Sender: TObject);
    procedure Ejercicio_10Click(Sender: TObject);
    procedure Ejercicio_11Click(Sender: TObject);
    procedure Ejercicio_13Click(Sender: TObject);
    procedure Ejercicio_1Click(Sender: TObject);
    procedure Ejercicio_6Click(Sender: TObject);
    procedure Ejercicio_7Click(Sender: TObject);
    procedure Ejercicio_8Click(Sender: TObject);
    procedure Ejercicio_9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);

    procedure Ejercico_2Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MOSTRAR_N_IMPARClick(Sender: TObject);
    procedure MOSTRAR_N_PARClick(Sender: TObject);
  private

    n:natural;  //Llamado a la clase natural de la unidad practico_I
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
//******** BOTONES PRINCIPALES DEL FORMULARIO***
procedure TForm1.FormCreate(Sender: TObject);
begin
  n:=natural.Create();
  ShowMessage('Objeo Creado...');
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
var
  dig:integer;
begin
     dig:=StrToInt(Edit_Valor2.Text);
     n.addDig(dig);
     Edit_Valor4.Text:='';
end;



procedure TForm1.Ejercico_2Click(Sender: TObject);
begin
   Edit_Valor4.Text:=n.Ejercicio2();
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
   Edit_Valor4.Text:=IntToStr(n.Ejercicio3());
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
   Edit_Valor4.Text:=n.Ejercicio4();
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
   ShowMessage(n.Ejercicio5());
end;

procedure TForm1.MOSTRAR_N_IMPARClick(Sender: TObject);
begin
  Edit_Valor4.Text:=n.mostrar_n_dig_impar();
end;

procedure TForm1.MOSTRAR_N_PARClick(Sender: TObject);
begin
  Edit_Valor4.Text:=n.mostrar_n_dig_par();
end;

procedure TForm1.BtnCargarClick(Sender: TObject);
begin
  n.setvalor(StrToInt(Edit_Valor1.Text));
  ShowMessage('Cargando Valor Edit 1');
end;

procedure TForm1.BtnDescargarClick(Sender: TObject);
begin
  ShowMessage('Mostra El Resultado');
  Edit_Valor4.Text:=IntToStr(n.getvalor());
end;

procedure TForm1.BtnLimpiarClick(Sender: TObject);
begin
  Edit_Valor1.Clear;
  Edit_Valor2.Clear;
  Edit_Valor3.Clear;
  Edit_Valor4.Clear;

end;

procedure TForm1.BtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Ejercicio_10Click(Sender: TObject);
begin
  LbRespuesta.Caption:=IntToStr(n.getvalor())+' ^ '+Edit_Valor2.Text+' = '+IntToStr(n.Ejercicio10(StrToInt(Edit_Valor2.Text)));
end;

procedure TForm1.Ejercicio_11Click(Sender: TObject);
begin
     LbRespuesta.Caption:=IntToStr(n.getvalor())+' ^ '+Edit_Valor2.Text+' = '+IntToStr(n.Ejericcio11());
end;

procedure TForm1.Ejercicio_13Click(Sender: TObject);
var
  a,b,c:integer;
begin
       a:=n.getvalor();
       b:= strtoint(Edit_Valor2.Text);
       c:= strtoint(Edit_Valor3.Text);
          if (((a<=9)and (a>=0))and ((b<=9)and (b>=0))and ((c<=9)and (c>=0)))then
           begin
           Edit_Valor4.text:=IntToStr(n.Ejercicio13(strtoint(Edit_Valor2.Text),strtoint(Edit_Valor3.Text)));

           end
          else
          begin
            Edit_Valor4.text:='El valor no cumple la condicion...';
          end;
end;
procedure TForm1.Ejercicio_1Click(Sender: TObject);
begin

  ShowMessage(n.Ejercicio1());
  //Edit_Valor4.Text:=(n.Ejercicio1());


end;

procedure TForm1.Ejercicio_6Click(Sender: TObject);
begin
  Edit_Valor4.Text:=IntToStr(n.Ejercicio6(StrToInt(Edit_Valor2.Text)));
end;

procedure TForm1.Ejercicio_7Click(Sender: TObject);
begin
  Edit_Valor4.Text:=IntToStr(n.Ejercicio7(StrToInt(Edit_Valor2.Text)));
end;

procedure TForm1.Ejercicio_8Click(Sender: TObject);
begin
  ShowMessage(Edit_Valor1.Text+' * '+Edit_Valor2.Text+' = '+IntToStr(n.Ejercicio8(StrToInt(Edit_Valor2.Text))));
end;

procedure TForm1.Ejercicio_9Click(Sender: TObject);
begin
  ShowMessage(Edit_Valor1.Text+' / '+Edit_Valor2.Text+' = '+n.Ejercicio9(StrToInt(Edit_Valor2.Text)));
end;



//***********************************************//

end.

