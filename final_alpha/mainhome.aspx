<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainhome.aspx.cs" Inherits="final_alpha.WebForm6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 100%;
            margin-bottom: 0px;
        }
        .style6
        {
            height: 30px;
        }
        .style7
        {
            width: 55px;
            height: 30px;
            text-align: left;
        }
        .style8
        {
            width: 54px;
            height: 30px;
            text-align: left;
        }
        .style9
        {
            width: 46px;
            height: 30px;
            text-align: left;
        }
        .style10
        {
            width: 1376px;
            height: 100px;
            margin-right: 101px;
        }
    </style>
</head>
<body background="Images/Grijze-achtergronden-grijze-wallpapers-grijs-achtergrond-hd-30.jpg">
    <form id="form1" runat="server">
    <div>
    
        <img alt="welcome" class="style10" src="Images/welcome.jpg" /><br />
    </div>
    <table class="style2">
        <tr>
            <td class="style6">
                <asp:Button ID="Button2" runat="server" Text="login as student" 
                    onclick="Button2_Click" BorderColor="#000099" BorderStyle="Groove" 
                    Height="46px" Width="153px" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="registration" BorderColor="#000099" BorderStyle="Groove" 
                    Height="47px" Width="113px" />
                <asp:Button ID="Button4" runat="server" Text="login as moderator" 
                    onclick="Button4_Click" BorderColor="#000099" BorderStyle="Groove" 
                    Height="47px" Width="172px" />
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
    </form>
    <p>
        Welcome to virtual exam generator.</p>
</body>
</html>
