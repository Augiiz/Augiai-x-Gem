#include <iostream>
#include <iomanip>
#include <cmath>
#include <fstream>
using namespace std;

int main ()
{
int a, b, c;
    cout<< "1 skaicius:"; cin >> a; //praso ivesti skaixius
    cout<< "2 skaicius:"; cin >> b;
    cout<< "3 skaicius:"; cin >> c; 

    if (a > b)
    {
          if (a > c)
          cout<<"didziausias skaicius yra a: "<< a << endl; //isveda didziausia
          }
    if (b > a)
    {
          if (b > c)
          cout<<"didziausias skaicius yra b: "<< b << endl;
          }
    if (c > a)
    {
          if (c > b)
          cout<<"didziausias skaicius yra c: "<< c << endl;
          }

return 0;
}
