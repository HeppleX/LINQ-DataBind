using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridPageSort : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        Label1.Text = "当前页为第" + (GridView1.PageIndex + 1).ToString() + "页,共有"
        + (GridView1.PageCount).ToString() + "页";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = int.Parse(DropDownList1.SelectedValue);
        GridView1.DataBind();
    }
}