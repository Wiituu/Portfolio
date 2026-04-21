using System;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace WindowsFormsApp5
{
    public partial class Form1 : Form
    {
        private Rower rower;

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                Uzytkownik u = new Uzytkownik(textBox1.Text, textBox2.Text);
                rower = new Rower(u);

                MessageBox.Show("Utworzono rower!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Podaj dane!");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (rower == null)
            {
                MessageBox.Show("Najpierw utwórz rower!");
                return;
            }

            int godziny;
            if (int.TryParse(textBox3.Text, out godziny))
            {
                rower.Wypozycz(godziny);
                MessageBox.Show("Wypożyczono!");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (rower == null)
            {
                MessageBox.Show("Najpierw utwórz rower!");
                return;
            }

            int godziny, kod;

            if (int.TryParse(textBox3.Text, out godziny) &&
                int.TryParse(textBox4.Text, out kod))
            {
                if (rower.Zwroc(godziny, kod))
                    MessageBox.Show("Zwrócono!");
                else
                    MessageBox.Show("Błędny kod!");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (rower == null)
            {
                MessageBox.Show("Najpierw utwórz rower!");
                return;
            }

            int kod;
            if (int.TryParse(textBox4.Text, out kod))
            {
                MessageBox.Show(rower.PobierzInfo(kod));
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (rower == null)
            {
                MessageBox.Show("Najpierw utwórz rower!");
                return;
            }

            int staryKod, nowyKod;

            if (int.TryParse(textBox4.Text, out staryKod) &&
                int.TryParse(textBox5.Text, out nowyKod))
            {
                if (rower.ZmienKod(staryKod, nowyKod))
                    MessageBox.Show("Kod zmieniony!");
                else
                    MessageBox.Show("Błędny stary kod!");
            }
        }
    }
}