<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	
	<!-- <link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-grid.css">
	<link rel="stylesheet" href="css/bootstrap-reboot.css">
	<link rel="stylesheet" href="css/bootstrap-reboot.min.css">
	<link rel="stylesheet" href="css/jquery-3.2.0.js"> -->

	<!-- <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="css/docs.css" rel="stylesheet">
	<link href="css/jquery-ui-1.8.19.custom.css" rel="stylesheet">
	<link href="css/font.css" rel="stylesheet"> -->

	<link rel="stylesheet" href="layout.css" type="text/css">
	<script src="js_function.js"></script>

	<title>首頁</title>
	<style>
		button
		{
			margin-top: 5px;
		}
		article p
		{
			padding: 5px;
			font-size: 20px;
		}
		#side_right a
		{
			text-decoration: none;
		}
	</style>
</head>

<body data-spy="scroll">
	<!-- 上方選單 -->
	<?php require_once('header.php'); ?>
	<!-- 左邊選單 -->
	<div class="container" id="side_left">
		<dl>
			<dt><a href="index.php">首&emsp;&emsp;頁</a></dt>
			<dt><a href="init.php">網站起源</a></dt>
			<dt><a href="info.php">自我介紹</a></dt>
			<dt><a href="out_link.php">外部連結</a></dt>
		</dl>
		<div id="dis"><a id="dis_a" target="_blank" href="http://www.w3schools.com/html/">按按鈕後我會消失</a><br /></div>
		<div><a id="second_floor" href="http://www.w3schools.com/css/">快按按鈕，樓上就不見了</a><br /></div>
		<button id="change" class="btn btn-primary" data-trigger="hover">Try It ! >uO</button>
	</div>
	<!-- 右邊影片區 -->
	<div class="container" id="side_right">
		<article class="container-fluid">
			<!-- 影片連結 -->
			<iframe width="500" height="315" src="https://youtube.com/embed/Bp7coAgtsz0" frameborder="0"></iframe>
			<h4>
				Vol. 6 Epic Legendary Intense Massive Heroic Vengeful Dramatic Music Mix
			</h4>
			<hr>
			<p>
				This is one of my favority music.<br/>
				It was made by <a href="https://www.youtube.com/channel/UCigSgBzRaVs1xGuCEEwzuZA">
								   <strong>Versus Music Official</strong>
							   </a><br/>
				If you interest that, please spend some time to enjoy it.<br/>
			</p>
		</article>
	</div>
	<!-- 底部 -->
	<?php require_once('footer.php'); ?>
</body>
</html>


<script>
$(document).ready(function()
{
	change = $("#change");
	second_floor = $("#second_floor");
	dis_a = $("#dis_a");

// 	// change.popover({
// 	// 	title: "(ㆆᴗㆆ)",
// 	// 	content: "有人要消失囉~~~",
// 	// 	placement: "right"
// 	// });

	change.click(function()
	{
		$("#dis").toggle();

		if(change.text() == "Try It ! >uO")
		{
			second_floor.html("它消失了(・∀・)");
			change.html("消失了OWO");
		}
		else if(change.text() == "消失了OWO")
		{
			second_floor.html("再讓它消失一次吧XD");
			dis_a.html("Q__Q");
			change.html("Try It Again! ლ(◉◞౪◟◉ )ლ");
		}
		else if(change.text() == "Try It Again! ლ(◉◞౪◟◉ )ლ")
		{
			second_floor.html("嘻(・∀・)");
			change.html("消失了OWO");
		}
	});
	
});
</script>