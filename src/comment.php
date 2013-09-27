<?php
	require_once('PHPMailer_v5.1/class.phpmailer.php');

	define('GUSER', 'pduy1206@gmail.com');
	define('GPWD', ' duyphan@@123');

	function smtpmailer($to, $from, $from_name, $subject, $body) {
	    global $error;
	    $mail = new PHPMailer();
	    $mail->IsSMTP();
	    $mail->SMTPDebug = 1;
	    $mail->SMTPAuth = true;
	    $mail->SMTPSecure = 'ssl';
	    $mail->Host = 'smtp.gmail.com';
	    $mail->Port = 465;
	    $mail->Username = "pduy1206@gmail.com";
	    $mail->Password = "duyphan@@123";
	    $mail->SetFrom($from, $from_name);
	    $mail->Subject = $subject;
	    $mail->Body = $body;
	    $mail->AddAddress($to);
	    if(!$mail->Send()) {
	        $error = 'Error: '.$mail->ErrorInfo;
	        return false;
	    } else {
	        $error = 'Mail sent';
	        return true;
	    }
	}

	smtpmailer('ntahau1989@mail.com', 'crazyboy12041989@yahoo.com', 'yourName', 'test mail message', 'Hello World!');
?>
<html>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="jquerycookie.js"></script>
<body>
	<div class="col-md-12">
		<ol class="breadcrumb">
		  <li><a href="home.php">Home</a></li>
		  <li class="active">Thread</li>
		</ol>
		<h2>Thread</h2>
		<form class="form-horizontal">
			<div class="form-group">
				<label class="col-lg-2 control-label">
					Title : Title of post
				</label>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">
					Content : Content of post
				</label>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">
					Comment
				</label>
				<textarea name="comment" id="comment" rows="10" cols="20"></textarea>
			</div>
			<div class="col-lg-offset-2 col-lg-10">
		      <input type="button" class="btn btn-default" value="Sent" id="sendComment"/>
		    </div>
		</form>
		<div id="result"></div>
		<div id="sendmail"></div>
	</div>
	<script type="text/javascript">

		$(document).ready(function(){
			$("#sendComment").click(function(){

				var _content = $("#comment").val(),
					_$result = $("#result");

				if (!$.cookie("username")) {

					_$result.html("Please login");
				} else if (!_content || _content == ""){

					_$result.html("Please add comment");
				} else {
					_$result.html("Comment success");
					$("#sendmail").html("An email has sent");
				}
			});
		});
	</script>

</body>
</html>