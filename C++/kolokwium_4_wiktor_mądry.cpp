#include <iostream>
#include <string>

class Samochody {
private:
    std::string marka;
    std::string model;
    std::string nr_rejestracyjny;
    int przebieg;

public:
    Samochody(std::string m, std::string mod, std::string nr) 
        : marka(m), model(mod), nr_rejestracyjny(nr), przebieg(0) {}

    Samochody(std::string m, std::string mod, std::string nr, int p) 
        : marka(m), model(mod), nr_rejestracyjny(nr), przebieg(p) {}

    ~Samochody() {
        std::cout << "Usunieto samochod o numerze rejestracyjnym: " << nr_rejestracyjny << std::endl;
    }

    void wyswietlDane() const {
        std::cout << "Marka: " << marka << "\n"
                  << "Model: " << model << "\n"
                  << "Nr rejestracyjny: " << nr_rejestracyjny << "\n"
                  << "Przebieg: " << przebieg << " km\n\n";
    }
};

int main() {
    Samochody samochod1("Fiat", "126p", "EL12345");
    Samochody samochod2("Audi", "A4", "WA67890", 125000);

    samochod1.wyswietlDane();
    samochod2.wyswietlDane();

    return 0;
}