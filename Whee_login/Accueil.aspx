<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="Whee_login.Accueil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Whee!</title>

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect"/>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>

  <!-- CSS Files -->
  <link href="Content/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="Content/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
  <link href="Content/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
  <link href="Content/vendor/quill/quill.snow.css" rel="stylesheet"/>
  <link href="Content/vendor/quill/quill.bubble.css" rel="stylesheet"/>
  <link href="Content/vendor/remixicon/remixicon.css" rel="stylesheet"/>
  <link href="Content/vendor/simple-datatables/style.css" rel="stylesheet"/>
   
  <!-- Main CSS File -->
  <link href="Content/Style2.css" rel="stylesheet"/>
  
</head>
<body>
<form id="form1" runat="server">-->
        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">
            <div class="d-flex align-items-center justify-content-between">
                 <i class="bi bi-list toggle-sidebar-btn"></i>
              <a href="Accueil.aspx" class="logo d-flex align-items-center">
                <img src="img/wheeBan.png" alt=""/>
              </a>
                
             
            </div>
            
            <!-- End Logo -->

            <nav class="header-nav ms-auto" >
                <ul class="d-flex align-items-center">
                    <li class="nav-item dropdown pe-3">
                      <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                        <asp:Image runat="server" id="imgProfil" alt="Profile" class="rounded-circle"/>
                        <span class="d-none d-md-block dropdown-toggle ps-2">
                            <asp:Label id="LabelN" runat="server" />
                         </span>   
                      </a><!-- End Profile Iamge Icon -->

                      <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                        <li class="dropdown-header">
                          <h6><asp:Label id="LabelPram" runat="server"/></h6>
                          <span>Covoitureur</span>
                        </li>
                        <li>
                          <hr class="dropdown-divider"/>
                        </li>

                        <li>
                          <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                            <i class="bi bi-person"></i>
                            <span>Mon Profile</span>
                          </a>
                        </li>
                        <li>
                          <hr class="dropdown-divider"/>
                        </li>

                        <li>
                          <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                            <i class="bi bi-gear"></i>
                            <span>Paramettres de Compte</span>
                          </a>
                        </li>
                        <li>
                          <hr class="dropdown-divider"/>
                        </li>

                        <li>
                          <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                            <i class="bi bi-question-circle"></i>
                            <span>Aide?</span>
                          </a>
                        </li>
                        <li>
                          <hr class="dropdown-divider"/>
                        </li>

                        <li>
                          <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Se deconnecter</span>
                          </a>
                        </li>

                      </ul><!-- End Profile Dropdown Items -->
                    </li><!-- End Profile Nav -->
                </ul>
            </nav><!-- End Navbar -->
        </header>

        <!-- ======= Sidebar ======= -->
            <aside id="sidebar" class="sidebar">
                <ul class="sidebar-nav" id="sidebar-nav">
                    <li class="nav-item">
                        <a href="Accueil.aspx" class="nav-link collapsed"  >
                          <i class="bi bi-house-door-fill"></i><span>Accueil</span>
                        </a>
                        
                   </li><!-- End Tables Nav -->

                    <li class="nav-item">
                        <a href="WebForm.aspx" class="nav-link collapsed"  >
                          <i class="bi bi-star-fill"></i><span>Evènements</span><i class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                          <li>
                            <a href="tables-general.html">
                              <i class="bi bi-circle"></i><span>Liste</span>
                            </a>
                          </li>
                          <li>
                            <a href="tables-data.html">
                              <i class="bi bi-circle"></i><span>Ajout</span>
                            </a>

                          </li>
                        </ul>
                   </li><!-- End Tables Nav -->
                </ul>
            </aside><!-- End of sidebar-->

             <!-- ======= Main ======= -->
            <main id="main" class="main">
                <div class="pagetitle">
                  <h1>Où voulez-vous aller ?</h1>
                </div><!-- End Page Title -->

                <!-- Add Section -->
                <section class="section" id="Add">
                    <div class="row">

                        <!-- Départ -->
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="card-body">                                    
                                    <h5 class="card-title">Lieu de départ</h5>
                                    <div class="search-bar">
                                         <div class="search-form d-flex align-items-center" method="POST" action="#">
                                             <asp:TextBox runat="server" id="textdepart" type="text"  class="form-control"/>
                                             
                                        </div>
                                    </div><!-- End Search Bar -->
                                </div>              
                            </div>
                        </div>

                        <!-- Arriver -->
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="card-body">                                    
                                    <h5 class="card-title">Lieu d'arrivée</h5>
                                    <div class="search-bar">
                                         <div class="search-form d-flex align-items-center" method="POST" action="#">
                                            <asp:TextBox runat="server" id="textarrive" type="text" class="form-control" />
                                            
                                            
                                        </div>
                                    </div><!-- End Search Bar -->
                                </div>              
                            </div>
                        </div>
                        <!-- Date -->
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="card-body">                                    
                                    <h5 class="card-title">Date de départ</h5>
                                    <div class="search-bar">
                                         <div class="search-form d-flex align-items-center" method="POST" action="#">
                                            <asp:TextBox runat="server" id="textdateDep" type="date" class="form-control"/>
                                            
                                        </div>
                                    </div><!-- End Search Bar -->
                                </div>              
                            </div>
                        </div>
                        <!-- Heure -->
                        <div class="col-lg-3">
                            <div class="card mx-auto">
                                <div class="card-body">                                    
                                    <h5 class="card-title">Heure de départ</h5>
                                    <div class="search-bar">
                                         <div class="search-form d-flex align-items-center" method="POST" action="#">
                                            <asp:TextBox runat="server" id="textheureDep" type="time" class="form-control"/>
                                            <asp:LinkButton ID="SubmitBtn" runat="server" OnClick="btnsearch_Click" CssClass="btn btn-small btn-primary mx-auto"><i class="bi bi-search"></i>&nbsp;Rechercher</asp:LinkButton>
                                        </div>
                                    </div><!-- End Search Bar -->
                                </div>              
                            </div>
                        </div>
                      
                    </div>
                </section>
                <!-- Add Section -->
                <section class="section" id="List">
                    <div class="card">
            <div class="card-body">
              <h5 class="card-title"></h5>

              <!-- Table with hoverable rows -->
                
                <asp:ListView id="ListViewAnnonce" runat="server">
                
                    <ItemTemplate >
                        

                         
                        <div class="card" >
                            
                           
                            <div class="card-header " style="text-transform:uppercase;" id="myDiv" >
 
                             <asp:Label id="textLab" runat="server" Text=<%# Eval("type_annonce") %>></asp:Label>
                            </div>

                            <div class="card-body">
                                <div class="container text-center">
                                   <div class="row">
                                        <div class="col-sm " >
                                            <br />
                                            <img src=<%# Eval("img") %> height="90" width="90" class="rounded-circle" />
                                            <h4 class="card-title text-center">
                                                <i class="bi bi-star"></i>
                                                <i class="bi bi-star"></i>
                                                <i class="bi bi-star"></i>
                                                <i class="bi bi-star"></i>
                                                <i class="bi bi-star"></i>
                                            </h4>
                                        </div>
                                        <div class="col-sm">
                                            <h4 class="card-title"><%# Eval("pointdepart") %>-<%# Eval("pointarrive") %></h4>
                                            <H5 class="card-text">Date:<%#DataBinder.Eval(Container.DataItem, "datecov", "{0:dd/MM/yyyy}") %>; Heure de départ:<%# Eval("heuredepart") %></H5>
                                             <br />
                                            <aps:Button  id="ButtonAnnonce" href="#" class="btn btn-primary "><%# Eval("textBtn") %></aps:Button>
                                            
                                        </div>

                                    </div>

                                </div>
                            </div>
                       
                            <div class="card-footer text-muted">
                                2 days ago
                            </div>
                           
                       </div>

                       <%-- <div class="card" data-aos="fade-up" data-aos-duration="2000">
                            <div>
                                <tr>
                                    <th scope="col"><img src="img/driver.png" height="42" width="42"/></th>
                                    <th scope="col">
                                        <tr><td>Annonce:<span class="card-title"><%# Eval("type_annonce") %></span></td></tr>
                                        <tr><td><span><%# Eval("pointdepart") %></span><span>-------------></span><span><%# Eval("pointarrive") %></span></td></tr>
                                        <tr><td>Date:<span><%# Eval("datecov") %></span></td></tr>
                                        <tr><td>Heure de départ:<span><%# Eval("heuredepart") %></span></td></tr>
                                        <tr><td>Tarif:<span></span><%# Eval("tarif") %></td></tr>
                                    </th>
                                </tr>
                            </div>
                        </div>--%>
                           

                    </ItemTemplate>
                  
                </asp:ListView>
              <!-- End Table with hoverable rows -->

            </div>
          </div>
                </section>
            </main>
 </form> 

  <!-- JS File -->
  <script src="Content/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="Content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="Content/vendor/chart.js/chart.min.js"></script>
  <script src="Content/vendor/echarts/echarts.min.js"></script>
  <script src="Content/vendor/quill/quill.min.js"></script>
  <script src="Content/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="Content/vendor/tinymce/tinymce.min.js"></script>
  <script src="Content/vendor/php-email-form/validate.js"></script>

  <!-- Main JS File -->
  <script src="Scripts/main.js"></script>
</body>
</html>

