﻿using HospitalMS.Views.Admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalMS.Views.Receptionist
{
    public partial class Patients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowPatient();
        }
        Models.Functions Con;

        private void ShowPatient()
        {
            string Query = "Select * from PatientTbl";
            PatientList.DataSource = Con.GetDatas(Query);
            PatientList.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string User = Session["uid"] as string;
                string PatName = PatNameTb.Value;
                string PatPhone = PatPhoneTb.Value;
                string PatGen = GenderCb.SelectedItem.Value;
                string PatDOB = DOBTb.Value;
                string PatAdd = AddressTb.Value;
                string PatAllergies = AllergyTb.Value;
                



                string Query = "insert into PatientTbl values('{0}','{1}','{2}','{3}','{4}','{5}', {6})";
                Query = string.Format(Query, PatName, PatPhone, PatGen, PatDOB, PatAdd, PatAllergies, User);
                Con.SetDatas(Query);
                ShowPatient();
                ErrMsg.InnerText = "Hasta Eklendi!!";

                PatNameTb.Value = "";
                PatPhoneTb.Value = "";
                GenderCb.SelectedIndex = -1;
                DOBTb.Value = "";
                AddressTb.Value = "";
                AllergyTb.Value = "";

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void PatientList_SelectedIndexChanged(object sender, EventArgs e)
        {

            PatNameTb.Value = PatientList.SelectedRow.Cells[2].Text;
            PatPhoneTb.Value = PatientList.SelectedRow.Cells[3].Text;
            GenderCb.SelectedItem.Value = PatientList.SelectedRow.Cells[4].Text;
            DOBTb.Value = PatientList.SelectedRow.Cells[5].Text;
            AddressTb.Value = PatientList.SelectedRow.Cells[6].Text;
            AllergyTb.Value = PatientList.SelectedRow.Cells[7].Text;

            if (PatNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(PatientList.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PatNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Hasta Seçin!!!";
                }
                else
                {
                    string Query = "delete from PatientTbl where PatId={0}";
                    Query = string.Format(Query, PatientList.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowPatient();
                    ErrMsg.InnerText = "Hasta Silindi!!!";
                    Key = 0;
                    PatNameTb.Value = "";
                    PatPhoneTb.Value = "";
                    GenderCb.SelectedIndex = -1;
                    DOBTb.Value = "";
                    AddressTb.Value = "";
                    AllergyTb.Value = "";
                    
                }

            }
            catch (Exception Ex)
            {

                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {

            try
            {
                string PatName = PatNameTb.Value;
                string PatPhone = PatPhoneTb.Value;
                string PatGen = GenderCb.SelectedItem.Value;
                string PatDOB = DOBTb.Value;
                string PatAdd = AddressTb.Value;
                string PatAllergies = AllergyTb.Value;
              

                string Query = "update PatientTbl set PatName = '{0}',PatPhone = '{1}', PatGen = '{2}',PatDOB = '{3}',PatAdd = '{4}',PatAllergies = '{5}' where PatId = {6} ";
                Query = string.Format(Query, PatName, PatPhone, PatGen, PatDOB, PatAdd, PatAllergies, PatientList.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowPatient();
                ErrMsg.InnerText = "Hasta Güncellendi!!";

                PatNameTb.Value = "";
                PatPhoneTb.Value = "";
                GenderCb.SelectedIndex = -1;
                DOBTb.Value = "";
                AddressTb.Value = "";
                AllergyTb.Value = "";
             
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
    }
