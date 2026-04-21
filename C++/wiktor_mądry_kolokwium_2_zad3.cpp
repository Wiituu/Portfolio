#include <iostream>
using namespace std;

struct dane{
    int liczba_1;
    int liczba_2;
    int suma;
};

int main() {
    dane liczby[2];
    int i;

    for (i = 0; i < 2; i++) {
        cout << "Podaj liczbe 1: ";
        cin >> liczby[i].liczba_1;
        cout << "Podaj liczbe 2: ";
        cin >> liczby[i].liczba_2;
        liczby[i].suma = liczby[i].liczba_1 + liczby[i].liczba_2;
    }

    cout << "Suma liczb:" << endl;
    for (i = 0; i < 2; i++) {
        cout << "Liczba 1: " << liczby[i].liczba_1 << ", Liczba 2: " << liczby[i].liczba_2 << ", Suma: " << liczby[i].suma << endl;
    }

    return 0;
}

