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
          function Ejercicio5():Integer;
          function Ejercicio6(m:Integer):Integer;
          function Ejercicio7(m: Integer):Integer;
          function Ejercicio8(m: Integer):Integer;
          function Ejercicio9(m: Integer):Integer;
          function Ejercicio10(m: Integer):Integer;
          function Ejercicio11():Integer;
          function Ejercicio12():Integer;
          function Ejercicio13(c2,c3: Integer):Integer;

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
var aux,c,f,p,i,let :Integer;
begin
   aux:=valor;
   c:=1;
   f:=0;
   i:=0;
   p:=0;
   while (c<=aux)do
   begin
       p:=((2*c)-1);
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
//***************************************************************************//
// PRACTICOS NUMEROS NATURALES
//1. Haga un programa que dada una constante natural k, imprima los primeros k naturales.
function natural.Ejercicio1(): Integer;
var aux,c,f :Integer;
begin
  valor:=5;
  aux:=valor;
  c:=1;
  f:=0;
  while (c<=aux)do
  begin
    f:=(f*10)+c;
    c:=c+1;
  end;
  valor:=f;
end;
// 2. Haga un programa que acepte como entrada un número natural ( n ) , e imprima los primeros n naturales.
function natural.Ejercicio2(): Integer;
var aux,c,f:Integer;
begin
   c:=1;
   f:=0;
   aux:=valor;
  while(c<=aux)do
  begin
    f:=(f*10)+c;
    c:=c+1;
  end;
  valor:=f;
end;
// 3. Haga un programa que acepte como entrada un número natural ( n ), y calcule la suma de los primeros n naturales.
function natural.Ejercicio3(): Integer;
var aux,c,f:Integer;
begin
    c:=1;
    f:=0;
    aux:=valor;
    while(c<=aux)do
    begin
      f:=f+c;
     c:=c+1;
    end;
    valor:=f;
end;
//4. Haga un programa que acepte como entrada un número natural ( n ), e imprima las n primeras letras del alfabeto (1 <= n <=  26). Existe en
function natural.Ejercicio4(): Integer;
var aux,c:Integer;
  s,f,let: String;
begin
  aux:=valor;
  c:=1;
  s:='';
  f:='';
  while(c<=aux)do
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
         9:let:='i';
         10:let:='j';
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
       f:=(f+s)+', ';
  end;
  Result:=f;
end;
// 5. Haga un programa que acepte como entrada un número natural ( n ), si n es par imprima los n primeros pares sino los n primeros impares.
function natural.Ejercicio5(): Integer;
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
// 6. Haga un programa que acepte como entrada dos números NATURALES ( n y m ) y devuelva como resultado el producto de n x m, pero simule la operación empleando la suma y no el producto.
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
  valor:=f;
end;
// 7. Haga un programa que acepte como entrada dos números NATURALES ( n y m ) y devuelva como resultado el cociente de n / m, pero simule la operación empleando la resta y no la división.
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
  valor:=c;
end;
// 8. Haga un programa que acepte como entrada dos números ENTEROS ( n y m ) y devuelva como resultado el producto de n x m, pero simule la operación empleando la suma y no el producto. ¡ CON SIGNO !
function natural.Ejercicio8(m: Integer): Integer;
begin

end;
//9. Haga un programa que acepte como entrada dos números ENTEROS ( n y m ) y devuelva como resultado el cociente de n / m, pero simule la operación empleando la resta y no la división. ¡ CON SIGNO !
function natural.Ejercicio9(m: Integer): Integer;
begin

end;
// 10. Haga un programa que acepte como entrada dos números NATURALES ( n y m ) y devuelva como resultado n m empleando la multiplicación.
function natural.Ejercicio10(m: Integer): Integer;
begin

end;
// 11. Haga un programa que acepte como entrada un número natural y devuelva como resultado n m empleando la suma. ¿Puede emplear algo de lo ya hecho?
function natural.Ejercicio11(): Integer;
begin

end;
// 12. Haga un programa que acepte como entrada dos números NATURALES ( n y b, con 2 < b <9 ) y convierta el número n al correspondiente número en base b. Recuerde que un número puede representarse con el siguiente polinomio:

//n

//S di ´ b

//i-1 donde di es el i-ésimo dígito del número y b es la base.

//i =1
function natural.Ejercicio12(): Integer;
begin

end;
//13. Haga un programa que acepte como entrada tres caracteres, que deben ser algunos de los dígitos del cero al nueve, y los convierta en el correspondiente número de tres dígitos y lo imprima. ( Ejemplo: sean los caracteres 3, 7, 5; deben ser convertidos en el número 375 ).
function natural.Ejercicio13(c2, c3: Integer): Integer;
begin

end;


end.

