#include <iostream>
#include <string>  
using namespace std;

int main() {
   int owoc=6;
   float warzywo=12.6;
   string zwierze="kot";



int * wskaznik_owoc = &owoc;
float * wskaznik_warzywo = &warzywo;
string * wskaznik_zwierze = &zwierze;

cout<<"wskaźnik_owoc: "<<&wskaznik_owoc<<endl;
cout<<"wskaźnik_warzywo: "<<&wskaznik_warzywo<<endl;    
cout<<"wskaźnik_zwierze: "<<&wskaznik_zwierze<<endl;
return 0;
}