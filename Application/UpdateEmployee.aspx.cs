using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Application
{
    public partial class UpdateEmployee : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        ServiceReference1.Employee employee = new ServiceReference1.Employee();
        //MyService.Employee employee = new MyService.Employee();
        //MyService.EmployeeServiceClient client = new MyService.EmployeeServiceClient();

        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SetPanel(true, false);
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
            {
                employee.EmpID = txtSearch.Text.Trim();
                ds = new DataSet();
                ds = client.SearchEmployeeRecord(employee);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblEmpID.Text = ds.Tables[0].Rows[0]["EmpID"].ToString();
                    txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                    txtPhone.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
                    SetPanel(false, true);

                }
                else
                {
                    lblSearchResult.Text = "Please Enter Employee ID !";
                    lblSearchResult.ForeColor = System.Drawing.Color.White;
                }

            }
            else
            {
                lblSearchResult.Text = "Please Enter Employee ID !";
            }
        }

        private void SetPanel(bool pSearch, bool pUpdate)
        {
            panSearch.Visible = pSearch;
            panUpdate.Visible = pUpdate;
        }

        protected void bntReset_Click(object sender, EventArgs e)
        {
            SetPanel(true, false);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            SetPanel(true, false);
            lblMsg.Text = "";
        }

        protected void bntUpdated_Click(object sender, EventArgs e)
        {
            employee.EmpID = lblEmpID.Text.Trim();
            employee.Email = txtEmail.Text;
            employee.Phone = txtPhone.Text;

            string result = client.UpdateEmployeeContact(employee);
            lblSearchResult.Text = result;
            SetPanel(true, false);
            txtPhone.Text = "";
            txtEmail.Text = "";
            lblEmpID.Text = "";

        }
    }
}