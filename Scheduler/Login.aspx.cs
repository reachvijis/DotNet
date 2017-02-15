using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Layer;
using System.Data;

namespace Scheduler
{
    public partial class Login : System.Web.UI.Page
    {
        private ClsBusinessLayer objBusiness = new ClsBusinessLayer();
        public ClsVolunteer objVolunteer;
        public string volunteerId;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            objVolunteer = new ClsVolunteer();
            if (objBusiness.validatePassword(txtUserName.Text, txtPassword.Text))
            {
              DataSet volunteerSet= objBusiness.loadUser(txtUserName.Text);
                
                Label2.Text = "login successfull";
                objVolunteer.Name = volunteerSet.Tables[0].Rows[0]["Name"].ToString();
                objVolunteer.Id = volunteerSet.Tables[0].Rows[0]["id"].ToString();
                objVolunteer.EmailAddress = volunteerSet.Tables[0].Rows[0]["email"].ToString();
                string nam = objVolunteer.Name;
                
                Session["volunteer"] = objVolunteer;
                Session["ID"] = objVolunteer.Id.ToString();
                Page.Response.Redirect("~/Scheduler.aspx",false);
            }
            else {
                Label2.Text = "Incorrect username and password";
            }

        }
    }
}