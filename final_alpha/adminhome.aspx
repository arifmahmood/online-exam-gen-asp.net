<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="final_alpha.WebForm3" %>

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
    <div style="margin-left: 80px">
    
        &nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label1" runat="server" Text="login as "></asp:Label>
    
    </div>
    <table class="style1">
        <tr>
            <td>
    
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Set Question" />
        <asp:Button ID="Button4" runat="server" Text="See students list" 
            onclick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" Text="result" onclick="Button5_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
    
        <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
            Text="edit question" Height="31px" Width="141px" />
        <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
            Text="validate everyone for new exam" />
    
            </td>
            <td>
                &nbsp;</td>
            <td>
    
        <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
            Text="delete all question" />
    
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
        <asp:Button ID="Button1" runat="server" Text="logout" onclick="Button1_Click" />
    
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
