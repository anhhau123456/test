<html>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="jquerycookie.js"></script>
<body>
	<div class="col-md-12">
		<ol class="breadcrumb">
		  <li><a href="home.php">Home</a></li>
		  <li class="active">Post page</li>
		</ol>
		<h2>Post page</h2>
		<form class="form-horizontal">
			<div class="form-group">
				<label class="col-lg-2 control-label">
					Title
				</label>
				<input name="title" id="title" type="text"/>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">
					Content
				</label>
				<textarea name="content" id="content" rows="10" cols="30"></textarea>
			</div>
			<div class="col-lg-offset-2 col-lg-10">
		      <input type="button" class="btn btn-default" value="Post" id="post"/>
		      <input type="button" class="btn btn-default" value="Clear" id="clear"/>
		    </div>
		</form>
		<div id="result"></div>
	</div>
	<script type="text/javascript">

		$(document).ready(function(){
			$("#clear").click(function(){
				$("#title").val("");
				$("#content").val("");
			});
			$("#post").click(function(){

				var _title = $("#title").val(),
					_content = $("#content").val(),
					_$result = $("#result");

				if (!$.cookie("username")) {

					_$result.html("Please login");
				} else if (!_title || _title == ""){

					_$result.html("Title require");
				} else if (!_content || _content == ""){

					_$result.html("Content require");
				} else if (_title.length < 6){

					_$result.html("Title has more than 6 characters");
				} else if (_content.length < 10){

					_$result.html("Content has more than 10 characters");
				} else {
					_$result.html("Post success");
				}
			});
		});
	</script>
</body>
</html>