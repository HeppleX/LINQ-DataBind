using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LINQSqlQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var products = from r in db.Product
                       select r;
        GridView1.DataSource = products;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                       select new 
                       {
                           r.ProductId,
                           r.CategoryId,
                           r.Name
                       };
        GridView1.DataSource = results;
        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      where r.UnitCost>20
                      select r;
        GridView1.DataSource = results;
        GridView1.DataBind();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      orderby r.UnitCost descending
                      select r;
        GridView1.DataSource = results;
        GridView1.DataBind();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      group r by r.CategoryId;
        foreach(var g in results)
        {
            if(g.Key==5)
            {
                var results2 = from r in g
                               select r;
                GridView1.DataSource = results2;
                GridView1.DataBind();
            }
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      group r by r.CategoryId into g
                      select new
                      {
                          key = g.Key,
                          count = g.Count(),
                          Max=g.Max(p => p.ListPrice),
                          Min=g.Min(p => p.ListPrice),
                          Avg=g.Average(p => p.ListPrice)
                      };
        GridView1.DataSource = results;
        GridView1.DataBind();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      select new
                      {
                         r.ProductId,
                         r.CategoryId,
                         CategoryName=r.Category.Name
                      };
        GridView1.DataSource = results;
        GridView1.DataBind();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from product in db.Product
                      join category in db.Category on product.CategoryId
                      equals category.CategoryId
                      select new
                      {
                          product.ProductId,
                          product.CategoryId,
                          CategoryName = category.Name
                      };
        GridView1.DataSource = results;
        GridView1.DataBind();
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Product
                      where System.Data.Linq.SqlClient.SqlMethods.Like(r.Name, "%fly%")
                      select r;
        GridView1.DataSource = results;
        GridView1.DataBind();
    }
}