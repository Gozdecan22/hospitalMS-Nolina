<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Laboratuvar.aspx.cs" Inherits="HospitalMS.Views.Admin.Laboratuvar"  EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
 <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>Laboratuvar Bilgileri</h2>
 <form>
  <div class="mb-3">
    <label for="LabNameTb" class="form-label">Name</label>
    <input type="text" class="form-control" id="LabNameTb" runat="server" placeholder="Enter name"/>
  </div>

 <div class="mb-3">
    <label for="EmailTb" class="form-label">Email</label>
    <input type="email" class="form-control" id="EmailTb" runat="server"  placeholder="Enter email"/>
  </div>

 <div class="mb-3">
    <label for="PasswordTb" class="form-label">Password</label>
    <input type="text" class="form-control" id="PasswordTb" runat="server" placeholder="Enter password"/>
  </div>


 <div class="mb-3">
    <label for="PhoneTb" class="form-label">Telefon</label>
    <input type="text" class="form-control" id="PhoneTb" runat="server" placeholder="Enter number"/>
  </div>

<div class="mb-3">
    <label for="LabAddressTb" class="form-label">Adres</label>
    <input type="text" class="form-control" id="LabAddressTb" runat="server" placeholder="Enter address"/>
  </div>

<div class="mb-3">
    <label for="GenderCb" class="form-label">Cinsiyet</label>
      <asp:DropDownList ID="GenderCb" runat="server"  class="form-control">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
         
         </asp:DropDownList>
  </div>
  
 
  <label runat="server" id="ErrMsg" class="text-danger"> </label> <br />
  <asp:Button ID="EditBtn" runat="server" Text="Düzenle" class="btn btn-warning" OnClick="EditBtn_Click"  />
  <asp:Button ID="AddBtn" runat="server" Text="Kaydet" class="btn btn-primary" OnClick="AddBtn_Click"  />
  <asp:Button ID="DeleteBtn" runat="server" Text="Sil" class="btn btn-danger" OnClick="DeleteBtn_Click"  />
 
</form>
            </div>
             <div class="col-md-8">
                 <div class="row">
                     <div class="col">
                       
                         <img src="../../Assets/Images/lab.jpg" height="400px" width="100%" class="rounded"/>
                       
                     </div>
                 </div>
                  <div class="row">
                     <div class="col">
                         <h1>Laboratuvar Bilgileri</h1>
                         <asp:GridView ID="LaboratuvarGV" class="table table-hover " runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="LaboratuvarGV_SelectedIndexChanged" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                             <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                             <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                             <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                             <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#FFF1D4" />
                             <SortedAscendingHeaderStyle BackColor="#B95C30" />
                             <SortedDescendingCellStyle BackColor="#F1E5CE" />
                             <SortedDescendingHeaderStyle BackColor="#93451F" />
                         </asp:GridView>
                     </div>
                 </div>
                </div>
        </div>

    </div>
</asp:Content>
