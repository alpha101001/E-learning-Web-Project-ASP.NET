<%@ Page Title="" Language="C#" MasterPageFile="~/learn.Master" AutoEventWireup="true" CodeBehind="ViewCourses.aspx.cs" Inherits="Learnathon.ViewCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LearnathonConnectionString %>" SelectCommand="SELECT [title], [content], [Cid] FROM [Course]"></asp:SqlDataSource>
    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="container-fluid bg-secondary bg-opacity-50 flex-fill">
                    <div class="row">
                    <div class="col-lg">
                        <asp:Label ID="Label4" runat="server" Text=<%# Eval("title") %> Font-Bold="True" Font-Size="X-Large"></asp:Label>

                    </div>
                    <div class="row">
                        <div class="col-12">
                            Course Content :
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text='<%# Eval("content") %>'></asp:Label>


                        </div>
                    </div>

                </ItemTemplate>

            </asp:TemplateField>
                
        </Columns>
        
    </asp:GridView>

    
    

</asp:Content>
