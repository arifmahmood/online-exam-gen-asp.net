<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="marks.aspx.cs" Inherits="final_alpha.marks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Images/Grijze-achtergronden-grijze-wallpapers-grijs-achtergrond-hd-30.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="student_id" HeaderText="student_id" 
                SortExpression="student_id" />
            <asp:BoundField DataField="marks" HeaderText="marks" ReadOnly="True" 
                SortExpression="marks" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
        SelectCommand="SELECT student_id, SUM(marks) AS marks FROM answers GROUP BY student_id">
    </asp:SqlDataSource>
    <p>
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            style="height: 26px" Text="logout" />
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="adminhome" />
    </p>
    </form>
</body>
</html>
