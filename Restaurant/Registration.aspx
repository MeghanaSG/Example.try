<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="reservation" class="reservations-main pad-top-100 pad-bottom-100">
        <div class="container">
            <div class="row">
                <div class="form-reservations-box">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                            <h2 class="block-title text-center">
						Registration Form			
					</h2>
                        </div>
                        <p>PLEASE FILL OUT ALL REQUIRED* FIELDS. THANKS!</p>
                        <form runat="server">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:Label ID="Label1" runat="server" Text="Enter username" BackColor="White" ForeColor="Black"></asp:Label>
                            <asp:TextBox ID="txtname" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                     <asp:Label ID="Label2" runat="server" Text="Enter email-id" BackColor="White" ForeColor="Black"></asp:Label>
                            <asp:TextBox ID="txtemail" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter proper email id" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <!-- end col -->
                             <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    
                                    <asp:Label ID="Label5" runat="server" Text="Date of Birth" BackColor="White" ForeColor="Black"></asp:Label>
                                  <asp:Calendar ID="txtdob" CssClass="date" runat="server"></asp:Calendar>
                                </div>
                            </div>
                            <!-- end col -->
                   
                          
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                     <asp:Label ID="Label4" runat="server" Text="Select Gender" BackColor="White" ForeColor="Black"></asp:Label>
                                    <asp:DropDownList ID="drpgender" CssClass="selectpicker" runat="server">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Other</asp:ListItem>
                                    </asp:DropDownList>
                                
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                     <asp:Label ID="Label6" runat="server" Text="Enter password" BackColor="White" ForeColor="Black"></asp:Label>
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                                   
                                </div>
                            </div>
                            <!-- end col -->
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                     <asp:Label ID="Label3" runat="server" Text="Enter confirm password" BackColor="White" ForeColor="Black"></asp:Label>
                            <asp:TextBox ID="txtconpass" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter proper confirm password" ControlToCompare="txtconpass" ControlToValidate="txtpass"></asp:CompareValidator>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="reserve-book-btn text-center">
                                    <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" />
                                </div>
                            </div>
                            <!-- end col -->
                        </form>
                        <!-- end form -->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end reservations-box -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end reservations-main -->
</asp:Content>

