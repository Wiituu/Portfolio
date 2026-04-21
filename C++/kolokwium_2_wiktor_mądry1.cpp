#include <iostream>
using namespace std;

struct kontakt{
    char imie[20];
    int rok;
};

       int main() {
    kontakt osoba[10];
    int n;
    cout << "Podaj liczbe osob: ";
    cin >> n;
    for (int i = 0; i < n; i++) {
        cout << "Podaj imie: ";
        cin >> osoba[i].imie;
        cout << "Podaj rok urodzenia: ";
        cin >> osoba[i].rok;
    }
    cout <<"Twoje dane: " << endl;
    for (int i = 0; i < n; i++) {
        cout << "Imie: " << osoba[i].imie << ", Rok urodzenia: " << osoba[i].rok << endl;
        return 0;
        
        }
       }