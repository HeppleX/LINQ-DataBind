using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DropLINQ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            MyPetShopDataContext db = new MyPetShopDataContext();
            var results = from r in db.Category
                          select r;
            DropDownList1.DataSource = results;
            DropDownList1.DataBind();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "您选择的CategoryId为：" + DropDownList1.SelectedValue;
    }
}