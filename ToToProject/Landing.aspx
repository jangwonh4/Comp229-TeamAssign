<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="ToToProject.Landing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: #ffffff; height: 280px;">
        <center>
            <img class="img-rounded" width="500px" src="/Assets/Images/carImage.gif" />
            <img class="img-rounded" height="259px" src="/Assets/Images/board.gif" />
            </center>
    </div>
    <br />
    <br />

    <div class="row">
        <h1 class="text-center">We offer the best car to you!!</h1>
        <div class="col-md-6">
            <h2 style="text-align: center">Available now!</h2>  
            <div class="center-block">
            
            <asp:GridView ID="GridView1"  CssClass="GridPosition"  onselectedindexchanged="GridView1_SelectedIndexChanged" 
             runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="507px"  SelectText="Rent"  >
                
            <AlternatingRowStyle HorizontalAlign="left" />
            <Columns>
                <asp:CommandField SelectText="Rent and detail" ShowSelectButton="True" />
                <asp:BoundField DataField="CarID" HeaderText="CarID" InsertVisible="False" ReadOnly="True"  />
                <asp:BoundField DataField="CarModel" HeaderText="Model" />
                <asp:BoundField DataField="CarYear" HeaderText="Year" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="CarDesc" HeaderText="Description" />
                
                
            </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Left" />
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
            <div class="col-md-6 divBody heightRegistration" id="loginDiv">

                <div id="login" runat="server" visible="false">
                    <h1>Welcome</h1>
                    <p>User : <asp:Label ID="Username" runat="server" Text="Label" BackColor="Red"></asp:Label></p>
                   </div>
        <div id="nologin" runat="server" visible="true">

                     
        <h2>Login</h2>
        <table class="tableFillout">
        <tr><td>Username:</td><td> <asp:TextBox runat="server" ID="loginUsernameTB"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="loginUsernameTB" Display="Dynamic" ValidationGroup="login" ErrorMessage="Username is Required."></asp:RequiredFieldValidator>
                              </td></tr>

        <tr><td>Password:</td><td> <asp:TextBox runat="server" ID="loginPasswordTB" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="loginPasswordTB" Display="Dynamic" ValidationGroup="login" ErrorMessage="Password is Required."></asp:RequiredFieldValidator>
                              </td></tr>
            </table>
        <br />
        <asp:Button CssClass="btn" runat="server" Text="Login" ID="btnLogin" OnClick="Login_Click"/>
        <asp:Label runat="server" ID="WarningLblLogin"></asp:Label>
            

  
                </div>
    </div>
    </div> 
        
</div>
</asp:Content>
