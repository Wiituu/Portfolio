#include <iostream>
#include <cstring> 
using namespace std;

int zliczZnaki(const char* ciag, char szukanyZnak) {
    int licznik = 0;
    for(int i = 0; i < strlen(ciag); i++) {
        if(ciag[i] == szukanyZnak) {
            licznik++;
        }
    }
    return licznik;
}

int main() {
    const int MAX_DLUGOSC = 1000;
    char ciag[MAX_DLUGOSC];
    char szukanyZnak;

    cout << "Podaj ciag znakow: ";
    cin.getline(ciag, MAX_DLUGOSC);

    cout << "Podaj znak do zliczenia: ";
    cin >> szukanyZnak;

    int wynik = zliczZnaki(ciag, szukanyZnak);
    cout << "Znak '" << szukanyZnak << "' wystepuje " << wynik << " razy w podanym ciagu." << endl;

    return 0;
}