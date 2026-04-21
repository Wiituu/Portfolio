#include <iostream>
#include <vector>

using namespace std;

int main() {
    int ilosc;
    cout << "Podaj ilosc liczb: ";
    cin >> ilosc;

    vector<int> liczby(ilosc);
    vector<int> parzyste;

    cout << "Podaj " << ilosc << " liczb calkowitych:\n";
    for(int i = 0; i < ilosc; i++) {
        cin >> liczby[i];
        if(liczby[i] % 2 == 0) {
            parzyste.push_back(liczby[i]);
        }
    }

    cout << "\nWektor wejsciowy (" << liczby.size() << " elementow): ";
    for(int liczba : liczby) {
        cout << liczba << " ";
    }

    cout << "\nLiczby parzyste (" << parzyste.size() << "): ";
    for(int liczba : parzyste) {
        cout << liczba << " ";
    }

    return 0;
}