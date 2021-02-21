using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Application
{
    public partial class DeleteEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGridData();
            }
        }

        //Bind Grid  
        public void BindGridData()
        {
            DataSet ds = new DataSet();
            //ServiceReference1.Employee employee = new ServiceReference1.Employee();
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            //MyService.EmployeeServiceClient client = new MyService.EmployeeServiceClient();
            ds = client.GetEmployeeRecords();
            grdEmployees.DataSource = ds;
            grdEmployees.DataBind();
        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            //MyService.EmployeeServiceClient client = new MyService.EmployeeServiceClient();

            ServiceReference1.Employee employee = new ServiceReference1.Employee();
            //MyService.Employee employee = new MyService.Employee();
            employee.EmpID = txtSearch.Text.Trim();
            string result = client.DeleteRecords(employee);

            if (result == "Record Deleted Successfully!")
            {
                BindGridData();
                lblSearchResult.Text = "Employee ID: " + txtSearch.Text.Trim() + "Deleted Successfully!";
            }
            else
            {
                lblSearchResult.Text = "Employee ID: " + txtSearch.Text.Trim() + "Not Found!";
            }
        }
    }
}