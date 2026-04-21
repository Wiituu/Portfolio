using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp6
{
    internal class Student : Osoba
    {
        //pola
        public int numerIndeksu { get; set; }

        //konstruktor
        public Student(string imie, string nazwisko, int rokUr, string plec,
            int numerIndeksu):base(imie, nazwisko, rokUr, plec)
        {
            this.numerIndeksu = numerIndeksu;
        }

        //metody

        public new string Info()
        {
            return string.Format("{0} numer indeksu: {1}", base.Info(), numerIndeksu);
        }
    }
}
