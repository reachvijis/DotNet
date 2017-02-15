using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace SchedulerDbLayer
{
    public class ClsDbLayer
    {
      //  private string conStr = ConfigurationManager.ConnectionStrings["dbSchedulesConStr"].ConnectionString;
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbSchedulesConStr"].ConnectionString);

        public object ExecuteSqlString(string query)
        {
           // con.ConnectionString = conStr;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query, con);
             SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds;

        }

        public string ExecuteSqlScalar(string query)
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query, con);
          return   cmd.ExecuteScalar().ToString();
        }

        public object CheckUser(string userName, string password)
        {

            string query = "Select * from tblVolunteerLogin where userName='" + userName + "' and Password = '" + password + "'";
            return ExecuteSqlString(query);
        }
        public string getVolunteerId(string uname)
        {
            string query = "select VolunteerId from tblVolunteerLogin where UserName = '" + uname + "'";
            return ExecuteSqlScalar(query);
        }

        public object getVolunteerInfo(string volunteerId) {

            string query = "select id,FirstName+ ' '+ lastName as Name,Email from tblVolunteer where id='" + volunteerId + "'";
            return ExecuteSqlString(query);
        }

        public object getAssistantInfo(string volunteerId) {

            string query = "select id,FirstName+ ' '+ lastName as Name,Email from tblVolunteer where id !='" + volunteerId + "'";
            return ExecuteSqlString(query);
        }

        public bool addUser(string fname, string lname, string phonenumber, string email, string uname, string password)
        {

            con.Open();
            string query = "Select count(*) from tblVolunteerLogin where userName='" + uname + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int noOfRec =(int) cmd.ExecuteScalar();
            if (noOfRec <= 0)
            {
               
                query = "Insert into tblVolunteer(FirstName,lastName,Email,PhoneNumber) VALUES ( @fname,@lname,@email,@phonenumber) ;Insert into tblVolunteerLogin(UserName,Password,VolunteerId) VALUES (@uname,@password,SCOPE_IDENTITY());";
                cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("fname", SqlDbType.VarChar).Value = fname;
                cmd.Parameters.AddWithValue("lname", SqlDbType.VarChar).Value = lname;
                cmd.Parameters.AddWithValue("email", SqlDbType.VarChar).Value = email;

                cmd.Parameters.AddWithValue("phonenumber", SqlDbType.VarChar).Value = phonenumber;

                cmd.Parameters.AddWithValue("@uname", uname);
                cmd.Parameters.AddWithValue("@password", password);
               
               
                cmd.ExecuteNonQuery();
                return true;
            }
            else
            {
                return false;
            }


        }

        public object getTeacherByGrade(int grade)
        { 
        string query ="select id, FirstName +' '+LastName  as Name,Email from tblTeacher where Grade = '"+ grade + "'";
        return ExecuteSqlString(query);

        }

        public string getTeacherComments(string teacherId)
        { 
        string query ="select Comments from tblTeacher where id='"+teacherId+"'";
        return ExecuteSqlScalar(query);

        }
    }
}
