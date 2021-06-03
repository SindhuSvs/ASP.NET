<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ValWebForm1.aspx.cs" Inherits="ValidationControls.ValWebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Submit1 {
            width: 86px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Enter Name
            <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtname" ErrorMessage="Name is compulsory"></asp:RequiredFieldValidator>
        </p>
        <p>
            Enter Email
            <asp:TextBox ID="Txtemail" runat="server"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtemail" ErrorMessage="Email is required" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
        </p>
        <p>
            Enter Url
            <asp:TextBox ID="txturl" runat="server"></asp:TextBox>
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txturl" ErrorMessage="URL is required" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
        </p>
        <p>
            Enter Age
            <asp:TextBox ID="age" runat="server"></asp:TextBox>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" ErrorMessage="Age not valid" MaximumValue="75" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        </p>
        <p>
            Enter Password
            <asp:TextBox ID="Txtpwd" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtpwd" ControlToValidate="cnfrmpwd" ErrorMessage="Password doesnt match"></asp:CompareValidator>
        </p>
        <p>
            Confirm Password
            <asp:TextBox ID="cnfrmpwd" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;</p>
        <p>
            <input id="Submit1" type="submit" value="submit" /></p>
        <p>
            &nbsp;</p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Groove" />
    </form>
    <p>
    </p>
</body>
</html>
