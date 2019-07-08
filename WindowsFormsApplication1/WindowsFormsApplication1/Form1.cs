using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SSIS_Runtime = Microsoft.SqlServer.Dts.Runtime;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        public void ExecutePackage()
        {
            string strPackagePath = @"C:\jinshan\SSISWork\SSIS_World\ISExtensions\ISExtensions\winForm.dtsx";
            SSIS_Runtime.Application oApp = new SSIS_Runtime.Application();

            SSIS_Runtime.Package oPackage = new SSIS_Runtime.Package();

            oPackage = oApp.LoadPackage(strPackagePath, null);

            oPackage.Variables["Myvar"].Value = textBox1.Text.Trim();

            //oPackage.Variables["MyParameter"].Value = textBox2.Text.Trim();

            oPackage.Execute();

            MessageBox.Show("Package Executed!");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ExecutePackage();
        }
    }
}
