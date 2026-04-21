using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int liczba1 = Convert.ToInt16(textBox1.Text);
            int liczba2 = Convert.ToInt16(textBox2.Text);

            if (liczba1 == liczba2)

                MessageBox.Show("To kwadrat");

            else
                MessageBox.Show("To prostokąt");


        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
                button1.BackColor = Color.Yellow;
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
                button1.BackColor = Color.Red;
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
                button1.BackColor = Color.Green;
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked)
                button1.BackColor = Color.Blue;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            double liczba1 = Convert.ToDouble(textBox3.Text);
            double liczba2 = Convert.ToDouble(textBox4.Text);

            switch (comboBox1.SelectedIndex)
            {
                case 0: richTextBox1.Text = (Convert.ToString(liczba1 + liczba2)); break;
                case 1: richTextBox1.Text = (Convert.ToString(liczba1 - liczba2)); break;
                case 2: richTextBox1.Text = (Convert.ToString(liczba1 * liczba2)); break;
                case 3: if (liczba2 != 0) { richTextBox1.Text = (Convert.ToString(liczba1 / liczba2)); } break;
                default: richTextBox1.Text = "Nic nie wybrałeś"; break;
            }

            switch (listBox1.SelectedIndex)
            {
                case 0: richTextBox1.Text = (Convert.ToString(liczba1 + liczba2)); break;
                case 1: richTextBox1.Text = (Convert.ToString(liczba1 - liczba2)); break;
                case 2: richTextBox1.Text = (Convert.ToString(liczba1 * liczba2)); break;
                case 3: if (liczba2 != 0) { richTextBox1.Text = (Convert.ToString(liczba1 / liczba2)); } break;
                default: richTextBox1.Text = "Nic nie wybrałeś"; break;

            }


        }

        private void button3_Click(object sender, EventArgs e)
        {
            double cena = 0;
            int km = int.Parse(textBox5.Text);


            if (km <= 25)
            {
                cena = 3.5;          
            }else if(km >25 && km <= 50)
            {
                cena = 8;
            }else if(km >50 && km <= 100)
            {
                cena = 20;
            }else if(km >100 && km <= 200)
            {
                cena = 35;
            }else if(km > 200 && km <= 400)
            {
                cena = 50;
            }

            switch (comboBox2.SelectedIndex)
            {
                case 0: richTextBox2.Text = Convert.ToString(cena * 0.8); break;
                case 1: richTextBox2.Text = Convert.ToString(cena * 0.7); break;
                case 2: richTextBox2.Text = Convert.ToString(cena * 0.87); break;
                case 3: richTextBox2.Text = Convert.ToString(cena * 0.86); break;
                case 4: richTextBox2.Text = Convert.ToString(cena * 0.5); break;
                case 5: richTextBox2.Text = Convert.ToString(cena * 0.6); break;
                default: richTextBox2.Text = "Nic nie wybrałeś"; break;
            }
        }


    }
}
