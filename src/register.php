<html>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<body>
	<div class="col-md-12">
		<ol class="breadcrumb">
		  <li><a href="home.php">Home</a></li>
		  <li class="active">Resgister</li>
		</ol>
		<h2>Resgister</h2>
		<form class="form-horizontal">
			<div class="form-group">
				<label class="col-lg-2 control-label">
					User name
				</label>
				<input name="username" id="username" type="text"/>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">
				Password
				</label>
				<input name="password" id="password" type="password"/>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">
				Re-password
				</label>
				<input name="re-password" id="repassword" type="password"/>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">
				Email
				</label>
				<input name="Email" id="email" type="text"/>
			</div>
			<div class="form-group">
		    <div class="col-lg-offset-2 col-lg-10">
		      <input type="button" class="btn btn-default" value="resgister" id="submit"/>
		      <input type="button" class="btn btn-default" value="clear" id="clear"/>
		    </div>
		  </div>
		</form>
		<div id="result"></div>
	</div>
	<script type="text/javascript">

		$(document).ready(function(){
			$("#clear").click(function(){
				$("#username").val("");
				$("#password").val("");
				$("#repassword").val("");
				$("#email").val("");
			});
			$("#submit").click(function(){

				var _username = $("#username").val(),
					_password = $("#password").val(),
					_repassword = $("#repassword").val(),
					_email = $("#email").val(),
					_$result = $("#result");

				if (!_username || username == "") {

					_$result.html("Username require");
				} else if (!_password || _password == "") {

					_$result.html("Password require");
				} else if (!_repassword || _repassword == "") {

					_$result.html("Re-Password require");
				} else if (!_email || _email == "") {

					_$result.html("Email require");
				} else if (!(/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/g).test(_email)) {

					_$result.html("Pls fill the correct email");
				} else if (_username.length > 20) {

					_$result.html("Username has more than 20 characters");
				} else if ((/[~`!#$%\^&*+=\-\[\]\\';,/{}|\\":<>\?]/g).test(_username)) {

					_$result.html("Username dont contain special characters");
				} else if (_password.length < 6) {

					_$result.html("Password has more than 6 characters");
				} else if (_repassword != _password) {

					_$result.html("Re-password field must match with password field");
				} else {
					_$result.html("Account create success");
				}
				return false;
			});
		});
	</script>
</body>
</html>