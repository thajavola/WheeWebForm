<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormLogin.aspx.cs" Inherits="Whee_login.WebFormLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <title>Whee!2.0 Login</title>
      
    <%--<link href="Content/Site.css" rel="stylesheet"/>--%>
    <link href="css/Site.css" rel="stylesheet" />

      <link href="Content/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
      <link href="Content/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
      <link href="Content/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
      <link href="Content/vendor/quill/quill.snow.css" rel="stylesheet"/>
      <link href="Content/vendor/quill/quill.bubble.css" rel="stylesheet"/>
      <link href="Content/vendor/remixicon/remixicon.css" rel="stylesheet"/>
      <link href="Content/vendor/simple-datatables/style.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        
    <main>
        <div class="container">

          <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
              <div class="row justify-content-center">
                <div class="col-lg-6 col-md-6 d-flex flex-column align-items-center justify-content-center">

                  <div class="d-flex justify-content-center py-4">
                    <a href="index.html" class="logo d-flex align-items-center w-auto">
                        <div class="logo-container">
                            <img src="img/logo2.png" alt="logo" class="logo nonTransparent"/>
                        </div>
                    
                  
                    </a>
                  </div>

                  <div class="card mb-3" >

                    <div class="card-body">

                      <div class="pt-4 pb-2 ">
                        <h5 class="card-title text-center pb-0 fs-4">Se connecter</h5>
                    
                      </div>

                      <%--<form class="row g-3 needs-validation champ" novalidate="novalidate">--%>

                        <div class="col-12 email">
                          <label for="yourUsername" class="form-label">Email</label>
                          <div class="input-group has-validation">
                            <span class="input-group-text" id="inputGroupPrepend">@</span>
                            <asp:TextBox ID="yourUsername" runat="server" name="username" class="form-control"  required="required"></asp:TextBox>
                                             
                            <div class="invalid-feedback">S'il vous plaît, entrez un Email valide.</div>
                          </div>
                        </div>

                        <div class="col-12 mdp">
                          <label for="yourPassword" class="form-label">Mot de passe</label>
                            <asp:TextBox ID="yourPassword" name="password" class="form-control pwd-form"  runat="server" TextMode="Password" required="required"></asp:TextBox>
                            
                          <div class="invalid-feedback">S'il vous plaît saisissez votre mot de passe</div>
                        </div>

                        <div class="col-12">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe"/>
                            <label class="form-check-label" for="rememberMe">Se souvenir de moi</label>
                          </div>
                        </div>
                        <div class="col-12">
                          
                           <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Se connecter" class="btn btn-primary w-100 btn-connect" type="submit" href="Accueil.html"/>
                        </div>
                        <div class="col-12">
                          <p class="small mb-0 text-bas" >Vous n'avez pas encore de compte? <br /><a href="Inscription.html" class="text-bas">Créer un compte</a></p>
                        </div>
                        <asp:TextBox ID="TextBoxMessage" runat="server" CssClass="message"></asp:TextBox>
                      <%--</form>--%>

                    </div>
                  </div>

              
                </div>
              </div>
            </div>

          </section>

        </div>
    </main><!-- End #main -->
        
  </form>
  <script src="Content/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="Content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="Content/vendor/chart.js/chart.min.js"></script>
  <script src="Content/vendor/echarts/echarts.min.js"></script>
  <script src="Content/vendor/quill/quill.min.js"></script>
  <script src="Content/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="Content/vendor/tinymce/tinymce.min.js"></script>
  <script src="Content/vendor/php-email-form/validate.js"></script>
</body>
</html>
