using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalMS.Views.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowDoctors();
        }
        private void ShowDoctors()
        {
            string Query = "Select * from DoctorTbl";
            DoctorGV.DataSource = Con.GetDatas(Query);
            DoctorGV.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string DocName = DocNameTb.Value;
                string DocPhone = DocPhoneTb.Value;
                string DocExp = DocExpTb.Value;
                string DocSpec = SpecialisationTb.Value;
                string DocGen = GenderCb.SelectedItem.ToString();
                string DocAdd = AddressTb.Value;
                string DocDOB = DOBTb.Value;
                string DocPass = PasswordTb.Value;
                string DocEmail = EmailTb.Value;


                string Query = "insert into DoctorTbl values('{0}','{1}',{2},'{3}','{4}','{5}','{6}','{7}', '{8}')";
                Query = string.Format(Query, DocName, DocPhone, DocExp, DocSpec, DocGen, DocAdd, DocDOB, DocPass, DocEmail);
                Con.SetDatas(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doktor Eklendi!!";

                DocNameTb.Value = "";
                DocPhoneTb.Value = "";
                AddressTb.Value = "";
                DocExpTb.Value = "";
                PasswordTb.Value = "";
                SpecialisationTb.Value = "";
                GenderCb.SelectedIndex = -1;
                EmailTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        int Key = 0;
        protected void DoctorGV_SelectedIndexChanged(object sender, EventArgs e)
        {

            DocNameTb.Value = DoctorGV.SelectedRow.Cells[2].Text;
            DocPhoneTb.Value = DoctorGV.SelectedRow.Cells[3].Text;
            DocExpTb.Value = DoctorGV.SelectedRow.Cells[4].Text;
            SpecialisationTb.Value = DoctorGV.SelectedRow.Cells[5].Text;
            GenderCb.SelectedItem.Value = DoctorGV.SelectedRow.Cells[6].Text;
            AddressTb.Value = DoctorGV.SelectedRow.Cells[7].Text;
            DOBTb.Value = DoctorGV.SelectedRow.Cells[8].Text;
            PasswordTb.Value = DoctorGV.SelectedRow.Cells[9].Text;
            EmailTb.Value = DoctorGV.SelectedRow.Cells[10].Text;
            if (DocNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(DoctorGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DocNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Doktor Seçin!!!";
                }
                else
                {
                    string Query = "delete from DoctorTbl where DocId={0}";
                    Query = string.Format(Query, DoctorGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowDoctors();
                    ErrMsg.InnerText = "Doktor Silindi!!!";
                    Key = 0;
                    DocNameTb.Value = "";
                    DocPhoneTb.Value = "";
                    DocExpTb.Value = "";
                    AddressTb.Value = "";
                    PasswordTb.Value = "";
                    SpecialisationTb.Value = "";
                    GenderCb.SelectedIndex = -1;
                    EmailTb.Value = "";
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
                string DocName = DocNameTb.Value;
                string DocPhone = DocPhoneTb.Value;
                string DocExp = DocExpTb.Value;
                string DocSpec = SpecialisationTb.Value;
                string DocGen = GenderCb.SelectedItem.ToString();
                string DocAdd = AddressTb.Value;
                string DocDOB = DOBTb.Value;
                string DocPass = PasswordTb.Value;
                string DocEmail = EmailTb.Value;

                string Query = "update DoctorTbl set DocName = '{0}',DocPhone = '{1}', DocExp = '{2}',DocSpec = '{3}',DocGen = '{4}',DocAdd = '{5}',DocDOB = '{6}',DocPass = '{7}',DocEmail = '{8}' where DocId = {9} ";
                Query = string.Format(Query, DocName, DocPhone, DocExp, DocSpec, DocGen, DocAdd, DocDOB, DocPass, DocEmail, DoctorGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doktor Güncellendi!!";

                DocNameTb.Value = "";
                DocPhoneTb.Value = "";
                AddressTb.Value = "";
                DocExpTb.Value = "";
                PasswordTb.Value = "";
                SpecialisationTb.Value = "";
                GenderCb.SelectedIndex = -1;
                EmailTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }
    }
}