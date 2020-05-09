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
          function contar_digitos(aux:Integer):Integer;

          //***************************//
          // PRACTICOS NUMEROS NATURALES
          function Ejercicio1():Integer;
          function Ejercicio2():Integer;
          function Ejercicio3():Integer;
          function Ejercicio4():Integer;
end;

implementation

{ natural }
//==============================================================================
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
//==============================================================================
//***************************//
          // HERRAMIENTAS
function natural.contar_digitos(aux:Integer): Integer;
var c:Integer;
begin
  c:=0;
  while (aux<>0) do
    begin
      aux:=aux div 10;
      c:=c+1;
    end;
    Result :=c;
end;
function natural.mostrar_n_dig_par(): Integer;
var aux,c,f,p,i,let :Integer;
    //let: String;
begin
   aux:=valor;
   c:=1;
   f:=0;
   i:=0;
   p:=0;
   while (c<=aux)do
   begin
       p:=2*c;
       i:=contar_digitos(p);
       Case(i)of
         1:let:= (f*10)+p;
         2:let:= (f*100)+p;
         3:let:= (f*1000)+p;
         4:let:= (f*10000)+p;
       end;
     f:=let;
     c:=c+1;
     end;
   valor:=f;
end;

function natural.mostrar_n_dig_impar():Integer;
var aux,c,f,p :Integer;
begin
   aux:=valor;
   c:=1;
   f:=0;
   while (c<=aux)do
   begin
     p:=2*c;
     f:=(f*10)+p;
     c:=c+1;
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
function natural.Ejercicio4(): Integer;
var aux:Integer;
begin
  aux:=valor;
  if (aux mod 2=0)then
  begin
    mostrar_n_dig_par();
  end
  else
  begin
    mostrar_n_dig_impar();
  end;
end;

end.

