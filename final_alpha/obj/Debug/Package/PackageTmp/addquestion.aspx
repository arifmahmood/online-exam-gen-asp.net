<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addquestion.aspx.cs" Inherits="final_alpha.WebForm4" %>

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
            width: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    Question</td>
                <td>
                    <asp:TextBox ID="q" runat="server" Width="888px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    option A</td>
                <td>
                    <asp:TextBox ID="opa" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    option B</td>
                <td>
                    <asp:TextBox ID="opb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    option C</td>
                <td>
                    <asp:TextBox ID="opc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    option D</td>
                <td>
                    <asp:TextBox ID="opd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    correct option</td>
                <td>
                    <asp:TextBox ID="ca" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" 
                        style="height: 26px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
