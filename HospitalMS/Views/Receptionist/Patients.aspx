<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="HospitalMS.Views.Receptionist.Patients" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
 <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h2>Hasta Bilgileri</h2>
 <form>
  <div class="mb-3">
    <label for="PatNameTb" class="form-label">Name</label>
    <input type="text" class="form-control" id="PatNameTb" runat="server" placeholder="Enter name"/>
  </div>

 <div class="mb-3">
    <label for="PatPhoneTb" class="form-label">Telefon</label>
    <input type="text" class="form-control" id="PatPhoneTb" runat="server"  placeholder="Enter phone"/>
  </div>

<div class="mb-3">
    <label for="GenderCb" class="form-label">Cinsiyet</label>
      <asp:DropDownList ID="GenderCb"  class="form-control" runat="server" >
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
         
         </asp:DropDownList>
  </div>

 <div class="mb-3">
    <label for="DOBTb" class="form-label">DOB</label>
    <input type="date" class="form-control" id="DOBTb" runat="server" placeholder="Enter date"/>
  </div>
 
  
<div class="mb-3">
    <label for="AddressTb" class="form-label">Adres</label>
    <input type="text" class="form-control" id="AddressTb" runat="server" placeholder="Enter address"/>
  </div>

<div class="mb-3">
    <label for="AllergyTb" class="form-label">Alerjiler</label>
    <input type="text" class="form-control" id="AllergyTb" runat="server" placeholder="Enter allergies"/>
  </div>


 
  <label runat="server" id="ErrMsg" class="text-danger"> </label> <br />
  <asp:Button ID="EditBtn" runat="server" Text="Düzenle" class="btn btn-warning" OnClick="EditBtn_Click"   />
  <asp:Button ID="AddBtn" runat="server" Text="Kaydet" class="btn btn-primary" OnClick="AddBtn_Click"   />
  <asp:Button ID="DeleteBtn" runat="server" Text="Sil" class="btn btn-danger" OnClick="DeleteBtn_Click"   />
 
</form>
            </div>
             <div class="col-md-9">
                
                  <div class="row">
                     <div class="col">
                         <h1>Hasta Listesi</h1>
                         <asp:GridView ID="PatientList" class="table table-hover " runat="server" AutoGenerateSelectButton="True"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="PatientList_SelectedIndexChanged">
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


