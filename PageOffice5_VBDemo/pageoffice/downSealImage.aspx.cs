using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class pageoffice_showImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string imageID = Request.QueryString["ID"];
        string connstring = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|seal.mdb";
        OleDbConnection conn = new OleDbConnection(connstring);
        conn.Open();
        string sql = "select SealImage from Seals where ID=" + imageID;
        OleDbCommand cmd = new OleDbCommand(sql, conn);

        cmd.CommandType = CommandType.Text;
        OleDbDataReader reader;

        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            long num = reader.GetBytes(0, 0, null, 0, Int32.MaxValue);
            Byte[] b = new Byte[num];
            reader.GetBytes(0, 0, b, 0, b.Length);
            Response.ContentType = "image/png"; //其他文件格式换成相应类型即可 application/x-excel, application/ms-powerpoint, application/pdf 
            Response.AddHeader("Content-Disposition", "attachment; filename=down_" + imageID + ".png");//其他文件格式换成相应类型的filename
            Response.AddHeader("Content-Length", num.ToString());
            this.Response.Clear();
            System.IO.Stream fs = this.Response.OutputStream;
            fs.Write(b, 0, b.Length);
            fs.Close();

        }
        reader.Close();
        conn.Close();
        Response.Flush();
        Response.End();
    }

    public bool IsReusable
    {
        get { return false; }
    }
}
