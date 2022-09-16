<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ASPNET_ELibraryManagement.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row"
            <%-- mx-auto centers the div  --%>
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/adminuser.png"/>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label> Admin ID</label>
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Admin ID"></asp:TextBox>
                                </div>

                                <label> Password </label>
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <%-- btn-block or w-100 takes the entire space --%>
                                <div class="form-group"> 
                                    <asp:Button ID="Button1" class="btn btn-success w-100 btn-lg" runat="server" Text="Login" />
                                </div>

                            </div>
                        </div>

                         

                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a></br>
            </div>
        </div>
    </div>
</asp:Content>
