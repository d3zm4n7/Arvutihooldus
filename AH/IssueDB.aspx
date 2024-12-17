<%@ Page Title="Taotluse vormimine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IssueDB.aspx.cs" Inherits="AH.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Taotluse vorming</h2>
    <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IssueID" DataSourceID="SqlDataSource1" Height="50px" Width="107px" DefaultMode="Insert" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="IssueID" HeaderText="IssueID" InsertVisible="False" ReadOnly="True" SortExpression="IssueID" />
                    <asp:TemplateField HeaderText="Kliendi nimi" SortExpression="ClientID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ClientID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ClientName" DataValueField="ClientID" SelectedValue='<%# Bind("ClientID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" SelectCommand="SELECT ClientName, ClientID FROM ClientsDB"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ClientID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Device" HeaderText="Seade" SortExpression="Device" />
                    <asp:BoundField DataField="Brand" HeaderText="Kaubamärk" SortExpression="Brand" />
                    <asp:BoundField DataField="Model" HeaderText="Mudel" SortExpression="Model" />
                    <asp:BoundField DataField="IssueDescription" HeaderText="Probleemi kirjeldus" SortExpression="IssueDescription" />
                    <asp:TemplateField HeaderText="Registreerimise kuupäev" SortExpression="IssueRegDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IssueRegDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" SelectedDate='<%# Bind("IssueRegDate") %>' Width="220px" CellPadding="1">
                                <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("IssueRegDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowInsertButton="True" CancelText="Tühista" InsertText="Sisesta" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" DeleteCommand="DELETE FROM [IssueDB] WHERE [IssueID] = @IssueID" InsertCommand="INSERT INTO [IssueDB] ([ClientID], [Device], [Brand], [Model], [IssueDescription], [IssueRegDate]) VALUES (@ClientID, @Device, @Brand, @Model, @IssueDescription, @IssueRegDate)" SelectCommand="SELECT * FROM [IssueDB]" UpdateCommand="UPDATE [IssueDB] SET [ClientID] = @ClientID, [Device] = @Device, [Brand] = @Brand, [Model] = @Model, [IssueDescription] = @IssueDescription, [IssueRegDate] = @IssueRegDate WHERE [IssueID] = @IssueID">
                <DeleteParameters>
                    <asp:Parameter Name="IssueID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="Device" Type="String" />
                    <asp:Parameter Name="Brand" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="IssueDescription" Type="String" />
                    <asp:Parameter DbType="Date" Name="IssueRegDate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="Device" Type="String" />
                    <asp:Parameter Name="Brand" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="IssueDescription" Type="String" />
                    <asp:Parameter DbType="Date" Name="IssueRegDate" />
                    <asp:Parameter Name="IssueID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IssueID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="1010px">
                <Columns>
                    <asp:BoundField DataField="IssueID" HeaderText="IssueID" ReadOnly="True" SortExpression="IssueID" />
                    <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
                    <asp:BoundField DataField="Device" HeaderText="Device" SortExpression="Device" />
                    <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="IssueDescription" HeaderText="IssueDescription" SortExpression="IssueDescription" />
                    <asp:BoundField DataField="IssueRegDate" HeaderText="IssueRegDate" SortExpression="IssueRegDate" DataFormatString="{0:dd-MMM-yy}"/>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" DeleteCommand="DELETE FROM [IssueDB] WHERE [IssueID] = @IssueID" InsertCommand="INSERT INTO [IssueDB] ([ClientID], [Device], [Brand], [Model], [IssueDescription], [IssueRegDate]) VALUES (@ClientID, @Device, @Brand, @Model, @IssueDescription, @IssueRegDate)" ProviderName="<%$ ConnectionStrings:AH3ConnectionString.ProviderName %>" SelectCommand="SELECT [IssueID], [ClientID], [Device], [Brand], [Model], [IssueDescription], [IssueRegDate] FROM [IssueDB]" UpdateCommand="UPDATE [IssueDB] SET [ClientID] = @ClientID, [Device] = @Device, [Brand] = @Brand, [Model] = @Model, [IssueDescription] = @IssueDescription, [IssueRegDate] = @IssueRegDate WHERE [IssueID] = @IssueID">
                <DeleteParameters>
                    <asp:Parameter Name="IssueID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="Device" Type="String" />
                    <asp:Parameter Name="Brand" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="IssueDescription" Type="String" />
                    <asp:Parameter DbType="Date" Name="IssueRegDate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="Device" Type="String" />
                    <asp:Parameter Name="Brand" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="IssueDescription" Type="String" />
                    <asp:Parameter DbType="Date" Name="IssueRegDate" />
                    <asp:Parameter Name="IssueID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</p>
    </main>
</asp:Content>
