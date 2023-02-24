<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="orgpay.aspx.cs" Inherits="Project6v2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<%--    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");--%>
<style>



     body{

      background-color:#DFF6FF;
      font-family: "Poppins", sans-serif;
      font-weight: 300;
     

     }

     .height{

      height: 100vh;
     }


     .card{

      width: 100%;
      border:none;

     }

     .form-control{

        border: 2px solid #bdc1d2;
        
        font-size: 13px;
        height: 48px;

     }

     .form-control:focus {
      color: #495057;
      background-color: #fff;
      border-color: #f7bfd9;
      outline: 0;
      box-shadow: none;
  }


  .form{

    position: relative;
    margin-bottom: 25px;
    
  }


  .form textarea{

    height: 100px;
    resize: none;
    
  }

  .form a{

      position: absolute;
      right: 8px;
      bottom: 10px;
      color: #6ca0d6;
      font-size: 13px;
      text-decoration: none;
      z-index: 10;
      background-color: #fff;
      padding: 5px;

  }


  .fa-paperclip{

    font-size: 19px;
  }


  .price{

        width: 83px;
  }


  .send{

    height: 48px;
    padding-right: 30px;
    padding-left: 30px;
    background-color: #06283D;
    border:none;
  }

    .marginDIV {
        margin-top:-130px;
    }

     @media only screen and (min-device-width:0px) and (max-device-width:480px) {
         .marginDIV {
        margin-top:-15px;
    }
       }

         @media (min-width: 481px) and (max-width:768px) {
              .marginDIV {
        margin-top:-40px;
    }
         }

    </style>


     <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function message() {
            Swal.fire(
                'Good job!',
                'Send Successfily',
                'success'
            )
        }

    </script>
<%--    ***********************************--%>

     <div class="container">

        <div class="row d-flex justify-content-center align-items-center height">

          <div class="col-md-8">

            <div class="card">


          <div class="p-3 border-bottom d-flex align-items-center justify-content-center">

            <h5>Personal Information</h5>
            
          </div>

          <div class="p-3 px-4 py-4 border-bottom">

               <div>
            <span class="font-weight-normal">Doner Name</span>
              <asp:TextBox ID="name" runat="server" CssClass="form-control mb-3" placeholder="xxx"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="name"
                    CssClass="text-danger" ErrorMessage="The Name field is required." />
                   </div>
<%--            <input type="text" class="form-control mb-3" placeholder="Mobile Design w/ illustrations" />--%>

               <div>
               <span class="font-weight-normal">Email</span>
              <asp:TextBox ID="email" runat="server" CssClass="form-control mb-3" placeholder="xxx@gmail/hotmail/yahoo.com" TextMode="Email"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                    CssClass="text-danger" ErrorMessage="The Email field is required." />
            
</div>

               <div>
                <span class="font-weight-normal">Phone Number</span>
              <asp:TextBox ID="phone" runat="server" CssClass="form-control mb-3" placeholder=""></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ControlToValidate="phone"
                    CssClass="text-danger" ErrorMessage="The Phone field is required." />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" ErrorMessage="number isn't real" ValidationExpression="^(07)[7-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
        </div>

               <div>
               <span class="font-weight-normal">Address</span>
              <asp:TextBox ID="address" runat="server" CssClass="form-control mb-3" placeholder=""></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ControlToValidate="address"
                    CssClass="text-danger" ErrorMessage="The Address field is required." />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phone" ErrorMessage="number isn't real" ValidationExpression="^(07)[7-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
        
     </div>
              <div>
                    <asp:DropDownList CssClass="form-control form mb-3" ID="city" runat="server"  >
                    <asp:ListItem Value="irbid">Irbid</asp:ListItem>
                    <asp:ListItem Value="amman">Amman</asp:ListItem>
                        <asp:ListItem Value="madaba">Madaba</asp:ListItem>
                    <asp:ListItem Value="zarqa">Zarqa</asp:ListItem>
                        <asp:ListItem Value="aqaba">Aqaba</asp:ListItem>
                </asp:DropDownList>
              </div>
        </div>
            
          </div>
          

        </div>
         
       </div></div>


<%--    *******************Body**********************--%>
    <div class="container mt-3">

        <div class="row d-flex justify-content-center align-items-center height">

          <div class="col-md-8">

            <div class="card">


          <div class="p-3 border-bottom d-flex align-items-center justify-content-center">

            <h5>Organization Donation Request</h5>
            
          </div>

          <div class="p-3 px-4 py-4 border-bottom">
            <span class="font-weight-normal">Donation Name</span>
              <asp:TextBox ID="DonName" runat="server" CssClass="form-control mb-3" placeholder="Bed, Chair,.." maxlength=50></asp:TextBox>
<%--            <input type="text" class="form-control mb-3" placeholder="Mobile Design w/ illustrations" />--%>

            <span class="font-weight-normal">Description</span>
             <div class="form">
              <textarea class="form-control mb-3 description-area" placeholder="Manual Bed" maxlength=200 id="DonDes" runat="server"></textarea>
             <%-- <a href="#" class=""><i class="fa fa-paperclip"></i></a>--%>
              </div>
              <div class="row"> 
                  <div class="col-4">
                 <span class="font-weight-normal">Category</span>
                <asp:DropDownList CssClass="form-control form mb-3" ID="DropDownList1" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="Bed">Bed</asp:ListItem>
                    <asp:ListItem Value="machine">Machine</asp:ListItem>
                    <asp:ListItem Value="other">other</asp:ListItem>
                </asp:DropDownList>
             
           <%--  <div class="form">
              <textarea class="form-control mb-3 description-area" placeholder="Manual Bed" maxlength=200 ></textarea>
              </div> --%> </div>
                  
                    <div class="col-4" >
                        <div id="othh" runat="server" visible="false">

                        
                 <span class="font-weight-normal">Other</span>
                 <asp:TextBox ID="other" runat="server" CssClass="form-control mb-3" placeholder="Bed, Chair,.." maxlength=50></asp:TextBox>
                    </div>
                  </div>
                    <div class="col-4">
                 <span class="font-weight-normal">Status</span>
                <asp:DropDownList CssClass="form-control form mb-3" ID="DropDownList3" runat="server"  AutoPostBack="true">
                    <asp:ListItem Value="new">New</asp:ListItem>
                    <asp:ListItem Value="used">Used</asp:ListItem>
                </asp:DropDownList>
                 </div>
                  

              </div>

               <div class="form">
                  <span class="font-weight-normal">Donation Image : <br /></span>
                   <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif"/>

               </div>

            <div class="d-flex flex-column">

              <span class="font-weight-normal">Quantity</span>
              <div class="d-flex justify-content-between align-items-center">
                  <asp:TextBox ID="Quan" runat="server" CssClass="form-control price" placeholder="XX" TextMode="Number"></asp:TextBox>
                  <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="1-50" ControlToValidate="Quan" MinimumValue="1" MaximumValue="50"></asp:RangeValidator>
                <div class=" px-4">
                <%--  <span class="font-weight-normal">Donation Image : </span>
                   <asp:FileUpload ID="FileUpload2" runat="server" accept=".png,.jpg,.jpeg,.gif"/>--%>
                </div>

                <div class="button">
                    <asp:Button ID="send" runat="server" Text="SEND" CssClass="btn btn-danger send" OnClick="send_Click"/>
                  
                </div>
                
              </div>
              

            </div>

          </div>
          
        </div>
            
          </div>
          

        </div>
         
       </div>

     <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="assets/js/script.js"></script>
    <%--    *******************End Body**********************--%>
</asp:Content>
