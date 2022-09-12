using CAPSTONE.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using Newtonsoft.Json;

namespace CAPSTONE.Controllers.Repository
{
    public class SystemsRepository
    {
        string constr = ConfigurationManager.ConnectionStrings["CAPSTONEEntities"].ConnectionString;
        public List<Menu> GetMenu(string acnttype)
        {
            var menu = new List<Menu>();
            DataTable dt = new DataTable();
            using(SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("prop_get_menu", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                con.Open();
                cmd.Parameters.AddWithValue("@acnttype", acnttype);
                da.Fill(dt);
                con.Close();
            }
            foreach(DataRow dr in dt.Rows)
            {
                menu.Add(
                    new Menu
                    {
                        Text = Convert.ToString(dr["Text"]),
                        icon = Convert.ToString(dr["icon"]),
                        tagid = Convert.ToString(dr["tagid"]),
                        action = Convert.ToString(dr["action"]),
                        controller = Convert.ToString(dr["controller"])
                    }
                );
            }

            return menu;
        }
        public CurrentUser GetCurrentUser(string acntuid)
        {
            var user = new CurrentUser();

            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    SqlCommand cmd = new SqlCommand("prop_get_current_user", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    con.Open();
                    cmd.Parameters.AddWithValue("@acntuid", acntuid);
                    da.Fill(dt);
                    con.Close();
                }

                user.fullname = Convert.ToString(dt.Rows[0]["fullname"]);
                user.acnttype = Convert.ToString(dt.Rows[0]["acnttype"]);
                user.uid= Convert.ToString(dt.Rows[0]["uid"]);
            }
            catch (Exception ex)
            {

            }

            return user;
        }
        public string LoginUser(string username, string password)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("prop_login_user", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                con.Open();
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                da.Fill(dt);
                con.Close();
            }
            if (dt.Rows.Count == 0) return "Error";

            return Convert.ToString(dt.Rows[0]["uid"]);
        }
        public string getreport()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("prop_get_report", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                con.Open();
                da.Fill(dt);
                con.Close();
            }
            return JsonConvert.SerializeObject(dt);
        }
    }
}