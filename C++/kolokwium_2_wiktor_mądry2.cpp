#include <iostream>
using namespace std;

int main() {
    double tabela[3] = {23.2, 1.2, 9.2};
    int i = 0;

    cout << "Zawartość tabeli:\n";
    while (i < 3) {
        cout << tabela[i] << endl;
        i++;
    }

    return 0;
}
