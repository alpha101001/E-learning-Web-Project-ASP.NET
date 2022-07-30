﻿<%@ Page Title="" Language="C#" MasterPageFile="~/learn.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Learnathon.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        body {
            background-image: url("image/abstract-background-consisting-colorful-arcs-illustration_456031-149.jpg");
        }
    </style>
    <body>
    
    
<div class="container-fluid">
  <div class="row">
     <div class="col-md-8 mx-auto">
        <div class="card">
           <div class="card-body">
              <div class="row">
                 <div class="col">
                    <center>
                  

                        <asp:Image ID="Image1" runat="server" width="100px" src="image/reg-removebg-preview.png" />
                    </center>
                 </div>
              </div>
              <div class="row">
                 <div class="col">
                    <center>
                       <h4>Member Sign Up</h4>
                    </center>
                 </div>
              </div>
              <div class="row">
                  
                  <br/>
                  <br/>
                 <div class="col">
                    
                 </div>
              </div>
              

              <div class="row">
                 <div class="col-md-6">
                    <label>Full Name</label>
                    <div class="form-group">
                       <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                    </div>
                 </div>
                  
                  <div class="col-md-6">
                      
                      <div class="col-md">
                          <center>
                              <asp:RadioButton ID="RadInstructor" CssClass="box btn-lg bg-opacity-75  text-bg-danger"  Height="35px" Width="70%" runat="server" GroupName="group1" Text="Instructor" />
                              <br/>
                              <asp:RadioButton ID="RadStudent" CssClass="box bg-opacity-75  text-bg-danger"  Height="35px" Width="70%" runat="server" GroupName="group1" Text="Student" />
                          </center>
                      </div>
                      
                      

                  </div>
                  
                  
                  
                  
                  

                
              </div>
              
              
              
              <div class="row">
                 <div class="col">
                    <center>
                       <span class="badge badge-pill badge-info">Login Credentials</span>
                    </center>
                 </div>
              </div>
              <div class="row">
                 <div class="col-md-6">
                    <label>User ID</label>
                    <div class="form-group">
                       <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                    </div>
                 </div>
                 <div class="col-md-6">
                    <label>Password</label>
                    <div class="form-group">
                       <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                 </div>
              </div>
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />

              <div class="row">
                 <div class="col">
                     <center>
                    <div class="form-group">
                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                    </div>
                    </center>

                 </div>
              </div>
           </div>
        </div>
         <asp:Button ID="Button2" runat="server" class="btn btn-lg btn-block btn-danger" Text="<< Back to Home"  />
        <br><br>
     </div>
  </div>
</div>
<body>
    

</asp:Content>
