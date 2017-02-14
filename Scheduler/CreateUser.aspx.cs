using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Layer;

namespace Scheduler
{
    public partial class CreateUser : System.Web.UI.Page
    {

        private ClsBusinessLayer objBusiness ;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            objBusiness = new ClsBusinessLayer();
            if (objBusiness.addVolunteer(txtFName.Text, txtLName.Text, txtEmail.Text, txtPhNumber.Text, txtUserName.Text, txtPassword.Text))
            {
                lblIsCreated.Text = "Account Created Successfully!";
                

            }
            else
                Label7.Text = "UserName already exists";
        }
    }
}