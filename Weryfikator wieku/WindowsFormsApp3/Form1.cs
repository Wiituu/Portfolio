using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //tworzymy obiekt ktory polaczy nas z klasa Osoba
            Osoba osoba = new Osoba(textBox1.Text, textBox2.Text, int.Parse(textBox3.Text));

            //zeby zobaczyc wynik musimy dla obiektu wywolac metode Info
            richTextBox1.Visible = true;
            richTextBox1.Text = osoba.Info();

        }
    }
}
