using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp6
{
    internal class Wykladowca : Osoba
    {
        //pola
        public string tytul { get; set; }
        //konstruktor
        public Wykladowca(string imie, string nazwisko, int rokUr, string plec, string tytul)
            : base(imie, nazwisko, rokUr, plec)
        {
            this.tytul = tytul;
        }
        //metody
        public new string Info()
        {
            return string.Format("{0} Tytuł: {1}", base.Info(), tytul);
        }
    }
}
