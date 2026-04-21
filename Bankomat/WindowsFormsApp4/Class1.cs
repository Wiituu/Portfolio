using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace WindowsFormsApp4
{
    internal class Konto
    {
        //zmienne
        public string imie;
        public string nazwisko;
        private decimal saldo = 0;
        private int pin = 0;
        //konstruktory
        public Konto(string imie, string nazwisko, decimal saldo, int pin)
        {
            this.imie = imie;
            this.nazwisko = nazwisko;
            this.saldo = saldo;
            this.pin = pin;
        }
        //metody
        //sprawdzanie pinu
        public bool sprawdzPin(int pin)
        {
            if(this.pin==pin)
                return true;
            return false;
        }
        //wpłata
        public void Wplac(decimal kwota)
        {
            if (kwota > 0)
            {
                this.saldo += kwota;
            }
            else {
                MessageBox.Show("Nieprawidłowa kwota");
            }
        }
        //wypłata
        public void Wyplac(decimal kwota)
        {

            if (saldo >= kwota)
            {
                this.saldo -= kwota;
            }
            else
            {
                MessageBox.Show("Nie posiadasz wystarczająco dużo środków");
            }

        }
        //info
        public string Info()
        {
            return string.Format("imie; {0}, nazwisko: {1}, saldo: {2}, pin: {3}",
                imie, nazwisko, saldo, pin);
        }
        //zmiana pinu
        public bool ZmienPin(int staryPin, int nowyPin)
        {
            if (this.pin != staryPin)
                return false;

            this.pin = nowyPin;
            return true;
        }

    }
}
