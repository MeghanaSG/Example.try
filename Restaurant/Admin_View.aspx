<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_View.aspx.cs" Inherits="Admin_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">

        <br />
        <br />
        <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant %>" SelectCommand="SELECT [uname], [email], [dob], [gender] FROM [user_info]"></asp:SqlDataSource>

    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="uname" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="uname" HeaderText="User Name" ReadOnly="True" SortExpression="uname" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="dob" HeaderText="Date of birth" SortExpression="dob" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>

    <br />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant %>" SelectCommand="SELECT [uname], [email], [dob], [gender] FROM [user_info] WHERE ([uname] = @uname)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="uname" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="uname" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            uname:
            <asp:Label ID="unameLabel1" runat="server" Text='<%# Eval("uname") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            dob:
            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
            <br />
            gender:
            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            uname:
            <asp:TextBox ID="unameTextBox" runat="server" Text='<%# Bind("uname") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            dob:
            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
            <br />
            gender:
            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            uname:
            <asp:Label ID="unameLabel" runat="server" Text='<%# Eval("uname") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            dob:
            <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant %>" DeleteCommand="DELETE FROM [user_reserve] WHERE [uname] = @uname" InsertCommand="INSERT INTO [user_reserve] ([uname], [email], [phone], [tbook], [persons], [date], [food], [occasion], [status]) VALUES (@uname, @email, @phone, @tbook, @persons, @date, @food, @occasion, @status)" SelectCommand="SELECT * FROM [user_reserve]" UpdateCommand="UPDATE [user_reserve] SET [email] = @email, [phone] = @phone, [tbook] = @tbook, [persons] = @persons, [date] = @date, [food] = @food, [occasion] = @occasion, [status] = @status WHERE [uname] = @uname">
            <DeleteParameters>
                <asp:Parameter Name="uname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="tbook" Type="String" />
                <asp:Parameter Name="persons" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="food" Type="String" />
                <asp:Parameter Name="occasion" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="tbook" Type="String" />
                <asp:Parameter Name="persons" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="food" Type="String" />
                <asp:Parameter Name="occasion" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="uname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="uname" DataSourceID="SqlDataSource3" OnRowCommand="onSelected">
            <Columns>
                <asp:BoundField DataField="uname" HeaderText="uname" ReadOnly="True" SortExpression="uname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="tbook" HeaderText="tbook" SortExpression="tbook" />
                <asp:BoundField DataField="persons" HeaderText="persons" SortExpression="persons" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="food" HeaderText="food" SortExpression="food" />
                <asp:BoundField DataField="occasion" HeaderText="occasion" SortExpression="occasion" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
             
                <asp:ButtonField ButtonType="Button" Text="Reserve" />
                
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />

        </form>
</asp:Content>

