using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_ELibraryManagement
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //click event Sign Up
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (checkMemberExits())
            {
                Response.Write("<script>alert('Member ID already used');</script>");
            }
            else
            {
                signUpNewUser();
            }
            

        }

        bool checkMemberExits()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * From member_master_tbl Where member_id = '"+ txtUserID.Text.Trim() +"';", con);
                //Creation d'adapter
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }            
        }

        void signUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into member_master_tbl(full_name, dob, contact_no, email, state, city, pincode," +
                    " full_address, member_id, password, account_status) values(@full_name, @dob, @contact_no, @email, @state, @city, @pincode," +
                    " @full_address, @member_id, @password, @account_status)", con);

                cmd.Parameters.AddWithValue("@full_name", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", txtBirthDate.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", txtContactNo.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@state", ddlState.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", txtPinCode.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", txtFullAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", txtUserID.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPwd.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
            //Response.Write("<script>alert('Test');</script>");
        }
    }
}