#include <iostream>
using namespace std;

int main() {
    int liczbaElementow;
    double suma = 0.0, srednia;

   
    cout << "Podaj liczbe elementow: ";
    cin >> liczbaElementow;

    
    if (liczbaElementow <= 0) {
        cout << "Liczba elementow musi byc wieksza od zera!" << endl;
        return 1;
    }

    
    double *tablica = new double[liczbaElementow];

    
    for (int i = 0; i < liczbaElementow; ++i) {
        cout << "Podaj element " << i + 1 << ": ";
        cin >> tablica[i];
        suma += tablica[i];
    }

    
    srednia = suma / liczbaElementow;

   
    cout << "Suma podanych liczb: " << suma << endl;
    cout << "Srednia podanych liczb: " << srednia << endl;

   
    delete[] tablica;

    return 0;
}