using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SchedulerDbLayer;
using System.Data;



namespace Business_Layer
{
    public class ClsBusinessLayer
    {
        ClsDbLayer dbObj = new ClsDbLayer();
       

        public bool validatePassword(string userName,string password) {
            
        DataSet ds= (DataSet)  dbObj.CheckUser(userName, password);
        if (ds.Tables[0].Rows.Count != 0)
         return true;
            else return false;

        }

        public string loadUser(string uname)
        {
            DataSet ds =(DataSet) dbObj.getVolunteerId(uname);

            //objVolunteer.FirstName = ds.Tables[0].Columns["FirstName"].ToString();
            //objVolunteer.LastName = ds.Tables[0].Columns["lastName"].ToString();
            //objVolunteer.EmailAddress = ds.Tables[0].Columns["Email"].ToString();
            //objVolunteer.Id = Convert.ToInt32( ds.Tables[0].Columns["id"].ToString());
           
            return(  ds.Tables[0].Columns["VolunteerId"].ToString());

        }

        public bool  addVolunteer(string fname,string lname,string email,string phnum,string uname,string password){
            return (dbObj.addUser(fname, lname, phnum, email, uname, password));
              
        }


       
    }
}
