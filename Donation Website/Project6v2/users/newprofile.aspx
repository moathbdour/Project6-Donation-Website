<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="newprofile.aspx.cs" Inherits="Project6v2.users.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <style>
       /* th{
            display:none;
        }*/
        table {
   
    border-spacing: 0px;
}
        .moath{
            height:100%;
            min-height:75vh;
           
        }
        .row {
   
   /* margin-left: 0px !important;
     margin-right: 0px !important;*/
}
        
      /*  input[type="file" i] {
            display:none;
        }*/

      .form-control[type=file]:not(:disabled):not([readonly]) {
    margin-bottom:10px;
}

          .cardlujain {
              overflow:scroll
          }
    </style>
   <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [PhoneNumber], [Email], [userimages], [UserStatus], [City], [UserName]) VALUES (@Id, @PhoneNumber, @Email, @userimages, @UserStatus, @City, @UserName)" SelectCommand="SELECT [Id], [PhoneNumber], [Email], [userimages], [UserStatus], [City], [UserName] FROM [AspNetUsers] WHERE ([Id] = @Id)"
        UpdateCommand="UPDATE [AspNetUsers] SET [PhoneNumber] = @PhoneNumber, [Email] = @Email, [userimages] = @userimages, [UserStatus] = @UserStatus, [City] = @City, [UserName] = @UserName WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="userimages" Type="String" />
            <asp:Parameter Name="UserStatus" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Id" SessionField="id" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="userimages" Type="String" />
            <asp:Parameter Name="UserStatus" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
      </asp:SqlDataSource>--%>
        <div>
            <section class="moath" style="background-color: #eee;">
                                           
  <div class="container py-5">
      <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
          <ol class="breadcrumb mb-0">
           
            <li class="breadcrumb-item active" aria-current="page">User Profile</li>
              <%if (Context.User.IsInRole("Provider")){ %>
                     <li class="breadcrumb-item active" aria-current="page">

                   <asp:HyperLink ID="HyperLink1" NavigateUrl="~/users/addservice.aspx" runat="server">Add Donation</asp:HyperLink> </li>    <%} %>
             
          </ol>
        </nav>
      </div>
    </div>
      
    

    <div class="row">
         
     <div class="col-lg-4">
                          <div class="card mb-4">
                              <div class="card-body text-center">
                               <asp:Image ID="Image1" ImageUrl='<%# Eval("userimages") %>' style="width: 150px; height:150px;" CssClass="rounded-circle img-fluid" runat="server" />
            
            <h5 id="username" runat="server" class="my-3"><%# Eval("UserName") %></h5>
            <p  id="state" runat="server" class="text-muted mb-1"><%# Eval("UserStatus") %></p>
            <p  id="city" runat="server" class="text-muted mb-4"><%# Eval("City") %></p>
           <div class="d-flex justify-content-center mb-2">
               <asp:Button CssClass="btn btn-outline-primary ms-1" ID="Button1" runat="server" Text="Edit Profile" OnClick="Button1_Click" />
             
            </div>
          </div>
        </div>
      
      </div>
                                 <div class="col-lg-8">
                                     <asp:Panel ID="Panel2" CssClass="card mb-4" runat="server" Width="100%">
                                    
       
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name</p>
              </div>
              <div class="col-sm-9">
                <p id="username2" runat="server" class="text-muted mb-0"><%# Eval("UserName") %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p id="email2" runat="server" class="text-muted mb-0"><%# Eval("Email") %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone</p>
              </div>
              <div class="col-sm-9">
                <p id="phone" runat="server" class="text-muted mb-0"><%# Eval("PhoneNumber") %></p>
              </div>
            </div>
            <hr>
          
           
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">City</p>
              </div>
              <div class="col-sm-9">
                <p id="city2" runat="server" class="text-muted mb-0"><%# Eval("City") %></p>
              </div>
            </div>

          </div>
       
                                         </asp:Panel>
    <asp:Panel ID="Panel1" Visible="false" runat="server">


           <div>
          
                                           
  
                                 <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name</p>
              </div>
              <div class="col-sm-9">
                
                  <asp:TextBox ID="editusername" CssClass="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ValidationGroup="g1" runat="server" ControlToValidate="editusername"
                    CssClass="text-danger" ErrorMessage="*" />
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p id="P4" runat="server" CssClass="form-control" class="text-muted mb-0"> </p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone</p>
              </div>
              <div class="col-sm-9">
               
                  <asp:TextBox ID="editphone" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ValidationGroup="g1" runat="server" ControlToValidate="editphone"
                    CssClass="text-danger" ErrorMessage="*" />
               
                <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator1" runat="server" ControlToValidate="editphone" ErrorMessage="*" ValidationExpression="^(07)[7-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
          
              </div>
            </div>
            <hr>
          
           
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">City</p>
              </div>
              <div class="col-sm-9">
                <p id="P6" runat="server" class="text-muted mb-0"><%# Eval("City") %></p>
                  <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                      <asp:ListItem Value="Irbid">Irbid</asp:ListItem>
                      <asp:ListItem Value="Amman">Amman</asp:ListItem>
                      <asp:ListItem Value="Jarash">Jarash</asp:ListItem>
                      <asp:ListItem Value="Alzarqaa">Alzarqaa</asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="DropDownList1" ValidationGroup="g1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
              </div>
                 <div class="col-sm-9">
                <p id="P1" runat="server" class="text-muted mb-0">choose your photo</p>
                     <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                
              </div>
                  <div class="col-sm-9">
                      <asp:Button ID="Button2" CssClass="btn btn-outline-primary ms-1" runat="server" ValidationGroup="g1" Text="Update" OnClick="Button2_Click" />
                       <asp:Button ID="Button3"  CssClass="btn btn-outline-primary ms-1" runat="server"  Text="Cancel" OnClick="Button3_Click" />
               
   

              </div>
            </div>
          </div>
        </div>
   
      </div>

    </div>
  
    </asp:Panel>

             <div class="row">
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">Received</span> Donations
                </p>
                <div id="mydiv" class="row" runat="server">
                    </div>                  
            
               
              </div>
            </div>
          </div>
                   <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">Regected</span> Donations
                </p>
                <div id="Div1" class="row" runat="server">
                    <hr /> 
                <div class="col-9" >
                    <p class="mb-1" style="font-size: 0.8rem;">  Donation Name :Web Design </p>
                     <p class="mb-1" style="font-size: 0.8rem;">Doner Name:  moath bdour</p>
                 <p class="mb-1" style="font-size:0.8rem;"> Doner Email:  moath bdour</p>
              </div>
                    <div class="col-2">
                        <img alt="" src="../img/suction4.png" height="70px"  />
                    </div>
                    <hr /> </div>                  
            
               
              </div>
            </div>
          </div>
       
        </div>





      </div>

    </div>

  </div>

                <%if (Context.User.IsInRole("Provider")){ %>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                  <div class=" container py-5 ">
    <div class="row">
      <div class=" col-lg-12  card cardlujain">
          <div  >
        <div class="divv">
                <asp:Label ID="adddlab1" runat="server" Text="Own Donations" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [Services] ([ProviderID], [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity]) VALUES (@ProviderID, @ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity)" SelectCommand="SELECT * FROM [Services] WHERE ([ProviderID] = @ProviderID)" UpdateCommand="UPDATE [Services] SET  [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [LeftQuantity] = @LeftQuantity WHERE [ServiceID] = @ServiceID">
                    <DeleteParameters>
                        <asp:Parameter Name="ServiceID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProviderID" Type="String" />
                        <asp:Parameter Name="ServiceName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="ServiceTime" Type="DateTime" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="LeftQuantity" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="ProviderID" SessionField="id" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ProviderID" Type="String" />
                        <asp:Parameter Name="ServiceName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="ServiceTime" Type="DateTime" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="LeftQuantity" Type="Int32" />
                        <asp:Parameter Name="ServiceID" Type="Int32" />
                    </UpdateParameters>
    </asp:SqlDataSource>
                <br />
                   <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" CssClass="ordertable" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="ServiceID" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="You Don't Have Donations In Current Time" GridLines="Vertical" >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" InsertVisible="False" ReadOnly="True" SortExpression="ServiceID" />
            <asp:BoundField DataField="ServiceName" HeaderText="Name" SortExpression="ServiceName" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>'  Width="150px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2"  runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category" SortExpression="CategoryName">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList5" CssClass="form-control"  runat="server" DataSourceID="SqlDataSource4" DataTextField="CategoryName" DataValueField="CategoryName">
                        <asp:ListItem Value="Bed">Bed</asp:ListItem>
                        <asp:ListItem Value="Chair">Chair</asp:ListItem>
                        <asp:ListItem Value="Machine">Machine</asp:ListItem>
                        <asp:ListItem Value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Quantity") %>' TextMode="Number" Width="90px" style="margin-top:30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*****" ControlToValidate="TextBox1" Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="between 1-50" ControlToValidate="TextBox1" MinimumValue="1" MaximumValue="50" Font-Size="12px" ForeColor="Red"></asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LeftQuantity" SortExpression="LeftQuantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LeftQuantity") %>' TextMode="Number" Width="90px" style="margin-top:30px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*****" ControlToValidate="TextBox2" Font-Size="13px" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Left Quantity greater than Quantity" ForeColor="Red" ControlToValidate="TextBox2" ControlToCompare="TextBox1" Font-Size="12px" Operator="LessThan" Type="Integer"></asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("LeftQuantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#06283D" Font-Bold="True" Font-Names="Times New Roman" Font-Size="17px" ForeColor="#DFF6FF" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>

    <br />
                <div class="divv">
                <asp:Label ID="adddlab" runat="server" Text="Requests" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br />

    <div style="margin-left:44%">
    <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Font-Names="Times New Roman" Font-Size="17px" Width="15%">
         <asp:ListItem Value="Accept">Accept</asp:ListItem>
                        <asp:ListItem Value="Reject">Reject</asp:ListItem>
                        <asp:ListItem Value="wait">Wait</asp:ListItem>
                        <asp:ListItem Value="Finish">Finish</asp:ListItem>
</asp:DropDownList>
<asp:Button ID="Button4" runat="server" Text="Show" Width="7%" Height="30px" BackColor="#06283D" ForeColor="#DFF6FF"/></div>

              
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select * from Services inner join Orders on Services.ServiceID=Orders.ServiceID and ProviderID= @ProviderID and OrderStatus=@OrderStatus;" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID"
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
        <asp:SessionParameter Name="ProviderID" SessionField="id" />
        <asp:ControlParameter ControlID="DropDownList2" Name="OrderStatus" PropertyName="SelectedValue" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="OrderStatus" Type="String" />
        <asp:Parameter Name="OrderID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
   
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ServiceID,OrderID" DataSourceID="SqlDataSource2" EmptyDataText="No Data In This Feild" ForeColor="Black" HorizontalAlign="Center" CssClass="ordertable" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowUpdating="GridView2_RowUpdating" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle HorizontalAlign="Center" BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField AccessibleHeaderText="Name" HeaderText="Name" SortExpression="ServiceName">
               <%-- <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ServiceName") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ServiceName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pic" SortExpression="Image">
                <%--<EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Image ID="Image3" Width="50px" runat="server" ImageUrl='<%# Eval("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <%--<EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category Name" SortExpression="CategoryName">
               <%-- <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CategoryName") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Left Quantity" SortExpression="LeftQuantity">
                <%--<EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("LeftQuantity") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("LeftQuantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="condition" SortExpression="condition">
               <%-- <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("condition") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("condition") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Time" SortExpression="OrderTime">
               <%-- <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("OrderTime") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("OrderTime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Status" SortExpression="OrderStatus">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem Value="wait">Wait</asp:ListItem>
                        <asp:ListItem Value="Accept">Accept</asp:ListItem>
                        <asp:ListItem Value="Reject">Reject</asp:ListItem>
                        <asp:ListItem Value="Finish">Finish</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderStatus") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ser Quantity" SortExpression="SerQuantity">
                <%--<EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("SerQuantity") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("SerQuantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" ShowEditButton="True">
            <ControlStyle BackColor="#06283D" ForeColor="White" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="#06283D" Font-Bold="True" ForeColor="#DFF6FF" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#DFF6FF" Font-Bold="True" ForeColor="#06283D" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
    
    <br />
   
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT Orders.OrderID, Orders.ServiceID, Orders.CustomerID, Orders.OrderTime, Orders.OrderStatus, Orders.SerQuantity, Services.ProviderID, Services.ServiceName, Services.Description, Services.Image, Services.Status, Services.ServiceTime, Services.CategoryName, Services.Quantity, Services.LeftQuantity, AspNetUsers.Id, AspNetUsers.Email, AspNetUsers.EmailConfirmed, AspNetUsers.PasswordHash, AspNetUsers.SecurityStamp, AspNetUsers.PhoneNumber, AspNetUsers.PhoneNumberConfirmed, AspNetUsers.TwoFactorEnabled, AspNetUsers.LockoutEndDateUtc, AspNetUsers.LockoutEnabled, AspNetUsers.AccessFailedCount, AspNetUsers.UserName, AspNetUsers.City, AspNetUsers.UserStatus, AspNetUsers.RoleUser FROM Orders INNER JOIN Services ON Services.ServiceID = Orders.ServiceID AND Services.ProviderID = @ProviderID INNER JOIN AspNetUsers ON AspNetUsers.Id = Orders.CustomerID AND Orders.OrderID = @OrderID">
        <SelectParameters>
            <asp:SessionParameter Name="ProviderID" SessionField="DIO" />
            <asp:ControlParameter ControlID="GridView2" Name="OrderID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="50px" Width="40%" BackColor="White" BorderColor="#DFF6FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" style="margin-left:30%">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:BoundField DataField="OrderID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="150px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ServiceName" HeaderText="Donation" SortExpression="ServiceName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="CategoryName" HeaderText="Category" SortExpression="CategoryName" />
            <asp:BoundField DataField="SerQuantity" HeaderText="Quantity" SortExpression="SerQuantity" />
            <asp:BoundField DataField="OrderTime" HeaderText="Time" SortExpression="OrderTime" />
            <asp:BoundField DataField="LeftQuantity" HeaderText="LeftQuantity" SortExpression="LeftQuantity" />
            <asp:BoundField DataField="UserName" HeaderText="Beneficiary" SortExpression="UserName" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="OrderStatus" HeaderText="Status" SortExpression="OrderStatus" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#DFF6FF" ForeColor="#4A3C8C" />
    </asp:DetailsView>
    <br />
    </div>
</div> </div>
     </div>  </ContentTemplate>
              </asp:UpdatePanel>  <%} %>


                 
</section>
     </div>    


 <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
     <script>
         function message() {
             Swal.fire(
                 'updated successfully!',
                 'changes have been saved!',
                 'success'
             )
         }
     </script>
</asp:Content>
