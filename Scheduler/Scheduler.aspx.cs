using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Layer;

namespace Scheduler
{
    public partial class Scheduler : System.Web.UI.Page
    {
        private ClsBusinessLayer objBusiness = new ClsBusinessLayer();

     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                if (Session["volunteer"] != null)
                {
                    ClsVolunteer objVolunteer = Session["volunteer"] as ClsVolunteer;
                    //string name = Session["Name"].ToString();
                    //name = objVolunteer.EmailAddress;
                    //  Label8.Text = objVolunteer.Name;

                    txtName.Text = objVolunteer.Name;
               }
                populateTimelist();
                
                string volunteerId = Session["ID"].ToString();

                populateAssistantList(volunteerId);

            }

        }
        

       


        private void populateTimelist()
        {
           
            string time = "";
            for (int i = 8; i <= 12; i++)
            {
                for (int j = 0; j <= 45; j += 15)
                {
                    string min = j.ToString("00");
                    time = i.ToString() +":"+ min;
                    ddlTime.Items.Add(time);
                }
                
            }
            ddlTime.Items.Add("1:00");
            ddlTime.Items.Add("1:15");

        }

        private void populateAssistantList( string volunteerId) {

            ddlAssistant.DataSource= objBusiness.loadAssistants(volunteerId);
            ddlAssistant.DataTextField = "Name";
            ddlAssistant.DataValueField = "id";
            ddlAssistant.DataBind();
            ddlAssistant.Items.Insert(0, "------");
            ddlAssistant.SelectedIndex=0;
        }

        protected void ddlgrade_SelectedIndexChanged(object sender, EventArgs e)
        {

            int grade = Convert.ToInt32(ddlGrade.SelectedValue);
            ddlTeacher.DataSource= objBusiness.loadTeacherByGrade(grade);
            ddlTeacher.DataTextField = "Name";
            ddlTeacher.DataValueField = "id";
            ddlTeacher.DataBind();
            ddlTeacher.Items.Insert(0, "------");
            ddlTeacher.SelectedIndex = 0;
        }

        protected void ddlTeacher_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (Session["volunteer"] != null)
            {
                ClsVolunteer objVolunteer = Session["volunteer"] as ClsVolunteer;
                //string name = Session["Name"].ToString();
                //name = objVolunteer.EmailAddress;
              //  Label8.Text = objVolunteer.Name;
            }
           string comments= objBusiness.getTeacherComments(ddlTeacher.SelectedValue.ToString());
           lblComments.Text = "Your teacher prefers " + comments;


        }

    }
}