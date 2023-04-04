<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="HospitalMS.Views.Admin.WebForm1" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid"   >
        <div class="row">
            <div class="col-md-3">
                <h2>Doktor Bilgileri</h2>
 <form>
  <div class="mb-3"  >
    <label for="DocNameTb" class="form-label">Doktor Adı</label>
    <input type="text" class="form-control" id="DocNameTb" runat="server" placeholder="Enter name">
  </div>

 <div class="mb-3">
    <label for="DocPhoneTb" class="form-label">Telefon</label>
    <input type="text" class="form-control" id="DocPhoneTb" runat="server" placeholder="Enter phone">
  </div>

 <div class="mb-3">
    <label for="DocExpTb" class="form-label">Deneyim</label>
    <input type="text" class="form-control" id="DocExpTb" runat="server" placeholder="Enter experience">
  </div>

  <div class="mb-3">
    <label for="SpecialisationTb" class="form-label">Uzmanlık</label>
    <input type="text" class="form-control" id="SpecialisationTb" runat="server"  placeholder="Enter specialisation">
  </div>

  <div class="mb-3">
    <label for="PasswordTb" class="form-label">Password</label>
    <input type="text" class="form-control" id="PasswordTb" runat="server" placeholder="Enter password">
  </div>

 <div class="mb-3" >
    <label for="GenderCb" class="form-label">Cinsiyet</label>
     <asp:DropDownList ID="GenderCb" runat="server"  class="form-control">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
         
         </asp:DropDownList>
   
  </div>

<div class="mb-3">
    <label for="AddressTb" class="form-label">Adres</label>
    <input type="text" class="form-control" id="AddressTb" runat="server" placeholder="Enter address">
  </div>

<div class="mb-3">
    <label for="DOBTb" class="form-label">Doğum Tarihi</label>
    <input type="date" class="form-control" id="DOBTb" runat="server">
  </div>

 <div class="mb-3">
    <label for="EmailTb" class="form-label">Email</label>
    <input type="email" class="form-control" id="EmailTb" runat="server" placeholder="Enter email">
  </div>

  <label runat="server" id="ErrMsg" class="text-danger"> </label> <br />
  <asp:Button ID="EditBtn" runat="server" Text="Düzenle" class="btn btn-warning" OnClick="EditBtn_Click"  />
  <asp:Button ID="AddBtn" runat="server" Text="Kaydet" class="btn btn-primary" OnClick="AddBtn_Click"  />
  <asp:Button ID="DeleteBtn" runat="server" Text="Sil" class="btn btn-danger" OnClick="DeleteBtn_Click"  />
 
 
</form>
            </div>
             <div class="col-md-9">
                 <div class="row">
                     <div class="col">
                       
                         <img src="../../Assets/Images/doktor.jpg" height="400px" width="100%" class="rounded"   />
                       
                     </div>
                 </div>
                  <div class="row">
                     <div class="col">
                         <h1>Doktor Bilgileri</h1>
                         <asp:GridView ID="DoctorGV" class="table table-hover " runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateSelectButton="True" OnSelectedIndexChanged="DoctorGV_SelectedIndexChanged">
                             <FooterStyle BackColor="#CCCCCC" />
                             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                             <RowStyle BackColor="White" />
                             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                             <SortedAscendingHeaderStyle BackColor="#808080" />
                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                             <SortedDescendingHeaderStyle BackColor="#383838" />
                         </asp:GridView>
                     </div>
                 </div>
                </div>
        </div>

    </div>
</asp:Content>
