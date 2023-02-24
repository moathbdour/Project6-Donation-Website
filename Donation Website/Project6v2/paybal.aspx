<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="paybal.aspx.cs" Inherits="Project6v2.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
    .radioMargin input[type="radio"]{
        margin-left:20px;
        margin-top:10px;
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

            <h5>PayPal Payment</h5>
            
          </div>

          <div class="p-3 px-4 py-4 border-bottom">

               <div>
            <span class="font-weight-normal">Doner Name</span>
              <asp:TextBox ID="name" runat="server" CssClass="form-control mb-3" placeholder="xxx"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="name"
                    CssClass="text-danger" ErrorMessage="The Name field is required." />
                   </div>
<%--            <input type="text" class="form-control mb-3" placeholder="Mobile Design w/ illustrations" />--%>
              <div class="row">
                     <br />
               <div class="col-6">
               <span class="font-weight-normal">Email</span>
              <asp:TextBox ID="email" runat="server" CssClass="form-control mb-3" placeholder="xxx@gmail/hotmail/yahoo.com" TextMode="Email"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                    CssClass="text-danger" ErrorMessage="The Email field is required." />
            
</div>

               <div class="col-6">
                <span class="font-weight-normal">Phone Number</span>
              <asp:TextBox ID="phone" runat="server" CssClass="form-control mb-3" placeholder=""></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ControlToValidate="phone"
                    CssClass="text-danger" ErrorMessage="The Phone field is required." />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" ErrorMessage="number isn't real" ValidationExpression="^(07)[7-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
        </div>
                  <br />
               <div class="col-6">
              <span class="font-weight-normal">Amount : </span><br />
                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" CssClass ="radioMargin" RepeatDirection="Horizontal" RepeatColumns="3" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" >
                       <asp:ListItem Value="10">10 JD</asp:ListItem>
                       <asp:ListItem Value="15">15 JD</asp:ListItem>
                       <asp:ListItem Value="20">20 JD</asp:ListItem>
                       <asp:ListItem Value="25">25 JD</asp:ListItem>
                       <asp:ListItem Value="30">30 JD</asp:ListItem>
                       <asp:ListItem Value="35">35 JD</asp:ListItem>
                       <asp:ListItem Value="40">40 JD</asp:ListItem>                       
                       <asp:ListItem Value="45">45 JD</asp:ListItem>
                       <asp:ListItem Value="other">Other</asp:ListItem>

                   </asp:RadioButtonList>
                   <br />
                   <div id="AMOUNT1" runat="server" visible="false">
                   <asp:TextBox ID="amount" runat="server" TextMode="Number" Width="80px" style="margin-left:80px;"></asp:TextBox>
                   <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Between 5 JD - 300 JD" ControlToValidate="amount" MinimumValue="5" MaximumValue="300" Type="Integer"></asp:RangeValidator>
                    </div>
                   <br />
     </div>

                  <div class="col-6">
              <span class="font-weight-normal" style="color:#39B5E0; font-size:15px; font-family:'Times New Roman';">If You Need To Know More About PayPal<br />Please Click On Image</span><br />
                     <a href="https://www.paypal.com/jo/home">
                         <asp:Image ID="ImageButton1" runat="server" ImageUrl="~/PayPal.png" Height="175px" Width="275px"/>

                     </a>
                  </div>


              <div>
                <a href="https://www.paypal.com/bizsignup/#/create"><asp:Button ID="paypal" runat="server" Text="Donata By PayPal" BackColor="#FAC710" BorderColor="#FAC710" style="width:50%; margin-left:25%; border-radius:15px; height:40px;"/></a>  
              </div>
        </div>
            
          </div>
          

        </div>
         
       </div></div>
         </div>
</asp:Content>
