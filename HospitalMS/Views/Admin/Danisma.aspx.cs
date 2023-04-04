using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HospitalMS.Views.Admin
{

    public partial class Danışma : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowDanisma();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowDanisma()
        {
            string Query = "Select * from ReceptionistTbl";
            DanismaGV.DataSource = Con.GetDatas(Query);
            DanismaGV.DataBind();
        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RName = RecNameTb.Value;
                string REmail = RecEmailTb.Value;
                string RAdd =   AddressTb.Value;
                string RPhone = PhoneTb.Value;
                string Password = PasswordTb.Value;
                string Query = "insert into ReceptionistTbl values('{0}','{1}','{2}','{3}','{4}')";
                Query = string.Format(Query, RName, REmail, RAdd, RPhone, Password);
                Con.SetDatas(Query);
                ShowDanisma();
                ErrMsg.InnerText = "Resepsiyonist Eklendi!!";

                RecNameTb.Value = "";
                RecEmailTb.Value = "";
                AddressTb.Value = "";
                PhoneTb.Value = "";
                PasswordTb.Value = "";
            }
            catch(Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }


        int Key = 0;
        protected void DanismaGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            RecNameTb.Value = DanismaGV.SelectedRow.Cells[2].Text ;
            RecEmailTb.Value = DanismaGV.SelectedRow.Cells[3].Text;
            AddressTb.Value = DanismaGV.SelectedRow.Cells[4].Text;
            PhoneTb.Value = DanismaGV.SelectedRow.Cells[5].Text;
            PasswordTb.Value = DanismaGV.SelectedRow.Cells[6].Text;
            if (RecNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(DanismaGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(RecNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Resepsiyonist Seçin!!!";
                }
                else
                {
                    string Query = "delete from ReceptionistTbl where RecId={0}";
                    Query = string.Format(Query, DanismaGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowDanisma();
                    ErrMsg.InnerText = "Resepsiyonist Silindi!!!";
                    Key = 0;
                    RecNameTb.Value = "";
                    RecEmailTb.Value = "";
                    AddressTb.Value = "";
                    PhoneTb.Value = "";
                    PasswordTb.Value = "";
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
                string RName = RecNameTb.Value;
                string REmail = RecEmailTb.Value;
                string RAdd = AddressTb.Value;
                string RPhone = PhoneTb.Value;
                string Password = PasswordTb.Value;
                string Query = "update ReceptionistTbl set RecName = '{0}',RecEmail = '{1}',RecAdd = '{2}',RecPhone = '{3}',RecPassword = '{4}' where RecId = {5} ";
                Query = string.Format(Query, RName, REmail, RAdd, RPhone, Password, DanismaGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowDanisma();
                ErrMsg.InnerText = "Resepsiyonist Güncellendi!!";

                RecNameTb.Value = "";
                RecEmailTb.Value = "";
                AddressTb.Value = "";
                PhoneTb.Value = "";
                PasswordTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }
    }
}