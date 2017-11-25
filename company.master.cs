using System;
using System.Web.UI;

public partial class campany : MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
        }
        else
        {
            Response.Redirect("login.aspx?alert=Kindly Login to access this page.");
        }
    }

    protected void logout_OnServerClick(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["campany_name"] = null;
        Response.Redirect("login.aspx");
    }
}