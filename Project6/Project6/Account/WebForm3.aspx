<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Project6.Account.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css"
  rel="stylesheet"
/>

    <!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"
></script>
    <style>
        .ll{
           width:50%;
        }
        .kk{
        width:100%;
        display:flex;
        justify-content:center;
        }
        .moath{
            display:grid;
            grid-column:auto auto;
            grid-row: auto auto auto auto auto;

        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<!-- Section: Design Block -->
  <!-- Section: Design Block -->
<section class="text-center text-lg-start">
  <style>
    .cascading-right {
      margin-right: -50px;
    }
    .radio1{
        float:left;
    }

    @media (max-width: 991.98px) {
      .cascading-right {
        margin-right: 0;
      }
    }
  </style>

  <!-- Jumbotron -->
  <div class="container py-4">
    <div class="row g-0 align-items-center">
      <div class="col-lg-6 mb-5 mb-lg-0">
        <div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
          <div class="card-body p-5 shadow-5 text-center">
            <h2 class="fw-bold mb-5">Sign up now</h2>
            <form>
              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    
                        <asp:TextBox  runat="server" ID="FullName" CssClass="form-control"  />
                <asp:RequiredFieldValidator ValidationGroup="g1" runat="server" ControlToValidate="FullName"
                    CssClass="text-danger" ErrorMessage="required." />
          
                    <label class="form-label" for="FullName">Full Name</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                       
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator ValidationGroup="g1"  runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="required." />
           
                   
                    <label class="form-label" for="Email">Email</label>
                  </div>
                </div>
              </div>

              <!-- Email input -->
              <div class="form-outline mb-4">
               
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ValidationGroup="g1" runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="required." />
                <label class="form-label" for="Password">Password</label>
              </div>

              <!-- Password input -->
              <div class="form-outline mb-4">
                
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ValidationGroup="g1" runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="required." />
                <asp:CompareValidator ValidationGroup="g1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="passwords don't matchs" />
            
                <label class="form-label" for="ConfirmPassword">ConfirmPassword</label>
              </div>

              <!-- Checkbox -->
              <div class="  d-flex justify-content-left mb-4">
               <label class="form-check-label">
                 I am
                </label>
                  
                   <asp:RadioButtonList CssClass="radio1" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CellPadding="20" CellSpacing="5">
                    <asp:ListItem Value="2">Doners</asp:ListItem>
                  <asp:ListItem  Value="3">Beneficiary</asp:ListItem>

                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator1" ControlToValidate="RadioButtonList1" runat="server" ErrorMessage="choose a role"></asp:RequiredFieldValidator>
         </div>
                
              

              <!-- Submit button -->
            
                 <asp:Button runat="server" ValidationGroup="g1" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-primary btn-block mb-4" />

              <!-- Register buttons -->
              <div class="text-center">
                <p>or sign up with:</p>
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
            </form>
          </div>
        </div>
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0">
        <img src="images/3.jpg" class="w-100 rounded-4 shadow-4"
          alt="" />
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->
<!-- Section: Design Block -->
</asp:Content>
