using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    btnUserLogin.Visible = true;
                    btnUserSignUp.Visible = true;
                    btnLogout.Visible = false;
                    btnHelloUser.Visible = false;
                    

                    //footer
                    BtnAdminLogin.Visible = true;
                    BtnAuthorManagement.Visible = false;
                    BtnPublisherManagement.Visible = false;
                    BtnBookInventory.Visible = false;
                    BtnBookIssuing.Visible = false;
                    BtnMemberManagement.Visible = false;
                     
                }
                else if (Session["role"].Equals("user"))
                {
                    btnUserLogin.Visible = false;
                    btnUserSignUp.Visible = false;
                    btnLogout.Visible = true;
                    btnHelloUser.Visible = true;
                    btnHelloUser.Text = "Hello" + Session["username"].ToString();

                    //footer
                    BtnAdminLogin.Visible = true;
                    BtnAuthorManagement.Visible = false;
                    BtnPublisherManagement.Visible = false;
                    BtnBookInventory.Visible = false;
                    BtnBookIssuing.Visible = false;
                    BtnMemberManagement.Visible = false;

                }
                else if (Session["role"].Equals("admin"))
                {
                    btnUserLogin.Visible = false;
                    btnUserSignUp.Visible = false;
                    btnLogout.Visible = true;
                    btnHelloUser.Visible = true;
                    btnHelloUser.Text = "Hello Admin";

                    //footer
                    BtnAdminLogin.Visible = false;
                    BtnAuthorManagement.Visible = true;
                    BtnPublisherManagement.Visible = true;
                    BtnBookInventory.Visible = true;
                    BtnBookIssuing.Visible = true;
                    BtnMemberManagement.Visible = true;

                }
            }
            catch(Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }

        protected void BtnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void BtnAuthorManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void BtnPublisherManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void BtnBookInventory_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void BtnBookIssuing_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void BtnMemberManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void btnViewBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void btnUserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void btnUserSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }
    }
}