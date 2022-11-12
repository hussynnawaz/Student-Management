<%@ Page Title="faculty" Language="C#" MasterPageFile="~/students/usermaster.Master" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="college_mangement_system.students.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <center>


        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" Height="208px" Width="437px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="fid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="fid" HeaderText="fid" ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="degree" HeaderText="degree" SortExpression="degree" />
                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                <asp:TemplateField HeaderText="Profile">
                    <ItemTemplate>
                        <asp:Image ID="Image3" runat="server" Height="80px" Width="70px" ImageUrl='<%#Eval("photos") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
              <%--<asp:BoundField DataField="photos" HeaderText="photos" SortExpression="photos" />--%>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clgConnectionString %>" SelectCommand="SELECT * FROM [Faculty_Tbl]"></asp:SqlDataSource>


    </center>



</asp:Content>
