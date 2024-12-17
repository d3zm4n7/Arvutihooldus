<%@ Page Title="Klientide andmebaas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientDB.aspx.cs" Inherits="AH.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Klientide andmebaas</h2>
        
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ClientID" DataSourceID="SqlDataSource1clients" DefaultMode="Insert" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="ClientID" HeaderText="ClientID" InsertVisible="False" ReadOnly="True" SortExpression="ClientID" />
                <asp:BoundField DataField="ClientName" HeaderText="Nimi/Perekonnanimi" SortExpression="ClientName" />
                <asp:BoundField DataField="Phone" HeaderText="Telefoni number" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Epost" SortExpression="Email" />
                <asp:CommandField ShowInsertButton="True" CancelText="Tühista" InsertText="Sisesta" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1clients" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" DeleteCommand="DELETE FROM [ClientsDB] WHERE [ClientID] = @ClientID" InsertCommand="INSERT INTO [ClientsDB] ([ClientName], [Phone], [Email]) VALUES (@ClientName, @Phone, @Email)" SelectCommand="SELECT * FROM [ClientsDB]" UpdateCommand="UPDATE [ClientsDB] SET [ClientName] = @ClientName, [Phone] = @Phone, [Email] = @Email WHERE [ClientID] = @ClientID">
            <DeleteParameters>
                <asp:Parameter Name="ClientID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ClientName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ClientName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ClientID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ClientID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="721px" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" SortExpression="ClientID" />
                <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField DeleteText="Kustuta" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle ForeColor="#003399" HorizontalAlign="Left" BackColor="#99CCCC" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" DeleteCommand="DELETE FROM [ClientsDB] WHERE [ClientID] = @ClientID" InsertCommand="INSERT INTO [ClientsDB] ([ClientName], [Phone], [Email]) VALUES (@ClientName, @Phone, @Email)" ProviderName="<%$ ConnectionStrings:AH3ConnectionString.ProviderName %>" SelectCommand="SELECT [ClientID], [ClientName], [Phone], [Email] FROM [ClientsDB]" UpdateCommand="UPDATE [ClientsDB] SET [ClientName] = @ClientName, [Phone] = @Phone, [Email] = @Email WHERE [ClientID] = @ClientID">
            <DeleteParameters>
                <asp:Parameter Name="ClientID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ClientName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ClientName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ClientID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </main>
</asp:Content>
