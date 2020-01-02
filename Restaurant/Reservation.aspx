<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Reservation" %>

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
						Reservations			
					</h2>
                        </div>
                        <h4 class="form-title">BOOKING FORM</h4>
                        <p>PLEASE FILL OUT ALL REQUIRED* FIELDS. THANKS!</p>

                        <form runat="server">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:Label ID="Label3" runat="server" Text="Enter your name" BackColor="White" ForeColor="Black"></asp:Label>
                                    <asp:TextBox ID="txtname"  runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:Label ID="Label1" runat="server" AutoCompleteType="Disabled" Text="Enter email-id" BackColor="White" ForeColor="Black"></asp:Label>
                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter proper email id" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:Label ID="Label2" runat="server" AutoCompleteType="Disabled" Text="Enter contact no." BackColor="White" ForeColor="Black"></asp:Label>
                                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:Label ID="Label9" runat="server"  AutoCompleteType="Disabled" Text="Enter time for booking" BackColor="White" ForeColor="Black"></asp:Label>
                                    <asp:TextBox ID="txttime" CssClass="date-picker" runat="server"></asp:TextBox>
                                   
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:Label ID="Label4" runat="server" Text="Select No. of persons" BackColor="White" ForeColor="Black"></asp:Label>
                                    <asp:DropDownList ID="drpperson" runat="server">
                                        <asp:ListItem>100</asp:ListItem>
                                        <asp:ListItem>200</asp:ListItem>
                                        <asp:ListItem>500</asp:ListItem>
                                        <asp:ListItem>1000</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:Label ID="Label5" runat="server" Text="Enter date for booking" AutoCompleteType="Disabled" BackColor="White" ForeColor="Black"></asp:Label>
                                    <asp:TextBox ID="txtdate" CssClass="date-picker" runat="server"></asp:TextBox>
                                   
                                </div>
                            </div>
                            <!-- end col -->
                             <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:Label ID="Label7" runat="server" Text="Select preferred food" BackColor="White" ForeColor="Black"></asp:Label>
                                     <asp:DropDownList ID="drpfood" runat="server">
                                        <asp:ListItem>Indian</asp:ListItem>
                                        <asp:ListItem>Continental</asp:ListItem>
                                        <asp:ListItem>Mexican</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                </div>
                            </div>
                            <!-- end col -->
                           
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-box">
                                    <asp:Label ID="Label8" runat="server" Text="Select Ocassion" BackColor="White" ForeColor="Black"></asp:Label>
                                     <asp:DropDownList ID="drpoccasion" runat="server">
                                        <asp:ListItem>Wedding</asp:ListItem>
                                        <asp:ListItem>Birthday</asp:ListItem>
                                        <asp:ListItem>Anniversary</asp:ListItem>
                                    </asp:DropDownList>
                                   
                                </div>
                            </div>
                            <!-- end col -->

                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="reserve-book-btn text-center">
                                    <asp:Button ID="btnreserve" runat="server" Text="BOOK MY TABLE" OnClick="btnreserve_Click" BorderColor="#FF6600" />
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

