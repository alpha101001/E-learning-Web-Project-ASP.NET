<%@ Page Title="" Language="C#" MasterPageFile="~/learn.Master" AutoEventWireup="true" CodeBehind="SPECIAL.aspx.cs" Inherits="Learnathon.SPECIAL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <body>
<div class="container">
    <div class="row">
        <div class="col-md">

            <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col">
                            <center>
                                    <h4>Course Details</h4>
                                </center>
                        </div>
                    </div>

                    <div class="row">
                        
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Course ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go"  />
                                </div>
                            </div>
                        </div>

                       
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3">
                            <label>Title</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Title"></asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-9">
                            <label>Content</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Content"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    <br/>
                    <div class="row">
                        
                        <div class="col-md-4">
                            <center>
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-success" Width="80%" runat="server" Text="DELETE INSTRUCTOR"  />
                            </center>
                        </div>
                        <div class="col-md-4">
                            <center>
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-warning" Width="80%" runat="server" Text="DELETE STUDENT"  />
                            </center>
                        </div>
                        <div class="col-md-4">
                            <center>
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" Width="80%" runat="server" Text="DELETE COURSE"  />
                            </center>
                        </div>

                    </div>
                    <br />
                   


                </div>
            </div>
            <br/>
            <center>
            <a class="btn btn-lg btn-block btn-success" href="homepage.aspx"><< Back to Home</a> 
                <br/>
            </center>
            <br/>
        </div>

      


        </div>

    </div>
</div>

</asp:Content>
