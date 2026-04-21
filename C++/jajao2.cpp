#include <iostream>
#include <string>
using namespace std;
int main() {
    int * dane= new int;

cout<<dane<<endl<<"dane: ";
cin>>*dane;
cout<<*dane<<" "<<dane;
delete dane;

};