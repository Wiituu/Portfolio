#include <iostream>
#include <vector>

using namespace std;

void wyswietlWektor(const vector<int>& wektor, const string& nazwa) {
    cout << "Wektor " << nazwa << " (" << wektor.size() << " elementow): ";
    for(int element : wektor) {
        cout << element << " ";
    }
    cout << endl;
}

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

    wyswietlWektor(liczby, "wejsciowy");
    wyswietlWektor(parzyste, "parzyste");

    return 0;
}