using HospitalMS.Views.Admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalMS.Views.Laboratorian
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Con = new Models.Functions();
            ShowTest();
        }
        Models.Functions Con;

        private void ShowTest()
        {
            string Query = "Select * from LabTestTbl";
            LabTestGV.DataSource = Con.GetDatas(Query);
            LabTestGV.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string User = Session["uid"] as string;
                string TestName = TestNameTb.Value;
                string TestCost = TestCostTb.Value;
              
                string Query = "insert into LabTestTbl values('{0}','{1}', {2})";
                Query = string.Format(Query, TestName, TestCost, User);
                Con.SetDatas(Query);
                ShowTest();
                ErrMsg.InnerText = "Test Eklendi!!";

                TestNameTb.Value = "";
                TestCostTb.Value = "";
              

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void LabTestGV_SelectedIndexChanged(object sender, EventArgs e)
        {

            TestNameTb.Value = LabTestGV.SelectedRow.Cells[2].Text;
          TestCostTb.Value = LabTestGV.SelectedRow.Cells[3].Text;
           
            if (TestNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(LabTestGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string TestName = TestNameTb.Value;
                string TestCost = TestCostTb.Value;


                string Query = "update LabTestTbl set TestName = '{0}',TestCost = {1} where TestId = {2} ";
                Query = string.Format(Query, TestName, TestCost, LabTestGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowTest();
                ErrMsg.InnerText = "Test Güncellendi!!";

                TestNameTb.Value = "";
                TestCostTb.Value = "";
            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {

            try
            {
                if (TestNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Test Seçin!!!";
                }
                else
                {
                    string Query = "delete from LabTestTbl where TestId={0}";
                    Query = string.Format(Query, LabTestGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowTest();
                    ErrMsg.InnerText = "Test Silindi!!!";
                    Key = 0;
                    TestNameTb.Value = "";
                    TestCostTb.Value = "";
                
                }

            }
            catch (Exception Ex)
            {

                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
    }
