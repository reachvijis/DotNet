using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scheduler
{
    public partial class Scheduler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateTimelist();
            }
            


        }
        

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void populateTimelist()
        {
            // t = {
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

    }
}