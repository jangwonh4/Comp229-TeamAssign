<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="ToToProject.Landing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: #ffffff; height: 280px;">
        <center>
        <a href="">
            <img class="img-rounded" width="500px" src="/Assets/Images/carImage.gif" />
            <img class="img-rounded" height="259px" src="/Assets/Images/board.gif" />
        </a>
            </center>
    </div>

    <div class="row">
        <h1 class="text-center">We offer the best car to you!!</h1>
        <div class="col-md-6">
            <h2 style="text-align: center">Available now!</h2>
            <div class="center-block">
                <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField HeaderText="Student Number" DataField="StudentID" />

                    <asp:HyperLinkField HeaderText="First Name" 
                        DataTextField="FirstMidName" 
                        DataNavigateUrlFormatString="Students.aspx?StudentID={0}"
                        DataNavigateUrlFields="StudentID"
                        />
                        
                    <asp:BoundField HeaderText="Last Name" DataField="LastName" />
                    <asp:TemplateField HeaderText="Enrollment Date">
                        <ItemTemplate>
                            <%# ((DateTime)Eval("EnrollmentDate")).ToString("yyyy-MM-dd")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
                        </center>

            </div>
        </div>

        <div class="col-md-6">
            <h2 style="text-align: center">Sign-In</h2>
            <br />

            <div class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">
                                Remember me
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary">Sign in</button>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
