<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_info.aspx.cs" Inherits="final_alpha.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Images/Grijze-achtergronden-grijze-wallpapers-grijs-achtergrond-hd-30.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:databaseConnectionString %>" 
            
            SelectCommand="SELECT [username], [student_id], [first_name], [last_name], [institute], [country], [city], [mobile_no], [email] FROM [students] ORDER BY [first_name], [last_name]" 
            onselecting="SqlDataSource1_Selecting">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="student_id" HeaderText="student_id" 
                    SortExpression="student_id" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" 
                    SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" 
                    SortExpression="last_name" />
                <asp:BoundField DataField="institute" HeaderText="institute" 
                    SortExpression="institute" />
                <asp:BoundField DataField="country" HeaderText="country" 
                    SortExpression="country" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" 
                    SortExpression="mobile_no" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
        </asp:GridView>
    
    </div>
    <p>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="log out" />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="adminhome" />
    </p>
    </form>
</body>
</html>
