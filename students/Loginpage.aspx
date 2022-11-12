<%@ Page Title="Login" Language="C#" MasterPageFile="~/students/usermaster.Master" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="college_mangement_system.students.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <center style="height: 250px">
        <table style="background-color: #0000FF; color: #FFFFFF" >
           
            <tr>
                <th align="center" colspan="2"><h3>Login here</h3></th>
            </tr>
            <tr>
                <td>Select</td>
                <td>
                    <asp:DropDownList ID="DropDownList1_login" runat="server" Height="31px" Width="122px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="txt_usernam_login" runat="server" Placeholder="Username"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password</td>
                
                <td>  <asp:TextBox ID="txt_pass_login" runat="server" placeholder="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button_login" runat="server" Text="Login" BackColor="Red" Font-Bold="True" Font-Size="Smaller" Height="21px" Width="60px" OnClick="Button_login_Click" />&nbsp&nbsp&nbsp <asp:LinkButton ID="LinkButton1_register" runat="server" Font-Bold="True" Font-Size="Small">Registration</asp:LinkButton></td>
            </tr>
        </table>
    </center>


</asp:Content>
