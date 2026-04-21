#include <iostream>
using namespace std;

int pobierzRokUrodzenia() {
    int rok;
    cout << "Podaj rok urodzenia: ";
    while (true) {
        cin >> rok;
        if (cin.fail()) {
            cin.clear();
            cin.ignore(1000, '\n');
            cout << "Błąd! Podaj poprawny rok: ";
        } else {
            cin.ignore(1000, '\n');
            return rok;
        }
    }
}

int main() {
    int rok = pobierzRokUrodzenia();
    cout << "Podany rok urodzenia to: " << rok << endl;

    return 0;
}
