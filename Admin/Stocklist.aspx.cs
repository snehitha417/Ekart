using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.ServiceModel.Activities;
using System.IO;

namespace Admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();

            }
        }

        string connection1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        private void BindData()
        {
            // Connection string to your database
            //string connectionString = "server=148.66.130.118;database=fresherdatacheck;user id=GVRl2;pwd=wvzir9u85r35u4l2";
            using (SqlConnection connection = new SqlConnection(connection1))
            {
                // SQL query to retrieve data from the database
                //string query = "SELECT * FROM tbl_StockEntry";

                using (SqlCommand command = new SqlCommand("pr_StockEntry", connection))
                {
                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable); 

                    gridView.DataSource = dataTable;
                    gridView.DataBind();
                }
            }
        }
        protected void gridView_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
           

            if (e.CommandName == "edit")
            {
                int SEId = Convert.ToInt32(e.CommandArgument);
                
                Dal dl = new Dal();
                DataSet ds = dl.get_tbl_StockEdit(SEId);
              
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["date"] =Convert.ToDateTime(ds.Tables[0].Rows[0]["SEDate"].ToString()).ToString("yyyy-MM-dd");
                    Session["name"] = ds.Tables[0].Rows[0]["ItemName"].ToString();
                    Session["id"] = ds.Tables[0].Rows[0]["ItemId"].ToString();
                    Session["brand"] = ds.Tables[0].Rows[0]["BrandName"].ToString();
                    Session["Model"] = ds.Tables[0].Rows[0]["Model"].ToString();
                    Session["Qty"] = ds.Tables[0].Rows[0]["Quantity"].ToString();
                    Session["price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    Session["loadno"] = ds.Tables[0].Rows[0]["LoadNo"].ToString();
                    Session["Description"] = ds.Tables[0].Rows[0]["Discrption"].ToString();
                    Session["Rating"]= ds.Tables[0].Rows[0]["Rating"].ToString();
                    Session["Offers"] = ds.Tables[0].Rows[0]["Offers"].ToString();
                    if (!string.IsNullOrEmpty(ds.Tables[0].Rows[0]["ImgUrl"].ToString()))
                    {
                        Session["filePath"] = Server.MapPath("~/Uploads/") + ds.Tables[0].Rows[0]["ImgUrl"].ToString(); 
                      
                    }

                    Response.Redirect("StockEntry.aspx?ID=" +SEId +"&type=edit");
                }
            }

        }
        
        protected void click_remove(object sender, EventArgs e)
        { 

            Button btn = (sender as Button);
            RepeaterItem item = btn.NamingContainer as RepeaterItem;
            int index = item.ItemIndex;
            Label hdn = item.FindControl("lblseid") as Label;
            int seid = Convert.ToInt32(hdn.Text);

           
            string connectionString = "server=148.66.130.118;database=fresherdatacheck;user id=GVRl2;pwd=wvzir9u85r35u4l2";

           
            {
                // SQL query to retrieve data from the database
                string deleteCommand = "DELETE FROM tbl_StockEntry where SEId="+ seid;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    using (SqlCommand command = new SqlCommand(deleteCommand, con))
                    {
                        // Add the parameter for the record ID
                        //command.Parameters.AddWithValue("@RecordId", SEId);

                        
                        int rowsAffected = command.ExecuteNonQuery();
                        

                        // Check if the deletion was successful
                        if (rowsAffected > 0)
                        {
                            
                            ScriptManager.RegisterStartupScript(this, typeof(string), "Send", "alert('successfully Removed');", true);
                            BindData();
                        }
                        else
                        {
                            // No rows affected, data removal failed
                            Response.Write("Not Removed");    
                        }
                    }
                    con.Close();
                }
            }
        }
        protected void ADDItem_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockentry.aspx");
        }
        protected void btnyes_Click(object sender, EventArgs e)
        {

        }
        protected void btn_Cancel(object sender, EventArgs e)
        {
           BindData();
        }
      
    }
}

