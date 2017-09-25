<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="final_alpha.registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 118px;
        }
        .style3
        {
            width: 120px;
        }
        .style4
        {
            width: 118px;
            height: 26px;
            text-align: right;
        }
        .style5
        {
            width: 120px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            width: 118px;
            height: 25px;
            text-align: right;
        }
        .style8
        {
            width: 120px;
            height: 25px;
        }
        .style9
        {
            height: 25px;
        }
        .style10
        {
            text-align: right;
            height: 23px;
        }
        .style11
        {
            width: 118px;
            text-align: right;
        }
        .style12
        {
            width: 118px;
            height: 23px;
        }
        .style13
        {
            width: 120px;
            height: 23px;
        }
        .style14
        {
            width: 118px;
            height: 30px;
        }
        .style15
        {
            width: 120px;
            height: 30px;
        }
        .style16
        {
            height: 30px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</head>
<body background="Images/Grijze-achtergronden-grijze-wallpapers-grijs-achtergrond-hd-30.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style11">
                    First Name</td>
                <td class="style3">
                    <asp:TextBox ID="fname" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="fname" 
                        ErrorMessage="First name required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Last Name</td>
                <td class="style3">
                    <asp:TextBox ID="lname" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="lname" ErrorMessage="Last name required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    User name</td>
                <td class="style3">
                    <asp:TextBox ID="uname" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="uname" ErrorMessage="user name required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Email</td>
                <td class="style3">
                    <asp:TextBox ID="email" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="email" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="email" ErrorMessage="please insert a valid email." 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Mobile No</td>
                <td class="style3">
                    <asp:TextBox ID="mob" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="mob" ErrorMessage="mobile no required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Country</td>
                <td class="style3">
                    <asp:TextBox ID="country" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="country" ErrorMessage="Country required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    City</td>
                <td class="style5">
                    <asp:TextBox ID="city" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="city" ErrorMessage="City required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Institute</td>
                <td class="style8">
                    <asp:TextBox ID="institute" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="institute" ErrorMessage="institute required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Password</td>
                <td class="style3">
                    <asp:TextBox ID="pass" runat="server" Width="120px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="pass" ErrorMessage="password required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Confirm Password</td>
                <td class="style3">
                    <asp:TextBox ID="cpass" runat="server" Width="120px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="cpass" ErrorMessage="confirm password required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="pass" ControlToValidate="cpass" 
                        ErrorMessage="Password didn't match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    </td>
                <td class="style15">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        Width="57px" />
                    <input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()" /></td>
                <td class="style16">
                    </td>
            </tr>
            <tr>
                <td class="style12">
                </td>
                <td class="style13">
                    &nbsp;</td>
                <td class="style10">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
