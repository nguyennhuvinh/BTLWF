using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Nguyễn_Như_Vinh__62Th1_BTL
{
    
    public partial class Form1 : Form
    {
        //Ket Noi
        static String connString = @"Data Source=DESKTOP-GD8538C\SQLEXPRESS;Initial Catalog=QLYCuaHangSach;Integrated Security=True";
        SqlConnection conn = new SqlConnection(connString);
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();

                SqlCommand cmd = new SqlCommand("Select *from NhaKho", conn);

                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                dgvSach.DataSource = dt;

                if (conn.State == ConnectionState.Open)
                    conn.Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message,"Error",MessageBoxButtons.OK,MessageBoxIcon.Error);
            }
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }
    }
}
