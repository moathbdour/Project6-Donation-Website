<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project6v2.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'/>



	
	<link rel="stylesheet" href="coooo.css"/>
	<style>
		.btn{
			margin-bottom:0px;
		}
	</style>
   <div>
            <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				
			</div>
			<div class="row justify-content-center">
					<div class="row" style="margin-bottom:40px">
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-map-marker"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Address:</span> 198 West 21th Street,Irbid-Ajloun</p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-phone"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-paper-plane"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-globe"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Website</span> <a href="#">yoursite.com</a></p>
				          </div>
			          </div>
							</div>
						</div>
				<div class="col-md-12">
					<div class="wrapper">
						<div class="row no-gutters mb-5">
							<div class="col-md-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">Contact Us</h3>
									<div id="form-message-warning" class="mb-4"></div> 
				      		<div id="form-message-success" class="mb-4">
				            Your message was sent, thank you!
				      		</div>
									<div method="POST" id="contactForm" name="contactForm" class="contactForm">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="label" for="name">Full Name</label>
													<asp:TextBox ID="TextBox1" runat="server" placeholder="Name" class="form-control"></asp:TextBox>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
													
												</div>
											</div>
											<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" for="email">Email Address</label>
													
													<asp:TextBox ID="TextEmail" runat="server"  placeholder="Email" class="form-control"></asp:TextBox>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextEmail" ForeColor="Red"></asp:RequiredFieldValidator>
													<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is reqired'@'" ControlToValidate="TextEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="subject">Subject</label>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ContactUs]" DeleteCommand="DELETE FROM [ContactUs] WHERE [ContactID] = @original_ContactID" InsertCommand="INSERT INTO [ContactUs] ([Name], [Email], [maessage]) VALUES (@Name, @Email, @maessage)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [ContactUs] SET [Name] = @Name, [Email] = @Email, [maessage] = @maessage WHERE [ContactID] = @original_ContactID">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="original_ContactID" Type="Int32" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Email" Type="String" />
                                                            <asp:Parameter Name="maessage" Type="String" />
                                                        </InsertParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="Name" Type="String" />
                                                            <asp:Parameter Name="Email" Type="String" />
                                                            <asp:Parameter Name="maessage" Type="String" />
                                                            <asp:Parameter Name="original_ContactID" Type="Int32" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
													
													<asp:TextBox ID="TextBox3" runat="server"  placeholder="Subject" class="form-control"></asp:TextBox>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="#">Message</label>
													<textarea name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Message"  runat="server"></textarea>
													<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="message"></asp:RequiredFieldValidator>--%>
													
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<asp:Button ID="Button1" runat="server" Text="Send Message"  class="btn btn-primary" OnClick="Button1_Click" />
													<div class="submitting"></div>
													
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-5 d-flex align-items-stretch">
								<%--map--%>
								<div id="map">
									  <div>
                <iframe style="border:1px; width:97%; height:649px; " src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1498.0502864585817!2d35.850245430061804!3d32.55259514266934!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151c7715f2c2e7ab%3A0x51755840c8ddbefd!2sOrange%20Digital%20Village%20Irbid!5e0!3m2!1sar!2sjo!4v1673162906575!5m2!1sar!2sjo" frameborder="0" allowfullscreen></iframe>
                </div>
			          </div>
								<%--map--%>
							</div>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</section>

			  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
            function message() {
                Swal.fire(
                    'Thank you',
                    'We will contact you soon..',
                    'success'
                )
            }

        </script>

        </div>
        </asp:Content>