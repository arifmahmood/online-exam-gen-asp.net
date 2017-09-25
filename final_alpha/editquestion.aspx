<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editquestion.aspx.cs" Inherits="final_alpha.editquestion" %>

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
            width: 70px;
        }
        .style3
        {
            width: 70px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
    </style>
</head>
<body background="Images/Grijze-achtergronden-grijze-wallpapers-grijs-achtergrond-hd-30.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="enter the question id"></asp:Label>
        <asp:TextBox ID="quid" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="edit" />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                question</td>
            <td>
                <asp:TextBox ID="qbox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                a</td>
            <td>
                <asp:TextBox ID="abox" runat="server" ontextchanged="abox_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                b</td>
            <td class="style4">
                <asp:TextBox ID="bbox" runat="server" ontextchanged="bbox_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                c</td>
            <td>
                <asp:TextBox ID="cbox" runat="server" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                d</td>
            <td>
                <asp:TextBox ID="dbox" runat="server" ontextchanged="dbox_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                correct</td>
            <td>
                <asp:TextBox ID="correctbox" runat="server" 
                    ontextchanged="correctbox_TextChanged"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="submit" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="home" />
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
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
    </form>
</body>
</html>
