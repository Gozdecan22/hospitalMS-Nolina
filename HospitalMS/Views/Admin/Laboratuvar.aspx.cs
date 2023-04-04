using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalMS.Views.Admin
{
    public partial class Laboratuvar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowLaboratuvar();
        }
        Models.Functions Con;

        private void ShowLaboratuvar()
        {
            string Query = "Select * from LaboratorianTbl";
            LaboratuvarGV.DataSource = Con.GetDatas(Query);
            LaboratuvarGV.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = LabNameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAddress = LabAddressTb.Value;
                string LabGen = GenderCb.SelectedItem.Value;
                
              
              
                string Query = "insert into LaboratorianTbl values('{0}','{1}',{2},'{3}','{4}','{5}')";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAddress, LabGen);
                Con.SetDatas(Query);
                ShowLaboratuvar();
                ErrMsg.InnerText = "Laboratuvar Görevlisi Eklendi!!";

                LabNameTb.Value = "";
                EmailTb.Value = "";
                PasswordTb.Value = "";
                PhoneTb.Value = "";
                LabAddressTb.Value = "";
                GenderCb.SelectedIndex = -1;

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void LaboratuvarGV_SelectedIndexChanged(object sender, EventArgs e)
        {

            LabNameTb.Value = LaboratuvarGV.SelectedRow.Cells[2].Text;
            EmailTb.Value = LaboratuvarGV.SelectedRow.Cells[3].Text;
            PasswordTb.Value = LaboratuvarGV.SelectedRow.Cells[4].Text;
            PhoneTb.Value = LaboratuvarGV.SelectedRow.Cells[5].Text;
            LabAddressTb.Value = LaboratuvarGV.SelectedRow.Cells[6].Text;
            GenderCb.SelectedItem.Value = LaboratuvarGV.SelectedRow.Cells[7].Text;
          
            if (LabNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(LaboratuvarGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LabAddressTb.Value == "")
                {
                    ErrMsg.InnerText = "Laboratuvar Görevlisi Seçin!!!";
                }
                else
                {
                    string Query = "delete from LaboratorianTbl where LabId={0}";
                    Query = string.Format(Query, LaboratuvarGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowLaboratuvar();
                    ErrMsg.InnerText = "Laboratuvar Görevlisi Silindi!!!";
                    Key = 0;
                    LabNameTb.Value = "";
                    EmailTb.Value = "";
                    PasswordTb.Value = "";
                    PhoneTb.Value = "";
                    LabAddressTb.Value = "";
                    GenderCb.SelectedIndex = -1;
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
                string LabName = LabNameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAddress = LabAddressTb.Value;
                string LabGen = GenderCb.SelectedItem.Value;
               
                string Query = "update LaboratorianTbl set LabName = '{0}',LabEmail = '{1}', LabPass = '{2}',LabPhone = '{3}',LabAddress = '{4}',LabGen = '{5}' where LabId = {6} ";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAddress, LabGen, LaboratuvarGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowLaboratuvar();
                ErrMsg.InnerText = "Laboratuvar Görevlisi Güncellendi!!";

                LabNameTb.Value = "";
                EmailTb.Value = "";
                PasswordTb.Value = "";
                PhoneTb.Value = "";
                LabAddressTb.Value = "";
                GenderCb.SelectedIndex = -1;
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}