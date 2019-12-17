#include <iostream>
#include <cmath>
using namespace std;

int main ()
{
double a, b, c, p, e, f;
    cout<< "a krastine:"; cin >> a;
    cout<< "b krastine:"; cin >> b; //iveda krastines
    cout<< "c krastine:"; cin >> c;

    if (a+b>c && a+c>b && b+c>a){
	p=a+b+c;  //apskaiciuoja ar galimas trikampio sudarymas
	e= p/2;
	f= sqrt(e*(e-a)*(e-b)*(e-b));
    cout<<"Trikampio sudarymas galimas"<< endl;
    cout<<"trikampio plotas: "; cout<< f<< endl;

    if (a == b && b == c) //apskaiciuos trikampio rusi
       cout<< "Lygiakrastis";
    else if ( (a == b) && (a != c) || (b == c) && (b != a) || (a == c) && (a != b) )
       cout<< "Lygiasonis";
    else
       cout<< "Ivairiakrastis";
}
else
    cout<<"Trikampio sudarymas negalimas."<< endl;

return 0;
}
