using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack&Request.QueryString["CategoryId"]!=null)
        {
            int categoryid = int.Parse(Request.QueryString["CategoryId"]);
            MyPetShopDataContext db = new MyPetShopDataContext();
            var category = (from r in db.Category
                            where r.CategoryId == categoryid
                            select r).First();
            TextBox1.ReadOnly = true;
            TextBox1.Text = category.CategoryId.ToString();
            TextBox2.Text = category.Name;
            TextBox3.Text = category.Descn;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var category = (from r in db.Category
                        where r.CategoryId == int.Parse(TextBox1.Text)
                        select r).First();
        category.Name = TextBox2.Text;
        category.Descn = TextBox3.Text;
        db.SubmitChanges();
        Response.Redirect("~/GridUpdate.aspx");
    }
}