using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp6
{
    internal class Stypendysta:Student
    {
        public decimal kwotaStypendium;

        public Stypendysta(string imie, string nazwisko, int rokUr, string plec, int numerIndeksu, decimal kwotaStypendium)
            : base(imie, nazwisko, rokUr, plec, numerIndeksu)
        {
            this.kwotaStypendium = kwotaStypendium;

        }
        public new string Info()
        {
            return string.Format("imie: {0} nazwisko: {1} kwota stypendium: {2}", imie, nazwisko, kwotaStypendium);
        }
        
    }
}
