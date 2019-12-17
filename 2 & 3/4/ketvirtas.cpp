#include <iostream>
#include <cmath>
#include <fstream>
#include <iomanip>
using namespace std;

int main ()
{
long long x = 0;
long long z = 0;
long long y,a,b,j;

 while (z < 300)
 {
     a = x;
     y = 0;
     j = 0;
     while(a > 0)    //apsuka skaiciu
     {

         y = y * 10;
         y = y + a%10;
         a = a/10;
     }
      b = x*x;      //randa skaiciaus kvadrata
      while(b > 0)  //apsuka kvadrata to skaiciaus
      {
          j=j*10;
          j = j + b%10;
          b = b/10;
      }
      if(x == y && j == (x*x)) // jeigu skaicius = apsuktas skaicius ir jeigu apsuktas kvadratas = kvadratas
      {
          z++;
          cout<< x << endl;
      }
      x++;
 }

return 0;
}
