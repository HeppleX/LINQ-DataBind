using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LINQSqlManagement : System.Web.UI.Page
{
    MyPetShopDataContext db = new MyPetShopDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();  
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Category category = new Category();
        category.Name = TextBox1.Text;
        category.Descn = TextBox2.Text;
        db.Category.InsertOnSubmit(category);
        db.SubmitChanges();
        Bind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var results = from r in db.Category
                      where r.CategoryId == int.Parse(TextBox3.Text)
                      select r;
        if(results!=null)
        {
            foreach(Category r in results)
            {
                r.Name = TextBox1.Text;
                r.Descn = TextBox2.Text;
            }
            db.SubmitChanges();
            Bind();
        }             
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var results = from r in db.Category
                      where r.CategoryId == int.Parse(TextBox3.Text)
                      select r;
        db.Category.DeleteAllOnSubmit(results);
        db.SubmitChanges();
        Bind();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        db.CategoryInsert(TextBox1.Text.ToString(), TextBox2.Text.ToString());
        Bind();
    }

    protected void Bind()
    {
        var results = from r in db.Category
                      select r;
        GridView1.DataSource = results;
        GridView1.DataBind();
    }
}