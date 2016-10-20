<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DesignView.aspx.vb" Inherits="AppData_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 6px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
         <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="163px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" />
        <br />
        <br />
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/BrandNew.accdb" SelectCommand="SELECT * FROM [Reporting]" DeleteCommand="DELETE FROM [Reporting] WHERE [Project_ID] = ?" InsertCommand="INSERT INTO [Reporting] ([Project_ID], [Project_Company], [Project_Name], [Project_SignedOn], [Project_SignedBy], [Project_SentOn], [Project_ReturnedOn], [Group_Name], [SubGroup_Name], [CCDevision_Name], [Project_Business], [Project_AmountSR], [Project_Currency], [Project_Impact], [Project_Duration]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Reporting] SET [Project_Company] = ?, [Project_Name] = ?, [Project_SignedOn] = ?, [Project_SignedBy] = ?, [Project_SentOn] = ?, [Project_ReturnedOn] = ?, [Group_Name] = ?, [SubGroup_Name] = ?, [CCDevision_Name] = ?, [Project_Business] = ?, [Project_AmountSR] = ?, [Project_Currency] = ?, [Project_Impact] = ?, [Project_Duration] = ? WHERE [Project_ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Project_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Project_ID" Type="Int32" />
                <asp:Parameter Name="Project_Company" Type="String" />
                <asp:Parameter Name="Project_Name" Type="String" />
                <asp:Parameter Name="Project_SignedOn" Type="DateTime" />
                <asp:Parameter Name="Project_SignedBy" Type="String" />
                <asp:Parameter Name="Project_SentOn" Type="DateTime" />
                <asp:Parameter Name="Project_ReturnedOn" Type="DateTime" />
                <asp:Parameter Name="Group_Name" Type="String" />
                <asp:Parameter Name="SubGroup_Name" Type="String" />
                <asp:Parameter Name="CCDevision_Name" Type="String" />
                <asp:Parameter Name="Project_Business" Type="String" />
                <asp:Parameter Name="Project_AmountSR" Type="Decimal" />
                <asp:Parameter Name="Project_Currency" Type="String" />
                <asp:Parameter Name="Project_Impact" Type="String" />
                <asp:Parameter Name="Project_Duration" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Project_Company" Type="String" />
                <asp:Parameter Name="Project_Name" Type="String" />
                <asp:Parameter Name="Project_SignedOn" Type="DateTime" />
                <asp:Parameter Name="Project_SignedBy" Type="String" />
                <asp:Parameter Name="Project_SentOn" Type="DateTime" />
                <asp:Parameter Name="Project_ReturnedOn" Type="DateTime" />
                <asp:Parameter Name="Group_Name" Type="String" />
                <asp:Parameter Name="SubGroup_Name" Type="String" />
                <asp:Parameter Name="CCDevision_Name" Type="String" />
                <asp:Parameter Name="Project_Business" Type="String" />
                <asp:Parameter Name="Project_AmountSR" Type="Decimal" />
                <asp:Parameter Name="Project_Currency" Type="String" />
                <asp:Parameter Name="Project_Impact" Type="String" />
                <asp:Parameter Name="Project_Duration" Type="Int32" />
                <asp:Parameter Name="Project_ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Project_ID" DataSourceID="AccessDataSource1" Height="50px" Width="486px" CssClass="auto-style1">
            <Fields>
                <asp:BoundField DataField="Project_ID" HeaderText="Project_ID" InsertVisible="False" ReadOnly="True" SortExpression="Project_ID" />
                <asp:BoundField DataField="Project_Company" HeaderText="Project_Company" SortExpression="Project_Company" />
                <asp:BoundField DataField="Project_Name" HeaderText="Project_Name" SortExpression="Project_Name" />
                <asp:BoundField DataField="Project_SignedOn" HeaderText="Project_SignedOn" SortExpression="Project_SignedOn" />
                <asp:BoundField DataField="Project_SignedBy" HeaderText="Project_SignedBy" SortExpression="Project_SignedBy" />
                <asp:BoundField DataField="Project_SentOn" HeaderText="Project_SentOn" SortExpression="Project_SentOn" />
                <asp:BoundField DataField="Project_ReturnedOn" HeaderText="Project_ReturnedOn" SortExpression="Project_ReturnedOn" />
                <asp:BoundField DataField="Group_Name" HeaderText="Group_Name" SortExpression="Group_Name" />
                <asp:BoundField DataField="SubGroup_Name" HeaderText="SubGroup_Name" SortExpression="SubGroup_Name" />
                <asp:BoundField DataField="CCDevision_Name" HeaderText="CCDevision_Name" SortExpression="CCDevision_Name" />
                <asp:BoundField DataField="Project_Business" HeaderText="Project_Business" SortExpression="Project_Business" />
                <asp:BoundField DataField="Project_AmountSR" HeaderText="Project_AmountSR" SortExpression="Project_AmountSR" />
                <asp:BoundField DataField="Project_Currency" HeaderText="Project_Currency" SortExpression="Project_Currency" />
                <asp:BoundField DataField="Project_Impact" HeaderText="Project_Impact" SortExpression="Project_Impact" />
                <asp:BoundField DataField="Project_Duration" HeaderText="Project_Duration" SortExpression="Project_Duration" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
        <br />
        <br />
    
    </div>
        <br />
        <a href="Default.aspx">Home</a><br />
    </form>
</body>
</html>
