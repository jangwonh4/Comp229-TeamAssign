<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="ToToProject.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>1</p>
    <p></p>
    <div class="alert alert-warning" style="text-align: center">
                    <strong>You can access to the site after Log in</strong>
                </div>
    <div class="col-md-6 divBody heightRegistration" id="registerDiv">
        <h2>Register for an account</h2>
        <table class="tableFillout">
        <tr><td>First Name:</td><td> <asp:TextBox runat="server" ID="firstNameTB" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="firstNameTB" Display="Dynamic" ValidationGroup="registration" ErrorMessage="First name is Required."></asp:RequiredFieldValidator></td></tr>
        <tr><td>Last Name:</td><td> <asp:TextBox runat="server" ID="lastNameTB"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="lastNameTB" Display="Dynamic" ValidationGroup="registration" ErrorMessage="Last name is Required."></asp:RequiredFieldValidator></td></tr>
        <tr><td>Username:</td><td> <asp:TextBox runat="server" ID="regUsernameTB" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="regUsernameTB" Display="Dynamic" ValidationGroup="registration" ErrorMessage="Username is Required."></asp:RequiredFieldValidator></td></tr>
        <tr><td>Email:</td><td> <asp:TextBox runat="server" ID="EmailTB"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="EmailTB" Display="Dynamic" ValidationGroup="registration" ErrorMessage="Email is Required."></asp:RequiredFieldValidator></td></tr>
        <tr><td>Password:</td><td> <asp:TextBox runat="server" ID="regPasswordTB" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="regPasswordTB" Display="Dynamic" ValidationGroup="registration" ErrorMessage="Password is Required."></asp:RequiredFieldValidator></td></tr>
        <tr><td>Confirm Password:</td><td><asp:TextBox runat="server" ID="confirmPasswordTB" TextMode="Password"></asp:TextBox></td></tr>
            <asp:CompareValidator runat="server" ControlToValidate="confirmPasswordTB" ControlToCompare="regPasswordTB" Display="Dynamic" ErrorMessage="Passwords do not match"></asp:CompareValidator>
            </table>
        <br />
        <asp:Button CssClass="btn" runat="server" Text="Create Account" Onclick="Register_Click" />
        <asp:Label runat="server" ID="WarningLbl"></asp:Label>
        
    </div>
    

    <h1>User List</h1>
    <div class ="divBody small">
    <p>             
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="userlistsql" Width="265px" AllowPaging="True">
            <Columns>
               
               
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
               
               
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="userlistsql" runat="server"
                     ConnectionString="<%$ ConnectionStrings:Comp229TeamProjectConnectionString %>" 
                    SelectCommand="SELECT [Username] FROM [Customer]"></asp:SqlDataSource>
    </p>
        </div>
</asp:Content>
