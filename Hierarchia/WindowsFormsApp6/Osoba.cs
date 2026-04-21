using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp6
{
    internal class Osoba
    {
        public string imie { set; get; }
        public string nazwisko { set;  get; }
        public int rokUr {  set; get; }
        public string plec {  set; get; }   


        public Osoba(string imie, string nazwisko, int rokUr, string plec)
        {
            this.imie = imie;
            this.nazwisko = nazwisko;
            this.rokUr = rokUr;
            this.plec = plec;
        }
        public string Info()
        {
            return string.Format("imie: {0} nazwisko: {1} rok urodzenia: {2}" + " płeć: {3}", imie, nazwisko, rokUr, plec);
        }
    }
}
