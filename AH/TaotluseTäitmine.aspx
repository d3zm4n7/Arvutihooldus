<%@ Page Title="Taotluse täitmine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TaotluseTäitmine.aspx.cs" Inherits="AH.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="TeenusTehtud" DataSourceID="SqlDataSource1jobsdone" DefaultMode="Insert" Height="50px" Width="125px" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="TeenusTehtud" HeaderText="TeenusTehtud" InsertVisible="False" ReadOnly="True" SortExpression="TeenusTehtud" />
                    <asp:TemplateField HeaderText="Inseneri nimi" SortExpression="EngineerID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EngineerID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1eng" DataTextField="EngineerName" DataValueField="EngineerID" SelectedValue='<%# Bind("EngineerID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1eng" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" SelectCommand="SELECT [EngineerID], [EngineerName] FROM [EngineerideDB]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("EngineerID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Kliendi nimi" SortExpression="ClientID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ClientID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1client" DataTextField="ClientName" DataValueField="ClientID" SelectedValue='<%# Bind("ClientID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1client" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" SelectCommand="SELECT [ClientID], [ClientName] FROM [ClientsDB]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ClientID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Probleemi kirjeldus" SortExpression="IssueID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("IssueID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1jobs" DataTextField="IssueDescription" DataValueField="IssueID" SelectedValue='<%# Bind("IssueID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1jobs" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" SelectCommand="SELECT [IssueID], [IssueDescription] FROM [IssueDB]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("IssueID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Teenus tehtud" SortExpression="TeenuseID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TeenuseID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1teenus" DataTextField="Teenus" DataValueField="TeenuseID" SelectedValue='<%# Bind("TeenuseID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1teenus" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" SelectCommand="SELECT [TeenuseID], [Teenus] FROM [Teenused]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("TeenuseID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Teenuse tegimise kuupäev" SortExpression="TeenuseTegDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("TeenuseTegDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" SelectedDate='<%# Bind("TeenuseTegDate") %>' Width="220px" CellPadding="1">
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
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("TeenuseTegDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowInsertButton="True" CancelText="Tühista" InsertText="Sisesta" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1jobsdone" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" DeleteCommand="DELETE FROM [TehtudTeenusedDB] WHERE [TeenusTehtud] = @TeenusTehtud" InsertCommand="INSERT INTO [TehtudTeenusedDB] ([EngineerID], [ClientID], [IssueID], [TeenuseID], [TeenuseTegDate]) VALUES (@EngineerID, @ClientID, @IssueID, @TeenuseID, @TeenuseTegDate)" SelectCommand="SELECT * FROM [TehtudTeenusedDB]" UpdateCommand="UPDATE [TehtudTeenusedDB] SET [EngineerID] = @EngineerID, [ClientID] = @ClientID, [IssueID] = @IssueID, [TeenuseID] = @TeenuseID, [TeenuseTegDate] = @TeenuseTegDate WHERE [TeenusTehtud] = @TeenusTehtud">
                <DeleteParameters>
                    <asp:Parameter Name="TeenusTehtud" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EngineerID" Type="Int32" />
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="IssueID" Type="Int32" />
                    <asp:Parameter Name="TeenuseID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="TeenuseTegDate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EngineerID" Type="Int32" />
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="IssueID" Type="Int32" />
                    <asp:Parameter Name="TeenuseID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="TeenuseTegDate" />
                    <asp:Parameter Name="TeenusTehtud" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="TeenusTehtud" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="981px">
                <Columns>
                    <asp:BoundField DataField="TeenusTehtud" HeaderText="TeenusTehtud" ReadOnly="True" SortExpression="TeenusTehtud" />
                    <asp:BoundField DataField="EngineerID" HeaderText="EngineerID" SortExpression="EngineerID" />
                    <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
                    <asp:BoundField DataField="IssueID" HeaderText="IssueID" SortExpression="IssueID" />
                    <asp:BoundField DataField="TeenuseID" HeaderText="TeenuseID" SortExpression="TeenuseID" />
                    <asp:BoundField DataField="TeenuseTegDate" HeaderText="TeenuseTegDate" SortExpression="TeenuseTegDate" DataFormatString="{0:dd-MMM-yy}" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AH3ConnectionString %>" DeleteCommand="DELETE FROM [TehtudTeenusedDB] WHERE [TeenusTehtud] = @TeenusTehtud" InsertCommand="INSERT INTO [TehtudTeenusedDB] ([EngineerID], [ClientID], [IssueID], [TeenuseID], [TeenuseTegDate]) VALUES (@EngineerID, @ClientID, @IssueID, @TeenuseID, @TeenuseTegDate)" ProviderName="<%$ ConnectionStrings:AH3ConnectionString.ProviderName %>" SelectCommand="SELECT [TeenusTehtud], [EngineerID], [ClientID], [IssueID], [TeenuseID], [TeenuseTegDate] FROM [TehtudTeenusedDB]" UpdateCommand="UPDATE [TehtudTeenusedDB] SET [EngineerID] = @EngineerID, [ClientID] = @ClientID, [IssueID] = @IssueID, [TeenuseID] = @TeenuseID, [TeenuseTegDate] = @TeenuseTegDate WHERE [TeenusTehtud] = @TeenusTehtud">
                <DeleteParameters>
                    <asp:Parameter Name="TeenusTehtud" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EngineerID" Type="Int32" />
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="IssueID" Type="Int32" />
                    <asp:Parameter Name="TeenuseID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="TeenuseTegDate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EngineerID" Type="Int32" />
                    <asp:Parameter Name="ClientID" Type="Int32" />
                    <asp:Parameter Name="IssueID" Type="Int32" />
                    <asp:Parameter Name="TeenuseID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="TeenuseTegDate" />
                    <asp:Parameter Name="TeenusTehtud" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </p>
    </main>
</asp:Content>
