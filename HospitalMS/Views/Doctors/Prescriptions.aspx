<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Doctors/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="Prescriptions.aspx.cs" Inherits="HospitalMS.Views.Doctors.Prescriptions" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
<div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>Reçete Bilgileri</h2>
                <br /> <br />  <br /> 
 <form>
  <div class="mb-3">
    <label for="PatientCb" class="form-label">Patient</label>
<asp:DropDownList ID="PatientCb" runat="server"  class="form-control">
    
 </asp:DropDownList> 

  </div>

 <div class="mb-3">
    <label for="MedTb" class="form-label">İlaçlar</label>
    <input type="text" class="form-control" id="MedTb" runat="server" />
  </div>

 <div class="mb-3">
    <label for="TestCb" class="form-label">LabTest</label>
  <asp:DropDownList ID="TestCb" runat="server"  class="form-control">
    
         </asp:DropDownList>
 
 </div>


 <div class="mb-3">
    <label for="CostTb" class="form-label">Ücret</label>
    <input type="text" class="form-control" id="CostTb" runat="server" />
  </div>

<div class="d-grid">
    
  <label runat="server" id="ErrMsg" class="text-danger"> </label> <br />
  <asp:Button ID="AddBtn" runat="server" Text="Reçeteyi Kaydet" class="btn btn-warning btn-block" text-white OnClick="AddBtn_Click" />
 
</div>
 
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
                         <h1>Reçete Bilgileri</h1>
                         <asp:GridView ID="PrescriptionGV" class="table table-hover " runat="server" AutoGenerateSelectButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
