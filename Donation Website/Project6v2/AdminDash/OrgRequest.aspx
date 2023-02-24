<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrgRequest.aspx.cs" Inherits="MyAdminDashBoardProject6.AdminDash.OrgRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content="Ela Admin - HTML5 Admin Template"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

  <link rel="stylesheet" href="alert/dist/sweetalert.css"/>
    <script src="../Scripts/sweetalert.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js%22%3E"></script>
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }
    </script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css"/>
    <link href="AdminCSS/css/style.css" rel="stylesheet" />
    <link href="AdminCSS/css/cs-skin-elastic.css" rel="stylesheet" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet"/>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
   <%-- <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }
    </script>--%>
   <style>
    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }
        .gridmarginleft{
            margin-left:32.2%;
        }
         .divv {
           width:55%;
           margin-left:32.2%;
           text-align:center;
/*          
*/       }
          .donmar{
               margin-left:26%;
               width:65%;
               text-align:center;
           }
       @media only screen and (min-device-width:0px) and (max-device-width:480px) {

       }

       @media (min-width: 481px) and (max-width:768px) {
           .divv {
    width: 55%;
    margin-left: 22.2%;
    text-align: center;
}

           .gridmarginleft{
            margin-left:17%;
        }
           .donmar{
               margin-left:0%;
               margin-right:20%;
               width:80%;
               
           }
       }
    </style>
     <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function message() {
            Swal.fire(
                'Good job!',
                'Updating Successfily',
                'success'
            )
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                          <li><br /> <br /><br /></li>
                   <li class="active">
                        <asp:LinkButton ID="Dashboard" runat="server" OnClick="Dashboard_Click"><i class="menu-icon fa fa-laptop"></i>Dashboard </asp:LinkButton>
                    </li>
                     <li class="menu-item-has-children dropdown">
                         <hr />
                    </li>

                    <li class="menu-item-has-children dropdown">
                        
                        <asp:LinkButton ID="Beneficiary" runat="server" CssClass="dropdown-toggle" OnClick="Beneficiary_Click"> <i class="fa-solid fa-people-line menu-icon"></i> Beneficiary</asp:LinkButton>

                    </li>
                    <li class="menu-item-has-children dropdown">
                        <asp:LinkButton ID="Doners" runat="server" CssClass="dropdown-toggle" OnClick="Doners_Click"><i class="menu-icon fa-solid fa-hand-holding-dollar"></i>Doners</asp:LinkButton>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <asp:LinkButton ID="Donations" runat="server" CssClass="dropdown-toggle" OnClick="Donations_Click"><i class="menu-icon fa-solid fa-hand-holding-medical"></i>Donations</asp:LinkButton>
                    </li>

                  
                    <li class="menu-item-has-children">  
                    <asp:LinkButton ID="Waiting" runat="server" CssClass="dropdown-toggle" OnClick="Waiting_Click" ><i class="fa-solid fa-circle-pause menu-icon "></i>Wait Donations</asp:LinkButton>
                    </li>

                     <li class="menu-title">Organization</li> 

                     <li class="menu-item-has-children">  
                    <asp:LinkButton ID="ORGdon" runat="server" CssClass="dropdown-toggle"  OnClick="ORGdon_Click"><i class="fa-solid fa-building-ngo menu-icon"></i>Org.Donations</asp:LinkButton>
                    </li>

                    <li class="menu-item-has-children">  
                    <asp:LinkButton ID="ORGwait" runat="server" CssClass="dropdown-toggle"  OnClick="ORGwait_Click"><i class="fa-solid fa-circle-pause menu-icon"></i>Wait Org.Donations</asp:LinkButton>
                    </li>

                      <li class="menu-item-has-children">  
                    <asp:LinkButton ID="Req" runat="server" OnClick="Req_Click"><i class="fa-solid fa-list-check menu-icon"></i>Requests</asp:LinkButton>
                    </li>

                    


                     
                   <li class="menu-title"></li> 
                    <li class="menu-item-has-children dropdown">
                         <hr />
                    </li>
                   
                    <li class="menu-item-has-children dropdown">
                     <asp:LinkButton ID="Logout" runat="server" CssClass="dropdown-toggle" OnClick="Logout_Click"><i class="fa-solid fa-right-from-bracket menu-icon"></i>Logout</asp:LinkButton>
                    </li>
                </ul>
            </div>
        </nav>
    </aside>
    <!-- /#left-panel -->
    <!-- Right Panel -->
            <div id="right-panel1" class="right-panel">
        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                  <a class="navbar-brand"><img src="logo-don.png" alt="Logo"/></a>
                    <a class="navbar-brand hidden"><img src="logo-don.png" alt="Logo"/></a>
                                      
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="header-left">
                  
                        </div>
                    </div>

             
            </div>
        </header></div>

            <br /><br />
              <div class="divv">
                <asp:Label ID="Label16" runat="server" Text="Waiting Requests" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
            <br />
            <div class="divv">
                <hr />
            <asp:DropDownList ID="OrganizationOrderStatus" runat="server">
                <asp:ListItem Value="wait" Selected="True">Waiting</asp:ListItem>
                <asp:ListItem Value="Accept">Accept</asp:ListItem>
                <asp:ListItem Value="Reject">Reject</asp:ListItem>
                <asp:ListItem Value="Finish">Finish</asp:ListItem>

            </asp:DropDownList>
            <asp:Button ID="Button2" runat="server" Text="Show" Width="7%" Height="30px" BackColor="#39B5E0" ForeColor="Black" BorderColor="#39B5E0"/></div>
            </div>
        <br /><br />
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" 
    SelectCommand="select * from Services inner join Orders on Services.ServiceID=Orders.ServiceID and ProviderID='6cafe636-ccd6-4d16-852e-62f8b06e05a4'and OrderStatus=@OrderStatus;" 
    DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" 
    InsertCommand="INSERT INTO [Orders] ([ServiceID], [CustomerID], [OrderTime], [OrderStatus], [SerQuantity]) VALUES (@ServiceID, @CustomerID, @OrderTime, @OrderStatus, @SerQuantity)" 
                UpdateCommand="UPDATE [Orders] SET  [OrderStatus] = @OrderStatus WHERE [OrderID] = @OrderID">
    <DeleteParameters>
        <asp:Parameter Name="OrderID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ServiceID" Type="Int32" />
        <asp:Parameter Name="CustomerID" Type="String" />
        <asp:Parameter Name="OrderTime" Type="DateTime" />
        <asp:Parameter Name="OrderStatus" Type="String" />
        <asp:Parameter Name="SerQuantity" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="OrganizationOrderStatus" Name="OrderStatus" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="OrderStatus" Type="String" />
        <asp:Parameter Name="OrderID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

            <asp:GridView ID="GridView1" runat="server"  EmptyDataText="You Don't Have Data In This Feild"  CssClass="table table-striped donmar" AutoGenerateColumns="False" DataKeyNames="ServiceID,OrderID" DataSourceID="SqlDataSource2" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:TemplateField HeaderText="Donation" SortExpression="ServiceName">
                      <%--  <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ServiceName") %>'></asp:TextBox>
                        </EditItemTemplate>--%>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ServiceName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" SortExpression="Description">
                        <%--<EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                        </EditItemTemplate>--%>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image" SortExpression="Image">
                       <%-- <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                        </EditItemTemplate>--%>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="150px"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category" SortExpression="CategoryName">
                        <%--<EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CategoryName") %>'></asp:TextBox>
                        </EditItemTemplate>--%>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Order Quantity" SortExpression="SerQuantity">
                       <%-- <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("SerQuantity") %>'></asp:TextBox>
                        </EditItemTemplate>--%>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("SerQuantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OrderTime" SortExpression="OrderTime">
                    <%--    <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("OrderTime") %>'></asp:TextBox>
                        </EditItemTemplate>--%>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("OrderTime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OrderStatus" SortExpression="OrderStatus">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                 <asp:ListItem Value="wait">Wait</asp:ListItem>
                                 <asp:ListItem Value="Accept">Accept</asp:ListItem>
                                 <asp:ListItem Value="Reject">Reject</asp:ListItem>
                                 <asp:ListItem Value="Finish">Finish</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("OrderStatus") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True">
                    <ControlStyle BackColor="#39B5E0" BorderColor="#39B5E0" />
                    </asp:CommandField>
                    <asp:HyperLinkField DataNavigateUrlFields="OrderID" DataNavigateUrlFormatString="OrgReqDetails.aspx?Oid={0}&amp;x=1" HeaderText="Details" Text="show more" />
                </Columns>
                <HeaderStyle BackColor="#39B5E0" />
                <SelectedRowStyle BackColor="#DFF6FF" />
            </asp:GridView>
     
        </div>
    </form>
</body>
</html>
