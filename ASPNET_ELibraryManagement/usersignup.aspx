<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ASPNET_ELibraryManagement.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="row"
            <%-- mx-auto centers the div  --%>
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png"/>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Sign Up</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label> Full Name</label>
                                
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-6">
                                <label> Date of Birth </label>
                                
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label> Contact No</label>
                                
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-6">
                                <label> Email ID </label>
                                
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label> State</label>
                               
                                <div class="form-group"> 
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server"> 
                                    <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                    <asp:ListItem Text="Quebec" Value="Quebec"/>
                                    <asp:ListItem Text="Alberta" Value="Alberta"/>
                                    <asp:ListItem Text="Ontario" Value="Ontario"/>
                                    <asp:ListItem Text="Manitoba" Value="Manitoba"/>
                                    <asp:ListItem Text="Nouvelle-Ecosse" Value="Nouvelle-Ecosse"/>
                                    <asp:ListItem Text="Saskatchewan" Value="Saskatchewan"/>
                                    <asp:ListItem Text="Nouveau-Brunswick" Value="Nouveau-Brunswick"/>
                                    </asp:DropDownList>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <label> City</label>
                                
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox6" class="form-control" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <label> Pin Code </label>
                                
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label> Full Address</label>
                                
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Full Address" TextMode="Number"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            
                        </div>
                        
                        <div class="row">
                            
                            <div class="col">
                                    <center>
                                    <span class="badge badge-pill badge-info">Login Credentials</span>
                                    </center>
                               </div>
                             <br />
                        </div>
                        

                        <div class="row">
                            <div class="col-md-6">
                                <label> User ID </label>
                                
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox8" class="form-control" runat="server" placeholder="User ID"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-6">
                                <label> Password </label>
                                
                                <div class="form-group"> 
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <%-- btn-block or w-100 takes the entire space --%>
                                <div class="form-group"> 
                                    <asp:Button ID="Button1" class="btn btn-success w-100 btn-lg" runat="server" Text="Sign Up" />
                                </div>
                                
                            </div>
                        </div>

                         

                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a> <br />
            </div>
        </div>
    </div>
</asp:Content>
