<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AllDonations.aspx.cs" Inherits="Project6v2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <style>
		#scrollUp i{
			color:#39B5E0;
		}
		        input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
			 

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
	</style>

 <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server"> 
	 <ContentTemplate> --%>
	
 
	 <div class="js">
    <div class="breadcrumbs">
		
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="bread-inner">
							<ul class="bread-list">
								<li><a href="index1.html">Home<i class="fa-sharp fa-solid fa-arrow-right"></i></a></li>
								<li class="active"><a href="blog-single.html">Shop Grid</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Breadcrumbs -->
		
		<!-- Product Style -->
		<section class="product-area shop-sidebar shop section">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-12">
						<div class="shop-sidebar">
								<!-- Single Widget -->
								<div class="single-widget category" style="padding:10px;border:1px solid #06283D">
									<h3 class="title" style="margin:0;">Categories</h3>
								 <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="count" DataValueField="CategoryName" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="true" OnDataBound="CheckBoxList1_DataBound" CssClass="table table-borderless"></asp:CheckBoxList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT category.CategoryName , COUNT(Services.CategoryName) AS count FROM category LEFT OUTER JOIN Services ON Services.CategoryName = category.CategoryName and Services.status = 'Accept' GROUP BY category.CategoryName "></asp:SqlDataSource>
								</div>
								<!--/ End Single Widget -->
								
								<!-- Single Widget -->
							 
						</div>
					</div>
					<div class="col-lg-9 col-md-8 col-12">
						<div class="row">
							<div class="col-12">
								<!-- Shop Top -->
								<div class="shop-top">
									<div class="shop-shorter">
										
										<div class="single-shorter" runat="server">
											<label>Sort :</label>
											 
											<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                            <asp:ListItem Selected="True" Value="ASC">A - Z</asp:ListItem>
                                           <asp:ListItem Value="DESC">Z - A</asp:ListItem>
											</asp:DropDownList>
							 
										</div>
									</div>

								
								 
                        
									<ul class="view-mode">
										<li class="active" onclick="togg(this)" id="Grid" runat="server">
											<asp:LinkButton ID="ItemView1" runat="server"  OnClick="ItemView1_Click"><i class="fa fa-th-large"></i>
											 
											</asp:LinkButton></li>
												<li id="List" runat="server">
											<asp:LinkButton ID="ItemView2" runat="server"  OnClick="ItemView2_Click"><i class="fa fa-th-list"></i></asp:LinkButton></li>
									</ul>
								</div>
								<!--/ End Shop Top -->
							</div>
						</div>
						<div class="container mt-5 mb-5">
    <div class="d-flex row" id="ListView" runat="server">
        <div class="col-md-12">
            <div class="row p-2 bg-white" style="border:2px solid #39B5E0">
                <div class="col-md-3 mt-1"><img class="img-fluid img-responsive rounded product-image" src="https://i.imgur.com/QpjAiHq.jpg"></div>
                <div class="col-md-6 mt-1">
                    <h5>Quant olap shirts</h5>
                    <div class="d-flex flex-row">
                        <div class="ratings mr-2"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div><span>310</span>
                    </div>
                    <div class="mt-1 mb-1 spec-1"><span>100% cotton</span><span class="dot"></span><span>Light weight</span><span class="dot"></span><span>Best finish<br></span></div>
                    <div class="mt-1 mb-1 spec-1"><span>Unique design</span><span class="dot"></span><span>For men</span><span class="dot"></span><span>Casual<br></span></div>
                    <p class="text-justify text-truncate para mb-0">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.<br><br></p>
                </div>
                <div class="align-items-center align-content-center col-md-3 border-left mt-1">
                
                 
                    <div class="d-flex flex-column mt-4">
						<button class="btn btn-primary btn-sm" type="button" style="color:white">Details</button>
               <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href = "#" class="btn btn-outline-primary btn-sm mt-2" style="color:white">Request</a>

                    </div>
                </div>
            </div>
           
</div>
		</div>
						<div class="row" id="Cards" runat="server">
					
								
							<!--end single card-->

						</div>

					</div>
				</div>
			</div>
				
		
		</section>
		<!--/ End Product Style 1  -->	

		<asp:HiddenField ID="HiddenField2" runat="server" />
		
	
		
		<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="fa-solid fa-xmark" aria-hidden="true"></span></button>
						</div>
						<div class="modal-body"  style="overflow:hidden">
							<div class="row no-gutters">
								<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12" >
									<!-- Product Slider -->
										<div class="product-gallery">
										 
												<div class="single-slider" id="imslr">
													
												</div>
									
										 
										</div>
									<!-- End Product slider -->
								</div>
								<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
									<div class="quickview-content">
										<h2 id="ModlarName"></h2>
										<div class="quickview-ratting-review">
										
											 
												<span id="donQuantity"></span>
											 
										</div>
										<h3></h3>
										<div class="quickview-peragraph">
											<p id="donDes">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam.</p>
										</div>
										<div class="size">
											<div class="row">
											 
											</div>
										</div>
										<div class="quantity">
										<!-- Input Order -->
											<div class="input-group">
												<div class="button minus">
													<button type="button" class="btn btn-primary btn-number" data-type="minus" data-field="quant[1]" id="minus" onclick ="alter(this)">
														<i class="fa-solid fa-minus"></i>
													</button>
												</div>


                                              <asp:TextBox id="TextBox1" runat="server" type="number" name="quant[1]" class="input-number"  data-min="1" data-max="1000" value="1"></asp:TextBox>
                                               
												<div class="button plus">
													<button type="button" class="btn btn-primary btn-number"  data-type="plus" data-field="quant[1]" id="plus" onclick="alter(this)">
														<i class="fa-solid fa-plus"></i>
													</button>
												</div>
											</div>

											<!--/ End Input Order -->
										</div>
										 <asp:HiddenField ID="HiddenField1" runat="server" />
               
										<div class="add-to-cart">

                                            <asp:Button ID="PostRequest" CssClass="btn" runat="server" Text="Request" OnClick="PostRequest_Click" />

										 
									 
											 
											<a id="details" href="#" class="btn">Details</a>
										</div>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


</div>






	
<%--	 	  </ContentTemplate></asp:UpdatePanel>--%>

	 
	<script src="https://kit.fontawesome.com/84df3b83c8.js" crossorigin="anonymous"></script>
	  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Jquery -->
    <script src="shhjs/jquery.min.js"></script>
    <script src="shhjs/jquery-migrate-3.0.0.js"></script>
	<script src="shhjs/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="shhjs/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="shhjs/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="shhjs/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="shhjs/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="shhjs/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="shhjs/magnific-popup.js"></script>
	<!-- Fancybox JS -->
	<script src="shhjs/facnybox.min.js"></script>
	<!-- Waypoints JS -->
	<script src="shhjs/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script src="shhjs/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="shhjs/nicesellect.js"></script>
	<!-- Ytplayer JS -->
	<script src="shhjs/ytplayer.min.js"></script>
	<!-- Flex Slider JS -->
	<script src="shhjs/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="shhjs/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="shhjs/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="shhjs/easing.js"></script>
	<!-- Active JS -->
	<script src="shhjs/active.js"></script>
	<script>
        function nice() {
            document.getElementById("MainContent_DropDownList1").className = "nice-select"

        }
        function message(quantity, donation) {

            Swal.fire(
                'Request Sent!',
                'We Have Recieved Your Request Of <strong>x' + quantity + ' ' + donation + '</strong>  Successfully',
                'success'
            )


            //	document.getElementsByClassName("modal-backdrop")[0].classList.remove("");
            //	__dopostback
        }

        function message(quantity, donation) {
            Swal.fire(
                'Request Sent!',
                'We Have Recieved Your Request Of <strong>x' + quantity + ' ' + donation + '</strong>  Successfully',
                'success'
            )
            setTimeout(refresh, 1500);
        }
        function refresh() {
            __doPostBack('UpdatePanel1', '')
        }
        function alter(x) {
            let val = parseFloat(document.getElementById("MainContent_TextBox1").value)
            if (x.id == "minus" && val > 1) {
                val -= 1
            }
            if (x.id == "plus") {
                val += 1
            }

            document.getElementById("MainContent_TextBox1").value = val


        }




        function modlar(img, name, id, quantity, descriprion) {

            document.getElementById("MainContent_HiddenField2").value = name
            document.getElementById("MainContent_HiddenField1").value = id
            document.getElementById("ModlarName").innerText = name;
            document.getElementById("imslr").innerHTML = `<img alt="#" src="${img}" id="ModlarImg" runat="server">`
            document.getElementById("details").href = `SingleDonation.aspx?donationid=${id}`

            document.getElementById("donQuantity").innerText = "Quantity: " + quantity
            document.getElementById("donDes").innerText = descriprion



		}
        function fail(quantity, donation) {
            Swal.fire({
                icon: 'error',
                title: 'please log in first',
                text: 'do you have account!',
                footer: '<a href="https://localhost:44300/Account/Login">Log in here</a>'
            })

        }
    </script>
</asp:Content>
