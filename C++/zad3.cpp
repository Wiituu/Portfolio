#include <iostream>
#include <string>

using namespace std;

void znajdzPozycje(const string& tekst, const string& szukaneSlowo) {
    size_t pozycja = tekst.find(szukaneSlowo);
    bool znaleziono = false;
    
    while(pozycja != string::npos) {
        cout << "Znaleziono na pozycji: " << pozycja << endl;
        znaleziono = true;
        pozycja = tekst.find(szukaneSlowo, pozycja + 1);
    }
    
    if(!znaleziono) {
        cout << "Nie znaleziono podanego slowa w tekscie." << endl;
    }
}

int main() {
    string tekst = "Ala ma kota, a kotek pije mleczko";
    string szukaneSlowo;
    
    cout << "Podaj slowo do wyszukania: ";
    cin >> szukaneSlowo;
    
    znajdzPozycje(tekst, szukaneSlowo);
    
    return 0;
}