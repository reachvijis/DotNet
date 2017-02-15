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

        public DataSet loadUser(string uname)
        {

            string vid = dbObj.getVolunteerId(uname);
            DataSet ds =(DataSet) dbObj.getVolunteerInfo(vid);         
            return( ds);

        }

        public bool  addVolunteer(string fname,string lname,string email,string phnum,string uname,string password){
            return (dbObj.addUser(fname, lname, phnum, email, uname, password));
              
        }

        public DataSet loadTeacherByGrade(int grade)
        {
          return(  (DataSet)dbObj.getTeacherByGrade(grade));
        }

        public DataSet loadAssistants(string volunteerId)
        {

            return ((DataSet)dbObj.getAssistantInfo(volunteerId));
        }
        public  string getTeacherComments(string teacherId)
        {

            return dbObj.getTeacherComments(teacherId);
        }
    }
}
