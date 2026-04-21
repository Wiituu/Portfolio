#include <iostream>
using namespace std;

int tablica;

int main() {
    int n;
   cout<<"podaj liczbe elementow tablicy: ";
    cin>>n;
    int tablica[n];
    cout<<"podaj elementy tablicy: ";
    for(int i=0; i<n; i++){
        cin>>tablica[i];
    }
    cout<<"elementy tablicy to: ";
    for(int i=0; i<n; i++){
        cout<<tablica[i]<<" ";
    }
    return 0;
}