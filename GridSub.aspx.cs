using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridSub : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      where r.CategoryId == int.Parse(Request.QueryString["CategoryId"])
                      select r;
        GridView1.DataSource = results;
        GridView1.DataBind();
    }
}