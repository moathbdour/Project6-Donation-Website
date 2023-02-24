<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project6v2.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   
     <style>
    .cascading-right {
      margin-right: -50px;
    }

    @media (max-width: 991.98px) {
      .cascading-right {
        margin-right: 0;
      }
    }
    .w-100 {
    width: 85% !important;
}
    .my-custom-class input[type="radio"] {
    /* Add your custom styles here */
    background-color: #f1f1f1;
    padding: 10px;
    border-radius: 9px ;
    border: 5px solid blue;
}
    .my-custom-class label {
    /* Add your custom styles here */
    font-size: 14px;
    font-weight: bold;
    margin-left: 5px;
}
    .my-custom-class{
    /* Add your custom styles here */
    display: inline-block;
  
}
    .mb-4 {
    margin-bottom: 0.7rem !important;
}
  
    @media screen and (min-width: 900px) {
   .kkll{
        margin-left:200px;
  }
}
    
   
   /* .moath2{
        height:95vh;
    }*/
  </style>
   <!-- Section: Design Block -->
   
<section class="text-center text-lg-start">
  

  <!-- Jumbotron -->
   
  <div class="container py-4">
    <div class="row kkll g-0 align-items-center">
      <div class="col-lg-4 mb-5 mb-lg-0">
        <div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
          <div class="card-body p-5 shadow-5 text-center">
            <h2 class="fw-bold mb-5">Sign in now</h2>
              <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
               

              <!-- Email input -->
              <div class="form-outline mb-4">
                 <label class="form-label" for="Email"> Email</label>
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="*" />
              
              </div>

              <!-- Password input -->
              <div class="form-outline mb-4">
                <label class="form-label" for="Password">Password</label>
                          <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                       
               
              </div>
               
              <!-- Checkbox -->
              <div class="form-check d-flex justify-content-center mb-4">
                  <asp:CheckBox runat="server" ID="RememberMe" />
                  <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label><asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register with us</asp:HyperLink>
                           
              </div>

              <!-- Submit button -->
            
                   <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-primary btn-block mb-4" />
            

              <!-- Register buttons -->
              <div class="text-center">
                <p>or sign in with:</p>
                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-facebook-f"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-google"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-twitter"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-github"></i>
                </button>
              </div>
           
          </div>
        </div>
      </div>
          </div>
      <div class="col-lg-6 mb-5 mb-lg-0">
       <img src="images/65.jpg" class="w-100 rounded-4 shadow-4"
          alt="" />
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
   
    
       
  
</asp:Content>
