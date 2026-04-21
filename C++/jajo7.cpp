#include <iostream>
#include <string>
using namespace std;

// Definicja struktury uczestnika
struct Uczestnik {
    string imie;
    float kwota;
    int punkty;
};

// Funkcja sumująca kwoty i punkty
void sumaUczestnikow(const Uczestnik* u1, const Uczestnik* u2, float* sumaKwot, int* sumaPunktow) {
    *sumaKwot = u1->kwota + u2->kwota;
    *sumaPunktow = u1->punkty + u2->punkty;
}

// Funkcja obliczająca średnie wartości
void srednieUczestnikow(const Uczestnik* u1, const Uczestnik* u2, float* sredniaKwot, float* sredniaPunktow) {
    *sredniaKwot = (u1->kwota + u2->kwota) / 2.0f;
    *sredniaPunktow = static_cast<float>(u1->punkty + u2->punkty) / 2.0f;
}

int main() {
    Uczestnik uczestnik1, uczestnik2;
    
    // Wprowadzanie danych pierwszego uczestnika
    cout << "Podaj dane pierwszego uczestnika:\n";
    cout << "Imie: ";