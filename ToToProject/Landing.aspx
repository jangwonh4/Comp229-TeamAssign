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
    <br />
    <br />

    <div class="row">
        <h1 class="text-center">We offer the best car to you!!</h1>
        <div class="col-md-6">
            <h2 style="text-align: center">Available now!</h2>
            <div class="center-block">
            
            <asp:GridView ID="GridView1"  CssClass="GridPosition" autogenerateselectbutton="True"  onselectedindexchanged="GridView1_SelectedIndexChanged" 
             runat="server"  AutoGenerateColumns="False"  Height="173px" HorizontalAlign="Center" Width="600px" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" >
                
            <AlternatingRowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="CarID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True"  />
                <asp:BoundField DataField="CarModel" HeaderText="Model" />
                <asp:BoundField DataField="CarYear" HeaderText="Year" />
                <asp:BoundField DataField="CarDesc" HeaderText="Description" />
                <asp:BoundField DataField="DatePublished" HeaderText="Date" />
            </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
                        
                        

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
    </div>
</asp:Content>
