#include <iostream>
#include <vector>

using namespace std;

int main() {
    
    vector<int> wektor_1 = {5, 6, 9, 1, 13, 19};
    vector<int> wektor_2 = {7, 7, 7};

    
    wektor_1.insert(wektor_1.end(), wektor_2.begin(), wektor_2.end());

   
    wektor_1.insert(wektor_1.begin(), 333);
    wektor_1.push_back(333);

   
    cout << "Wektor_1: ";
    for(int liczba : wektor_1) {
        cout << liczba << " ";
    }

    cout << "\nWektor_2: ";
    for(int liczba : wektor_2) {
        cout << liczba << " ";
    }

    return 0;
}