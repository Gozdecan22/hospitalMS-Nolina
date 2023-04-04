<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Laboratorian/LaborationMaster.Master" AutoEventWireup="true" CodeBehind="LabTest.aspx.cs" Inherits="HospitalMS.Views.Laboratorian.WebForm1"  EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row" style="height:50px">

        </div>
        <div class="row">
            <div class="col-md-4">
                <h2>Laboratuvar Test Bilgileri</h2>
 <form>
  <div class="mb-3">
    <label for="TestNameTb" class="form-label">Name</label>
    <input type="text" class="form-control" id="TestNameTb" runat="server" placeholder="Enter name"/>
  </div>

 <div class="mb-3">
    <label for="TestCostTb" class="form-label">Test Ücreti</label>
    <input type="text" class="form-control" id="TestCostTb" runat="server"  />
  </div>

<div class="row" style="height:150px"></div>
 
  <label runat="server" id="ErrMsg" class="text-danger"> </label> <br />
  <asp:Button ID="EditBtn" runat="server" Text="  Düzenle  " class="btn btn-warning" OnClick="EditBtn_Click" />
  <asp:Button ID="AddBtn" runat="server" Text="  Kaydet  " class="btn btn-primary"   OnClick="AddBtn_Click" />
  <asp:Button ID="DeleteBtn" runat="server" Text="  Sil  " class="btn btn-danger" OnClick="DeleteBtn_Click"   />
 
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
                         <h1>Laboratuvar Test Bilgileri</h1>
                         <asp:GridView ID="LabTestGV" class="table table-hover " runat="server" AutoGenerateSelectButton="True"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="LabTestGV_SelectedIndexChanged">
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
