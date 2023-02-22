<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<script type="text/javascript">
 		if ("${message}" != "") {
			alert("${message}");
 	}
</script>

<div class="body-wrapper">
	<div class="breadcrumb-area">
		<div class="container">
			<div class="breadcrumb-content">
				<ul>
					<li><a href="index.html">Trang chủ</a></li>
					<li class="active">Đăng nhập</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Li's Breadcrumb Area End Here -->
	<!-- Begin Login Content Area -->
	<div class="page-section mb-60">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
					<!-- Password chance Form s-->
					<form:form action="/user/changepassword" modelAttribute="nguoidungpassword">
						<div class="login-form">
							<h4 class="login-title">Thay đổi mật khẩu</h4>
							<div class="row">
								<div class="col-md-12 col-12 mb-20">
									
									<form:label path="Matkhau">Mật khẩu</form:label>
									<form:input path="Matkhau" class="mb-0" type="password" value = "${user.getMatkhau()}" />
									<form:errors path="Matkhau" class="badge badge-danger" />
								</div>
								<div class="col-12 mb-20">
									<label>Mật khẩu mới</label> <input class="mb-0" type="password"
										placeholder="Password">
								</div>
								<div class="col-12 mb-20">
									<label>Nhập lại khẩu mới</label> <input class="mb-0"
										type="password" placeholder="Password">
								</div>

								<div class="col-md-12 " style="display: flex;">
									<button class="register-button mt-0 ml-auto">Đổi</button>
								</div>
							</div>
						</div>
					</form:form>
				</div>
				<div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
					<!--   chỉnh sửa profile -->
					<form:form action="/user/profile/update" method="post" modelAttribute="nguoidung">
						<div class="login-form">
							<h4 class="login-title">Thông tin người dùng</h4>
							<div class="row d-flex justify-content-center mb-20">

								<div class="avatar-upload position-relative">
									<div class="avatar-edit position-absolute">
										<input type='file' name="images" id="imageUpload"
											accept=".png, .jpg, .jpeg" /> <label for="imageUpload"></label>
									</div>
									<div
										class="avatar-preview border border-5 border-warning rounded-circle">
										<div id="imagePreview"
											style="background-image: url(/views/images/team/1.png);"></div>
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-md-6 col-12 mb-20">
									<form:label path="Ho_ten">Họ tên</form:label>
									<form:input path="Ho_ten" class="mb-0" type="text" value = "${user.getHo_ten()}"
										 />
									<form:errors path="Ho_ten" class="badge badge-danger" />
								</div>
								
								<div class="col-md-12 mb-20">
									<form:label path="Email">Email*</form:label>
									<form:input path="Email" class="mb-0" type="email"
										id="email-input" value = "${user.getEmail()}" />
									<form:errors path="Email" class="badge badge-danger" />
								</div>

								<div class="col-md-12 mb-20">
								
									<form:label  path="Diachi">Địa chỉ</form:label>
									<form:input path="Diachi" class="mb-0" type="text"
										placeholder="địa chỉ" value = "${user.getDiachi()}"/>
								</div>
								<div class="col-md-6 mb-20">
								<form:label  path="Ngaysinh">Ngày Sinh</form:label>
								<form:input path="Ngaysinh" class="mb-0" type="date"
										placeholder="time" value = "${user.getNgaysinh()}" />
								</div>
								<div class="col-md-6 mb-20">
								<form:label  path="Vaitro">Vai trò</form:label>
								<h5 class="mb-0 text-danger" 
										 >${test111}</h5>
								</div>
								<div class="col-12">
									<button formaction="/user/profile/update" formmethod="post" class="register-button mt-0">Chỉnh sửa</button>
								</div>
							</div>
						</div>
					</form:form>
				</div>

			</div>
		</div>
	</div>
</div>
<!-- Login Content Area End Here -->
<!-- Begin Footer Area -->


<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static"
	data-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">Xác nhận tài
					khoản</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="javascript: void(0)" class="otp-form" name="otp-form">

					<div class="title">
						<div class="info">
							Chúng tôi sẽ gửi đến một mã OTP đến địa chỉ
							<p class="text-primary" id="email-output"></p>
						</div>
						<button type="button" class="btn btn-outline-primary"
							formaction="/user/validateAndSendmail">Lấy mã</button>
						<p class="msg">Nhập mã OTP để xác minh</p>
					</div>
					<div class="d-flex flex-row mb-25">
						<input type="text"
							class="otp__digit otp__field__1 border border-success mx-1">
						<input type="text"
							class="otp__digit otp__field__2 border border-success mx-1">
						<input type="text"
							class="otp__digit otp__field__3 border border-success mx-1">
						<input type="text"
							class="otp__digit otp__field__4 border border-success mx-1">
						<input type="text"
							class="otp__digit otp__field__5 border border-success mx-1">
						<input type="text"
							class="otp__digit otp__field__6 border border-success mx-1">
					</div>
					<div class="result d-flex flex-row">
						<h6>Mã xác nhận của bạn là:</h6>
						<h5 id="_otp" class="_notok text-primary mx-3"></h5>
					</div>
					<div class="w-100">
						<button type="button" class="btn btn-success w-100">Xác
							nhận</button>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button"
					class="border-0 bg-transparent text-primary fw-bold w-50"
					data-dismiss="modal">Thay đổi email</button>
				<button type="button"
					class="border-0 bg-transparent text-primary fw-bold w-50">Gửi
					lại mã</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
            var otp_inputs = document.querySelectorAll(".otp__digit")
            var mykey = "0123456789".split("")
            otp_inputs.forEach((_) => {
                _.addEventListener("keyup", handle_next_input)
            })
            function handle_next_input(event) {
                let current = event.target
                let index = parseInt(current.classList[1].split("__")[2])
                current.value = event.key

                if (event.keyCode == 8 && index > 1) {
                    current.previousElementSibling.focus()
                }
                if (index < 6 && mykey.indexOf("" + event.key + "") != -1) {
                    var next = current.nextElementSibling;
                    next.focus()
                }
                var _finalKey = ""
                for (let { value } of otp_inputs) {
                    _finalKey += value
                }
                if (_finalKey.length == 6) {
                    document.querySelector("#_otp").classList.replace("_notok", "_ok")
                    document.querySelector("#_otp").innerText = _finalKey
                } else {
                    document.querySelector("#_otp").classList.replace("_ok", "_notok")
                    document.querySelector("#_otp").innerText = _finalKey
                }
                document.getElementById("register").addEventListener('click', function (

                ) { 

                })
            }
</script>