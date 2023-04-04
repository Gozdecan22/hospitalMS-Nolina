<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HospitalMS.Views.Guest.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../../Libs/Bootstrap/css/bootstrap.min.css"  />
</head>
<body>
<%--   <form id="form1" runat="server">
      <div>
        </div>
    </form>  --%>

    <div class="container-fluid">
        
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
  <a class="navbar-brand" href="#">Nolina Hastanesi</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"  aria-label="Toggle navigation" >
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item">
        <a class="nav-link" href="">Doktorlar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">Laboratuvar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">Danışma</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" href="../Login.aspx">Giriş</a>
      </li>
      </ul>
   
  </div>
  </div>

</nav>
     
        <div class="row" style="background-image:url(../../Assets/Images/home.jpg); height:450px; background-size:cover ">
            <div class="col-md-2">

            </div>
            <div class="col-md-5">
                <div class="row" style="height:120px"></div>
                <div class="text-primary"> <h2>Sağlığınız tek önceliğimiz...</h2></div>   
                <div class="text-primary"> <h2>Her zaman size hizmet etmek ve özen göstermek.</h2></div>   
                <div class="text-muted">
                <p class="h6"> Hastanemiz, 2022 yılında, nüfusun sağlığıyla gerçekten ilgilenmek isteyen bir grup insan tarafından kurulmuştur.</p> <br /></div>
                <button class="btn btn-primary">Bize Ulaşın</button>
                <button class="btn border-primary text-primary bg-transparent">Geri Bildirim</button>
            </div>
        </div>
        <div class="row bg-primary">
            <div class="row" style="height:20px"></div>
            <div class="row">
       <div class="col-md-3 bg-light offset-1 rounded-3">
                <div class="row">
                    <div class="col-2">
         <img src="../../Assets/Images/surgeryicon.png" style="height:45px"/>
                    </div>
                    <div class="col-7">
                        <h5 class="text-center">Ameliyat</h5>
                        <p class="h6">Bu hastanenin yüksek nitelikli doktorlara sahip ameliyat bölümü vardır. </p>
                    </div>

                    

                </div>
            </div>
            <div class="col-md-3 bg-light offset-1 rounded-3">
                <div class="row">
                    <div class="col-2">
         <img src="../../Assets/Images/surgeryicon.png" style="height:45px"/>
                    </div>
                    <div class="col-7">
                        <h5 class="text-center">Üroloji</h5>
                        <p class="h6">Bu hastanenin yüksek nitelikli doktorlara sahip ameliyat bölümü vardır. </p>
                    </div>

                    

                </div>

            </div>
            <div class="col-md-3 bg-light offset-1 rounded-3">
                <div class="row">
                    <div class="col-2">
         <img src="../../Assets/Images/surgeryicon.png" style="height:45px"/>
                    </div>
                    <div class="col-7">
                        <h5 class="text-center">Oftalmoloji</h5>
                        <p class="h6">Bu hastanenin yüksek nitelikli doktorlara sahip ameliyat bölümü vardır. </p>
                    </div>

                    

                </div>

            </div>
            </div>
          

                <div class="row" style="height:22px"></div>
        

           
        </div>
    </div>
</body>
</html>
