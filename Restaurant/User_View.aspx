<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_View.aspx.cs" Inherits="User_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <form id="Form1" runat="server">

        <br />
        <br />
        <br />


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant %>" SelectCommand="SELECT * FROM [user_info] WHERE ([uname] = @uname)">
        <SelectParameters>
            <asp:SessionParameter Name="uname" SessionField="name" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>

<br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uname" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="uname" HeaderText="User Name" ReadOnly="True" SortExpression="uname" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="dob" HeaderText="Date of birth" SortExpression="dob" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" />
        </Columns>
</asp:GridView>

<br />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant %>" DeleteCommand="DELETE FROM [user_info] WHERE [uname] = @uname" InsertCommand="INSERT INTO [user_info] ([uname], [email], [dob], [gender], [pass]) VALUES (@uname, @email, @dob, @gender, @pass)" SelectCommand="SELECT * FROM [user_info] WHERE ([uname] = @uname)" UpdateCommand="UPDATE [user_info] SET [email] = @email, [dob] = @dob, [gender] = @gender, [pass] = @pass WHERE [uname] = @uname">
        <DeleteParameters>
            <asp:Parameter Name="uname" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="dob" Type="Decimal" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="uname" SessionField="name" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="dob" Type="Decimal" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="uname" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>

<br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="uname" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="uname" HeaderText="User Name" ReadOnly="True" SortExpression="uname" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="dob" HeaderText="Date of birth" SortExpression="dob" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
</asp:DetailsView>
          <br />
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Restaurant %>" SelectCommand="SELECT * FROM [user_reserve] WHERE ([uname] = @uname)">
              <SelectParameters>
                  <asp:SessionParameter Name="uname" SessionField="name" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <br />
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="uname" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal">
              <Columns>
                  <asp:BoundField DataField="uname" HeaderText="User Name" ReadOnly="True" SortExpression="uname" />
                  <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                  <asp:BoundField DataField="phone" HeaderText="Phone No" SortExpression="phone" />
                  <asp:BoundField DataField="tbook" HeaderText="Time picked" SortExpression="tbook" />
                  <asp:BoundField DataField="persons" HeaderText="No of persons" SortExpression="persons" />
                  <asp:BoundField DataField="date" HeaderText="Date picked" SortExpression="date" />
                  <asp:BoundField DataField="food" HeaderText="Preferred food" SortExpression="food" />
                  <asp:BoundField DataField="occasion" HeaderText="Occasion" SortExpression="occasion" />
                  <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
              </Columns>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
          </form>
</asp:Content>

