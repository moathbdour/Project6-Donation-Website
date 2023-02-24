<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Project6v2.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="^(07)[7-9]{1}[0-9]{7}$" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            </div>
    </form>
</body>
</html>
