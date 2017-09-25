<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exam.aspx.cs" Inherits="final_alpha.WebForm7" %>

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
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <table class="style1">
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="qbox" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="a" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="A" 
                    oncheckedchanged="CheckBox1_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="b" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="CheckBox2" runat="server" Text="B" 
                    oncheckedchanged="CheckBox2_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="c" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="CheckBox3" runat="server" Text="C" 
                    oncheckedchanged="CheckBox3_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="d" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="CheckBox4" runat="server" Text="D" 
                    oncheckedchanged="CheckBox4_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Next" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <input id="Reset1" type="reset" value="reset" /></td>
        </tr>
    </table>
    </form>
</body>
</html>
