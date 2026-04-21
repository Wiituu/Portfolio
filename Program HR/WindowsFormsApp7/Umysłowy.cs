using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp7
{
    internal class Umysłowy : Pracownik
    {
        public int pensjaMies {  get; set; }
        public int procPremii {  get; set; }
        public string infoKierownik { get; set; }
        public int nrTel {  get; set; }
        public int nrPokoj { get; set; }



        public Umysłowy(string imie, string nazwisko, int rokUrodzenia, int pensjaMies, int procPremii,
            string infoKierownik, int nrTel, int nrPokoj):base(imie, nazwisko, rokUrodzenia)
        {
            this.pensjaMies = pensjaMies;
            this.procPremii = procPremii;   
            this.infoKierownik = infoKierownik;
            this.nrTel = nrTel;
            this.nrPokoj = nrPokoj;
        }

        private double Wyplata()
        {
            double wyplata = pensjaMies + (procPremii * pensjaMies/100);
            return wyplata;
        }
        public new string Info()
        {
            return string.Format(base.Info() + " Pensja Miesięczna {0}, Procent Premii: {1}, Kierownik: {2}, " +
                "Numer Telefonu: {3}, Numer Pokoju: {4}, Wypłata: {5}", pensjaMies, procPremii, infoKierownik, nrTel, nrPokoj, Wyplata());
        }
    }
}
