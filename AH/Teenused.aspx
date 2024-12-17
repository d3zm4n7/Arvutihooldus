<%@ Page Title="Teenused" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teenused.aspx.cs" Inherits="AH.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="TeenuseID" DataSourceID="SqlDataSource1teenused" Height="50px" Width="125px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DefaultMode="Insert" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="TeenuseID" HeaderText="TeenuseID" InsertVisible="False" ReadOnly="True" SortExpression="TeenuseID" />
                    <asp:BoundField DataField="Teenus" HeaderText="Teenus" SortExpression="Teenus" />
                    <asp:BoundField DataField="Hind" HeaderText="Hind" SortExpression="Hind" />
                    <asp:BoundField DataField="ValuutaKood" HeaderText="ValuutaKood" SortExpression="ValuutaKood" />
                    <asp:CommandField ShowInsertButton="True" CancelText="Tühista" InsertText="Sisesta" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1teenused" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" DeleteCommand="DELETE FROM [Teenused] WHERE [TeenuseID] = @TeenuseID" InsertCommand="INSERT INTO [Teenused] ([Teenus], [Hind], [ValuutaKood]) VALUES (@Teenus, @Hind, @ValuutaKood)" ProviderName="<%$ ConnectionStrings:AH3ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Teenused]" UpdateCommand="UPDATE [Teenused] SET [Teenus] = @Teenus, [Hind] = @Hind, [ValuutaKood] = @ValuutaKood WHERE [TeenuseID] = @TeenuseID">
                <DeleteParameters>
                    <asp:Parameter Name="TeenuseID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Teenus" Type="String" />
                    <asp:Parameter Name="Hind" Type="Decimal" />
                    <asp:Parameter Name="ValuutaKood" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Teenus" Type="String" />
                    <asp:Parameter Name="Hind" Type="Decimal" />
                    <asp:Parameter Name="ValuutaKood" Type="String" />
                    <asp:Parameter Name="TeenuseID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="TeenuseID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="492px">
                <Columns>
                    <asp:BoundField DataField="TeenuseID" HeaderText="TeenuseID" ReadOnly="True" SortExpression="TeenuseID" />
                    <asp:BoundField DataField="Teenus" HeaderText="Teenus" SortExpression="Teenus" />
                    <asp:TemplateField HeaderText="Hind" SortExpression="Hind">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Hind") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Hind") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ValuutaKood" HeaderText="ValuutaKood" SortExpression="ValuutaKood" />
                    <asp:CommandField ShowDeleteButton="True" DeleteText="Kustuta" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" DeleteCommand="DELETE FROM [Teenused] WHERE [TeenuseID] = @TeenuseID" InsertCommand="INSERT INTO [Teenused] ([Teenus], [Hind], [ValuutaKood]) VALUES (@Teenus, @Hind, @ValuutaKood)" ProviderName="<%$ ConnectionStrings:AH3ConnectionString.ProviderName %>" SelectCommand="SELECT [TeenuseID], [Teenus], [Hind], [ValuutaKood] FROM [Teenused]" UpdateCommand="UPDATE [Teenused] SET [Teenus] = @Teenus, [Hind] = @Hind, [ValuutaKood] = @ValuutaKood WHERE [TeenuseID] = @TeenuseID">
                <DeleteParameters>
                    <asp:Parameter Name="TeenuseID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Teenus" Type="String" />
                    <asp:Parameter Name="Hind" Type="Decimal" />
                    <asp:Parameter Name="ValuutaKood" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Teenus" Type="String" />
                    <asp:Parameter Name="Hind" Type="Decimal" />
                    <asp:Parameter Name="ValuutaKood" Type="String" />
                    <asp:Parameter Name="TeenuseID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</p>
    </main>
</asp:Content>
