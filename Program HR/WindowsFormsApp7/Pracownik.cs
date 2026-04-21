using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp7
{
    internal class Pracownik
    {
        public string imie { get; set; }
        public string nazwisko { get; set; }
        public int rokUrodzenia { get; set; }


        public Pracownik(string imie, string nazwisko, int rokUrodzenia)
        {
            this.imie = imie;
            this.nazwisko = nazwisko;
            this.rokUrodzenia = rokUrodzenia;
        }
        public string Info()
        {
            return string.Format("Imie: {0}, Nazwisko: {1}, Rok urodzenia: {2},", imie, nazwisko, rokUrodzenia);
        }
    }
}
