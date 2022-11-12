<%@ Page Title="Contact" Language="C#" MasterPageFile="~/students/usermaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="college_mangement_system.students.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    	<!--contact-->
			<div class="contact-w3l">
				<div class="container">
					<h2 class="tittle">How To Find Us</h2>
					
					<div class="col-md-4 contact-left">
						<div class="contct-info">
							
							
							<ul>
								<li>Free Phone :02844 222444</li>
								
								<li>Fax :+1 086 4589 2456</li>
								<li><a href="#">vidhyasankul@mail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-8 contact-left cont">
						<div class="contct-info">
							<h4>Contact Form</h4>
							<form action="#" method="post">
								<div class="row">
									<div class="col-md-6 row-grid">
	
										<asp:TextBox ID="txt_name_contact" placeholdet="Your Name" runat="server"></asp:TextBox>
									</div>
										<div class="col-md-6 row-grid">
											
											<asp:TextBox ID="txt_email_contact" placeholdet="Email Id" runat="server"></asp:TextBox>
									</div>
									<div class="clearfix"></div>
								</div>

								<div class="row">
									<div class="col-md-6 row-grid">
									
									<asp:TextBox ID="txt_subject_conatct" placeholdet="Subject" runat="server"></asp:TextBox>
									</div>
										<div class="col-md-6 row-grid">
									
									<asp:TextBox ID="txt_phone_contact" placeholdet="Phone number" runat="server"></asp:TextBox>
									</div>
									<div class="clearfix"></div>
								</div>
								<asp:TextBox ID="txt_msg_contact" placeholdet="Message" runat="server"></asp:TextBox>
								
								<asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
								&nbsp&nbsp
								<input type="reset" value="Clear" >
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--contact-->
    
</asp:Content>
