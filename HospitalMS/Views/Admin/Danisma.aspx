<%@ Page Title="" Language="C#" CodePage="28599" Debug="true" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Danisma.aspx.cs" Inherits="HospitalMS.Views.Admin.Danışma" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server" >
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>Resepsiyonist Bilgileri</h2>
 <form>
  <div class="mb-3">
    <label for="RecNameTb" class="form-label">Name</label>
    <input type="text" class="form-control" id="RecNameTb" runat="server" required="required" placeholder="Enter name"/>
  </div>

 <div class="mb-3">
    <label for="RecEmailTb" class="form-label">Email</label>
    <input type="email" class="form-control" id="RecEmailTb" runat="server" required="required"  placeholder="Enter email"/>
  </div>
<div class="mb-3">
    <label for="AddressTb" class="form-label">Adres</label>
    <input type="text" class="form-control" id="AddressTb" runat="server" required="required" placeholder="Enter address"/>
  </div>
<div class="mb-3">
    <label for="PhoneTb" class="form-label">Telefon</label>
    <input type="text" class="form-control" id="PhoneTb" runat="server" required="required"  placeholder="Enter number"/>
  </div>
 <div class="mb-3">
    <label for="PasswordTb" class="form-label">Password</label>
    <input type="text" class="form-control" id="PasswordTb" runat="server" required="required" placeholder="Enter password"/>
  </div>
     <label runat="server" id="ErrMsg" class="text-danger"> </label> <br />
  <asp:Button ID="EditBtn" runat="server" Text="Düzenle" class="btn btn-warning" OnClick="EditBtn_Click" />
  <asp:Button ID="AddBtn" runat="server" Text="Kaydet" class="btn btn-primary" OnClick="AddBtn_Click" />
  <asp:Button ID="DeleteBtn" runat="server" Text="Sil" class="btn btn-danger" OnClick="DeleteBtn_Click" />
 
 
</form>
            </div>
             <div class="col-md-8">
                 <div class="row">
                     <div class="col">
                       
                         <img src="../../Assets/Images/danisma.jpg" height="400px" width="100%" class="rounded-3"/>
                       
                     </div>
                 </div>
                  <div class="row">
                     <div class="col">
                         <h1>Danışma Bilgileri</h1>
                         <asp:GridView ID="DanismaGV" class="table table-hover " runat="server" AutoGenerateSelectButton="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="DanismaGV_SelectedIndexChanged">
                             <AlternatingRowStyle BackColor="PaleGoldenrod" />
                             <EditRowStyle BackColor="#2461BF" />
                             <FooterStyle BackColor="Tan" />
                             <HeaderStyle BackColor="Tan" Font-Bold="True" />
                             <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                             <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                             <SortedAscendingCellStyle BackColor="#FAFAE7" />
                             <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                             <SortedDescendingCellStyle BackColor="#E1DB9C" />
                             <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                         </asp:GridView>
                     </div>
                 </div>
                </div>
        </div>

    </div>
</asp:Content>
