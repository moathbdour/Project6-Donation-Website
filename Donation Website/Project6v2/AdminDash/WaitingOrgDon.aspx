<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WaitingOrgDon.aspx.cs" Inherits="MyAdminDashBoardProject6.AdminDash.WaitingOrgDon" %>

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
               margin-left:25%;
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
               margin-left:10%;
               width:80%;
               
           }
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<%--        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
        <div>
            
    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                             <li><br /> <br /><br /></li>
                   <li class="active">
                        <asp:LinkButton ID="Dashboard" runat="server" OnClick="Dashboard_Click"><i class="menu-icon fa fa-laptop"></i>Dashboard </asp:LinkButton>
                        <%--<a href="index.html"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>--%>
                    </li>
                    <%--<li class="menu-title"><i class="menu-icon fa fa-laptop"></i>Dashboard</li> <%--/.menu-title --%>
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
            </div><!-- /.navbar-collapse -->
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
       
                <div id="WAITINGdiv" runat="server">
             <br /><br />
            <div class="divv">
                <asp:Label ID="Label16" runat="server" Text="Waiting Organization Donations" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br /> 
                
                 <br />
                <div class="divv">
                <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" BackColor="#39B5E0" BorderColor="#39B5E0" ForeColor="black" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/></div>
                <br /><br />
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" 
                        DeleteCommand="DELETE FROM [OrgDon] WHERE [DonID] = @DonID" 
                        InsertCommand="INSERT INTO [OrgDon] ([DonerPhone], [DonName], [DonDesc], [DonCate], [DonSta], [Image], [Quantity], [OrStatus]) VALUES (@DonerPhone, @DonName, @DonDesc, @DonCate, @DonSta, @Image, @Quantity, @OrStatus)"
                        SelectCommand="SELECT * FROM [OrgDon] WHERE ([OrStatus] = @OrStatus)" 
                        UpdateCommand="UPDATE [OrgDon] SET [DonerPhone] = @DonerPhone, [DonName] = @DonName, [DonDesc] = @DonDesc, [DonCate] = @DonCate, [DonSta] = @DonSta, [Image] = @Image, [Quantity] = @Quantity, [OrStatus] = @OrStatus WHERE [DonID] = @DonID">
                        <DeleteParameters>
                            <asp:Parameter Name="DonID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="DonerPhone" Type="String" />
                            <asp:Parameter Name="DonName" Type="String" />
                            <asp:Parameter Name="DonDesc" Type="String" />
                            <asp:Parameter Name="DonCate" Type="String" />
                            <asp:Parameter Name="DonSta" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="OrStatus" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="wait" Name="OrStatus" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="DonerPhone" Type="String" />
                            <asp:Parameter Name="DonName" Type="String" />
                            <asp:Parameter Name="DonDesc" Type="String" />
                            <asp:Parameter Name="DonCate" Type="String" />
                            <asp:Parameter Name="DonSta" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="OrStatus" Type="String" />
                            <asp:Parameter Name="DonID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
        

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DonID" DataSourceID="SqlDataSource6" CssClass="table table-striped donmar"   EmptyDataText="You Don't Have Requests" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="DonID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="DonID" />
                            <asp:BoundField DataField="DonerPhone" HeaderText="Phone Number" SortExpression="DonerPhone" />
                            <asp:BoundField DataField="DonName" HeaderText="Donation" SortExpression="DonName" />
                            <asp:BoundField DataField="DonDesc" HeaderText="Description" SortExpression="DonDesc" />
                            <asp:BoundField DataField="DonCate" HeaderText="Category" SortExpression="DonCate" />
                            <asp:BoundField DataField="DonSta" HeaderText="Status" SortExpression="DonSta" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Accepted" Text="Accept" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                                </ItemTemplate>
                                <ControlStyle BackColor="#00CC00" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                            </asp:TemplateField>
                            
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false" CommandName="Rejected" Text="Reject"  CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                                </ItemTemplate>
                                <ControlStyle BackColor="#FF3300" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                            </asp:TemplateField>
                            
                        </Columns>
                        
                     <HeaderStyle HorizontalAlign="Center" BackColor="#39B5E0" />
                <RowStyle HorizontalAlign="Center" />
                    </asp:GridView>
  
        </div>
    </form>

</body>
</html>
