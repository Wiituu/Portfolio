using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp5
{
    public class Uzytkownik
    {
        private string imie;
        private string nazwisko;

        public Uzytkownik(string imie, string nazwisko)
        {
            if (string.IsNullOrWhiteSpace(imie) || string.IsNullOrWhiteSpace(nazwisko))
            {
                throw new ArgumentException("Imię i nazwisko nie mogą być puste!");
            }

            this.imie = imie;
            this.nazwisko = nazwisko;
        }

        public string PobierzImie()
        {
            return imie;
        }

        public string PobierzNazwisko()
        {
            return nazwisko;
        }

        public override string ToString()
        {
            return imie + " " + nazwisko;
        }
    }
}