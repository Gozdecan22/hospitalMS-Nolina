using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalMS.Views.Doctors
{
    public partial class Prescriptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Con = new Models.Functions();
            ShowPrescription();
            GetTest();
            GetPatients();
        }
        Models.Functions Con;

        private void ShowPrescription()
        {
            string Query = "Select * from PrescriptionTbl";
            PrescriptionGV.DataSource = Con.GetDatas(Query);
            PrescriptionGV.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void GetTest()
        {
            string Query = "select * from LabTestTbl";
            TestCb.DataTextField = Con.GetDatas(Query).Columns["TestName"].ToString();
            TestCb.DataValueField = Con.GetDatas(Query).Columns["TestId"].ToString();
            TestCb.DataSource = Con.GetDatas(Query);
            TestCb.DataBind();
        
        }
        private void GetPatients()
        {
            string Query = "select * from PatientTbl";
            PatientCb.DataTextField = Con.GetDatas(Query).Columns["PatName"].ToString();
            PatientCb.DataValueField = Con.GetDatas(Query).Columns["PatId"].ToString();
            PatientCb.DataSource = Con.GetDatas(Query);
            PatientCb.DataBind();

        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                int Doctor = 301;
                string Patient = PatientCb.SelectedValue.ToString();
                string Medicine = MedTb.Value;
                string Test = TestCb.SelectedValue.ToString();
                string Cost = CostTb.Value;



                string Query = "insert into PrescriptionTbl values({0},{1},'{2}',{3},{4})";
                Query = string.Format(Query, Doctor, Patient, Medicine, Test, Cost);
                Con.SetDatas(Query);
                ShowPrescription();
                ErrMsg.InnerText = "Reçete Eklendi!!";

                MedTb.Value = "";
                CostTb.Value = "";
                PatientCb.SelectedIndex = -1;
                TestCb.SelectedIndex = -1;

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}