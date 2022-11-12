<%@ Page Title="Registration" Language="C#" MasterPageFile="~/students/usermaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="college_mangement_system.students.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <center>
        <asp:Panel ID="Panel1" runat="server" GroupingText="Student" BackColor="#FFCCFF">
            <table align="center" style="height: 393px; width: 462px; background-color: #00FFFF;">
                <tr>
                    <th colspan="3"><h1 align="center">Registration here</h1>&nbsp<h3><asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Blue" OnClick="LinkButton3_Click"  >SignIn</asp:LinkButton></h3></th>
                    
                </tr>
                <tr>
                    <td>Student ID</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    <td rowspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Other</asp:LinkButton> </td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td>
                        <asp:TextBox ID="TextBox_firstname" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><asp:TextBox ID="TextBox_lastname" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                 <tr>
                    <td>Mobile</td>
                    <td>
                        <asp:TextBox ID="TextBox_mobile" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="TextBox_email" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
              <tr>
                    <td>UserName</td>
                    <td>
                        <asp:TextBox ID="TextBox_uname" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Password</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox_pas" TextMode="Password" runat="server" Width="230px" ></asp:TextBox></td>
                </tr>
              <tr>
                    <td>Confirm Password</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox_cpass" TextMode="Password"  runat="server" Width="230px"></asp:TextBox></td>
                </tr>
               
                 <tr>
                    <td> Date Of Birth</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox_dates" TextMode="Date" runat="server" Width="230px"></asp:TextBox>&nbsp&nbsp</td>
                </tr>
              
                <tr>
                    <td>Select Course</td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList_course" runat="server" Width="230px">
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>BBA</asp:ListItem>
                            <asp:ListItem>BSC</asp:ListItem>
                            <asp:ListItem>MCA</asp:ListItem>
                            <asp:ListItem>MSC</asp:ListItem>
                            <asp:ListItem>MBA</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
               
              
                
                  <tr>
                    <td> Year</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox_year"  runat="server" Width="230px"></asp:TextBox>&nbsp&nbsp</td>
                </tr>
               
               
                <tr>
                    <td colspan="3" align="center"> <asp:Button ID="Button_students_Submit" runat="server" Text="Submit" BackColor="#00CC00" Font-Bold="True" OnClick="Button_students_Submit_Click"    />
                        &nbsp&nbsp&nbsp&nbsp<asp:LinkButton ID="LinkButton_signin" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Blue" OnClick="LinkButton_signin_Click"  >SignIn</asp:LinkButton>
                    </td>
                </tr>

            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" GroupingText="Other" BackColor="#FFCCFF">
            <table align="center" style="height: 393px; width: 462px; background-color: #00FFFF;">
                <tr>
                    <th colspan="2"><h1 align="center">Registration here</h1></th>
                    
                </tr>
                <tr>
                    <td>User ID</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    
                </tr>
                <tr>
                    <td>First Name</td>
                    <td>
                        <asp:TextBox ID="TextBox_fnm" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><asp:TextBox ID="TextBox_lnm" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                 <tr>
                    <td>Mobile</td>
                    <td>
                        <asp:TextBox ID="TextBox3_mob" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="TextBox_eml" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
              <tr>
                    <td>UserName</td>
                    <td>
                        <asp:TextBox ID="TextBox_unm_othr" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Password</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox_pass_othr" TextMode="Password" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
              <tr>
                    <td>Confirm Password</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox7" TextMode="Password"  runat="server" Width="230px"></asp:TextBox></td>
                </tr>
               
                
               
               
                <tr>
                    <td colspan="2" align="center"> <asp:Button ID="Button_user_submit" runat="server" Text="Submit" BackColor="#00CC00" Font-Bold="True" OnClick="Button_user_submit_Click"   />
                        &nbsp&nbsp&nbsp&nbsp
                    </td>
                </tr>

            </table>
        </asp:Panel>
    </center>

</asp:Content>
