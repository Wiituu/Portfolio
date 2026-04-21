using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp7
{
    internal class Fizyczny : Pracownik
    {
        public int stawkaGodzinowa { get; set; }
        public int liczbaPrzeprGodz { get; set; }
        public int liczbaNadgodzin { get; set; }
        public string infoKierownik { get; set; }
        public string umiejetnosci { get; set; }

        public Fizyczny(string imie, string nazwisko, int rokUrodzenia, int stawkaGodzinowa, int liczbaPrzeprGodz, int liczbaNadgodzin, string infoKierownik, string umiejetnosci)
            :base(imie, nazwisko, rokUrodzenia) 
        {
            this.stawkaGodzinowa = stawkaGodzinowa;
            this.liczbaPrzeprGodz = liczbaPrzeprGodz;
            this.liczbaNadgodzin = liczbaNadgodzin;
            this.infoKierownik = infoKierownik;
            this.umiejetnosci = umiejetnosci;
        }

        private double Wyplata()
        {
            double wyplata = stawkaGodzinowa * liczbaPrzeprGodz + 1.5 * stawkaGodzinowa * liczbaNadgodzin;

            return wyplata;
        }
        
        public new string Info()
            {
                 return string.Format(base.Info() + " Stawka Godzinowa: {0}, Przepracowane Godziny: {1}," +
                    " Nadgodziny: {2}, Kierownik: {3}, Umiejętności: {4}, Wypłata: {5}", stawkaGodzinowa, liczbaPrzeprGodz, liczbaNadgodzin, infoKierownik, umiejetnosci, Wyplata());
            }
    }
}
