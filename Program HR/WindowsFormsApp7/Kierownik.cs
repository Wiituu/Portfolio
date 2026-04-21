using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp7
{
    internal class Kierownik : Pracownik
    {
        public int pensjaMies {  get; set; }
        public int procPremii {  get; set; }
        public int dodatek {  get; set; }
        public int nrTel {  get; set; }
        public int nrPokoj { get; set; }
        public string dzial {  get; set; }


        public Kierownik(string imie, string nazwisko, int rokUrodzenia,
            int pensjaMies, int procPremii, int dodatek, int nrTel, int nrPokoj,  string dzial):base(imie, nazwisko, rokUrodzenia)
        {
            this.pensjaMies = pensjaMies;
            this.procPremii = procPremii;
            this.dodatek = dodatek;
            this.nrTel = nrTel;
            this.nrPokoj = nrPokoj;
            this.dzial = dzial;
        }

        private double Wyplata()
        {
            double wyplata = pensjaMies + (procPremii * pensjaMies/100) + dodatek;

            return wyplata;
        }
        public new string Info()
        {
            return string.Format(base.Info() + " Pensja Miesięczna: {0}, Procent Premii: {1}, " +
                "Dodatek Kierowniczy: {2}, Numer Telefonu; {3}, Numer Pokoju: {4}, Dział; {5}, Wypłata: {6}", pensjaMies, procPremii, dodatek, nrTel, nrPokoj, dzial, Wyplata());
        }
    }
}
