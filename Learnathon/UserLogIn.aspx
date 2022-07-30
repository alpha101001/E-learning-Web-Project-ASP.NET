<%@ Page Title="" Language="C#" MasterPageFile="~/learn.Master" AutoEventWireup="true" CodeBehind="UserLogIn.aspx.cs" Inherits="Learnathon.UserLogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
    <style>
        body {
            background-image: url("image/abstract-blue-geometric-shapes-background_1035-17545.jpg");


        }

    </style>
   
    

    <div class="text container-fluid">
    <div class="container-fluid">
        <br/>
        <header>
            <h2 class="logo">User Log In</h2>
  
        </header>
        <br/>
        
        <br

        <div class="row">
            <div class="col-md">
                <center>
                    <asp:TextBox ID="TextBox1" type="text" name="UserName" Height="55px" CssClass="box bg-opacity-75 bg-dark text-bg-success" placeholder="Enter User ID" runat="server" Width="35%"></asp:TextBox>
                </center>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />

        <div class="row">
            <div class="col-md">
                <center>
                    <asp:TextBox ID="TextBox2" Height="55px" CssClass="box bg-opacity-75 bg-dark text-bg-success" runat="server" Width="35%" type="password" name="password"  placeholder="Enter Password" runat="server"></asp:TextBox>
                </center>
            </div>
        </div>
        <br />
        <br />
        <br />
        
       
      
        <br />
        <br />
        <br />
        <div class="row">
            <div class="col-md-6">
                <center>
                    <asp:Button ID="submit" CssClass="box bg-opacity-75 bg-dark text-bg-success" Height="55px" Width="40%" runat="server" Text="Log IN AS Instructor " OnClick="submit_Click" />
                </center>
            </div>
    
            <div class="col-md-6">
                <center>
                    <asp:Button ID="Button2" CssClass="box bg-opacity-75 bg-dark text-bg-success" Height="55px" Width="40%" runat="server" Text="Log IN AS Student " OnClick="Button2_Click" />
                </center>
            </div>
        </div>
        
        
        <br />
        <br />
        <br />
        <div class="row flex-container">
    
            <div class="col=md-3 flex-container">
                <center>
              
                    <asp:CheckBox ID="CheckBox1" CssClass="box bg-opacity-75 bg-dark text-bg-success" Height="55px" Width="10%" Text="Remember Me??"  runat="server" />

                </center>
        

            </div>
    
        </div>    

        <br />
        <br />
        <br />


        <div class="row flex-container">
            <div class="col-md">
                <center>
                    <asp:Button ID="Button1" CssClass="box bg-opacity-75 bg-dark text-bg-success" Height="55px" Width="20%" runat="server" Text="Not a User?? Sign Up "  />
                </center>
            </div>
        </div>

        



  
    </div>
    </body>
</asp:Content>
