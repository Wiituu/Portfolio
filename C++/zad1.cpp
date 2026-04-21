#include <iostream>
#include <string>

int main() {
    std::string przyslowie = "Kwiecien-plecien, bo przepłata, troche zimy, troche lata.";
    
    std::cout << "Liczba znakow: " << przyslowie.length() << std::endl;
    std::cout << "Zarezerwowana pamiec: " << przyslowie.capacity() << std::endl;
    
    size_t pozycja = przyslowie.find("przepłata");
    if(pozycja != std::string::npos) {
        std::cout << "Pozycja 'przepłata': " << pozycja << std::endl;
    }
    
    size_t pozycjaTroche = przyslowie.find("troche lata");
    if(pozycjaTroche != std::string::npos) {
        przyslowie.replace(pozycjaTroche, 11, "duzo lata");
    }
    
    size_t pozycjaZimy = przyslowie.find("zimy");
    std::string nowyString;
    if(pozycjaZimy != std::string::npos) {
        nowyString = przyslowie.substr(pozycjaZimy + 5);
    }
    
    size_t pozycjaLata = nowyString.find("lata");
    if(pozycjaLata != std::string::npos) {
        nowyString.erase(pozycjaLata, 4);
    }
    
    std::cout << "Zmodyfikowane przyslowie: " << przyslowie << std::endl;
    std::cout << "Nowy string: " << nowyString << std::endl;
    
    return 0;
}