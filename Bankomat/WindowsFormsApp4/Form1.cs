using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        Konto klient = new Konto("Jan", "Kowalski", 1000, 1234);

        
private void button1_Click(object sender, EventArgs e)
        {
            klient.sprawdzPin(Convert.ToInt16(textBox1.Text));

            if (klient.sprawdzPin(Convert.ToInt16(textBox1.Text)))
            {
                radioButton1.Visible = true;
                radioButton2.Visible = true;
                radioButton3.Visible = true;
                radioButton4.Visible = true;
            }
            else
            {
                radioButton1.Visible = false;
                radioButton2.Visible = false;
                radioButton3.Visible = false;
                radioButton4.Visible = false;
            }
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked) { 
                label3.Visible = true;
                textBox2.Visible = true;
                button2.Visible = true;
                richTextBox1.Visible = true;
            }

        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked)
            {
                label4.Visible = true;
                textBox3.Visible = true;
                button2.Visible = true;
                richTextBox1.Visible = true;
            }
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked)
            {
                button2.Visible = true;
                richTextBox1.Visible = true;
            }
        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton4.Checked)
            {
                label5.Visible = true;
                textBox4.Visible = true;
                button2.Visible = true;
                richTextBox1.Visible = true;
                label6.Visible = true;
                textBox5.Visible = true;
            }
        }
        private void button2_Click(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                decimal kwota = Convert.ToDecimal(textBox2.Text);
                klient.Wplac(kwota);
                label3.Visible = false;
                textBox2.Visible = false;
                button2.Visible = false;
            }
            else if (radioButton2.Checked)
            {
                decimal kwota = Convert.ToDecimal((textBox3.Text));
                klient.Wyplac(kwota);
                label3.Visible = false;
                textBox2.Visible = false;
                button2.Visible = false;
            }
            else if (radioButton3.Checked)
            {
                richTextBox1.Text = klient.Info();
                label3.Visible = false;
                textBox2.Visible = false;
                button2.Visible = false;
                label4.Visible = false;
                textBox3.Visible = false;
                button2.Visible = false;
            }
            else if (radioButton4.Checked)
            {
                int staryPin = Convert.ToInt16(textBox4.Text);
                int nowyPin = Convert.ToInt16(textBox5.Text);

                bool wynik = klient.ZmienPin(staryPin, nowyPin);

                if (wynik)
                {
                    MessageBox.Show("PIN został zmieniony!");
                }
                else
                {
                    MessageBox.Show("Błędny stary PIN!");
                }
            }
        }
    }
}
