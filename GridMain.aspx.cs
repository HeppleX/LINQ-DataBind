﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            MyPetShopDataContext db = new MyPetShopDataContext();
            var results = from r in db.Category
                          select r;
            GridView1.DataSource = results;
            GridView1.DataBind();
        }       
    }
}