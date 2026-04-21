#include <iostream>
#include <cstring>

using namespace std;

struct Osoba {
    char* imie;
    char* nazwisko;
};

int main() {
    int liczbaOsob;
    cout << "Podaj liczbe osob: ";
    cin >> liczbaOsob;
    cin.ignore();

    Osoba* osoby = new Osoba[liczbaOsob];
    char bufor[100];

    for(int i = 0; i < liczbaOsob; i++) {
        cout << "Podaj imie i nazwisko osoby " << i+1 << ": ";
        cin.getline(bufor, 100);

        
        char* spacja = strchr(bufor, ' ');
        if(spacja != nullptr) {
            *spacja = '\0'; 
            
            osoby[i].imie = new char[strlen(bufor) + 1];
            strcpy(osoby[i].imie, bufor);
            
            osoby[i].nazwisko = new char[strlen(spacja + 1) + 1];
            strcpy(osoby[i].nazwisko, spacja + 1);
        }
    }

    cout << "\nLista osob:\n";
    for(int i = 0; i < liczbaOsob; i++) {
        cout << "Imie: " << osoby[i].imie << ", Nazwisko: " << osoby[i].nazwisko << endl;
    }

    for(int i = 0; i < liczbaOsob; i++) {
        delete[] osoby[i].imie;
        delete[] osoby[i].nazwisko;
    }
    delete[] osoby;

    return 0;
}