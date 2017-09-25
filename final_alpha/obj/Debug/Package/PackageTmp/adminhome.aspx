<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="final_alpha.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Set Question" />
        <asp:Button ID="Button4" runat="server" Text="See students list" 
            onclick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" Text="Button" />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
        <asp:Label ID="Label1" runat="server" Text="login as "></asp:Label>
    
    </div>
    </form>
</body>
</html>
