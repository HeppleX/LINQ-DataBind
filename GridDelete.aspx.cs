using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.DataRow)
        {
            try
            {
                LinkButton linkButton = (LinkButton)e.Row.Cells[4].Controls[0];
                linkButton.OnClientClick = "return confirm('您真要删除分类名为" + e.Row.Cells[1].Text + "的记录吗？');";
            }
            catch
            {

            }
        }
    }
}