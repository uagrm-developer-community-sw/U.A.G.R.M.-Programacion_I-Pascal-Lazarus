unit unitClaseNNatural;

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
          // HERRAMIENTAS
          function mostrar_n_dig_par():Integer;
          function mostrar_n_dig_impar():Integer;

          //***************************//
          // PRACTICOS NUMEROS NATURALES
          function Ejercicio1():Integer;
          function Ejercicio2():Integer;
          function Ejercicio3():Integer;
          function Ejercicio4():String;
end;

implementation

{ natural }

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
//***************************//
          // HERRAMIENTAS
function natural.mostrar_n_dig_par(): Integer;
var aux,c,f :Integer;
begin
   aux:=valor;
   c:=2;
   f:=0;
   while (c<=aux)do
   begin
     f:=(f+c);
     c:=c+2;
   end;
   valor:=f;
end;

function natural.mostrar_n_dig_impar(): Integer;
var aux,c,f :Integer;
begin
   aux:=valor;
   c:=1;
   f:=0;
   while (c<=aux)do
   begin
     f:=f+c;
     c:=c+2;
   end;
   valor:=f;
end;
//***************************//
// PRACTICOS NUMEROS NATURALES
function natural.Ejercicio1(): Integer;
begin

end;

function natural.Ejercicio2(): Integer;
begin

end;

function natural.Ejercicio3(): Integer;
begin

end;
//4. Haga un programa que acepte como entrada un número natural ( n ), e imprima las n primeras letras del alfabeto (1 <= n <=  26). Existe en
function natural.Ejercicio4(): String;
var aux:Integer;
begin
  aux:=valor;
  if (aux mod 2=0)then
  begin
    mostrar_n_dig_par();
  end;
  else
  begin
    mostrar_n_dig_impar();
  end;
end;

end.

