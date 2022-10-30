using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Fibonachi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, EventArgs e)
        {
            int x = 0;
            int y = 1;
            for (int i=0; i <= Number.Value; i++)
            {
                x = x + y;
                y = x + y;
                Output.Text += x.ToString() + " \n " + y.ToString() + " \n ";
            }
        }
    }
}