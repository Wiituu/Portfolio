using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp3
{
    internal class Osoba
    { //pola(zmienne)
        public string imie;
        public string nazwisko;
        private int rokUrodzenia;

    //konstruktor(

        public Osoba(string imie, string nazwisko, int rokUrodzenia)
        {
            this.imie = imie;
            this.nazwisko = nazwisko;
            UstawRok(rokUrodzenia);
        }

    //metody czyli warunki
    //metoda sprawdza czy uzytkownik jest pełnoletni
        public void UstawRok(int rokUrodzenia)
        {
            if (DateTime.Now.Year - rokUrodzenia < 18)
                throw new ArgumentException("Osoba musi być pełnoletnia");
            this.rokUrodzenia = rokUrodzenia;
        }

        //metoda sprawdzajaca ostania litere imienia
        private bool SprawdzImie(string imie)
        {
            if (imie.EndsWith("a"))
                return true;
            return false;

        }
        public string Info()
        {
            string tytul = "";
            if (SprawdzImie(imie))
                tytul = "Pani";
            else
                tytul = "Pan";
            return string.Format("{0} imie:{1} nazwisko:{2} rok urodzenia:{3}",
                tytul, imie, nazwisko, rokUrodzenia);
        }

    }
}
