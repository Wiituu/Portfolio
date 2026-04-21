#include <iostream>
#include <string>
#include <vector>
#include <set>
#include <algorithm>
using namespace std;

int main() {
    // Zadanie 1
    std::string tekst = "Gdy kukulka kuka w maju.";
    tekst += " spodziewaj sie urodzaju";
    std::cout << "Nowy tekst: " << tekst << std::endl;
    std::cout << "Dlugosc tekstu: " << tekst.length() << std::endl;

    size_t pozycja = tekst.find("kuka");
    if (pozycja != std::string::npos) {
        std::cout << "Indeks slowa 'kuka': " << pozycja << std::endl;
    } else {
        std::cout << "Slowo 'kuka' nie znalezione" << std::endl;
    }

    size_t start = tekst.find("kukulka kuka");
    if (start != std::string::npos) {
        tekst.replace(start, std::string("kukulka kuka").length(), "wrobelek spiewa");
    }
    std::cout << "Tekst po zamianie: " << tekst << std::endl;

    // Zadanie 2
    std::vector<int> wektor = {2, 12, 6, 9};
    wektor.push_back(1);
    wektor.push_back(2);

    std::cout << "Ilosc elementow wektora: " << wektor.size() << std::endl;
    int maks = *std::max_element(wektor.begin(), wektor.end());
    std::cout << "Maksymalna wartosc: " << maks << std::endl;

    // Zadanie 3
    std::set<int> zbior = {4, 7, 1};
    zbior.insert(2);

    std::cout << "Elementy zbioru: ";
    for (int x : zbior) {
        std::cout << x << " ";
    }
    std::cout << std::endl;

    return 0;
}
