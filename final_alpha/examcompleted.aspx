<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="examcompleted.aspx.cs" Inherits="final_alpha.examcompleted" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body background="Images/Grijze-achtergronden-grijze-wallpapers-grijs-achtergrond-hd-30.jpg">
    <form id="form1" runat="server">
    <p>
        no new exam available.<table class="style1">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="home" />
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="log out" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    </form>
</body>
</html>
