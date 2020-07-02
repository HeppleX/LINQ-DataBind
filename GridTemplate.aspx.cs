using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridTemplate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "您选择的ProductId为：";
        foreach(GridViewRow row in GridView1.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)row.FindControl("CheckBox1");
            if(CheckBox1.Checked)
            {
                Label1.Text += row.Cells[1].Text + "、";
            }
        }
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox CheckBox2 = (CheckBox)sender;
        foreach(GridViewRow row in GridView1.Rows)
        {
            CheckBox CheckBox1 = (CheckBox)row.FindControl("CheckBox1");
            CheckBox1.Checked = CheckBox2.Checked;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}