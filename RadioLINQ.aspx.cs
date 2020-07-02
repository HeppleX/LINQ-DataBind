using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RadioLINQ : System.Web.UI.Page
{
    MyPetShopDataContext db = new MyPetShopDataContext();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {          
            var results = from r in db.Category
                          select r;
            RadioButtonList1.DataSource = results;
            RadioButtonList1.DataBind();
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var results = from r in db.Product
                      where r.CategoryId == int.Parse(RadioButtonList1.SelectedValue)
                      select r;
        ListBox1.DataSource = results;
        ListBox1.DataBind();

    }
}