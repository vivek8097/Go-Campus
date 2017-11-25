using System;
using System.Web.UI;

public partial class campany_criteria : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["campany_name"].ToString();
    }
}