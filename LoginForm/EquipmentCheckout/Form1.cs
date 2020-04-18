using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EquipmentCheckout
{
    public partial class loginForm : Form
    {
        public loginForm()
        {
            InitializeComponent();
        }

        private void loginButton_Click(object sender, EventArgs e)
        {
            //Connection String   
            SqlConnection con = new SqlConnection(@"Data Source=STL-4110;Initial Catalog=EquipmentCheckout;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from UserLogins where userName=@UserName and pass =@Password", con);
            cmd.Parameters.AddWithValue("@UserName", usernameTextbox.Text);
            cmd.Parameters.AddWithValue("@Password", passwordTextbox.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //Connection open here   
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                MessageBox.Show("Successfully logged in");
                
            }
            else
            {
                MessageBox.Show("Please enter Correct Username and Password");
            }
        }
    }
}
