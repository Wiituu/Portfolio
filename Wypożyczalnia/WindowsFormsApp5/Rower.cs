using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp5
{
    public class Rower
    {
        private Uzytkownik wlasciciel;
        private int liczbaGodzin;
        private int kodDostepu;

        public Rower(Uzytkownik wlasciciel)
        {
            this.wlasciciel = wlasciciel;
            this.liczbaGodzin = 0;
            this.kodDostepu = 0;
        }

        public void Wypozycz(int godziny)
        {
            if (godziny > 0)
            {
                this.liczbaGodzin += godziny;
            }
        }

        public bool Zwroc(int godziny, int kod)
        {
            if (kod == this.kodDostepu && godziny > 0)
            {
                this.liczbaGodzin -= godziny;

                if (this.liczbaGodzin < 0)
                    this.liczbaGodzin = 0;

                return true;
            }
            return false;
        }

        public bool ZmienKod(int staryKod, int nowyKod)
        {
            if (staryKod == this.kodDostepu)
            {
                this.kodDostepu = nowyKod;
                return true;
            }
            return false;
        }

        public string PobierzInfo(int kod)
        {
            if (kod == this.kodDostepu)
            {
                return "Właściciel: " + wlasciciel.ToString() +
                       ", Liczba godzin: " + liczbaGodzin;
            }
            return "Błędny kod dostępu!";
        }

        public int? SprawdzGodziny(int kod)
        {
            if (kod == this.kodDostepu)
                return this.liczbaGodzin;

            return null;
        }
    }
}