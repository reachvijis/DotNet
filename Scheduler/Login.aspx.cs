using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Layer;

namespace Scheduler
{
    public partial class Login : System.Web.UI.Page
    {
        private ClsBusinessLayer objBusiness = new ClsBusinessLayer();
        public string volunteerId;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (objBusiness.validatePassword(txtUserName.Text, txtPassword.Text))
            {
               // objVolunteer = new ClsVolunteer();
                volunteerId= objBusiness.loadUser(txtUserName.Text);
                Label2.Text = "login successfull";
                Session["volunteerId"] = volunteerId;
                Page.Response.Redirect("Scheduler.aspx");
            }
            else {
                Label2.Text = "Incorrect username and password";
            }

        }
    }
}