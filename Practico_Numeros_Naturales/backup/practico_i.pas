unit Practico_I;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { natural }

  natural=class     //natural es el nombre de la clase
    private
           valor:integer;  //definis la variable "valor" de tipo entero
    public
          constructor natural();
          procedure setvalor(val:integer);  //carga un valor en la variable "val" de tipo entero
          function getvalor ():integer;     //descargar el resultado donde la salida es de tipo entero
          //***************************//
          function cantdig():integer;
          procedure addDig(dig:integer);

          procedure addDig2(dig:Integer);
          function verificar_par_o_impar():Boolean;
          function mostrar_n_dig():Integer;
          function mostrar_n_dig_par():String;
          function mostrar_n_dig_impar():String;
          //***************************//
          function Ejercicio1():String;
          function Ejercicio2():String;
          function Ejercicio3():Integer;
          function Ejercicio4():String;
          function Ejercicio5():String;
          function Ejercicio6(m:Integer):Integer;
          function Ejercicio7(m:Integer):Integer;
          function Ejercicio8(m:Integer):Integer;
          function Ejercicio9(m:Integer): String;
          function Ejercicio10(m:Integer):Integer;
          function Ejericcio11():Integer;
          function Ejercicio13(c2,c3:integer):integer;
          function Ejercicio14(c2,c3:string):string;


  end;

implementation

{ natural }
//***************************************************************//
constructor natural.natural();
begin
  valor:=0; //asignando el valor por defecto a la variable "valor=0"
end;

procedure natural.setvalor(val: integer);
begin
  valor:=val; //asignando el valor ingrasado por teclado a la variable "valor"
end;

function natural.getvalor(): integer;
begin
  result:=valor;
end;
//***************************************************************//
function natural.cantdig(): integer;
var c,aux,dig:integer;
begin
  aux:=valor;
     c:=0;
     dig:=0;
     while (aux<>0) do
     begin
       dig:=aux mod 10;
       aux:=aux div 10;
       c:=c+1;
     end;
     result :=c;
end;

procedure natural.addDig(dig: integer);
begin
   valor:=(valor*10)+dig;
End;



procedure natural.addDig2(dig: Integer);
var c:Integer;
begin
   c:=0;
   c:=(c*10)+dig;
end;

function natural.verificar_par_o_impar():Boolean;
var aux:Integer;
    t:Boolean;
begin
   aux:=valor;
  if (aux mod 2=0)then
  begin
     t:=True;
  end
  else
  begin
    t:= False;
  end;
  Result:=t;
end;

function natural.mostrar_n_dig(): Integer;
var aux,c:Integer;
begin
     c:=1;
     aux:=valor;
     while (c<=aux)do
     begin
       //ShowMessage(AnsiString("Found ") + asFileName + ".");
       c:=c+1;
     end;

     result:=c;
end;

function natural.mostrar_n_dig_par(): String;
var aux,c :Integer;
    f:String;
begin
   aux:=valor;
   c:=2;
   f:='';
   while (c<=aux)do
   begin
     f:=(f+IntToStr(c))+',';
     c:=c+2;
   end;
   Result:=f;
end;

function natural.mostrar_n_dig_impar(): String;
var aux,c :Integer;
    f:String;
begin
   aux:=valor;
   c:=1;
   f:='';
   while (c<=aux)do
   begin
     f:=(f+IntToStr(c))+',';
     c:=c+2;
   end;
   Result:=f;
end;

function natural.Ejercicio1():String;
var c,aux :Integer;
    f:String;
begin
     valor:=10;
     aux:=valor;
     f:='';
     c:=1;
     while(c<aux)do
     begin
       f:=(f+IntToStr(c))+',';
       c:=c+1;
     end;
     f:=(f+IntToStr(c));
     result:=f;
end;

function natural.Ejercicio2(): String;
var aux,c:Integer;
    f:String;
begin
     c:=1;
     f:='';
     aux:=valor;
     while (c<aux)do
     begin
       f:=(f+IntToStr(c))+',';
       c:=c+1;
     end;
     f:=(f+IntToStr(c));
     result:=f;
end;

function natural.Ejercicio3(): Integer;
var aux,c,s:Integer;
begin
     aux:=valor;
     c:=1;
     s:=0;
  while (c<=aux)do
  begin
    s:=s+c;
    c:=c+1;
  end;
  Result:=s;
end;

function natural.Ejercicio4(): String;
var aux,c :Integer;
    let,s,f: String;
begin
  aux:=valor;
  c:=1;
  f:='';
  while (c<=aux) do
  begin
       Case(c)of
         1:let:='a';
         2:let:='b';
         3:let:='c';
         4:let:='d';
         5:let:='e';
         6:let:='f';
         7:let:='g';
         8:let:='h';
         9:let:='h';
         10:let:='i';
         11:let:='k';
         12:let:='l';
         13:let:='m';
         14:let:='n';
         15:let:='ñ';
         16:let:='o';
         17:let:='p';
         18:let:='q';
         19:let:='r';
         20:let:='s';
         21:let:='t';
         22:let:='u';
         23:let:='v';
         24:let:='w';
         25:let:='x';
         26:let:='y';
         27:let:='z';
       end;
    s:=let;

    c:=c+1;
    f:=(f+s)+',';
  end;
  Result:=f;
end;

function natural.Ejercicio5(): String;
var aux:Integer;
    f:String;
    p:Boolean;
begin
  aux:=valor;
  f:='';
  p:=verificar_par_o_impar();
  if (p=True)then
    f:=mostrar_n_dig_par()
    else
      f:=mostrar_n_dig_impar();
    Result:=f;
end;

function natural.Ejercicio6(m:Integer): Integer;
var n,f,c:Integer;
begin
  n:=valor;
  f:=0;
  c:=0;
  while(c<m)do
  begin
    f:=f+n;
    c:=c+1;
  end;
  Result:=f;
end;

function natural.Ejercicio7(m: Integer): Integer;
var n,c:Integer;
begin
  n:=valor;
  c:=0;
  while (n>=m)do
  begin
    n:=n-m;
    c:=c+1;
  end;
  Result:=c;
end;

function natural.Ejercicio8(m: Integer): Integer;
var n:Integer;
begin
  n:=valor;
  Result:=Ejercicio6(n);
end;

function natural.Ejercicio9(m: Integer): String;
var n,c,x,z,i,d: Integer;
    r:String;
begin
  n:=valor;
  c:=0;
  x:=n;
  z:=m;
  i:=1;
  d:=0;
  r:='';
  while (n>=m)do
  begin
    n:=n-m;
    c:=c+1;
  end;
  if (n>0)then
  begin
    n:=n*10;
    while (n>0)do
    begin
      n:=n-m;
      d:=d+1;
    end;
    r:= (IntToStr(d)+','+IntToStr(c));
      Result:=r;
  end
  else
  begin
    r:=IntToStr(c);
    Result:=r;
  end;
end;

function natural.Ejercicio10(m: Integer): Integer;
var n,c,f:Integer;
begin
  c:=1;
  f:=1;
  n:=valor;
  while (c<=m)do
  begin
    f:=(f*n);
    c:=c+1;
  end;
  Result:=f;
end;

function natural.Ejericcio11(): Integer;
var aux,f:Integer;
begin
  aux:=valor;
  f:=Ejercicio6(aux);
  f:=(f*aux);
  Result:=f;
end;

function natural.Ejercicio13( c2, c3: integer): integer;
var
   c1, f:integer;
begin
  c1:=valor;  f:=1;
            f:=c1;
            f:=(f *10)+c2;
            f:=(f *10)+c3;
            result:=f;
end;

function natural.Ejercicio14(c2, c3: string): string;
begin

end;

end.

