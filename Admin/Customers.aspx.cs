using Admin.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Admin.Models.EMSclass;

namespace Admin
{
    public partial class Customers1 : System.Web.UI.Page
    {
        emsdal objDal = new emsdal();
        AllCustomerDetails objpi = new AllCustomerDetails();
        private bool inactivecustomerslbl;

        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!IsPostBack)
            //{
            //    DataSet ds = new DataSet();
            //    //ds = objDal.All_customer(objpi);
            //    //Grd_customer.DataSource = ds;
            //    //Grd_customer.DataBind();
            //}

            //Lbl_Customers.Visible = false;
            //if (!IsPostBack)
            //{
            //    BindData();
            //}
            if (!IsPostBack)
            {
                BindData();
            }
        }
        private void BindData()
        {
            string connectionString = "server=148.66.130.118;database=fresherdatacheck;user id=GVRl2;pwd=wvzir9u85r35u4l2";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select * from tbl_UserRegistration";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    gridview.DataSource = dataTable;
                    gridview.DataBind();

                }
            }
        }


        private void activecustomers()
        {
            string connectionString1 = "server=148.66.130.118;database=fresherdatacheck;user id=GVRl2;pwd=wvzir9u85r35u4l2";

            using (SqlConnection connection = new SqlConnection(connectionString1))
            {
                string query = "select * from tbl_UserRegistration";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    gridview1.DataSource = dataTable;
                    gridview1.DataBind();
                }
            }



            //protected void Btn_search_Click(object sender, EventArgs e)
            //{
            //    DataSet ds = new DataSet();
            //    EmsDal objDAL = new EmsDal();
            //    using (var client = new WebClient())
            //    {

            //        string ValidateUrl11 = ConfigurationManager.AppSettings["orderssearch"].ToString() + "text=" + txtSearch.Text;
            //        string JSonParameters1 = "";
            //        client.Headers[HttpRequestHeader.ContentType] = "application/json";
            //        string result1 = client.UploadString(ValidateUrl11, "POST", JSonParameters1);
            //        JavaScriptSerializer _json_serializer1 = new JavaScriptSerializer();
            //        DataSet myDataSet = JsonConvert.DeserializeObject<DataSet>(result1);
            //        //gridview.DataSource = myDataSet;
            //        //gridview.DataBind();


            //        if (myDataSet.Tables[0].Rows.Count > 0)
            //        {
            //            gridview.DataSource = myDataSet;
            //            gridview.DataBind();
            //        }
            //        else
            //        {

            //pnl_Customers.Visible = false;
            //Lbl_Customers.Visible = true;
        }

        protected void Active_Click(object sender, EventArgs e)
        {
           
            activecustomers();
            gridview.Visible = false;
            gridview1.Visible = true;
            labelbtn.Visible = false;
        }

        protected void Inactive_Click(object sender, EventArgs e)
        {

            activecustomers();
            gridview.Visible = false;
            gridview1.Visible = false;
            labelbtn.Visible = true;


        }
    }
}





