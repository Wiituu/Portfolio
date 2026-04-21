#include <iostream>
using namespace std;

double sumujElementy(double *tablica, int liczbaElementow) {
    double suma = 0.0;
    double *koniecTablicy = tablica + liczbaElementow; 
    
    for (double *wskaznik = tablica; wskaznik != koniecTablicy; ++wskaznik) {
        suma += *wskaznik; 
    }
    
    return suma;
}

int main() {
    int liczbaElementow;
    double srednia;

    
    cout << "Podaj liczbe elementow: ";
    cin >> liczbaElementow;

    if (liczbaElementow <= 0) {
        cout << "Liczba elementow musi byc wieksza od zera!" << endl;
        return 1;
    }

    double *tablica = new double[liczbaElementow];
    double *wskaznik = tablica; 

    for (int i = 0; i < liczbaElementow; ++i) {
        cout << "Podaj element " << i + 1 << ": ";
        cin >> *(wskaznik + i); 
    }

    double suma = sumujElementy(tablica, liczbaElementow);

    srednia = suma / liczbaElementow;

    cout << "Suma podanych liczb: " << suma << endl;
    cout << "Srednia podanych liczb: " << srednia << endl;

    delete[] tablica;

    return 0;
}