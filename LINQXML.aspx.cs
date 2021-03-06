﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class LINQXML : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/Book.xml");
        XDocument doc = new XDocument
            (
              new XDeclaration("1.0", "utf-8", "yes"),
              new XComment("BOOK示例"),
              new XElement("Books",
               new XElement("Book",
                new XAttribute("ID", "100"),
                new XElement("BookName", "ASP.NET高级编程"),
                new XElement("Price", 156)
               ),
               new XElement("Book",
                new XAttribute("ID", "101"),
                new XElement("BookName", "精通LINQ数据访问"),
                new XElement("Price", 39.8)
               ),
               new XElement("Book",
                new XAttribute("ID", "102"),
                new XElement("BookName", "ASP.NET教程"),
                new XElement("Price", 41.6)
                           )
                         )
        );
        doc.Save(xmlFilePath);
        Response.Redirect("http://localhost:55036/Book.xml");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/Book.xml");
        XElement els = XElement.Load(xmlFilePath);
        var elements = from el in els.Elements("Book")
                       where (string)el.Element("BookName") == "ASP.NET高级编程"
                       select el;
        foreach(XElement el in elements)
        {
            Response.Write(el.Name + "的ID为:" + el.Attribute("ID").Value + "<br/>");
            Response.Write("书名为："+el.Element("BookName").Value + "<br/>");
            Response.Write("价格为：" + el.Element("Price").Value);
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/Book.xml");
        XElement els = XElement.Load(xmlFilePath);
        XElement el = new XElement
            ("Book",
             new XAttribute("ID", "104"),
             new XElement("BookName", "C#高级编程"),
             new XElement("Price", 119.8)
             );
        els.Add(el);
        els.Save(xmlFilePath);
        Response.Redirect("http://localhost:55036/Book.xml");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/Book.xml");
        XElement els = XElement.Load(xmlFilePath);
        var elements = from el in els.Elements("Book")
                       where el.Attribute("ID").Value == "101"
                       select el;
        foreach (XElement el in elements)
        {
            el.SetAttributeValue("ID", "101");
            el.ReplaceNodes
                (
                 new XElement("BookName", "基于C#精通LINQ数据访问"),
                 new XElement("Price", 45.9)
                 );
        }
        els.Save(xmlFilePath);
        Response.Redirect("http://localhost:55036/Book.xml");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/Book.xml");
        XElement els = XElement.Load(xmlFilePath);
        var elements = from el in els.Elements("Book")
                       where el.Attribute("ID").Value == "102"
                       select el;
        foreach (XElement el in elements)
        {
            el.Remove();
        }
        els.Save(xmlFilePath);
        Response.Redirect("http://localhost:55036/Book.xml");
    }
}