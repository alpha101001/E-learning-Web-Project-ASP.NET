<%@ Page Title="" Language="C#" MasterPageFile="~/learn.Master" AutoEventWireup="true" CodeBehind="ModifyCourses.aspx.cs" Inherits="Learnathon.ModifyCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <head>
    <style>
        body {
            background-image: url('images/UserManageByAdmin.jpg');
        }


        .container-fluid {
            background-color: transparent;
        }

        .card {
            background-color: transparent;
        }
        h4{
            color: #87ceeb;
        }
        

    </style>
    
</head>
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
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-success" Width="80%" runat="server" Text="ADD" OnClick="Button3_Click" />
                            </center>
                        </div>
                        <div class="col-md-4">
                            <center>
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-warning" Width="80%" runat="server" Text="UPDATE" OnClick="Button2_Click" />
                            </center>
                        </div>
                        <div class="col-md-4">
                            <center>
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" Width="80%" runat="server" Text="DELETE"  />
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
</body>
    

</asp:Content>
