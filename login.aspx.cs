using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class login : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["email"] != null && Request.Cookies["password"] != null)
            {
                txtemail.Text = Request.Cookies["email"].Value;
                txtpassword.Attributes["value"] = Request.Cookies["password"].Value;
            }
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (chkRememberMe.Checked)
        {
            Response.Cookies["email"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["password"].Expires = DateTime.Now.AddDays(30);
        }
        else
        {
            Response.Cookies["email"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);

        }
        Response.Cookies["email"].Value = txtemail.Text.Trim();
        Response.Cookies["password"].Value = txtpassword.Text.Trim();


        try
        {
            con.Open();
            var cmd =
                new SqlCommand(
                    "select sid,email,password,type,department from student where email=@email and password=@password union select id,email, password,type,department from admin where email =@email and password=@password union select id,email, password,type,department from campany where email =@email and password=@password union select id,email, password,type,department from tpo where email =@email and password=@password",
                    con);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            SqlDataReader rd = null;

            rd = cmd.ExecuteReader();
            rd.Read();

            if (rd.HasRows == false)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                    "alert('User id and password is incorrect');", true);
            }
            else
            {
                var depart = Convert.ToString(rd.GetValue(4));
                var usid = Convert.ToString(rd.GetValue(0));
                var email_id = Convert.ToString(rd.GetValue(1));
                var type = Convert.ToString(rd.GetValue(3));

                if (type == "0")
                {
                    Session["userid"] = usid;
                    Session["email"] = email_id;
                    con.Close();
                    Response.Redirect("adminhome.aspx");
                }
                else if (type == "1")
                {
                    Session["userid"] = usid;
                    Session["email"] = email_id;
                    con.Close();
                    Response.Redirect("campanyhome.aspx");
                    //alert.Text = "*Enter Correct User Name and Password.";
                }
                else if (type == "2")
                {
                    Session["depart"] = depart;
                    Session["userid"] = usid;
                   
                    Session["email"] = email_id;
                    con.Close();
                    Response.Redirect("studenthome.aspx");
                }
                else if (type == "3")
                {
                    Session["userid"] = usid;
                    Session["email"] = email_id;
                    con.Close();
                    Response.Redirect("tpohome.aspx");
                }
            }
            con.Close();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                 "alert('Error occured : " + ex.Message + "');", true);
        }
    }
}